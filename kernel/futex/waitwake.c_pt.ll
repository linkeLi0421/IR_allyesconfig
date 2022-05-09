; ModuleID = '/llk/IR_all_yes/kernel/futex/waitwake.c_pt.bc'
source_filename = "../kernel/futex/waitwake.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.futex_key = type { %struct.anon.33 }
%struct.anon.33 = type { i64, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.39, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.39 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wake_q_head = type { ptr, ptr }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [72 x i8] }
%struct.plist_head = type { %struct.list_head }
%struct.anon.36 = type { i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.futex_vector = type { %struct.futex_waitv, %struct.futex_q }
%struct.futex_waitv = type { i64, i64, i32, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/futex/waitwake.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"refusing to wake PI futex\0A\00", [37 x i8] zeroinitializer }, align 32
@futex_q_init = external dso_local local_unnamed_addr constant %struct.futex_q, align 8
@futex_atomic_op_inuser._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.futex_atomic_op_inuser = private unnamed_addr constant [23 x i8] c"futex_atomic_op_inuser\00", align 1
@futex_atomic_op_inuser._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.futex_atomic_op_inuser, ptr @.str, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016futex_wake_op: %s tries to shift op by %d; fix this program\0A\00", [33 x i8] zeroinitializer }, align 32
@futex_atomic_op_inuser._entry_ptr = internal global ptr @futex_atomic_op_inuser._entry, section ".printk_index", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4294967282, i64 4294967285]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 119, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private constant [27 x i8] c"../kernel/futex/waitwake.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 203, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 57, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @futex_atomic_op_inuser._entry, ptr @futex_atomic_op_inuser._entry_ptr, ptr @.str, ptr @.str.1, ptr @futex_atomic_op_inuser._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @futex_atomic_op_inuser._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @futex_atomic_op_inuser._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @futex_wake_mark(ptr noundef %wake_q, ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 1
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4
  %2 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pi_state, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %rt_waiter = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 5
  %4 = ptrtoint ptr %rt_waiter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rt_waiter, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end23, label %lor.rhs.do.end_crit_edge, !prof !32

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end23:                                         ; preds = %lor.rhs
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #6
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #6, !srcloc !33
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end23.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !34

if.end23.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end23
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !32

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end23.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #6
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  tail call void @__futex_unqueue(ptr noundef %q) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %8 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %lock_ptr, align 8
  tail call void @wake_q_add_safe(ptr noundef %wake_q, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %get_task_struct.exit, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__futex_unqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_wake(ptr noundef %uaddr, i32 noundef %flags, i32 noundef %nr_wake, i32 noundef %bitset) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %union.futex_key, align 8
  %wake_q = alloca %struct.wake_q_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #6
  %0 = call ptr @memset(ptr %key, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #6
  %1 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %2 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %wake_q, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitset)
  %tobool.not = icmp eq i32 %bitset, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2 = icmp ne i32 %and, 0
  %call = call i32 @get_futex_key(ptr noundef %uaddr, i1 noundef zeroext %tobool2, ptr noundef nonnull %key, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge, !prof !32

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @futex_hash(ptr noundef nonnull %key) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %call7, i32 noundef 4) #6
  %4 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %call7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %call7, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #6
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %call7, i32 0, i32 2
  %6 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chain, align 16
  %cmp22.not74 = icmp eq ptr %7, %chain
  br i1 %cmp22.not74, label %if.end11.for.end_crit_edge, label %for.body.lr.ph

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %word3.i = getelementptr inbounds %struct.anon.36, ptr %key, i32 0, i32 1
  %offset7.i = getelementptr inbounds %struct.anon.36, ptr %key, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in76 = phi ptr [ %7, %for.body.lr.ph ], [ %.pn78, %for.inc.for.body_crit_edge ]
  %ret.075 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %this.077 = getelementptr i8, ptr %.pn.in76, i32 -12
  %8 = ptrtoint ptr %.pn.in76 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn78 = load ptr, ptr %.pn.in76, align 4
  %key25 = getelementptr i8, ptr %.pn.in76, i32 20
  %tobool.not.i = icmp eq ptr %key25, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %land.lhs.true2.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true2.i:                                 ; preds = %for.body
  %word.i = getelementptr i8, ptr %.pn.in76, i32 28
  %9 = ptrtoint ptr %word.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %word.i, align 8
  %11 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.i = icmp eq i32 %10, %12
  br i1 %cmp.i, label %land.lhs.true4.i, label %land.lhs.true2.i.for.inc_crit_edge

land.lhs.true2.i.for.inc_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %13 = ptrtoint ptr %key25 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %key25, align 8
  %15 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp6.i = icmp eq i64 %14, %16
  br i1 %cmp6.i, label %futex_match.exit, label %land.lhs.true4.i.for.inc_crit_edge

land.lhs.true4.i.for.inc_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

futex_match.exit:                                 ; preds = %land.lhs.true4.i
  %offset.i = getelementptr i8, ptr %.pn.in76, i32 32
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset.i, align 4
  %19 = ptrtoint ptr %offset7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp8.i.not = icmp eq i32 %18, %20
  br i1 %cmp8.i.not, label %if.then28, label %futex_match.exit.for.inc_crit_edge

futex_match.exit.for.inc_crit_edge:               ; preds = %futex_match.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then28:                                        ; preds = %futex_match.exit
  %pi_state = getelementptr i8, ptr %.pn.in76, i32 36
  %21 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pi_state, align 8
  %tobool29.not = icmp eq ptr %22, null
  br i1 %tobool29.not, label %lor.lhs.false, label %if.then28.for.end_crit_edge

if.then28.for.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

lor.lhs.false:                                    ; preds = %if.then28
  %rt_waiter = getelementptr i8, ptr %.pn.in76, i32 40
  %23 = ptrtoint ptr %rt_waiter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rt_waiter, align 4
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %if.end32, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end32:                                         ; preds = %lor.lhs.false
  %bitset33 = getelementptr i8, ptr %.pn.in76, i32 48
  %25 = ptrtoint ptr %bitset33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bitset33, align 4
  %and34 = and i32 %26, %bitset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.for.inc_crit_edge, label %if.end37

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end37:                                         ; preds = %if.end32
  call void @futex_wake_mark(ptr noundef nonnull %wake_q, ptr noundef %this.077)
  %inc = add i32 %ret.075, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nr_wake)
  %cmp38.not = icmp slt i32 %inc, %nr_wake
  br i1 %cmp38.not, label %if.end37.for.inc_crit_edge, label %if.end37.for.end_crit_edge

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end37.for.inc_crit_edge, %if.end32.for.inc_crit_edge, %futex_match.exit.for.inc_crit_edge, %land.lhs.true4.i.for.inc_crit_edge, %land.lhs.true2.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %inc, %if.end37.for.inc_crit_edge ], [ %ret.075, %if.end32.for.inc_crit_edge ], [ %ret.075, %futex_match.exit.for.inc_crit_edge ], [ %ret.075, %land.lhs.true4.i.for.inc_crit_edge ], [ %ret.075, %land.lhs.true2.i.for.inc_crit_edge ], [ %ret.075, %for.body.for.inc_crit_edge ]
  %cmp22.not = icmp eq ptr %.pn78, %chain
  br i1 %cmp22.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end37.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.then28.for.end_crit_edge, %if.end11.for.end_crit_edge
  %ret.2 = phi i32 [ 0, %if.end11.for.end_crit_edge ], [ -22, %if.then28.for.end_crit_edge ], [ -22, %lor.lhs.false.for.end_crit_edge ], [ %inc, %if.end37.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #6
  call void @wake_up_q(ptr noundef nonnull %wake_q) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_futex_key(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_wake_op(ptr noundef %uaddr1, i32 noundef %flags, ptr noundef %uaddr2, i32 noundef %nr_wake, i32 noundef %nr_wake2, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  %comm.i = alloca [16 x i8], align 1
  %key1 = alloca %union.futex_key, align 8
  %key2 = alloca %union.futex_key, align 8
  %wake_q = alloca %struct.wake_q_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key1) #6
  %0 = call ptr @memset(ptr %key1, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key2) #6
  %1 = call ptr @memset(ptr %key2, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #6
  %2 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %3 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wake_q, ptr %2, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call273 = call i32 @get_futex_key(ptr noundef %uaddr1, i1 noundef zeroext %tobool, ptr noundef nonnull %key1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %cmp.not274 = icmp eq i32 %call273, 0
  br i1 %cmp.not274, label %if.end.lr.ph, label %entry.cleanup_crit_edge, !prof !32

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %and.i = lshr i32 %op, 28
  %shr.i = and i32 %and.i, 7
  %and1.i = lshr i32 %op, 24
  %shr2.i = and i32 %and1.i, 15
  %5 = shl i32 %op, 8
  %shr4.i = ashr i32 %5, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %op)
  %tobool.not.i = icmp sgt i32 %op, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %5)
  %6 = icmp ugt i32 %5, 33554431
  %and21.i = and i32 %shr4.i, 31
  br label %if.end

retry.loopexit:                                   ; preds = %if.end43
  %call = call i32 @get_futex_key(ptr noundef %uaddr1, i1 noundef zeroext true, ptr noundef nonnull %key1, i32 noundef 0) #6
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %retry.loopexit.if.end_crit_edge, label %retry.loopexit.cleanup_crit_edge, !prof !32

retry.loopexit.cleanup_crit_edge:                 ; preds = %retry.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

retry.loopexit.if.end_crit_edge:                  ; preds = %retry.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %retry.loopexit.if.end_crit_edge, %if.end.lr.ph
  %call6 = call i32 @get_futex_key(ptr noundef %uaddr2, i1 noundef zeroext %tobool, ptr noundef nonnull %key2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end15, label %if.end.cleanup_crit_edge, !prof !32

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = call ptr @futex_hash(ptr noundef nonnull %key1) #6
  %call17 = call ptr @futex_hash(ptr noundef nonnull %key2) #6
  %cmp.i = icmp ugt ptr %call16, %call17
  %spec.select.i = select i1 %cmp.i, ptr %call16, ptr %call17
  %spec.select13.i = select i1 %cmp.i, ptr %call17, ptr %call16
  %lock.i = getelementptr inbounds %struct.futex_hash_bucket, ptr %spec.select13.i, i32 0, i32 1
  %cmp1.not.i = icmp eq ptr %spec.select13.i, %spec.select.i
  %lock4.i = getelementptr inbounds %struct.futex_hash_bucket, ptr %spec.select.i, i32 0, i32 1
  %lock.i182 = getelementptr inbounds %struct.futex_hash_bucket, ptr %call16, i32 0, i32 1
  %cmp.not.i = icmp eq ptr %call16, %call17
  %lock1.i = getelementptr inbounds %struct.futex_hash_bucket, ptr %call17, i32 0, i32 1
  br label %retry_private

retry_private:                                    ; preds = %if.end43.retry_private_crit_edge, %if.end15
  call void @_raw_spin_lock(ptr noundef %lock.i) #6
  br i1 %cmp1.not.i, label %retry_private.double_lock_hb.exit_crit_edge, label %do.body3.i

retry_private.double_lock_hb.exit_crit_edge:      ; preds = %retry_private
  call void @__sanitizer_cov_trace_pc() #8
  br label %double_lock_hb.exit

do.body3.i:                                       ; preds = %retry_private
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_lock_nested(ptr noundef %lock4.i, i32 noundef 1) #6
  br label %double_lock_hb.exit

double_lock_hb.exit:                              ; preds = %do.body3.i, %retry_private.double_lock_hb.exit_crit_edge
  br i1 %tobool.not.i, label %double_lock_hb.exit.if.end23.i_crit_edge, label %if.then.i

double_lock_hb.exit.if.end23.i_crit_edge:         ; preds = %double_lock_hb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then.i:                                        ; preds = %double_lock_hb.exit
  br i1 %6, label %if.then10.i, label %if.then.i.if.end22.i_crit_edge

if.then.i.if.end22.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then10.i:                                      ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %comm.i) #6
  %7 = call ptr @memset(ptr %comm.i, i32 255, i32 16)
  %call11.i = call i32 @___ratelimit(ptr noundef nonnull @futex_atomic_op_inuser._rs, ptr noundef nonnull @__func__.futex_atomic_op_inuser) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.then10.i.if.end.i_crit_edge, label %do.end16.i

if.then10.i.if.end.i_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end16.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %call19.i = call ptr @__get_task_comm(ptr noundef nonnull %comm.i, i32 noundef 16, ptr noundef %11) #6
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %call19.i, i32 noundef %shr4.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end16.i, %if.then10.i.if.end.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %comm.i) #6
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end.i, %if.then.i.if.end22.i_crit_edge
  %oparg.0.i = phi i32 [ %and21.i, %if.end.i ], [ %shr4.i, %if.then.i.if.end22.i_crit_edge ]
  %shl.i = shl nuw i32 1, %oparg.0.i
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end22.i, %double_lock_hb.exit.if.end23.i_crit_edge
  %oparg.1.i = phi i32 [ %shl.i, %if.end22.i ], [ %shr4.i, %double_lock_hb.exit.if.end23.i_crit_edge ]
  %12 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uaddr2, i32 4, i32 -1226833920) #10, !srcloc !38
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %if.end23.i.arch_futex_atomic_op_inuser.exit.i_crit_edge

if.end23.i.arch_futex_atomic_op_inuser.exit.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arch_futex_atomic_op_inuser.exit.i

if.end.i.i:                                       ; preds = %if.end23.i
  %19 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %if.end.i.i.arch_futex_atomic_op_inuser.exit.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb9.i.i
    i32 2, label %sw.bb21.i.i
    i32 3, label %sw.bb33.i.i
    i32 4, label %sw.bb45.i.i
  ]

if.end.i.i.arch_futex_atomic_op_inuser.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arch_futex_atomic_op_inuser.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @llvm.prefetch.p0(ptr %uaddr2, i32 1, i32 3, i32 1) #6
  %20 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #5, !srcloc !40
  %and.i.i.i = and i32 %22, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %23 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$1, [$3]\0A\09mov\09$0, $4\0A2:\09strex\09$2, $0, [$3]\0A\09teq\09$2, #0\0A\09bne\091b\0A\09mov\09$0, #0\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,=&r,r,r,Ir,~{cc},~{memory}"(ptr %uaddr2, i32 %oparg.1.i, i32 -14) #6, !srcloc !43
  %asmresult6.i.i = extractvalue { i32, i32, i32 } %23, 0
  %asmresult7.i.i = extractvalue { i32, i32, i32 } %23, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  br label %arch_futex_atomic_op_inuser.exit.i

sw.bb9.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  call void @llvm.prefetch.p0(ptr %uaddr2, i32 1, i32 3, i32 1) #6
  %24 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i73.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i73.i.i to ptr
  %cpu_domain.i.i74.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i74.i.i) #5, !srcloc !40
  %and.i75.i.i = and i32 %26, -13
  %or.i76.i.i = or i32 %and.i75.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i76.i.i) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %27 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$1, [$3]\0A\09add\09$0, $1, $4\0A2:\09strex\09$2, $0, [$3]\0A\09teq\09$2, #0\0A\09bne\091b\0A\09mov\09$0, #0\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,=&r,r,r,Ir,~{cc},~{memory}"(ptr %uaddr2, i32 %oparg.1.i, i32 -14) #6, !srcloc !45
  %asmresult18.i.i = extractvalue { i32, i32, i32 } %27, 0
  %asmresult19.i.i = extractvalue { i32, i32, i32 } %27, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  br label %arch_futex_atomic_op_inuser.exit.i

sw.bb21.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !46
  call void @llvm.prefetch.p0(ptr %uaddr2, i32 1, i32 3, i32 1) #6
  %28 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i77.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i77.i.i to ptr
  %cpu_domain.i.i78.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i78.i.i) #5, !srcloc !40
  %and.i79.i.i = and i32 %30, -13
  %or.i80.i.i = or i32 %and.i79.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i80.i.i) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %31 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$1, [$3]\0A\09orr\09$0, $1, $4\0A2:\09strex\09$2, $0, [$3]\0A\09teq\09$2, #0\0A\09bne\091b\0A\09mov\09$0, #0\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,=&r,r,r,Ir,~{cc},~{memory}"(ptr %uaddr2, i32 %oparg.1.i, i32 -14) #6, !srcloc !47
  %asmresult30.i.i = extractvalue { i32, i32, i32 } %31, 0
  %asmresult31.i.i = extractvalue { i32, i32, i32 } %31, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  br label %arch_futex_atomic_op_inuser.exit.i

sw.bb33.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !48
  call void @llvm.prefetch.p0(ptr %uaddr2, i32 1, i32 3, i32 1) #6
  %32 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i81.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i81.i.i to ptr
  %cpu_domain.i.i82.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i82.i.i) #5, !srcloc !40
  %and.i83.i.i = and i32 %34, -13
  %or.i84.i.i = or i32 %and.i83.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i84.i.i) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %neg.i.i = xor i32 %oparg.1.i, -1
  %35 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$1, [$3]\0A\09and\09$0, $1, $4\0A2:\09strex\09$2, $0, [$3]\0A\09teq\09$2, #0\0A\09bne\091b\0A\09mov\09$0, #0\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,=&r,r,r,Ir,~{cc},~{memory}"(ptr %uaddr2, i32 %neg.i.i, i32 -14) #6, !srcloc !49
  %asmresult42.i.i = extractvalue { i32, i32, i32 } %35, 0
  %asmresult43.i.i = extractvalue { i32, i32, i32 } %35, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  br label %arch_futex_atomic_op_inuser.exit.i

sw.bb45.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !50
  call void @llvm.prefetch.p0(ptr %uaddr2, i32 1, i32 3, i32 1) #6
  %36 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i85.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i85.i.i to ptr
  %cpu_domain.i.i86.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i86.i.i) #5, !srcloc !40
  %and.i87.i.i = and i32 %38, -13
  %or.i88.i.i = or i32 %and.i87.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i88.i.i) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %39 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$1, [$3]\0A\09eor\09$0, $1, $4\0A2:\09strex\09$2, $0, [$3]\0A\09teq\09$2, #0\0A\09bne\091b\0A\09mov\09$0, #0\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,=&r,r,r,Ir,~{cc},~{memory}"(ptr %uaddr2, i32 %oparg.1.i, i32 -14) #6, !srcloc !51
  %asmresult54.i.i = extractvalue { i32, i32, i32 } %39, 0
  %asmresult55.i.i = extractvalue { i32, i32, i32 } %39, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  br label %arch_futex_atomic_op_inuser.exit.i

arch_futex_atomic_op_inuser.exit.i:               ; preds = %sw.bb45.i.i, %sw.bb33.i.i, %sw.bb21.i.i, %sw.bb9.i.i, %sw.bb.i.i, %if.end.i.i.arch_futex_atomic_op_inuser.exit.i_crit_edge, %if.end23.i.arch_futex_atomic_op_inuser.exit.i_crit_edge
  %oldval.0.i = phi i32 [ -1, %if.end23.i.arch_futex_atomic_op_inuser.exit.i_crit_edge ], [ %asmresult55.i.i, %sw.bb45.i.i ], [ %asmresult43.i.i, %sw.bb33.i.i ], [ %asmresult31.i.i, %sw.bb21.i.i ], [ %asmresult19.i.i, %sw.bb9.i.i ], [ %asmresult7.i.i, %sw.bb.i.i ], [ 0, %if.end.i.i.arch_futex_atomic_op_inuser.exit.i_crit_edge ]
  %retval.0.i.i = phi i32 [ -14, %if.end23.i.arch_futex_atomic_op_inuser.exit.i_crit_edge ], [ %asmresult54.i.i, %sw.bb45.i.i ], [ %asmresult42.i.i, %sw.bb33.i.i ], [ %asmresult30.i.i, %sw.bb21.i.i ], [ %asmresult18.i.i, %sw.bb9.i.i ], [ %asmresult6.i.i, %sw.bb.i.i ], [ -38, %if.end.i.i.arch_futex_atomic_op_inuser.exit.i_crit_edge ]
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !52
  %40 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i66.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i66.i to ptr
  %task.i.i67.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %task.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %task.i.i67.i, align 8
  %pagefault_disabled.i.i68.i = getelementptr inbounds %struct.task_struct, ptr %43, i32 0, i32 213
  %44 = ptrtoint ptr %pagefault_disabled.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pagefault_disabled.i.i68.i, align 8
  %dec.i.i.i = add i32 %45, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i68.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool25.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %futex_atomic_op_inuser.exit

if.end27.i:                                       ; preds = %arch_futex_atomic_op_inuser.exit.i
  %46 = zext i32 %shr2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %shr2.i, label %if.end27.i.if.then26_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb29.i
    i32 2, label %sw.bb32.i
    i32 5, label %sw.bb35.i
    i32 3, label %sw.bb38.i
    i32 4, label %sw.bb41.i
  ]

if.end27.i.if.then26_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

sw.bb.i:                                          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %and5.i.le = shl i32 %op, 20
  %shr.i65.i.le266 = ashr exact i32 %and5.i.le, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %oldval.0.i, i32 %shr.i65.i.le266)
  %cmp28.i = icmp eq i32 %oldval.0.i, %shr.i65.i.le266
  %conv.i = zext i1 %cmp28.i to i32
  br label %if.end49

sw.bb29.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %and5.i.le268 = shl i32 %op, 20
  %shr.i65.i.le264 = ashr exact i32 %and5.i.le268, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %oldval.0.i, i32 %shr.i65.i.le264)
  %cmp30.i = icmp ne i32 %oldval.0.i, %shr.i65.i.le264
  %conv31.i = zext i1 %cmp30.i to i32
  br label %if.end49

sw.bb32.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %and5.i.le269 = shl i32 %op, 20
  %shr.i65.i.le262 = ashr exact i32 %and5.i.le269, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %oldval.0.i, i32 %shr.i65.i.le262)
  %cmp33.i = icmp slt i32 %oldval.0.i, %shr.i65.i.le262
  %conv34.i = zext i1 %cmp33.i to i32
  br label %if.end49

sw.bb35.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %and5.i.le270 = shl i32 %op, 20
  %shr.i65.i.le260 = ashr exact i32 %and5.i.le270, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %oldval.0.i, i32 %shr.i65.i.le260)
  %cmp36.i = icmp sge i32 %oldval.0.i, %shr.i65.i.le260
  %conv37.i = zext i1 %cmp36.i to i32
  br label %if.end49

sw.bb38.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %and5.i.le271 = shl i32 %op, 20
  %shr.i65.i.le258 = ashr exact i32 %and5.i.le271, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %oldval.0.i, i32 %shr.i65.i.le258)
  %cmp39.i = icmp sle i32 %oldval.0.i, %shr.i65.i.le258
  %conv40.i = zext i1 %cmp39.i to i32
  br label %if.end49

sw.bb41.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %and5.i.le272 = shl i32 %op, 20
  %shr.i65.i.le = ashr exact i32 %and5.i.le272, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %oldval.0.i, i32 %shr.i65.i.le)
  %cmp42.i = icmp sgt i32 %oldval.0.i, %shr.i65.i.le
  %conv43.i = zext i1 %cmp42.i to i32
  br label %if.end49

futex_atomic_op_inuser.exit:                      ; preds = %arch_futex_atomic_op_inuser.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp19 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp19, label %futex_atomic_op_inuser.exit.if.then26_crit_edge, label %futex_atomic_op_inuser.exit.if.end49_crit_edge, !prof !34

futex_atomic_op_inuser.exit.if.end49_crit_edge:   ; preds = %futex_atomic_op_inuser.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

futex_atomic_op_inuser.exit.if.then26_crit_edge:  ; preds = %futex_atomic_op_inuser.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.then26:                                        ; preds = %futex_atomic_op_inuser.exit.if.then26_crit_edge, %if.end27.i.if.then26_crit_edge
  %retval.0.i212 = phi i32 [ %retval.0.i.i, %futex_atomic_op_inuser.exit.if.then26_crit_edge ], [ -38, %if.end27.i.if.then26_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock.i182) #6
  br i1 %cmp.not.i, label %if.then26.double_unlock_hb.exit_crit_edge, label %if.then.i183

if.then26.double_unlock_hb.exit_crit_edge:        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %double_unlock_hb.exit

if.then.i183:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %lock1.i) #6
  br label %double_unlock_hb.exit

double_unlock_hb.exit:                            ; preds = %if.then.i183, %if.then26.double_unlock_hb.exit_crit_edge
  %47 = zext i32 %retval.0.i212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %retval.0.i212, label %double_unlock_hb.exit.cleanup_crit_edge [
    i32 -14, label %if.then38
    i32 -11, label %double_unlock_hb.exit.if.end43_crit_edge
  ]

double_unlock_hb.exit.if.end43_crit_edge:         ; preds = %double_unlock_hb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

double_unlock_hb.exit.cleanup_crit_edge:          ; preds = %double_unlock_hb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %double_unlock_hb.exit
  %call39 = call i32 @fault_in_user_writeable(ptr noundef %uaddr2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end43:                                         ; preds = %if.then38.if.end43_crit_edge, %double_unlock_hb.exit.if.end43_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 0) #6
  %call.i = call i32 @__cond_resched() #6
  br i1 %tobool, label %retry.loopexit, label %if.end43.retry_private_crit_edge

if.end43.retry_private_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry_private

if.end49:                                         ; preds = %futex_atomic_op_inuser.exit.if.end49_crit_edge, %sw.bb41.i, %sw.bb38.i, %sw.bb35.i, %sw.bb32.i, %sw.bb29.i, %sw.bb.i
  %retval.0.i208 = phi i32 [ %conv.i, %sw.bb.i ], [ %conv31.i, %sw.bb29.i ], [ %conv34.i, %sw.bb32.i ], [ %conv37.i, %sw.bb35.i ], [ %conv40.i, %sw.bb38.i ], [ %conv43.i, %sw.bb41.i ], [ %retval.0.i.i, %futex_atomic_op_inuser.exit.if.end49_crit_edge ]
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %call16, i32 0, i32 2
  %48 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chain, align 16
  %cmp61.not278 = icmp eq ptr %49, %chain
  br i1 %cmp61.not278, label %if.end49.for.end_crit_edge, label %for.body.lr.ph

if.end49.for.end_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end49
  %word3.i = getelementptr inbounds %struct.anon.36, ptr %key1, i32 0, i32 1
  %offset7.i = getelementptr inbounds %struct.anon.36, ptr %key1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in280 = phi ptr [ %49, %for.body.lr.ph ], [ %.pn282, %for.inc.for.body_crit_edge ]
  %ret.2279 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.3, %for.inc.for.body_crit_edge ]
  %this.0281 = getelementptr i8, ptr %.pn.in280, i32 -12
  %50 = ptrtoint ptr %.pn.in280 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn282 = load ptr, ptr %.pn.in280, align 4
  %key = getelementptr i8, ptr %.pn.in280, i32 20
  %tobool.not.i185 = icmp eq ptr %key, null
  br i1 %tobool.not.i185, label %for.body.for.inc_crit_edge, label %land.lhs.true2.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true2.i:                                 ; preds = %for.body
  %word.i = getelementptr i8, ptr %.pn.in280, i32 28
  %51 = ptrtoint ptr %word.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %word.i, align 8
  %53 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %word3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp.i186 = icmp eq i32 %52, %54
  br i1 %cmp.i186, label %land.lhs.true4.i, label %land.lhs.true2.i.for.inc_crit_edge

land.lhs.true2.i.for.inc_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %55 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %key, align 8
  %57 = ptrtoint ptr %key1 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %key1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %58)
  %cmp6.i = icmp eq i64 %56, %58
  br i1 %cmp6.i, label %futex_match.exit, label %land.lhs.true4.i.for.inc_crit_edge

land.lhs.true4.i.for.inc_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

futex_match.exit:                                 ; preds = %land.lhs.true4.i
  %offset.i = getelementptr i8, ptr %.pn.in280, i32 32
  %59 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %offset.i, align 4
  %61 = ptrtoint ptr %offset7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp8.i.not = icmp eq i32 %60, %62
  br i1 %cmp8.i.not, label %if.then66, label %futex_match.exit.for.inc_crit_edge

futex_match.exit.for.inc_crit_edge:               ; preds = %futex_match.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then66:                                        ; preds = %futex_match.exit
  %pi_state = getelementptr i8, ptr %.pn.in280, i32 36
  %63 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pi_state, align 8
  %tobool67.not = icmp eq ptr %64, null
  br i1 %tobool67.not, label %lor.lhs.false, label %if.then66.out_unlock_crit_edge

if.then66.out_unlock_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

lor.lhs.false:                                    ; preds = %if.then66
  %rt_waiter = getelementptr i8, ptr %.pn.in280, i32 40
  %65 = ptrtoint ptr %rt_waiter to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rt_waiter, align 4
  %tobool68.not = icmp eq ptr %66, null
  br i1 %tobool68.not, label %if.end70, label %lor.lhs.false.out_unlock_crit_edge

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end70:                                         ; preds = %lor.lhs.false
  call void @futex_wake_mark(ptr noundef nonnull %wake_q, ptr noundef %this.0281)
  %inc = add i32 %ret.2279, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nr_wake)
  %cmp71.not = icmp slt i32 %inc, %nr_wake
  br i1 %cmp71.not, label %if.end70.for.inc_crit_edge, label %if.end70.for.end_crit_edge

if.end70.for.end_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end70.for.inc_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end70.for.inc_crit_edge, %futex_match.exit.for.inc_crit_edge, %land.lhs.true4.i.for.inc_crit_edge, %land.lhs.true2.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.3 = phi i32 [ %inc, %if.end70.for.inc_crit_edge ], [ %ret.2279, %futex_match.exit.for.inc_crit_edge ], [ %ret.2279, %land.lhs.true4.i.for.inc_crit_edge ], [ %ret.2279, %land.lhs.true2.i.for.inc_crit_edge ], [ %ret.2279, %for.body.for.inc_crit_edge ]
  %cmp61.not = icmp eq ptr %.pn282, %chain
  br i1 %cmp61.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end70.for.end_crit_edge, %if.end49.for.end_crit_edge
  %ret.4 = phi i32 [ 0, %if.end49.for.end_crit_edge ], [ %inc, %if.end70.for.end_crit_edge ], [ %ret.3, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i208)
  %cmp81 = icmp sgt i32 %retval.0.i208, 0
  br i1 %cmp81, label %if.then82, label %for.end.out_unlock_crit_edge

for.end.out_unlock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then82:                                        ; preds = %for.end
  %chain84 = getelementptr inbounds %struct.futex_hash_bucket, ptr %call17, i32 0, i32 2
  %67 = ptrtoint ptr %chain84 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chain84, align 16
  %cmp100.not287 = icmp eq ptr %68, %chain84
  br i1 %cmp100.not287, label %if.then82.for.end127_crit_edge, label %for.body103.lr.ph

if.then82.for.end127_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end127

for.body103.lr.ph:                                ; preds = %if.then82
  %word3.i189 = getelementptr inbounds %struct.anon.36, ptr %key2, i32 0, i32 1
  %offset7.i195 = getelementptr inbounds %struct.anon.36, ptr %key2, i32 0, i32 2
  br label %for.body103

for.body103:                                      ; preds = %for.inc120.for.body103_crit_edge, %for.body103.lr.ph
  %.pn179.in289 = phi ptr [ %68, %for.body103.lr.ph ], [ %.pn179291, %for.inc120.for.body103_crit_edge ]
  %op_ret.0288 = phi i32 [ 0, %for.body103.lr.ph ], [ %op_ret.1, %for.inc120.for.body103_crit_edge ]
  %this.1290 = getelementptr i8, ptr %.pn179.in289, i32 -12
  %69 = ptrtoint ptr %.pn179.in289 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn179291 = load ptr, ptr %.pn179.in289, align 4
  %key104 = getelementptr i8, ptr %.pn179.in289, i32 20
  %tobool.not.i187 = icmp eq ptr %key104, null
  br i1 %tobool.not.i187, label %for.body103.for.inc120_crit_edge, label %land.lhs.true2.i191

for.body103.for.inc120_crit_edge:                 ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc120

land.lhs.true2.i191:                              ; preds = %for.body103
  %word.i188 = getelementptr i8, ptr %.pn179.in289, i32 28
  %70 = ptrtoint ptr %word.i188 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %word.i188, align 8
  %72 = ptrtoint ptr %word3.i189 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %word3.i189, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.i190 = icmp eq i32 %71, %73
  br i1 %cmp.i190, label %land.lhs.true4.i193, label %land.lhs.true2.i191.for.inc120_crit_edge

land.lhs.true2.i191.for.inc120_crit_edge:         ; preds = %land.lhs.true2.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc120

land.lhs.true4.i193:                              ; preds = %land.lhs.true2.i191
  %74 = ptrtoint ptr %key104 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %key104, align 8
  %76 = ptrtoint ptr %key2 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %key2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %77)
  %cmp6.i192 = icmp eq i64 %75, %77
  br i1 %cmp6.i192, label %futex_match.exit199, label %land.lhs.true4.i193.for.inc120_crit_edge

land.lhs.true4.i193.for.inc120_crit_edge:         ; preds = %land.lhs.true4.i193
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc120

futex_match.exit199:                              ; preds = %land.lhs.true4.i193
  %offset.i194 = getelementptr i8, ptr %.pn179.in289, i32 32
  %78 = ptrtoint ptr %offset.i194 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset.i194, align 4
  %80 = ptrtoint ptr %offset7.i195 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset7.i195, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp8.i196.not = icmp eq i32 %79, %81
  br i1 %cmp8.i196.not, label %if.then107, label %futex_match.exit199.for.inc120_crit_edge

futex_match.exit199.for.inc120_crit_edge:         ; preds = %futex_match.exit199
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc120

if.then107:                                       ; preds = %futex_match.exit199
  %pi_state108 = getelementptr i8, ptr %.pn179.in289, i32 36
  %82 = ptrtoint ptr %pi_state108 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pi_state108, align 8
  %tobool109.not = icmp eq ptr %83, null
  br i1 %tobool109.not, label %lor.lhs.false110, label %if.then107.out_unlock_crit_edge

if.then107.out_unlock_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

lor.lhs.false110:                                 ; preds = %if.then107
  %rt_waiter111 = getelementptr i8, ptr %.pn179.in289, i32 40
  %84 = ptrtoint ptr %rt_waiter111 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rt_waiter111, align 4
  %tobool112.not = icmp eq ptr %85, null
  br i1 %tobool112.not, label %if.end114, label %lor.lhs.false110.out_unlock_crit_edge

lor.lhs.false110.out_unlock_crit_edge:            ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end114:                                        ; preds = %lor.lhs.false110
  call void @futex_wake_mark(ptr noundef nonnull %wake_q, ptr noundef %this.1290)
  %inc115 = add i32 %op_ret.0288, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc115, i32 %nr_wake2)
  %cmp116.not = icmp slt i32 %inc115, %nr_wake2
  br i1 %cmp116.not, label %if.end114.for.inc120_crit_edge, label %if.end114.for.end127_crit_edge

if.end114.for.end127_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end127

if.end114.for.inc120_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc120

for.inc120:                                       ; preds = %if.end114.for.inc120_crit_edge, %futex_match.exit199.for.inc120_crit_edge, %land.lhs.true4.i193.for.inc120_crit_edge, %land.lhs.true2.i191.for.inc120_crit_edge, %for.body103.for.inc120_crit_edge
  %op_ret.1 = phi i32 [ %inc115, %if.end114.for.inc120_crit_edge ], [ %op_ret.0288, %futex_match.exit199.for.inc120_crit_edge ], [ %op_ret.0288, %land.lhs.true4.i193.for.inc120_crit_edge ], [ %op_ret.0288, %land.lhs.true2.i191.for.inc120_crit_edge ], [ %op_ret.0288, %for.body103.for.inc120_crit_edge ]
  %cmp100.not = icmp eq ptr %.pn179291, %chain84
  br i1 %cmp100.not, label %for.inc120.for.end127_crit_edge, label %for.inc120.for.body103_crit_edge

for.inc120.for.body103_crit_edge:                 ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body103

for.inc120.for.end127_crit_edge:                  ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end127

for.end127:                                       ; preds = %for.inc120.for.end127_crit_edge, %if.end114.for.end127_crit_edge, %if.then82.for.end127_crit_edge
  %op_ret.2 = phi i32 [ 0, %if.then82.for.end127_crit_edge ], [ %inc115, %if.end114.for.end127_crit_edge ], [ %op_ret.1, %for.inc120.for.end127_crit_edge ]
  %add = add i32 %op_ret.2, %ret.4
  br label %out_unlock

out_unlock:                                       ; preds = %for.end127, %lor.lhs.false110.out_unlock_crit_edge, %if.then107.out_unlock_crit_edge, %for.end.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %if.then66.out_unlock_crit_edge
  %ret.5 = phi i32 [ %add, %for.end127 ], [ %ret.4, %for.end.out_unlock_crit_edge ], [ -22, %lor.lhs.false110.out_unlock_crit_edge ], [ -22, %if.then107.out_unlock_crit_edge ], [ -22, %lor.lhs.false.out_unlock_crit_edge ], [ -22, %if.then66.out_unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock.i182) #6
  br i1 %cmp.not.i, label %out_unlock.double_unlock_hb.exit205_crit_edge, label %if.then.i203

out_unlock.double_unlock_hb.exit205_crit_edge:    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %double_unlock_hb.exit205

if.then.i203:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %lock1.i) #6
  br label %double_unlock_hb.exit205

double_unlock_hb.exit205:                         ; preds = %if.then.i203, %out_unlock.double_unlock_hb.exit205_crit_edge
  call void @wake_up_q(ptr noundef nonnull %wake_q) #6
  br label %cleanup

cleanup:                                          ; preds = %double_unlock_hb.exit205, %if.then38.cleanup_crit_edge, %double_unlock_hb.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %retry.loopexit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.5, %double_unlock_hb.exit205 ], [ %call273, %entry.cleanup_crit_edge ], [ %call39, %if.then38.cleanup_crit_edge ], [ %retval.0.i212, %double_unlock_hb.exit.cleanup_crit_edge ], [ %call, %retry.loopexit.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key1) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_user_writeable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @futex_wait_queue(ptr noundef %hb, ptr noundef %q, ptr noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@futex_wait_queue, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @__futex_queue(ptr noundef %q, ptr noundef %hb) #6
  %lock.i = getelementptr inbounds %struct.futex_hash_bucket, ptr %hb, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  %tobool60.not = icmp eq ptr %timeout, null
  br i1 %tobool60.not, label %if.end62, label %if.end62.thread

if.end62:                                         ; preds = %__here
  %node_list.i = getelementptr inbounds %struct.plist_node, ptr %q, i32 0, i32 2
  %7 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %node_list.i, align 4
  %cmp.i.i.not = icmp eq ptr %8, %node_list.i
  br i1 %cmp.i.i.not, label %if.end62.__here130_crit_edge, label %if.end62.if.then77_crit_edge, !prof !34

if.end62.if.then77_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then77

if.end62.__here130_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here130

if.end62.thread:                                  ; preds = %__here
  tail call void @hrtimer_sleeper_start_expires(ptr noundef nonnull %timeout, i32 noundef 0) #6
  %node_list.i159 = getelementptr inbounds %struct.plist_node, ptr %q, i32 0, i32 2
  %9 = ptrtoint ptr %node_list.i159 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %node_list.i159, align 4
  %cmp.i.i160.not = icmp eq ptr %10, %node_list.i159
  br i1 %cmp.i.i160.not, label %if.end62.thread.__here130_crit_edge, label %lor.lhs.false, !prof !34

if.end62.thread.__here130_crit_edge:              ; preds = %if.end62.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here130

lor.lhs.false:                                    ; preds = %if.end62.thread
  %task75 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %timeout, i32 0, i32 1
  %11 = ptrtoint ptr %task75 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task75, align 8
  %tobool76.not = icmp eq ptr %12, null
  br i1 %tobool76.not, label %lor.lhs.false.__here130_crit_edge, label %lor.lhs.false.if.then77_crit_edge

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then77

lor.lhs.false.__here130_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here130

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.end62.if.then77_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %18, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  tail call void @schedule() #6
  %19 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i1.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i1.i to ptr
  %task.i2.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i2.i, align 8
  %flags.i3.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags.i3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i3.i, align 4
  %and.i.i = and i32 %24, -1073741825
  store i32 %and.i.i, ptr %flags.i3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !54
  %25 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then77.if.end.i.i.i_crit_edge

if.then77.if.end.i.i.i_crit_edge:                 ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_check_no_locks_held() #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then77.if.end.i.i.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 57) #6
  %31 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %35 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.__here130_crit_edge, label %freezing.exit.i.i.i.i, !prof !32

if.end.i.i.i.__here130_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here130

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %34) #6
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.__here130_crit_edge, !prof !34

freezing.exit.i.i.i.i.__here130_crit_edge:        ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here130

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #6
  br label %__here130

__here130:                                        ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.__here130_crit_edge, %if.end.i.i.i.__here130_crit_edge, %lor.lhs.false.__here130_crit_edge, %if.end62.thread.__here130_crit_edge, %if.end62.__here130_crit_edge
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %task_state_change134 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 212
  %38 = ptrtoint ptr %task_state_change134 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 ptrtoint (ptr blockaddress(@futex_wait_queue, %__here130) to i32), ptr %task_state_change134, align 4
  %39 = load ptr, ptr %task, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 0, ptr %39, align 128
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_sleeper_start_expires(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_wait_multiple(ptr noundef %vs, i32 noundef %count, ptr noundef %to) #0 align 64 {
entry:
  %hint = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hint) #6
  %0 = ptrtoint ptr %hint to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %hint, align 4
  %tobool.not = icmp eq ptr %to, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hrtimer_sleeper_start_expires(ptr noundef nonnull %to, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %task.i = getelementptr inbounds %struct.hrtimer_sleeper, ptr %to, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool2.not9.i = icmp eq i32 %count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp4.i = icmp sgt i32 %count, 0
  br label %while.cond

while.cond:                                       ; preds = %signal_pending.exit.while.cond_crit_edge, %if.end
  %call = call fastcc i32 @futex_wait_multiple_setup(ptr noundef %vs, i32 noundef %count, ptr noundef nonnull %hint)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end5, label %if.then2

if.then2:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then3, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %hint to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hint, align 4
  br label %cleanup

if.end5:                                          ; preds = %while.cond
  br i1 %tobool.not, label %if.end5.if.end.i_crit_edge, label %land.lhs.true.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end5
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.__here_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.__here_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  br i1 %tobool2.not9.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  br label %do.end.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %vs.addr.011.i = phi ptr [ %incdec.ptr.i, %for.inc.i.do.end.i_crit_edge ], [ %vs, %if.end.i.do.end.i_crit_edge ]
  %count.addr.010.i = phi i32 [ %dec.i, %for.inc.i.do.end.i_crit_edge ], [ %count, %if.end.i.do.end.i_crit_edge ]
  %lock_ptr.i = getelementptr inbounds %struct.futex_vector, ptr %vs.addr.011.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %lock_ptr.i, align 8
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %do.end.i.__here_crit_edge, label %for.inc.i

do.end.i.__here_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

for.inc.i:                                        ; preds = %do.end.i
  %dec.i = add i32 %count.addr.010.i, -1
  %incdec.ptr.i = getelementptr %struct.futex_vector, ptr %vs.addr.011.i, i32 1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.do.end.i_crit_edge

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %7 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i.i, align 4
  %or.i.i.i = or i32 %12, 1073741824
  store i32 %or.i.i.i, ptr %flags.i.i.i, align 4
  tail call void @schedule() #6
  %13 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i1.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i1.i.i to ptr
  %task.i2.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i2.i.i, align 8
  %flags.i3.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i3.i.i, align 4
  %and.i.i.i = and i32 %18, -1073741825
  store i32 %and.i.i.i, ptr %flags.i3.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !54
  %19 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i.i, align 8
  %flags.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i.i.i, align 4
  %and.i4.i.i.i = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %for.end.i.if.end.i.i.i.i_crit_edge

for.end.i.if.end.i.i.i.i_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_check_no_locks_held() #6
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %for.end.i.if.end.i.i.i.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 57) #6
  %25 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %29 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %if.end.i.i.i.i.__here_crit_edge, label %freezing.exit.i.i.i.i.i, !prof !32

if.end.i.i.i.i.__here_crit_edge:                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

freezing.exit.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %call4.i.i.i.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %28) #6
  br i1 %call4.i.i.i.i.i.i, label %if.end.i.i.i.i.i, label %freezing.exit.i.i.i.i.i.__here_crit_edge, !prof !34

freezing.exit.i.i.i.i.i.__here_crit_edge:         ; preds = %freezing.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

if.end.i.i.i.i.i:                                 ; preds = %freezing.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i.i.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #6
  br label %__here

__here:                                           ; preds = %if.end.i.i.i.i.i, %freezing.exit.i.i.i.i.i.__here_crit_edge, %if.end.i.i.i.i.__here_crit_edge, %do.end.i.__here_crit_edge, %land.lhs.true.i.__here_crit_edge
  %30 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 212
  %34 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 ptrtoint (ptr blockaddress(@futex_wait_multiple, %__here) to i32), ptr %task_state_change, align 4
  %35 = load ptr, ptr %task, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %35, align 128
  br i1 %cmp4.i, label %__here.for.body.i_crit_edge, label %__here.if.end63_crit_edge

__here.if.end63_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

__here.for.body.i_crit_edge:                      ; preds = %__here
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %__here.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %__here.for.body.i_crit_edge ]
  %ret.05.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ -1, %__here.for.body.i_crit_edge ]
  %q.i = getelementptr %struct.futex_vector, ptr %vs, i32 %i.06.i, i32 1
  %call.i = tail call i32 @futex_unqueue(ptr noundef %q.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i90 = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool.not.i90, i32 %i.06.i, i32 %ret.05.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %unqueue_multiple.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

unqueue_multiple.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select.i)
  %cmp61 = icmp sgt i32 %spec.select.i, -1
  br i1 %cmp61, label %unqueue_multiple.exit.cleanup_crit_edge, label %unqueue_multiple.exit.if.end63_crit_edge

unqueue_multiple.exit.if.end63_crit_edge:         ; preds = %unqueue_multiple.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

unqueue_multiple.exit.cleanup_crit_edge:          ; preds = %unqueue_multiple.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %unqueue_multiple.exit.if.end63_crit_edge, %__here.if.end63_crit_edge
  br i1 %tobool.not, label %if.end63.if.else_crit_edge, label %land.lhs.true

if.end63.if.else_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end63
  %37 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task.i, align 8
  %tobool66.not = icmp eq ptr %38, null
  br i1 %tobool66.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end63.if.else_crit_edge
  %39 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stack.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i92 = icmp eq i32 %45, 0
  br i1 %tobool.not.i92, label %signal_pending.exit, label %if.else.cleanup_crit_edge, !prof !32

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

signal_pending.exit:                              ; preds = %if.else
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %42, align 4
  %and1.i.i.i.i.i = and i32 %47, 1
  %tobool71.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool71.not, label %signal_pending.exit.while.cond_crit_edge, label %signal_pending.exit.cleanup_crit_edge

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

signal_pending.exit.while.cond_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

cleanup:                                          ; preds = %signal_pending.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %unqueue_multiple.exit.cleanup_crit_edge, %if.then3, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %call, %if.then2.cleanup_crit_edge ], [ -512, %if.else.cleanup_crit_edge ], [ -512, %signal_pending.exit.cleanup_crit_edge ], [ -110, %land.lhs.true.cleanup_crit_edge ], [ %spec.select.i, %unqueue_multiple.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hint) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @futex_wait_multiple_setup(ptr noundef %vs, i32 noundef %count, ptr nocapture noundef writeonly %woken) #0 align 64 {
entry:
  %uval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval) #6
  %0 = ptrtoint ptr %uval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %uval, align 4, !annotation !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp272 = icmp sgt i32 %count, 0
  br label %retry1

retry1:                                           ; preds = %if.then192.retry1_crit_edge, %entry
  %retry.0.off0 = phi i1 [ true, %entry ], [ false, %if.then192.retry1_crit_edge ]
  br i1 %cmp272, label %retry1.for.body_crit_edge, label %retry1.__here_crit_edge

retry1.__here_crit_edge:                          ; preds = %retry1
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

retry1.for.body_crit_edge:                        ; preds = %retry1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %retry1.for.body_crit_edge
  %i.0273 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %retry1.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.futex_vector, ptr %vs, i32 %i.0273
  %flags = getelementptr inbounds %struct.futex_waitv, ptr %arrayidx, i32 0, i32 2
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %brmerge = or i1 %retry.0.off0, %tobool.not
  br i1 %brmerge, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %uaddr = getelementptr inbounds %struct.futex_waitv, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %uaddr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %uaddr, align 8
  %conv7 = trunc i64 %4 to i32
  %5 = inttoptr i32 %conv7 to ptr
  %key = getelementptr %struct.futex_vector, ptr %vs, i32 %i.0273, i32 1, i32 3
  %call = call i32 @get_futex_key(ptr noundef %5, i1 noundef zeroext %tobool.not, ptr noundef %key, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %if.end.for.inc_crit_edge, label %if.end.cleanup210_crit_edge, !prof !32

if.end.cleanup210_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup210

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0273, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.__here_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.__here_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %for.inc.__here_crit_edge, %retry1.__here_crit_edge
  %6 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i255 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i255 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 212
  %10 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 ptrtoint (ptr blockaddress(@futex_wait_multiple_setup, %__here) to i32), ptr %task_state_change, align 4
  %11 = load ptr, ptr %task, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %11, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !56
  br i1 %cmp272, label %__here.for.body93_crit_edge, label %__here.cleanup210_crit_edge

__here.cleanup210_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup210

__here.for.body93_crit_edge:                      ; preds = %__here
  br label %for.body93

for.body93:                                       ; preds = %for.inc207.for.body93_crit_edge, %__here.for.body93_crit_edge
  %i.1276 = phi i32 [ %inc208, %for.inc207.for.body93_crit_edge ], [ 0, %__here.for.body93_crit_edge ]
  %arrayidx95 = getelementptr %struct.futex_vector, ptr %vs, i32 %i.1276
  %uaddr97 = getelementptr inbounds %struct.futex_waitv, ptr %arrayidx95, i32 0, i32 1
  %13 = ptrtoint ptr %uaddr97 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %uaddr97, align 8
  %conv98 = trunc i64 %14 to i32
  %15 = inttoptr i32 %conv98 to ptr
  %q101 = getelementptr %struct.futex_vector, ptr %vs, i32 %i.1276, i32 1
  %16 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx95, align 8
  %conv105 = trunc i64 %17 to i32
  %call106 = call ptr @futex_q_lock(ptr noundef %q101) #6
  %call107 = call i32 @futex_get_value_locked(ptr noundef nonnull %uval, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %land.lhs.true109, label %for.body93.if.end113_crit_edge

for.body93.if.end113_crit_edge:                   ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

land.lhs.true109:                                 ; preds = %for.body93
  %18 = ptrtoint ptr %uval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %uval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv105)
  %cmp110 = icmp eq i32 %19, %conv105
  br i1 %cmp110, label %if.then112, label %land.lhs.true109.if.end113_crit_edge

land.lhs.true109.if.end113_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.then112:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #8
  call void @__futex_queue(ptr noundef %q101, ptr noundef %call106) #6
  %lock.i = getelementptr inbounds %struct.futex_hash_bucket, ptr %call106, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  br label %for.inc207

if.end113:                                        ; preds = %land.lhs.true109.if.end113_crit_edge, %for.body93.if.end113_crit_edge
  call void @futex_q_unlock(ptr noundef %call106) #6
  br label %__here165

__here165:                                        ; preds = %if.end113
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change169 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change169 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@futex_wait_multiple_setup, %__here165) to i32), ptr %task_state_change169, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %23, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1276)
  %cmp4.i.not = icmp eq i32 %i.1276, 0
  br i1 %cmp4.i.not, label %unqueue_multiple.exit.thread, label %__here165.for.body.i_crit_edge

__here165.for.body.i_crit_edge:                   ; preds = %__here165
  br label %for.body.i

unqueue_multiple.exit.thread:                     ; preds = %__here165
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %woken to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %woken, align 4
  br label %if.end190

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %__here165.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %__here165.for.body.i_crit_edge ]
  %ret.05.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ -1, %__here165.for.body.i_crit_edge ]
  %q.i = getelementptr %struct.futex_vector, ptr %vs, i32 %i.06.i, i32 1
  %call.i = call i32 @futex_unqueue(ptr noundef %q.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %i.06.i, i32 %ret.05.i
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.1276
  br i1 %exitcond.not.i, label %unqueue_multiple.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

unqueue_multiple.exit:                            ; preds = %for.body.i
  %26 = ptrtoint ptr %woken to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select.i, ptr %woken, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select.i)
  %cmp187 = icmp sgt i32 %spec.select.i, -1
  br i1 %cmp187, label %unqueue_multiple.exit.cleanup210_crit_edge, label %unqueue_multiple.exit.if.end190_crit_edge

unqueue_multiple.exit.if.end190_crit_edge:        ; preds = %unqueue_multiple.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end190

unqueue_multiple.exit.cleanup210_crit_edge:       ; preds = %unqueue_multiple.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup210

if.end190:                                        ; preds = %unqueue_multiple.exit.if.end190_crit_edge, %unqueue_multiple.exit.thread
  br i1 %tobool108.not, label %if.end200, label %if.then192

if.then192:                                       ; preds = %if.end190
  %conv98.le = trunc i64 %14 to i32
  %27 = inttoptr i32 %conv98.le to ptr
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 473) #6
  %28 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !40
  %and.i = and i32 %30, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %31 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %27, i32 -1226833921) #6, !srcloc !57
  %asmresult = extractvalue { i32, i32 } %31, 0
  %asmresult195 = extractvalue { i32, i32 } %31, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %32 = ptrtoint ptr %uval to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %asmresult195, ptr %uval, align 4
  %tobool197.not = icmp eq i32 %asmresult, 0
  br i1 %tobool197.not, label %if.then192.retry1_crit_edge, label %if.then192.cleanup210_crit_edge

if.then192.cleanup210_crit_edge:                  ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup210

if.then192.retry1_crit_edge:                      ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry1

if.end200:                                        ; preds = %if.end190
  %33 = ptrtoint ptr %uval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %uval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv105)
  %cmp201.not = icmp eq i32 %34, %conv105
  br i1 %cmp201.not, label %if.end200.for.inc207_crit_edge, label %if.end200.cleanup210_crit_edge

if.end200.cleanup210_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup210

if.end200.for.inc207_crit_edge:                   ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc207

for.inc207:                                       ; preds = %if.end200.for.inc207_crit_edge, %if.then112
  %inc208 = add nuw nsw i32 %i.1276, 1
  %exitcond286.not = icmp eq i32 %inc208, %count
  br i1 %exitcond286.not, label %for.inc207.cleanup210_crit_edge, label %for.inc207.for.body93_crit_edge

for.inc207.for.body93_crit_edge:                  ; preds = %for.inc207
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body93

for.inc207.cleanup210_crit_edge:                  ; preds = %for.inc207
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup210

cleanup210:                                       ; preds = %for.inc207.cleanup210_crit_edge, %if.end200.cleanup210_crit_edge, %if.then192.cleanup210_crit_edge, %unqueue_multiple.exit.cleanup210_crit_edge, %__here.cleanup210_crit_edge, %if.end.cleanup210_crit_edge
  %retval.3 = phi i32 [ 0, %for.inc207.cleanup210_crit_edge ], [ 1, %unqueue_multiple.exit.cleanup210_crit_edge ], [ -11, %if.end200.cleanup210_crit_edge ], [ %call, %if.end.cleanup210_crit_edge ], [ 0, %__here.cleanup210_crit_edge ], [ -14, %if.then192.cleanup210_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval) #6
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_wait_setup(ptr noundef %uaddr, i32 noundef %val, i32 noundef %flags, ptr noundef %q, ptr nocapture noundef %hb) local_unnamed_addr #0 align 64 {
entry:
  %uval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval) #6
  %0 = ptrtoint ptr %uval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %uval, align 4, !annotation !55
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %key = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3
  %call37 = call i32 @get_futex_key(ptr noundef %uaddr, i1 noundef zeroext %tobool, ptr noundef %key, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp.not38 = icmp eq i32 %call37, 0
  br i1 %cmp.not38, label %entry.retry_private_crit_edge, label %entry.cleanup_crit_edge, !prof !32

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.retry_private_crit_edge:                    ; preds = %entry
  br label %retry_private

retry.loopexit:                                   ; preds = %if.end12
  %call = call i32 @get_futex_key(ptr noundef %uaddr, i1 noundef zeroext true, ptr noundef %key, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %retry.loopexit.retry_private.backedge_crit_edge, label %retry.loopexit.cleanup_crit_edge, !prof !32

retry.loopexit.cleanup_crit_edge:                 ; preds = %retry.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

retry.loopexit.retry_private.backedge_crit_edge:  ; preds = %retry.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry_private.backedge

retry_private:                                    ; preds = %retry_private.backedge, %entry.retry_private_crit_edge
  %call3 = call ptr @futex_q_lock(ptr noundef %q) #6
  %1 = ptrtoint ptr %hb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %hb, align 4
  %call4 = call i32 @futex_get_value_locked(ptr noundef nonnull %uval, ptr noundef %uaddr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end17, label %if.then6

if.then6:                                         ; preds = %retry_private
  %2 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hb, align 4
  call void @futex_q_unlock(ptr noundef %3) #6
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 614) #6
  %4 = call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !40
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %7 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %uaddr, i32 -1226833921) #6, !srcloc !58
  %asmresult = extractvalue { i32, i32 } %7, 0
  %asmresult8 = extractvalue { i32, i32 } %7, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #6, !srcloc !41
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  %8 = ptrtoint ptr %uval to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %asmresult8, ptr %uval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool10.not = icmp eq i32 %asmresult, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup.loopexit

if.end12:                                         ; preds = %if.then6
  br i1 %tobool, label %retry.loopexit, label %if.end12.retry_private.backedge_crit_edge

if.end12.retry_private.backedge_crit_edge:        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry_private.backedge

retry_private.backedge:                           ; preds = %if.end12.retry_private.backedge_crit_edge, %retry.loopexit.retry_private.backedge_crit_edge
  br label %retry_private

if.end17:                                         ; preds = %retry_private
  %9 = ptrtoint ptr %uval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %uval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp18.not = icmp eq i32 %10, %val
  br i1 %cmp18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hb, align 4
  call void @futex_q_unlock(ptr noundef %12) #6
  br label %cleanup

cleanup.loopexit:                                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %asmresult.le = extractvalue { i32, i32 } %7, 0
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then19, %if.end17.cleanup_crit_edge, %retry.loopexit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then19 ], [ 0, %if.end17.cleanup_crit_edge ], [ %call37, %entry.cleanup_crit_edge ], [ %asmresult.le, %cleanup.loopexit ], [ %call, %retry.loopexit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_q_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_get_value_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_q_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_wait(ptr noundef %uaddr, i32 noundef %flags, i32 noundef %val, ptr noundef %abs_time, i32 noundef %bitset) local_unnamed_addr #0 align 64 {
entry:
  %timeout = alloca %struct.hrtimer_sleeper, align 8
  %hb = alloca ptr, align 4
  %q = alloca %struct.futex_q, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %timeout) #6
  %0 = call ptr @memset(ptr %timeout, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hb) #6
  %1 = ptrtoint ptr %hb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %hb, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %q) #6
  %2 = call ptr @memcpy(ptr %q, ptr @futex_q_init, i32 72)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitset)
  %tobool.not = icmp eq i32 %bitset, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bitset1 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 7
  %3 = ptrtoint ptr %bitset1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bitset, ptr %bitset1, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !22) #6
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 189
  %8 = ptrtoint ptr %timer_slack_ns to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %timer_slack_ns, align 8
  %call2 = call ptr @futex_setup_timer(ptr noundef %abs_time, ptr noundef nonnull %timeout, i32 noundef %flags, i64 noundef %9) #6
  %tobool11.not = icmp eq ptr %call2, null
  %task12 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %call2, i32 0, i32 1
  br label %retry

retry:                                            ; preds = %signal_pending.exit.retry_crit_edge, %if.end
  %call3 = call i32 @futex_wait_setup(ptr noundef %uaddr, i32 noundef %val, i32 noundef %flags, ptr noundef nonnull %q, ptr noundef nonnull %hb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %retry.out_crit_edge

retry.out_crit_edge:                              ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %retry
  %10 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hb, align 4
  call void @futex_wait_queue(ptr noundef %11, ptr noundef nonnull %q, ptr noundef %call2)
  %call7 = call i32 @futex_unqueue(ptr noundef nonnull %q) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.out_crit_edge, label %if.end10

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %if.end6
  br i1 %tobool11.not, label %if.end10.if.end15_crit_edge, label %land.lhs.true

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end10
  %12 = ptrtoint ptr %task12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task12, align 8
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %land.lhs.true.if.then33_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true.if.then33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end10.if.end15_crit_edge
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stack.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %20 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end15.if.end21_crit_edge, !prof !32

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

signal_pending.exit:                              ; preds = %if.end15
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %17, align 4
  %and1.i.i.i.i.i = and i32 %22, 1
  %tobool19.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool19.not, label %signal_pending.exit.retry_crit_edge, label %signal_pending.exit.if.end21_crit_edge

signal_pending.exit.if.end21_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

signal_pending.exit.retry_crit_edge:              ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

if.end21:                                         ; preds = %signal_pending.exit.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  %tobool22.not = icmp eq ptr %abs_time, null
  br i1 %tobool22.not, label %if.end21.out_crit_edge, label %if.end24

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %23 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %uaddr, ptr %23, align 8
  %val28 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %val28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %val, ptr %val28, align 4
  %26 = ptrtoint ptr %abs_time to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %abs_time, align 8
  %time = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 2, i32 0, i32 4
  %28 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %time, align 8
  %bitset29 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %bitset29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %bitset, ptr %bitset29, align 4
  %or = or i32 %flags, 4
  %flags30 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 2, i32 0, i32 2
  %30 = ptrtoint ptr %flags30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %flags30, align 8
  %fn1.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 67, i32 1
  %31 = ptrtoint ptr %fn1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @futex_wait_restart, ptr %fn1.i, align 4
  br label %out

out:                                              ; preds = %if.end24, %if.end21.out_crit_edge, %if.end6.out_crit_edge, %retry.out_crit_edge
  %ret.0 = phi i32 [ -516, %if.end24 ], [ -512, %if.end21.out_crit_edge ], [ 0, %if.end6.out_crit_edge ], [ %call3, %retry.out_crit_edge ]
  br i1 %tobool11.not, label %out.cleanup_crit_edge, label %out.if.then33_crit_edge

out.if.then33_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %out.if.then33_crit_edge, %land.lhs.true.if.then33_crit_edge
  %ret.065 = phi i32 [ %ret.0, %out.if.then33_crit_edge ], [ -110, %land.lhs.true.if.then33_crit_edge ]
  %call34 = call i32 @hrtimer_cancel(ptr noundef nonnull %call2) #6
  call void @destroy_hrtimer_on_stack(ptr noundef nonnull %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.065, %if.then33 ], [ %ret.0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %q) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hb) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %timeout) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_unqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @futex_wait_restart(ptr nocapture noundef %restart) #0 align 64 {
entry:
  %t = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %t) #6
  %3 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %t, align 8, !annotation !55
  %flags = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %time = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 2, i32 0, i32 4
  %6 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %time, align 8
  %8 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tp.0 = phi ptr [ %t, %if.then ], [ null, %entry.if.end_crit_edge ]
  %fn = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 1
  %9 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @do_no_restart_syscall, ptr %fn, align 4
  %val = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %bitset = getelementptr inbounds %struct.restart_block, ptr %restart, i32 0, i32 2, i32 0, i32 3
  %12 = ptrtoint ptr %bitset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bitset, align 4
  %call = call i32 @futex_wait(ptr noundef %2, i32 noundef %5, i32 noundef %11, ptr noundef %tp.0, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %t) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_hrtimer_on_stack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__futex_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_no_restart_syscall(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !16, !18, !20}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/futex/waitwake.c", i32 119, i32 6}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../kernel/futex/waitwake.c", i32 337, i32 2}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/futex/waitwake.c", i32 357, i32 2}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../kernel/futex/waitwake.c", i32 544, i32 3}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../kernel/futex/waitwake.c", i32 203, i32 4}
!11 = !{ptr @futex_atomic_op_inuser._rs, !10, !"_rs", i1 false, i1 false}
!12 = !{ptr @__func__.futex_atomic_op_inuser, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @futex_atomic_op_inuser._entry, !10, !"_entry", i1 false, i1 false}
!15 = !{ptr @futex_atomic_op_inuser._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../kernel/futex/waitwake.c", i32 433, i32 2}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../kernel/futex/waitwake.c", i32 454, i32 3}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2148443400, i64 2148443432, i64 2148443461, i64 2148443495, i64 2148443526, i64 2148443549}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2151979257}
!36 = !{i64 2151976042}
!37 = !{i64 2150523369}
!38 = !{i64 2151969138, i64 2151969163}
!39 = !{i64 2151970404}
!40 = !{i64 3016107}
!41 = !{i64 3016304}
!42 = !{i64 2150501537}
!43 = !{i64 2151969932, i64 2151969961, i64 2151969982, i64 2151970014, i64 2151970036, i64 2151970055, i64 2151970498, i64 2151970514, i64 2151970553, i64 2151970574, i64 2151970605, i64 2151970629, i64 2151970670, i64 2151970691, i64 2151970723, i64 2151970740}
!44 = !{i64 2151971403}
!45 = !{i64 2151970927, i64 2151970956, i64 2151970977, i64 2151971009, i64 2151971031, i64 2151971050, i64 2151971497, i64 2151971513, i64 2151971552, i64 2151971573, i64 2151971604, i64 2151971628, i64 2151971669, i64 2151971690, i64 2151971722, i64 2151971739}
!46 = !{i64 2151972402}
!47 = !{i64 2151971926, i64 2151971955, i64 2151971976, i64 2151972008, i64 2151972030, i64 2151972049, i64 2151972496, i64 2151972512, i64 2151972551, i64 2151972572, i64 2151972603, i64 2151972627, i64 2151972668, i64 2151972689, i64 2151972721, i64 2151972738}
!48 = !{i64 2151973402}
!49 = !{i64 2151972925, i64 2151972954, i64 2151972975, i64 2151973007, i64 2151973029, i64 2151973048, i64 2151973496, i64 2151973512, i64 2151973551, i64 2151973572, i64 2151973603, i64 2151973627, i64 2151973668, i64 2151973689, i64 2151973721, i64 2151973738}
!50 = !{i64 2151974401}
!51 = !{i64 2151973925, i64 2151973954, i64 2151973975, i64 2151974007, i64 2151974029, i64 2151974048, i64 2151974495, i64 2151974511, i64 2151974550, i64 2151974571, i64 2151974602, i64 2151974626, i64 2151974667, i64 2151974688, i64 2151974720, i64 2151974737}
!52 = !{i64 2150523576}
!53 = !{i64 2152009261}
!54 = !{i64 2151937296}
!55 = !{!"auto-init"}
!56 = !{i64 2152018705}
!57 = !{i64 2152031694, i64 2152031974, i64 2152032308, i64 2152032642}
!58 = !{i64 2152051249, i64 2152051529, i64 2152051863, i64 2152052197}
