; ModuleID = '/llk/IR_all_yes/drivers/tty/tty_audit.c_pt.bc'
source_filename = "../drivers/tty/tty_audit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type opaque
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.42 }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%union.anon.63 = type { %struct.callback_head }
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
%struct.tty_audit_buf = type { %struct.mutex, i32, i8, i32, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.68, %struct.anon.69, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.68 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.69 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.32 = type { %struct.callback_head }

@audit_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ioctl=TIOCSTI\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tty\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/tty/tty_audit.c\00", [40 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@tty_audit_log.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s pid=%u uid=%u auid=%u ses=%u major=%d minor=%d comm=\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" data=\00", [25 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"out of memory in TTY auditing\00", [34 x i8] zeroinitializer }, align 32
@tty_audit_buf_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&buf->mutex\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967293]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 146, i32 17 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 99, i32 16 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 56, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 66, i32 39 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 74, i32 24 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 79, i32 24 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 695, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 723, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 187, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [27 x i8] c"../drivers/tty/tty_audit.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 42, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @tty_audit_buf_alloc.__key, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tty_audit_buf_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tty_audit_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %tty_audit_buf = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 55
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tty_audit_buf, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %tty_audit_buf, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 -3, ptr %tty_audit_buf) #9, !srcloc !36
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = inttoptr i32 %asmresult.i to ptr
  %valid.i = getelementptr inbounds %struct.tty_audit_buf, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.end.tty_audit_buf_free.exit_crit_edge, label %if.end.i

if.end.tty_audit_buf_free.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_audit_buf_free.exit

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %10 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.i = icmp eq i32 %10, 0
  br i1 %cmp1.i, label %if.end.i.return.sink.split.i_crit_edge, label %if.end4.i

if.end.i.return.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.tty_audit_buf, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev.i, align 4
  %data.i = getelementptr inbounds %struct.tty_audit_buf, ptr %7, i32 0, i32 4
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  tail call fastcc void @tty_audit_log(ptr noundef nonnull @.str.1, i32 noundef %12, ptr noundef %14, i32 noundef %9) #9
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end4.i, %if.end.i.return.sink.split.i_crit_edge
  %15 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %valid.i, align 4
  br label %tty_audit_buf_free.exit

tty_audit_buf_free.exit:                          ; preds = %return.sink.split.i, %if.end.tty_audit_buf_free.exit_crit_edge
  %data.i21 = getelementptr inbounds %struct.tty_audit_buf, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %data.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i21, align 4
  tail call void @kfree(ptr noundef %17) #9
  tail call void @kfree(ptr noundef nonnull %7) #9
  br label %cleanup

cleanup:                                          ; preds = %tty_audit_buf_free.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tty_audit_fork(ptr nocapture noundef writeonly %sig) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %audit_tty = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %audit_tty to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audit_tty, align 4
  %audit_tty1 = getelementptr inbounds %struct.signal_struct, ptr %sig, i32 0, i32 54
  %8 = ptrtoint ptr %audit_tty1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %audit_tty1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tty_audit_tiocsti(ptr nocapture noundef readonly %tty, i8 noundef zeroext %ch) local_unnamed_addr #0 align 64 {
entry:
  %ch.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %ch, ptr %ch.addr, align 1
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %1 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %major, align 4
  %shl = shl i32 %4, 20
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %minor_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %minor_start, align 4
  %or = or i32 %shl, %6
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %add = add i32 %or, %8
  %call = tail call i32 @tty_audit_push()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %9 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @tty_audit_log(ptr noundef nonnull @.str, i32 noundef %add, ptr noundef nonnull %ch.addr, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tty_audit_push() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 111
  %4 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %signal, align 16
  %audit_tty = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 54
  %6 = ptrtoint ptr %audit_tty to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audit_tty, align 4
  %neg = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool.not.not = icmp eq i32 %neg, 0
  br i1 %tobool.not.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tty_audit_buf.i = getelementptr inbounds %struct.signal_struct, ptr %5, i32 0, i32 55
  %8 = ptrtoint ptr %tty_audit_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tty_audit_buf.i, align 8
  %cmp.i = icmp eq ptr %9, inttoptr (i32 -3 to ptr)
  br i1 %cmp.i, label %tty_audit_buf_ref.exit.thread, label %tty_audit_buf_ref.exit, !prof !38

tty_audit_buf_ref.exit.thread:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

tty_audit_buf_ref.exit:                           ; preds = %if.end
  %tobool.not.i = icmp eq ptr %9, null
  %cmp.i9 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i9
  br i1 %spec.select.i, label %tty_audit_buf_ref.exit.cleanup_crit_edge, label %if.then3

tty_audit_buf_ref.exit.cleanup_crit_edge:         ; preds = %tty_audit_buf_ref.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %tty_audit_buf_ref.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull %9, i32 noundef 0) #9
  %valid.i = getelementptr inbounds %struct.tty_audit_buf, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i10 = icmp eq i32 %11, 0
  br i1 %cmp.i10, label %if.then3.tty_audit_buf_push.exit_crit_edge, label %if.end.i

if.then3.tty_audit_buf_push.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_audit_buf_push.exit

if.end.i:                                         ; preds = %if.then3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %12 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.i = icmp eq i32 %12, 0
  br i1 %cmp1.i, label %if.end.i.return.sink.split.i_crit_edge, label %if.end4.i

if.end.i.return.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.tty_audit_buf, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dev.i, align 4
  %data.i = getelementptr inbounds %struct.tty_audit_buf, ptr %9, i32 0, i32 4
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  tail call fastcc void @tty_audit_log(ptr noundef nonnull @.str.1, i32 noundef %14, ptr noundef %16, i32 noundef %11) #9
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end4.i, %if.end.i.return.sink.split.i_crit_edge
  %17 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %valid.i, align 4
  br label %tty_audit_buf_push.exit

tty_audit_buf_push.exit:                          ; preds = %return.sink.split.i, %if.then3.tty_audit_buf_push.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull %9) #9
  br label %cleanup

cleanup:                                          ; preds = %tty_audit_buf_push.exit, %tty_audit_buf_ref.exit.cleanup_crit_edge, %tty_audit_buf_ref.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %tty_audit_buf_push.exit ], [ 0, %tty_audit_buf_ref.exit.cleanup_crit_edge ], [ 0, %tty_audit_buf_ref.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tty_audit_log(ptr noundef %description, i32 noundef %dev, ptr noundef %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid.i, align 8
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 98
  %10 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %real_cred, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true8

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @tty_audit_log.__warned, align 1
  br i1 %.b46, label %land.lhs.true8.do.end11_crit_edge, label %if.then

land.lhs.true8.do.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tty_audit_log.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 66, ptr noundef nonnull @.str.3) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then, %land.lhs.true8.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %uid13 = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %uid13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %___val.sroa.0.0.copyload = load i32, ptr %uid13, align 4
  %call.i47 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i47, label %do.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i50

do.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i50:                                ; preds = %do.end11
  %call1.i48 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i52

land.lhs.true.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i52:                               ; preds = %land.lhs.true.i50
  %.b4.i51 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i51, label %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, label %if.then.i53

land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i53:                                      ; preds = %land.lhs.true2.i52
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i53, %land.lhs.true2.i52.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i50.rcu_read_unlock.exit_crit_edge, %do.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i.i.i.i.i54 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i54 to ptr
  %preempt_count.i.i.i.i55 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i55, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i55, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %.fca.0.insert39 = insertvalue [1 x i32] poison, i32 %___val.sroa.0.0.copyload, 0
  %call14 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert39) #9
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %loginuid.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 121
  %19 = ptrtoint ptr %loginuid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %retval.sroa.0.0.copyload.i = load i32, ptr %loginuid.i, align 16
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.copyload.i, 0
  %call21 = tail call i32 @from_kuid(ptr noundef nonnull @init_user_ns, [1 x i32] %.fca.0.insert) #9
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %sessionid.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 122
  %22 = ptrtoint ptr %sessionid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sessionid.i, align 4
  %call26 = tail call ptr @audit_log_start(ptr noundef null, i32 noundef 3264, i32 noundef 1319) #9
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %rcu_read_unlock.exit.if.end37_crit_edge, label %if.then28

rcu_read_unlock.exit.if.end37_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then28:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #9
  %shr = lshr i32 %dev, 20
  %and = and i32 %dev, 1048575
  %24 = call ptr @memset(ptr %name, i32 255, i32 16)
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call26, ptr noundef nonnull @.str.4, ptr noundef %description, i32 noundef %5, i32 noundef %call14, i32 noundef %call21, i32 noundef %23, i32 noundef %shr, i32 noundef %and) #9
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %call35 = call ptr @__get_task_comm(ptr noundef nonnull %name, i32 noundef 16, ptr noundef %26) #9
  call void @audit_log_untrustedstring(ptr noundef nonnull %call26, ptr noundef nonnull %name) #9
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef nonnull %call26, ptr noundef nonnull @.str.5) #9
  call void @audit_log_n_hex(ptr noundef nonnull %call26, ptr noundef %data, i32 noundef %size) #9
  call void @audit_log_end(ptr noundef nonnull %call26) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then28, %rcu_read_unlock.exit.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tty_audit_add_data(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_lflag = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 13, i32 3
  %0 = ptrtoint ptr %c_lflag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c_lflag, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and.lobit = lshr exact i32 %and, 1
  %2 = tail call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 111
  %6 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signal, align 16
  %audit_tty2 = getelementptr inbounds %struct.signal_struct, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %audit_tty2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %audit_tty2, align 4
  %neg = xor i32 %9, -1
  %and3 = and i32 %neg, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp ne i32 %and3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  %or.cond = or i1 %cmp, %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end11, !prof !41

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %entry
  %driver = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 3
  %10 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver, align 4
  %type = getelementptr inbounds %struct.tty_driver, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %13)
  %cmp12 = icmp eq i16 %13, 4
  br i1 %cmp12, label %land.lhs.true, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end11
  %subtype = getelementptr inbounds %struct.tty_driver, ptr %11, i32 0, i32 11
  %14 = ptrtoint ptr %subtype to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %subtype, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp16 = icmp eq i16 %15, 1
  br i1 %cmp16, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %and21 = and i32 %neg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp ne i32 %and21, 0
  %brmerge = select i1 %tobool22.not, i1 %tobool.not, i1 false
  %and28 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond120 = select i1 %brmerge, i1 %tobool29.not, i1 false
  br i1 %or.cond120, label %if.end19.cleanup_crit_edge, label %if.end31

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end19
  %16 = tail call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 111
  %20 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %signal.i.i, align 16
  %tty_audit_buf.i.i = getelementptr inbounds %struct.signal_struct, ptr %21, i32 0, i32 55
  %22 = ptrtoint ptr %tty_audit_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tty_audit_buf.i.i, align 8
  %magicptr.i = ptrtoint ptr %23 to i32
  %24 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i, label %if.end31.tty_audit_buf_get.exit_crit_edge [
    i32 -3, label %tty_audit_buf_ref.exit.thread.i
    i32 0, label %if.end.i
  ], !prof !42

if.end31.tty_audit_buf_get.exit_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_audit_buf_get.exit

tty_audit_buf_ref.exit.thread.i:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 108) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then2.i_crit_edge, label %if.end.i.i

if.end.i.if.then2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i14.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3264, i32 noundef 4096) #12
  %data.i.i = getelementptr inbounds %struct.tty_audit_buf, ptr %call7.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i14.i.i, ptr %data.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %call7.i14.i.i, null
  br i1 %tobool3.not.i.i, label %err_buf.i.i, label %if.end3.i

err_buf.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %if.then2.i

if.then2.i:                                       ; preds = %err_buf.i.i, %if.end.i.if.then2.i_crit_edge
  tail call void @audit_log_lost(ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i.i
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @tty_audit_buf_alloc.__key) #9
  %dev.i.i = getelementptr inbounds %struct.tty_audit_buf, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dev.i.i, align 4
  %icanon.i.i = getelementptr inbounds %struct.tty_audit_buf, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %icanon.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i.i = load i8, ptr %icanon.i.i, align 8
  %bf.clear.i.i = and i8 %bf.load.i.i, 127
  store i8 %bf.clear.i.i, ptr %icanon.i.i, align 8
  %valid.i.i = getelementptr inbounds %struct.tty_audit_buf, ptr %call7.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %valid.i.i, align 4
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i, align 8
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 111
  %35 = ptrtoint ptr %signal.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %signal.i, align 16
  %tty_audit_buf.i = getelementptr inbounds %struct.signal_struct, ptr %36, i32 0, i32 55
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tty_audit_buf.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !43
  %37 = ptrtoint ptr %call7.i.i.i to i32
  tail call void @llvm.prefetch.p0(ptr %tty_audit_buf.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i30.i

do.body.i30.i:                                    ; preds = %do.body.i30.i.do.body.i30.i_crit_edge, %if.end3.i
  %38 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %tty_audit_buf.i, i32 0, i32 %37) #9, !srcloc !44
  %asmresult.i.i = extractvalue { i32, i32 } %38, 0
  %tobool.not.i29.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i29.i, label %__cmpxchg.exit.i, label %do.body.i30.i.do.body.i30.i_crit_edge

do.body.i30.i.do.body.i30.i_crit_edge:            ; preds = %do.body.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i30.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i30.i
  %asmresult1.i.i = extractvalue { i32, i32 } %38, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %cmp20.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %cmp20.not.i, label %__cmpxchg.exit.i.if.end22.i_crit_edge, label %if.then21.i

__cmpxchg.exit.i.if.end22.i_crit_edge:            ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then21.i:                                      ; preds = %__cmpxchg.exit.i
  %39 = ptrtoint ptr %valid.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %valid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i.i = icmp eq i32 %40, 0
  br i1 %cmp.not.i.i, label %if.then21.i.tty_audit_buf_free.exit.i_crit_edge, label %do.end.i32.i, !prof !46

if.then21.i.tty_audit_buf_free.exit.i_crit_edge:  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_audit_buf_free.exit.i

do.end.i32.i:                                     ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 56, i32 noundef 9, ptr noundef null) #9
  br label %tty_audit_buf_free.exit.i

tty_audit_buf_free.exit.i:                        ; preds = %do.end.i32.i, %if.then21.i.tty_audit_buf_free.exit.i_crit_edge
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i, align 8
  tail call void @kfree(ptr noundef %42) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %tty_audit_buf_free.exit.i, %__cmpxchg.exit.i.if.end22.i_crit_edge
  %43 = tail call i32 @llvm.read_register.i32(metadata !25) #9
  %and.i.i35.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i35.i to ptr
  %task.i36.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i36.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i36.i, align 8
  %signal.i37.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 111
  %47 = ptrtoint ptr %signal.i37.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %signal.i37.i, align 16
  %tty_audit_buf.i38.i = getelementptr inbounds %struct.signal_struct, ptr %48, i32 0, i32 55
  %49 = ptrtoint ptr %tty_audit_buf.i38.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tty_audit_buf.i38.i, align 8
  %cmp.i39.i = icmp eq ptr %50, inttoptr (i32 -3 to ptr)
  br i1 %cmp.i39.i, label %do.end.i40.i, label %if.end22.i.tty_audit_buf_get.exit_crit_edge, !prof !38

if.end22.i.tty_audit_buf_get.exit_crit_edge:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_audit_buf_get.exit

do.end.i40.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 28, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

tty_audit_buf_get.exit:                           ; preds = %if.end22.i.tty_audit_buf_get.exit_crit_edge, %if.end31.tty_audit_buf_get.exit_crit_edge
  %retval.0.i = phi ptr [ %50, %if.end22.i.tty_audit_buf_get.exit_crit_edge ], [ %23, %if.end31.tty_audit_buf_get.exit_crit_edge ]
  %tobool.not.i = icmp eq ptr %retval.0.i, null
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %tty_audit_buf_get.exit.cleanup_crit_edge, label %if.end35

tty_audit_buf_get.exit.cleanup_crit_edge:         ; preds = %tty_audit_buf_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %tty_audit_buf_get.exit
  tail call void @mutex_lock_nested(ptr noundef nonnull %retval.0.i, i32 noundef 0) #9
  %51 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver, align 4
  %major = getelementptr inbounds %struct.tty_driver, ptr %52, i32 0, i32 7
  %53 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %major, align 4
  %shl = shl i32 %54, 20
  %minor_start = getelementptr inbounds %struct.tty_driver, ptr %52, i32 0, i32 8
  %55 = ptrtoint ptr %minor_start to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %minor_start, align 4
  %or = or i32 %shl, %56
  %index = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 5
  %57 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %index, align 4
  %add = add i32 %or, %58
  %dev38 = getelementptr inbounds %struct.tty_audit_buf, ptr %retval.0.i, i32 0, i32 1
  %59 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dev38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add)
  %cmp39.not = icmp eq i32 %60, %add
  br i1 %cmp39.not, label %lor.lhs.false, label %if.end35.if.then44_crit_edge

if.end35.if.then44_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.end35
  %icanon41 = getelementptr inbounds %struct.tty_audit_buf, ptr %retval.0.i, i32 0, i32 2
  %61 = ptrtoint ptr %icanon41 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %icanon41, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %bf.cast)
  %cmp42.not = icmp eq i32 %and.lobit, %bf.cast
  br i1 %cmp42.not, label %lor.lhs.false.if.end48_crit_edge, label %lor.lhs.false.if.then44_crit_edge

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

lor.lhs.false.if.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %if.end35.if.then44_crit_edge
  %valid.i = getelementptr inbounds %struct.tty_audit_buf, ptr %retval.0.i, i32 0, i32 3
  %62 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i105 = icmp eq i32 %63, 0
  br i1 %cmp.i105, label %if.then44.tty_audit_buf_push.exit_crit_edge, label %if.end.i106

if.then44.tty_audit_buf_push.exit_crit_edge:      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_audit_buf_push.exit

if.end.i106:                                      ; preds = %if.then44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %64 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp1.i = icmp eq i32 %64, 0
  br i1 %cmp1.i, label %if.end.i106.return.sink.split.i_crit_edge, label %if.end4.i

if.end.i106.return.sink.split.i_crit_edge:        ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i

if.end4.i:                                        ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.tty_audit_buf, ptr %retval.0.i, i32 0, i32 4
  %65 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i, align 4
  tail call fastcc void @tty_audit_log(ptr noundef nonnull @.str.1, i32 noundef %60, ptr noundef %66, i32 noundef %63) #9
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %if.end4.i, %if.end.i106.return.sink.split.i_crit_edge
  %67 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %valid.i, align 4
  br label %tty_audit_buf_push.exit

tty_audit_buf_push.exit:                          ; preds = %return.sink.split.i, %if.then44.tty_audit_buf_push.exit_crit_edge
  %68 = ptrtoint ptr %dev38 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add, ptr %dev38, align 4
  %icanon46 = getelementptr inbounds %struct.tty_audit_buf, ptr %retval.0.i, i32 0, i32 2
  %69 = trunc i32 %and.lobit to i8
  %70 = ptrtoint ptr %icanon46 to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load47 = load i8, ptr %icanon46, align 4
  %bf.shl = shl nuw i8 %69, 7
  %bf.clear = and i8 %bf.load47, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %icanon46, align 4
  br label %if.end48

if.end48:                                         ; preds = %tty_audit_buf_push.exit, %lor.lhs.false.if.end48_crit_edge
  %valid = getelementptr inbounds %struct.tty_audit_buf, ptr %retval.0.i, i32 0, i32 3
  %data54 = getelementptr inbounds %struct.tty_audit_buf, ptr %retval.0.i, i32 0, i32 4
  br label %do.body49

do.body49:                                        ; preds = %if.end64.do.body49_crit_edge, %if.end48
  %size.addr.0 = phi i32 [ %size, %if.end48 ], [ %sub59, %if.end64.do.body49_crit_edge ]
  %data.addr.0 = phi ptr [ %data, %if.end48 ], [ %add.ptr58, %if.end64.do.body49_crit_edge ]
  %71 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %valid, align 4
  %sub = sub i32 4096, %72
  %73 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %size.addr.0)
  %74 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data54, align 4
  %add.ptr = getelementptr i8, ptr %75, i32 %72
  %76 = call ptr @memcpy(ptr %add.ptr, ptr %data.addr.0, i32 %73)
  %77 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %valid, align 4
  %add57 = add i32 %78, %73
  store i32 %add57, ptr %valid, align 4
  %add.ptr58 = getelementptr i8, ptr %data.addr.0, i32 %73
  %sub59 = sub i32 %size.addr.0, %73
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add57)
  %cmp61 = icmp eq i32 %add57, 4096
  br i1 %cmp61, label %if.end.i110, label %do.body49.if.end64_crit_edge

do.body49.if.end64_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.end.i110:                                      ; preds = %do.body49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @audit_enabled to i32))
  %79 = load i32, ptr @audit_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp1.i109 = icmp eq i32 %79, 0
  br i1 %cmp1.i109, label %if.end.i110.tty_audit_buf_push.exit115_crit_edge, label %if.end4.i113

if.end.i110.tty_audit_buf_push.exit115_crit_edge: ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %tty_audit_buf_push.exit115

if.end4.i113:                                     ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dev38, align 4
  %82 = ptrtoint ptr %data54 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data54, align 4
  tail call fastcc void @tty_audit_log(ptr noundef nonnull @.str.1, i32 noundef %81, ptr noundef %83, i32 noundef 4096) #9
  br label %tty_audit_buf_push.exit115

tty_audit_buf_push.exit115:                       ; preds = %if.end4.i113, %if.end.i110.tty_audit_buf_push.exit115_crit_edge
  %84 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %valid, align 4
  br label %if.end64

if.end64:                                         ; preds = %tty_audit_buf_push.exit115, %do.body49.if.end64_crit_edge
  %cmp66.not = icmp eq i32 %sub59, 0
  br i1 %cmp66.not, label %do.end68, label %if.end64.do.body49_crit_edge

if.end64.do.body49_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

do.end68:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %retval.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %tty_audit_buf_get.exit.cleanup_crit_edge, %do.end.i40.i, %if.then2.i, %tty_audit_buf_ref.exit.thread.i, %if.end19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid(ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @audit_log_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_untrustedstring(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_n_hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_lost(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !19, !20, !22, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/tty_audit.c", i32 146, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/tty/tty_audit.c", i32 99, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/tty/tty_audit.c", i32 56, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/tty/tty_audit.c", i32 66, i32 39}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/tty/tty_audit.c", i32 74, i32 24}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/tty/tty_audit.c", i32 79, i32 24}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/tty/tty_audit.c", i32 187, i32 18}
!22 = !{ptr @tty_audit_buf_alloc.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/tty/tty_audit.c", i32 42, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
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
!35 = !{i64 2154093570}
!36 = !{i64 950329, i64 950346, i64 950370, i64 950396, i64 950414}
!37 = !{i64 2154093925}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2149271075}
!40 = !{i64 2149271341}
!41 = !{!"branch_weights", i32 2002, i32 2000}
!42 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!43 = !{i64 2154095343}
!44 = !{i64 953053, i64 953074, i64 953097, i64 953116, i64 953135}
!45 = !{i64 2154095756}
!46 = !{!"branch_weights", i32 2000, i32 1}
