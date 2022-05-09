; ModuleID = '/llk/IR_all_yes/net/xdp/xdp_umem.c_pt.bc'
source_filename = "../net/xdp/xdp_umem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.109 }
%struct.atomic_t = type { i32 }
%union.anon.109 = type { i32 }
%struct.xdp_umem = type { ptr, i64, i32, i32, i32, i32, ptr, %struct.refcount_struct, i8, i8, ptr, i32, %struct.list_head, %struct.work_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.kuid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.xdp_umem_reg = type { i64, i64, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.99, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
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
%union.anon.99 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.29 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.29 = type { %struct.callback_head }
%struct.anon.9 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }

@xdp_put_umem.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&umem->work)\00", [33 x i8] zeroinitializer }, align 32
@umem_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.2 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"umem_ida.xa_lock\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 88, i32 4 }
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"umem_ida\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [22 x i8] c"../net/xdp/xdp_umem.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 24, i32 8 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @xdp_put_umem.__key, ptr @.str, ptr @umem_ida, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdp_put_umem.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umem_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_get_umem(ptr noundef %umem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %users = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #7, !srcloc !18
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !19

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !20

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #7
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xdp_put_umem(ptr noundef %umem, i1 noundef zeroext %defer_cleanup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %umem, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end:                                           ; preds = %entry
  %users = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #7, !srcloc !22
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then1, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end12_crit_edge, label %if.then10.i.i.i, !prof !20

if.end5.i.i.i.if.end12_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef 3) #7
  br label %if.end12

if.then1:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !23
  br i1 %defer_cleanup, label %do.body, label %if.else

do.body:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %work = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 13
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %1 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @xdp_put_umem.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry7 = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 13, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 13, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xdp_umem_release_deferred, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work) #7
  br label %if.end12

if.else:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xdp_umem_release(ptr noundef nonnull %umem)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %do.body, %if.then10.i.i.i, %if.end5.i.i.i.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xdp_umem_release_deferred(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60
  tail call fastcc void @xdp_umem_release(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xdp_umem_release(ptr noundef %umem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %zc = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 9
  %0 = ptrtoint ptr %zc to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %zc, align 1
  %id = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 8
  tail call void @ida_free(ptr noundef nonnull @umem_ida, i32 noundef %2) #7
  %3 = ptrtoint ptr %umem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %umem, align 8
  tail call void @vunmap(ptr noundef %4) #7
  %5 = ptrtoint ptr %umem to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %umem, align 8
  %pgs.i = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 10
  %6 = ptrtoint ptr %pgs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pgs.i, align 4
  %npgs.i = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 5
  %8 = ptrtoint ptr %npgs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npgs.i, align 4
  tail call void @unpin_user_pages_dirty_lock(ptr noundef %7, i32 noundef %9, i1 noundef zeroext true) #7
  %10 = ptrtoint ptr %pgs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pgs.i, align 4
  tail call void @kvfree(ptr noundef %11) #7
  %12 = ptrtoint ptr %pgs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pgs.i, align 4
  %user.i = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 6
  %13 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %user.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %entry.xdp_umem_unaccount_pages.exit_crit_edge, label %if.then.i

entry.xdp_umem_unaccount_pages.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %xdp_umem_unaccount_pages.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %npgs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %npgs.i, align 4
  %locked_vm.i = getelementptr inbounds %struct.user_struct, ptr %14, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %locked_vm.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %locked_vm.i, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %locked_vm.i, ptr %locked_vm.i, i32 %16, ptr elementtype(i32) %locked_vm.i) #7, !srcloc !24
  %18 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user.i, align 8
  tail call void @free_uid(ptr noundef %19) #7
  br label %xdp_umem_unaccount_pages.exit

xdp_umem_unaccount_pages.exit:                    ; preds = %if.then.i, %entry.xdp_umem_unaccount_pages.exit_crit_edge
  tail call void @kfree(ptr noundef %umem) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xdp_umem_create(ptr nocapture noundef readonly %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 104) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ida_alloc_range(ptr noundef nonnull @umem_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup.sink.split_crit_edge, label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 11
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call2, ptr %id, align 8
  %chunk_size1.i = getelementptr inbounds %struct.xdp_umem_reg, ptr %mr, i32 0, i32 2
  %2 = ptrtoint ptr %chunk_size1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chunk_size1.i, align 8
  %headroom2.i = getelementptr inbounds %struct.xdp_umem_reg, ptr %mr, i32 0, i32 3
  %4 = ptrtoint ptr %headroom2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %headroom2.i, align 4
  %flags.i = getelementptr inbounds %struct.xdp_umem_reg, ptr %mr, i32 0, i32 4
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %8 = ptrtoint ptr %mr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mr, align 8
  %len.i = getelementptr inbounds %struct.xdp_umem_reg, ptr %mr, i32 0, i32 1
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len.i, align 8
  %12 = add i32 %3, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %12)
  %13 = icmp ult i32 %12, 2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %tobool7.not.i = icmp ult i32 %7, 2
  %or.cond127.i = select i1 %13, i1 %tobool7.not.i, i1 false
  br i1 %or.cond127.i, label %if.end9.i, label %if.end5.if.then8_crit_edge

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end9.i:                                        ; preds = %if.end5
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %14 = tail call i32 @llvm.ctpop.i32(i32 %3) #7, !range !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp1.i.i = icmp ult i32 %14, 2
  %or.cond128.i = select i1 %tobool.not.not.i, i1 true, i1 %cmp1.i.i
  br i1 %or.cond128.i, label %if.end12.i, label %if.end9.i.if.then8_crit_edge

if.end9.i.if.then8_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end12.i:                                       ; preds = %if.end9.i
  %conv.i = trunc i64 %9 to i32
  %and13.i = and i32 %conv.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %cmp14.i = icmp ne i32 %and13.i, 0
  %15 = xor i64 %9, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %15)
  %cmp18.i = icmp ugt i64 %11, %15
  %or.cond121.i = select i1 %cmp14.i, i1 true, i1 %cmp18.i
  br i1 %or.cond121.i, label %if.end12.i.if.then8_crit_edge, label %if.end21.i

if.end12.i.if.then8_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end21.i:                                       ; preds = %if.end12.i
  %16 = trunc i64 %11 to i32
  %conv1.i.i = and i32 %16, 4095
  %shr.i.i = lshr i64 %11, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool23.not.i = icmp ne i32 %conv1.i.i, 0
  %inc.i = zext i1 %tobool23.not.i to i64
  %spec.select.i = add nuw nsw i64 %shr.i.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %spec.select.i)
  %cmp26.i = icmp ugt i64 %spec.select.i, 4294967295
  br i1 %cmp26.i, label %if.end21.i.if.then8_crit_edge, label %if.else162.i.i

if.end21.i.if.then8_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.else162.i.i:                                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %11)
  %cmp164.i.i = icmp ult i64 %11, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !20

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %.frozen = freeze i32 %16
  %.frozen50 = freeze i32 %3
  %div172.i.i = udiv i32 %.frozen, %.frozen50
  %17 = mul i32 %div172.i.i, %.frozen50
  %rem170.i.i.decomposed = sub i32 %.frozen, %17
  br label %div_u64_rem.exit.i

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %11) #11, !srcloc !26
  %asmresult.i260.i.i = extractvalue { i64, i64 } %18, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %18, 1
  %shr.i.i.i = lshr i64 %asmresult.i260.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %extract.t131.i = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64_rem.exit.i

div_u64_rem.exit.i:                               ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.off0.i = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t131.i, %if.else174.i.i ]
  %__rem.0.i.i = phi i32 [ %rem170.i.i.decomposed, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dividend.addr.0.i.off0.i)
  %cmp32.i = icmp eq i32 %dividend.addr.0.i.off0.i, 0
  br i1 %cmp32.i, label %div_u64_rem.exit.i.if.then8_crit_edge, label %if.end35.i

div_u64_rem.exit.i.if.then8_crit_edge:            ; preds = %div_u64_rem.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end35.i:                                       ; preds = %div_u64_rem.exit.i
  br i1 %tobool.not.i, label %land.lhs.true37.i, label %if.end40.i

land.lhs.true37.i:                                ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i.i)
  %tobool38.not.i = icmp eq i32 %__rem.0.i.i, 0
  %sub.i = add nsw i32 %3, -256
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub.i)
  %cmp41.not.i = icmp ult i32 %5, %sub.i
  %or.cond122.i = select i1 %tobool38.not.i, i1 %cmp41.not.i, i1 false
  br i1 %or.cond122.i, label %land.lhs.true37.i.if.end44.i_crit_edge, label %land.lhs.true37.i.if.then8_crit_edge

land.lhs.true37.i.if.then8_crit_edge:             ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

land.lhs.true37.i.if.end44.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.end40.i:                                       ; preds = %if.end35.i
  %sub.old.i = add nsw i32 %3, -256
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub.old.i)
  %cmp41.not.old.i = icmp ult i32 %5, %sub.old.i
  br i1 %cmp41.not.old.i, label %if.end40.i.if.end44.i_crit_edge, label %if.end40.i.if.then8_crit_edge

if.end40.i.if.then8_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.end40.i.if.end44.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.end40.i.if.end44.i_crit_edge, %land.lhs.true37.i.if.end44.i_crit_edge
  %size45.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %size45.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %11, ptr %size45.i, align 8
  %headroom46.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %headroom46.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %5, ptr %headroom46.i, align 8
  %chunk_size47.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %chunk_size47.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %3, ptr %chunk_size47.i, align 4
  %chunks48.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %chunks48.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %dividend.addr.0.i.off0.i, ptr %chunks48.i, align 8
  %conv49.i = trunc i64 %spec.select.i to i32
  %npgs50.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %npgs50.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv49.i, ptr %npgs50.i, align 4
  %pgs.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %pgs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %pgs.i, align 4
  %user.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %user.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %user.i, align 8
  %conv52.i = trunc i32 %7 to i8
  %flags53.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %flags53.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv52.i, ptr %flags53.i, align 8
  %xsk_dma_list.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 12
  %27 = ptrtoint ptr %xsk_dma_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %xsk_dma_list.i, ptr %xsk_dma_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 12, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %xsk_dma_list.i, ptr %prev.i.i, align 8
  %users.i = getelementptr inbounds %struct.xdp_umem, ptr %call7.i.i, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #7
  %29 = ptrtoint ptr %users.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %users.i, align 4
  %call.i = tail call zeroext i1 @capable(i32 noundef 14) #7
  br i1 %call.i, label %if.end44.i.if.end57.i_crit_edge, label %if.end.i

if.end44.i.if.end57.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.end.i:                                         ; preds = %if.end44.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !8) #7
  %and.i.i.i27 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i27 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i, align 8
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 111
  %34 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %signal.i.i.i, align 16
  %arrayidx.i.i.i = getelementptr %struct.signal_struct, ptr %35, i32 0, i32 51, i32 8
  %36 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i.i.i, align 8
  %shr.i = lshr i32 %37, 12
  %38 = tail call i32 @llvm.read_register.i32(metadata !8) #7
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 99
  %42 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cred.i, align 16
  %user.i28 = getelementptr inbounds %struct.cred, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %user.i28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %user.i28, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %45, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %45, i32 1, i32 3, i32 1) #7
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #7, !srcloc !18
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !19

if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %47 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %.not.i.i.i.i.i = icmp sgt i32 %47, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.get_uid.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.get_uid.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_uid.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef %.sink.i.i.i.i.i) #7
  br label %get_uid.exit.i

get_uid.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.get_uid.exit.i_crit_edge
  %48 = ptrtoint ptr %user.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %user.i, align 8
  br label %do.body6.i

do.body6.i:                                       ; preds = %atomic_long_cmpxchg.exit.i.do.body6.i_crit_edge, %get_uid.exit.i
  %49 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %user.i, align 8
  %locked_vm.i30 = getelementptr inbounds %struct.user_struct, ptr %50, i32 0, i32 6
  %call.i.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %locked_vm.i30, i32 noundef 4) #7
  %51 = ptrtoint ptr %locked_vm.i30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %locked_vm.i30, align 4
  %53 = ptrtoint ptr %npgs50.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %npgs50.i, align 4
  %add.i = add i32 %54, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %shr.i)
  %cmp.i = icmp ugt i32 %add.i, %shr.i
  %55 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %user.i, align 8
  br i1 %cmp.i, label %xdp_umem_account_pages.exit, label %do.cond13.i

do.cond13.i:                                      ; preds = %do.body6.i
  %locked_vm15.i = getelementptr inbounds %struct.user_struct, ptr %56, i32 0, i32 6
  %call.i.i29.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %locked_vm15.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %locked_vm15.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond13.i
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %locked_vm15.i, ptr %locked_vm15.i, i32 %52, i32 %add.i, ptr elementtype(i32) %locked_vm15.i) #7, !srcloc !28
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %57, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %atomic_long_cmpxchg.exit.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

atomic_long_cmpxchg.exit.i:                       ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %57, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  %cmp17.not.i = icmp eq i32 %asmresult3.i.i.i.i.i, %52
  br i1 %cmp17.not.i, label %atomic_long_cmpxchg.exit.i.if.end57.i_crit_edge, label %atomic_long_cmpxchg.exit.i.do.body6.i_crit_edge

atomic_long_cmpxchg.exit.i.do.body6.i_crit_edge:  ; preds = %atomic_long_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6.i

atomic_long_cmpxchg.exit.i.if.end57.i_crit_edge:  ; preds = %atomic_long_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

xdp_umem_account_pages.exit:                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @free_uid(ptr noundef %56) #7
  %58 = ptrtoint ptr %user.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %user.i, align 8
  br label %if.then8

if.end57.i:                                       ; preds = %atomic_long_cmpxchg.exit.i.if.end57.i_crit_edge, %if.end44.i.if.end57.i_crit_edge
  %call59.i = tail call fastcc i32 @xdp_umem_pin_pages(ptr noundef nonnull %call7.i.i, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %if.end57.i.out_account.i_crit_edge

if.end57.i.out_account.i_crit_edge:               ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_account.i

if.end62.i:                                       ; preds = %if.end57.i
  %59 = ptrtoint ptr %pgs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pgs.i, align 4
  %61 = ptrtoint ptr %npgs50.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %npgs50.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %63 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %63, 512
  %call.i.i = tail call ptr @vmap(ptr noundef %60, i32 noundef %62, i32 noundef 4, i32 noundef %or.i.i) #7
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i, ptr %call7.i.i, align 8
  %tobool.not.i125.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i125.not.i, label %out_unpin.i, label %if.end62.i.cleanup_crit_edge

if.end62.i.cleanup_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

out_unpin.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %pgs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pgs.i, align 4
  %67 = ptrtoint ptr %npgs50.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %npgs50.i, align 4
  tail call void @unpin_user_pages_dirty_lock(ptr noundef %66, i32 noundef %68, i1 noundef zeroext true) #7
  %69 = ptrtoint ptr %pgs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pgs.i, align 4
  tail call void @kvfree(ptr noundef %70) #7
  %71 = ptrtoint ptr %pgs.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %pgs.i, align 4
  br label %out_account.i

out_account.i:                                    ; preds = %out_unpin.i, %if.end57.i.out_account.i_crit_edge
  %err.0.i = phi i32 [ %call59.i, %if.end57.i.out_account.i_crit_edge ], [ -12, %out_unpin.i ]
  %72 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %user.i, align 8
  %tobool.not.i24 = icmp eq ptr %73, null
  br i1 %tobool.not.i24, label %out_account.i.if.then8_crit_edge, label %if.then.i

out_account.i.if.then8_crit_edge:                 ; preds = %out_account.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then.i:                                        ; preds = %out_account.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %npgs50.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %npgs50.i, align 4
  %locked_vm.i = getelementptr inbounds %struct.user_struct, ptr %73, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %locked_vm.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %locked_vm.i, i32 1, i32 3, i32 1) #7
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %locked_vm.i, ptr %locked_vm.i, i32 %75, ptr elementtype(i32) %locked_vm.i) #7, !srcloc !24
  %77 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %user.i, align 8
  tail call void @free_uid(ptr noundef %78) #7
  br label %if.then8

if.then8:                                         ; preds = %if.then.i, %out_account.i.if.then8_crit_edge, %xdp_umem_account_pages.exit, %if.end40.i.if.then8_crit_edge, %land.lhs.true37.i.if.then8_crit_edge, %div_u64_rem.exit.i.if.then8_crit_edge, %if.end21.i.if.then8_crit_edge, %if.end12.i.if.then8_crit_edge, %if.end9.i.if.then8_crit_edge, %if.end5.if.then8_crit_edge
  %retval.0.i.ph = phi i32 [ %err.0.i, %if.then.i ], [ %err.0.i, %out_account.i.if.then8_crit_edge ], [ -22, %if.end9.i.if.then8_crit_edge ], [ -105, %xdp_umem_account_pages.exit ], [ -22, %if.end40.i.if.then8_crit_edge ], [ -22, %land.lhs.true37.i.if.then8_crit_edge ], [ -22, %div_u64_rem.exit.i.if.then8_crit_edge ], [ -22, %if.end21.i.if.then8_crit_edge ], [ -22, %if.end12.i.if.then8_crit_edge ], [ -22, %if.end5.if.then8_crit_edge ]
  %79 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id, align 8
  tail call void @ida_free(ptr noundef nonnull @umem_ida, i32 noundef %80) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %if.end.cleanup.sink.split_crit_edge
  %retval.0.i.ph.sink = phi i32 [ %retval.0.i.ph, %if.then8 ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %81 = inttoptr i32 %retval.0.i.ph.sink to ptr
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end62.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end62.i.cleanup_crit_edge ], [ %81, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xdp_umem_pin_pages(ptr nocapture noundef %umem, i32 noundef %address) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %npgs1 = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 5
  %0 = ptrtoint ptr %npgs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npgs1, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #7
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !19

kvcalloc.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pgs36 = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 10
  br label %cleanup.sink.split

kvcalloc.exit:                                    ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %4, i32 noundef 11712, i32 noundef -1) #12
  %pgs = getelementptr inbounds %struct.xdp_umem, ptr %umem, i32 0, i32 10
  %5 = ptrtoint ptr %pgs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i.i, ptr %pgs, align 4
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kvcalloc.exit.cleanup_crit_edge, label %if.end

kvcalloc.exit.cleanup_crit_edge:                  ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %kvcalloc.exit
  %6 = tail call i32 @llvm.read_register.i32(metadata !8) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 53
  %10 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@xdp_umem_pin_pages, %if.then.i.i)) #7
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !30

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %11, i1 noundef zeroext false) #7
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end
  %mmap_lock.i = getelementptr inbounds %struct.anon.9, ptr %11, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@xdp_umem_pin_pages, %if.then.i3.i)) #7
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !30

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %11, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %12 = ptrtoint ptr %npgs1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npgs1, align 4
  %14 = ptrtoint ptr %pgs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pgs, align 4
  %call6 = tail call i32 @pin_user_pages(i32 noundef %address, i32 noundef %13, i32 noundef 65537, ptr noundef %15, ptr noundef null) #7
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %mm9 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 53
  %18 = ptrtoint ptr %mm9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mm9, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@xdp_umem_pin_pages, %if.then.i.i33)) #7
          to label %mmap_read_unlock.exit [label %if.then.i.i33], !srcloc !30

if.then.i.i33:                                    ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %19, i1 noundef zeroext false) #7
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i33, %mmap_read_lock.exit
  %mmap_lock.i34 = getelementptr inbounds %struct.anon.9, ptr %19, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i34) #7
  %20 = ptrtoint ptr %npgs1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %npgs1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %21)
  %cmp.not = icmp eq i32 %call6, %21
  br i1 %cmp.not, label %mmap_read_unlock.exit.cleanup_crit_edge, label %if.then11

mmap_read_unlock.exit.cleanup_crit_edge:          ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call6)
  %cmp12 = icmp sgt i32 %call6, -1
  br i1 %cmp12, label %if.then13, label %if.then11.out_pgs_crit_edge

if.then11.out_pgs_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_pgs

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %npgs1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call6, ptr %npgs1, align 4
  %23 = ptrtoint ptr %pgs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pgs, align 4
  tail call void @unpin_user_pages_dirty_lock(ptr noundef %24, i32 noundef %call6, i1 noundef zeroext true) #7
  %25 = ptrtoint ptr %pgs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pgs, align 4
  tail call void @kvfree(ptr noundef %26) #7
  %27 = ptrtoint ptr %pgs to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %pgs, align 4
  br label %out_pgs

out_pgs:                                          ; preds = %if.then13, %if.then11.out_pgs_crit_edge
  %err.0 = phi i32 [ -12, %if.then13 ], [ %call6, %if.then11.out_pgs_crit_edge ]
  %28 = ptrtoint ptr %pgs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pgs, align 4
  tail call void @kvfree(ptr noundef %29) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_pgs, %kvcalloc.exit.thread
  %pgs36.sink = phi ptr [ %pgs36, %kvcalloc.exit.thread ], [ %pgs, %out_pgs ]
  %retval.0.ph = phi i32 [ -12, %kvcalloc.exit.thread ], [ %err.0, %out_pgs ]
  %30 = ptrtoint ptr %pgs36.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %pgs36.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %mmap_read_unlock.exit.cleanup_crit_edge, %kvcalloc.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %kvcalloc.exit.cleanup_crit_edge ], [ 0, %mmap_read_unlock.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6}
!llvm.named.register.sp = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @xdp_put_umem.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/xdp/xdp_umem.c", i32 88, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../net/xdp/xdp_umem.c", i32 24, i32 8}
!5 = !{ptr @umem_ida, !4, !"umem_ida", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/xdp/xdp_umem.c", i32 138, i32 23}
!8 = !{!"sp"}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2148240193, i64 2148240225, i64 2148240254, i64 2148240288, i64 2148240319, i64 2148240342}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148328194}
!22 = !{i64 2148242658, i64 2148242690, i64 2148242719, i64 2148242753, i64 2148242784, i64 2148242807}
!23 = !{i64 2149571222}
!24 = !{i64 2148241128, i64 2148241154, i64 2148241183, i64 2148241217, i64 2148241248, i64 2148241271}
!25 = !{i32 0, i32 33}
!26 = !{i64 2148629197, i64 2148629477, i64 2148629811, i64 2148630145}
!27 = !{i64 2148340486}
!28 = !{i64 722399, i64 722423, i64 722444, i64 722461, i64 722478}
!29 = !{i64 2148340712}
!30 = !{i64 2148707994, i64 2148707999, i64 2148708012, i64 2148708056, i64 2148708090, i64 2148708111}
