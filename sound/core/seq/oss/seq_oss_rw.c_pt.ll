; ModuleID = '/llk/IR_all_yes/sound/core/seq/oss/seq_oss_rw.c_pt.bc'
source_filename = "../sound/core/seq/oss/seq_oss_rw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.evrec = type { %struct.evrec_timer }
%struct.evrec_timer = type { i8, i8, i8, i8, i32 }
%struct.seq_oss_devinfo = type { i32, i32, i32, i32, %struct.snd_seq_addr, i32, i32, i32, i32, [16 x %struct.seq_oss_synthinfo], i32, ptr, ptr, ptr }
%struct.snd_seq_addr = type { i8, i8 }
%struct.seq_oss_synthinfo = type { %struct.snd_seq_oss_arg, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_seq_oss_arg = type { i32, i32, i32, %struct.snd_seq_addr, ptr, i32 }
%struct.seq_oss_readq = type { ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.68 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%union.anon.68 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.seq_oss_timer = type { ptr, i32, i32, i32, i32, i32, i32, i32 }

@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [35 x i8] c"../sound/core/seq/oss/seq_oss_rw.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 174, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str.2], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_read(ptr nocapture noundef readonly %dp, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %rec = alloca %union.evrec, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %readq1 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 12
  %0 = ptrtoint ptr %readq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %readq1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rec) #4
  %cmp = icmp eq ptr %1, null
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %rec, align 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %file_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %3 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %file_mode, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp2106 = icmp sgt i32 %count, 3
  br i1 %cmp2106, label %do.body3.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body3.lr.ph:                                   ; preds = %while.cond.preheader
  %lock = getelementptr inbounds %struct.seq_oss_readq, ptr %1, i32 0, i32 8
  br label %do.body3

do.body3:                                         ; preds = %if.end57.do.body3_crit_edge, %do.body3.lr.ph
  %buf.addr.0109 = phi ptr [ %buf, %do.body3.lr.ph ], [ %add.ptr, %if.end57.do.body3_crit_edge ]
  %result.0108 = phi i32 [ 0, %do.body3.lr.ph ], [ %add, %if.end57.do.body3_crit_edge ]
  %count.addr.0107 = phi i32 [ %count, %do.body3.lr.ph ], [ %sub, %if.end57.do.body3_crit_edge ]
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %call8 = call i32 @snd_seq_oss_readq_pick(ptr noundef nonnull %1, ptr noundef nonnull %rec) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call8)
  %cmp9 = icmp eq i32 %call8, -11
  br i1 %cmp9, label %land.lhs.true, label %do.body3.if.end39_crit_edge

do.body3.if.end39_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

land.lhs.true:                                    ; preds = %do.body3
  %5 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %file_mode, align 4
  %and12 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0108)
  %cmp15 = icmp eq i32 %result.0108, 0
  %or.cond = select i1 %tobool13.not, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.then17, label %land.lhs.true.while.end.sink.split_crit_edge

land.lhs.true.while.end.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.then17:                                        ; preds = %land.lhs.true
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #4
  call void @snd_seq_oss_readq_wait(ptr noundef nonnull %1) #4
  %call28 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %7 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.then17.while.end.sink.split_crit_edge, !prof !17

if.then17.while.end.sink.split_crit_edge:         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

signal_pending.exit:                              ; preds = %if.then17
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool35.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool35.not, label %if.else, label %signal_pending.exit.while.end.sink.split_crit_edge

signal_pending.exit.while.end.sink.split_crit_edge: ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.else:                                          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = call i32 @snd_seq_oss_readq_pick(ptr noundef nonnull %1, ptr noundef nonnull %rec) #4
  br label %if.end39

if.end39:                                         ; preds = %if.else, %do.body3.if.end39_crit_edge
  %err.1 = phi i32 [ %call37, %if.else ], [ %call8, %do.body3.if.end39_crit_edge ]
  %flags.0 = phi i32 [ %call28, %if.else ], [ %call5, %do.body3.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp40 = icmp slt i32 %err.1, 0
  br i1 %cmp40, label %if.end39.while.end.sink.split_crit_edge, label %if.end44

if.end39.while.end.sink.split_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.end44:                                         ; preds = %if.end39
  %18 = ptrtoint ptr %rec to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rec, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp46 = icmp slt i8 %19, 0
  %cond = select i1 %cmp46, i32 8, i32 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.0107, i32 %cond)
  %cmp48 = icmp ugt i32 %count.addr.0107, %cond
  br i1 %cmp48, label %if.end44.while.end.sink.split_crit_edge, label %if.end52

if.end44.while.end.sink.split_crit_edge:          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.end52:                                         ; preds = %if.end44
  call void @snd_seq_oss_readq_free(ptr noundef nonnull %1) #4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #4
  call void @__check_object_size(ptr noundef nonnull %rec, i32 noundef %cond, i1 noundef zeroext true) #4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #4
  %call.i.i = call zeroext i1 @should_fail_usercopy() #4
  br i1 %call.i.i, label %if.end52.while.end_crit_edge, label %if.end.i.i

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.i.i:                                       ; preds = %if.end52
  %20 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0109, i32 %cond, i32 -1226833920) #7, !srcloc !18
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.while.end_crit_edge

if.end.i.i.while.end_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rec, i32 noundef %cond) #4
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0109, ptr noundef nonnull %rec, i32 noundef %cond) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool55.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool55.not, label %if.end57, label %copy_to_user.exit.while.end_crit_edge

copy_to_user.exit.while.end_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end57:                                         ; preds = %copy_to_user.exit
  %add = add i32 %cond, %result.0108
  %add.ptr = getelementptr i8, ptr %buf.addr.0109, i32 %cond
  %sub = sub nsw i32 %count.addr.0107, %cond
  %cmp2 = icmp sgt i32 %sub, 3
  br i1 %cmp2, label %if.end57.do.body3_crit_edge, label %if.end57.while.end_crit_edge

if.end57.while.end_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end57.do.body3_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body3

while.end.sink.split:                             ; preds = %if.end44.while.end.sink.split_crit_edge, %if.end39.while.end.sink.split_crit_edge, %signal_pending.exit.while.end.sink.split_crit_edge, %if.then17.while.end.sink.split_crit_edge, %land.lhs.true.while.end.sink.split_crit_edge
  %flags.0.lcssa.sink = phi i32 [ %call28, %if.then17.while.end.sink.split_crit_edge ], [ %call28, %signal_pending.exit.while.end.sink.split_crit_edge ], [ %call5, %land.lhs.true.while.end.sink.split_crit_edge ], [ %flags.0, %if.end39.while.end.sink.split_crit_edge ], [ %flags.0, %if.end44.while.end.sink.split_crit_edge ]
  %result.0105.ph = phi i32 [ 0, %if.then17.while.end.sink.split_crit_edge ], [ 0, %signal_pending.exit.while.end.sink.split_crit_edge ], [ %result.0108, %land.lhs.true.while.end.sink.split_crit_edge ], [ %result.0108, %if.end39.while.end.sink.split_crit_edge ], [ %result.0108, %if.end44.while.end.sink.split_crit_edge ]
  %err.2.ph = phi i32 [ -512, %if.then17.while.end.sink.split_crit_edge ], [ -512, %signal_pending.exit.while.end.sink.split_crit_edge ], [ -11, %land.lhs.true.while.end.sink.split_crit_edge ], [ %err.1, %if.end39.while.end.sink.split_crit_edge ], [ %err.1, %if.end44.while.end.sink.split_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa.sink) #4
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end57.while.end_crit_edge, %copy_to_user.exit.while.end_crit_edge, %if.end.i.i.while.end_crit_edge, %if.end52.while.end_crit_edge
  %result.0105 = phi i32 [ %result.0105.ph, %while.end.sink.split ], [ %add, %if.end57.while.end_crit_edge ], [ %result.0108, %copy_to_user.exit.while.end_crit_edge ], [ %result.0108, %if.end52.while.end_crit_edge ], [ %result.0108, %if.end.i.i.while.end_crit_edge ]
  %err.2 = phi i32 [ %err.2.ph, %while.end.sink.split ], [ %err.1, %if.end57.while.end_crit_edge ], [ -14, %copy_to_user.exit.while.end_crit_edge ], [ -14, %if.end52.while.end_crit_edge ], [ -14, %if.end.i.i.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0105)
  %cmp58 = icmp sgt i32 %result.0105, 0
  %spec.select = select i1 %cmp58, i32 %result.0105, i32 %err.2
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %spec.select, %while.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rec) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_readq_pick(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_readq_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_readq_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_write(ptr noundef %dp, ptr noundef %buf, i32 noundef %count, ptr noundef %opt) local_unnamed_addr #0 align 64 {
entry:
  %event.i = alloca %struct.snd_seq_event, align 4
  %rec = alloca %union.evrec, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rec) #4
  %0 = getelementptr inbounds %struct.evrec_timer, ptr %rec, i32 0, i32 2
  %1 = getelementptr inbounds %struct.evrec_timer, ptr %rec, i32 0, i32 4
  %file_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %2 = ptrtoint ptr %rec to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %rec, align 8
  %3 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %file_mode, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %writeq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 11
  %5 = ptrtoint ptr %writeq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %writeq, align 4
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp1115 = icmp sgt i32 %count, 3
  br i1 %cmp1115, label %if.then.i.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.lr.ph:                                  ; preds = %while.cond.preheader
  %seq_mode40 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %7 = getelementptr inbounds %struct.snd_seq_event, ptr %event.i, i32 0, i32 4
  %timer.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 13
  %8 = getelementptr inbounds %struct.snd_seq_event, ptr %event.i, i32 0, i32 6, i32 1
  %9 = getelementptr inbounds %struct.snd_seq_event, ptr %event.i, i32 0, i32 6
  %10 = getelementptr inbounds %struct.snd_seq_event, ptr %event.i, i32 0, i32 5
  %11 = getelementptr inbounds %struct.snd_seq_event, ptr %event.i, i32 0, i32 3
  %addr.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4
  %port.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 4, i32 1
  %queue.i.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %cseq.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  br label %if.then.i

if.then.i:                                        ; preds = %if.end50.if.then.i_crit_edge, %if.then.i.lr.ph
  %err.0125 = phi i32 [ 0, %if.then.i.lr.ph ], [ %retval.0.i104, %if.end50.if.then.i_crit_edge ]
  %result.0119 = phi i32 [ 0, %if.then.i.lr.ph ], [ %add, %if.end50.if.then.i_crit_edge ]
  %count.addr.0117 = phi i32 [ %count, %if.then.i.lr.ph ], [ %sub, %if.end50.if.then.i_crit_edge ]
  %buf.addr.0116 = phi ptr [ %buf, %if.then.i.lr.ph ], [ %add.ptr51, %if.end50.if.then.i_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #4
  %call.i.i = call zeroext i1 @should_fail_usercopy() #4
  br i1 %call.i.i, label %if.then.i.while.end.sink.split_crit_edge, label %land.lhs.true.i.i

if.then.i.while.end.sink.split_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

land.lhs.true.i.i:                                ; preds = %if.then.i
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0116, i32 4, i32 -1226833920) #7, !srcloc !19
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.while.end.sink.split_crit_edge, !prof !17

land.lhs.true.i.i.while.end.sink.split_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rec, i32 noundef 4) #4
  %13 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !20
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #4, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rec, ptr noundef %buf.addr.0116, i32 noundef 4) #4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #4, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.end.i.i.while.end.sink.split_crit_edge, !prof !17

if.end.i.i.while.end.sink.split_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.end4:                                          ; preds = %if.end.i.i
  %16 = ptrtoint ptr %rec to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %rec, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %17)
  %cmp5 = icmp eq i8 %17, -3
  br i1 %cmp5, label %if.then7, label %if.end16

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0119)
  %cmp8 = icmp sgt i32 %result.0119, 0
  br i1 %cmp8, label %if.then7.while.end.thread_crit_edge, label %if.end11

if.then7.while.end.thread_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.thread

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %rec to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rec, align 8
  %conv12 = zext i16 %19 to i32
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %0, align 2
  %conv14 = zext i8 %21 to i32
  %call15 = call i32 @snd_seq_oss_synth_load_patch(ptr noundef %dp, i32 noundef %conv14, i32 noundef %conv12, ptr noundef %buf.addr.0116, i32 noundef 0, i32 noundef %count.addr.0117) #4
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp19 = icmp slt i8 %17, 0
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp24 = icmp eq i8 %17, -1
  br i1 %cmp24, label %land.lhs.true, label %if.then21.if.end29_crit_edge

if.then21.if.end29_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then21
  %22 = ptrtoint ptr %seq_mode40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seq_mode40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp26 = icmp eq i32 %23, 1
  br i1 %cmp26, label %land.lhs.true.while.end_crit_edge, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %if.then21.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count.addr.0117)
  %cmp30 = icmp ult i32 %count.addr.0117, 8
  br i1 %cmp30, label %if.end29.while.end_crit_edge, label %if.end33

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end33:                                         ; preds = %if.end29
  %add.ptr35 = getelementptr i8, ptr %buf.addr.0116, i32 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #4
  %call.i.i78 = call zeroext i1 @should_fail_usercopy() #4
  br i1 %call.i.i78, label %if.end33.while.end.sink.split_crit_edge, label %land.lhs.true.i.i82

if.end33.while.end.sink.split_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

land.lhs.true.i.i82:                              ; preds = %if.end33
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr35, i32 4, i32 -1226833920) #7, !srcloc !19
  %asmresult.i.i80 = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i80)
  %cmp.i1.i81 = icmp eq i32 %asmresult.i.i80, 0
  br i1 %cmp.i1.i81, label %if.end.i.i90, label %land.lhs.true.i.i82.while.end.sink.split_crit_edge, !prof !17

land.lhs.true.i.i82.while.end.sink.split_crit_edge: ; preds = %land.lhs.true.i.i82
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.end.i.i90:                                     ; preds = %land.lhs.true.i.i82
  %call.i.i.i83 = call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #4
  %25 = call i32 @llvm.read_register.i32(metadata !0) #4
  %and.i.i.i.i.i.i84 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i84 to ptr
  %cpu_domain.i.i.i.i.i85 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i85) #3, !srcloc !20
  %and.i.i.i.i86 = and i32 %27, -13
  %or.i.i.i.i87 = or i32 %and.i.i.i.i86, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i87) #4, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %call1.i.i.i88 = call i32 @arm_copy_from_user(ptr noundef %1, ptr noundef %add.ptr35, i32 noundef 4) #4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #4, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i88)
  %tobool4.not.i.i89 = icmp eq i32 %call1.i.i.i88, 0
  br i1 %tobool4.not.i.i89, label %if.end.i.i90.if.end45_crit_edge, label %if.end.i.i90.while.end.sink.split_crit_edge, !prof !17

if.end.i.i90.while.end.sink.split_crit_edge:      ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split

if.end.i.i90.if.end45_crit_edge:                  ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.else:                                          ; preds = %if.end16
  %28 = ptrtoint ptr %seq_mode40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seq_mode40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp41 = icmp eq i32 %29, 1
  br i1 %cmp41, label %if.else.while.end_crit_edge, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end45

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end45:                                         ; preds = %if.else.if.end45_crit_edge, %if.end.i.i90.if.end45_crit_edge
  %ev_size.0 = phi i32 [ 4, %if.else.if.end45_crit_edge ], [ 8, %if.end.i.i90.if.end45_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %event.i) #4
  %30 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %timer.i, align 4
  %call.i = call i32 @snd_seq_oss_process_timer_event(ptr noundef %31, ptr noundef nonnull %rec) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end45.insert_queue.exit.thread_crit_edge

if.end45.insert_queue.exit.thread_crit_edge:      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %insert_queue.exit.thread

if.end.i:                                         ; preds = %if.end45
  %32 = call ptr @memset(ptr %event.i, i32 0, i32 28)
  %33 = ptrtoint ptr %event.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 7, ptr %event.i, align 4
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %addr.i, align 4
  %36 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %port.i, align 1
  %38 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %queue.i.i, align 4
  %conv.i.i = trunc i32 %39 to i8
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i.i, ptr %11, align 1
  %41 = load i16, ptr %addr.i, align 4
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %10, align 4
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %35, ptr %9, align 2
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %37, ptr %8, align 1
  %call3.i = call i32 @snd_seq_oss_process_event(ptr noundef %dp, ptr noundef nonnull %rec, ptr noundef nonnull %event.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.insert_queue.exit.thread_crit_edge

if.end.i.insert_queue.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %insert_queue.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %45 = ptrtoint ptr %timer.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %timer.i, align 4
  %cur_tick.i.i = getelementptr inbounds %struct.seq_oss_timer, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %cur_tick.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_tick.i.i, align 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %7, align 4
  %realtime.i = getelementptr inbounds %struct.seq_oss_timer, ptr %46, i32 0, i32 2
  %50 = ptrtoint ptr %realtime.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %realtime.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool10.not.i = icmp eq i32 %51, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %if.end6.i.if.then13.i_crit_edge

if.end6.i.if.then13.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %running.i = getelementptr inbounds %struct.seq_oss_timer, ptr %46, i32 0, i32 3
  %52 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool12.not.i = icmp eq i32 %53, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %insert_queue.exit

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %if.end6.i.if.then13.i_crit_edge
  %54 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cseq.i, align 4
  %call.i.i97 = call i32 @snd_seq_kernel_client_dispatch(i32 noundef %55, ptr noundef nonnull %event.i, i32 noundef 0, i32 noundef 0) #4
  br label %insert_queue.exit.thread

insert_queue.exit.thread:                         ; preds = %if.then13.i, %if.end.i.insert_queue.exit.thread_crit_edge, %if.end45.insert_queue.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %event.i) #4
  br label %if.end50

insert_queue.exit:                                ; preds = %lor.lhs.false.i
  %56 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cseq.i, align 4
  %58 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %file_mode, align 4
  %and.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  %call16.i = call i32 @snd_seq_kernel_client_enqueue(i32 noundef %57, ptr noundef nonnull %event.i, ptr noundef %opt, i1 noundef zeroext %tobool15.not.i) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %event.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp47 = icmp slt i32 %call16.i, 0
  br i1 %cmp47, label %insert_queue.exit.while.end_crit_edge, label %insert_queue.exit.if.end50_crit_edge

insert_queue.exit.if.end50_crit_edge:             ; preds = %insert_queue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

insert_queue.exit.while.end_crit_edge:            ; preds = %insert_queue.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end50:                                         ; preds = %insert_queue.exit.if.end50_crit_edge, %insert_queue.exit.thread
  %retval.0.i104 = phi i32 [ 0, %insert_queue.exit.thread ], [ %call16.i, %insert_queue.exit.if.end50_crit_edge ]
  %add = add i32 %ev_size.0, %result.0119
  %add.ptr51 = getelementptr i8, ptr %buf.addr.0116, i32 %ev_size.0
  %sub = sub nsw i32 %count.addr.0117, %ev_size.0
  %cmp1 = icmp sgt i32 %sub, 3
  br i1 %cmp1, label %if.end50.if.then.i_crit_edge, label %if.end50.while.end_crit_edge

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end50.if.then.i_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

while.end.sink.split:                             ; preds = %if.end.i.i90.while.end.sink.split_crit_edge, %land.lhs.true.i.i82.while.end.sink.split_crit_edge, %if.end33.while.end.sink.split_crit_edge, %if.end.i.i.while.end.sink.split_crit_edge, %land.lhs.true.i.i.while.end.sink.split_crit_edge, %if.then.i.while.end.sink.split_crit_edge
  %res.03.i.i91.sink161 = phi i32 [ %call1.i.i.i, %if.end.i.i.while.end.sink.split_crit_edge ], [ 4, %if.then.i.while.end.sink.split_crit_edge ], [ 4, %land.lhs.true.i.i.while.end.sink.split_crit_edge ], [ %call1.i.i.i88, %if.end.i.i90.while.end.sink.split_crit_edge ], [ 4, %if.end33.while.end.sink.split_crit_edge ], [ 4, %land.lhs.true.i.i82.while.end.sink.split_crit_edge ]
  %.sink = phi ptr [ %rec, %if.end.i.i.while.end.sink.split_crit_edge ], [ %rec, %if.then.i.while.end.sink.split_crit_edge ], [ %rec, %land.lhs.true.i.i.while.end.sink.split_crit_edge ], [ %1, %if.end.i.i90.while.end.sink.split_crit_edge ], [ %1, %if.end33.while.end.sink.split_crit_edge ], [ %1, %land.lhs.true.i.i82.while.end.sink.split_crit_edge ]
  %sub.i.i92 = sub i32 4, %res.03.i.i91.sink161
  %add.ptr.i.i93 = getelementptr i8, ptr %.sink, i32 %sub.i.i92
  %60 = call ptr @memset(ptr %add.ptr.i.i93, i32 0, i32 %res.03.i.i91.sink161)
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end50.while.end_crit_edge, %insert_queue.exit.while.end_crit_edge, %if.else.while.end_crit_edge, %if.end29.while.end_crit_edge, %land.lhs.true.while.end_crit_edge
  %result.0108 = phi i32 [ %result.0119, %while.end.sink.split ], [ %add, %if.end50.while.end_crit_edge ], [ %result.0119, %if.end29.while.end_crit_edge ], [ %result.0119, %insert_queue.exit.while.end_crit_edge ], [ %result.0119, %land.lhs.true.while.end_crit_edge ], [ %result.0119, %if.else.while.end_crit_edge ]
  %err.1 = phi i32 [ -14, %while.end.sink.split ], [ %retval.0.i104, %if.end50.while.end_crit_edge ], [ %err.0125, %if.end29.while.end_crit_edge ], [ %call16.i, %insert_queue.exit.while.end_crit_edge ], [ -22, %land.lhs.true.while.end_crit_edge ], [ -22, %if.else.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0108)
  %cmp52 = icmp sgt i32 %result.0108, 0
  br i1 %cmp52, label %while.end.while.end.thread_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %if.then7.while.end.thread_crit_edge
  %result.0108147 = phi i32 [ %result.0108, %while.end.while.end.thread_crit_edge ], [ %result.0119, %if.then7.while.end.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %while.end.thread, %while.end.cleanup_crit_edge, %if.end11, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end11 ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ %result.0108147, %while.end.thread ], [ %err.1, %while.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rec) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_synth_load_patch(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_poll(ptr nocapture noundef readonly %dp, ptr noundef %file, ptr noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %readq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 12
  %0 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %readq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %file_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %2 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %file_mode, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @snd_seq_oss_readq_poll(ptr noundef nonnull %1, ptr noundef %file, ptr noundef %wait) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 65
  br label %if.end5

if.end5:                                          ; preds = %if.then, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %mask.0 = phi i32 [ 0, %land.lhs.true.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ], [ %spec.select, %if.then ]
  %writeq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 11
  %4 = ptrtoint ptr %writeq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %writeq, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end17_crit_edge, label %land.lhs.true7

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

land.lhs.true7:                                   ; preds = %if.end5
  %file_mode8 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 6
  %6 = ptrtoint ptr %file_mode8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %file_mode8, align 4
  %and9 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true7.if.end17_crit_edge, label %if.then11

land.lhs.true7.if.end17_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then11:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  %cseq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  %8 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cseq, align 4
  %call12 = tail call i32 @snd_seq_kernel_client_write_poll(i32 noundef %9, ptr noundef %file, ptr noundef %wait) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %or15 = or i32 %mask.0, 260
  %spec.select27 = select i1 %tobool13.not, i32 %mask.0, i32 %or15
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %land.lhs.true7.if.end17_crit_edge, %if.end5.if.end17_crit_edge
  %mask.1 = phi i32 [ %mask.0, %land.lhs.true7.if.end17_crit_edge ], [ %mask.0, %if.end5.if.end17_crit_edge ], [ %spec.select27, %if.then11 ]
  ret i32 %mask.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_readq_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_write_poll(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_process_timer_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_process_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_enqueue(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_dispatch(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{!"sp"}
!1 = distinct !{null, !2, !"__already_done", i1 false, i1 false}
!2 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!3 = distinct !{null, !2, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i64 2152150151, i64 2152150176}
!19 = !{i64 2152149470, i64 2152149495}
!20 = !{i64 4645025}
!21 = !{i64 4645222}
!22 = !{i64 2152130455}
