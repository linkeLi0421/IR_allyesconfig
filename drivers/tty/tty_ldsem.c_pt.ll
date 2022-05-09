; ModuleID = '/llk/IR_all_yes/drivers/tty/tty_ldsem.c_pt.bc'
source_filename = "../drivers/tty/tty_ldsem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ldsem_waiter = type { %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
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
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__init_ldsem.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sem->wait_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/tty/tty_ldsem.c\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 69, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [27 x i8] c"../drivers/tty/tty_ldsem.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 339, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__init_ldsem(ptr noundef %sem, ptr noundef %name, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_check_no_locks_freed(ptr noundef %sem, i32 noundef 96) #6
  %dep_map = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 5
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  %0 = ptrtoint ptr %sem to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %sem, align 4
  %wait_readers = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 2
  %1 = ptrtoint ptr %wait_readers to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wait_readers, align 4
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %wait_lock, ptr noundef nonnull @.str, ptr noundef nonnull @__init_ldsem.__key, i16 noundef signext 2) #6
  %read_wait = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 3
  %2 = ptrtoint ptr %read_wait to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %read_wait, ptr %read_wait, align 4
  %prev.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %read_wait, ptr %prev.i, align 4
  %write_wait = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 4
  %4 = ptrtoint ptr %write_wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %write_wait, ptr %write_wait, align 4
  %prev.i7 = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %write_wait, ptr %prev.i7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ldsem_down_read(ptr noundef %sem, i32 noundef %timeout) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 339) #6
  %call = tail call fastcc i32 @__ldsem_down_read_nested(ptr noundef %sem, i32 noundef 0, i32 noundef %timeout)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ldsem_down_read_nested(ptr noundef %sem, i32 noundef %subclass, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef %subclass, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 1, ptr elementtype(i32) %sem) #6, !srcloc !26
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #6
  %call3 = tail call fastcc ptr @down_read_failed(ptr noundef %sem, i32 noundef %asmresult.i.i.i.i, i32 noundef %timeout)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #6
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ldsem_down_read_trylock(ptr noundef %sem) local_unnamed_addr #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #6
  %0 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sem, align 4
  br label %while.cond

while.cond:                                       ; preds = %arch_atomic_cmpxchg.exit.i.i.i.while.cond_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.while.cond_crit_edge ]
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp sgt i32 %2, -1
  br i1 %cmp, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %add = add nuw i32 %2, 1
  %call.i.i8 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count, i32 noundef 4) #6
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %while.body
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %5, i32 %add, ptr elementtype(i32) %sem) #6, !srcloc !29
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i, label %if.then, label %arch_atomic_cmpxchg.exit.i.i.i.while.cond_crit_edge, !prof !31

arch_atomic_cmpxchg.exit.i.i.i.while.cond_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dep_map = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 5
  %7 = call ptr @llvm.returnaddress(i32 0)
  %8 = ptrtoint ptr %7 to i32
  call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %8) #6
  call void @lock_acquired(ptr noundef %dep_map, i32 noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquired(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ldsem_down_write(ptr noundef %sem, i32 noundef %timeout) local_unnamed_addr #0 section ".sched.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 365) #6
  %call = tail call fastcc i32 @__ldsem_down_write_nested(ptr noundef %sem, i32 noundef 0, i32 noundef %timeout)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ldsem_down_write_nested(ptr noundef %sem, i32 noundef %subclass, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef %subclass, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %1) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 -65535, ptr elementtype(i32) %sem) #6, !srcloc !26
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  %and = and i32 %asmresult.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  tail call void @lock_contended(ptr noundef %dep_map, i32 noundef %1) #6
  %call3 = tail call fastcc ptr @down_write_failed(ptr noundef %sem, i32 noundef %asmresult.i.i.i.i, i32 noundef %timeout)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then4, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #6
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @lock_acquired(ptr noundef %dep_map, i32 noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ldsem_down_write_trylock(ptr noundef %sem) local_unnamed_addr #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #6
  %0 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sem, align 4
  br label %while.cond

while.cond:                                       ; preds = %arch_atomic_cmpxchg.exit.i.i.i.while.cond_crit_edge, %entry
  %storemerge = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.while.cond_crit_edge ]
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %count, align 4
  %and = and i32 %storemerge, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %add = add i32 %storemerge, -65535
  %call.i.i8 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count, i32 noundef 4) #6
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %while.body
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %4, i32 %add, ptr elementtype(i32) %sem) #6, !srcloc !29
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %4
  br i1 %cmp.not.i.i.i, label %if.then, label %arch_atomic_cmpxchg.exit.i.i.i.while.cond_crit_edge, !prof !31

arch_atomic_cmpxchg.exit.i.i.i.while.cond_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dep_map = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 5
  %6 = call ptr @llvm.returnaddress(i32 0)
  %7 = ptrtoint ptr %6 to i32
  call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %7) #6
  call void @lock_acquired(ptr noundef %dep_map, i32 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ldsem_up_read(ptr noundef %sem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 -1, ptr elementtype(i32) %sem) #6, !srcloc !26
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  %3 = and i32 %asmresult.i.i.i.i, -2147418113
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %3)
  %4 = icmp eq i32 %3, -2147483648
  br i1 %4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %wait_lock.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 1
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock.i) #6
  %write_wait.i.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 4
  %5 = ptrtoint ptr %write_wait.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %write_wait.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %6, %write_wait.i.i
  br i1 %cmp.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %task.i.i.i = getelementptr inbounds %struct.ldsem_waiter, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i, align 4
  %call.i.i.i = tail call i32 @wake_up_process(ptr noundef %8) #6
  br label %ldsem_wake.exit

if.else.i.i:                                      ; preds = %if.then
  %read_wait.i.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 3
  %9 = ptrtoint ptr %read_wait.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %read_wait.i.i, align 4
  %cmp.i8.not.i.i = icmp eq ptr %10, %read_wait.i.i
  br i1 %cmp.i8.not.i.i, label %if.else.i.i.ldsem_wake.exit_crit_edge, label %if.then3.i.i

if.else.i.i.ldsem_wake.exit_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ldsem_wake.exit

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__ldsem_wake_readers(ptr noundef %sem) #6
  br label %ldsem_wake.exit

ldsem_wake.exit:                                  ; preds = %if.then3.i.i, %if.else.i.i.ldsem_wake.exit_crit_edge, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock.i, i32 noundef %call.i) #6
  br label %if.end

if.end:                                           ; preds = %ldsem_wake.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ldsem_up_write(ptr noundef %sem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef %1) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 65535, ptr elementtype(i32) %sem) #6, !srcloc !26
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp slt i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %wait_lock.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 1
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wait_lock.i) #6
  %write_wait.i.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 4
  %3 = ptrtoint ptr %write_wait.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %write_wait.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %write_wait.i.i
  br i1 %cmp.i.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %task.i.i.i = getelementptr inbounds %struct.ldsem_waiter, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task.i.i.i, align 4
  %call.i.i.i = tail call i32 @wake_up_process(ptr noundef %6) #6
  br label %ldsem_wake.exit

if.else.i.i:                                      ; preds = %if.then
  %read_wait.i.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 3
  %7 = ptrtoint ptr %read_wait.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %read_wait.i.i, align 4
  %cmp.i8.not.i.i = icmp eq ptr %8, %read_wait.i.i
  br i1 %cmp.i8.not.i.i, label %if.else.i.i.ldsem_wake.exit_crit_edge, label %if.then3.i.i

if.else.i.i.ldsem_wake.exit_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ldsem_wake.exit

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @__ldsem_wake_readers(ptr noundef %sem) #6
  br label %ldsem_wake.exit

ldsem_wake.exit:                                  ; preds = %if.then3.i.i, %if.else.i.i.ldsem_wake.exit_crit_edge, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wait_lock.i, i32 noundef %call.i) #6
  br label %if.end

if.end:                                           ; preds = %ldsem_wake.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ldsem_down_read_nested(ptr noundef %sem, i32 noundef %subclass, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 419) #6
  %call = tail call fastcc i32 @__ldsem_down_read_nested(ptr noundef %sem, i32 noundef %subclass, i32 noundef %timeout)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ldsem_down_write_nested(ptr noundef %sem, i32 noundef %subclass, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 426) #6
  %call = tail call fastcc i32 @__ldsem_down_write_nested(ptr noundef %sem, i32 noundef %subclass, i32 noundef %timeout)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_contended(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @down_read_failed(ptr noundef %sem, i32 noundef %count, i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  %count.addr = alloca i32, align 4
  %waiter = alloca %struct.ldsem_waiter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %waiter) #6
  %1 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %waiter, align 4, !annotation !32
  %2 = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !32
  %4 = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !32
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #6
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %6 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.addr, align 4
  %add = add i32 %7, -65537
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count.addr, i32 noundef 4) #6
  %8 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.body
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %9, i32 %add, ptr elementtype(i32) %sem) #6, !srcloc !29
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i.i, i32 %9)
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i, label %if.then, label %if.end, !prof !31

if.then:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %11 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.addr, align 4
  %add2 = add i32 %12, -65537
  store i32 %add2, ptr %count.addr, align 4
  %read_wait = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i205 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %14, ptr noundef %read_wait) #6
  br i1 %call.i.i205, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %waiter, ptr %prev.i, align 4
  %16 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %read_wait, ptr %waiter, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %2, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %waiter, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %wait_readers = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 2
  %19 = ptrtoint ptr %wait_readers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wait_readers, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %wait_readers, align 4
  %21 = call i32 @llvm.read_register.i32(metadata !15) #6
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %4, align 4
  %26 = load ptr, ptr %task, align 8
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #6
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #6, !srcloc !33
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !34

list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !31

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #6
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %29 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count.addr, align 4
  %and = and i32 %30, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.then12, label %get_task_struct.exit.if.end13_crit_edge

get_task_struct.exit.if.end13_crit_edge:          ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %31 = ptrtoint ptr %count.addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %asmresult3.i.i.i.i.i, ptr %count.addr, align 4
  %cmp = icmp sgt i32 %asmresult3.i.i.i.i.i, 0
  br i1 %cmp, label %if.then3, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #6
  br label %cleanup

if.then12:                                        ; preds = %get_task_struct.exit
  %write_wait.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 4
  %32 = ptrtoint ptr %write_wait.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %write_wait.i, align 4
  %cmp.i.not.i = icmp eq ptr %33, %write_wait.i
  br i1 %cmp.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %task.i.i = getelementptr inbounds %struct.ldsem_waiter, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i, align 4
  %call.i.i206 = call i32 @wake_up_process(ptr noundef %35) #6
  br label %if.end13

if.else.i:                                        ; preds = %if.then12
  %36 = ptrtoint ptr %read_wait to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %read_wait, align 4
  %cmp.i8.not.i = icmp eq ptr %37, %read_wait
  br i1 %cmp.i8.not.i, label %if.else.i.if.end13_crit_edge, label %if.then3.i

if.else.i.if.end13_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @__ldsem_wake_readers(ptr noundef %sem) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then3.i, %if.else.i.if.end13_crit_edge, %if.then.i, %get_task_struct.exit.if.end13_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #6
  br label %__here

__here:                                           ; preds = %if.end95, %if.end13
  %timeout.addr.0 = phi i32 [ %timeout, %if.end13 ], [ %call96, %if.end95 ]
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 212
  %40 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 ptrtoint (ptr blockaddress(@down_read_failed, %__here) to i32), ptr %task_state_change, align 4
  %41 = load ptr, ptr %task, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 2, ptr %41, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %4, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  %tobool90.not = icmp eq ptr %44, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.addr.0)
  %tobool93.not = icmp eq i32 %timeout.addr.0, 0
  %or.cond = select i1 %tobool90.not, i1 true, i1 %tobool93.not
  br i1 %or.cond, label %__here147, label %if.end95

if.end95:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  %call96 = call i32 @schedule_timeout(i32 noundef %timeout.addr.0) #6
  br label %__here

__here147:                                        ; preds = %__here
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %task_state_change151 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 212
  %47 = ptrtoint ptr %task_state_change151 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 ptrtoint (ptr blockaddress(@down_read_failed, %__here147) to i32), ptr %task_state_change151, align 4
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %48, align 128
  br i1 %tobool93.not, label %if.then169, label %__here147.cleanup_crit_edge

__here147.cleanup_crit_edge:                      ; preds = %__here147
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then169:                                       ; preds = %__here147
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #6
  %50 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %4, align 4
  %tobool172.not = icmp eq ptr %51, null
  br i1 %tobool172.not, label %if.end180, label %if.then173

if.then173:                                       ; preds = %if.then169
  %call.i.i204 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  %52 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 65536, ptr elementtype(i32) %sem) #6, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  %53 = ptrtoint ptr %wait_readers to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wait_readers, align 4
  %dec = add i32 %54, -1
  store i32 %dec, ptr %wait_readers, align 4
  %call.i.i207 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %waiter) #6
  br i1 %call.i.i207, label %if.end.i.i208, label %if.then173.list_del.exit_crit_edge

if.then173.list_del.exit_crit_edge:               ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i208:                                    ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %2, align 4
  %57 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %waiter, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev1.i.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %58, ptr %56, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i208, %if.then173.list_del.exit_crit_edge
  %61 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter, align 4
  %62 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #6
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %4, align 4
  %usage.i210 = getelementptr inbounds %struct.task_struct, ptr %64, i32 0, i32 2
  %call.i.i.i.i.i.i211 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i210, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !37
  call void @llvm.prefetch.p0(ptr %usage.i210, i32 1, i32 3, i32 1) #6
  %65 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i210, ptr %usage.i210, i32 1, ptr elementtype(i32) %usage.i210) #6, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i213, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i212 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i212, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !31

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %usage.i210, i32 noundef 3) #6
  br label %cleanup

if.then.i213:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @__put_task_struct(ptr noundef %64) #6
  br label %cleanup

if.end180:                                        ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.then.i213, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %__here147.cleanup_crit_edge, %if.then3
  %retval.0 = phi ptr [ %sem, %if.then3 ], [ %sem, %if.end180 ], [ %sem, %__here147.cleanup_crit_edge ], [ null, %if.end5.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i ], [ null, %if.then.i213 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %waiter) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ldsem_wake_readers(ptr noundef %sem) unnamed_addr #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count) #6
  %wait_readers = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 2
  %0 = ptrtoint ptr %wait_readers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wait_readers, align 4
  %mul = mul i32 %1, 65537
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %mul, ptr elementtype(i32) %sem) #6, !srcloc !26
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  br label %do.body

do.body:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body_crit_edge, %entry
  %3 = phi i32 [ %asmresult.i.i.i.i, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body_crit_edge ]
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  %sub = sub i32 %3, %mul
  %call.i.i60 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count, i32 noundef 4) #6
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %6, i32 %sub, ptr elementtype(i32) %sem) #6, !srcloc !29
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.cleanup_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.do.body_crit_edge, !prof !31

arch_atomic_cmpxchg.exit.i.i.i.do.body_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

arch_atomic_cmpxchg.exit.i.i.i.cleanup_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  %read_wait = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 3
  %8 = ptrtoint ptr %read_wait to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_wait, align 4
  %cmp13.not61 = icmp eq ptr %9, %read_wait
  br i1 %cmp13.not61, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %put_task_struct.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %waiter.062 = phi ptr [ %next.0, %put_task_struct.exit.for.body_crit_edge ], [ %9, %do.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %waiter.062 to i32
  call void @__asan_load4_noabort(i32 %10)
  %next.0 = load ptr, ptr %waiter.062, align 4
  %task = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter.062, i32 0, i32 1
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !40
  %13 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr null, ptr %task, align 4
  %call36 = call i32 @wake_up_process(ptr noundef %12) #6
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !37
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #6
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #6, !srcloc !38
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !31

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #6
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !39
  call void @__put_task_struct(ptr noundef %12) #6
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %cmp13.not = icmp eq ptr %next.0, %read_wait
  br i1 %cmp13.not, label %put_task_struct.exit.for.end_crit_edge, label %put_task_struct.exit.for.body_crit_edge

put_task_struct.exit.for.body_crit_edge:          ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

put_task_struct.exit.for.end_crit_edge:           ; preds = %put_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %put_task_struct.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %15 = ptrtoint ptr %read_wait to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %read_wait, ptr %read_wait, align 4
  %prev.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %read_wait, ptr %prev.i, align 4
  %17 = ptrtoint ptr %wait_readers to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %wait_readers, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %arch_atomic_cmpxchg.exit.i.i.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @down_write_failed(ptr noundef %sem, i32 noundef %count, i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  %count.i = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %waiter = alloca %struct.ldsem_waiter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %waiter) #6
  %1 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %waiter, align 4, !annotation !32
  %2 = getelementptr inbounds %struct.list_head, ptr %waiter, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !32
  %4 = getelementptr inbounds %struct.ldsem_waiter, ptr %waiter, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !32
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #6
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %6 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.addr, align 4
  %add = add i32 %7, -1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count.addr, i32 noundef 4) #6
  %8 = ptrtoint ptr %count.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.body
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %9, i32 %add, ptr elementtype(i32) %sem) #6, !srcloc !29
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i.i, i32 %9)
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i, label %do.end, label %if.end, !prof !31

if.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %11 = ptrtoint ptr %count.addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %asmresult3.i.i.i.i.i, ptr %count.addr, align 4
  %and = and i32 %asmresult3.i.i.i.i.i, 65535
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then2, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #6
  br label %cleanup

do.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %write_wait = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.ld_semaphore, ptr %sem, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i275 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %waiter, ptr noundef %13, ptr noundef %write_wait) #6
  br i1 %call.i.i275, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %waiter, ptr %prev.i, align 4
  %15 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %write_wait, ptr %waiter, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %2, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %waiter, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  %18 = call i32 @llvm.read_register.i32(metadata !15) #6
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %4, align 4
  br label %__here

__here:                                           ; preds = %list_add_tail.exit
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 212
  %25 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 ptrtoint (ptr blockaddress(@down_write_failed, %__here) to i32), ptr %task_state_change, align 4
  %26 = load ptr, ptr %task, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 2, ptr %26, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool73.not297 = icmp eq i32 %timeout, 0
  br i1 %tobool73.not297, label %__here.if.then164_crit_edge, label %__here.if.end75_crit_edge

__here.if.end75_crit_edge:                        ; preds = %__here
  br label %if.end75

__here.if.then164_crit_edge:                      ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then164

if.end75:                                         ; preds = %writer_trylock.exit.if.end75_crit_edge, %__here.if.end75_crit_edge
  %timeout.addr.0298 = phi i32 [ %call77, %writer_trylock.exit.if.end75_crit_edge ], [ %timeout, %__here.if.end75_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #6
  %call77 = call i32 @schedule_timeout(i32 noundef %timeout.addr.0298) #6
  call void @_raw_spin_lock_irq(ptr noundef %wait_lock) #6
  br label %__here129

__here129:                                        ; preds = %if.end75
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %task_state_change133 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 212
  %30 = ptrtoint ptr %task_state_change133 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 ptrtoint (ptr blockaddress(@down_write_failed, %__here129) to i32), ptr %task_state_change133, align 4
  %31 = load ptr, ptr %task, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 2, ptr %31, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #6
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  %33 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 1, ptr elementtype(i32) %sem) #6, !srcloc !26
  %asmresult.i.i.i.i.i276 = extractvalue { i32, i32 } %33, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  br label %do.body.i

do.body.i:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i_crit_edge, %__here129
  %storemerge.i = phi i32 [ %asmresult.i.i.i.i.i276, %__here129 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i_crit_edge ]
  %34 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge.i, ptr %count.i, align 4
  %and.i277 = and i32 %storemerge.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i277)
  %cmp.i = icmp eq i32 %and.i277, 1
  br i1 %cmp.i, label %if.end174.critedge, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  %sub.i = add i32 %storemerge.i, -1
  %call.i.i7.i = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %count.i, i32 noundef 4) #6
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !28
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %if.end.i
  %37 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 %36, i32 %sub.i, ptr elementtype(i32) %sem) #6, !srcloc !29
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %36
  br i1 %cmp.not.i.i.i.i, label %writer_trylock.exit, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i_crit_edge, !prof !31

arch_atomic_cmpxchg.exit.i.i.i.i.do.body.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

writer_trylock.exit:                              ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #6
  %tobool73.not = icmp eq i32 %call77, 0
  br i1 %tobool73.not, label %writer_trylock.exit.if.then164_crit_edge, label %writer_trylock.exit.if.end75_crit_edge

writer_trylock.exit.if.end75_crit_edge:           ; preds = %writer_trylock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

writer_trylock.exit.if.then164_crit_edge:         ; preds = %writer_trylock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then164

if.then164:                                       ; preds = %writer_trylock.exit.if.then164_crit_edge, %__here.if.then164_crit_edge
  %call.i.i274 = call zeroext i1 @__kasan_check_write(ptr noundef %sem, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @llvm.prefetch.p0(ptr %sem, i32 1, i32 3, i32 1) #6
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sem, ptr %sem, i32 65536, ptr elementtype(i32) %sem) #6, !srcloc !26
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !27
  %call.i.i278 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %waiter) #6
  br i1 %call.i.i278, label %if.end.i.i279, label %if.then164.list_del.exit_crit_edge

if.then164.list_del.exit_crit_edge:               ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i279:                                    ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %2, align 4
  %41 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %waiter, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i279, %if.then164.list_del.exit_crit_edge
  %45 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter, align 4
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  %47 = ptrtoint ptr %write_wait to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %write_wait, align 4
  %cmp.i281.not = icmp eq ptr %48, %write_wait
  br i1 %cmp.i281.not, label %if.then173, label %list_del.exit.if.end174_crit_edge

list_del.exit.if.end174_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.then173:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @__ldsem_wake_readers(ptr noundef %sem)
  br label %if.end174

if.end174.critedge:                               ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #6
  %call.i.i282 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %waiter) #6
  br i1 %call.i.i282, label %if.end.i.i285, label %if.end174.critedge.list_del.exit287_crit_edge

if.end174.critedge.list_del.exit287_crit_edge:    ; preds = %if.end174.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit287

if.end.i.i285:                                    ; preds = %if.end174.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %2, align 4
  %51 = ptrtoint ptr %waiter to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %waiter, align 4
  %prev1.i.i.i284 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i284 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i284, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit287

list_del.exit287:                                 ; preds = %if.end.i.i285, %if.end174.critedge.list_del.exit287_crit_edge
  %55 = ptrtoint ptr %waiter to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %waiter, align 4
  %56 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  br label %if.end174

if.end174:                                        ; preds = %list_del.exit287, %if.then173, %list_del.exit.if.end174_crit_edge
  %tobool73.not295 = phi ptr [ %sem, %list_del.exit287 ], [ null, %if.then173 ], [ null, %list_del.exit.if.end174_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %wait_lock) #6
  br label %__here226

__here226:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task, align 8
  %task_state_change230 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 212
  %59 = ptrtoint ptr %task_state_change230 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 ptrtoint (ptr blockaddress(@down_write_failed, %__here226) to i32), ptr %task_state_change230, align 4
  %60 = load ptr, ptr %task, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 0, ptr %60, align 128
  br label %cleanup

cleanup:                                          ; preds = %__here226, %if.then2
  %retval.0 = phi ptr [ %sem, %if.then2 ], [ %tobool73.not295, %__here226 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %waiter) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__init_ldsem.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/tty/tty_ldsem.c", i32 69, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/tty/tty_ldsem.c", i32 339, i32 2}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../drivers/tty/tty_ldsem.c", i32 194, i32 3}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../drivers/tty/tty_ldsem.c", i32 203, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/tty/tty_ldsem.c", i32 257, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../drivers/tty/tty_ldsem.c", i32 264, i32 3}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/tty/tty_ldsem.c", i32 285, i32 2}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148571549}
!26 = !{i64 2148486834, i64 2148486866, i64 2148486895, i64 2148486929, i64 2148486960, i64 2148486983}
!27 = !{i64 2148571778}
!28 = !{i64 2148587961}
!29 = !{i64 971627, i64 971651, i64 971672, i64 971689, i64 971706}
!30 = !{i64 2148588187}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{!"auto-init"}
!33 = !{i64 2148487644, i64 2148487676, i64 2148487705, i64 2148487739, i64 2148487770, i64 2148487793}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2153231479}
!36 = !{i64 2153237195}
!37 = !{i64 2148575669}
!38 = !{i64 2148490109, i64 2148490141, i64 2148490170, i64 2148490204, i64 2148490235, i64 2148490258}
!39 = !{i64 2150389885}
!40 = !{i64 2153222123}
!41 = !{i64 2153246723}
!42 = !{i64 2153251535}
