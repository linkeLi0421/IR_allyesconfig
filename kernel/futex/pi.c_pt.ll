; ModuleID = '/llk/IR_all_yes/kernel/futex/pi.c_pt.bc'
source_filename = "../kernel/futex/pi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.futex_key = type { %struct.anon.40 }
%struct.anon.40 = type { i64, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.26, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.26 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.futex_pi_state = type { %struct.list_head, %struct.rt_mutex_base, ptr, %struct.refcount_struct, %union.futex_key }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.anon.6 = type { [16 x i8], %struct.lockdep_map }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.rt_mutex_waiter = type { %struct.rb_node, %struct.rb_node, ptr, ptr, i32, i32, i64, ptr }
%struct.rt_wake_q_head = type { %struct.wake_q_head, ptr }
%struct.wake_q_head = type { ptr, ptr }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [72 x i8] }
%struct.plist_head = type { %struct.list_head }

@get_pi_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kernel/futex/pi.c\00", [46 x i8] zeroinitializer }, align 32
@fixup_pi_owner.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@futex_q_init = external dso_local local_unnamed_addr constant %struct.futex_q, align 8
@futex_unlock_pi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__fixup_pi_state_owner.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__fixup_pi_state_owner.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@wake_futex_pi.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967282, i64 4294967285]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4294967280, i64 4294967282, i64 4294967285]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 4294967282, i64 4294967285]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 4294967282, i64 4294967285]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [21 x i8] c"../kernel/futex/pi.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 70, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @refill_pi_state_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pi_state_cache = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 168
  %4 = ptrtoint ptr %pi_state_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi_state_cache, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !23

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 88) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %owner, align 8
  %refcount = getelementptr inbounds %struct.futex_pi_state, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %10 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %refcount, align 4
  %key = getelementptr inbounds %struct.futex_pi_state, ptr %call7.i.i, i32 0, i32 4
  %11 = call ptr @memset(ptr %key, i32 0, i32 16)
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %pi_state_cache9 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 168
  %14 = ptrtoint ptr %pi_state_cache9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %pi_state_cache9, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @get_pi_state(ptr noundef %pi_state) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.futex_pi_state, ptr %pi_state, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %refcount) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !25

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !25

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #8
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %11 = phi i32 [ %8, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #8
  br i1 %tobool12.i.i.i.not, label %land.rhs, label %refcount_inc_not_zero.exit.if.end28_crit_edge

refcount_inc_not_zero.exit.if.end28_crit_edge:    ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.rhs:                                         ; preds = %refcount_inc_not_zero.exit
  %.b38 = load i1, ptr @get_pi_state.__already_done, align 1
  br i1 %.b38, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !25

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @get_pi_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %refcount_inc_not_zero.exit.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @put_pi_state(ptr noundef %pi_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi_state, null
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.end

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.futex_pi_state, ptr %pi_state, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end2, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end26_crit_edge, label %if.then10.i.i.i, !prof !25

if.end5.i.i.i.if.end26_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %if.end26

if.end2:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %pi_state, i32 0, i32 2
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 8
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %if.end2.if.end17_crit_edge, label %if.then4

if.end2.if.end17_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %pi_state, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_mutex) #8
  tail call fastcc void @pi_state_update_owner(ptr noundef nonnull %pi_state, ptr noundef null)
  tail call void @rt_mutex_proxy_unlock(ptr noundef %pi_mutex) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_mutex, i32 noundef %call5) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then4, %if.end2.if.end17_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %pi_state_cache = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 168
  %7 = ptrtoint ptr %pi_state_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi_state_cache, align 8
  %tobool19.not = icmp eq ptr %8, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %pi_state) #8
  br label %if.end26

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %owner, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %10 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %refcount, align 4
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %pi_state_cache25 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 168
  %13 = ptrtoint ptr %pi_state_cache25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pi_state, ptr %pi_state_cache25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then20, %if.then10.i.i.i, %if.end5.i.i.i.if.end26_crit_edge, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pi_state_update_owner(ptr noundef %pi_state, ptr noundef %new_owner) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %pi_state, i32 0, i32 2
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.futex_pi_state, ptr %pi_state, i32 0, i32 1, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !23

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool24.not = icmp eq ptr %1, null
  br i1 %tobool24.not, label %if.end.if.end60_crit_edge, label %if.then25

if.end.if.end60_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then25:                                        ; preds = %if.end
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %pi_lock) #8
  %3 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pi_state, align 4
  %cmp.i.not = icmp eq ptr %4, %pi_state
  br i1 %cmp.i.not, label %do.end44, label %if.then25.if.end50_crit_edge, !prof !23

if.then25.if.end50_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.end44:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 9, ptr noundef null) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.then25.if.end50_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pi_state) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.list_del_init.exit_crit_edge

if.end50.list_del_init.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pi_state, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi_state, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end50.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %pi_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pi_state, ptr %pi_state, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pi_state, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pi_state, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock) #8
  br label %if.end60

if.end60:                                         ; preds = %list_del_init.exit, %if.end.if.end60_crit_edge
  %tobool61.not = icmp eq ptr %new_owner, null
  br i1 %tobool61.not, label %if.end60.if.end102_crit_edge, label %if.then62

if.end60.if.end102_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then62:                                        ; preds = %if.end60
  %pi_lock63 = getelementptr inbounds %struct.task_struct, ptr %new_owner, i32 0, i32 128
  tail call void @_raw_spin_lock(ptr noundef %pi_lock63) #8
  %13 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pi_state, align 4
  %cmp.i118.not = icmp eq ptr %14, %pi_state
  br i1 %cmp.i118.not, label %if.then62.if.end91_crit_edge, label %do.end85, !prof !25

if.then62.if.end91_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.end85:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #8
  br label %if.end91

if.end91:                                         ; preds = %do.end85, %if.then62.if.end91_crit_edge
  %pi_state_list = getelementptr inbounds %struct.task_struct, ptr %new_owner, i32 0, i32 167
  %15 = ptrtoint ptr %pi_state_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pi_state_list, align 4
  %call.i.i120 = tail call zeroext i1 @__list_add_valid(ptr noundef %pi_state, ptr noundef %pi_state_list, ptr noundef %16) #8
  br i1 %call.i.i120, label %if.end.i.i121, label %if.end91.list_add.exit_crit_edge

if.end91.list_add.exit_crit_edge:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i121:                                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pi_state, ptr %prev1.i.i, align 4
  %18 = ptrtoint ptr %pi_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %pi_state, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %pi_state, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pi_state_list, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %pi_state_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %pi_state, ptr %pi_state_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i121, %if.end91.list_add.exit_crit_edge
  %21 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %new_owner, ptr %owner, align 8
  tail call void @_raw_spin_unlock(ptr noundef %pi_lock63) #8
  br label %if.end102

if.end102:                                        ; preds = %list_add.exit, %if.end60.if.end102_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_proxy_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_lock_pi_atomic(ptr noundef %uaddr, ptr noundef %hb, ptr noundef %key, ptr nocapture noundef writeonly %ps, ptr noundef %task, ptr nocapture noundef writeonly %exiting, i32 noundef %set_waiters) local_unnamed_addr #0 align 64 {
entry:
  %uval2.i.i = alloca i32, align 4
  %curval.i81 = alloca i32, align 4
  %curval.i = alloca i32, align 4
  %uval2.i = alloca i32, align 4
  %uval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval) #8
  %0 = ptrtoint ptr %uval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %uval, align 4, !annotation !29
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %task, i32 noundef 0, ptr noundef null) #8
  %call1 = call i32 @futex_get_value_locked(ptr noundef nonnull %uval, ptr noundef %uaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #8
  br i1 %call2, label %if.end.cleanup_crit_edge, label %if.end6, !prof !23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %1 = ptrtoint ptr %uval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %uval, align 4
  %and = and i32 %2, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %call.i)
  %cmp = icmp eq i32 %and, %call.i
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end14, !prof !23

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %call15 = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #8
  br i1 %call15, label %if.end14.cleanup_crit_edge, label %if.end23, !prof !23

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %call24 = call ptr @futex_top_waiter(ptr noundef %hb, ptr noundef %key) #8
  %tobool25.not = icmp eq ptr %call24, null
  %3 = ptrtoint ptr %uval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uval, align 4
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end23
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %call24, i32 0, i32 4
  %5 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi_state, align 8
  %and.i = and i32 %4, 1073741823
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval2.i) #8
  %7 = ptrtoint ptr %uval2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %uval2.i, align 4, !annotation !29
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then26.attach_to_pi_state.exit_crit_edge, label %if.end.i, !prof !23

if.then26.attach_to_pi_state.exit_crit_edge:      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %attach_to_pi_state.exit

if.end.i:                                         ; preds = %if.then26
  %refcount.i = getelementptr inbounds %struct.futex_pi_state, ptr %6, i32 0, i32 3
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcount.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i, label %do.end.i, label %if.end.i.if.end25.i_crit_edge, !prof !23

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 228, i32 noundef 9, ptr noundef null) #8
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end.i, %if.end.i.if.end25.i_crit_edge
  %pi_mutex.i = getelementptr inbounds %struct.futex_pi_state, ptr %6, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %pi_mutex.i) #8
  %call32.i = call i32 @futex_get_value_locked(ptr noundef nonnull %uval2.i, ptr noundef %uaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end25.i.out_error.i_crit_edge

if.end25.i.out_error.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error.i

if.end35.i:                                       ; preds = %if.end25.i
  %10 = ptrtoint ptr %uval2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uval2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %4)
  %cmp.not.i = icmp eq i32 %11, %4
  br i1 %cmp.not.i, label %if.end37.i, label %if.end35.i.out_error.i_crit_edge

if.end35.i.out_error.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error.i

if.end37.i:                                       ; preds = %if.end35.i
  %and38.i = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  %owner50.i = getelementptr inbounds %struct.futex_pi_state, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %owner50.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %owner50.i, align 8
  %tobool51.not.i = icmp eq ptr %13, null
  br i1 %tobool39.not.i, label %if.else.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool43.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool51.not.i, label %if.then42.i, label %if.end46.i

if.then42.i:                                      ; preds = %if.then40.i
  br i1 %tobool43.not.i, label %if.then42.i.out_attach.i_crit_edge, label %if.then42.i.out_error.i_crit_edge

if.then42.i.out_error.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error.i

if.then42.i.out_attach.i_crit_edge:               ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_attach.i

if.end46.i:                                       ; preds = %if.then40.i
  br i1 %tobool43.not.i, label %if.end46.i.out_attach.i_crit_edge, label %if.end46.i.if.end54.i_crit_edge

if.end46.i.if.end54.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.end46.i.out_attach.i_crit_edge:                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_attach.i

if.else.i:                                        ; preds = %if.end37.i
  br i1 %tobool51.not.i, label %if.else.i.out_error.i_crit_edge, label %if.else.i.if.end54.i_crit_edge

if.else.i.if.end54.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.else.i.out_error.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error.i

if.end54.i:                                       ; preds = %if.else.i.if.end54.i_crit_edge, %if.end46.i.if.end54.i_crit_edge
  %call.i.i = call i32 @__task_pid_nr_ns(ptr noundef nonnull %13, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %call.i.i)
  %cmp57.not.i = icmp eq i32 %and.i, %call.i.i
  br i1 %cmp57.not.i, label %if.end54.i.out_attach.i_crit_edge, label %if.end54.i.out_error.i_crit_edge

if.end54.i.out_error.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_error.i

if.end54.i.out_attach.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_attach.i

out_attach.i:                                     ; preds = %if.end54.i.out_attach.i_crit_edge, %if.end46.i.out_attach.i_crit_edge, %if.then42.i.out_attach.i_crit_edge
  call void @get_pi_state(ptr noundef nonnull %6) #8
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex.i) #8
  %14 = ptrtoint ptr %ps to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %ps, align 4
  br label %attach_to_pi_state.exit

out_error.i:                                      ; preds = %if.end54.i.out_error.i_crit_edge, %if.else.i.out_error.i_crit_edge, %if.then42.i.out_error.i_crit_edge, %if.end35.i.out_error.i_crit_edge, %if.end25.i.out_error.i_crit_edge
  %ret.0.i = phi i32 [ -22, %if.end54.i.out_error.i_crit_edge ], [ -22, %if.else.i.out_error.i_crit_edge ], [ -22, %if.then42.i.out_error.i_crit_edge ], [ -11, %if.end35.i.out_error.i_crit_edge ], [ -14, %if.end25.i.out_error.i_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex.i) #8
  br label %attach_to_pi_state.exit

attach_to_pi_state.exit:                          ; preds = %out_error.i, %out_attach.i, %if.then26.attach_to_pi_state.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out_error.i ], [ 0, %out_attach.i ], [ -22, %if.then26.attach_to_pi_state.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval2.i) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %and29 = and i32 %4, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end45

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_waiters)
  %tobool33.not = icmp eq i32 %set_waiters, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curval.i) #8
  %15 = ptrtoint ptr %curval.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %curval.i, align 4, !annotation !29
  %call.i77 = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #8
  br i1 %call.i77, label %if.then31.lock_pi_update_atomic.exit.thread_crit_edge, label %if.end.i78, !prof !23

if.then31.lock_pi_update_atomic.exit.thread_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_pi_update_atomic.exit.thread

if.end.i78:                                       ; preds = %if.then31
  %and32 = and i32 %4, 1073741824
  %or = or i32 %and32, %call.i
  %or35 = or i32 %or, -2147483648
  %spec.select = select i1 %tobool33.not, i32 %or, i32 %or35
  %call2.i = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %curval.i, ptr noundef %uaddr, i32 noundef %4, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %lock_pi_update_atomic.exit, label %if.end.i78.lock_pi_update_atomic.exit.thread_crit_edge, !prof !25

if.end.i78.lock_pi_update_atomic.exit.thread_crit_edge: ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_pi_update_atomic.exit.thread

lock_pi_update_atomic.exit.thread:                ; preds = %if.end.i78.lock_pi_update_atomic.exit.thread_crit_edge, %if.then31.lock_pi_update_atomic.exit.thread_crit_edge
  %retval.0.i80.ph = phi i32 [ %call2.i, %if.end.i78.lock_pi_update_atomic.exit.thread_crit_edge ], [ -14, %if.then31.lock_pi_update_atomic.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #8
  br label %cleanup

lock_pi_update_atomic.exit:                       ; preds = %if.end.i78
  %16 = ptrtoint ptr %curval.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %curval.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %4)
  %cmp.not.i79 = icmp eq i32 %17, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #8
  %tobool38.not.not = xor i1 %cmp.not.i79, true
  %brmerge = or i1 %tobool33.not, %tobool38.not.not
  %call37.mux = select i1 %cmp.not.i79, i32 1, i32 -11
  br i1 %brmerge, label %lock_pi_update_atomic.exit.cleanup_crit_edge, label %if.then42

lock_pi_update_atomic.exit.cleanup_crit_edge:     ; preds = %lock_pi_update_atomic.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %lock_pi_update_atomic.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 128
  call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #8
  call fastcc void @__attach_to_pi_owner(ptr noundef %task, ptr noundef %key, ptr noundef %ps)
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end28
  %or46 = or i32 %4, -2147483648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curval.i81) #8
  %18 = ptrtoint ptr %curval.i81 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %curval.i81, align 4, !annotation !29
  %call.i82 = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #8
  br i1 %call.i82, label %if.end45.lock_pi_update_atomic.exit90.thread_crit_edge, label %if.end.i85, !prof !23

if.end45.lock_pi_update_atomic.exit90.thread_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_pi_update_atomic.exit90.thread

if.end.i85:                                       ; preds = %if.end45
  %call2.i83 = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %curval.i81, ptr noundef %uaddr, i32 noundef %4, i32 noundef %or46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i83)
  %tobool3.not.i84 = icmp eq i32 %call2.i83, 0
  br i1 %tobool3.not.i84, label %if.end11.i88, label %if.end.i85.lock_pi_update_atomic.exit90.thread_crit_edge, !prof !25

if.end.i85.lock_pi_update_atomic.exit90.thread_crit_edge: ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_pi_update_atomic.exit90.thread

if.end11.i88:                                     ; preds = %if.end.i85
  %19 = ptrtoint ptr %curval.i81 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %curval.i81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %4)
  %cmp.not.i86 = icmp eq i32 %20, %4
  br i1 %cmp.not.i86, label %if.end.i94, label %if.end11.i88.lock_pi_update_atomic.exit90.thread_crit_edge

if.end11.i88.lock_pi_update_atomic.exit90.thread_crit_edge: ; preds = %if.end11.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_pi_update_atomic.exit90.thread

lock_pi_update_atomic.exit90.thread:              ; preds = %if.end11.i88.lock_pi_update_atomic.exit90.thread_crit_edge, %if.end.i85.lock_pi_update_atomic.exit90.thread_crit_edge, %if.end45.lock_pi_update_atomic.exit90.thread_crit_edge
  %retval.0.i89.ph = phi i32 [ %call2.i83, %if.end.i85.lock_pi_update_atomic.exit90.thread_crit_edge ], [ -14, %if.end45.lock_pi_update_atomic.exit90.thread_crit_edge ], [ -11, %if.end11.i88.lock_pi_update_atomic.exit90.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i81) #8
  br label %cleanup

if.end.i94:                                       ; preds = %if.end11.i88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i81) #8
  %call.i93 = call ptr @find_get_task_by_vpid(i32 noundef %and29) #8
  %tobool1.not.i = icmp eq ptr %call.i93, null
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval2.i.i) #8
  %21 = ptrtoint ptr %uval2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %uval2.i.i, align 4, !annotation !29
  %call.i.i95 = call i32 @futex_get_value_locked(ptr noundef nonnull %uval2.i.i, ptr noundef %uaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %tobool1.not.i.i = icmp eq i32 %call.i.i95, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %if.then2.i.handle_exit_race.exit.i_crit_edge

if.then2.i.handle_exit_race.exit.i_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_exit_race.exit.i

if.end3.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %uval2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uval2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %or46)
  %cmp4.not.i.i = icmp eq i32 %23, %or46
  %..i.i = select i1 %cmp4.not.i.i, i32 -3, i32 -11
  br label %handle_exit_race.exit.i

handle_exit_race.exit.i:                          ; preds = %if.end3.i.i, %if.then2.i.handle_exit_race.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -14, %if.then2.i.handle_exit_race.exit.i_crit_edge ], [ %..i.i, %if.end3.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval2.i.i) #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i94
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %call.i93, i32 0, i32 3
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and5.i = and i32 %25, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end10.i, label %if.then9.i, !prof !25

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @put_task_struct(ptr noundef nonnull %call.i93) #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end4.i
  %pi_lock.i = getelementptr inbounds %struct.task_struct, ptr %call.i93, i32 0, i32 128
  call void @_raw_spin_lock_irq(ptr noundef %pi_lock.i) #8
  %futex_state.i = getelementptr inbounds %struct.task_struct, ptr %call.i93, i32 0, i32 170
  %26 = ptrtoint ptr %futex_state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %futex_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i96 = icmp eq i32 %27, 0
  br i1 %cmp.not.i96, label %if.end23.i, label %if.then17.i, !prof !25

if.then17.i:                                      ; preds = %if.end10.i
  %call18.i = call fastcc i32 @handle_exit_race(ptr noundef %uaddr, i32 noundef %or46, ptr noundef nonnull %call.i93) #8
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call18.i)
  %cmp20.i = icmp eq i32 %call18.i, -16
  br i1 %cmp20.i, label %if.then21.i, label %if.else.i97

if.then21.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %exiting to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i93, ptr %exiting, align 4
  br label %cleanup

if.else.i97:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @put_task_struct(ptr noundef nonnull %call.i93) #8
  br label %cleanup

if.end23.i:                                       ; preds = %if.end10.i
  call fastcc void @__attach_to_pi_owner(ptr noundef nonnull %call.i93, ptr noundef %key, ptr noundef %ps) #8
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock.i) #8
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %call.i93, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #8
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  call void @__put_task_struct(ptr noundef nonnull %call.i93) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.else.i97, %if.then21.i, %if.then9.i, %handle_exit_race.exit.i, %lock_pi_update_atomic.exit90.thread, %if.then42, %lock_pi_update_atomic.exit.cleanup_crit_edge, %lock_pi_update_atomic.exit.thread, %attach_to_pi_state.exit, %if.end14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %attach_to_pi_state.exit ], [ -14, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -35, %if.end6.cleanup_crit_edge ], [ -35, %if.end14.cleanup_crit_edge ], [ %call37.mux, %lock_pi_update_atomic.exit.cleanup_crit_edge ], [ 1, %if.then42 ], [ %retval.0.i80.ph, %lock_pi_update_atomic.exit.thread ], [ %retval.0.i89.ph, %lock_pi_update_atomic.exit90.thread ], [ -1, %if.then9.i ], [ %retval.0.i.i, %handle_exit_race.exit.i ], [ %call18.i, %if.else.i97 ], [ -16, %if.then21.i ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_get_value_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_futex(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_top_waiter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__attach_to_pi_owner(ptr noundef %p, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %ps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %pi_state_cache.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 168
  %4 = ptrtoint ptr %pi_state_cache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi_state_cache.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.alloc_pi_state.exit_crit_edge, !prof !23

entry.alloc_pi_state.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_pi_state.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef null) #8
  br label %alloc_pi_state.exit

alloc_pi_state.exit:                              ; preds = %do.end.i, %entry.alloc_pi_state.exit_crit_edge
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %pi_state_cache23.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 168
  %8 = ptrtoint ptr %pi_state_cache23.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %pi_state_cache23.i, align 8
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %5, i32 0, i32 1
  tail call void @rt_mutex_init_proxy_locked(ptr noundef %pi_mutex, ptr noundef %p) #8
  %key1 = getelementptr inbounds %struct.futex_pi_state, ptr %5, i32 0, i32 4
  %9 = call ptr @memcpy(ptr %key1, ptr %key, i32 16)
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %5, align 4
  %cmp.i.not = icmp eq ptr %11, %5
  br i1 %cmp.i.not, label %alloc_pi_state.exit.if.end_crit_edge, label %do.end, !prof !25

alloc_pi_state.exit.if.end_crit_edge:             ; preds = %alloc_pi_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %alloc_pi_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %alloc_pi_state.exit.if.end_crit_edge
  %pi_state_list = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 167
  %12 = ptrtoint ptr %pi_state_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pi_state_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %pi_state_list, ptr noundef %13) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %5, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %5, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pi_state_list, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %pi_state_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %5, ptr %pi_state_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %p, ptr %owner, align 8
  %19 = ptrtoint ptr %ps to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %5, ptr %ps, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fixup_pi_owner(ptr noundef %uaddr, ptr nocapture noundef readonly %q, i32 noundef %locked) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %locked)
  %tobool.not = icmp eq i32 %locked, 0
  %pi_state6 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %pi_state6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi_state6, align 8
  %owner7 = getelementptr inbounds %struct.futex_pi_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %owner7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner7, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i73 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i73 to ptr
  %task9 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task9, align 8
  %cmp10 = icmp eq ptr %3, %7
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp10, label %if.then.return_crit_edge, label %if.then.return.sink.split_crit_edge

if.then.return.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end5:                                          ; preds = %entry
  br i1 %cmp10, label %if.end5.return.sink.split_crit_edge, label %if.end13

if.end5.return.sink.split_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

if.end13:                                         ; preds = %if.end5
  %owner1.i = getelementptr inbounds %struct.futex_pi_state, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %owner1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %owner1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %and.i74 = and i32 %10, -2
  %11 = inttoptr i32 %and.i74 to ptr
  %cmp18 = icmp eq ptr %7, %11
  br i1 %cmp18, label %land.rhs, label %if.end13.return_crit_edge

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.rhs:                                         ; preds = %if.end13
  %.b71 = load i1, ptr @fixup_pi_owner.__already_done, align 1
  br i1 %.b71, label %land.rhs.if.then57_crit_edge, label %if.then26, !prof !25

land.rhs.if.then57_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57

if.then26:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fixup_pi_owner.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 915, i32 noundef 9, ptr noundef null) #8
  br label %if.then57

if.then57:                                        ; preds = %if.then26, %land.rhs.if.then57_crit_edge
  %12 = ptrtoint ptr %task9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task9, align 8
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then57, %if.end5.return.sink.split_crit_edge, %if.then.return.sink.split_crit_edge
  %.sink = phi ptr [ %13, %if.then57 ], [ %7, %if.then.return.sink.split_crit_edge ], [ null, %if.end5.return.sink.split_crit_edge ]
  %call60 = tail call fastcc i32 @fixup_pi_state_owner(ptr noundef %uaddr, ptr noundef %q, ptr noundef %.sink)
  br label %return

return:                                           ; preds = %return.sink.split, %if.end13.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.return_crit_edge ], [ 0, %if.end13.return_crit_edge ], [ %call60, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fixup_pi_state_owner(ptr noundef %uaddr, ptr nocapture noundef readonly %q, ptr noundef %argowner) unnamed_addr #0 align 64 {
entry:
  %uval.i = alloca i32, align 4
  %curval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pi_state1 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %pi_state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi_state1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %3 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock_ptr, align 8
  %dep_map = getelementptr inbounds %struct.anon.6, ptr %4, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !23

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 861, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %pi_mutex) #8
  %5 = ptrtoint ptr %pi_state1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pi_state1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval.i) #8
  %7 = ptrtoint ptr %uval.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %uval.i, align 4, !annotation !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curval.i) #8
  %8 = ptrtoint ptr %curval.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %curval.i, align 4, !annotation !29
  %owner.i = getelementptr inbounds %struct.futex_pi_state, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i, align 8
  %tobool.not.i = icmp eq ptr %argowner, null
  %pi_mutex.i = getelementptr inbounds %struct.futex_pi_state, ptr %6, i32 0, i32 1
  %owner1.i.i = getelementptr inbounds %struct.futex_pi_state, ptr %6, i32 0, i32 1, i32 2
  %lock_ptr.i = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  br label %retry.i

retry.i:                                          ; preds = %if.end154.i.retry.i_crit_edge, %if.end
  %11 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %retry.i
  %cmp.not.i = icmp eq ptr %10, %14
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i.__fixup_pi_state_owner.exit_crit_edge

if.then.i.__fixup_pi_state_owner.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__fixup_pi_state_owner.exit

if.end.i:                                         ; preds = %if.then.i
  %call3.i = call i32 @__rt_mutex_futex_trylock(ptr noundef %pi_mutex.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.__fixup_pi_state_owner.exit_crit_edge

if.end.i.__fixup_pi_state_owner.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__fixup_pi_state_owner.exit

if.end6.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %owner1.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %and.i200.i = and i32 %17, -2
  %18 = inttoptr i32 %and.i200.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200.i)
  %tobool9.not.i = icmp eq i32 %and.i200.i, 0
  br i1 %tobool9.not.i, label %handle_err.thread.i, label %if.end6.i.if.end67.i_crit_edge, !prof !23

if.end6.i.if.end67.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

handle_err.thread.i:                              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex.i) #8
  %19 = ptrtoint ptr %lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock_ptr.i, align 8
  call void @_raw_spin_unlock(ptr noundef %20) #8
  br label %sw.bb91.i

if.else.i:                                        ; preds = %retry.i
  %cmp17.not.i = icmp eq ptr %14, %argowner
  br i1 %cmp17.not.i, label %if.else.i.if.end54.i_crit_edge, label %land.rhs.i

if.else.i.if.end54.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

land.rhs.i:                                       ; preds = %if.else.i
  %.b199.i = load i1, ptr @__fixup_pi_state_owner.__already_done, align 1
  br i1 %.b199.i, label %land.rhs.i.if.end54.i_crit_edge, label %if.then32.i, !prof !25

land.rhs.i.if.end54.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then32.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__fixup_pi_state_owner.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 749, i32 noundef 9, ptr noundef null) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then32.i, %land.rhs.i.if.end54.i_crit_edge, %if.else.i.if.end54.i_crit_edge
  %21 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i, align 8
  %cmp64.i = icmp eq ptr %10, %22
  br i1 %cmp64.i, label %if.end54.i.__fixup_pi_state_owner.exit_crit_edge, label %if.end54.i.if.end67.i_crit_edge

if.end54.i.if.end67.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

if.end54.i.__fixup_pi_state_owner.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__fixup_pi_state_owner.exit

if.end67.i:                                       ; preds = %if.end54.i.if.end67.i_crit_edge, %if.end6.i.if.end67.i_crit_edge
  %newowner.0.i = phi ptr [ %18, %if.end6.i.if.end67.i_crit_edge ], [ %argowner, %if.end54.i.if.end67.i_crit_edge ]
  %call.i.i = call i32 @__task_pid_nr_ns(ptr noundef nonnull %newowner.0.i, i32 noundef 0, ptr noundef null) #8
  %23 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %owner.i, align 8
  %tobool70.not.i = icmp eq ptr %24, null
  %spec.select.v.i = select i1 %tobool70.not.i, i32 -1073741824, i32 -2147483648
  %spec.select.i = or i32 %spec.select.v.i, %call.i.i
  %call74.i = call i32 @futex_get_value_locked(ptr noundef nonnull %uval.i, ptr noundef %uaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %for.cond.preheader.i, label %if.end67.i.handle_err.i_crit_edge

if.end67.i.handle_err.i_crit_edge:                ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_err.i

for.cond.preheader.i:                             ; preds = %if.end67.i
  %25 = ptrtoint ptr %uval.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uval.i, align 4
  %and217.i = and i32 %26, 1073741824
  %or78218.i = or i32 %and217.i, %spec.select.i
  %call79219.i = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %curval.i, ptr noundef %uaddr, i32 noundef %26, i32 noundef %or78218.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79219.i)
  %tobool80.not220.i = icmp eq i32 %call79219.i, 0
  br i1 %tobool80.not220.i, label %for.cond.preheader.i.if.end82.i_crit_edge, label %for.cond.preheader.i.handle_err.i_crit_edge

for.cond.preheader.i.handle_err.i_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_err.i

for.cond.preheader.i.if.end82.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.end85.i.if.end82.i_crit_edge, %for.cond.preheader.i.if.end82.i_crit_edge
  %27 = ptrtoint ptr %curval.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %curval.i, align 4
  %29 = ptrtoint ptr %uval.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uval.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp83.i = icmp eq i32 %28, %30
  br i1 %cmp83.i, label %for.end.i, label %if.end85.i

if.end85.i:                                       ; preds = %if.end82.i
  %31 = ptrtoint ptr %uval.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %uval.i, align 4
  %and.i = and i32 %28, 1073741824
  %or78.i = or i32 %and.i, %spec.select.i
  %call79.i = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %curval.i, ptr noundef %uaddr, i32 noundef %28, i32 noundef %or78.i) #8
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end85.i.if.end82.i_crit_edge, label %if.end85.i.handle_err.i_crit_edge

if.end85.i.handle_err.i_crit_edge:                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_err.i

if.end85.i.if.end82.i_crit_edge:                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.i

for.end.i:                                        ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @pi_state_update_owner(ptr noundef %6, ptr noundef %newowner.0.i) #8
  %32 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i202.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i202.i to ptr
  %task87.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task87.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task87.i, align 8
  %cmp88.i = icmp eq ptr %35, %argowner
  %conv.i = zext i1 %cmp88.i to i32
  br label %__fixup_pi_state_owner.exit

handle_err.i:                                     ; preds = %if.end85.i.handle_err.i_crit_edge, %for.cond.preheader.i.handle_err.i_crit_edge, %if.end67.i.handle_err.i_crit_edge
  %err.0.i = phi i32 [ %call74.i, %if.end67.i.handle_err.i_crit_edge ], [ %call79219.i, %for.cond.preheader.i.handle_err.i_crit_edge ], [ %call79.i, %if.end85.i.handle_err.i_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex.i) #8
  %36 = ptrtoint ptr %lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock_ptr.i, align 8
  call void @_raw_spin_unlock(ptr noundef %37) #8
  %38 = zext i32 %err.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.0.i, label %land.end101.i [
    i32 -14, label %sw.bb.i
    i32 -11, label %handle_err.i.sw.bb91.i_crit_edge
  ]

handle_err.i.sw.bb91.i_crit_edge:                 ; preds = %handle_err.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb91.i

sw.bb.i:                                          ; preds = %handle_err.i
  call void @__sanitizer_cov_trace_pc() #10
  %call90.i = call i32 @fault_in_user_writeable(ptr noundef %uaddr) #8
  br label %sw.epilog.i

sw.bb91.i:                                        ; preds = %handle_err.i.sw.bb91.i_crit_edge, %handle_err.thread.i
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 812, i32 noundef 0) #8
  %call.i203.i = call i32 @__cond_resched() #8
  br label %sw.epilog.i

land.end101.i:                                    ; preds = %handle_err.i
  %.b197198.i = load i1, ptr @__fixup_pi_state_owner.__already_done.1, align 1
  br i1 %.b197198.i, label %land.end101.i.sw.epilog.i_crit_edge, label %if.then108.i, !prof !25

land.end101.i.sw.epilog.i_crit_edge:              ; preds = %land.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then108.i:                                     ; preds = %land.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__fixup_pi_state_owner.__already_done.1, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 817, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then108.i, %land.end101.i.sw.epilog.i_crit_edge, %sw.bb91.i, %sw.bb.i
  %err.1.i = phi i32 [ 0, %sw.bb91.i ], [ %call90.i, %sw.bb.i ], [ %err.0.i, %if.then108.i ], [ %err.0.i, %land.end101.i.sw.epilog.i_crit_edge ]
  %39 = ptrtoint ptr %lock_ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lock_ptr.i, align 8
  call void @_raw_spin_lock(ptr noundef %40) #8
  call void @_raw_spin_lock_irq(ptr noundef %pi_mutex.i) #8
  %41 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %owner.i, align 8
  %cmp147.not.i = icmp eq ptr %42, %10
  br i1 %cmp147.not.i, label %if.end154.i, label %if.then149.i

if.then149.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i204.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i204.i to ptr
  %task151.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task151.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task151.i, align 8
  %cmp152.i = icmp eq ptr %46, %argowner
  %conv153.i = zext i1 %cmp152.i to i32
  br label %__fixup_pi_state_owner.exit

if.end154.i:                                      ; preds = %sw.epilog.i
  %tobool155.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool155.not.i, label %if.end154.i.retry.i_crit_edge, label %if.end157.i

if.end154.i.retry.i_crit_edge:                    ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.i

if.end157.i:                                      ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %owner1.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i206.i = and i32 %49, -2
  %50 = inttoptr i32 %and.i206.i to ptr
  call fastcc void @pi_state_update_owner(ptr noundef %6, ptr noundef %50) #8
  br label %__fixup_pi_state_owner.exit

__fixup_pi_state_owner.exit:                      ; preds = %if.end157.i, %if.then149.i, %for.end.i, %if.end54.i.__fixup_pi_state_owner.exit_crit_edge, %if.end.i.__fixup_pi_state_owner.exit_crit_edge, %if.then.i.__fixup_pi_state_owner.exit_crit_edge
  %retval.0.i = phi i32 [ %conv153.i, %if.then149.i ], [ %err.1.i, %if.end157.i ], [ %conv.i, %for.end.i ], [ 0, %if.then.i.__fixup_pi_state_owner.exit_crit_edge ], [ 1, %if.end.i.__fixup_pi_state_owner.exit_crit_edge ], [ 1, %if.end54.i.__fixup_pi_state_owner.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval.i) #8
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_lock_pi(ptr noundef %uaddr, i32 noundef %flags, ptr noundef %time, i32 noundef %trylock) local_unnamed_addr #0 align 64 {
entry:
  %timeout = alloca %struct.hrtimer_sleeper, align 8
  %exiting = alloca ptr, align 4
  %rt_waiter = alloca %struct.rt_mutex_waiter, align 8
  %q = alloca %struct.futex_q, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %timeout) #8
  %0 = call ptr @memset(ptr %timeout, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exiting) #8
  %1 = ptrtoint ptr %exiting to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %exiting, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rt_waiter) #8
  %2 = call ptr @memset(ptr %rt_waiter, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %q) #8
  %3 = call ptr @memcpy(ptr %q, ptr @futex_q_init, i32 72)
  %4 = tail call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %pi_state_cache.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 168
  %8 = ptrtoint ptr %pi_state_cache.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pi_state_cache.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !23

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 88) #11
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup123_crit_edge, label %if.end6.i

if.end.i.cleanup123_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup123

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %owner.i = getelementptr inbounds %struct.futex_pi_state, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %owner.i, align 8
  %refcount.i = getelementptr inbounds %struct.futex_pi_state, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  %14 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %refcount.i, align 4
  %key.i = getelementptr inbounds %struct.futex_pi_state, ptr %call7.i.i.i, i32 0, i32 4
  %15 = call ptr @memset(ptr %key.i, i32 0, i32 16)
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %pi_state_cache9.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 168
  %18 = ptrtoint ptr %pi_state_cache9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %pi_state_cache9.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end6.i, %entry.if.end_crit_edge
  %call1 = call ptr @futex_setup_timer(ptr noundef %time, ptr noundef nonnull %timeout, i32 noundef %flags, i64 noundef 0) #8
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2 = icmp ne i32 %and, 0
  %key = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3
  %call3205 = call i32 @get_futex_key(ptr noundef %uaddr, i1 noundef zeroext %tobool2, ptr noundef %key, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3205)
  %cmp.not206 = icmp eq i32 %call3205, 0
  br i1 %cmp.not206, label %retry_private.preheader.lr.ph, label %if.end.out_crit_edge, !prof !25

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

retry_private.preheader.lr.ph:                    ; preds = %if.end
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4
  br label %retry_private

retry_private:                                    ; preds = %retry_private.backedge, %retry_private.preheader.lr.ph
  %call8 = call ptr @futex_q_lock(ptr noundef nonnull %q) #8
  %19 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %call11 = call i32 @futex_lock_pi_atomic(ptr noundef %uaddr, ptr noundef %call8, ptr noundef %key, ptr noundef %pi_state, ptr noundef %22, ptr noundef nonnull %exiting, i32 noundef 0)
  %23 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %call11, label %out_unlock_put_key.loopexit [
    i32 0, label %if.end23
    i32 1, label %retry_private.out_unlock_put_key_crit_edge
    i32 -14, label %uaddr_faulted
    i32 -16, label %retry_private.sw.bb21_crit_edge
    i32 -11, label %retry_private.sw.bb21_crit_edge285
  ], !prof !30

retry_private.sw.bb21_crit_edge285:               ; preds = %retry_private
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

retry_private.sw.bb21_crit_edge:                  ; preds = %retry_private
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21

retry_private.out_unlock_put_key_crit_edge:       ; preds = %retry_private
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_put_key

sw.bb21:                                          ; preds = %retry_private.sw.bb21_crit_edge, %retry_private.sw.bb21_crit_edge285
  call void @futex_q_unlock(ptr noundef %call8) #8
  %24 = ptrtoint ptr %exiting to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %exiting, align 4
  call void @wait_for_owner_exiting(i32 noundef %call11, ptr noundef %25) #8
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 984, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end118.retry.backedge_crit_edge, %sw.bb21
  %call3 = call i32 @get_futex_key(ptr noundef %uaddr, i1 noundef zeroext %tobool2, ptr noundef %key, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %retry.backedge.retry_private.backedge_crit_edge, label %retry.backedge.out_crit_edge, !prof !25

retry.backedge.out_crit_edge:                     ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

retry.backedge.retry_private.backedge_crit_edge:  ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry_private.backedge

if.end23:                                         ; preds = %retry_private
  %26 = inttoptr i32 %and.i to ptr
  %task.le = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pi_state, align 8
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %do.end, label %if.end23.if.end46_crit_edge, !prof !23

if.end23.if.end46_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end46

if.end46:                                         ; preds = %do.end, %if.end23.if.end46_crit_edge
  call void @__futex_queue(ptr noundef nonnull %q, ptr noundef %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trylock)
  %tobool54.not = icmp eq i32 %trylock, 0
  br i1 %tobool54.not, label %if.end59, label %if.then55

if.then55:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pi_state, align 8
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %30, i32 0, i32 1
  %call57 = call i32 @rt_mutex_futex_trylock(ptr noundef %pi_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  %spec.select = select i1 %tobool58.not, i32 -11, i32 0
  br label %no_block

if.end59:                                         ; preds = %if.end46
  %31 = call ptr @memset(ptr %rt_waiter, i32 17, i32 56)
  %pi_tree_entry.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %rt_waiter, i32 0, i32 1
  %32 = ptrtoint ptr %pi_tree_entry.i to i32
  %33 = ptrtoint ptr %pi_tree_entry.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %pi_tree_entry.i, align 4
  %34 = ptrtoint ptr %rt_waiter to i32
  %35 = ptrtoint ptr %rt_waiter to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rt_waiter, align 8
  %wake_state.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %rt_waiter, i32 0, i32 4
  %36 = ptrtoint ptr %wake_state.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %wake_state.i, align 8
  %task.i161 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %rt_waiter, i32 0, i32 2
  %37 = ptrtoint ptr %task.i161 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %task.i161, align 8
  %38 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pi_state, align 8
  %pi_mutex61 = getelementptr inbounds %struct.futex_pi_state, ptr %39, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %pi_mutex61) #8
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %40 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock_ptr, align 8
  call void @_raw_spin_unlock(ptr noundef %41) #8
  %42 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pi_state, align 8
  %pi_mutex63 = getelementptr inbounds %struct.futex_pi_state, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %task.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.le, align 8
  %call66 = call i32 @__rt_mutex_start_proxy_lock(ptr noundef %pi_mutex63, ptr noundef nonnull %rt_waiter, ptr noundef %45) #8
  %46 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pi_state, align 8
  %pi_mutex68 = getelementptr inbounds %struct.futex_pi_state, ptr %47, i32 0, i32 1
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex68) #8
  %48 = zext i32 %call66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call66, label %cleanup.thread168 [
    i32 0, label %if.end75
    i32 1, label %cleanup.thread
  ]

cleanup.thread168:                                ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lock_ptr, align 8
  call void @_raw_spin_lock(ptr noundef %50) #8
  br label %land.lhs.true

cleanup.thread:                                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lock_ptr, align 8
  call void @_raw_spin_lock(ptr noundef %52) #8
  br label %no_block

if.end75:                                         ; preds = %if.end59
  %tobool76.not = icmp eq ptr %call1, null
  br i1 %tobool76.not, label %if.end75.cleanup_crit_edge, label %if.then83, !prof !25

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then83:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  call void @hrtimer_sleeper_start_expires(ptr noundef nonnull %call1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %if.end75.cleanup_crit_edge
  %53 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pi_state, align 8
  %pi_mutex86 = getelementptr inbounds %struct.futex_pi_state, ptr %54, i32 0, i32 1
  %call87 = call i32 @rt_mutex_wait_proxy_lock(ptr noundef %pi_mutex86, ptr noundef %call1, ptr noundef nonnull %rt_waiter) #8
  %55 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lock_ptr, align 8
  call void @_raw_spin_lock(ptr noundef %56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool89.not = icmp eq i32 %call87, 0
  br i1 %tobool89.not, label %cleanup.no_block_crit_edge, label %cleanup.land.lhs.true_crit_edge

cleanup.land.lhs.true_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

cleanup.no_block_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_block

land.lhs.true:                                    ; preds = %cleanup.land.lhs.true_crit_edge, %cleanup.thread168
  %ret.0171 = phi i32 [ %call66, %cleanup.thread168 ], [ %call87, %cleanup.land.lhs.true_crit_edge ]
  %57 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pi_state, align 8
  %pi_mutex91 = getelementptr inbounds %struct.futex_pi_state, ptr %58, i32 0, i32 1
  %call92 = call zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef %pi_mutex91, ptr noundef nonnull %rt_waiter) #8
  %spec.select245 = select i1 %call92, i32 %ret.0171, i32 0
  br label %no_block

no_block:                                         ; preds = %land.lhs.true, %cleanup.no_block_crit_edge, %cleanup.thread, %if.then55
  %ret.1 = phi i32 [ 0, %cleanup.no_block_crit_edge ], [ 0, %cleanup.thread ], [ %spec.select, %if.then55 ], [ %spec.select245, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool95.not.not = icmp eq i32 %ret.1, 0
  %59 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pi_state, align 8
  %owner7.i = getelementptr inbounds %struct.futex_pi_state, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %owner7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %owner7.i, align 8
  %63 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i73.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i73.i to ptr
  %task9.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task9.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task9.i, align 8
  %cmp10.i = icmp eq ptr %62, %66
  br i1 %tobool95.not.not, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %no_block
  br i1 %cmp10.i, label %if.then.i.fixup_pi_owner.exit.thread_crit_edge, label %if.then.i.fixup_pi_owner.exit_crit_edge

if.then.i.fixup_pi_owner.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixup_pi_owner.exit

if.then.i.fixup_pi_owner.exit.thread_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixup_pi_owner.exit.thread

if.end5.i:                                        ; preds = %no_block
  br i1 %cmp10.i, label %if.end5.i.fixup_pi_owner.exit_crit_edge, label %if.end13.i

if.end5.i.fixup_pi_owner.exit_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixup_pi_owner.exit

if.end13.i:                                       ; preds = %if.end5.i
  %owner1.i.i = getelementptr inbounds %struct.futex_pi_state, ptr %60, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %owner1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %owner1.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  %and.i74.i = and i32 %69, -2
  %70 = inttoptr i32 %and.i74.i to ptr
  %cmp18.i = icmp eq ptr %66, %70
  br i1 %cmp18.i, label %land.rhs.i, label %if.end13.i.fixup_pi_owner.exit.thread.thread_crit_edge

if.end13.i.fixup_pi_owner.exit.thread.thread_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixup_pi_owner.exit.thread.thread

land.rhs.i:                                       ; preds = %if.end13.i
  %.b71.i = load i1, ptr @fixup_pi_owner.__already_done, align 1
  br i1 %.b71.i, label %land.rhs.i.if.then57.i_crit_edge, label %if.then26.i, !prof !25

land.rhs.i.if.then57.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57.i

if.then26.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fixup_pi_owner.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 915, i32 noundef 9, ptr noundef null) #8
  br label %if.then57.i

if.then57.i:                                      ; preds = %if.then26.i, %land.rhs.i.if.then57.i_crit_edge
  %71 = ptrtoint ptr %task9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %task9.i, align 8
  br label %fixup_pi_owner.exit

fixup_pi_owner.exit:                              ; preds = %if.then57.i, %if.end5.i.fixup_pi_owner.exit_crit_edge, %if.then.i.fixup_pi_owner.exit_crit_edge
  %.sink.i = phi ptr [ %72, %if.then57.i ], [ %66, %if.then.i.fixup_pi_owner.exit_crit_edge ], [ null, %if.end5.i.fixup_pi_owner.exit_crit_edge ]
  %call60.i = call fastcc i32 @fixup_pi_state_owner(ptr noundef %uaddr, ptr noundef nonnull %q, ptr noundef %.sink.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool99.not.not = icmp eq i32 %call60.i, 0
  %73 = call i32 @llvm.smin.i32(i32 %call60.i, i32 0)
  br i1 %tobool99.not.not, label %fixup_pi_owner.exit.fixup_pi_owner.exit.thread.thread_crit_edge, label %fixup_pi_owner.exit.fixup_pi_owner.exit.thread_crit_edge

fixup_pi_owner.exit.fixup_pi_owner.exit.thread_crit_edge: ; preds = %fixup_pi_owner.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixup_pi_owner.exit.thread

fixup_pi_owner.exit.fixup_pi_owner.exit.thread.thread_crit_edge: ; preds = %fixup_pi_owner.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixup_pi_owner.exit.thread.thread

fixup_pi_owner.exit.thread.thread:                ; preds = %fixup_pi_owner.exit.fixup_pi_owner.exit.thread.thread_crit_edge, %if.end13.i.fixup_pi_owner.exit.thread.thread_crit_edge
  br label %fixup_pi_owner.exit.thread

fixup_pi_owner.exit.thread:                       ; preds = %fixup_pi_owner.exit.thread.thread, %fixup_pi_owner.exit.fixup_pi_owner.exit.thread_crit_edge, %if.then.i.fixup_pi_owner.exit.thread_crit_edge
  %74 = phi i32 [ %ret.1, %fixup_pi_owner.exit.thread.thread ], [ 0, %if.then.i.fixup_pi_owner.exit.thread_crit_edge ], [ %73, %fixup_pi_owner.exit.fixup_pi_owner.exit.thread_crit_edge ]
  call void @futex_unqueue_pi(ptr noundef nonnull %q) #8
  %lock_ptr104 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %75 = ptrtoint ptr %lock_ptr104 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lock_ptr104, align 8
  call void @_raw_spin_unlock(ptr noundef %76) #8
  br label %out

out_unlock_put_key.loopexit:                      ; preds = %retry_private
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock_put_key

out_unlock_put_key:                               ; preds = %out_unlock_put_key.loopexit, %retry_private.out_unlock_put_key_crit_edge
  %ret.3 = phi i32 [ %call11, %out_unlock_put_key.loopexit ], [ 0, %retry_private.out_unlock_put_key_crit_edge ]
  call void @futex_q_unlock(ptr noundef %call8) #8
  br label %out

out:                                              ; preds = %uaddr_faulted.out_crit_edge, %out_unlock_put_key, %fixup_pi_owner.exit.thread, %retry.backedge.out_crit_edge, %if.end.out_crit_edge
  %ret.4 = phi i32 [ %ret.3, %out_unlock_put_key ], [ %74, %fixup_pi_owner.exit.thread ], [ %call3205, %if.end.out_crit_edge ], [ %call3, %retry.backedge.out_crit_edge ], [ %call115, %uaddr_faulted.out_crit_edge ]
  %tobool105.not = icmp eq ptr %call1, null
  br i1 %tobool105.not, label %out.if.end109_crit_edge, label %if.then106

out.if.end109_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then106:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %call107 = call i32 @hrtimer_cancel(ptr noundef nonnull %call1) #8
  call void @destroy_hrtimer_on_stack(ptr noundef nonnull %call1) #8
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %out.if.end109_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %ret.4)
  %cmp110.not = icmp eq i32 %ret.4, -4
  %spec.select160 = select i1 %cmp110.not, i32 -513, i32 %ret.4
  br label %cleanup123

uaddr_faulted:                                    ; preds = %retry_private
  call void @futex_q_unlock(ptr noundef %call8) #8
  %call115 = call i32 @fault_in_user_writeable(ptr noundef %uaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end118, label %uaddr_faulted.out_crit_edge

uaddr_faulted.out_crit_edge:                      ; preds = %uaddr_faulted
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end118:                                        ; preds = %uaddr_faulted
  br i1 %tobool2, label %if.end118.retry.backedge_crit_edge, label %if.end118.retry_private.backedge_crit_edge

if.end118.retry_private.backedge_crit_edge:       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry_private.backedge

if.end118.retry.backedge_crit_edge:               ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.backedge

retry_private.backedge:                           ; preds = %if.end118.retry_private.backedge_crit_edge, %retry.backedge.retry_private.backedge_crit_edge
  br label %retry_private

cleanup123:                                       ; preds = %if.end109, %if.end.i.cleanup123_crit_edge
  %retval.0 = phi i32 [ %spec.select160, %if.end109 ], [ -12, %if.end.i.cleanup123_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %q) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rt_waiter) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exiting) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %timeout) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_futex_key(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_q_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_q_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_owner_exiting(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__futex_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_futex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rt_mutex_start_proxy_lock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_sleeper_start_expires(ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local i32 @fault_in_user_writeable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_unlock_pi(ptr noundef %uaddr, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %wqh.i = alloca %struct.rt_wake_q_head, align 4
  %curval.i = alloca i32, align 4
  %curval = alloca i32, align 4
  %key = alloca %union.futex_key, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curval) #8
  %0 = ptrtoint ptr %curval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %curval, align 4, !annotation !29
  %1 = tail call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i126 = and i32 %1, -16384
  %2 = inttoptr i32 %and.i126 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %4, i32 noundef 0, ptr noundef null) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %key) #8
  %5 = call ptr @memset(ptr %key, i32 0, i32 16)
  %and7 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8 = icmp ne i32 %and7, 0
  %6 = getelementptr inbounds %struct.wake_q_head, ptr %wqh.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.rt_wake_q_head, ptr %wqh.i, i32 0, i32 1
  br label %retry

retry:                                            ; preds = %retry.backedge, %entry
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1112) #8
  %8 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !31
  %and.i = and i32 %10, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  %11 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %uaddr, i32 -1226833921) #8, !srcloc !34
  %asmresult = extractvalue { i32, i32 } %11, 0
  %asmresult3 = extractvalue { i32, i32 } %11, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #8, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %retry.cleanup88_crit_edge

retry.cleanup88_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end:                                           ; preds = %retry
  %and = and i32 %asmresult3, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %call.i)
  %cmp.not = icmp eq i32 %and, %call.i
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup88_crit_edge

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end6:                                          ; preds = %if.end
  %call9 = call i32 @get_futex_key(ptr noundef %uaddr, i1 noundef zeroext %tobool8, ptr noundef nonnull %key, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.cleanup88_crit_edge

if.end6.cleanup88_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end12:                                         ; preds = %if.end6
  %call13 = call ptr @futex_hash(ptr noundef nonnull %key) #8
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %call13, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #8
  %call14 = call ptr @futex_top_waiter(ptr noundef %call13, ptr noundef nonnull %key) #8
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end37, label %if.then16

if.then16:                                        ; preds = %if.end12
  %pi_state17 = getelementptr inbounds %struct.futex_q, ptr %call14, i32 0, i32 4
  %12 = ptrtoint ptr %pi_state17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pi_state17, align 8
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %if.then16.out_unlock_crit_edge, label %if.end20

if.then16.out_unlock_crit_edge:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end20:                                         ; preds = %if.then16
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %owner, align 8
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %cmp23.not = icmp eq ptr %15, %17
  br i1 %cmp23.not, label %if.end25, label %if.end20.out_unlock_crit_edge

if.end20.out_unlock_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end25:                                         ; preds = %if.end20
  call void @get_pi_state(ptr noundef nonnull %13)
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %13, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %pi_mutex) #8
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wqh.i) #8
  %18 = ptrtoint ptr %wqh.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 1 to ptr), ptr %wqh.i, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %wqh.i, ptr %6, align 4
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curval.i) #8
  %21 = ptrtoint ptr %curval.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %curval.i, align 4, !annotation !29
  %rb_leftmost.i.i = getelementptr inbounds %struct.futex_pi_state, ptr %13, i32 0, i32 1, i32 1, i32 1
  %22 = ptrtoint ptr %rb_leftmost.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rb_leftmost.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %land.rhs.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end25
  %lock1.i.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %lock1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock1.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %25, %pi_mutex
  br i1 %cmp.not.i.i, label %if.end41.i, label %do.body5.i.i, !prof !25

do.body5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/futex/../locking/rtmutex_common.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 118, 0\0A.popsection", ""() #8, !srcloc !35
  unreachable

land.rhs.i:                                       ; preds = %if.end25
  %.b80.i = load i1, ptr @wake_futex_pi.__already_done, align 1
  br i1 %.b80.i, label %land.rhs.i.wake_futex_pi.exit.thread132_crit_edge, label %if.then.i, !prof !25

land.rhs.i.wake_futex_pi.exit.thread132_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wake_futex_pi.exit.thread132

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wake_futex_pi.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 623, i32 noundef 9, ptr noundef null) #8
  br label %wake_futex_pi.exit.thread132

if.end41.i:                                       ; preds = %if.then.i.i
  %task.i = getelementptr inbounds %struct.rt_mutex_waiter, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task.i, align 8
  %call.i.i = call i32 @__task_pid_nr_ns(ptr noundef %27, i32 noundef 0, ptr noundef null) #8
  %call43.i = call zeroext i1 @should_fail_futex(i1 noundef zeroext true) #8
  br i1 %call43.i, label %wake_futex_pi.exit.thread137, label %if.end51.i, !prof !23

wake_futex_pi.exit.thread137:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wqh.i) #8
  call void @put_pi_state(ptr noundef nonnull %13)
  br label %pi_faulted

if.end51.i:                                       ; preds = %if.end41.i
  %or.i127 = or i32 %call.i.i, -2147483648
  %call52.i = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %curval.i, ptr noundef %uaddr, i32 noundef %asmresult3, i32 noundef %or.i127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %land.lhs.true.i, label %wake_futex_pi.exit

land.lhs.true.i:                                  ; preds = %if.end51.i
  %28 = ptrtoint ptr %curval.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %curval.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %asmresult3)
  %cmp.not.i = icmp eq i32 %29, %asmresult3
  br i1 %cmp.not.i, label %out_unlock.i, label %if.then54.i

if.then54.i:                                      ; preds = %land.lhs.true.i
  %and.i128 = and i32 %29, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i128, i32 %asmresult3)
  %cmp55.i = icmp eq i32 %and.i128, %asmresult3
  br i1 %cmp55.i, label %if.then54.i.wake_futex_pi.exit.thread132_crit_edge, label %wake_futex_pi.exit.thread134

if.then54.i.wake_futex_pi.exit.thread132_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wake_futex_pi.exit.thread132

wake_futex_pi.exit.thread134:                     ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wqh.i) #8
  call void @put_pi_state(ptr noundef nonnull %13)
  br label %cleanup88

out_unlock.i:                                     ; preds = %land.lhs.true.i
  call fastcc void @pi_state_update_owner(ptr noundef nonnull %13, ptr noundef %27) #8
  %call62.i = call zeroext i1 @__rt_mutex_futex_unlock(ptr noundef %pi_mutex, ptr noundef nonnull %wqh.i) #8
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex) #8
  br i1 %call62.i, label %if.then67.i, label %out_unlock.i.wake_futex_pi.exit.thread_crit_edge

out_unlock.i.wake_futex_pi.exit.thread_crit_edge: ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wake_futex_pi.exit.thread

if.then67.i:                                      ; preds = %out_unlock.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @rt_mutex_postunlock(ptr noundef nonnull %wqh.i) #8
  br label %wake_futex_pi.exit.thread

wake_futex_pi.exit.thread:                        ; preds = %if.then67.i, %out_unlock.i.wake_futex_pi.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wqh.i) #8
  call void @put_pi_state(ptr noundef nonnull %13)
  br label %cleanup88

wake_futex_pi.exit.thread132:                     ; preds = %if.then54.i.wake_futex_pi.exit.thread132_crit_edge, %if.then.i, %land.rhs.i.wake_futex_pi.exit.thread132_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wqh.i) #8
  call void @put_pi_state(ptr noundef nonnull %13)
  br label %pi_retry

wake_futex_pi.exit:                               ; preds = %if.end51.i
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wqh.i) #8
  call void @put_pi_state(ptr noundef nonnull %13)
  %30 = zext i32 %call52.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call52.i, label %wake_futex_pi.exit.cleanup88_crit_edge [
    i32 -11, label %wake_futex_pi.exit.pi_retry_crit_edge
    i32 -14, label %wake_futex_pi.exit.pi_faulted_crit_edge
  ]

wake_futex_pi.exit.pi_faulted_crit_edge:          ; preds = %wake_futex_pi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pi_faulted

wake_futex_pi.exit.pi_retry_crit_edge:            ; preds = %wake_futex_pi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pi_retry

wake_futex_pi.exit.cleanup88_crit_edge:           ; preds = %wake_futex_pi.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end37:                                         ; preds = %if.end12
  %call38 = call i32 @futex_cmpxchg_value_locked(ptr noundef nonnull %curval, ptr noundef %uaddr, i32 noundef %asmresult3, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end79, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  %31 = zext i32 %call38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call38, label %land.end [
    i32 -14, label %if.then40.pi_faulted_crit_edge
    i32 -11, label %if.then40.pi_retry_crit_edge
  ]

if.then40.pi_retry_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %pi_retry

if.then40.pi_faulted_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %pi_faulted

land.end:                                         ; preds = %if.then40
  %.b125 = load i1, ptr @futex_unlock_pi.__already_done, align 1
  br i1 %.b125, label %land.end.cleanup88_crit_edge, label %if.then48, !prof !25

land.end.cleanup88_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.then48:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @futex_unlock_pi.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1207, i32 noundef 9, ptr noundef null) #8
  br label %cleanup88

if.end79:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %asmresult3.le = extractvalue { i32, i32 } %11, 1
  %32 = ptrtoint ptr %curval to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %curval, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %asmresult3.le)
  %cmp80 = icmp eq i32 %33, %asmresult3.le
  %cond = select i1 %cmp80, i32 0, i32 -11
  br label %out_unlock

out_unlock:                                       ; preds = %if.end79, %if.end20.out_unlock_crit_edge, %if.then16.out_unlock_crit_edge
  %ret.1 = phi i32 [ %cond, %if.end79 ], [ -22, %if.then16.out_unlock_crit_edge ], [ -22, %if.end20.out_unlock_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %cleanup88

pi_retry:                                         ; preds = %if.then40.pi_retry_crit_edge, %wake_futex_pi.exit.pi_retry_crit_edge, %wake_futex_pi.exit.thread132
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1222, i32 noundef 0) #8
  %call.i129 = call i32 @__cond_resched() #8
  br label %retry.backedge

retry.backedge:                                   ; preds = %pi_faulted.retry.backedge_crit_edge, %pi_retry
  br label %retry

pi_faulted:                                       ; preds = %if.then40.pi_faulted_crit_edge, %wake_futex_pi.exit.pi_faulted_crit_edge, %wake_futex_pi.exit.thread137
  %call84 = call i32 @fault_in_user_writeable(ptr noundef %uaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %pi_faulted.retry.backedge_crit_edge, label %pi_faulted.cleanup88_crit_edge

pi_faulted.cleanup88_crit_edge:                   ; preds = %pi_faulted
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

pi_faulted.retry.backedge_crit_edge:              ; preds = %pi_faulted
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry.backedge

cleanup88:                                        ; preds = %pi_faulted.cleanup88_crit_edge, %out_unlock, %if.then48, %land.end.cleanup88_crit_edge, %wake_futex_pi.exit.cleanup88_crit_edge, %wake_futex_pi.exit.thread, %wake_futex_pi.exit.thread134, %if.end6.cleanup88_crit_edge, %if.end.cleanup88_crit_edge, %retry.cleanup88_crit_edge
  %retval.4 = phi i32 [ %ret.1, %out_unlock ], [ %call38, %if.then48 ], [ %call38, %land.end.cleanup88_crit_edge ], [ 0, %wake_futex_pi.exit.thread ], [ -22, %wake_futex_pi.exit.thread134 ], [ %call52.i, %wake_futex_pi.exit.cleanup88_crit_edge ], [ %call84, %pi_faulted.cleanup88_crit_edge ], [ %call9, %if.end6.cleanup88_crit_edge ], [ -1, %if.end.cleanup88_crit_edge ], [ -14, %retry.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %key) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curval) #8
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_cmpxchg_value_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_init_proxy_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_exit_race(ptr noundef %uaddr, i32 noundef %uval, ptr noundef readonly %tsk) unnamed_addr #0 align 64 {
entry:
  %uval2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval2) #8
  %0 = ptrtoint ptr %uval2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %uval2, align 4, !annotation !29
  %tobool.not = icmp eq ptr %tsk, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %futex_state = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 170
  %1 = ptrtoint ptr %futex_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %futex_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = call i32 @futex_get_value_locked(ptr noundef nonnull %uval2, ptr noundef %uaddr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %uval2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %uval2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %uval)
  %cmp4.not = icmp eq i32 %4, %uval
  %. = select i1 %cmp4.not, i32 -3, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %land.lhs.true.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ %., %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval2) #8
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_task_struct(ptr noundef %t) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage = getelementptr inbounds %struct.task_struct, ptr %t, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !25

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  tail call void @__put_task_struct(ptr noundef %t) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rt_mutex_futex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__rt_mutex_futex_unlock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_postunlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/futex/pi.c", i32 70, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../kernel/futex/pi.c", i32 915, i32 6}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../kernel/futex/pi.c", i32 1207, i32 4}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../kernel/futex/pi.c", i32 749, i32 3}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../kernel/futex/pi.c", i32 817, i32 3}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/futex/pi.c", i32 623, i32 6}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 1097200, i64 1097224, i64 1097245, i64 1097262, i64 1097279}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148701242}
!27 = !{i64 2148615682, i64 2148615714, i64 2148615743, i64 2148615777, i64 2148615808, i64 2148615831}
!28 = !{i64 2149899015}
!29 = !{!"auto-init"}
!30 = !{!"branch_weights", i32 1, i32 10000, i32 1, i32 1, i32 1, i32 1}
!31 = !{i64 4620071}
!32 = !{i64 4620268}
!33 = !{i64 2152105501}
!34 = !{i64 2152222313, i64 2152222593, i64 2152222927, i64 2152223261}
!35 = !{i64 2152179162, i64 2152179667, i64 2152179199, i64 2152179255, i64 2152179289, i64 2152179313, i64 2152179354, i64 2152179375, i64 2152179403, i64 2152179437}
