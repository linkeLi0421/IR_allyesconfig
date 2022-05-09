; ModuleID = '/llk/IR_all_yes/kernel/futex/requeue.c_pt.bc'
source_filename = "../kernel/futex/requeue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.36 = type { i64, i32, i32 }
%struct.atomic_t = type { i32 }
%union.futex_key = type { %struct.anon.33 }
%struct.anon.33 = type { i64, i32, i32 }
%struct.wake_q_head = type { ptr, ptr }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [72 x i8] }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.futex_pi_state = type { %struct.list_head, %struct.rt_mutex_base, ptr, %struct.refcount_struct, %union.futex_key }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rt_mutex_waiter = type { %struct.rb_node, %struct.rb_node, ptr, ptr, i32, i32, i64, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.39, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
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
%struct.wake_q_node = type { ptr }
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

@futex_q_init = dso_local constant { { %struct.plist_node, ptr, ptr, { %struct.anon.36 }, ptr, ptr, ptr, i32, %struct.atomic_t }, [56 x i8] } { { %struct.plist_node, ptr, ptr, { %struct.anon.36 }, ptr, ptr, ptr, i32, %struct.atomic_t } { %struct.plist_node zeroinitializer, ptr null, ptr null, { %struct.anon.36 } zeroinitializer, ptr null, ptr null, ptr null, i32 -1, %struct.atomic_t zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kernel/futex/requeue.c\00", [41 x i8] zeroinitializer }, align 32
@futex_requeue_pi_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@futex_requeue_pi_complete.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@handle_early_requeue_pi_wakeup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4294967280, i64 4294967282, i64 4294967285]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"futex_q_init\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 59, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [26 x i8] c"../kernel/futex/requeue.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 458, i32 10 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @futex_q_init, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @futex_q_init to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_requeue(ptr noundef %uaddr1, i32 noundef %flags, ptr noundef %uaddr2, i32 noundef %nr_wake, i32 noundef %nr_requeue, ptr noundef readonly %cmpval, i32 noundef %requeue_pi) local_unnamed_addr #0 align 64 {
entry:
  %old.i = alloca i32, align 4
  %old.i.i = alloca i32, align 4
  %curval.i = alloca i32, align 4
  %key1 = alloca %union.futex_key, align 8
  %key2 = alloca %union.futex_key, align 8
  %pi_state = alloca ptr, align 4
  %wake_q = alloca %struct.wake_q_head, align 4
  %curval = alloca i32, align 4
  %exiting = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key1) #7
  %0 = call ptr @memset(ptr %key1, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key2) #7
  %1 = call ptr @memset(ptr %key2, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pi_state) #7
  %2 = ptrtoint ptr %pi_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pi_state, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wake_q) #7
  %3 = getelementptr inbounds %struct.wake_q_head, ptr %wake_q, i32 0, i32 1
  %4 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 1 to ptr), ptr %wake_q, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %wake_q, ptr %3, align 4
  %6 = or i32 %nr_requeue, %nr_wake
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not = icmp sgt i32 %6, -1
  br i1 %.not, label %if.end, label %entry.cleanup157_crit_edge

entry.cleanup157_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %requeue_pi)
  %tobool.not = icmp eq i32 %requeue_pi, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %cmp4 = icmp ne ptr %uaddr1, %uaddr2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_wake)
  %cmp7.not = icmp eq i32 %nr_wake, 1
  %or.cond252 = and i1 %cmp4, %cmp7.not
  br i1 %or.cond252, label %if.end9, label %if.then3.cleanup157_crit_edge

if.then3.cleanup157_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end9:                                          ; preds = %if.then3
  %call = call i32 @refill_pi_state_cache() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.end9.cleanup157_crit_edge

if.end9.cleanup157_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.end9.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14 = icmp ne i32 %and, 0
  %call15400 = call i32 @get_futex_key(ptr noundef %uaddr1, i1 noundef zeroext %tobool14, ptr noundef nonnull %key1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15400)
  %cmp16.not401 = icmp eq i32 %call15400, 0
  br i1 %cmp16.not401, label %if.end20.lr.ph, label %if.end13.cleanup157_crit_edge, !prof !20

if.end13.cleanup157_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end20.lr.ph:                                   ; preds = %if.end13
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %word.i = getelementptr inbounds %struct.anon.36, ptr %key1, i32 0, i32 1
  %word3.i = getelementptr inbounds %struct.anon.36, ptr %key2, i32 0, i32 1
  %offset.i = getelementptr inbounds %struct.anon.36, ptr %key1, i32 0, i32 2
  %offset7.i = getelementptr inbounds %struct.anon.36, ptr %key2, i32 0, i32 2
  %cmp41.not = icmp eq ptr %cmpval, null
  br label %if.end20

if.end20:                                         ; preds = %retry.backedge.if.end20_crit_edge, %if.end20.lr.ph
  %call24 = call i32 @get_futex_key(ptr noundef %uaddr2, i1 noundef zeroext %tobool14, ptr noundef nonnull %key2, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end33, label %if.end20.cleanup157_crit_edge, !prof !20

if.end20.cleanup157_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end33:                                         ; preds = %if.end20
  br i1 %tobool.not, label %if.end33.if.end38_crit_edge, label %land.lhs.true

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end33
  %7 = ptrtoint ptr %word.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %word.i, align 8
  %9 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %word3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.i = icmp eq i32 %8, %10
  br i1 %cmp.i, label %land.lhs.true4.i, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true4.i:                                 ; preds = %land.lhs.true
  %11 = ptrtoint ptr %key1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %key1, align 8
  %13 = ptrtoint ptr %key2 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %key2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp6.i = icmp eq i64 %12, %14
  br i1 %cmp6.i, label %futex_match.exit, label %land.lhs.true4.i.if.end38_crit_edge

land.lhs.true4.i.if.end38_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

futex_match.exit:                                 ; preds = %land.lhs.true4.i
  %15 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i, align 4
  %17 = ptrtoint ptr %offset7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp8.i.not = icmp eq i32 %16, %18
  br i1 %cmp8.i.not, label %futex_match.exit.cleanup157_crit_edge, label %futex_match.exit.if.end38_crit_edge

futex_match.exit.if.end38_crit_edge:              ; preds = %futex_match.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

futex_match.exit.cleanup157_crit_edge:            ; preds = %futex_match.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end38:                                         ; preds = %futex_match.exit.if.end38_crit_edge, %land.lhs.true4.i.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.end33.if.end38_crit_edge
  %call39 = call ptr @futex_hash(ptr noundef nonnull %key1) #7
  %call40 = call ptr @futex_hash(ptr noundef nonnull %key2) #7
  %cmp.i253 = icmp ugt ptr %call39, %call40
  %spec.select.i = select i1 %cmp.i253, ptr %call39, ptr %call40
  %spec.select13.i = select i1 %cmp.i253, ptr %call40, ptr %call39
  %lock.i = getelementptr inbounds %struct.futex_hash_bucket, ptr %spec.select13.i, i32 0, i32 1
  %cmp1.not.i = icmp eq ptr %spec.select13.i, %spec.select.i
  %lock4.i = getelementptr inbounds %struct.futex_hash_bucket, ptr %spec.select.i, i32 0, i32 1
  %lock.i254 = getelementptr inbounds %struct.futex_hash_bucket, ptr %call39, i32 0, i32 1
  %cmp.not.i = icmp eq ptr %call39, %call40
  %lock1.i = getelementptr inbounds %struct.futex_hash_bucket, ptr %call40, i32 0, i32 1
  br label %retry_private

retry_private:                                    ; preds = %if.end63.retry_private_crit_edge, %if.end38
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %call40, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %call40, i32 1, i32 3, i32 1) #7
  %19 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call40, ptr %call40, i32 1, ptr elementtype(i32) %call40) #7, !srcloc !21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !22
  call void @_raw_spin_lock(ptr noundef %lock.i) #7
  br i1 %cmp1.not.i, label %retry_private.double_lock_hb.exit_crit_edge, label %do.body3.i

retry_private.double_lock_hb.exit_crit_edge:      ; preds = %retry_private
  call void @__sanitizer_cov_trace_pc() #9
  br label %double_lock_hb.exit

do.body3.i:                                       ; preds = %retry_private
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_lock_nested(ptr noundef %lock4.i, i32 noundef 1) #7
  br label %double_lock_hb.exit

double_lock_hb.exit:                              ; preds = %do.body3.i, %retry_private.double_lock_hb.exit_crit_edge
  br i1 %cmp41.not, label %double_lock_hb.exit.if.end72_crit_edge, label %if.then48, !prof !23

double_lock_hb.exit.if.end72_crit_edge:           ; preds = %double_lock_hb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then48:                                        ; preds = %double_lock_hb.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curval) #7
  %20 = ptrtoint ptr %curval to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %curval, align 4, !annotation !24
  %call49 = call i32 @futex_get_value_locked(ptr noundef nonnull %curval, ptr noundef %uaddr1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end68, label %if.then57, !prof !20

if.then57:                                        ; preds = %if.then48
  call void @_raw_spin_unlock(ptr noundef %lock.i254) #7
  br i1 %cmp.not.i, label %if.then57.double_unlock_hb.exit_crit_edge, label %if.then.i

if.then57.double_unlock_hb.exit_crit_edge:        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %double_unlock_hb.exit

if.then.i:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %lock1.i) #7
  br label %double_unlock_hb.exit

double_unlock_hb.exit:                            ; preds = %if.then.i, %if.then57.double_unlock_hb.exit_crit_edge
  %call.i.i.i255 = call zeroext i1 @__kasan_check_write(ptr noundef %call40, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %call40, i32 1, i32 3, i32 1) #7
  %21 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call40, ptr %call40, i32 1, ptr elementtype(i32) %call40) #7, !srcloc !25
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 458) #7
  %22 = call i32 @llvm.read_register.i32(metadata !10) #7
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !26
  %and.i = and i32 %24, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  %25 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %uaddr1, i32 -1226833921) #7, !srcloc !29
  %asmresult = extractvalue { i32, i32 } %25, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #7, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool61.not = icmp eq i32 %asmresult, 0
  br i1 %tobool61.not, label %if.end63, label %cleanup.thread

cleanup.thread:                                   ; preds = %double_unlock_hb.exit
  call void @__sanitizer_cov_trace_pc() #9
  %asmresult.le = extractvalue { i32, i32 } %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval) #7
  br label %cleanup157

if.end63:                                         ; preds = %double_unlock_hb.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval) #7
  br i1 %tobool14, label %if.end63.retry.backedge_crit_edge, label %if.end63.retry_private_crit_edge

if.end63.retry_private_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry_private

if.end63.retry.backedge_crit_edge:                ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.backedge

if.end68:                                         ; preds = %if.then48
  %26 = ptrtoint ptr %curval to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %curval, align 4
  %28 = ptrtoint ptr %cmpval to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmpval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp69.not = icmp eq i32 %27, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval) #7
  br i1 %cmp69.not, label %if.end68.if.end72_crit_edge, label %if.end68.out_unlock_crit_edge

if.end68.out_unlock_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end72:                                         ; preds = %if.end68.if.end72_crit_edge, %double_lock_hb.exit.if.end72_crit_edge
  br i1 %tobool.not, label %if.end72.if.end87_crit_edge, label %if.then74

if.end72.if.end87_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then74:                                        ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exiting) #7
  %30 = ptrtoint ptr %exiting to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %exiting, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curval.i) #7
  %31 = ptrtoint ptr %curval.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %curval.i, align 4, !annotation !24
  %call.i = call i32 @futex_get_value_locked(ptr noundef nonnull %curval.i, ptr noundef %uaddr2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then74.futex_proxy_trylock_atomic.exit.thread323_crit_edge

if.then74.futex_proxy_trylock_atomic.exit.thread323_crit_edge: ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_proxy_trylock_atomic.exit.thread323

if.end.i:                                         ; preds = %if.then74
  %call1.i = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #7
  br i1 %call1.i, label %if.end.i.futex_proxy_trylock_atomic.exit.thread323_crit_edge, label %if.end5.i, !prof !23

if.end.i.futex_proxy_trylock_atomic.exit.thread323_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_proxy_trylock_atomic.exit.thread323

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call ptr @futex_top_waiter(ptr noundef %call39, ptr noundef nonnull %key1) #7
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %futex_proxy_trylock_atomic.exit.thread325, label %if.end9.i

futex_proxy_trylock_atomic.exit.thread325:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #7
  br label %cleanup84.thread342

if.end9.i:                                        ; preds = %if.end5.i
  %rt_waiter.i = getelementptr inbounds %struct.futex_q, ptr %call6.i, i32 0, i32 5
  %32 = ptrtoint ptr %rt_waiter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rt_waiter.i, align 4
  %tobool10.not.i = icmp eq ptr %33, null
  br i1 %tobool10.not.i, label %if.end9.i.futex_proxy_trylock_atomic.exit.thread_crit_edge, label %lor.lhs.false.i

if.end9.i.futex_proxy_trylock_atomic.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_proxy_trylock_atomic.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %pi_state.i = getelementptr inbounds %struct.futex_q, ptr %call6.i, i32 0, i32 4
  %34 = ptrtoint ptr %pi_state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pi_state.i, align 8
  %tobool11.not.i = icmp eq ptr %35, null
  br i1 %tobool11.not.i, label %if.end13.i, label %lor.lhs.false.i.futex_proxy_trylock_atomic.exit.thread_crit_edge

lor.lhs.false.i.futex_proxy_trylock_atomic.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_proxy_trylock_atomic.exit.thread

if.end13.i:                                       ; preds = %lor.lhs.false.i
  %requeue_pi_key.i = getelementptr inbounds %struct.futex_q, ptr %call6.i, i32 0, i32 6
  %36 = ptrtoint ptr %requeue_pi_key.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %requeue_pi_key.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end13.i.futex_proxy_trylock_atomic.exit.thread_crit_edge, label %land.lhs.true2.i.i

if.end13.i.futex_proxy_trylock_atomic.exit.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_proxy_trylock_atomic.exit.thread

land.lhs.true2.i.i:                               ; preds = %if.end13.i
  %word.i.i = getelementptr inbounds %struct.anon.36, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %word.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %word.i.i, align 8
  %40 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %word3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.i.i = icmp eq i32 %39, %41
  br i1 %cmp.i.i, label %land.lhs.true4.i.i, label %land.lhs.true2.i.i.futex_proxy_trylock_atomic.exit.thread_crit_edge

land.lhs.true2.i.i.futex_proxy_trylock_atomic.exit.thread_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_proxy_trylock_atomic.exit.thread

land.lhs.true4.i.i:                               ; preds = %land.lhs.true2.i.i
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %37, align 8
  %44 = ptrtoint ptr %key2 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %key2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %45)
  %cmp6.i.i = icmp eq i64 %43, %45
  br i1 %cmp6.i.i, label %futex_match.exit.i, label %land.lhs.true4.i.i.futex_proxy_trylock_atomic.exit.thread_crit_edge

land.lhs.true4.i.i.futex_proxy_trylock_atomic.exit.thread_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_proxy_trylock_atomic.exit.thread

futex_match.exit.i:                               ; preds = %land.lhs.true4.i.i
  %offset.i.i = getelementptr inbounds %struct.anon.36, ptr %37, i32 0, i32 2
  %46 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offset.i.i, align 4
  %48 = ptrtoint ptr %offset7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp8.i.not.i = icmp eq i32 %47, %49
  br i1 %cmp8.i.not.i, label %if.end17.i, label %futex_match.exit.i.futex_proxy_trylock_atomic.exit.thread_crit_edge

futex_match.exit.i.futex_proxy_trylock_atomic.exit.thread_crit_edge: ; preds = %futex_match.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_proxy_trylock_atomic.exit.thread

if.end17.i:                                       ; preds = %futex_match.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i) #7
  %requeue_state.i.i = getelementptr inbounds %struct.futex_q, ptr %call6.i, i32 0, i32 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %requeue_state.i.i, i32 noundef 4) #7
  %50 = ptrtoint ptr %requeue_state.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %requeue_state.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i.i_crit_edge, %if.end17.i
  %52 = phi i32 [ %51, %if.end17.i ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i.i_crit_edge ]
  %53 = ptrtoint ptr %old.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %old.i.i, align 4
  %54 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %52, label %futex_requeue_pi_prepare.exit.thread46.i [
    i32 1, label %futex_proxy_trylock_atomic.exit.thread329
    i32 0, label %if.end3.i.i
  ]

futex_proxy_trylock_atomic.exit.thread329:        ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #7
  br label %sw.bb81

futex_requeue_pi_prepare.exit.thread46.i:         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %pi_state.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %pi_state.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i) #7
  br label %if.end20.i

if.end3.i.i:                                      ; preds = %do.body.i.i
  %call.i.i10.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %requeue_state.i.i, i32 noundef 4) #7
  %call.i3.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i, i32 noundef 4) #7
  %56 = ptrtoint ptr %old.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %old.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @llvm.prefetch.p0(ptr %requeue_state.i.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.end3.i.i
  %58 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %requeue_state.i.i, ptr %requeue_state.i.i, i32 %57, i32 2, ptr elementtype(i32) %requeue_state.i.i) #7, !srcloc !32
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %58, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %58, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %57
  br i1 %cmp.not.i.i.i.i, label %futex_requeue_pi_prepare.exit.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i.i_crit_edge, !prof !20

arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

futex_requeue_pi_prepare.exit.i:                  ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %pi_state.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %pi_state.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %futex_requeue_pi_prepare.exit.i, %futex_requeue_pi_prepare.exit.thread46.i
  %task.i = getelementptr inbounds %struct.futex_q, ptr %call6.i, i32 0, i32 1
  %60 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i, align 4
  %call21.i = call i32 @futex_lock_pi_atomic(ptr noundef %uaddr2, ptr noundef %call40, ptr noundef nonnull %key2, ptr noundef nonnull %pi_state, ptr noundef %61, ptr noundef nonnull %exiting, i32 noundef %nr_requeue) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21.i)
  %cmp.i256 = icmp eq i32 %call21.i, 1
  br i1 %cmp.i256, label %futex_proxy_trylock_atomic.exit.thread327, label %if.else.i

futex_proxy_trylock_atomic.exit.thread327:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @requeue_pi_wake_futex(ptr noundef nonnull %call6.i, ptr noundef nonnull %key2, ptr noundef %call40) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #7
  br label %cleanup84.thread342

if.else.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp23.i = icmp slt i32 %call21.i, 0
  br i1 %cmp23.i, label %if.then24.i, label %if.else.i.futex_proxy_trylock_atomic.exit_crit_edge

if.else.i.futex_proxy_trylock_atomic.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_proxy_trylock_atomic.exit

if.then24.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @futex_requeue_pi_complete(ptr noundef nonnull %call6.i, i32 noundef %call21.i) #7
  br label %futex_proxy_trylock_atomic.exit

futex_proxy_trylock_atomic.exit.thread:           ; preds = %futex_match.exit.i.futex_proxy_trylock_atomic.exit.thread_crit_edge, %land.lhs.true4.i.i.futex_proxy_trylock_atomic.exit.thread_crit_edge, %land.lhs.true2.i.i.futex_proxy_trylock_atomic.exit.thread_crit_edge, %if.end13.i.futex_proxy_trylock_atomic.exit.thread_crit_edge, %lor.lhs.false.i.futex_proxy_trylock_atomic.exit.thread_crit_edge, %if.end9.i.futex_proxy_trylock_atomic.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #7
  br label %cleanup84.thread

futex_proxy_trylock_atomic.exit.thread323:        ; preds = %if.end.i.futex_proxy_trylock_atomic.exit.thread323_crit_edge, %if.then74.futex_proxy_trylock_atomic.exit.thread323_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #7
  br label %sw.bb76

futex_proxy_trylock_atomic.exit:                  ; preds = %if.then24.i, %if.else.i.futex_proxy_trylock_atomic.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #7
  %62 = zext i32 %call21.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call21.i, label %futex_proxy_trylock_atomic.exit.cleanup84.thread_crit_edge [
    i32 0, label %futex_proxy_trylock_atomic.exit.cleanup84.thread342_crit_edge
    i32 1, label %futex_proxy_trylock_atomic.exit.cleanup84.thread342_crit_edge778
    i32 -14, label %futex_proxy_trylock_atomic.exit.sw.bb76_crit_edge
    i32 -16, label %futex_proxy_trylock_atomic.exit.sw.bb81_crit_edge
    i32 -11, label %futex_proxy_trylock_atomic.exit.sw.bb81_crit_edge779
  ]

futex_proxy_trylock_atomic.exit.sw.bb81_crit_edge779: ; preds = %futex_proxy_trylock_atomic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

futex_proxy_trylock_atomic.exit.sw.bb81_crit_edge: ; preds = %futex_proxy_trylock_atomic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

futex_proxy_trylock_atomic.exit.sw.bb76_crit_edge: ; preds = %futex_proxy_trylock_atomic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb76

futex_proxy_trylock_atomic.exit.cleanup84.thread342_crit_edge778: ; preds = %futex_proxy_trylock_atomic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84.thread342

futex_proxy_trylock_atomic.exit.cleanup84.thread342_crit_edge: ; preds = %futex_proxy_trylock_atomic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84.thread342

futex_proxy_trylock_atomic.exit.cleanup84.thread_crit_edge: ; preds = %futex_proxy_trylock_atomic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84.thread

sw.bb76:                                          ; preds = %futex_proxy_trylock_atomic.exit.sw.bb76_crit_edge, %futex_proxy_trylock_atomic.exit.thread323
  call void @_raw_spin_unlock(ptr noundef %lock.i254) #7
  br i1 %cmp.not.i, label %sw.bb76.double_unlock_hb.exit262_crit_edge, label %if.then.i260

sw.bb76.double_unlock_hb.exit262_crit_edge:       ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  br label %double_unlock_hb.exit262

if.then.i260:                                     ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %lock1.i) #7
  br label %double_unlock_hb.exit262

double_unlock_hb.exit262:                         ; preds = %if.then.i260, %sw.bb76.double_unlock_hb.exit262_crit_edge
  %call.i.i.i263 = call zeroext i1 @__kasan_check_write(ptr noundef %call40, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %call40, i32 1, i32 3, i32 1) #7
  %63 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call40, ptr %call40, i32 1, ptr elementtype(i32) %call40) #7, !srcloc !25
  %call77 = call i32 @fault_in_user_writeable(ptr noundef %uaddr2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %double_unlock_hb.exit262.cleanup84_crit_edge, label %cleanup84.thread337

double_unlock_hb.exit262.cleanup84_crit_edge:     ; preds = %double_unlock_hb.exit262
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup84

cleanup84.thread337:                              ; preds = %double_unlock_hb.exit262
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exiting) #7
  br label %cleanup157

sw.bb81:                                          ; preds = %futex_proxy_trylock_atomic.exit.sw.bb81_crit_edge, %futex_proxy_trylock_atomic.exit.sw.bb81_crit_edge779, %futex_proxy_trylock_atomic.exit.thread329
  %retval.0.i331 = phi i32 [ -11, %futex_proxy_trylock_atomic.exit.thread329 ], [ %call21.i, %futex_proxy_trylock_atomic.exit.sw.bb81_crit_edge ], [ %call21.i, %futex_proxy_trylock_atomic.exit.sw.bb81_crit_edge779 ]
  call void @_raw_spin_unlock(ptr noundef %lock.i254) #7
  br i1 %cmp.not.i, label %sw.bb81.double_unlock_hb.exit269_crit_edge, label %if.then.i267

sw.bb81.double_unlock_hb.exit269_crit_edge:       ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %double_unlock_hb.exit269

if.then.i267:                                     ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %lock1.i) #7
  br label %double_unlock_hb.exit269

double_unlock_hb.exit269:                         ; preds = %if.then.i267, %sw.bb81.double_unlock_hb.exit269_crit_edge
  %call.i.i.i270 = call zeroext i1 @__kasan_check_write(ptr noundef %call40, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %call40, i32 1, i32 3, i32 1) #7
  %64 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call40, ptr %call40, i32 1, ptr elementtype(i32) %call40) #7, !srcloc !25
  %65 = ptrtoint ptr %exiting to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %exiting, align 4
  call void @wait_for_owner_exiting(i32 noundef %retval.0.i331, ptr noundef %66) #7
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 563, i32 noundef 0) #7
  %call.i271 = call i32 @__cond_resched() #7
  br label %cleanup84

cleanup84.thread342:                              ; preds = %futex_proxy_trylock_atomic.exit.cleanup84.thread342_crit_edge, %futex_proxy_trylock_atomic.exit.cleanup84.thread342_crit_edge778, %futex_proxy_trylock_atomic.exit.thread327, %futex_proxy_trylock_atomic.exit.thread325
  %task_count.1 = phi i32 [ 0, %futex_proxy_trylock_atomic.exit.thread325 ], [ 1, %futex_proxy_trylock_atomic.exit.thread327 ], [ %call21.i, %futex_proxy_trylock_atomic.exit.cleanup84.thread342_crit_edge ], [ %call21.i, %futex_proxy_trylock_atomic.exit.cleanup84.thread342_crit_edge778 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exiting) #7
  br label %if.end87

cleanup84.thread:                                 ; preds = %futex_proxy_trylock_atomic.exit.cleanup84.thread_crit_edge, %futex_proxy_trylock_atomic.exit.thread
  %ret.4.ph = phi i32 [ -22, %futex_proxy_trylock_atomic.exit.thread ], [ %call21.i, %futex_proxy_trylock_atomic.exit.cleanup84.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exiting) #7
  br label %out_unlock

cleanup84:                                        ; preds = %double_unlock_hb.exit269, %double_unlock_hb.exit262.cleanup84_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exiting) #7
  br label %retry.backedge

retry.backedge:                                   ; preds = %cleanup84, %if.end63.retry.backedge_crit_edge
  %call15 = call i32 @get_futex_key(ptr noundef %uaddr1, i1 noundef zeroext %tobool14, ptr noundef nonnull %key1, i32 noundef 0) #7
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %retry.backedge.if.end20_crit_edge, label %retry.backedge.cleanup157_crit_edge, !prof !20

retry.backedge.cleanup157_crit_edge:              ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

retry.backedge.if.end20_crit_edge:                ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end87:                                         ; preds = %cleanup84.thread342, %if.end72.if.end87_crit_edge
  %task_count.3 = phi i32 [ %task_count.1, %cleanup84.thread342 ], [ 0, %if.end72.if.end87_crit_edge ]
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %call39, i32 0, i32 2
  %67 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %chain, align 16
  %cmp99.not406 = icmp ne ptr %68, %chain
  %sub407 = sub i32 %task_count.3, %nr_wake
  call void @__sanitizer_cov_trace_cmp4(i32 %sub407, i32 %nr_requeue)
  %cmp102.not408 = icmp slt i32 %sub407, %nr_requeue
  %or.cond251409 = and i1 %cmp99.not406, %cmp102.not408
  br i1 %or.cond251409, label %if.end87.if.end104_crit_edge, label %if.end87.for.end_crit_edge

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end87.if.end104_crit_edge:                     ; preds = %if.end87
  br label %if.end104

if.end104:                                        ; preds = %for.inc.if.end104_crit_edge, %if.end87.if.end104_crit_edge
  %task_count.4412 = phi i32 [ %task_count.5, %for.inc.if.end104_crit_edge ], [ %task_count.3, %if.end87.if.end104_crit_edge ]
  %ret.6411 = phi i32 [ %ret.7, %for.inc.if.end104_crit_edge ], [ 0, %if.end87.if.end104_crit_edge ]
  %.pn.in410 = phi ptr [ %.pn415, %for.inc.if.end104_crit_edge ], [ %68, %if.end87.if.end104_crit_edge ]
  %this.0414 = getelementptr i8, ptr %.pn.in410, i32 -12
  %69 = ptrtoint ptr %.pn.in410 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn415 = load ptr, ptr %.pn.in410, align 4
  %key = getelementptr i8, ptr %.pn.in410, i32 20
  %tobool.not.i272 = icmp eq ptr %key, null
  br i1 %tobool.not.i272, label %if.end104.for.inc_crit_edge, label %land.lhs.true2.i

if.end104.for.inc_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true2.i:                                 ; preds = %if.end104
  %word.i273 = getelementptr i8, ptr %.pn.in410, i32 28
  %70 = ptrtoint ptr %word.i273 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %word.i273, align 8
  %72 = ptrtoint ptr %word.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %word.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp.i275 = icmp eq i32 %71, %73
  br i1 %cmp.i275, label %land.lhs.true4.i277, label %land.lhs.true2.i.for.inc_crit_edge

land.lhs.true2.i.for.inc_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true4.i277:                              ; preds = %land.lhs.true2.i
  %74 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %key, align 8
  %76 = ptrtoint ptr %key1 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %key1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %75, i64 %77)
  %cmp6.i276 = icmp eq i64 %75, %77
  br i1 %cmp6.i276, label %futex_match.exit283, label %land.lhs.true4.i277.for.inc_crit_edge

land.lhs.true4.i277.for.inc_crit_edge:            ; preds = %land.lhs.true4.i277
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

futex_match.exit283:                              ; preds = %land.lhs.true4.i277
  %offset.i278 = getelementptr i8, ptr %.pn.in410, i32 32
  %78 = ptrtoint ptr %offset.i278 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset.i278, align 4
  %80 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp8.i280.not = icmp eq i32 %79, %81
  br i1 %cmp8.i280.not, label %if.end108, label %futex_match.exit283.for.inc_crit_edge

futex_match.exit283.for.inc_crit_edge:            ; preds = %futex_match.exit283
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end108:                                        ; preds = %futex_match.exit283
  %rt_waiter115 = getelementptr i8, ptr %.pn.in410, i32 40
  %82 = ptrtoint ptr %rt_waiter115 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rt_waiter115, align 4
  %tobool116.not = icmp eq ptr %83, null
  br i1 %tobool.not, label %land.lhs.true114.critedge, label %land.lhs.true110

land.lhs.true110:                                 ; preds = %if.end108
  br i1 %tobool116.not, label %land.lhs.true110.for.end_crit_edge, label %lor.lhs.false117.thread

land.lhs.true110.for.end_crit_edge:               ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true114.critedge:                        ; preds = %if.end108
  br i1 %tobool116.not, label %lor.lhs.false117, label %land.lhs.true114.critedge.for.end_crit_edge

land.lhs.true114.critedge.for.end_crit_edge:      ; preds = %land.lhs.true114.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.lhs.false117:                                 ; preds = %land.lhs.true114.critedge
  %pi_state118 = getelementptr i8, ptr %.pn.in410, i32 36
  %84 = ptrtoint ptr %pi_state118 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pi_state118, align 8
  %tobool119.not = icmp eq ptr %85, null
  br i1 %tobool119.not, label %if.then123, label %lor.lhs.false117.for.end_crit_edge

lor.lhs.false117.for.end_crit_edge:               ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

lor.lhs.false117.thread:                          ; preds = %land.lhs.true110
  %pi_state118348 = getelementptr i8, ptr %.pn.in410, i32 36
  %86 = ptrtoint ptr %pi_state118348 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pi_state118348, align 8
  %tobool119.not349 = icmp eq ptr %87, null
  br i1 %tobool119.not349, label %if.end128, label %lor.lhs.false117.thread.for.end_crit_edge

lor.lhs.false117.thread.for.end_crit_edge:        ; preds = %lor.lhs.false117.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then123:                                       ; preds = %lor.lhs.false117
  %inc124 = add i32 %task_count.4412, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc124, i32 %nr_wake)
  %cmp125.not = icmp sgt i32 %inc124, %nr_wake
  br i1 %cmp125.not, label %if.else, label %if.then126

if.then126:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  call void @futex_wake_mark(ptr noundef nonnull %wake_q, ptr noundef %this.0414) #7
  br label %for.inc

if.else:                                          ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @requeue_futex(ptr noundef %this.0414, ptr noundef %call39, ptr noundef %call40, ptr noundef nonnull %key2)
  br label %for.inc

if.end128:                                        ; preds = %lor.lhs.false117.thread
  %requeue_pi_key = getelementptr i8, ptr %.pn.in410, i32 44
  %88 = ptrtoint ptr %requeue_pi_key to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %requeue_pi_key, align 8
  %tobool.not.i284 = icmp eq ptr %89, null
  br i1 %tobool.not.i284, label %if.end128.for.end_crit_edge, label %land.lhs.true2.i288

if.end128.for.end_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true2.i288:                              ; preds = %if.end128
  %word.i285 = getelementptr inbounds %struct.anon.36, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %word.i285 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %word.i285, align 8
  %92 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %word3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp.i287 = icmp eq i32 %91, %93
  br i1 %cmp.i287, label %land.lhs.true4.i290, label %land.lhs.true2.i288.for.end_crit_edge

land.lhs.true2.i288.for.end_crit_edge:            ; preds = %land.lhs.true2.i288
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true4.i290:                              ; preds = %land.lhs.true2.i288
  %94 = ptrtoint ptr %89 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %89, align 8
  %96 = ptrtoint ptr %key2 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %key2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %97)
  %cmp6.i289 = icmp eq i64 %95, %97
  br i1 %cmp6.i289, label %futex_match.exit296, label %land.lhs.true4.i290.for.end_crit_edge

land.lhs.true4.i290.for.end_crit_edge:            ; preds = %land.lhs.true4.i290
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

futex_match.exit296:                              ; preds = %land.lhs.true4.i290
  %offset.i291 = getelementptr inbounds %struct.anon.36, ptr %89, i32 0, i32 2
  %98 = ptrtoint ptr %offset.i291 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %offset.i291, align 4
  %100 = ptrtoint ptr %offset7.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %offset7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %101)
  %cmp8.i293.not = icmp eq i32 %99, %101
  br i1 %cmp8.i293.not, label %if.end132, label %futex_match.exit296.for.end_crit_edge

futex_match.exit296.for.end_crit_edge:            ; preds = %futex_match.exit296
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end132:                                        ; preds = %futex_match.exit296
  %102 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pi_state, align 4
  call void @get_pi_state(ptr noundef %103) #7
  %104 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pi_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i) #7
  %requeue_state.i = getelementptr i8, ptr %.pn.in410, i32 52
  %call.i.i.i297 = call zeroext i1 @__kasan_check_read(ptr noundef %requeue_state.i, i32 noundef 4) #7
  %106 = ptrtoint ptr %requeue_state.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %requeue_state.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  br label %do.body.i

do.body.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge, %if.end132
  %108 = phi i32 [ %107, %if.end132 ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge ]
  %109 = ptrtoint ptr %old.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %old.i, align 4
  %110 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %108, label %futex_requeue_pi_prepare.exit.thread354 [
    i32 1, label %if.then134
    i32 0, label %if.end3.i
  ]

futex_requeue_pi_prepare.exit.thread354:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %pi_state118348 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %105, ptr %pi_state118348, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i) #7
  br label %if.end135

if.end3.i:                                        ; preds = %do.body.i
  %call.i.i10.i = call zeroext i1 @__kasan_check_write(ptr noundef %requeue_state.i, i32 noundef 4) #7
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i, i32 noundef 4) #7
  %112 = ptrtoint ptr %old.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %old.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @llvm.prefetch.p0(ptr %requeue_state.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end3.i
  %114 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %requeue_state.i, ptr %requeue_state.i, i32 %113, i32 2, ptr elementtype(i32) %requeue_state.i) #7, !srcloc !32
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %114, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %114, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %113
  br i1 %cmp.not.i.i.i, label %futex_requeue_pi_prepare.exit, label %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge, !prof !20

arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

futex_requeue_pi_prepare.exit:                    ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %pi_state118348 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %105, ptr %pi_state118348, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i) #7
  br label %if.end135

if.then134:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i) #7
  %116 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pi_state, align 4
  call void @put_pi_state(ptr noundef %117) #7
  br label %for.inc

if.end135:                                        ; preds = %futex_requeue_pi_prepare.exit, %futex_requeue_pi_prepare.exit.thread354
  %118 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pi_state, align 4
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %rt_waiter115 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rt_waiter115, align 4
  %task = getelementptr i8, ptr %.pn.in410, i32 8
  %122 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %task, align 4
  %call137 = call i32 @rt_mutex_start_proxy_lock(ptr noundef %pi_mutex, ptr noundef %121, ptr noundef %123) #7
  %124 = zext i32 %call137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call137, label %if.else145 [
    i32 1, label %if.then139
    i32 0, label %if.then143
  ]

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @requeue_pi_wake_futex(ptr noundef %this.0414, ptr noundef nonnull %key2, ptr noundef %call40)
  %inc140 = add i32 %task_count.4412, 1
  br label %for.inc

if.then143:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @requeue_futex(ptr noundef %this.0414, ptr noundef %call39, ptr noundef %call40, ptr noundef nonnull %key2)
  call fastcc void @futex_requeue_pi_complete(ptr noundef %this.0414, i32 noundef 0)
  %inc144 = add i32 %task_count.4412, 1
  br label %for.inc

if.else145:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %pi_state118348 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %pi_state118348, align 8
  %126 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pi_state, align 4
  call void @put_pi_state(ptr noundef %127) #7
  call fastcc void @futex_requeue_pi_complete(ptr noundef %this.0414, i32 noundef %call137)
  br label %for.end

for.inc:                                          ; preds = %if.then143, %if.then139, %if.then134, %if.else, %if.then126, %futex_match.exit283.for.inc_crit_edge, %land.lhs.true4.i277.for.inc_crit_edge, %land.lhs.true2.i.for.inc_crit_edge, %if.end104.for.inc_crit_edge
  %ret.7 = phi i32 [ 1, %if.then139 ], [ 0, %if.then143 ], [ %ret.6411, %if.then134 ], [ %ret.6411, %if.then126 ], [ %ret.6411, %if.else ], [ %ret.6411, %futex_match.exit283.for.inc_crit_edge ], [ %ret.6411, %land.lhs.true4.i277.for.inc_crit_edge ], [ %ret.6411, %land.lhs.true2.i.for.inc_crit_edge ], [ %ret.6411, %if.end104.for.inc_crit_edge ]
  %task_count.5 = phi i32 [ %inc140, %if.then139 ], [ %inc144, %if.then143 ], [ %task_count.4412, %if.then134 ], [ %inc124, %if.then126 ], [ %inc124, %if.else ], [ %task_count.4412, %futex_match.exit283.for.inc_crit_edge ], [ %task_count.4412, %land.lhs.true4.i277.for.inc_crit_edge ], [ %task_count.4412, %land.lhs.true2.i.for.inc_crit_edge ], [ %task_count.4412, %if.end104.for.inc_crit_edge ]
  %cmp99.not = icmp ne ptr %.pn415, %chain
  %sub = sub i32 %task_count.5, %nr_wake
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %nr_requeue)
  %cmp102.not = icmp slt i32 %sub, %nr_requeue
  %or.cond251 = select i1 %cmp99.not, i1 %cmp102.not, i1 false
  br i1 %or.cond251, label %for.inc.if.end104_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.if.end104_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else145, %futex_match.exit296.for.end_crit_edge, %land.lhs.true4.i290.for.end_crit_edge, %land.lhs.true2.i288.for.end_crit_edge, %if.end128.for.end_crit_edge, %lor.lhs.false117.thread.for.end_crit_edge, %lor.lhs.false117.for.end_crit_edge, %land.lhs.true114.critedge.for.end_crit_edge, %land.lhs.true110.for.end_crit_edge, %if.end87.for.end_crit_edge
  %task_count.4360 = phi i32 [ %task_count.4412, %if.else145 ], [ %task_count.3, %if.end87.for.end_crit_edge ], [ %task_count.5, %for.inc.for.end_crit_edge ], [ %task_count.4412, %lor.lhs.false117.for.end_crit_edge ], [ %task_count.4412, %land.lhs.true114.critedge.for.end_crit_edge ], [ %task_count.4412, %land.lhs.true110.for.end_crit_edge ], [ %task_count.4412, %futex_match.exit296.for.end_crit_edge ], [ %task_count.4412, %lor.lhs.false117.thread.for.end_crit_edge ], [ %task_count.4412, %land.lhs.true4.i290.for.end_crit_edge ], [ %task_count.4412, %land.lhs.true2.i288.for.end_crit_edge ], [ %task_count.4412, %if.end128.for.end_crit_edge ]
  %ret.8 = phi i32 [ %call137, %if.else145 ], [ 0, %if.end87.for.end_crit_edge ], [ %ret.7, %for.inc.for.end_crit_edge ], [ -22, %lor.lhs.false117.for.end_crit_edge ], [ -22, %land.lhs.true114.critedge.for.end_crit_edge ], [ -22, %land.lhs.true110.for.end_crit_edge ], [ -22, %futex_match.exit296.for.end_crit_edge ], [ -22, %lor.lhs.false117.thread.for.end_crit_edge ], [ -22, %land.lhs.true4.i290.for.end_crit_edge ], [ -22, %land.lhs.true2.i288.for.end_crit_edge ], [ -22, %if.end128.for.end_crit_edge ]
  %128 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pi_state, align 4
  call void @put_pi_state(ptr noundef %129) #7
  br label %out_unlock

out_unlock:                                       ; preds = %for.end, %cleanup84.thread, %if.end68.out_unlock_crit_edge
  %ret.9 = phi i32 [ %ret.8, %for.end ], [ %ret.4.ph, %cleanup84.thread ], [ -11, %if.end68.out_unlock_crit_edge ]
  %task_count.6 = phi i32 [ %task_count.4360, %for.end ], [ 0, %cleanup84.thread ], [ 0, %if.end68.out_unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock.i254) #7
  br i1 %cmp.not.i, label %out_unlock.double_unlock_hb.exit306_crit_edge, label %if.then.i304

out_unlock.double_unlock_hb.exit306_crit_edge:    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %double_unlock_hb.exit306

if.then.i304:                                     ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef %lock1.i) #7
  br label %double_unlock_hb.exit306

double_unlock_hb.exit306:                         ; preds = %if.then.i304, %out_unlock.double_unlock_hb.exit306_crit_edge
  call void @wake_up_q(ptr noundef nonnull %wake_q) #7
  %call.i.i.i307 = call zeroext i1 @__kasan_check_write(ptr noundef %call40, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %call40, i32 1, i32 3, i32 1) #7
  %130 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call40, ptr %call40, i32 1, ptr elementtype(i32) %call40) #7, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.9)
  %tobool155.not = icmp eq i32 %ret.9, 0
  %task_count.6.ret.9 = select i1 %tobool155.not, i32 %task_count.6, i32 %ret.9
  br label %cleanup157

cleanup157:                                       ; preds = %double_unlock_hb.exit306, %retry.backedge.cleanup157_crit_edge, %cleanup84.thread337, %cleanup.thread, %futex_match.exit.cleanup157_crit_edge, %if.end20.cleanup157_crit_edge, %if.end13.cleanup157_crit_edge, %if.end9.cleanup157_crit_edge, %if.then3.cleanup157_crit_edge, %entry.cleanup157_crit_edge
  %retval.5 = phi i32 [ %task_count.6.ret.9, %double_unlock_hb.exit306 ], [ -22, %entry.cleanup157_crit_edge ], [ -22, %if.then3.cleanup157_crit_edge ], [ -12, %if.end9.cleanup157_crit_edge ], [ %asmresult.le, %cleanup.thread ], [ %call77, %cleanup84.thread337 ], [ %call15400, %if.end13.cleanup157_crit_edge ], [ %call15, %retry.backedge.cleanup157_crit_edge ], [ %call24, %if.end20.cleanup157_crit_edge ], [ -22, %futex_match.exit.cleanup157_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wake_q) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pi_state) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key2) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key1) #7
  ret i32 %retval.5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @refill_pi_state_cache() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_futex_key(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_get_value_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_user_writeable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_owner_exiting(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_wake_mark(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @requeue_futex(ptr noundef %q, ptr noundef %hb1, ptr noundef %hb2, ptr nocapture noundef readonly %key2) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %cmp.not = icmp eq ptr %hb1, %hb2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !prof !23

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chain1 = getelementptr inbounds %struct.futex_hash_bucket, ptr %hb2, i32 0, i32 2
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %hb1, i32 0, i32 2
  tail call void @plist_del(ptr noundef %q, ptr noundef %chain) #7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hb1, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %hb1, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hb1, ptr %hb1, i32 1, ptr elementtype(i32) %hb1) #7, !srcloc !25
  %call.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hb2, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %hb2, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hb2, ptr %hb2, i32 1, ptr elementtype(i32) %hb2) #7, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !22
  tail call void @plist_add(ptr noundef %q, ptr noundef %chain1) #7
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %hb2, i32 0, i32 1
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %2 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lock, ptr %lock_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %key = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3
  %3 = call ptr @memcpy(ptr %key, ptr %key2, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_pi_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pi_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_start_proxy_lock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @requeue_pi_wake_futex(ptr noundef %q, ptr nocapture noundef readonly %key, ptr noundef %hb) unnamed_addr #3 align 64 {
entry:
  %old.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  %key1 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %key1, ptr %key, i32 16)
  tail call void @__futex_unqueue(ptr noundef %q) #7
  %rt_waiter = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 5
  %1 = ptrtoint ptr %rt_waiter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rt_waiter, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !23

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %rt_waiter to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rt_waiter, align 4
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %hb, i32 0, i32 1
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %4 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lock, ptr %lock_ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i) #7
  %requeue_state.i = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %requeue_state.i, i32 noundef 4) #7
  %5 = ptrtoint ptr %requeue_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %requeue_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  br label %do.body.i

do.body.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge, %if.end
  %7 = phi i32 [ %6, %if.end ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge ]
  %8 = ptrtoint ptr %old.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  br i1 %cmp.i, label %do.body.i.futex_requeue_pi_complete.exit_crit_edge, label %if.end.i

do.body.i.futex_requeue_pi_complete.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_requeue_pi_complete.exit

if.end.i:                                         ; preds = %do.body.i
  %9 = add i32 %7, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %10 = icmp ult i32 %9, -2
  br i1 %10, label %land.rhs6.i, label %if.end.i.do.cond103.i_crit_edge

if.end.i.do.cond103.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond103.i

land.rhs6.i:                                      ; preds = %if.end.i
  %.b118.i = load i1, ptr @futex_requeue_pi_complete.__already_done, align 1
  br i1 %.b118.i, label %land.rhs6.i.do.cond103.i_crit_edge, label %if.then13.i, !prof !20

land.rhs6.i.do.cond103.i_crit_edge:               ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond103.i

if.then13.i:                                      ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @futex_requeue_pi_complete.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #7
  br label %do.cond103.i

do.cond103.i:                                     ; preds = %if.then13.i, %land.rhs6.i.do.cond103.i_crit_edge, %if.end.i.do.cond103.i_crit_edge
  %call.i.i119.i = call zeroext i1 @__kasan_check_write(ptr noundef %requeue_state.i, i32 noundef 4) #7
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i, i32 noundef 4) #7
  %11 = ptrtoint ptr %old.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @llvm.prefetch.p0(ptr %requeue_state.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond103.i
  %13 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %requeue_state.i, ptr %requeue_state.i, i32 %12, i32 5, ptr elementtype(i32) %requeue_state.i) #7, !srcloc !32
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %13, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %12
  br i1 %cmp.not.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.futex_requeue_pi_complete.exit_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge, !prof !20

arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

arch_atomic_cmpxchg.exit.i.i.i.futex_requeue_pi_complete.exit_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_requeue_pi_complete.exit

futex_requeue_pi_complete.exit:                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.futex_requeue_pi_complete.exit_crit_edge, %do.body.i.futex_requeue_pi_complete.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i) #7
  %task = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 1
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 4
  %call = call i32 @wake_up_state(ptr noundef %15, i32 noundef 3) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @futex_requeue_pi_complete(ptr noundef %q, i32 noundef %locked) unnamed_addr #3 align 64 {
entry:
  %old = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old) #7
  %requeue_state = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %requeue_state, i32 noundef 4) #7
  %0 = ptrtoint ptr %requeue_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %requeue_state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %locked)
  %cmp1 = icmp sgt i32 %locked, -1
  %add = add nuw i32 %locked, 4
  br label %do.body

do.body:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.do.body_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.do.body_crit_edge ]
  %3 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %do.body
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %4 = add i32 %2, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %4)
  %5 = icmp ult i32 %4, -2
  br i1 %5, label %land.rhs6, label %if.then2.do.cond103_crit_edge

if.then2.do.cond103_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond103

land.rhs6:                                        ; preds = %if.then2
  %.b118 = load i1, ptr @futex_requeue_pi_complete.__already_done, align 1
  br i1 %.b118, label %land.rhs6.do.cond103_crit_edge, label %if.then13, !prof !20

land.rhs6.do.cond103_crit_edge:                   ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond103

if.then13:                                        ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @futex_requeue_pi_complete.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #7
  br label %do.cond103

if.else:                                          ; preds = %if.end
  %6 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %2, label %land.rhs55 [
    i32 2, label %if.else.do.cond103_crit_edge
    i32 3, label %if.else.if.end93_crit_edge
  ]

if.else.if.end93_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.else.do.cond103_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond103

land.rhs55:                                       ; preds = %if.else
  %.b116117 = load i1, ptr @futex_requeue_pi_complete.__already_done.1, align 1
  br i1 %.b116117, label %land.rhs55.if.end93_crit_edge, label %if.then66, !prof !20

land.rhs55.if.end93_crit_edge:                    ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then66:                                        ; preds = %land.rhs55
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @futex_requeue_pi_complete.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 9, ptr noundef null) #7
  br label %if.end93

if.end93:                                         ; preds = %if.then66, %land.rhs55.if.end93_crit_edge, %if.else.if.end93_crit_edge
  br label %do.cond103

do.cond103:                                       ; preds = %if.end93, %if.else.do.cond103_crit_edge, %if.then13, %land.rhs6.do.cond103_crit_edge, %if.then2.do.cond103_crit_edge
  %new.0 = phi i32 [ 1, %if.end93 ], [ 0, %if.else.do.cond103_crit_edge ], [ %add, %if.then2.do.cond103_crit_edge ], [ %add, %if.then13 ], [ %add, %land.rhs6.do.cond103_crit_edge ]
  %call.i.i119 = call zeroext i1 @__kasan_check_write(ptr noundef %requeue_state, i32 noundef 4) #7
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old, i32 noundef 4) #7
  %7 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @llvm.prefetch.p0(ptr %requeue_state, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.cond103
  %9 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %requeue_state, ptr %requeue_state, i32 %8, i32 %new.0, ptr elementtype(i32) %requeue_state) #7, !srcloc !32
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg.exit.i.i:                     ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %9, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %cmp.not.i.i = icmp eq i32 %asmresult3.i.i.i.i, %8
  br i1 %cmp.not.i.i, label %arch_atomic_cmpxchg.exit.i.i.cleanup_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.do.body_crit_edge, !prof !20

arch_atomic_cmpxchg.exit.i.i.do.body_crit_edge:   ; preds = %arch_atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

arch_atomic_cmpxchg.exit.i.i.cleanup_crit_edge:   ; preds = %arch_atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.cleanup_crit_edge, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_wait_requeue_pi(ptr noundef %uaddr, i32 noundef %flags, i32 noundef %val, ptr noundef %abs_time, i32 noundef %bitset, ptr noundef %uaddr2) local_unnamed_addr #0 align 64 {
entry:
  %old.i = alloca i32, align 4
  %timeout = alloca %struct.hrtimer_sleeper, align 8
  %rt_waiter = alloca %struct.rt_mutex_waiter, align 8
  %hb = alloca ptr, align 4
  %key2 = alloca %union.futex_key, align 8
  %q = alloca %struct.futex_q, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %timeout) #7
  %0 = call ptr @memset(ptr %timeout, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rt_waiter) #7
  %1 = call ptr @memset(ptr %rt_waiter, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hb) #7
  %2 = ptrtoint ptr %hb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %hb, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key2) #7
  %3 = call ptr @memset(ptr %key2, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %q) #7
  %4 = call ptr @memcpy(ptr %q, ptr @futex_q_init, i32 72)
  %cmp = icmp eq ptr %uaddr, %uaddr2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bitset)
  %tobool.not = icmp eq i32 %bitset, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !10) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 189
  %9 = ptrtoint ptr %timer_slack_ns to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %timer_slack_ns, align 8
  %call3 = call ptr @futex_setup_timer(ptr noundef %abs_time, ptr noundef nonnull %timeout, i32 noundef %flags, i64 noundef %10) #7
  %11 = call ptr @memset(ptr %rt_waiter, i32 17, i32 56)
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %rt_waiter, i32 0, i32 1
  %12 = ptrtoint ptr %pi_tree_entry.i to i32
  %13 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pi_tree_entry.i, align 4
  %14 = ptrtoint ptr %rt_waiter to i32
  %15 = ptrtoint ptr %rt_waiter to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rt_waiter, align 8
  %wake_state.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %rt_waiter, i32 0, i32 4
  %16 = ptrtoint ptr %wake_state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %wake_state.i, align 8
  %task.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %rt_waiter, i32 0, i32 2
  %17 = ptrtoint ptr %task.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %task.i, align 8
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4 = icmp ne i32 %and, 0
  %call5 = call i32 @get_futex_key(ptr noundef %uaddr2, i1 noundef zeroext %tobool4, ptr noundef nonnull %key2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end10, label %if.end2.out_crit_edge, !prof !20

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %if.end2
  %bitset11 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 7
  %18 = ptrtoint ptr %bitset11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bitset, ptr %bitset11, align 4
  %rt_waiter12 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 5
  %19 = ptrtoint ptr %rt_waiter12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rt_waiter, ptr %rt_waiter12, align 4
  %requeue_pi_key = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 6
  %20 = ptrtoint ptr %requeue_pi_key to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %key2, ptr %requeue_pi_key, align 8
  %call13 = call i32 @futex_wait_setup(ptr noundef %uaddr, i32 noundef %val, i32 noundef %flags, ptr noundef nonnull %q, ptr noundef nonnull %hb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end16:                                         ; preds = %if.end10
  %key = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %key, null
  br i1 %tobool.not.i, label %if.end16.if.end20_crit_edge, label %land.lhs.true2.i

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true2.i:                                 ; preds = %if.end16
  %word.i = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3, i32 0, i32 1
  %21 = ptrtoint ptr %word.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %word.i, align 8
  %word3.i = getelementptr inbounds %struct.anon.36, ptr %key2, i32 0, i32 1
  %23 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %word3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.i = icmp eq i32 %22, %24
  br i1 %cmp.i, label %land.lhs.true4.i, label %land.lhs.true2.i.if.end20_crit_edge

land.lhs.true2.i.if.end20_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %25 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %key, align 8
  %27 = ptrtoint ptr %key2 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %key2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %28)
  %cmp6.i = icmp eq i64 %26, %28
  br i1 %cmp6.i, label %futex_match.exit, label %land.lhs.true4.i.if.end20_crit_edge

land.lhs.true4.i.if.end20_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

futex_match.exit:                                 ; preds = %land.lhs.true4.i
  %offset.i = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3, i32 0, i32 2
  %29 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i, align 4
  %offset7.i = getelementptr inbounds %struct.anon.36, ptr %key2, i32 0, i32 2
  %31 = ptrtoint ptr %offset7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp8.i.not = icmp eq i32 %30, %32
  br i1 %cmp8.i.not, label %if.then19, label %futex_match.exit.if.end20_crit_edge

futex_match.exit.if.end20_crit_edge:              ; preds = %futex_match.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %futex_match.exit
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hb, align 4
  call void @futex_q_unlock(ptr noundef %34) #7
  br label %out

if.end20:                                         ; preds = %futex_match.exit.if.end20_crit_edge, %land.lhs.true4.i.if.end20_crit_edge, %land.lhs.true2.i.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %35 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hb, align 4
  call void @futex_wait_queue(ptr noundef %36, ptr noundef nonnull %q, ptr noundef %call3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i) #7
  %requeue_state.i = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %requeue_state.i, i32 noundef 4) #7
  %37 = ptrtoint ptr %requeue_state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %requeue_state.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  br label %do.body.i

do.body.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge, %if.end20
  %39 = phi i32 [ %38, %if.end20 ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge ]
  %40 = ptrtoint ptr %old.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %old.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.i103 = icmp sgt i32 %39, 3
  br i1 %cmp.i103, label %do.body.i.futex_requeue_pi_wakeup_sync.exit_crit_edge, label %if.end.i

do.body.i.futex_requeue_pi_wakeup_sync.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %futex_requeue_pi_wakeup_sync.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp1.i = icmp eq i32 %39, 0
  %spec.store.select.i = select i1 %cmp1.i, i32 1, i32 3
  %call.i.i33.i = call zeroext i1 @__kasan_check_write(ptr noundef %requeue_state.i, i32 noundef 4) #7
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i, i32 noundef 4) #7
  %41 = ptrtoint ptr %old.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %old.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @llvm.prefetch.p0(ptr %requeue_state.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end.i
  %43 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %requeue_state.i, ptr %requeue_state.i, i32 %42, i32 %spec.store.select.i, ptr elementtype(i32) %requeue_state.i) #7, !srcloc !32
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %43, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %43, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !33
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %42
  br i1 %cmp.not.i.i.i, label %do.end.i, label %arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge, !prof !20

arch_atomic_cmpxchg.exit.i.i.i.do.body.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %44 = ptrtoint ptr %old.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %old.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp6.i104 = icmp eq i32 %45, 2
  br i1 %cmp6.i104, label %for.cond.preheader.i, label %do.end.i.if.end25.i_crit_edge

do.end.i.if.end25.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

for.cond.preheader.i:                             ; preds = %do.end.i
  %46 = ptrtoint ptr %requeue_state.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %requeue_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp12.not37.i = icmp eq i32 %47, 3
  br i1 %cmp12.not37.i, label %for.cond.preheader.i.do.end19.i_crit_edge, label %for.cond.preheader.i.if.end25.i_crit_edge

for.cond.preheader.i.if.end25.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

for.cond.preheader.i.do.end19.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end19.i.do.end19.i_crit_edge, %for.cond.preheader.i.do.end19.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !35
  %48 = ptrtoint ptr %requeue_state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %requeue_state.i, align 8
  %cmp12.not.i = icmp eq i32 %49, 3
  br i1 %cmp12.not.i, label %do.end19.i.do.end19.i_crit_edge, label %do.end19.i.if.end25.i_crit_edge

do.end19.i.if.end25.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

do.end19.i.do.end19.i_crit_edge:                  ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19.i

if.end25.i:                                       ; preds = %do.end19.i.if.end25.i_crit_edge, %for.cond.preheader.i.if.end25.i_crit_edge, %do.end.i.if.end25.i_crit_edge
  %call.i.i34.i = call zeroext i1 @__kasan_check_read(ptr noundef %requeue_state.i, i32 noundef 4) #7
  %50 = ptrtoint ptr %requeue_state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %requeue_state.i, align 8
  br label %futex_requeue_pi_wakeup_sync.exit

futex_requeue_pi_wakeup_sync.exit:                ; preds = %if.end25.i, %do.body.i.futex_requeue_pi_wakeup_sync.exit_crit_edge
  %retval.0.i = phi i32 [ %51, %if.end25.i ], [ %39, %do.body.i.futex_requeue_pi_wakeup_sync.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i) #7
  %52 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %retval.0.i, label %do.body [
    i32 1, label %sw.bb
    i32 5, label %sw.bb24
    i32 4, label %sw.bb36
  ]

sw.bb:                                            ; preds = %futex_requeue_pi_wakeup_sync.exit
  %53 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hb, align 4
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %54, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #7
  %55 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hb, align 4
  %lock.i = getelementptr inbounds %struct.futex_hash_bucket, ptr %56, i32 0, i32 1
  %lock_ptr.i = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %57 = ptrtoint ptr %lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lock_ptr.i, align 8
  %cmp.not.i = icmp eq ptr %lock.i, %58
  br i1 %cmp.not.i, label %sw.bb.if.end27.i_crit_edge, label %land.rhs.i105

sw.bb.if.end27.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

land.rhs.i105:                                    ; preds = %sw.bb
  %.b50.i = load i1, ptr @handle_early_requeue_pi_wakeup.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i105.if.end27.i_crit_edge, label %if.then.i, !prof !20

land.rhs.i105.if.end27.i_crit_edge:               ; preds = %land.rhs.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then.i:                                        ; preds = %land.rhs.i105
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @handle_early_requeue_pi_wakeup.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 704, i32 noundef 9, ptr noundef null) #7
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then.i, %land.rhs.i105.if.end27.i_crit_edge, %sw.bb.if.end27.i_crit_edge
  %chain.i = getelementptr inbounds %struct.futex_hash_bucket, ptr %56, i32 0, i32 2
  call void @plist_del(ptr noundef nonnull %q, ptr noundef %chain.i) #7
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %56, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %56, i32 1, i32 3, i32 1) #7
  %59 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #7, !srcloc !25
  %tobool35.not.i = icmp eq ptr %call3, null
  br i1 %tobool35.not.i, label %if.end27.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end27.i.if.else.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end27.i
  %task.i106 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %call3, i32 0, i32 1
  %60 = ptrtoint ptr %task.i106 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %task.i106, align 8
  %tobool36.not.i = icmp eq ptr %61, null
  br i1 %tobool36.not.i, label %land.lhs.true.i.handle_early_requeue_pi_wakeup.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i.handle_early_requeue_pi_wakeup.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_early_requeue_pi_wakeup.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end27.i.if.else.i_crit_edge
  %62 = call i32 @llvm.read_register.i32(metadata !10) #7
  %and.i.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i to ptr
  %task38.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %task38.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %task38.i, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %stack.i.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %67, align 4
  %70 = and i32 %69, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i, label %signal_pending.exit.i, label %if.else.i.handle_early_requeue_pi_wakeup.exit_crit_edge, !prof !20

if.else.i.handle_early_requeue_pi_wakeup.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_early_requeue_pi_wakeup.exit

signal_pending.exit.i:                            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %67, align 4
  %and1.i.i.i.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool40.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  %spec.select.i = select i1 %tobool40.not.i, i32 -11, i32 -513
  br label %handle_early_requeue_pi_wakeup.exit

handle_early_requeue_pi_wakeup.exit:              ; preds = %signal_pending.exit.i, %if.else.i.handle_early_requeue_pi_wakeup.exit_crit_edge, %land.lhs.true.i.handle_early_requeue_pi_wakeup.exit_crit_edge
  %ret.0.i = phi i32 [ -110, %land.lhs.true.i.handle_early_requeue_pi_wakeup.exit_crit_edge ], [ -513, %if.else.i.handle_early_requeue_pi_wakeup.exit_crit_edge ], [ %spec.select.i, %signal_pending.exit.i ]
  %73 = ptrtoint ptr %hb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hb, align 4
  %lock23 = getelementptr inbounds %struct.futex_hash_bucket, ptr %74, i32 0, i32 1
  call void @_raw_spin_unlock(ptr noundef %lock23) #7
  br label %out

sw.bb24:                                          ; preds = %futex_requeue_pi_wakeup_sync.exit
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4
  %75 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pi_state, align 8
  %tobool25.not = icmp eq ptr %76, null
  br i1 %tobool25.not, label %sw.bb24.out_crit_edge, label %land.lhs.true

sw.bb24.out_crit_edge:                            ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true:                                    ; preds = %sw.bb24
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %owner, align 8
  %79 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %task, align 8
  %cmp29.not = icmp eq ptr %78, %80
  br i1 %cmp29.not, label %land.lhs.true.out_crit_edge, label %if.then30

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %81 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lock_ptr, align 8
  call void @_raw_spin_lock(ptr noundef %82) #7
  %call31 = call i32 @fixup_pi_owner(ptr noundef %uaddr2, ptr noundef nonnull %q, i32 noundef 1) #7
  %83 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pi_state, align 8
  call void @put_pi_state(ptr noundef %84) #7
  %85 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lock_ptr, align 8
  call void @_raw_spin_unlock(ptr noundef %86) #7
  %87 = call i32 @llvm.smin.i32(i32 %call31, i32 0)
  br label %out

sw.bb36:                                          ; preds = %futex_requeue_pi_wakeup_sync.exit
  %pi_state37 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4
  %88 = ptrtoint ptr %pi_state37 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pi_state37, align 8
  %pi_mutex38 = getelementptr inbounds %struct.futex_pi_state, ptr %89, i32 0, i32 1
  %call39 = call i32 @rt_mutex_wait_proxy_lock(ptr noundef %pi_mutex38, ptr noundef %call3, ptr noundef nonnull %rt_waiter) #7
  %lock_ptr40 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %90 = ptrtoint ptr %lock_ptr40 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lock_ptr40, align 8
  call void @_raw_spin_lock(ptr noundef %91) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool41.not = icmp eq i32 %call39, 0
  br i1 %tobool41.not, label %sw.bb36.if.end45_crit_edge, label %land.lhs.true42

sw.bb36.if.end45_crit_edge:                       ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true42:                                  ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = call zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef %pi_mutex38, ptr noundef nonnull %rt_waiter) #7
  %spec.select100 = select i1 %call43, i32 %call39, i32 0
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true42, %sw.bb36.if.end45_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb36.if.end45_crit_edge ], [ %spec.select100, %land.lhs.true42 ]
  %92 = call ptr @memset(ptr %rt_waiter, i32 34, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool46.not = icmp eq i32 %ret.0, 0
  %lnot.ext48 = zext i1 %tobool46.not to i32
  %call49 = call i32 @fixup_pi_owner(ptr noundef %uaddr2, ptr noundef nonnull %q, i32 noundef %lnot.ext48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  %93 = call i32 @llvm.smin.i32(i32 %call49, i32 0)
  %ret.1 = select i1 %tobool50.not, i32 %ret.0, i32 %93
  call void @futex_unqueue_pi(ptr noundef nonnull %q) #7
  %94 = ptrtoint ptr %lock_ptr40 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lock_ptr40, align 8
  call void @_raw_spin_unlock(ptr noundef %95) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %ret.1)
  %cmp59 = icmp eq i32 %ret.1, -4
  %spec.select102 = select i1 %cmp59, i32 -11, i32 %ret.1
  br label %out

do.body:                                          ; preds = %futex_requeue_pi_wakeup_sync.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/futex/requeue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 887, 0\0A.popsection", ""() #7, !srcloc !36
  unreachable

out:                                              ; preds = %if.end45, %if.then30, %land.lhs.true.out_crit_edge, %sw.bb24.out_crit_edge, %handle_early_requeue_pi_wakeup.exit, %if.then19, %if.end10.out_crit_edge, %if.end2.out_crit_edge
  %ret.2 = phi i32 [ %call5, %if.end2.out_crit_edge ], [ %call13, %if.end10.out_crit_edge ], [ -22, %if.then19 ], [ %87, %if.then30 ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %sw.bb24.out_crit_edge ], [ %ret.0.i, %handle_early_requeue_pi_wakeup.exit ], [ %spec.select102, %if.end45 ]
  %tobool65.not = icmp eq ptr %call3, null
  br i1 %tobool65.not, label %out.cleanup_crit_edge, label %if.then66

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then66:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = call i32 @hrtimer_cancel(ptr noundef nonnull %call3) #7
  call void @destroy_hrtimer_on_stack(ptr noundef nonnull %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.2, %if.then66 ], [ %ret.2, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %q) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hb) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rt_waiter) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %timeout) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wait_setup(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_q_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_wait_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixup_pi_owner(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_wait_proxy_lock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_unqueue_pi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_hrtimer_on_stack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_futex(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_top_waiter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_lock_pi_atomic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__futex_unqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @futex_q_init, !1, !"futex_q_init", i1 false, i1 false}
!1 = !{!"../kernel/futex/requeue.c", i32 59, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/futex/requeue.c", i32 458, i32 10}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/futex/requeue.c", i32 136, i32 4}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../kernel/futex/requeue.c", i32 144, i32 4}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/futex/requeue.c", i32 704, i32 2}
!10 = !{!"sp"}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148341975, i64 2148342001, i64 2148342030, i64 2148342064, i64 2148342095, i64 2148342118}
!22 = !{i64 2151970235}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{!"auto-init"}
!25 = !{i64 2148344440, i64 2148344466, i64 2148344495, i64 2148344529, i64 2148344560, i64 2148344583}
!26 = !{i64 3073032}
!27 = !{i64 3073229}
!28 = !{i64 2150558462}
!29 = !{i64 2152018153, i64 2152018433, i64 2152018767, i64 2152019101}
!30 = !{i64 2148421682}
!31 = !{i64 2148443822}
!32 = !{i64 763392, i64 763416, i64 763437, i64 763454, i64 763471}
!33 = !{i64 2148444048}
!34 = !{i64 2152007748}
!35 = !{i64 2152007590}
!36 = !{i64 2152029897, i64 2152030384, i64 2152029934, i64 2152029990, i64 2152030024, i64 2152030048, i64 2152030089, i64 2152030110, i64 2152030138, i64 2152030172}
