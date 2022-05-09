; ModuleID = '/llk/IR_all_yes/kernel/sched/core_sched.c_pt.bc'
source_filename = "../kernel/sched/core_sched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.56 }
%struct.atomic_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.93, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.93 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.94, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.94 = type { i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.132, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.97 }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%union.anon.132 = type { %struct.callback_head }
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
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }
%struct.rq_flags = type { i32, %struct.pin_cookie, i32 }
%struct.pin_cookie = type { i32 }

@sched_smt_present = external dso_local global %struct.static_key_false, align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/sched/core_sched.c\00", [38 x i8] zeroinitializer }, align 32
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@sched_core_share_pid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@sched_core_share_pid.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sched_core_share_pid.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@sched_core_share_pid.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sched_core_account_forceidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sched_core_account_forceidle.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sched_core_update_cookie.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(p->core_cookie || cookie) && !sched_core_enabled(rq)\00", [42 x i8] zeroinitializer }, align 32
@__sched_core_enabled = external dso_local global %struct.static_key_false, align 4
@cpu_topology = external dso_local global [4 x %struct.cpu_topology], align 4
@assert_clock_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kernel/sched/sched.h\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rq->clock_update_flags < RQCF_ACT_SKIP\00", [57 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 183, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 220, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 695, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 723, i32 2 }
@___asan_gen_.28 = private constant [29 x i8] c"../kernel/sched/core_sched.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 72, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"../kernel/sched/sched.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 1459, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_core_fork(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %core_node = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 22
  %0 = ptrtoint ptr %core_node to i32
  %1 = ptrtoint ptr %core_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %core_node, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %pi_lock.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 128
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock.i) #8
  %core_cookie.i = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %core_cookie.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_cookie.i, align 16
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %sched_core_clone_cookie.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %8 = inttoptr i32 %7 to ptr
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %8, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %8, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end15.sink.split.i.i.i.i.i, label %if.else.i.i.i.i.i, !prof !38

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i, label %sched_core_clone_cookie.exit, label %if.end15.sink.split.i.i.i.i.i, !prof !39

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i, %if.then.i.i
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i ], [ 1, %if.else.i.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef %.sink.i.i.i.i.i) #8
  br label %sched_core_clone_cookie.exit

sched_core_clone_cookie.exit:                     ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i, %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i, i32 noundef %call.i) #8
  %core_cookie = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 23
  %11 = ptrtoint ptr %core_cookie to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %core_cookie, align 16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sched_core_clone_cookie(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 128
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock) #8
  %core_cookie = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 23
  %0 = ptrtoint ptr %core_cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_cookie, align 16
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %sched_core_get_cookie.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %2 = inttoptr i32 %1 to ptr
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !38

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %sched_core_get_cookie.exit, label %if.end15.sink.split.i.i.i.i, !prof !39

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.then.i
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef %.sink.i.i.i.i) #8
  br label %sched_core_get_cookie.exit

sched_core_get_cookie.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i, %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock, i32 noundef %call) #8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_core_free(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %core_cookie = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 23
  %0 = ptrtoint ptr %core_cookie to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_cookie, align 16
  %2 = inttoptr i32 %1 to ptr
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %sched_core_put_cookie.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %sched_core_put_cookie.exit, label %if.then10.i.i.i.i, !prof !39

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #8
  br label %sched_core_put_cookie.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @kfree(ptr noundef nonnull %2) #8
  tail call void @sched_core_put() #8
  br label %sched_core_put_cookie.exit

sched_core_put_cookie.exit:                       ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_core_share_pid(i32 noundef %cmd, i32 noundef %pid, i32 noundef %type, i32 noundef %uaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %id = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @sched_smt_present, i32 1), ptr blockaddress(@sched_core_share_pid, %cleanup265)) #8
          to label %do.end9 [label %cleanup265], !srcloc !43

do.end9:                                          ; preds = %entry
  %cmp = icmp ugt i32 %type, 2
  %cmp10 = icmp ugt i32 %cmd, 3
  %or.cond = or i1 %cmp10, %cmp
  %cmp12 = icmp slt i32 %pid, 0
  %or.cond340 = or i1 %cmp12, %or.cond
  br i1 %or.cond340, label %cleanup265, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %do.end9
  %cmp14.not = icmp eq i32 %cmd, 0
  %tobool15.not = icmp eq i32 %uaddr, 0
  %or.cond341 = or i1 %cmp14.not, %tobool15.not
  br i1 %or.cond341, label %if.end17, label %cleanup265

if.end17:                                         ; preds = %lor.lhs.false13
  %1 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %rcu_read_lock.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end17
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rcu_read_lock.exit, label %land.lhs.true2.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %rcu_read_lock.exit, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i, %land.lhs.true.i, %if.end17
  %cmp18 = icmp eq i32 %pid, 0
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %rcu_read_lock.exit
  %5 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i343 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i343 to ptr
  %task21 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task21, align 8
  br label %if.end26

if.else:                                          ; preds = %rcu_read_lock.exit
  %call22 = tail call ptr @find_task_by_vpid(i32 noundef %pid) #8
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.else
  %call.i344 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i344, label %rcu_read_unlock.exit, label %land.lhs.true.i347

land.lhs.true.i347:                               ; preds = %if.then24
  %call1.i345 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i346 = icmp eq i32 %call1.i345, 0
  br i1 %tobool.not.i346, label %rcu_read_unlock.exit, label %land.lhs.true2.i349

land.lhs.true2.i349:                              ; preds = %land.lhs.true.i347
  %.b4.i348 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i348, label %rcu_read_unlock.exit, label %if.then.i350

if.then.i350:                                     ; preds = %land.lhs.true2.i349
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i350, %land.lhs.true2.i349, %land.lhs.true.i347, %if.then24
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %9 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i.i.i.i.i351 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i351 to ptr
  %preempt_count.i.i.i.i352 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i352 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i352, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i352, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup265

if.end26:                                         ; preds = %if.else, %if.then19
  %task.0 = phi ptr [ %8, %if.then19 ], [ %call22, %if.else ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %task.0, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !38

if.else.i.i.i.i:                                  ; preds = %if.end26
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %get_task_struct.exit, label %if.end15.sink.split.i.i.i.i, !prof !39

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.end26
  %.sink.i.i.i.i = phi i32 [ 2, %if.end26 ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #8
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i
  %call.i353 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i353, label %rcu_read_unlock.exit363, label %land.lhs.true.i356

land.lhs.true.i356:                               ; preds = %get_task_struct.exit
  %call1.i354 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool.not.i355 = icmp eq i32 %call1.i354, 0
  br i1 %tobool.not.i355, label %rcu_read_unlock.exit363, label %land.lhs.true2.i358

land.lhs.true2.i358:                              ; preds = %land.lhs.true.i356
  %.b4.i357 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i357, label %rcu_read_unlock.exit363, label %if.then.i359

if.then.i359:                                     ; preds = %land.lhs.true2.i358
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_unlock.exit363

rcu_read_unlock.exit363:                          ; preds = %if.then.i359, %land.lhs.true2.i358, %land.lhs.true.i356, %get_task_struct.exit
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %15 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i.i.i.i.i360 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i360 to ptr
  %preempt_count.i.i.i.i361 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i361 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i361, align 4
  %sub.i.i.i362 = add i32 %18, -1
  store volatile i32 %sub.i.i.i362, ptr %preempt_count.i.i.i.i361, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %call28 = tail call zeroext i1 @ptrace_may_access(ptr noundef %task.0, i32 noundef 17) #8
  br i1 %call28, label %if.end30, label %sched_core_put_cookie.exit

if.end30:                                         ; preds = %rcu_read_unlock.exit363
  switch i32 %cmd, label %sched_core_put_cookie.exit [
    i32 0, label %sw.bb
    i32 1, label %sw.bb47
    i32 2, label %sw.bb52
    i32 3, label %sw.bb56
  ]

sw.bb:                                            ; preds = %if.end30
  %and = and i32 %uaddr, 7
  %19 = or i32 %and, %type
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %if.end35, label %sched_core_put_cookie.exit

if.end35:                                         ; preds = %sw.bb
  %call36 = tail call fastcc i32 @sched_core_clone_cookie(ptr noundef %task.0)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end40, label %if.then38

if.then38:                                        ; preds = %if.end35
  %21 = inttoptr i32 %call36 to ptr
  %call39 = call i32 @ptr_to_hashval(ptr noundef nonnull %21, ptr noundef nonnull %id) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35
  %22 = inttoptr i32 %uaddr to ptr
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %conv = zext i32 %24 to i64
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 183) #8
  %25 = call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !46
  %and.i = and i32 %27, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #8, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %28 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %22, i64 %conv, i32 -1226833921) #8, !srcloc !49
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #8, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  br label %out

sw.bb47:                                          ; preds = %if.end30
  %call48 = tail call fastcc i32 @sched_core_alloc_cookie()
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %sched_core_put_cookie.exit, label %sw.epilog

sw.bb52:                                          ; preds = %if.end30
  %29 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i364 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i364 to ptr
  %task54 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task54, align 8
  %call55 = tail call fastcc i32 @sched_core_clone_cookie(ptr noundef %32)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end30
  %cmp57.not = icmp eq i32 %type, 0
  br i1 %cmp57.not, label %if.end60, label %sched_core_put_cookie.exit

if.end60:                                         ; preds = %sw.bb56
  %call61 = tail call fastcc i32 @sched_core_clone_cookie(ptr noundef %task.0)
  %33 = tail call i32 @llvm.read_register.i32(metadata !27) #8
  %and.i365 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i365 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task63, align 8
  tail call fastcc void @__sched_core_set(ptr noundef %36, i32 noundef %call61)
  br label %out

sw.epilog:                                        ; preds = %sw.bb52, %sw.bb47
  %cookie.0 = phi i32 [ %call55, %sw.bb52 ], [ %call48, %sw.bb47 ]
  %cmp64 = icmp eq i32 %type, 0
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %sw.epilog
  tail call fastcc void @__sched_core_set(ptr noundef %task.0, i32 noundef %cookie.0)
  br label %out

if.end67:                                         ; preds = %sw.epilog
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %task.0, i32 0, i32 111
  %37 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %signal.i, align 16
  %arrayidx.i = getelementptr %struct.signal_struct, ptr %38, i32 0, i32 22, i32 %type
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %cmp70.not = icmp eq ptr %40, null
  br i1 %cmp70.not, label %out_tasklist, label %do.body73

do.body73:                                        ; preds = %if.end67
  %call74 = tail call i32 @rcu_read_lock_any_held() #8
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %do.end84

land.lhs.true76:                                  ; preds = %do.body73
  %call77 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.end84, label %land.lhs.true79

land.lhs.true79:                                  ; preds = %land.lhs.true76
  %.b339 = load i1, ptr @sched_core_share_pid.__warned, align 1
  br i1 %.b339, label %do.end84, label %if.then81

if.then81:                                        ; preds = %land.lhs.true79
  store i1 true, ptr @sched_core_share_pid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 220, ptr noundef nonnull @.str.1) #8
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %land.lhs.true79, %land.lhs.true76, %do.body73
  %arrayidx = getelementptr %struct.pid, ptr %40, i32 0, i32 3, i32 %type
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %arrayidx, align 4
  %tobool91.not = icmp eq ptr %42, null
  %.neg338 = mul nsw i32 %type, -8
  %idx.neg = add nsw i32 %.neg338, -1364
  %add.ptr = getelementptr i8, ptr %42, i32 %idx.neg
  %tobool93.not397406 = icmp eq ptr %add.ptr, null
  %tobool93.not397 = or i1 %tobool91.not, %tobool93.not397406
  br i1 %tobool93.not397, label %do.body162, label %for.body

for.body:                                         ; preds = %for.inc135, %do.end84
  %p.0398 = phi ptr [ %add.ptr150, %for.inc135 ], [ %add.ptr, %do.end84 ]
  %call95 = tail call i32 @rcu_read_lock_any_held() #8
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %land.lhs.true97, label %do.end105

land.lhs.true97:                                  ; preds = %for.body
  %call98 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.end105, label %land.lhs.true100

land.lhs.true100:                                 ; preds = %land.lhs.true97
  %.b329337 = load i1, ptr @sched_core_share_pid.__warned.2, align 1
  br i1 %.b329337, label %do.end105, label %if.then102

if.then102:                                       ; preds = %land.lhs.true100
  store i1 true, ptr @sched_core_share_pid.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 220, ptr noundef nonnull @.str.1) #8
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %land.lhs.true100, %land.lhs.true97, %for.body
  %signal = getelementptr inbounds %struct.task_struct, ptr %p.0398, i32 0, i32 111
  %43 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %44, i32 0, i32 3
  br label %for.cond113

for.cond113:                                      ; preds = %for.body118, %do.end105
  %.pn335.in = phi ptr [ %thread_head, %do.end105 ], [ %.pn335, %for.body118 ]
  %45 = ptrtoint ptr %.pn335.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn335 = load volatile ptr, ptr %.pn335.in, align 4
  %46 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %signal, align 16
  %thread_head115 = getelementptr inbounds %struct.signal_struct, ptr %47, i32 0, i32 3
  %cmp116.not = icmp eq ptr %.pn335, %thread_head115
  br i1 %cmp116.not, label %for.inc135, label %for.body118

for.body118:                                      ; preds = %for.cond113
  %p.1 = getelementptr i8, ptr %.pn335, i32 -1404
  %call119 = tail call zeroext i1 @ptrace_may_access(ptr noundef %p.1, i32 noundef 17) #8
  br i1 %call119, label %for.cond113, label %out_tasklist

for.inc135:                                       ; preds = %for.cond113
  %arrayidx141 = getelementptr %struct.task_struct, ptr %p.0398, i32 0, i32 79, i32 %type
  %48 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %arrayidx141, align 4
  %tobool145.not = icmp eq ptr %49, null
  %add.ptr150 = getelementptr i8, ptr %49, i32 %idx.neg
  %tobool93.not409 = icmp eq ptr %add.ptr150, null
  %tobool93.not = select i1 %tobool145.not, i1 true, i1 %tobool93.not409
  br i1 %tobool93.not, label %do.body162, label %for.body

do.body162:                                       ; preds = %for.inc135, %do.end84
  %call163 = tail call i32 @rcu_read_lock_any_held() #8
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %land.lhs.true165, label %do.end173

land.lhs.true165:                                 ; preds = %do.body162
  %call166 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %do.end173, label %land.lhs.true168

land.lhs.true168:                                 ; preds = %land.lhs.true165
  %.b330334 = load i1, ptr @sched_core_share_pid.__warned.3, align 1
  br i1 %.b330334, label %do.end173, label %if.then170

if.then170:                                       ; preds = %land.lhs.true168
  store i1 true, ptr @sched_core_share_pid.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 227, ptr noundef nonnull @.str.1) #8
  br label %do.end173

do.end173:                                        ; preds = %if.then170, %land.lhs.true168, %land.lhs.true165, %do.body162
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %arrayidx, align 4
  %tobool184.not = icmp eq ptr %51, null
  %add.ptr189 = getelementptr i8, ptr %51, i32 %idx.neg
  %tobool194.not403407 = icmp eq ptr %add.ptr189, null
  %tobool194.not403 = or i1 %tobool184.not, %tobool194.not403407
  br i1 %tobool194.not403, label %out_tasklist, label %for.body195

for.body195:                                      ; preds = %for.inc241, %do.end173
  %p.3404 = phi ptr [ %add.ptr257, %for.inc241 ], [ %add.ptr189, %do.end173 ]
  %call198 = tail call i32 @rcu_read_lock_any_held() #8
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %land.lhs.true200, label %do.end208

land.lhs.true200:                                 ; preds = %for.body195
  %call201 = tail call i32 @debug_lockdep_rcu_enabled() #8
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %do.end208, label %land.lhs.true203

land.lhs.true203:                                 ; preds = %land.lhs.true200
  %.b331332 = load i1, ptr @sched_core_share_pid.__warned.4, align 1
  br i1 %.b331332, label %do.end208, label %if.then205

if.then205:                                       ; preds = %land.lhs.true203
  store i1 true, ptr @sched_core_share_pid.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 227, ptr noundef nonnull @.str.1) #8
  br label %do.end208

do.end208:                                        ; preds = %if.then205, %land.lhs.true203, %land.lhs.true200, %for.body195
  %signal214 = getelementptr inbounds %struct.task_struct, ptr %p.3404, i32 0, i32 111
  %52 = ptrtoint ptr %signal214 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %signal214, align 16
  %thread_head215 = getelementptr inbounds %struct.signal_struct, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %thread_head215 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn399 = load volatile ptr, ptr %thread_head215, align 4
  %cmp223.not401 = icmp eq ptr %.pn399, %thread_head215
  br i1 %cmp223.not401, label %for.inc241, label %for.body225

for.body225:                                      ; preds = %for.body225, %do.end208
  %.pn402 = phi ptr [ %.pn, %for.body225 ], [ %.pn399, %do.end208 ]
  %p.4 = getelementptr i8, ptr %.pn402, i32 -1404
  tail call fastcc void @__sched_core_set(ptr noundef %p.4, i32 noundef %cookie.0)
  %55 = ptrtoint ptr %.pn402 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn = load volatile ptr, ptr %.pn402, align 4
  %56 = ptrtoint ptr %signal214 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %signal214, align 16
  %thread_head222 = getelementptr inbounds %struct.signal_struct, ptr %57, i32 0, i32 3
  %cmp223.not = icmp eq ptr %.pn, %thread_head222
  br i1 %cmp223.not, label %for.inc241, label %for.body225

for.inc241:                                       ; preds = %for.body225, %do.end208
  %arrayidx248 = getelementptr %struct.task_struct, ptr %p.3404, i32 0, i32 79, i32 %type
  %58 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %arrayidx248, align 4
  %tobool252.not = icmp eq ptr %59, null
  %add.ptr257 = getelementptr i8, ptr %59, i32 %idx.neg
  %tobool194.not410 = icmp eq ptr %add.ptr257, null
  %tobool194.not = select i1 %tobool252.not, i1 true, i1 %tobool194.not410
  br i1 %tobool194.not, label %out_tasklist, label %for.body195

out_tasklist:                                     ; preds = %for.inc241, %do.end173, %for.body118, %if.end67
  %err.3 = phi i32 [ 0, %if.end67 ], [ 0, %do.end173 ], [ 0, %for.inc241 ], [ -1, %for.body118 ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #8
  br label %out

out:                                              ; preds = %out_tasklist, %if.then66, %if.end60, %if.end40
  %err.4 = phi i32 [ 0, %if.end60 ], [ 0, %if.then66 ], [ %err.3, %out_tasklist ], [ %28, %if.end40 ]
  %cookie.1 = phi i32 [ %call61, %if.end60 ], [ %cookie.0, %if.then66 ], [ %cookie.0, %out_tasklist ], [ %call36, %if.end40 ]
  %60 = inttoptr i32 %cookie.1 to ptr
  %tobool.not.i366 = icmp eq i32 %cookie.1, 0
  br i1 %tobool.not.i366, label %sched_core_put_cookie.exit, label %land.lhs.true.i368

land.lhs.true.i368:                               ; preds = %out
  %call.i.i.i.i.i.i367 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %60, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @llvm.prefetch.p0(ptr nonnull %60, i32 1, i32 3, i32 1) #8
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %60, ptr nonnull %60, i32 1, ptr nonnull elementtype(i32) %60) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i370, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i368
  %.not.i.i.i.i369 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i369, label %sched_core_put_cookie.exit, label %if.then10.i.i.i.i, !prof !39

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef nonnull %60, i32 noundef 3) #8
  br label %sched_core_put_cookie.exit

if.then.i370:                                     ; preds = %land.lhs.true.i368
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  call void @kfree(ptr noundef nonnull %60) #8
  call void @sched_core_put() #8
  br label %sched_core_put_cookie.exit

sched_core_put_cookie.exit:                       ; preds = %if.then.i370, %if.then10.i.i.i.i, %if.end5.i.i.i.i, %out, %sw.bb56, %sw.bb47, %sw.bb, %if.end30, %rcu_read_unlock.exit363
  %err.4392 = phi i32 [ %err.4, %out ], [ %err.4, %if.end5.i.i.i.i ], [ %err.4, %if.then10.i.i.i.i ], [ %err.4, %if.then.i370 ], [ -22, %if.end30 ], [ -22, %sw.bb56 ], [ -12, %sw.bb47 ], [ -22, %sw.bb ], [ -1, %rcu_read_unlock.exit363 ]
  %call.i.i.i.i.i.i372 = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i373 = extractvalue { i32, i32, i32 } %62, 0
  %cmp.i.i.i.i374 = icmp eq i32 %asmresult.i.i.i.i.i.i.i373, 1
  br i1 %cmp.i.i.i.i374, label %if.then.i378, label %if.end5.i.i.i.i376

if.end5.i.i.i.i376:                               ; preds = %sched_core_put_cookie.exit
  %.not.i.i.i.i375 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i373, 0
  br i1 %.not.i.i.i.i375, label %cleanup265, label %if.then10.i.i.i.i377, !prof !39

if.then10.i.i.i.i377:                             ; preds = %if.end5.i.i.i.i376
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #8
  br label %cleanup265

if.then.i378:                                     ; preds = %sched_core_put_cookie.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  call void @__put_task_struct(ptr noundef %task.0) #8
  br label %cleanup265

cleanup265:                                       ; preds = %if.then.i378, %if.then10.i.i.i.i377, %if.end5.i.i.i.i376, %rcu_read_unlock.exit, %lor.lhs.false13, %do.end9, %entry
  %retval.0 = phi i32 [ -3, %rcu_read_unlock.exit ], [ -22, %lor.lhs.false13 ], [ -22, %do.end9 ], [ %err.4392, %if.end5.i.i.i.i376 ], [ %err.4392, %if.then10.i.i.i.i377 ], [ %err.4392, %if.then.i378 ], [ -19, %entry ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptr_to_hashval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sched_core_alloc_cookie() unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i, i32 noundef 4) #8
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %call7.i, align 8
  tail call void @sched_core_get() #8
  %2 = ptrtoint ptr %call7.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sched_core_set(ptr noundef %p, i32 noundef %cookie) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq i32 %cookie, 0
  br i1 %tobool.not.i, label %sched_core_get_cookie.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %0 = inttoptr i32 %cookie to ptr
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %0, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %0, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #8, !srcloc !37
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.sink.split.i.i.i.i, label %if.else.i.i.i.i, !prof !38

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i, label %sched_core_get_cookie.exit, label %if.end15.sink.split.i.i.i.i, !prof !39

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i, %if.then.i
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i ], [ 1, %if.else.i.i.i.i ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %.sink.i.i.i.i) #8
  br label %sched_core_get_cookie.exit

sched_core_get_cookie.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i, %entry
  %call1 = tail call fastcc i32 @sched_core_update_cookie(ptr noundef %p, i32 noundef %cookie)
  %3 = inttoptr i32 %call1 to ptr
  %tobool.not.i4 = icmp eq i32 %call1, 0
  br i1 %tobool.not.i4, label %sched_core_put_cookie.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sched_core_get_cookie.exit
  %call.i.i.i.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i7, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  %.not.i.i.i.i6 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i6, label %sched_core_put_cookie.exit, label %if.then10.i.i.i.i, !prof !39

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #8
  br label %sched_core_put_cookie.exit

if.then.i7:                                       ; preds = %land.lhs.true.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @kfree(ptr noundef nonnull %3) #8
  tail call void @sched_core_put() #8
  br label %sched_core_put_cookie.exit

sched_core_put_cookie.exit:                       ; preds = %if.then.i7, %if.then10.i.i.i.i, %if.end5.i.i.i.i, %sched_core_get_cookie.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__sched_core_account_forceidle(ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 46
  %0 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu.i, align 4
  %thread_sibling.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %1, i32 5
  %core = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %lockdep_assert_rq_held.exit.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %entry
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 81
  %5 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i, label %__rq_lockp.exit.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 79
  %7 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i.i.i, align 8
  br label %__rq_lockp.exit.i.i

__rq_lockp.exit.i.i:                              ; preds = %if.then.i.i.i, %land.rhs.i.i
  %retval.0.i.i.i = phi ptr [ %8, %if.then.i.i.i ], [ %3, %land.rhs.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #8
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %lockdep_assert_rq_held.exit.i, !prof !38

do.end.i.i:                                       ; preds = %__rq_lockp.exit.i.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1309, i32 noundef 9, ptr noundef null) #8
  br label %lockdep_assert_rq_held.exit.i

lockdep_assert_rq_held.exit.i:                    ; preds = %do.end.i.i, %__rq_lockp.exit.i.i, %entry
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 25
  %9 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ult i32 %10, 2
  br i1 %cmp.i.i, label %land.rhs.i3.i, label %rq_clock.exit

land.rhs.i3.i:                                    ; preds = %lockdep_assert_rq_held.exit.i
  %.b37.i.i = load i1, ptr @assert_clock_updated.__already_done, align 1
  br i1 %.b37.i.i, label %rq_clock.exit, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %land.rhs.i3.i
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.11) #8
  br label %rq_clock.exit

rq_clock.exit:                                    ; preds = %if.then.i.i, %land.rhs.i3.i, %lockdep_assert_rq_held.exit.i
  %clock.i = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 26
  %11 = ptrtoint ptr %clock.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %clock.i, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %lockdep_assert_rq_held.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %rq_clock.exit
  %core_enabled.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 81
  %14 = ptrtoint ptr %core_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_enabled.i.i, align 128
  %tobool.not.i.i180 = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i180, label %__rq_lockp.exit.i, label %if.then.i.i181

if.then.i.i181:                                   ; preds = %land.rhs.i
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 8
  br label %__rq_lockp.exit.i

__rq_lockp.exit.i:                                ; preds = %if.then.i.i181, %land.rhs.i
  %retval.0.i.i = phi ptr [ %17, %if.then.i.i181 ], [ %rq, %land.rhs.i ]
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %lockdep_assert_rq_held.exit, !prof !38

do.end.i:                                         ; preds = %__rq_lockp.exit.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1309, i32 noundef 9, ptr noundef null) #8
  br label %lockdep_assert_rq_held.exit

lockdep_assert_rq_held.exit:                      ; preds = %do.end.i, %__rq_lockp.exit.i, %rq_clock.exit
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 8
  %core_forceidle_count = getelementptr inbounds %struct.rq, ptr %19, i32 0, i32 87
  %20 = ptrtoint ptr %core_forceidle_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %core_forceidle_count, align 8
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %land.rhs, label %if.end32

land.rhs:                                         ; preds = %lockdep_assert_rq_held.exit
  %.b178 = load i1, ptr @__sched_core_account_forceidle.__already_done, align 1
  br i1 %.b178, label %if.end32, label %if.then, !prof !39

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @__sched_core_account_forceidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs, %lockdep_assert_rq_held.exit
  %22 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core, align 8
  %core_forceidle_start = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 90
  %24 = ptrtoint ptr %core_forceidle_start to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %core_forceidle_start, align 8
  %cmp = icmp eq i64 %25, 0
  br i1 %cmp, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.end32
  %sub = sub i64 %12, %25
  %cmp45 = icmp slt i64 %sub, 1
  br i1 %cmp45, label %cleanup, label %if.end53, !prof !38

if.end53:                                         ; preds = %if.end42
  %26 = ptrtoint ptr %core_forceidle_start to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %12, ptr %core_forceidle_start, align 8
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 8
  %core_forceidle_occupation = getelementptr inbounds %struct.rq, ptr %28, i32 0, i32 89
  %29 = ptrtoint ptr %core_forceidle_occupation to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %core_forceidle_occupation, align 32
  %tobool58.not = icmp eq i32 %30, 0
  br i1 %tobool58.not, label %land.rhs67, label %if.else.critedge

land.rhs67:                                       ; preds = %if.end53
  %.b176177 = load i1, ptr @__sched_core_account_forceidle.__already_done.5, align 1
  br i1 %.b176177, label %if.end128, label %if.then78, !prof !39

if.then78:                                        ; preds = %land.rhs67
  store i1 true, ptr @__sched_core_account_forceidle.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 9, ptr noundef null) #8
  br label %if.end128

if.else.critedge:                                 ; preds = %if.end53
  %core_forceidle_count116 = getelementptr inbounds %struct.rq, ptr %28, i32 0, i32 87
  %31 = ptrtoint ptr %core_forceidle_count116 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %core_forceidle_count116, align 8
  %cmp117 = icmp ugt i32 %32, 1
  %cmp120 = icmp ne i32 %30, 1
  %or.cond = select i1 %cmp117, i1 true, i1 %cmp120
  br i1 %or.cond, label %if.then121, label %if.end128

if.then121:                                       ; preds = %if.else.critedge
  %conv = zext i32 %32 to i64
  %mul = mul i64 %sub, %conv
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !39

if.then168.i.i:                                   ; preds = %if.then121
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %30
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.end128

if.else174.i.i:                                   ; preds = %if.then121
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %30, i64 %mul) #11, !srcloc !50
  %asmresult1.i.i.i = extractvalue { i64, i64 } %33, 1
  br label %if.end128

if.end128:                                        ; preds = %if.else174.i.i, %if.then168.i.i, %if.else.critedge, %if.then78, %land.rhs67
  %delta.0 = phi i64 [ %sub, %if.then78 ], [ %sub, %land.rhs67 ], [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ], [ %sub, %if.else.critedge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %call129185 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %thread_sibling.i) #12
  %cmp130186 = icmp ult i32 %call129185, %34
  br i1 %cmp130186, label %do.body132, label %cleanup

do.body132:                                       ; preds = %for.cond.backedge, %if.end128
  %call129187 = phi i32 [ %call129, %for.cond.backedge ], [ %call129185, %if.end128 ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call129187
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %add = add i32 %36, ptrtoint (ptr @runqueues to i32)
  %37 = inttoptr i32 %add to ptr
  %core_pick = getelementptr inbounds %struct.rq, ptr %37, i32 0, i32 80
  %38 = ptrtoint ptr %core_pick to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %core_pick, align 4
  %tobool137.not = icmp eq ptr %39, null
  br i1 %tobool137.not, label %cond.false, label %cond.end

cond.false:                                       ; preds = %do.body132
  %curr = getelementptr inbounds %struct.rq, ptr %37, i32 0, i32 20
  %40 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %curr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body132
  %cond = phi ptr [ %41, %cond.false ], [ %39, %do.body132 ]
  %idle = getelementptr inbounds %struct.rq, ptr %37, i32 0, i32 21
  %42 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %idle, align 4
  %cmp138 = icmp eq ptr %cond, %43
  br i1 %cmp138, label %for.cond.backedge, label %do.body142

do.body142:                                       ; preds = %cond.end
  %core_forceidle_sum = getelementptr inbounds %struct.task_struct, ptr %cond, i32 0, i32 29, i32 28
  %44 = ptrtoint ptr %core_forceidle_sum to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %core_forceidle_sum, align 32
  %add143 = add i64 %45, %delta.0
  store i64 %add143, ptr %core_forceidle_sum, align 32
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.body142, %cond.end
  %call129 = tail call i32 @cpumask_next(i32 noundef %call129187, ptr noundef %thread_sibling.i) #12
  %cmp130 = icmp ult i32 %call129, %34
  br i1 %cmp130, label %do.body132, label %cleanup

cleanup:                                          ; preds = %for.cond.backedge, %if.end128, %if.end42, %if.end32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__sched_core_tick(ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 79
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %core_forceidle_count = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 87
  %2 = ptrtoint ptr %core_forceidle_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_forceidle_count, align 8
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp.not = icmp eq ptr %1, %rq
  br i1 %cmp.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @update_rq_clock(ptr noundef %1) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  tail call void @__sched_core_account_forceidle(ptr noundef %rq)
  br label %return

return:                                           ; preds = %if.end4, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_rq_clock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_core_put() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  br label %__here

__here:                                           ; preds = %entry
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_core_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sched_core_update_cookie(ptr noundef %p, i32 noundef %cookie) unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %rf = alloca %struct.rq_flags, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rf) #8
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rf, align 4, !annotation !51
  %1 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !51
  %3 = getelementptr inbounds %struct.rq_flags, ptr %rf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !51
  %call = call ptr @task_rq_lock(ptr noundef %p, ptr noundef nonnull %rf) #8
  %core_cookie = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 23
  %5 = ptrtoint ptr %core_cookie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %core_cookie, align 16
  %7 = or i32 %6, %cookie
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.end33, label %land.rhs

land.rhs:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @__sched_core_enabled, ptr blockaddress(@sched_core_update_cookie, %land.rhs.i)) #8
          to label %land.rhs6 [label %land.rhs.i], !srcloc !52

land.rhs.i:                                       ; preds = %land.rhs
  %core_enabled.i = getelementptr inbounds %struct.rq, ptr %call, i32 0, i32 81
  %9 = ptrtoint ptr %core_enabled.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %core_enabled.i, align 128
  %tobool3.i = icmp eq i32 %10, 0
  br i1 %tobool3.i, label %land.rhs6, label %if.end33

land.rhs6:                                        ; preds = %land.rhs.i, %land.rhs
  %.b72 = load i1, ptr @sched_core_update_cookie.__already_done, align 1
  br i1 %.b72, label %if.end33, label %if.then, !prof !39

if.then:                                          ; preds = %land.rhs6
  store i1 true, ptr @sched_core_update_cookie.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.9) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then, %land.rhs6, %land.rhs.i, %entry
  %core_node.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 22
  %11 = ptrtoint ptr %core_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %core_node.i, align 4
  %13 = ptrtoint ptr %core_node.i to i32
  %cmp.i.not = icmp eq i32 %12, %13
  br i1 %cmp.i.not, label %if.end45, label %if.then49

if.end45:                                         ; preds = %if.end33
  %14 = ptrtoint ptr %core_cookie to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_cookie, align 16
  store i32 %cookie, ptr %core_cookie, align 16
  br label %if.end50

if.then49:                                        ; preds = %if.end33
  call void @sched_core_dequeue(ptr noundef %call, ptr noundef %p, i32 noundef 2) #8
  %16 = ptrtoint ptr %core_cookie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_cookie, align 16
  store i32 %cookie, ptr %core_cookie, align 16
  call void @sched_core_enqueue(ptr noundef %call, ptr noundef %p) #8
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end45
  %18 = phi i32 [ %17, %if.then49 ], [ %15, %if.end45 ]
  %on_cpu.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 5
  %19 = ptrtoint ptr %on_cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %on_cpu.i, align 4
  %tobool52.not = icmp eq i32 %20, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %if.end50
  call void @resched_curr(ptr noundef %call) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end50
  %clock_update_flags.i.i = getelementptr inbounds %struct.rq, ptr %call, i32 0, i32 25
  %21 = ptrtoint ptr %clock_update_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clock_update_flags.i.i, align 4
  %cmp.i.i = icmp ugt i32 %22, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end54
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %3, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end54
  %core_enabled.i.i.i = getelementptr inbounds %struct.rq, ptr %call, i32 0, i32 81
  %24 = ptrtoint ptr %core_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %core_enabled.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i, label %task_rq_unlock.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  %core.i.i.i = getelementptr inbounds %struct.rq, ptr %call, i32 0, i32 79
  %26 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core.i.i.i, align 8
  br label %task_rq_unlock.exit

task_rq_unlock.exit:                              ; preds = %if.then.i.i.i, %if.end.i.i
  %retval.0.i.i.i = phi ptr [ %27, %if.then.i.i.i ], [ %call, %if.end.i.i ]
  %dep_map.i.i = getelementptr inbounds %struct.raw_spinlock, ptr %retval.0.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack.i.i = load i32, ptr %1, align 4
  %29 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  call void @lock_unpin_lock(ptr noundef %dep_map.i.i, [1 x i32] %29) #8
  call void @raw_spin_rq_unlock(ptr noundef %call) #8
  %pi_lock.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 128
  %30 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rf, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i, i32 noundef %31) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rf) #8
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_rq_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_core_dequeue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_core_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_curr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_spin_rq_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_unpin_lock(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !13, !15, !16, !17, !19, !20, !22, !23, !25, !26}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/sched/core_sched.c", i32 183, i32 9}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../kernel/sched/core_sched.c", i32 220, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../kernel/sched/core_sched.c", i32 227, i32 2}
!8 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../kernel/sched/core_sched.c", i32 252, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/sched/core_sched.c", i32 263, i32 6}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../kernel/sched/core_sched.c", i32 72, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../kernel/sched/sched.h", i32 1459, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148518087, i64 2148518119, i64 2148518148, i64 2148518182, i64 2148518213, i64 2148518236}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2148606088}
!41 = !{i64 2148520552, i64 2148520584, i64 2148520613, i64 2148520647, i64 2148520678, i64 2148520701}
!42 = !{i64 2149652058}
!43 = !{i64 2148330353, i64 2148330358, i64 2148330379, i64 2148330423, i64 2148330457, i64 2148330478}
!44 = !{i64 2149344071}
!45 = !{i64 2149344337}
!46 = !{i64 3243646}
!47 = !{i64 3243843}
!48 = !{i64 2150729076}
!49 = !{i64 2158464193, i64 2158464473, i64 2158464807, i64 2158465141}
!50 = !{i64 2148355137, i64 2148355417, i64 2148355751, i64 2148356085}
!51 = !{!"auto-init"}
!52 = !{i64 2148329950, i64 2148329955, i64 2148329968, i64 2148330012, i64 2148330046, i64 2148330067}
