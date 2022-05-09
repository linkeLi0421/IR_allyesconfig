; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/alloc.c_pt.bc'
source_filename = "../drivers/md/bcache/alloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.76 }
%struct.atomic_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bucket = type { %struct.atomic_t, i16, i8, i8, i16 }
%struct.cache_set = type { %struct.closure, %struct.list_head, %struct.kobject, %struct.kobject, ptr, %struct.cache_accounting, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, %struct.atomic_t, %struct.list_head, i64, %struct.atomic_t, %struct.closure, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.mempool_s, %struct.bio_set, %struct.shrinker, %struct.mutex, i16, i16, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, i16, i8, %struct.gc_stat, i32, i32, ptr, %struct.bkey, i8, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.keybuf, %struct.semaphore, ptr, ptr, ptr, ptr, %struct.mutex, [16 x i8], i32, ptr, %union.anon.83, %struct.closure, %struct.semaphore, %struct.mempool_s, %struct.bset_sort_state, %struct.list_head, %struct.spinlock, %struct.journal, i32, %struct.atomic_t, i32, i32, %struct.time_stats, %struct.time_stats, %struct.time_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i16, i8, i8, [4096 x %struct.hlist_head] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cache_accounting = type { %struct.closure, %struct.timer_list, %struct.atomic_t, %struct.cache_stat_collector, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats, %struct.cache_stats }
%struct.cache_stat_collector = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_stats = type { %struct.kobject, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.bio_list = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.gc_stat = type { i32, i32, i32, i32, i64, i32 }
%struct.bkey = type { i64, i64, [0 x i64] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.keybuf = type { %struct.bkey, %struct.spinlock, %struct.bkey, %struct.bkey, %struct.rb_root, %struct.anon.79 }
%struct.rb_root = type { ptr }
%struct.anon.79 = type { ptr, [500 x %struct.keybuf_key] }
%struct.keybuf_key = type { %struct.rb_node, %union.anon.80, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.80 = type { [8 x i64] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.83 = type { [8 x i64] }
%struct.closure = type { %union.anon, ptr, %struct.atomic_t, i32, %struct.list_head, i32, i32 }
%union.anon = type { %struct.work_struct }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bset_sort_state = type { %struct.mempool_s, i32, i32, %struct.time_stats }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.journal = type { %struct.spinlock, %struct.spinlock, i8, %struct.closure_waitlist, %struct.closure, i32, %struct.delayed_work, i32, i64, %struct.anon.84, %union.anon.85, [2 x %struct.journal_write], ptr }
%struct.closure_waitlist = type { %struct.llist_head }
%struct.llist_head = type { ptr }
%struct.anon.84 = type { i32, i32, i32, i32, ptr }
%union.anon.85 = type { [8 x i64] }
%struct.journal_write = type { ptr, ptr, %struct.closure_waitlist, i8, i8 }
%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.cache = type { ptr, %struct.cache_sb, ptr, %struct.bio, [1 x %struct.bio_vec], %struct.kobject, ptr, ptr, %struct.closure, ptr, ptr, ptr, [4 x %struct.anon.99], %struct.anon.100, i32, ptr, %struct.anon.101, i32, i8, %struct.journal_device, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.cache_sb = type { i64, i64, [16 x i8], [16 x i8], %union.anon.89, [32 x i8], i64, i64, i64, i64, i64, %union.anon.90, i32, i16, %union.anon.93, [256 x i64] }
%union.anon.89 = type { i64, [8 x i8] }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i64, i16, i16, i16, i32 }
%union.anon.93 = type { i16 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.99 = type { i32, i32, i32, i32, ptr }
%struct.anon.100 = type { i32, i32, i32, i32, ptr }
%struct.anon.101 = type { i32, i32, ptr }
%struct.journal_device = type { [256 x i64], i32, i32, i32, %struct.atomic_t, %struct.work_struct, %struct.bio, %struct.bio_vec, %struct.bio, [8 x %struct.bio_vec] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%union.anon.103 = type { [8 x i64] }
%struct.uuid_entry = type { %union.anon.81 }
%union.anon.81 = type { %struct.anon.82, [56 x i8] }
%struct.anon.82 = type { [16 x i8], [32 x i8], i32, i32, i32, i32, i64 }
%struct.open_bucket = type { %struct.list_head, i32, i32, %union.anon.102 }
%union.anon.102 = type { [8 x i64] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.56 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@bch_inc_gen.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/md/bcache/alloc.c\00", [38 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@bch_open_buckets_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&c->data_bucket_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcache_allocator\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_bcache_invalidate = external dso_local global %struct.tracepoint, align 4
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/bcache.h\00", [34 x i8] zeroinitializer }, align 32
@trace_bcache_invalidate.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_bcache_alloc_fail = external dso_local global %struct.tracepoint, align 4
@trace_bcache_alloc_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_bcache_alloc = external dso_local global %struct.tracepoint, align 4
@trace_bcache_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 3, i64 0, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 81, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 713, i32 2 }
@___asan_gen_.26 = private constant [29 x i8] c"../drivers/md/bcache/alloc.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 729, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant [33 x i8] c"../include/trace/events/bcache.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 428, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 108, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @bch_open_buckets_alloc.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_open_buckets_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @bch_inc_gen(ptr nocapture noundef readonly %ca, ptr nocapture noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gen = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 2
  %0 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gen, align 2
  %inc = add i8 %1, 1
  store i8 %inc, ptr %gen, align 2
  %2 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ca, align 8
  %need_gc = getelementptr inbounds %struct.cache_set, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %need_gc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %need_gc, align 2
  %last_gc.i = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 3
  %6 = ptrtoint ptr %last_gc.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %last_gc.i, align 1
  %sub.i = sub i8 %inc, %7
  %8 = tail call i8 @llvm.umax.i8(i8 %5, i8 %sub.i)
  %9 = ptrtoint ptr %need_gc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %need_gc, align 2
  %10 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ca, align 8
  %need_gc9 = getelementptr inbounds %struct.cache_set, ptr %11, i32 0, i32 39
  %12 = ptrtoint ptr %need_gc9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %need_gc9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %13)
  %cmp11 = icmp ugt i8 %13, 96
  br i1 %cmp11, label %land.rhs, label %entry.if.end41_crit_edge

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.rhs:                                         ; preds = %entry
  %.b56 = load i1, ptr @bch_inc_gen.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end41_crit_edge, label %if.then, !prof !47

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @bch_inc_gen.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef null) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then, %land.rhs.if.end41_crit_edge, %entry.if.end41_crit_edge
  ret i8 %inc
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_rescale_priorities(ptr noundef %c, i32 noundef %sectors) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nbuckets = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 41
  %0 = ptrtoint ptr %nbuckets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbuckets, align 8
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %2 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache, align 4
  %bucket_size = getelementptr inbounds %struct.cache, ptr %3, i32 0, i32 1, i32 11, i32 0, i32 4
  %4 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bucket_size, align 8
  %mul = mul i32 %5, %1
  %div62 = lshr i32 %mul, 10
  %rescale = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rescale, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %rescale, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rescale, ptr %rescale, i32 %sectors, ptr elementtype(i32) %rescale) #8, !srcloc !48
  br label %do.body

do.body:                                          ; preds = %atomic_cmpxchg.exit.do.body_crit_edge, %entry
  %call.i.i63 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rescale, i32 noundef 4) #8
  %7 = ptrtoint ptr %rescale to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %rescale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp sgt i32 %8, -1
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %do.cond

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %add = add i32 %8, %div62
  %call.i.i64 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rescale, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %rescale, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %do.cond
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %rescale, ptr %rescale, i32 %8, i32 %add, ptr elementtype(i32) %rescale) #8, !srcloc !50
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !51
  %cmp4.not = icmp eq i32 %asmresult3.i.i.i, %8
  br i1 %cmp4.not, label %do.end, label %atomic_cmpxchg.exit.do.body_crit_edge

atomic_cmpxchg.exit.do.body_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %atomic_cmpxchg.exit
  %bucket_lock = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %bucket_lock, i32 noundef 0) #8
  %min_prio = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 38
  %10 = ptrtoint ptr %min_prio to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %min_prio, align 8
  %11 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cache, align 4
  %buckets = getelementptr inbounds %struct.cache, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buckets, align 8
  %first_bucket = getelementptr inbounds %struct.cache, ptr %12, i32 0, i32 1, i32 13
  %15 = ptrtoint ptr %first_bucket to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %first_bucket, align 4
  %conv = zext i16 %16 to i32
  %add.ptr = getelementptr %struct.bucket, ptr %14, i32 %conv
  %17 = getelementptr inbounds %struct.cache, ptr %12, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %idx.ext66 = trunc i64 %19 to i32
  %add.ptr1067 = getelementptr %struct.bucket, ptr %14, i32 %idx.ext66
  %cmp1168 = icmp ult ptr %add.ptr, %add.ptr1067
  br i1 %cmp1168, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %b.069 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %prio = getelementptr inbounds %struct.bucket, ptr %b.069, i32 0, i32 1
  %20 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %prio, align 4
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i16 %21, label %land.lhs.true18 [
    i16 0, label %for.body.for.inc_crit_edge
    i16 -1, label %for.body.for.inc_crit_edge71
  ]

for.body.for.inc_crit_edge71:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true18:                                  ; preds = %for.body
  %call.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef %b.069, i32 noundef 4) #8
  %23 = ptrtoint ptr %b.069 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %b.069, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool20.not = icmp eq i32 %24, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true18.for.inc_crit_edge

land.lhs.true18.for.inc_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prio to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %prio, align 4
  %dec = add i16 %26, -1
  store i16 %dec, ptr %prio, align 4
  %27 = ptrtoint ptr %min_prio to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %min_prio, align 8
  %29 = tail call i16 @llvm.umin.i16(i16 %28, i16 %dec)
  %30 = ptrtoint ptr %min_prio to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %min_prio, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %land.lhs.true18.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge71
  %incdec.ptr = getelementptr %struct.bucket, ptr %b.069, i32 1
  %31 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buckets, align 8
  %33 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %17, align 8
  %idx.ext = trunc i64 %34 to i32
  %add.ptr10 = getelementptr %struct.bucket, ptr %32, i32 %idx.ext
  %cmp11 = icmp ult ptr %incdec.ptr, %add.ptr10
  br i1 %cmp11, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %bucket_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bch_can_invalidate_bucket(ptr nocapture noundef readonly %ca, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca, align 8
  %gc_mark_valid = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %gc_mark_valid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gc_mark_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !52

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

do.end7:                                          ; preds = %entry
  %gc_mark.i = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 4
  %4 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gc_mark.i, align 4
  %6 = and i16 %5, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %switch.not.not = icmp eq i16 %6, 0
  br i1 %switch.not.not, label %land.lhs.true, label %do.end7.land.end_crit_edge

do.end7.land.end_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %do.end7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b, i32 noundef 4) #8
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %b, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %gen.i.i = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 2
  %9 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gen.i.i, align 2
  %last_gc.i.i = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 3
  %11 = ptrtoint ptr %last_gc.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %last_gc.i.i, align 1
  %sub.i.i = sub i8 %10, %12
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %sub.i.i)
  %cmp.i = icmp ult i8 %sub.i.i, 96
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %do.end7.land.end_crit_edge
  %13 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ %cmp.i, %land.rhs ], [ false, %do.end7.land.end_crit_edge ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bch_invalidate_one_bucket(ptr noundef %ca, ptr noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %1 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ca, align 8
  %dep_map = getelementptr inbounds %struct.cache_set, ptr %2, i32 0, i32 23, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !52

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %gc_mark.i = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 4
  %3 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %gc_mark.i, align 4
  %5 = and i16 %4, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %switch.not.not = icmp eq i16 %5, 0
  br i1 %switch.not.not, label %do.end46, label %do.body38, !prof !54

do.body38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #8, !srcloc !55
  unreachable

do.end46:                                         ; preds = %if.end
  %6 = and i16 %4, 32764
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool48.not = icmp eq i16 %6, 0
  br i1 %tobool48.not, label %do.end46.if.end50_crit_edge, label %if.then49

do.end46.if.end50_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then49:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  %buckets = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 15
  %7 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buckets, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %b to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 12
  tail call fastcc void @trace_bcache_invalidate(ptr noundef %ca, i32 noundef %sub.ptr.div)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %do.end46.if.end50_crit_edge
  %gen.i = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 2
  %9 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gen.i, align 2
  %inc.i = add i8 %10, 1
  store i8 %inc.i, ptr %gen.i, align 2
  %11 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ca, align 8
  %need_gc.i = getelementptr inbounds %struct.cache_set, ptr %12, i32 0, i32 39
  %13 = ptrtoint ptr %need_gc.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %need_gc.i, align 2
  %last_gc.i.i = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 3
  %15 = ptrtoint ptr %last_gc.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %last_gc.i.i, align 1
  %sub.i.i = sub i8 %inc.i, %16
  %17 = tail call i8 @llvm.umax.i8(i8 %14, i8 %sub.i.i) #8
  %18 = ptrtoint ptr %need_gc.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %need_gc.i, align 2
  %19 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ca, align 8
  %need_gc9.i = getelementptr inbounds %struct.cache_set, ptr %20, i32 0, i32 39
  %21 = ptrtoint ptr %need_gc9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %need_gc9.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %22)
  %cmp11.i = icmp ugt i8 %22, 96
  br i1 %cmp11.i, label %land.rhs.i, label %if.end50.bch_inc_gen.exit_crit_edge

if.end50.bch_inc_gen.exit_crit_edge:              ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %bch_inc_gen.exit

land.rhs.i:                                       ; preds = %if.end50
  %.b56.i = load i1, ptr @bch_inc_gen.__already_done, align 1
  br i1 %.b56.i, label %land.rhs.i.bch_inc_gen.exit_crit_edge, label %if.then.i, !prof !47

land.rhs.i.bch_inc_gen.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bch_inc_gen.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @bch_inc_gen.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef null) #8
  br label %bch_inc_gen.exit

bch_inc_gen.exit:                                 ; preds = %if.then.i, %land.rhs.i.bch_inc_gen.exit_crit_edge, %if.end50.bch_inc_gen.exit_crit_edge
  %prio = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 1
  %23 = ptrtoint ptr %prio to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -32768, ptr %prio, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b, i32 1, i32 3, i32 1) #8
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b, ptr %b, i32 1, ptr elementtype(i32) %b) #8, !srcloc !56
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_invalidate(ptr noundef %ca, i32 noundef %bucket) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_invalidate, i32 0, i32 1), ptr blockaddress(@trace_bcache_invalidate, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !47

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !58
  %call42 = tail call i32 @__traceiter_bcache_invalidate(ptr noundef null, ptr noundef %ca, i32 noundef %bucket) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !47

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_invalidate, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_invalidate, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_invalidate.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_bcache_invalidate.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 447, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_bucket_alloc(ptr noundef %ca, i32 noundef %reserve, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  %w = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %w) #8
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %w, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %w, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %w, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %w, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %w, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %13 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ca, align 8
  %flags4 = getelementptr inbounds %struct.cache_set, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags4, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !47

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3
  %back = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3, i32 1
  %18 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %back, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %19, %21
  %mask = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3, i32 3
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask, align 4
  %and = and i32 %sub, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end33

if.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3, i32 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %inc = add i32 %21, 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc, ptr %arrayidx, align 4
  %arrayidx25 = getelementptr i32, ptr %25, i32 %21
  %27 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx25, align 4
  %and32 = and i32 %inc, %23
  store i32 %and32, ptr %arrayidx, align 4
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx39 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve
  %back40 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve, i32 1
  %29 = ptrtoint ptr %back40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %back40, align 4
  %31 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx39, align 4
  %sub44 = sub i32 %30, %32
  %mask47 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve, i32 3
  %33 = ptrtoint ptr %mask47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mask47, align 4
  %and48 = and i32 %sub44, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end78, label %if.end72

if.end72:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %data59 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve, i32 4
  %35 = ptrtoint ptr %data59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data59, align 4
  %inc63 = add i32 %32, 1
  %37 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %inc63, ptr %arrayidx39, align 4
  %arrayidx64 = getelementptr i32, ptr %36, i32 %32
  %38 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx64, align 4
  %and71 = and i32 %inc63, %34
  store i32 %and71, ptr %arrayidx39, align 4
  br label %out

if.end78:                                         ; preds = %lor.lhs.false
  br i1 %wait, label %if.end78.do.body_crit_edge, label %if.then80

if.end78.do.body_crit_edge:                       ; preds = %if.end78
  br label %do.body

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_bcache_alloc_fail(ptr noundef %ca, i32 noundef %reserve)
  br label %cleanup

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end78.do.body_crit_edge
  %40 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ca, align 8
  %bucket_wait = getelementptr inbounds %struct.cache_set, ptr %41, i32 0, i32 35
  call void @prepare_to_wait(ptr noundef %bucket_wait, ptr noundef nonnull %w, i32 noundef 2) #8
  %42 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ca, align 8
  %bucket_lock = getelementptr inbounds %struct.cache_set, ptr %43, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %bucket_lock) #8
  call void @schedule() #8
  %44 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ca, align 8
  %bucket_lock85 = getelementptr inbounds %struct.cache_set, ptr %45, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %bucket_lock85, i32 noundef 0) #8
  %46 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %back, align 4
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx, align 4
  %sub93 = sub i32 %47, %49
  %50 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mask, align 4
  %and97 = and i32 %sub93, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %land.rhs, label %if.end121

if.end121:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %data108 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3, i32 4
  %52 = ptrtoint ptr %data108 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data108, align 4
  %inc112 = add i32 %49, 1
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %inc112, ptr %arrayidx, align 4
  %arrayidx113 = getelementptr i32, ptr %53, i32 %49
  %55 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx113, align 4
  %and120 = and i32 %inc112, %51
  store i32 %and120, ptr %arrayidx, align 4
  br label %do.end

land.rhs:                                         ; preds = %do.body
  %57 = ptrtoint ptr %back40 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %back40, align 4
  %59 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx39, align 4
  %sub133 = sub i32 %58, %60
  %61 = ptrtoint ptr %mask47 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mask47, align 4
  %and137 = and i32 %sub133, %62
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %land.rhs.do.body_crit_edge, label %if.end161.thread

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end161.thread:                                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %data148 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 %reserve, i32 4
  %63 = ptrtoint ptr %data148 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data148, align 4
  %inc152 = add i32 %60, 1
  %65 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %inc152, ptr %arrayidx39, align 4
  %arrayidx153 = getelementptr i32, ptr %64, i32 %60
  %66 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx153, align 4
  %and160 = and i32 %inc152, %62
  store i32 %and160, ptr %arrayidx39, align 4
  br label %do.end

do.end:                                           ; preds = %if.end161.thread, %if.end121
  %r.5 = phi i32 [ %56, %if.end121 ], [ %67, %if.end161.thread ]
  %68 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ca, align 8
  %bucket_wait169 = getelementptr inbounds %struct.cache_set, ptr %69, i32 0, i32 35
  call void @finish_wait(ptr noundef %bucket_wait169, ptr noundef nonnull %w) #8
  br label %out

out:                                              ; preds = %do.end, %if.end72, %if.end33
  %r.6 = phi i32 [ %28, %if.end33 ], [ %39, %if.end72 ], [ %r.5, %do.end ]
  %alloc_thread = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 7
  %70 = ptrtoint ptr %alloc_thread to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %alloc_thread, align 8
  %tobool170.not = icmp eq ptr %71, null
  br i1 %tobool170.not, label %out.if.end174_crit_edge, label %if.then171

out.if.end174_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then171:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %call173 = call i32 @wake_up_process(ptr noundef nonnull %71) #8
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %out.if.end174_crit_edge
  call fastcc void @trace_bcache_alloc(ptr noundef %ca, i32 noundef %reserve)
  %72 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ca, align 8
  %expensive_debug_checks = getelementptr inbounds %struct.cache_set, ptr %73, i32 0, i32 84
  %74 = ptrtoint ptr %expensive_debug_checks to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %expensive_debug_checks, align 2, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool176.not = icmp eq i8 %75, 0
  br i1 %tobool176.not, label %if.end174.if.end292_crit_edge, label %for.cond.preheader

if.end174.if.end292_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end292

for.cond.preheader:                               ; preds = %if.end174
  %76 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 11
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %76, align 8
  %conv = trunc i64 %78 to i32
  %bucket_size.i.i = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 11, i32 0, i32 4
  %79 = ptrtoint ptr %bucket_size.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bucket_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16391, i32 %80)
  %cmp2.i.i = icmp ugt i32 %80, 16391
  %81 = shl i32 %80, 9
  %div17.i.op.i = and i32 %81, -4096
  %div17.i.op.i.op = add i32 %div17.i.op.i, -40
  %div17.i.op.i.op.op = udiv i32 %div17.i.op.i.op, 3
  %div = select i1 %cmp2.i.i, i32 2796189, i32 %div17.i.op.i.op.op
  %add = add i32 %conv, -1
  %sub181 = add i32 %add, %div
  %div186 = udiv i32 %sub181, %div
  %mul = shl i32 %div186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp454.not = icmp eq i32 %mul, 0
  br i1 %cmp454.not, label %for.cond.preheader.for.cond210.preheader_crit_edge, label %do.body188.lr.ph

for.cond.preheader.for.cond210.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond210.preheader

do.body188.lr.ph:                                 ; preds = %for.cond.preheader
  %prio_buckets = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 10
  %82 = ptrtoint ptr %prio_buckets to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prio_buckets, align 8
  %conv190 = sext i32 %r.6 to i64
  br label %do.body188

for.cond:                                         ; preds = %do.body188
  %inc209 = add nuw i32 %iter.0455, 1
  %exitcond.not = icmp eq i32 %inc209, %mul
  br i1 %exitcond.not, label %for.cond.for.cond210.preheader_crit_edge, label %for.cond.do.body188_crit_edge

for.cond.do.body188_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body188

for.cond.for.cond210.preheader_crit_edge:         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond210.preheader

for.cond210.preheader:                            ; preds = %for.cond.for.cond210.preheader_crit_edge, %for.cond.preheader.for.cond210.preheader_crit_edge
  %arrayidx215 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 0
  %84 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx215, align 4
  %back224 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 0, i32 1
  %86 = ptrtoint ptr %back224 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %back224, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %87)
  %cmp225.not456 = icmp eq i32 %85, %87
  br i1 %cmp225.not456, label %for.cond210.preheader.for.inc254_crit_edge, label %do.body228.lr.ph

for.cond210.preheader.for.inc254_crit_edge:       ; preds = %for.cond210.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254

do.body188:                                       ; preds = %for.cond.do.body188_crit_edge, %do.body188.lr.ph
  %iter.0455 = phi i32 [ 0, %do.body188.lr.ph ], [ %inc209, %for.cond.do.body188_crit_edge ]
  %arrayidx189 = getelementptr i64, ptr %83, i32 %iter.0455
  %88 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx189, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %89, i64 %conv190)
  %cmp191 = icmp eq i64 %89, %conv190
  br i1 %cmp191, label %do.body200, label %for.cond, !prof !52

do.body200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 436, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

do.body228.lr.ph:                                 ; preds = %for.cond210.preheader
  %data220 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 0, i32 4
  %90 = ptrtoint ptr %data220 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data220, align 4
  %mask251 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 0, i32 3
  %arrayidx221.peel = getelementptr i32, ptr %91, i32 %85
  %92 = ptrtoint ptr %arrayidx221.peel to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx221.peel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %r.6)
  %cmp229.peel = icmp eq i32 %93, %r.6
  br i1 %cmp229.peel, label %do.body228.lr.ph.do.body238_crit_edge, label %for.inc247.peel, !prof !52

do.body228.lr.ph.do.body238_crit_edge:            ; preds = %do.body228.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body238

for.inc247.peel:                                  ; preds = %do.body228.lr.ph
  %add248.peel = add i32 %85, 1
  %94 = ptrtoint ptr %mask251 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mask251, align 4
  %and252.peel = and i32 %95, %add248.peel
  call void @__sanitizer_cov_trace_cmp4(i32 %and252.peel, i32 %87)
  %cmp225.not.peel = icmp eq i32 %and252.peel, %87
  br i1 %cmp225.not.peel, label %for.inc247.peel.for.inc254_crit_edge, label %for.inc247.peel.do.body228_crit_edge

for.inc247.peel.do.body228_crit_edge:             ; preds = %for.inc247.peel
  br label %do.body228

for.inc247.peel.for.inc254_crit_edge:             ; preds = %for.inc247.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254

do.body228:                                       ; preds = %for.inc247.do.body228_crit_edge, %for.inc247.peel.do.body228_crit_edge
  %iter.1457 = phi i32 [ %and252, %for.inc247.do.body228_crit_edge ], [ %and252.peel, %for.inc247.peel.do.body228_crit_edge ]
  %arrayidx221 = getelementptr i32, ptr %91, i32 %iter.1457
  %96 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx221, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %r.6)
  %cmp229 = icmp eq i32 %97, %r.6
  br i1 %cmp229, label %do.body228.do.body238_crit_edge, label %for.inc247, !prof !52

do.body228.do.body238_crit_edge:                  ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body238

do.body238:                                       ; preds = %do.body228.3.do.body238_crit_edge, %do.body228.lr.ph.3.do.body238_crit_edge, %do.body228.2.do.body238_crit_edge, %do.body228.lr.ph.2.do.body238_crit_edge, %do.body228.1.do.body238_crit_edge, %do.body228.lr.ph.1.do.body238_crit_edge, %do.body228.do.body238_crit_edge, %do.body228.lr.ph.do.body238_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 440, 0\0A.popsection", ""() #8, !srcloc !64
  unreachable

for.inc247:                                       ; preds = %do.body228
  %add248 = add i32 %iter.1457, 1
  %98 = ptrtoint ptr %mask251 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mask251, align 4
  %and252 = and i32 %99, %add248
  %cmp225.not = icmp eq i32 %and252, %87
  br i1 %cmp225.not, label %for.inc247.for.inc254_crit_edge, label %for.inc247.do.body228_crit_edge, !llvm.loop !65

for.inc247.do.body228_crit_edge:                  ; preds = %for.inc247
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body228

for.inc247.for.inc254_crit_edge:                  ; preds = %for.inc247
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254

for.inc254:                                       ; preds = %for.inc247.for.inc254_crit_edge, %for.inc247.peel.for.inc254_crit_edge, %for.cond210.preheader.for.inc254_crit_edge
  %arrayidx215.1 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 1
  %100 = ptrtoint ptr %arrayidx215.1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx215.1, align 4
  %back224.1 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 1, i32 1
  %102 = ptrtoint ptr %back224.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %back224.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp225.not456.1 = icmp eq i32 %101, %103
  br i1 %cmp225.not456.1, label %for.inc254.for.inc254.1_crit_edge, label %do.body228.lr.ph.1

for.inc254.for.inc254.1_crit_edge:                ; preds = %for.inc254
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254.1

do.body228.lr.ph.1:                               ; preds = %for.inc254
  %data220.1 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 1, i32 4
  %104 = ptrtoint ptr %data220.1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data220.1, align 4
  %mask251.1 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 1, i32 3
  %arrayidx221.peel.1 = getelementptr i32, ptr %105, i32 %101
  %106 = ptrtoint ptr %arrayidx221.peel.1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx221.peel.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %r.6)
  %cmp229.peel.1 = icmp eq i32 %107, %r.6
  br i1 %cmp229.peel.1, label %do.body228.lr.ph.1.do.body238_crit_edge, label %for.inc247.peel.1, !prof !52

do.body228.lr.ph.1.do.body238_crit_edge:          ; preds = %do.body228.lr.ph.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body238

for.inc247.peel.1:                                ; preds = %do.body228.lr.ph.1
  %add248.peel.1 = add i32 %101, 1
  %108 = ptrtoint ptr %mask251.1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mask251.1, align 4
  %and252.peel.1 = and i32 %109, %add248.peel.1
  call void @__sanitizer_cov_trace_cmp4(i32 %and252.peel.1, i32 %103)
  %cmp225.not.peel.1 = icmp eq i32 %and252.peel.1, %103
  br i1 %cmp225.not.peel.1, label %for.inc247.peel.1.for.inc254.1_crit_edge, label %for.inc247.peel.1.do.body228.1_crit_edge

for.inc247.peel.1.do.body228.1_crit_edge:         ; preds = %for.inc247.peel.1
  br label %do.body228.1

for.inc247.peel.1.for.inc254.1_crit_edge:         ; preds = %for.inc247.peel.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254.1

do.body228.1:                                     ; preds = %for.inc247.1.do.body228.1_crit_edge, %for.inc247.peel.1.do.body228.1_crit_edge
  %iter.1457.1 = phi i32 [ %and252.1, %for.inc247.1.do.body228.1_crit_edge ], [ %and252.peel.1, %for.inc247.peel.1.do.body228.1_crit_edge ]
  %arrayidx221.1 = getelementptr i32, ptr %105, i32 %iter.1457.1
  %110 = ptrtoint ptr %arrayidx221.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx221.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %r.6)
  %cmp229.1 = icmp eq i32 %111, %r.6
  br i1 %cmp229.1, label %do.body228.1.do.body238_crit_edge, label %for.inc247.1, !prof !52

do.body228.1.do.body238_crit_edge:                ; preds = %do.body228.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body238

for.inc247.1:                                     ; preds = %do.body228.1
  %add248.1 = add i32 %iter.1457.1, 1
  %112 = ptrtoint ptr %mask251.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mask251.1, align 4
  %and252.1 = and i32 %113, %add248.1
  %cmp225.not.1 = icmp eq i32 %and252.1, %103
  br i1 %cmp225.not.1, label %for.inc247.1.for.inc254.1_crit_edge, label %for.inc247.1.do.body228.1_crit_edge, !llvm.loop !65

for.inc247.1.do.body228.1_crit_edge:              ; preds = %for.inc247.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body228.1

for.inc247.1.for.inc254.1_crit_edge:              ; preds = %for.inc247.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254.1

for.inc254.1:                                     ; preds = %for.inc247.1.for.inc254.1_crit_edge, %for.inc247.peel.1.for.inc254.1_crit_edge, %for.inc254.for.inc254.1_crit_edge
  %arrayidx215.2 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 2
  %114 = ptrtoint ptr %arrayidx215.2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx215.2, align 4
  %back224.2 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 2, i32 1
  %116 = ptrtoint ptr %back224.2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %back224.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %117)
  %cmp225.not456.2 = icmp eq i32 %115, %117
  br i1 %cmp225.not456.2, label %for.inc254.1.for.inc254.2_crit_edge, label %do.body228.lr.ph.2

for.inc254.1.for.inc254.2_crit_edge:              ; preds = %for.inc254.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254.2

do.body228.lr.ph.2:                               ; preds = %for.inc254.1
  %data220.2 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 2, i32 4
  %118 = ptrtoint ptr %data220.2 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data220.2, align 4
  %mask251.2 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 2, i32 3
  %arrayidx221.peel.2 = getelementptr i32, ptr %119, i32 %115
  %120 = ptrtoint ptr %arrayidx221.peel.2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx221.peel.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %r.6)
  %cmp229.peel.2 = icmp eq i32 %121, %r.6
  br i1 %cmp229.peel.2, label %do.body228.lr.ph.2.do.body238_crit_edge, label %for.inc247.peel.2, !prof !52

do.body228.lr.ph.2.do.body238_crit_edge:          ; preds = %do.body228.lr.ph.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body238

for.inc247.peel.2:                                ; preds = %do.body228.lr.ph.2
  %add248.peel.2 = add i32 %115, 1
  %122 = ptrtoint ptr %mask251.2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mask251.2, align 4
  %and252.peel.2 = and i32 %123, %add248.peel.2
  call void @__sanitizer_cov_trace_cmp4(i32 %and252.peel.2, i32 %117)
  %cmp225.not.peel.2 = icmp eq i32 %and252.peel.2, %117
  br i1 %cmp225.not.peel.2, label %for.inc247.peel.2.for.inc254.2_crit_edge, label %for.inc247.peel.2.do.body228.2_crit_edge

for.inc247.peel.2.do.body228.2_crit_edge:         ; preds = %for.inc247.peel.2
  br label %do.body228.2

for.inc247.peel.2.for.inc254.2_crit_edge:         ; preds = %for.inc247.peel.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254.2

do.body228.2:                                     ; preds = %for.inc247.2.do.body228.2_crit_edge, %for.inc247.peel.2.do.body228.2_crit_edge
  %iter.1457.2 = phi i32 [ %and252.2, %for.inc247.2.do.body228.2_crit_edge ], [ %and252.peel.2, %for.inc247.peel.2.do.body228.2_crit_edge ]
  %arrayidx221.2 = getelementptr i32, ptr %119, i32 %iter.1457.2
  %124 = ptrtoint ptr %arrayidx221.2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx221.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %r.6)
  %cmp229.2 = icmp eq i32 %125, %r.6
  br i1 %cmp229.2, label %do.body228.2.do.body238_crit_edge, label %for.inc247.2, !prof !52

do.body228.2.do.body238_crit_edge:                ; preds = %do.body228.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body238

for.inc247.2:                                     ; preds = %do.body228.2
  %add248.2 = add i32 %iter.1457.2, 1
  %126 = ptrtoint ptr %mask251.2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mask251.2, align 4
  %and252.2 = and i32 %127, %add248.2
  %cmp225.not.2 = icmp eq i32 %and252.2, %117
  br i1 %cmp225.not.2, label %for.inc247.2.for.inc254.2_crit_edge, label %for.inc247.2.do.body228.2_crit_edge, !llvm.loop !65

for.inc247.2.do.body228.2_crit_edge:              ; preds = %for.inc247.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body228.2

for.inc247.2.for.inc254.2_crit_edge:              ; preds = %for.inc247.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254.2

for.inc254.2:                                     ; preds = %for.inc247.2.for.inc254.2_crit_edge, %for.inc247.peel.2.for.inc254.2_crit_edge, %for.inc254.1.for.inc254.2_crit_edge
  %128 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx, align 4
  %130 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %back, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %131)
  %cmp225.not456.3 = icmp eq i32 %129, %131
  br i1 %cmp225.not456.3, label %for.inc254.2.for.inc254.3_crit_edge, label %do.body228.lr.ph.3

for.inc254.2.for.inc254.3_crit_edge:              ; preds = %for.inc254.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254.3

do.body228.lr.ph.3:                               ; preds = %for.inc254.2
  %data220.3 = getelementptr %struct.cache, ptr %ca, i32 0, i32 12, i32 3, i32 4
  %132 = ptrtoint ptr %data220.3 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data220.3, align 4
  %arrayidx221.peel.3 = getelementptr i32, ptr %133, i32 %129
  %134 = ptrtoint ptr %arrayidx221.peel.3 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx221.peel.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %r.6)
  %cmp229.peel.3 = icmp eq i32 %135, %r.6
  br i1 %cmp229.peel.3, label %do.body228.lr.ph.3.do.body238_crit_edge, label %for.inc247.peel.3, !prof !52

do.body228.lr.ph.3.do.body238_crit_edge:          ; preds = %do.body228.lr.ph.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body238

for.inc247.peel.3:                                ; preds = %do.body228.lr.ph.3
  %add248.peel.3 = add i32 %129, 1
  %136 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mask, align 4
  %and252.peel.3 = and i32 %137, %add248.peel.3
  call void @__sanitizer_cov_trace_cmp4(i32 %and252.peel.3, i32 %131)
  %cmp225.not.peel.3 = icmp eq i32 %and252.peel.3, %131
  br i1 %cmp225.not.peel.3, label %for.inc247.peel.3.for.inc254.3_crit_edge, label %for.inc247.peel.3.do.body228.3_crit_edge

for.inc247.peel.3.do.body228.3_crit_edge:         ; preds = %for.inc247.peel.3
  br label %do.body228.3

for.inc247.peel.3.for.inc254.3_crit_edge:         ; preds = %for.inc247.peel.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254.3

do.body228.3:                                     ; preds = %for.inc247.3.do.body228.3_crit_edge, %for.inc247.peel.3.do.body228.3_crit_edge
  %iter.1457.3 = phi i32 [ %and252.3, %for.inc247.3.do.body228.3_crit_edge ], [ %and252.peel.3, %for.inc247.peel.3.do.body228.3_crit_edge ]
  %arrayidx221.3 = getelementptr i32, ptr %133, i32 %iter.1457.3
  %138 = ptrtoint ptr %arrayidx221.3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx221.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %r.6)
  %cmp229.3 = icmp eq i32 %139, %r.6
  br i1 %cmp229.3, label %do.body228.3.do.body238_crit_edge, label %for.inc247.3, !prof !52

do.body228.3.do.body238_crit_edge:                ; preds = %do.body228.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body238

for.inc247.3:                                     ; preds = %do.body228.3
  %add248.3 = add i32 %iter.1457.3, 1
  %140 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mask, align 4
  %and252.3 = and i32 %141, %add248.3
  %cmp225.not.3 = icmp eq i32 %and252.3, %131
  br i1 %cmp225.not.3, label %for.inc247.3.for.inc254.3_crit_edge, label %for.inc247.3.do.body228.3_crit_edge, !llvm.loop !65

for.inc247.3.do.body228.3_crit_edge:              ; preds = %for.inc247.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body228.3

for.inc247.3.for.inc254.3_crit_edge:              ; preds = %for.inc247.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc254.3

for.inc254.3:                                     ; preds = %for.inc247.3.for.inc254.3_crit_edge, %for.inc247.peel.3.for.inc254.3_crit_edge, %for.inc254.2.for.inc254.3_crit_edge
  %free_inc = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13
  %142 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %free_inc, align 8
  %back263 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13, i32 1
  %144 = ptrtoint ptr %back263 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %back263, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp264.not460 = icmp eq i32 %143, %145
  br i1 %cmp264.not460, label %for.inc254.3.if.end292_crit_edge, label %do.body267.lr.ph

for.inc254.3.if.end292_crit_edge:                 ; preds = %for.inc254.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end292

do.body267.lr.ph:                                 ; preds = %for.inc254.3
  %data260 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13, i32 4
  %146 = ptrtoint ptr %data260 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data260, align 8
  %mask289 = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 13, i32 3
  %arrayidx261.peel = getelementptr i32, ptr %147, i32 %143
  %148 = ptrtoint ptr %arrayidx261.peel to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx261.peel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %r.6)
  %cmp268.peel = icmp eq i32 %149, %r.6
  br i1 %cmp268.peel, label %do.body267.lr.ph.do.body277_crit_edge, label %for.inc286.peel, !prof !52

do.body267.lr.ph.do.body277_crit_edge:            ; preds = %do.body267.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body277

for.inc286.peel:                                  ; preds = %do.body267.lr.ph
  %add287.peel = add i32 %143, 1
  %150 = ptrtoint ptr %mask289 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %mask289, align 4
  %and290.peel = and i32 %151, %add287.peel
  call void @__sanitizer_cov_trace_cmp4(i32 %and290.peel, i32 %145)
  %cmp264.not.peel = icmp eq i32 %and290.peel, %145
  br i1 %cmp264.not.peel, label %for.inc286.peel.if.end292_crit_edge, label %for.inc286.peel.do.body267_crit_edge

for.inc286.peel.do.body267_crit_edge:             ; preds = %for.inc286.peel
  br label %do.body267

for.inc286.peel.if.end292_crit_edge:              ; preds = %for.inc286.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end292

do.body267:                                       ; preds = %for.inc286.do.body267_crit_edge, %for.inc286.peel.do.body267_crit_edge
  %iter.2461 = phi i32 [ %and290, %for.inc286.do.body267_crit_edge ], [ %and290.peel, %for.inc286.peel.do.body267_crit_edge ]
  %arrayidx261 = getelementptr i32, ptr %147, i32 %iter.2461
  %152 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx261, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %r.6)
  %cmp268 = icmp eq i32 %153, %r.6
  br i1 %cmp268, label %do.body267.do.body277_crit_edge, label %for.inc286, !prof !52

do.body267.do.body277_crit_edge:                  ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body277

do.body277:                                       ; preds = %do.body267.do.body277_crit_edge, %do.body267.lr.ph.do.body277_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 442, 0\0A.popsection", ""() #8, !srcloc !67
  unreachable

for.inc286:                                       ; preds = %do.body267
  %add287 = add i32 %iter.2461, 1
  %154 = ptrtoint ptr %mask289 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %mask289, align 4
  %and290 = and i32 %155, %add287
  %cmp264.not = icmp eq i32 %and290, %145
  br i1 %cmp264.not, label %for.inc286.if.end292_crit_edge, label %for.inc286.do.body267_crit_edge, !llvm.loop !68

for.inc286.do.body267_crit_edge:                  ; preds = %for.inc286
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body267

for.inc286.if.end292_crit_edge:                   ; preds = %for.inc286
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end292

if.end292:                                        ; preds = %for.inc286.if.end292_crit_edge, %for.inc286.peel.if.end292_crit_edge, %for.inc254.3.if.end292_crit_edge, %if.end174.if.end292_crit_edge
  %buckets = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 15
  %156 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %buckets, align 8
  %add.ptr = getelementptr %struct.bucket, ptr %157, i32 %r.6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #8
  %158 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp295.not = icmp eq i32 %159, 1
  br i1 %cmp295.not, label %do.end312, label %do.body304, !prof !47

do.body304:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 447, 0\0A.popsection", ""() #8, !srcloc !69
  unreachable

do.end312:                                        ; preds = %if.end292
  %bucket_size = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 1, i32 11, i32 0, i32 4
  %160 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %bucket_size, align 8
  %gc_mark.i = getelementptr %struct.bucket, ptr %157, i32 %r.6, i32 4
  %v.tr.i = trunc i32 %161 to i16
  %162 = shl i16 %v.tr.i, 2
  %163 = and i16 %162, 32764
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reserve)
  %cmp315 = icmp ult i32 %reserve, 2
  %. = select i1 %cmp315, i16 3, i16 1
  %.483 = select i1 %cmp315, i16 -1, i16 -32768
  %conv5.i440 = or i16 %163, %.
  %164 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv5.i440, ptr %gc_mark.i, align 4
  %165 = getelementptr %struct.bucket, ptr %157, i32 %r.6, i32 1
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %.483, ptr %165, align 4
  %167 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ca, align 8
  %avail_nbuckets = getelementptr inbounds %struct.cache_set, ptr %168, i32 0, i32 42
  %169 = ptrtoint ptr %avail_nbuckets to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %avail_nbuckets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp321.not = icmp eq i32 %170, 0
  br i1 %cmp321.not, label %do.end312.cleanup_crit_edge, label %if.then323

do.end312.cleanup_crit_edge:                      ; preds = %do.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then323:                                       ; preds = %do.end312
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %170, -1
  %171 = ptrtoint ptr %avail_nbuckets to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %dec, ptr %avail_nbuckets, align 4
  %172 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ca, align 8
  %gc_stats = getelementptr inbounds %struct.cache_set, ptr %173, i32 0, i32 40
  call void @bch_update_bucket_in_use(ptr noundef %173, ptr noundef %gc_stats) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then323, %do.end312.cleanup_crit_edge, %if.then80, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then80 ], [ -1, %entry.cleanup_crit_edge ], [ %r.6, %if.then323 ], [ %r.6, %do.end312.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %w) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_alloc_fail(ptr noundef %ca, i32 noundef %reserve) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_alloc_fail, i32 0, i32 1), ptr blockaddress(@trace_bcache_alloc_fail, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !47

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !70
  %call42 = tail call i32 @__traceiter_bcache_alloc_fail(ptr noundef null, ptr noundef %ca, i32 noundef %reserve) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !71
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !47

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_alloc_fail, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_alloc_fail, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_alloc_fail.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_bcache_alloc_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 488, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_bcache_alloc(ptr noundef %ca, i32 noundef %bucket) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_alloc, i32 0, i32 1), ptr blockaddress(@trace_bcache_alloc, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !57

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !47

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !72
  %call42 = tail call i32 @__traceiter_bcache_alloc(ptr noundef null, ptr noundef %ca, i32 noundef %bucket) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
  %13 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !47

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_bcache_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_bcache_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_bcache_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 465, ptr noundef nonnull @.str.4) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !61
  %31 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bch_update_bucket_in_use(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bch_bucket_free(ptr nocapture noundef readonly %ca, ptr nocapture noundef %b) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gc_mark.i = getelementptr inbounds %struct.bucket, ptr %b, i32 0, i32 4
  %0 = ptrtoint ptr %gc_mark.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %gc_mark.i, align 4
  %2 = and i16 %1, -32768
  store i16 %2, ptr %gc_mark.i, align 4
  %3 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ca, align 8
  %avail_nbuckets = getelementptr inbounds %struct.cache_set, ptr %4, i32 0, i32 42
  %5 = ptrtoint ptr %avail_nbuckets to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %avail_nbuckets, align 4
  %nbuckets = getelementptr inbounds %struct.cache_set, ptr %4, i32 0, i32 41
  %7 = ptrtoint ptr %nbuckets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbuckets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nuw i32 %6, 1
  %9 = ptrtoint ptr %avail_nbuckets to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %avail_nbuckets, align 4
  %10 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ca, align 8
  %gc_stats = getelementptr inbounds %struct.cache_set, ptr %11, i32 0, i32 40
  tail call void @bch_update_bucket_in_use(ptr noundef %11, ptr noundef %gc_stats) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bucket_free(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %k) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k, align 8
  %2 = and i64 %1, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %cmp9.not = icmp eq i64 %2, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %__bch_bucket_free.exit.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %__bch_bucket_free.exit.for.body_crit_edge ]
  %3 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cache, align 4
  %buckets.i = getelementptr inbounds %struct.cache, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buckets.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.010
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i.i.i, align 8
  %shr.i.i.i = lshr i64 %8, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %9 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %10 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %gc_mark.i.i = getelementptr %struct.bucket, ptr %6, i32 %conv1.i.i.i, i32 4
  %11 = ptrtoint ptr %gc_mark.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %gc_mark.i.i, align 4
  %13 = and i16 %12, -32768
  store i16 %13, ptr %gc_mark.i.i, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 8
  %avail_nbuckets.i = getelementptr inbounds %struct.cache_set, ptr %15, i32 0, i32 42
  %16 = ptrtoint ptr %avail_nbuckets.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %avail_nbuckets.i, align 4
  %nbuckets.i = getelementptr inbounds %struct.cache_set, ptr %15, i32 0, i32 41
  %18 = ptrtoint ptr %nbuckets.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbuckets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i = icmp ult i32 %17, %19
  br i1 %cmp.i, label %if.then.i, label %for.body.__bch_bucket_free.exit_crit_edge

for.body.__bch_bucket_free.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__bch_bucket_free.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add nuw i32 %17, 1
  %20 = ptrtoint ptr %avail_nbuckets.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i, ptr %avail_nbuckets.i, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 8
  %gc_stats.i = getelementptr inbounds %struct.cache_set, ptr %22, i32 0, i32 40
  tail call void @bch_update_bucket_in_use(ptr noundef %22, ptr noundef %gc_stats.i) #8
  br label %__bch_bucket_free.exit

__bch_bucket_free.exit:                           ; preds = %if.then.i, %for.body.__bch_bucket_free.exit_crit_edge
  %inc = add i32 %i.010, 1
  %conv = zext i32 %inc to i64
  %23 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %k, align 8
  %shr.i = lshr i64 %24, 60
  %and.i = and i64 %shr.i, 7
  %cmp = icmp ugt i64 %and.i, %conv
  br i1 %cmp, label %__bch_bucket_free.exit.for.body_crit_edge, label %__bch_bucket_free.exit.for.end_crit_edge

__bch_bucket_free.exit.for.end_crit_edge:         ; preds = %__bch_bucket_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

__bch_bucket_free.exit.for.body_crit_edge:        ; preds = %__bch_bucket_free.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %__bch_bucket_free.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bch_bucket_alloc_set(ptr noundef %c, i32 noundef %reserve, ptr noundef %k, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge, !prof !47

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %do.body.if.end26_crit_edge, label %land.rhs

do.body.if.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 23, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end26_crit_edge, !prof !52

land.rhs.if.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 498, i32 noundef 9, ptr noundef null) #8
  br label %if.end26

if.end26:                                         ; preds = %do.end, %land.rhs.if.end26_crit_edge, %do.body.if.end26_crit_edge
  %4 = ptrtoint ptr %k to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -9223372036854775808, ptr %k, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %k, i32 8
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %cache = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  %6 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cache, align 4
  %call36 = tail call i32 @bch_bucket_alloc(ptr noundef %7, i32 noundef %reserve, i1 noundef zeroext %wait)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call36)
  %cmp37 = icmp eq i32 %call36, -1
  br i1 %cmp37, label %err, label %if.end39

if.end39:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %nr_this_dev = getelementptr inbounds %struct.cache, ptr %7, i32 0, i32 1, i32 11, i32 0, i32 3
  %8 = ptrtoint ptr %nr_this_dev to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nr_this_dev, align 4
  %conv = zext i16 %9 to i64
  %shl = shl i64 %conv, 51
  %conv.i = zext i32 %call36 to i64
  %bucket_bits.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  %10 = ptrtoint ptr %bucket_bits.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bucket_bits.i, align 8
  %sh_prom.i = zext i16 %11 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %shl41 = shl i64 %shl.i, 8
  %or = or i64 %shl41, %shl
  %buckets = getelementptr inbounds %struct.cache, ptr %7, i32 0, i32 15
  %12 = ptrtoint ptr %buckets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buckets, align 8
  %gen = getelementptr %struct.bucket, ptr %13, i32 %call36, i32 2
  %14 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gen, align 2
  %conv42 = zext i8 %15 to i64
  %or43 = or i64 %or, %conv42
  %ptr = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 2
  %16 = ptrtoint ptr %ptr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %or43, ptr %ptr, align 8
  %17 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %k, align 8
  %and.i = and i64 %18, -8070450532247928833
  %or.i = or i64 %and.i, 1152921504606846976
  store i64 %or.i, ptr %k, align 8
  br label %cleanup

err:                                              ; preds = %if.end26
  %19 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %k, align 8
  %21 = and i64 %20, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp9.not.i = icmp eq i64 %21, 0
  br i1 %cmp9.not.i, label %err.bch_bucket_free.exit_crit_edge, label %for.body.lr.ph.i

err.bch_bucket_free.exit_crit_edge:               ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %bch_bucket_free.exit

for.body.lr.ph.i:                                 ; preds = %err
  %bucket_bits.i.i.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %__bch_bucket_free.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %__bch_bucket_free.exit.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cache, align 4
  %buckets.i.i = getelementptr inbounds %struct.cache, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buckets.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.010.i
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %27, 8
  %and.i.i.i.i = and i64 %shr.i.i.i.i, 8796093022207
  %28 = ptrtoint ptr %bucket_bits.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %bucket_bits.i.i.i.i, align 8
  %sh_prom.i.i.i.i = zext i16 %29 to i64
  %shr.i2.i.i.i = lshr i64 %and.i.i.i.i, %sh_prom.i.i.i.i
  %conv1.i.i.i.i = trunc i64 %shr.i2.i.i.i to i32
  %gc_mark.i.i.i = getelementptr %struct.bucket, ptr %25, i32 %conv1.i.i.i.i, i32 4
  %30 = ptrtoint ptr %gc_mark.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %gc_mark.i.i.i, align 4
  %32 = and i16 %31, -32768
  store i16 %32, ptr %gc_mark.i.i.i, align 4
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %23, align 8
  %avail_nbuckets.i.i = getelementptr inbounds %struct.cache_set, ptr %34, i32 0, i32 42
  %35 = ptrtoint ptr %avail_nbuckets.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %avail_nbuckets.i.i, align 4
  %nbuckets.i.i = getelementptr inbounds %struct.cache_set, ptr %34, i32 0, i32 41
  %37 = ptrtoint ptr %nbuckets.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nbuckets.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.i.i = icmp ult i32 %36, %38
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.i.__bch_bucket_free.exit.i_crit_edge

for.body.i.__bch_bucket_free.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__bch_bucket_free.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i.i = add nuw i32 %36, 1
  %39 = ptrtoint ptr %avail_nbuckets.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc.i.i, ptr %avail_nbuckets.i.i, align 4
  %40 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %23, align 8
  %gc_stats.i.i = getelementptr inbounds %struct.cache_set, ptr %41, i32 0, i32 40
  tail call void @bch_update_bucket_in_use(ptr noundef %41, ptr noundef %gc_stats.i.i) #8
  br label %__bch_bucket_free.exit.i

__bch_bucket_free.exit.i:                         ; preds = %if.then.i.i, %for.body.i.__bch_bucket_free.exit.i_crit_edge
  %inc.i = add i32 %i.010.i, 1
  %conv.i60 = zext i32 %inc.i to i64
  %42 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %k, align 8
  %shr.i.i = lshr i64 %43, 60
  %and.i.i = and i64 %shr.i.i, 7
  %cmp.i = icmp ugt i64 %and.i.i, %conv.i60
  br i1 %cmp.i, label %__bch_bucket_free.exit.i.for.body.i_crit_edge, label %__bch_bucket_free.exit.i.bch_bucket_free.exit_crit_edge

__bch_bucket_free.exit.i.bch_bucket_free.exit_crit_edge: ; preds = %__bch_bucket_free.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bch_bucket_free.exit

__bch_bucket_free.exit.i.for.body.i_crit_edge:    ; preds = %__bch_bucket_free.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

bch_bucket_free.exit:                             ; preds = %__bch_bucket_free.exit.i.bch_bucket_free.exit_crit_edge, %err.bch_bucket_free.exit_crit_edge
  tail call void @bkey_put(ptr noundef %c, ptr noundef %k) #8
  br label %cleanup

cleanup:                                          ; preds = %bch_bucket_free.exit, %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %bch_bucket_free.exit ], [ 0, %if.end39 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bkey_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_bucket_alloc_set(ptr noundef %c, i32 noundef %reserve, ptr noundef %k, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bucket_lock = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %bucket_lock, i32 noundef 0) #8
  %call = tail call i32 @__bch_bucket_alloc_set(ptr noundef %c, i32 noundef %reserve, ptr noundef %k, i1 noundef zeroext %wait)
  tail call void @mutex_unlock(ptr noundef %bucket_lock) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bch_alloc_sectors(ptr noundef %c, ptr nocapture noundef %k, i32 noundef %sectors, i32 noundef %write_point, i32 noundef %write_prio, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  %alloc = alloca %union.anon.103, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %alloc) #8
  %0 = getelementptr inbounds i8, ptr %alloc, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %alloc to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -9223372036854775808, ptr %alloc, align 8
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %alloc, i32 8
  %3 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %data_bucket_lock = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 65
  tail call void @_raw_spin_lock(ptr noundef %data_bucket_lock) #8
  %data_buckets.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 64
  %prev.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 64, i32 1
  %uuids.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 58
  %low.i15.i.i = getelementptr inbounds %struct.bkey, ptr %k, i32 0, i32 1
  %cache.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write_prio)
  %tobool1.not = icmp eq i32 %write_prio, 0
  %cond = select i1 %tobool1.not, i32 3, i32 2
  %bucket_lock.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 23
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %ret.063.i = load ptr, ptr %prev.i, align 4
  %cmp.not64.i = icmp eq ptr %ret.063.i, %data_buckets.i
  br i1 %cmp.not64.i, label %while.cond.cond.false.i_crit_edge, label %for.body.lr.ph.i

while.cond.cond.false.i_crit_edge:                ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

for.body.lr.ph.i:                                 ; preds = %while.cond
  %5 = ptrtoint ptr %uuids.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uuids.i, align 8
  %7 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %k, align 8
  %and.i57.i = and i64 %8, 1048575
  %idxprom5.i = trunc i64 %and.i57.i to i32
  %flags.i58.i = getelementptr %struct.uuid_entry, ptr %6, i32 %idxprom5.i, i32 0, i32 0, i32 5
  %9 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i58.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.066.i = phi ptr [ %ret.063.i, %for.body.lr.ph.i ], [ %ret.0.i, %for.inc.i.for.body.i_crit_edge ]
  %ret_task.065.i = phi ptr [ null, %for.body.lr.ph.i ], [ %ret_task.1.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = getelementptr inbounds %struct.open_bucket, ptr %ret.066.i, i32 0, i32 3
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  %and.i.i = and i64 %13, 1048575
  %idxprom.i = trunc i64 %and.i.i to i32
  %flags.i.i = getelementptr %struct.uuid_entry, ptr %6, i32 %idxprom.i, i32 0, i32 0, i32 5
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i, align 4
  %16 = xor i32 %15, %10
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8.not.i = icmp eq i32 %17, 0
  br i1 %cmp8.not.i, label %if.else.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i, i64 %and.i57.i)
  %cmp.not.i.i = icmp eq i64 %and.i.i, %and.i57.i
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %cond.true.i.i, !prof !47

cond.true.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub nsw i64 %and.i.i, %and.i57.i
  br label %bkey_cmp.exit.i

cond.false.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %low.i.i.i = getelementptr inbounds %struct.open_bucket, ptr %ret.066.i, i32 0, i32 3, i32 0, i32 1
  %18 = ptrtoint ptr %low.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %low.i.i.i, align 8
  %20 = ptrtoint ptr %low.i15.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %low.i15.i.i, align 8
  %sub7.i.i = sub i64 %19, %21
  br label %bkey_cmp.exit.i

bkey_cmp.exit.i:                                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %sub.i.i, %cond.true.i.i ], [ %sub7.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %tobool.not.i = icmp eq i64 %cond.i.i, 0
  br i1 %tobool.not.i, label %bkey_cmp.exit.i.found.i_crit_edge, label %if.else11.i

bkey_cmp.exit.i.found.i_crit_edge:                ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %found.i

if.else11.i:                                      ; preds = %bkey_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %last_write_point.i = getelementptr inbounds %struct.open_bucket, ptr %ret.066.i, i32 0, i32 1
  %22 = ptrtoint ptr %last_write_point.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_write_point.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %write_point)
  %cmp12.i = icmp eq i32 %23, %write_point
  %spec.select.i = select i1 %cmp12.i, ptr %ret.066.i, ptr %ret_task.065.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else11.i, %for.body.i.for.inc.i_crit_edge
  %ret_task.1.i = phi ptr [ %ret_task.065.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.else11.i ]
  %prev18.i = getelementptr inbounds %struct.list_head, ptr %ret.066.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %ret.0.i = load ptr, ptr %prev18.i, align 4
  %cmp.not.i = icmp eq ptr %ret.0.i, %data_buckets.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %tobool21.not.i = icmp eq ptr %ret_task.1.i, null
  br i1 %tobool21.not.i, label %for.end.i.cond.false.i_crit_edge, label %for.end.i.found.i_crit_edge

for.end.i.found.i_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %found.i

for.end.i.cond.false.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.i

cond.false.i:                                     ; preds = %for.end.i.cond.false.i_crit_edge, %while.cond.cond.false.i_crit_edge
  %25 = ptrtoint ptr %data_buckets.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data_buckets.i, align 8
  br label %found.i

found.i:                                          ; preds = %cond.false.i, %for.end.i.found.i_crit_edge, %bkey_cmp.exit.i.found.i_crit_edge
  %ret.1.i = phi ptr [ %26, %cond.false.i ], [ %ret_task.1.i, %for.end.i.found.i_crit_edge ], [ %ret.066.i, %bkey_cmp.exit.i.found.i_crit_edge ]
  %sectors_free.i = getelementptr inbounds %struct.open_bucket, ptr %ret.1.i, i32 0, i32 2
  %27 = ptrtoint ptr %sectors_free.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sectors_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool26.not.i = icmp eq i32 %28, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i, label %found.i.pick_data_bucket.exit_crit_edge

found.i.pick_data_bucket.exit_crit_edge:          ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pick_data_bucket.exit

land.lhs.true.i:                                  ; preds = %found.i
  %29 = ptrtoint ptr %alloc to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %alloc, align 8
  %31 = and i64 %30, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool28.not.i = icmp eq i64 %31, 0
  br i1 %tobool28.not.i, label %land.lhs.true.i.pick_data_bucket.exit_crit_edge, label %if.then29.i

land.lhs.true.i.pick_data_bucket.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pick_data_bucket.exit

if.then29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cache.i, align 4
  %bucket_size.i = getelementptr inbounds %struct.cache, ptr %33, i32 0, i32 1, i32 11, i32 0, i32 4
  %34 = ptrtoint ptr %bucket_size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bucket_size.i, align 8
  %36 = ptrtoint ptr %sectors_free.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sectors_free.i, align 4
  %37 = getelementptr inbounds %struct.open_bucket, ptr %ret.1.i, i32 0, i32 3
  %sh.diff.i.i = lshr i64 %30, 57
  %tr.sh.diff.i.i = trunc i64 %sh.diff.i.i to i32
  %conv.i.i.i = and i32 %tr.sh.diff.i.i, 56
  %mul.i.i = add nuw nsw i32 %conv.i.i.i, 16
  %38 = call ptr @memcpy(ptr %37, ptr %alloc, i32 %mul.i.i)
  %39 = ptrtoint ptr %alloc to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -9223372036854775808, ptr %alloc, align 8
  %40 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  br label %pick_data_bucket.exit

pick_data_bucket.exit:                            ; preds = %if.then29.i, %land.lhs.true.i.pick_data_bucket.exit_crit_edge, %found.i.pick_data_bucket.exit_crit_edge
  %41 = ptrtoint ptr %sectors_free.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sectors_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool34.not.i = icmp eq i32 %42, 0
  %tobool.not168 = icmp eq ptr %ret.1.i, null
  %tobool.not = select i1 %tobool34.not.i, i1 true, i1 %tobool.not168
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %pick_data_bucket.exit
  call void @_raw_spin_unlock(ptr noundef %data_bucket_lock) #8
  call void @mutex_lock_nested(ptr noundef %bucket_lock.i, i32 noundef 0) #8
  %call.i = call i32 @__bch_bucket_alloc_set(ptr noundef %c, i32 noundef %cond, ptr noundef nonnull %alloc, i1 noundef zeroext %wait) #8
  call void @mutex_unlock(ptr noundef %bucket_lock.i) #8
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end, label %while.body.cleanup80_crit_edge

while.body.cleanup80_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_lock(ptr noundef %data_bucket_lock) #8
  br label %while.cond

while.end:                                        ; preds = %pick_data_bucket.exit
  %43 = ptrtoint ptr %alloc to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %alloc, align 8
  %45 = and i64 %44, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool8.not = icmp eq i64 %45, 0
  br i1 %tobool8.not, label %while.end.if.end10_crit_edge, label %if.then9

while.end.if.end10_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @bkey_put(ptr noundef %c, ptr noundef nonnull %alloc) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %while.end.if.end10_crit_edge
  %46 = getelementptr inbounds %struct.open_bucket, ptr %ret.1.i, i32 0, i32 3
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %46, align 8
  %shr.i140 = lshr i64 %48, 60
  %and.i141 = and i64 %shr.i140, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i141)
  %cmp177.not = icmp eq i64 %and.i141, 0
  br i1 %cmp177.not, label %if.end10.for.cond26.preheader_crit_edge, label %do.body.lr.ph

if.end10.for.cond26.preheader_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26.preheader

do.body.lr.ph:                                    ; preds = %if.end10
  %49 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cache.i, align 4
  %buckets.i.i = getelementptr inbounds %struct.cache, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %buckets.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buckets.i.i, align 8
  %bucket_bits.i.i.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  %53 = ptrtoint ptr %bucket_bits.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %bucket_bits.i.i.i.i, align 8
  %sh_prom.i.i.i.i = zext i16 %54 to i64
  %55 = trunc i64 %and.i141 to i32
  %arrayidx.i.i.i.i = getelementptr %struct.open_bucket, ptr %ret.1.i, i32 0, i32 3, i32 0, i32 2
  %56 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %57, 8
  %and.i.i.i.i = and i64 %shr.i.i.i.i, 8796093022207
  %shr.i2.i.i.i = lshr i64 %and.i.i.i.i, %sh_prom.i.i.i.i
  %conv1.i.i.i.i = trunc i64 %shr.i2.i.i.i to i32
  %gen.i = getelementptr %struct.bucket, ptr %52, i32 %conv1.i.i.i.i, i32 2
  %58 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %gen.i, align 2
  %conv.i = trunc i64 %57 to i8
  %sub.i.i142 = sub i8 %59, %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i142)
  %cmp.i.i = icmp ugt i8 %sub.i.i142, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %conv.i)
  %tobool14.not170 = icmp eq i8 %59, %conv.i
  %tobool14.not = or i1 %tobool14.not170, %cmp.i.i
  br i1 %tobool14.not, label %for.cond, label %do.body.lr.ph.do.body19_crit_edge, !prof !47

do.body.lr.ph.do.body19_crit_edge:                ; preds = %do.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.cond:                                         ; preds = %do.body.lr.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp = icmp ugt i32 %55, 1
  br i1 %cmp, label %do.body.1, label %for.cond.for.cond26.preheader_crit_edge

for.cond.for.cond26.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26.preheader

do.body.1:                                        ; preds = %for.cond
  %arrayidx.i.i.i.i.1 = getelementptr %struct.open_bucket, ptr %ret.1.i, i32 0, i32 3, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx.i.i.i.i.1 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx.i.i.i.i.1, align 8
  %shr.i.i.i.i.1 = lshr i64 %61, 8
  %and.i.i.i.i.1 = and i64 %shr.i.i.i.i.1, 8796093022207
  %shr.i2.i.i.i.1 = lshr i64 %and.i.i.i.i.1, %sh_prom.i.i.i.i
  %conv1.i.i.i.i.1 = trunc i64 %shr.i2.i.i.i.1 to i32
  %gen.i.1 = getelementptr %struct.bucket, ptr %52, i32 %conv1.i.i.i.i.1, i32 2
  %62 = ptrtoint ptr %gen.i.1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %gen.i.1, align 2
  %conv.i.1 = trunc i64 %61 to i8
  %sub.i.i142.1 = sub i8 %63, %conv.i.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i142.1)
  %cmp.i.i.1 = icmp ugt i8 %sub.i.i142.1, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %conv.i.1)
  %tobool14.not170.1 = icmp eq i8 %63, %conv.i.1
  %tobool14.not.1 = or i1 %tobool14.not170.1, %cmp.i.i.1
  br i1 %tobool14.not.1, label %for.cond.1, label %do.body.1.do.body19_crit_edge, !prof !47

do.body.1.do.body19_crit_edge:                    ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.cond.1:                                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.1 = icmp ugt i32 %55, 2
  br i1 %cmp.1, label %do.body.2, label %for.cond.1.for.cond26.preheader_crit_edge

for.cond.1.for.cond26.preheader_crit_edge:        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26.preheader

do.body.2:                                        ; preds = %for.cond.1
  %arrayidx.i.i.i.i.2 = getelementptr %struct.open_bucket, ptr %ret.1.i, i32 0, i32 3, i32 0, i32 4
  %64 = ptrtoint ptr %arrayidx.i.i.i.i.2 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx.i.i.i.i.2, align 8
  %shr.i.i.i.i.2 = lshr i64 %65, 8
  %and.i.i.i.i.2 = and i64 %shr.i.i.i.i.2, 8796093022207
  %shr.i2.i.i.i.2 = lshr i64 %and.i.i.i.i.2, %sh_prom.i.i.i.i
  %conv1.i.i.i.i.2 = trunc i64 %shr.i2.i.i.i.2 to i32
  %gen.i.2 = getelementptr %struct.bucket, ptr %52, i32 %conv1.i.i.i.i.2, i32 2
  %66 = ptrtoint ptr %gen.i.2 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %gen.i.2, align 2
  %conv.i.2 = trunc i64 %65 to i8
  %sub.i.i142.2 = sub i8 %67, %conv.i.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i142.2)
  %cmp.i.i.2 = icmp ugt i8 %sub.i.i142.2, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %conv.i.2)
  %tobool14.not170.2 = icmp eq i8 %67, %conv.i.2
  %tobool14.not.2 = or i1 %tobool14.not170.2, %cmp.i.i.2
  br i1 %tobool14.not.2, label %for.cond.2, label %do.body.2.do.body19_crit_edge, !prof !47

do.body.2.do.body19_crit_edge:                    ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.cond.2:                                       ; preds = %do.body.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %55)
  %cmp.2 = icmp ugt i32 %55, 3
  br i1 %cmp.2, label %do.body.3, label %for.cond.2.for.cond26.preheader_crit_edge

for.cond.2.for.cond26.preheader_crit_edge:        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26.preheader

do.body.3:                                        ; preds = %for.cond.2
  %arrayidx.i.i.i.i.3 = getelementptr %struct.open_bucket, ptr %ret.1.i, i32 0, i32 3, i32 0, i32 5
  %68 = ptrtoint ptr %arrayidx.i.i.i.i.3 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx.i.i.i.i.3, align 8
  %shr.i.i.i.i.3 = lshr i64 %69, 8
  %and.i.i.i.i.3 = and i64 %shr.i.i.i.i.3, 8796093022207
  %shr.i2.i.i.i.3 = lshr i64 %and.i.i.i.i.3, %sh_prom.i.i.i.i
  %conv1.i.i.i.i.3 = trunc i64 %shr.i2.i.i.i.3 to i32
  %gen.i.3 = getelementptr %struct.bucket, ptr %52, i32 %conv1.i.i.i.i.3, i32 2
  %70 = ptrtoint ptr %gen.i.3 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %gen.i.3, align 2
  %conv.i.3 = trunc i64 %69 to i8
  %sub.i.i142.3 = sub i8 %71, %conv.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i142.3)
  %cmp.i.i.3 = icmp ugt i8 %sub.i.i142.3, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %conv.i.3)
  %tobool14.not170.3 = icmp eq i8 %71, %conv.i.3
  %tobool14.not.3 = or i1 %tobool14.not170.3, %cmp.i.i.3
  br i1 %tobool14.not.3, label %for.cond.3, label %do.body.3.do.body19_crit_edge, !prof !47

do.body.3.do.body19_crit_edge:                    ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.cond.3:                                       ; preds = %do.body.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %cmp.3 = icmp ugt i32 %55, 4
  br i1 %cmp.3, label %do.body.4, label %for.cond.3.for.cond26.preheader_crit_edge

for.cond.3.for.cond26.preheader_crit_edge:        ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26.preheader

do.body.4:                                        ; preds = %for.cond.3
  %arrayidx.i.i.i.i.4 = getelementptr %struct.open_bucket, ptr %ret.1.i, i32 0, i32 3, i32 0, i32 6
  %72 = ptrtoint ptr %arrayidx.i.i.i.i.4 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx.i.i.i.i.4, align 8
  %shr.i.i.i.i.4 = lshr i64 %73, 8
  %and.i.i.i.i.4 = and i64 %shr.i.i.i.i.4, 8796093022207
  %shr.i2.i.i.i.4 = lshr i64 %and.i.i.i.i.4, %sh_prom.i.i.i.i
  %conv1.i.i.i.i.4 = trunc i64 %shr.i2.i.i.i.4 to i32
  %gen.i.4 = getelementptr %struct.bucket, ptr %52, i32 %conv1.i.i.i.i.4, i32 2
  %74 = ptrtoint ptr %gen.i.4 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %gen.i.4, align 2
  %conv.i.4 = trunc i64 %73 to i8
  %sub.i.i142.4 = sub i8 %75, %conv.i.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i142.4)
  %cmp.i.i.4 = icmp ugt i8 %sub.i.i142.4, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %conv.i.4)
  %tobool14.not170.4 = icmp eq i8 %75, %conv.i.4
  %tobool14.not.4 = or i1 %tobool14.not170.4, %cmp.i.i.4
  br i1 %tobool14.not.4, label %for.cond.4, label %do.body.4.do.body19_crit_edge, !prof !47

do.body.4.do.body19_crit_edge:                    ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.cond.4:                                       ; preds = %do.body.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %55)
  %cmp.4 = icmp ugt i32 %55, 5
  br i1 %cmp.4, label %do.body.5, label %for.cond.4.for.cond26.preheader_crit_edge

for.cond.4.for.cond26.preheader_crit_edge:        ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26.preheader

do.body.5:                                        ; preds = %for.cond.4
  %arrayidx.i.i.i.i.5 = getelementptr %struct.open_bucket, ptr %ret.1.i, i32 0, i32 3, i32 0, i32 7
  %76 = ptrtoint ptr %arrayidx.i.i.i.i.5 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx.i.i.i.i.5, align 8
  %shr.i.i.i.i.5 = lshr i64 %77, 8
  %and.i.i.i.i.5 = and i64 %shr.i.i.i.i.5, 8796093022207
  %shr.i2.i.i.i.5 = lshr i64 %and.i.i.i.i.5, %sh_prom.i.i.i.i
  %conv1.i.i.i.i.5 = trunc i64 %shr.i2.i.i.i.5 to i32
  %gen.i.5 = getelementptr %struct.bucket, ptr %52, i32 %conv1.i.i.i.i.5, i32 2
  %78 = ptrtoint ptr %gen.i.5 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %gen.i.5, align 2
  %conv.i.5 = trunc i64 %77 to i8
  %sub.i.i142.5 = sub i8 %79, %conv.i.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i142.5)
  %cmp.i.i.5 = icmp ugt i8 %sub.i.i142.5, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %conv.i.5)
  %tobool14.not170.5 = icmp eq i8 %79, %conv.i.5
  %tobool14.not.5 = or i1 %tobool14.not170.5, %cmp.i.i.5
  br i1 %tobool14.not.5, label %for.cond.5, label %do.body.5.do.body19_crit_edge, !prof !47

do.body.5.do.body19_crit_edge:                    ; preds = %do.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

for.cond.5:                                       ; preds = %do.body.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %55)
  %cmp.5 = icmp eq i32 %55, 7
  br i1 %cmp.5, label %do.body.6, label %for.cond.5.for.cond26.preheader_crit_edge

for.cond.5.for.cond26.preheader_crit_edge:        ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26.preheader

do.body.6:                                        ; preds = %for.cond.5
  %arrayidx.i.i.i.i.6 = getelementptr %struct.open_bucket, ptr %ret.1.i, i32 1
  %80 = ptrtoint ptr %arrayidx.i.i.i.i.6 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx.i.i.i.i.6, align 8
  %shr.i.i.i.i.6 = lshr i64 %81, 8
  %and.i.i.i.i.6 = and i64 %shr.i.i.i.i.6, 8796093022207
  %shr.i2.i.i.i.6 = lshr i64 %and.i.i.i.i.6, %sh_prom.i.i.i.i
  %conv1.i.i.i.i.6 = trunc i64 %shr.i2.i.i.i.6 to i32
  %gen.i.6 = getelementptr %struct.bucket, ptr %52, i32 %conv1.i.i.i.i.6, i32 2
  %82 = ptrtoint ptr %gen.i.6 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %gen.i.6, align 2
  %conv.i.6 = trunc i64 %81 to i8
  %sub.i.i142.6 = sub i8 %83, %conv.i.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %sub.i.i142.6)
  %cmp.i.i.6 = icmp ugt i8 %sub.i.i142.6, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %83, i8 %conv.i.6)
  %tobool14.not170.6 = icmp eq i8 %83, %conv.i.6
  %tobool14.not.6 = or i1 %tobool14.not170.6, %cmp.i.i.6
  br i1 %tobool14.not.6, label %do.body.6.for.cond26.preheader_crit_edge, label %do.body.6.do.body19_crit_edge, !prof !47

do.body.6.do.body19_crit_edge:                    ; preds = %do.body.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body19

do.body.6.for.cond26.preheader_crit_edge:         ; preds = %do.body.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %do.body.6.for.cond26.preheader_crit_edge, %for.cond.5.for.cond26.preheader_crit_edge, %for.cond.4.for.cond26.preheader_crit_edge, %for.cond.3.for.cond26.preheader_crit_edge, %for.cond.2.for.cond26.preheader_crit_edge, %for.cond.1.for.cond26.preheader_crit_edge, %for.cond.for.cond26.preheader_crit_edge, %if.end10.for.cond26.preheader_crit_edge
  %84 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %46, align 8
  %86 = and i64 %85, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %cmp29181.not = icmp eq i64 %86, 0
  br i1 %cmp29181.not, label %for.cond26.preheader.for.end36_crit_edge, label %for.body31.lr.ph

for.cond26.preheader.for.end36_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36

for.body31.lr.ph:                                 ; preds = %for.cond26.preheader
  %ptr = getelementptr inbounds %struct.open_bucket, ptr %ret.1.i, i32 0, i32 3, i32 0, i32 2
  br label %for.body31

do.body19:                                        ; preds = %do.body.6.do.body19_crit_edge, %do.body.5.do.body19_crit_edge, %do.body.4.do.body19_crit_edge, %do.body.3.do.body19_crit_edge, %do.body.2.do.body19_crit_edge, %do.body.1.do.body19_crit_edge, %do.body.lr.ph.do.body19_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 649, 0\0A.popsection", ""() #8, !srcloc !74
  unreachable

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %i.1182 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc35, %for.body31.for.body31_crit_edge ]
  %arrayidx = getelementptr [0 x i64], ptr %ptr, i32 0, i32 %i.1182
  %87 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx, align 8
  %arrayidx33 = getelementptr %struct.bkey, ptr %k, i32 0, i32 2, i32 %i.1182
  %89 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %arrayidx33, align 8
  %inc35 = add i32 %i.1182, 1
  %conv27 = zext i32 %inc35 to i64
  %90 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %46, align 8
  %shr.i143 = lshr i64 %91, 60
  %and.i144 = and i64 %shr.i143, 7
  %cmp29 = icmp ugt i64 %and.i144, %conv27
  br i1 %cmp29, label %for.body31.for.body31_crit_edge, label %for.body31.for.end36_crit_edge

for.body31.for.end36_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.end36:                                        ; preds = %for.body31.for.end36_crit_edge, %for.cond26.preheader.for.end36_crit_edge
  %92 = ptrtoint ptr %sectors_free.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sectors_free.i, align 4
  %94 = call i32 @llvm.umin.i32(i32 %93, i32 %sectors)
  %95 = ptrtoint ptr %low.i15.i.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %low.i15.i.i, align 8
  %conv41 = zext i32 %94 to i64
  %add = add i64 %96, %conv41
  store i64 %add, ptr %low.i15.i.i, align 8
  %97 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %k, align 8
  %and.i146 = and i64 %98, -68718428161
  %and1.i = shl nuw nsw i64 %conv41, 20
  %shl.i = and i64 %and1.i, 68718428160
  %or.i = or i64 %and.i146, %shl.i
  store i64 %or.i, ptr %k, align 8
  %99 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %46, align 8
  %and.i148 = and i64 %100, 8070450532247928832
  %and.i149 = and i64 %or.i, -8070450532247928833
  %or.i152 = or i64 %and.i149, %and.i148
  store i64 %or.i152, ptr %k, align 8
  %call.i.i153 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ret.1.i) #8
  br i1 %call.i.i153, label %if.end.i.i, label %for.end36.__list_del_entry.exit.i_crit_edge

for.end36.__list_del_entry.exit.i_crit_edge:      ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ret.1.i, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i.i, align 4
  %103 = ptrtoint ptr %ret.1.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ret.1.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev1.i.i.i, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %104, ptr %102, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.end36.__list_del_entry.exit.i_crit_edge
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ret.1.i, ptr noundef %108, ptr noundef %data_buckets.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %ret.1.i, ptr %prev.i, align 4
  %110 = ptrtoint ptr %ret.1.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %data_buckets.i, ptr %ret.1.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ret.1.i, i32 0, i32 1
  %111 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i.i, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %ret.1.i, ptr %108, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %113 = ptrtoint ptr %k to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %k, align 8
  %and.i.i154 = and i64 %114, 1048575
  %115 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %46, align 8
  %and.i4.i = and i64 %116, -1048576
  %or.i.i = or i64 %and.i4.i, %and.i.i154
  store i64 %or.i.i, ptr %46, align 8
  %117 = ptrtoint ptr %low.i15.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %low.i15.i.i, align 8
  %low.i5.i = getelementptr inbounds %struct.open_bucket, ptr %ret.1.i, i32 0, i32 3, i32 0, i32 1
  %119 = ptrtoint ptr %low.i5.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %low.i5.i, align 8
  %last_write_point = getelementptr inbounds %struct.open_bucket, ptr %ret.1.i, i32 0, i32 1
  %120 = ptrtoint ptr %last_write_point to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %write_point, ptr %last_write_point, align 8
  %121 = ptrtoint ptr %sectors_free.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sectors_free.i, align 4
  %sub = sub i32 %122, %94
  store i32 %sub, ptr %sectors_free.i, align 4
  %123 = and i64 %116, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %123)
  %cmp48185.not = icmp eq i64 %123, 0
  br i1 %cmp48185.not, label %list_move_tail.exit.for.end56_crit_edge, label %for.body50.lr.ph

list_move_tail.exit.for.end56_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end56

for.body50.lr.ph:                                 ; preds = %list_move_tail.exit
  %add53169 = shl nuw nsw i64 %conv41, 8
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.body50.lr.ph
  %i.2186 = phi i32 [ 0, %for.body50.lr.ph ], [ %inc55, %for.body50.for.body50_crit_edge ]
  %arrayidx.i = getelementptr %struct.bkey, ptr %46, i32 0, i32 2, i32 %i.2186
  %124 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx.i, align 8
  %and.i160 = and i64 %125, -2251799813684993
  %.mask = and i64 %125, 2251799813684992
  %and1.i161 = add nuw nsw i64 %.mask, %add53169
  %shl.i162 = and i64 %and1.i161, 2251799813684992
  %or.i163 = or i64 %shl.i162, %and.i160
  store i64 %or.i163, ptr %arrayidx.i, align 8
  %126 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cache.i, align 4
  %sectors_written = getelementptr inbounds %struct.cache, ptr %127, i32 0, i32 24
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sectors_written, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %sectors_written, i32 1, i32 3, i32 1) #8
  %128 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sectors_written, ptr %sectors_written, i32 %94, ptr elementtype(i32) %sectors_written) #8, !srcloc !56
  %inc55 = add i32 %i.2186, 1
  %conv46 = zext i32 %inc55 to i64
  %129 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %46, align 8
  %shr.i155 = lshr i64 %130, 60
  %and.i156 = and i64 %shr.i155, 7
  %cmp48 = icmp ugt i64 %and.i156, %conv46
  br i1 %cmp48, label %for.body50.for.body50_crit_edge, label %for.body50.for.end56_crit_edge

for.body50.for.end56_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end56

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50

for.end56:                                        ; preds = %for.body50.for.end56_crit_edge, %list_move_tail.exit.for.end56_crit_edge
  %131 = ptrtoint ptr %sectors_free.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sectors_free.i, align 4
  %133 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cache.i, align 4
  %block_size = getelementptr inbounds %struct.cache, ptr %134, i32 0, i32 1, i32 11, i32 0, i32 1
  %135 = ptrtoint ptr %block_size to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %block_size, align 8
  %conv59 = zext i16 %136 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %conv59)
  %cmp60 = icmp ult i32 %132, %conv59
  br i1 %cmp60, label %if.end64.thread, label %if.end64

if.end64.thread:                                  ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %sectors_free.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %sectors_free.i, align 4
  br label %if.end78

if.end64:                                         ; preds = %for.end56
  %138 = ptrtoint ptr %sectors_free.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pr = load i32, ptr %sectors_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool66.not = icmp eq i32 %.pr, 0
  br i1 %tobool66.not, label %if.end64.if.end78_crit_edge, label %for.cond68.preheader

if.end64.if.end78_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

for.cond68.preheader:                             ; preds = %if.end64
  %139 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %46, align 8
  %141 = and i64 %140, 8070450532247928832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %141)
  %cmp71189.not = icmp eq i64 %141, 0
  br i1 %cmp71189.not, label %for.cond68.preheader.if.end78_crit_edge, label %for.body73.lr.ph

for.cond68.preheader.if.end78_crit_edge:          ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

for.body73.lr.ph:                                 ; preds = %for.cond68.preheader
  %bucket_bits.i.i.i = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 24
  br label %for.body73

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %for.body73.lr.ph
  %i.3190 = phi i32 [ 0, %for.body73.lr.ph ], [ %inc76, %for.body73.for.body73_crit_edge ]
  %142 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cache.i, align 4
  %buckets.i = getelementptr inbounds %struct.cache, ptr %143, i32 0, i32 15
  %144 = ptrtoint ptr %buckets.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %buckets.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.bkey, ptr %46, i32 0, i32 2, i32 %i.3190
  %146 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx.i.i.i, align 8
  %shr.i.i.i = lshr i64 %147, 8
  %and.i.i.i = and i64 %shr.i.i.i, 8796093022207
  %148 = ptrtoint ptr %bucket_bits.i.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %bucket_bits.i.i.i, align 8
  %sh_prom.i.i.i = zext i16 %149 to i64
  %shr.i2.i.i = lshr i64 %and.i.i.i, %sh_prom.i.i.i
  %conv1.i.i.i = trunc i64 %shr.i2.i.i to i32
  %add.ptr.i = getelementptr %struct.bucket, ptr %145, i32 %conv1.i.i.i
  %call.i.i139 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #8
  %150 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 1, ptr elementtype(i32) %add.ptr.i) #8, !srcloc !56
  %inc76 = add i32 %i.3190, 1
  %conv69 = zext i32 %inc76 to i64
  %151 = ptrtoint ptr %46 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %46, align 8
  %shr.i164 = lshr i64 %152, 60
  %and.i165 = and i64 %shr.i164, 7
  %cmp71 = icmp ugt i64 %and.i165, %conv69
  br i1 %cmp71, label %for.body73.for.body73_crit_edge, label %for.body73.if.end78_crit_edge

for.body73.if.end78_crit_edge:                    ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body73

if.end78:                                         ; preds = %for.body73.if.end78_crit_edge, %for.cond68.preheader.if.end78_crit_edge, %if.end64.if.end78_crit_edge, %if.end64.thread
  call void @_raw_spin_unlock(ptr noundef %data_bucket_lock) #8
  br label %cleanup80

cleanup80:                                        ; preds = %if.end78, %while.body.cleanup80_crit_edge
  %153 = xor i1 %tobool.not, true
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %alloc) #8
  ret i1 %153
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_open_buckets_free(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_buckets = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 64
  %0 = ptrtoint ptr %data_buckets to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %data_buckets, align 4
  %cmp.i.not4 = icmp eq ptr %1, %data_buckets
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %2) #8
  %11 = ptrtoint ptr %data_buckets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %data_buckets, align 4
  %cmp.i.not = icmp eq ptr %12, %data_buckets
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_open_buckets_alloc(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data_bucket_lock = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 65
  tail call void @__raw_spin_lock_init(ptr noundef %data_bucket_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bch_open_buckets_alloc.__key, i16 noundef signext 3) #8
  %data_buckets = getelementptr inbounds %struct.cache_set, ptr %c, i32 0, i32 64
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %list_add.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.cleanup2_crit_edge, label %if.end

for.body.cleanup2_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup2

if.end:                                           ; preds = %for.body
  %1 = ptrtoint ptr %data_buckets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data_buckets, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %data_buckets, ptr noundef %2) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data_buckets, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %data_buckets to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i, ptr %data_buckets, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %list_add.exit.cleanup2_crit_edge, label %list_add.exit.for.body_crit_edge

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_add.exit.cleanup2_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup2

cleanup2:                                         ; preds = %list_add.exit.cleanup2_crit_edge, %for.body.cleanup2_crit_edge
  %retval.2 = phi i32 [ 0, %list_add.exit.cleanup2_crit_edge ], [ -12, %for.body.cleanup2_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_cache_allocator_start(ptr noundef %ca) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @bch_allocator_thread, ptr noundef %ca, i32 noundef -1, ptr noundef nonnull @.str.2) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @wake_up_process(ptr noundef %call) #8
  %alloc_thread = getelementptr inbounds %struct.cache, ptr %ca, i32 0, i32 7
  %1 = ptrtoint ptr %alloc_thread to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %alloc_thread, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ %0, %if.then4 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bch_allocator_thread(ptr noundef %arg) #0 align 64 {
entry:
  %n.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  %bucket_lock = getelementptr inbounds %struct.cache_set, ptr %1, i32 0, i32 23
  tail call void @mutex_lock_nested(ptr noundef %bucket_lock, i32 noundef 0) #8
  %free_inc = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 13
  %back = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 13, i32 1
  %mask = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 13, i32 3
  %data = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 13, i32 4
  %discard = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 18
  %bdev = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 6
  %bucket_size = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 1, i32 11, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 1
  %size.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 1, i32 2
  %back.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 1, i32 1
  %mask.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 1, i32 3
  %arrayidx30.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 0
  %size31.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 0, i32 2
  %back34.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 0, i32 1
  %mask41.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 0, i32 3
  %arrayidx30.2.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 2
  %size31.2.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 2, i32 2
  %back34.2.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 2, i32 1
  %mask41.2.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 2, i32 3
  %arrayidx30.3.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 3
  %size31.3.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 3, i32 2
  %back34.3.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 3, i32 1
  %mask41.3.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 3, i32 3
  %invalidate_needs_gc = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 17
  %flags.i.i = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 1, i32 6
  %size.i57.i = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 13, i32 2
  %2 = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 1, i32 11
  %first_bucket.i60.i = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 1, i32 13
  %buckets.i61.i = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 15
  %fifo_last_bucket.i.i = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 14
  %heap.i.i = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 16
  %used.i.i = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 16, i32 1
  %data.i.i = getelementptr inbounds %struct.cache, ptr %arg, i32 0, i32 16, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %3 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %back, align 4
  %5 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %free_inc, align 8
  %sub996 = sub i32 %4, %6
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  %and997 = and i32 %sub996, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and997)
  %tobool.not998 = icmp eq i32 %and997, 0
  br i1 %tobool.not998, label %while.cond.__here325.preheader_crit_edge, label %while.cond.if.end19_crit_edge

while.cond.if.end19_crit_edge:                    ; preds = %while.cond
  br label %if.end19

while.cond.__here325.preheader_crit_edge:         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here325.preheader

if.end19:                                         ; preds = %cleanup.if.end19_crit_edge, %while.cond.if.end19_crit_edge
  %9 = phi i32 [ %104, %cleanup.if.end19_crit_edge ], [ %8, %while.cond.if.end19_crit_edge ]
  %10 = phi i32 [ %102, %cleanup.if.end19_crit_edge ], [ %6, %while.cond.if.end19_crit_edge ]
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %inc = add i32 %10, 1
  %13 = ptrtoint ptr %free_inc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc, ptr %free_inc, align 8
  %arrayidx = getelementptr i32, ptr %12, i32 %10
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %and14 = and i32 %inc, %9
  store i32 %and14, ptr %free_inc, align 8
  %16 = ptrtoint ptr %discard to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %discard, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool20.not = icmp eq i8 %17, 0
  br i1 %tobool20.not, label %if.end19.__here_crit_edge, label %if.then21

if.end19.__here_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arg, align 8
  %bucket_lock23 = getelementptr inbounds %struct.cache_set, ptr %19, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %bucket_lock23) #8
  %20 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev, align 4
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arg, align 8
  %conv.i = zext i32 %15 to i64
  %bucket_bits.i = getelementptr inbounds %struct.cache_set, ptr %23, i32 0, i32 24
  %24 = ptrtoint ptr %bucket_bits.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bucket_bits.i, align 8
  %sh_prom.i = zext i16 %25 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %26 = ptrtoint ptr %bucket_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bucket_size, align 8
  %conv = zext i32 %27 to i64
  %call25 = call i32 @blkdev_issue_discard(ptr noundef %21, i64 noundef %shl.i, i64 noundef %conv, i32 noundef 3264, i32 noundef 0) #8
  br label %while.cond29.sink.split

while.cond29.sink.split:                          ; preds = %if.end191, %if.then21
  %28 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg, align 8
  %bucket_lock27 = getelementptr inbounds %struct.cache_set, ptr %29, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %bucket_lock27, i32 noundef 0) #8
  br label %__here

__here:                                           ; preds = %while.cond29.sink.split, %if.end19.__here_crit_edge
  %30 = call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 212
  %34 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 ptrtoint (ptr blockaddress(@bch_allocator_thread, %__here) to i32), ptr %task_state_change, align 4
  %35 = load ptr, ptr %task, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %35, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size.i, align 4
  %39 = ptrtoint ptr %back.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %back.i, align 4
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 %40, %42
  %43 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mask.i, align 4
  %and.i873 = and i32 %sub.i, %44
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %and.i873)
  %tobool.not.i = icmp eq i32 %38, %and.i873
  br i1 %tobool.not.i, label %for.body.preheader.i, label %__here.bch_allocator_push.exit_crit_edge

__here.bch_allocator_push.exit_crit_edge:         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %bch_allocator_push.exit

for.body.preheader.i:                             ; preds = %__here
  %45 = ptrtoint ptr %size31.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size31.i, align 4
  %47 = ptrtoint ptr %back34.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %back34.i, align 4
  %49 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx30.i, align 4
  %sub38.i = sub i32 %48, %50
  %51 = ptrtoint ptr %mask41.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mask41.i, align 4
  %and42.i = and i32 %sub38.i, %52
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %and42.i)
  %tobool44.not.i = icmp eq i32 %46, %and42.i
  br i1 %tobool44.not.i, label %for.inc.1.i, label %for.body.preheader.i.bch_allocator_push.exit_crit_edge

for.body.preheader.i.bch_allocator_push.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bch_allocator_push.exit

for.inc.1.i:                                      ; preds = %for.body.preheader.i
  %53 = ptrtoint ptr %size31.2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size31.2.i, align 4
  %55 = ptrtoint ptr %back34.2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %back34.2.i, align 4
  %57 = ptrtoint ptr %arrayidx30.2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx30.2.i, align 4
  %sub38.2.i = sub i32 %56, %58
  %59 = ptrtoint ptr %mask41.2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mask41.2.i, align 4
  %and42.2.i = and i32 %sub38.2.i, %60
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %and42.2.i)
  %tobool44.not.2.i = icmp eq i32 %54, %and42.2.i
  br i1 %tobool44.not.2.i, label %for.inc.2.i, label %for.inc.1.i.bch_allocator_push.exit_crit_edge

for.inc.1.i.bch_allocator_push.exit_crit_edge:    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bch_allocator_push.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %61 = ptrtoint ptr %size31.3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %size31.3.i, align 4
  %63 = ptrtoint ptr %back34.3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %back34.3.i, align 4
  %65 = ptrtoint ptr %arrayidx30.3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx30.3.i, align 4
  %sub38.3.i = sub i32 %64, %66
  %67 = ptrtoint ptr %mask41.3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mask41.3.i, align 4
  %and42.3.i = and i32 %sub38.3.i, %68
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %and42.3.i)
  %tobool44.not.3.i = icmp eq i32 %62, %and42.3.i
  br i1 %tobool44.not.3.i, label %if.end101, label %for.inc.2.i.bch_allocator_push.exit_crit_edge

for.inc.2.i.bch_allocator_push.exit_crit_edge:    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bch_allocator_push.exit

bch_allocator_push.exit:                          ; preds = %for.inc.2.i.bch_allocator_push.exit_crit_edge, %for.inc.1.i.bch_allocator_push.exit_crit_edge, %for.body.preheader.i.bch_allocator_push.exit_crit_edge, %__here.bch_allocator_push.exit_crit_edge
  %i.0101.lcssa.sink.i = phi i32 [ 1, %__here.bch_allocator_push.exit_crit_edge ], [ 0, %for.body.preheader.i.bch_allocator_push.exit_crit_edge ], [ 2, %for.inc.1.i.bch_allocator_push.exit_crit_edge ], [ 3, %for.inc.2.i.bch_allocator_push.exit_crit_edge ]
  %.lcssa.sink109.i = phi i32 [ %40, %__here.bch_allocator_push.exit_crit_edge ], [ %48, %for.body.preheader.i.bch_allocator_push.exit_crit_edge ], [ %56, %for.inc.1.i.bch_allocator_push.exit_crit_edge ], [ %64, %for.inc.2.i.bch_allocator_push.exit_crit_edge ]
  %back34.lcssa.sink108.i = phi ptr [ %back.i, %__here.bch_allocator_push.exit_crit_edge ], [ %back34.i, %for.body.preheader.i.bch_allocator_push.exit_crit_edge ], [ %back34.2.i, %for.inc.1.i.bch_allocator_push.exit_crit_edge ], [ %back34.3.i, %for.inc.2.i.bch_allocator_push.exit_crit_edge ]
  %mask41.lcssa.sink.i = phi ptr [ %mask.i, %__here.bch_allocator_push.exit_crit_edge ], [ %mask41.i, %for.body.preheader.i.bch_allocator_push.exit_crit_edge ], [ %mask41.2.i, %for.inc.1.i.bch_allocator_push.exit_crit_edge ], [ %mask41.3.i, %for.inc.2.i.bch_allocator_push.exit_crit_edge ]
  %data52.i = getelementptr %struct.cache, ptr %arg, i32 0, i32 12, i32 %i.0101.lcssa.sink.i, i32 4
  %69 = ptrtoint ptr %data52.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data52.i, align 4
  %inc56.i = add i32 %.lcssa.sink109.i, 1
  %71 = ptrtoint ptr %back34.lcssa.sink108.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %inc56.i, ptr %back34.lcssa.sink108.i, align 4
  %arrayidx57.i = getelementptr i32, ptr %70, i32 %.lcssa.sink109.i
  %72 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %15, ptr %arrayidx57.i, align 4
  %73 = ptrtoint ptr %mask41.lcssa.sink.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mask41.lcssa.sink.i, align 4
  %75 = load i32, ptr %back34.lcssa.sink108.i, align 4
  %and64.i = and i32 %75, %74
  store i32 %and64.i, ptr %back34.lcssa.sink108.i, align 4
  br label %cleanup

if.end101:                                        ; preds = %for.inc.2.i
  %76 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arg, align 8
  %bucket_lock103 = getelementptr inbounds %struct.cache_set, ptr %77, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %bucket_lock103) #8
  %call104 = call zeroext i1 @kthread_should_stop() #8
  br i1 %call104, label %if.end101.cleanup.thread_crit_edge, label %lor.lhs.false

if.end101.cleanup.thread_crit_edge:               ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

lor.lhs.false:                                    ; preds = %if.end101
  %78 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arg, align 8
  %flags = getelementptr inbounds %struct.cache_set, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flags, align 4
  %82 = and i32 %81, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool108.not = icmp eq i32 %82, 0
  br i1 %tobool108.not, label %if.end191, label %lor.lhs.false.cleanup.thread_crit_edge

lor.lhs.false.cleanup.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false.cleanup.thread_crit_edge, %if.end101.cleanup.thread_crit_edge
  %83 = inttoptr i32 %and.i to ptr
  %task.le = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %task.le to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %task.le, align 8
  %task_state_change165 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 212
  %86 = ptrtoint ptr %task_state_change165 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 ptrtoint (ptr blockaddress(@bch_allocator_thread, %cleanup.thread) to i32), ptr %task_state_change165, align 4
  %87 = load ptr, ptr %task.le, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 0, ptr %87, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  br label %cleanup811

if.end191:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  br label %while.cond29.sink.split

cleanup:                                          ; preds = %bch_allocator_push.exit
  %89 = inttoptr i32 %and.i to ptr
  %task.le979 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %task.le979 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %task.le979, align 8
  %task_state_change249 = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 212
  %92 = ptrtoint ptr %task_state_change249 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 ptrtoint (ptr blockaddress(@bch_allocator_thread, %cleanup) to i32), ptr %task_state_change249, align 4
  %93 = load ptr, ptr %task.le979, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 0, ptr %93, align 128
  %95 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arg, align 8
  %btree_cache_wait = getelementptr inbounds %struct.cache_set, ptr %96, i32 0, i32 31
  call void @__wake_up(ptr noundef %btree_cache_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %97 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arg, align 8
  %bucket_wait = getelementptr inbounds %struct.cache_set, ptr %98, i32 0, i32 35
  call void @__wake_up(ptr noundef %bucket_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %99 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %back, align 4
  %101 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %free_inc, align 8
  %sub = sub i32 %100, %102
  %103 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mask, align 4
  %and = and i32 %sub, %104
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.__here325.preheader_crit_edge, label %cleanup.if.end19_crit_edge

cleanup.if.end19_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

cleanup.__here325.preheader_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here325.preheader

__here325.preheader:                              ; preds = %cleanup.__here325.preheader_crit_edge, %while.cond.__here325.preheader_crit_edge
  br label %__here325

__here325:                                        ; preds = %__here325.backedge, %__here325.preheader
  %105 = call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i874 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i874 to ptr
  %task328 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task328 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task328, align 8
  %task_state_change329 = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 212
  %109 = ptrtoint ptr %task_state_change329 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 ptrtoint (ptr blockaddress(@bch_allocator_thread, %__here325) to i32), ptr %task_state_change329, align 4
  %110 = load ptr, ptr %task328, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 1, ptr %110, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !77
  %112 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arg, align 8
  %gc_mark_valid = getelementptr inbounds %struct.cache_set, ptr %113, i32 0, i32 46
  %114 = ptrtoint ptr %gc_mark_valid to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %gc_mark_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool356.not = icmp eq i32 %115, 0
  br i1 %tobool356.not, label %__here325.if.end359_crit_edge, label %land.lhs.true

__here325.if.end359_crit_edge:                    ; preds = %__here325
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end359

land.lhs.true:                                    ; preds = %__here325
  %116 = ptrtoint ptr %invalidate_needs_gc to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %invalidate_needs_gc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool357.not = icmp eq i32 %117, 0
  br i1 %tobool357.not, label %__here506, label %land.lhs.true.if.end359_crit_edge

land.lhs.true.if.end359_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end359

if.end359:                                        ; preds = %land.lhs.true.if.end359_crit_edge, %__here325.if.end359_crit_edge
  %bucket_lock361 = getelementptr inbounds %struct.cache_set, ptr %113, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %bucket_lock361) #8
  %call362 = call zeroext i1 @kthread_should_stop() #8
  br i1 %call362, label %if.end359.__here421_crit_edge, label %lor.lhs.false364

if.end359.__here421_crit_edge:                    ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here421

lor.lhs.false364:                                 ; preds = %if.end359
  %118 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arg, align 8
  %flags366 = getelementptr inbounds %struct.cache_set, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %flags366 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %flags366, align 4
  %122 = and i32 %121, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool368.not = icmp eq i32 %122, 0
  br i1 %tobool368.not, label %if.end451, label %lor.lhs.false364.__here421_crit_edge

lor.lhs.false364.__here421_crit_edge:             ; preds = %lor.lhs.false364
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here421

__here421:                                        ; preds = %lor.lhs.false364.__here421_crit_edge, %if.end359.__here421_crit_edge
  %123 = inttoptr i32 %and.i874 to ptr
  %task328.le = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %task328.le to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %task328.le, align 8
  %task_state_change425 = getelementptr inbounds %struct.task_struct, ptr %125, i32 0, i32 212
  %126 = ptrtoint ptr %task_state_change425 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 ptrtoint (ptr blockaddress(@bch_allocator_thread, %__here421) to i32), ptr %task_state_change425, align 4
  %127 = load ptr, ptr %task328.le, align 8
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 0, ptr %127, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  br label %cleanup811

if.end451:                                        ; preds = %lor.lhs.false364
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  %129 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arg, align 8
  %bucket_lock453 = getelementptr inbounds %struct.cache_set, ptr %130, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %bucket_lock453, i32 noundef 0) #8
  br label %__here325.backedge

__here506:                                        ; preds = %land.lhs.true
  %131 = inttoptr i32 %and.i874 to ptr
  %task328.le982 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %task328.le982 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %task328.le982, align 8
  %task_state_change510 = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 212
  %134 = ptrtoint ptr %task_state_change510 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 ptrtoint (ptr blockaddress(@bch_allocator_thread, %__here506) to i32), ptr %task_state_change510, align 4
  %135 = load ptr, ptr %task328.le982, align 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile i32 0, ptr %135, align 128
  %137 = ptrtoint ptr %invalidate_needs_gc to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %invalidate_needs_gc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i875 = icmp eq i32 %138, 0
  br i1 %tobool.not.i875, label %do.end6.i, label %do.body3.i, !prof !47

do.body3.i:                                       ; preds = %__here506
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 267, 0\0A.popsection", ""() #8, !srcloc !79
  unreachable

do.end6.i:                                        ; preds = %__here506
  %139 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %flags.i.i, align 8
  %shr.i.i = lshr i64 %140, 2
  %trunc.i = trunc i64 %shr.i.i to i3
  %141 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.15)
  switch i3 %trunc.i, label %do.end6.i.__here583.preheader_crit_edge [
    i3 0, label %sw.bb.i
    i3 1, label %do.end6.i.while.cond.i.i_crit_edge
    i3 2, label %sw.bb8.i
  ]

do.end6.i.while.cond.i.i_crit_edge:               ; preds = %do.end6.i
  br label %while.cond.i.i

do.end6.i.__here583.preheader_crit_edge:          ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here583.preheader

sw.bb.i:                                          ; preds = %do.end6.i
  %142 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %used.i.i, align 4
  %143 = ptrtoint ptr %buckets.i61.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %buckets.i61.i, align 8
  %145 = ptrtoint ptr %first_bucket.i60.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %first_bucket.i60.i, align 4
  %conv.i.i = zext i16 %146 to i32
  %add.ptr.i.i = getelementptr %struct.bucket, ptr %144, i32 %conv.i.i
  %147 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %2, align 8
  %idx.ext1091.i.i = trunc i64 %148 to i32
  %add.ptr31092.i.i = getelementptr %struct.bucket, ptr %144, i32 %idx.ext1091.i.i
  %cmp1093.i.i = icmp ult ptr %add.ptr.i.i, %add.ptr31092.i.i
  br i1 %cmp1093.i.i, label %sw.bb.i.for.body.i.i_crit_edge, label %sw.bb.i.for.end425.i.i_crit_edge

sw.bb.i.for.end425.i.i_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end425.i.i

sw.bb.i.for.body.i.i_crit_edge:                   ; preds = %sw.bb.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc424.i.i.for.body.i.i_crit_edge, %sw.bb.i.for.body.i.i_crit_edge
  %b.01094.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc424.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %sw.bb.i.for.body.i.i_crit_edge ]
  %149 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arg, align 8
  %gc_mark_valid.i.i.i = getelementptr inbounds %struct.cache_set, ptr %150, i32 0, i32 46
  %151 = ptrtoint ptr %gc_mark_valid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %gc_mark_valid.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.not.i.i.i = icmp eq i32 %152, 0
  br i1 %tobool.not.i.i.i, label %do.body4.i.i.i, label %do.end7.i.i.i, !prof !52

do.body4.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

do.end7.i.i.i:                                    ; preds = %for.body.i.i
  %gc_mark.i.i.i.i = getelementptr inbounds %struct.bucket, ptr %b.01094.i.i, i32 0, i32 4
  %153 = ptrtoint ptr %gc_mark.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %gc_mark.i.i.i.i, align 4
  %155 = and i16 %154, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %switch.not.not.i.i.i = icmp eq i16 %155, 0
  br i1 %switch.not.not.i.i.i, label %land.lhs.true.i.i.i, label %do.end7.i.i.i.for.inc424.i.i_crit_edge

do.end7.i.i.i.for.inc424.i.i_crit_edge:           ; preds = %do.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc424.i.i

land.lhs.true.i.i.i:                              ; preds = %do.end7.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %b.01094.i.i, i32 noundef 4) #8
  %156 = ptrtoint ptr %b.01094.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %b.01094.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool11.not.i.i.i = icmp eq i32 %157, 0
  br i1 %tobool11.not.i.i.i, label %bch_can_invalidate_bucket.exit.i.i, label %land.lhs.true.i.i.i.for.inc424.i.i_crit_edge

land.lhs.true.i.i.i.for.inc424.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc424.i.i

bch_can_invalidate_bucket.exit.i.i:               ; preds = %land.lhs.true.i.i.i
  %gen.i.i.i.i.i = getelementptr inbounds %struct.bucket, ptr %b.01094.i.i, i32 0, i32 2
  %158 = ptrtoint ptr %gen.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %gen.i.i.i.i.i, align 2
  %last_gc.i.i.i.i.i = getelementptr inbounds %struct.bucket, ptr %b.01094.i.i, i32 0, i32 3
  %160 = ptrtoint ptr %last_gc.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %last_gc.i.i.i.i.i, align 1
  %sub.i.i.i.i.i = sub i8 %159, %161
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %sub.i.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i8 %sub.i.i.i.i.i, 96
  br i1 %cmp.i.i.i.i, label %if.end.i.i, label %bch_can_invalidate_bucket.exit.i.i.for.inc424.i.i_crit_edge

bch_can_invalidate_bucket.exit.i.i.for.inc424.i.i_crit_edge: ; preds = %bch_can_invalidate_bucket.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc424.i.i

if.end.i.i:                                       ; preds = %bch_can_invalidate_bucket.exit.i.i
  %162 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %used.i.i, align 4
  %164 = ptrtoint ptr %heap.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %heap.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %165)
  %cmp8.i.i = icmp eq i32 %163, %165
  br i1 %cmp8.i.i, label %if.else.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end.i.i
  %inc.i.i = add i32 %163, 1
  %166 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %inc.i.i, ptr %used.i.i, align 4
  %167 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %168, i32 %163
  %169 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %b.01094.i.i, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool21.not1078.i.i = icmp eq i32 %163, 0
  br i1 %tobool21.not1078.i.i, label %if.then17.i.i.do.body81.i.i_crit_edge, label %if.then17.i.i.while.body.i.i_crit_edge

if.then17.i.i.while.body.i.i_crit_edge:           ; preds = %if.then17.i.i
  br label %while.body.i.i

if.then17.i.i.do.body81.i.i_crit_edge:            ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.then17.i.i.while.body.i.i_crit_edge
  %_i.01079.i.i = phi i32 [ %div1014.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %163, %if.then17.i.i.while.body.i.i_crit_edge ]
  %sub.i.i = add i32 %_i.01079.i.i, -1
  %div1014.i.i = lshr i32 %sub.i.i, 1
  %170 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arg, align 8
  %min_prio22.i.i = getelementptr inbounds %struct.cache_set, ptr %171, i32 0, i32 38
  %172 = ptrtoint ptr %min_prio22.i.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %min_prio22.i.i, align 8
  %conv23.i.i = zext i16 %173 to i32
  %sub24.i.i = sub nsw i32 32768, %conv23.i.i
  %div251015.i.i = lshr i32 %sub24.i.i, 3
  %174 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %data.i.i, align 4
  %arrayidx28.i.i = getelementptr ptr, ptr %175, i32 %_i.01079.i.i
  %176 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx28.i.i, align 4
  %prio.i.i = getelementptr inbounds %struct.bucket, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %prio.i.i, align 4
  %conv29.i.i = zext i16 %179 to i32
  %sub33.i.i = sub nsw i32 %div251015.i.i, %conv23.i.i
  %add.i.i = add nsw i32 %sub33.i.i, %conv29.i.i
  %conv34.i.i = zext i32 %add.i.i to i64
  %gc_mark.i.i.i = getelementptr inbounds %struct.bucket, ptr %177, i32 0, i32 4
  %180 = ptrtoint ptr %gc_mark.i.i.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %gc_mark.i.i.i, align 4
  %182 = lshr i16 %181, 2
  %183 = and i16 %182, 8191
  %and.i.i.i = zext i16 %183 to i64
  %mul.i.i = mul nuw nsw i64 %and.i.i.i, %conv34.i.i
  %arrayidx48.i.i = getelementptr ptr, ptr %175, i32 %div1014.i.i
  %184 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx48.i.i, align 4
  %prio49.i.i = getelementptr inbounds %struct.bucket, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %prio49.i.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %prio49.i.i, align 4
  %conv50.i.i = zext i16 %187 to i32
  %add55.i.i = add nsw i32 %sub33.i.i, %conv50.i.i
  %conv56.i.i = zext i32 %add55.i.i to i64
  %gc_mark.i1026.i.i = getelementptr inbounds %struct.bucket, ptr %185, i32 0, i32 4
  %188 = ptrtoint ptr %gc_mark.i1026.i.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %gc_mark.i1026.i.i, align 4
  %190 = lshr i16 %189, 2
  %191 = and i16 %190, 8191
  %and.i1027.i.i = zext i16 %191 to i64
  %mul61.i.i = mul nuw nsw i64 %and.i1027.i.i, %conv56.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i.i, i64 %mul61.i.i)
  %cmp62.i.i = icmp ult i64 %mul.i.i, %mul61.i.i
  br i1 %cmp62.i.i, label %while.body.i.i.do.body81.i.i_crit_edge, label %cleanup.i.i

while.body.i.i.do.body81.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81.i.i

cleanup.i.i:                                      ; preds = %while.body.i.i
  %192 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %185, ptr %arrayidx28.i.i, align 4
  %193 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %data.i.i, align 4
  %arrayidx78.i.i = getelementptr ptr, ptr %194, i32 %div1014.i.i
  %195 = ptrtoint ptr %arrayidx78.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %177, ptr %arrayidx78.i.i, align 4
  %tobool21.not.i.i = icmp ult i32 %sub.i.i, 2
  br i1 %tobool21.not.i.i, label %cleanup.i.i.do.body81.i.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

cleanup.i.i.do.body81.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body81.i.i

do.body81.i.i:                                    ; preds = %cleanup.i.i.do.body81.i.i_crit_edge, %while.body.i.i.do.body81.i.i_crit_edge, %if.then17.i.i.do.body81.i.i_crit_edge
  %_i.0.lcssa.i.i = phi i32 [ 0, %if.then17.i.i.do.body81.i.i_crit_edge ], [ %_i.01079.i.i, %while.body.i.i.do.body81.i.i_crit_edge ], [ %div1014.i.i, %cleanup.i.i.do.body81.i.i_crit_edge ]
  %mul841081.i.i = shl i32 %_i.0.lcssa.i.i, 1
  %add851082.i.i = or i32 %mul841081.i.i, 1
  %196 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add851082.i.i, i32 %197)
  %cmp881083.i.i = icmp ult i32 %add851082.i.i, %197
  br i1 %cmp881083.i.i, label %do.body81.i.i.for.body90.i.i_crit_edge, label %do.body81.i.i.for.inc424.i.i_crit_edge

do.body81.i.i.for.inc424.i.i_crit_edge:           ; preds = %do.body81.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc424.i.i

do.body81.i.i.for.body90.i.i_crit_edge:           ; preds = %do.body81.i.i
  br label %for.body90.i.i

for.body90.i.i:                                   ; preds = %do.body201.i.i.for.body90.i.i_crit_edge, %do.body81.i.i.for.body90.i.i_crit_edge
  %198 = phi i32 [ %248, %do.body201.i.i.for.body90.i.i_crit_edge ], [ %197, %do.body81.i.i.for.body90.i.i_crit_edge ]
  %add851086.i.i = phi i32 [ %add85.i.i, %do.body201.i.i.for.body90.i.i_crit_edge ], [ %add851082.i.i, %do.body81.i.i.for.body90.i.i_crit_edge ]
  %mul841085.i.i = phi i32 [ %mul84.i.i, %do.body201.i.i.for.body90.i.i_crit_edge ], [ %mul841081.i.i, %do.body81.i.i.for.body90.i.i_crit_edge ]
  %_j.01084.i.i = phi i32 [ %_r82.0.i.i, %do.body201.i.i.for.body90.i.i_crit_edge ], [ %_i.0.lcssa.i.i, %do.body81.i.i.for.body90.i.i_crit_edge ]
  %add93.i.i = add i32 %mul841085.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add93.i.i, i32 %198)
  %cmp96.i.i = icmp ult i32 %add93.i.i, %198
  br i1 %cmp96.i.i, label %land.lhs.true.i.i, label %for.body90.i.i.if.end150.i.i_crit_edge

for.body90.i.i.if.end150.i.i_crit_edge:           ; preds = %for.body90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150.i.i

land.lhs.true.i.i:                                ; preds = %for.body90.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arg, align 8
  %min_prio100.i.i = getelementptr inbounds %struct.cache_set, ptr %200, i32 0, i32 38
  %201 = ptrtoint ptr %min_prio100.i.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %min_prio100.i.i, align 8
  %conv101.i.i = zext i16 %202 to i32
  %sub102.i.i = sub nsw i32 32768, %conv101.i.i
  %div1031012.i.i = lshr i32 %sub102.i.i, 3
  %203 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %data.i.i, align 4
  %arrayidx107.i.i = getelementptr ptr, ptr %204, i32 %add851086.i.i
  %205 = ptrtoint ptr %arrayidx107.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx107.i.i, align 4
  %prio108.i.i = getelementptr inbounds %struct.bucket, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %prio108.i.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %prio108.i.i, align 4
  %conv109.i.i = zext i16 %208 to i32
  %sub113.i.i = sub nsw i32 %div1031012.i.i, %conv101.i.i
  %add114.i.i = add nsw i32 %sub113.i.i, %conv109.i.i
  %conv115.i.i = zext i32 %add114.i.i to i64
  %gc_mark.i1028.i.i = getelementptr inbounds %struct.bucket, ptr %206, i32 0, i32 4
  %209 = ptrtoint ptr %gc_mark.i1028.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %gc_mark.i1028.i.i, align 4
  %211 = lshr i16 %210, 2
  %212 = and i16 %211, 8191
  %and.i1029.i.i = zext i16 %212 to i64
  %mul120.i.i = mul nuw nsw i64 %and.i1029.i.i, %conv115.i.i
  %arrayidx131.i.i = getelementptr ptr, ptr %204, i32 %add93.i.i
  %213 = ptrtoint ptr %arrayidx131.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx131.i.i, align 4
  %prio132.i.i = getelementptr inbounds %struct.bucket, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %prio132.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %prio132.i.i, align 4
  %conv133.i.i = zext i16 %216 to i32
  %add138.i.i = add nsw i32 %sub113.i.i, %conv133.i.i
  %conv139.i.i = zext i32 %add138.i.i to i64
  %gc_mark.i1030.i.i = getelementptr inbounds %struct.bucket, ptr %214, i32 0, i32 4
  %217 = ptrtoint ptr %gc_mark.i1030.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %gc_mark.i1030.i.i, align 4
  %219 = lshr i16 %218, 2
  %220 = and i16 %219, 8191
  %and.i1031.i.i = zext i16 %220 to i64
  %mul145.i.i = mul nuw nsw i64 %and.i1031.i.i, %conv139.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul120.i.i, i64 %mul145.i.i)
  %cmp146.i.i = icmp ult i64 %mul120.i.i, %mul145.i.i
  %spec.select.i.i = select i1 %cmp146.i.i, i32 %add93.i.i, i32 %add851086.i.i
  br label %if.end150.i.i

if.end150.i.i:                                    ; preds = %land.lhs.true.i.i, %for.body90.i.i.if.end150.i.i_crit_edge
  %_r82.0.i.i = phi i32 [ %add851086.i.i, %for.body90.i.i.if.end150.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %221 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arg, align 8
  %min_prio153.i.i = getelementptr inbounds %struct.cache_set, ptr %222, i32 0, i32 38
  %223 = ptrtoint ptr %min_prio153.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %min_prio153.i.i, align 8
  %conv154.i.i = zext i16 %224 to i32
  %sub155.i.i = sub nsw i32 32768, %conv154.i.i
  %div1561010.i.i = lshr i32 %sub155.i.i, 3
  %225 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data.i.i, align 4
  %arrayidx160.i.i = getelementptr ptr, ptr %226, i32 %_r82.0.i.i
  %227 = ptrtoint ptr %arrayidx160.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx160.i.i, align 4
  %prio161.i.i = getelementptr inbounds %struct.bucket, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %prio161.i.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %prio161.i.i, align 4
  %conv162.i.i = zext i16 %230 to i32
  %sub166.i.i = sub nsw i32 %div1561010.i.i, %conv154.i.i
  %add167.i.i = add nsw i32 %sub166.i.i, %conv162.i.i
  %conv168.i.i = zext i32 %add167.i.i to i64
  %gc_mark.i1032.i.i = getelementptr inbounds %struct.bucket, ptr %228, i32 0, i32 4
  %231 = ptrtoint ptr %gc_mark.i1032.i.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %gc_mark.i1032.i.i, align 4
  %233 = lshr i16 %232, 2
  %234 = and i16 %233, 8191
  %and.i1033.i.i = zext i16 %234 to i64
  %mul173.i.i = mul nuw nsw i64 %and.i1033.i.i, %conv168.i.i
  %arrayidx183.i.i = getelementptr ptr, ptr %226, i32 %_j.01084.i.i
  %235 = ptrtoint ptr %arrayidx183.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %arrayidx183.i.i, align 4
  %prio184.i.i = getelementptr inbounds %struct.bucket, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %prio184.i.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %prio184.i.i, align 4
  %conv185.i.i = zext i16 %238 to i32
  %add190.i.i = add nsw i32 %sub166.i.i, %conv185.i.i
  %conv191.i.i = zext i32 %add190.i.i to i64
  %gc_mark.i1034.i.i = getelementptr inbounds %struct.bucket, ptr %236, i32 0, i32 4
  %239 = ptrtoint ptr %gc_mark.i1034.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %gc_mark.i1034.i.i, align 4
  %241 = lshr i16 %240, 2
  %242 = and i16 %241, 8191
  %and.i1035.i.i = zext i16 %242 to i64
  %mul196.i.i = mul nuw nsw i64 %and.i1035.i.i, %conv191.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul173.i.i, i64 %mul196.i.i)
  %cmp197.i.i = icmp ult i64 %mul173.i.i, %mul196.i.i
  br i1 %cmp197.i.i, label %if.end150.i.i.for.inc424.i.i_crit_edge, label %do.body201.i.i

if.end150.i.i.for.inc424.i.i_crit_edge:           ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc424.i.i

do.body201.i.i:                                   ; preds = %if.end150.i.i
  %243 = ptrtoint ptr %arrayidx160.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %236, ptr %arrayidx160.i.i, align 4
  %244 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %data.i.i, align 4
  %arrayidx214.i.i = getelementptr ptr, ptr %245, i32 %_j.01084.i.i
  %246 = ptrtoint ptr %arrayidx214.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %228, ptr %arrayidx214.i.i, align 4
  %mul84.i.i = shl i32 %_r82.0.i.i, 1
  %add85.i.i = or i32 %mul84.i.i, 1
  %247 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %used.i.i, align 4
  %cmp88.i.i = icmp ult i32 %add85.i.i, %248
  br i1 %cmp88.i.i, label %do.body201.i.i.for.body90.i.i_crit_edge, label %do.body201.i.i.for.inc424.i.i_crit_edge

do.body201.i.i.for.inc424.i.i_crit_edge:          ; preds = %do.body201.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc424.i.i

do.body201.i.i.for.body90.i.i_crit_edge:          ; preds = %do.body201.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body90.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %249 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %arg, align 8
  %min_prio226.i.i = getelementptr inbounds %struct.cache_set, ptr %250, i32 0, i32 38
  %251 = ptrtoint ptr %min_prio226.i.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %min_prio226.i.i, align 8
  %conv227.i.i = zext i16 %252 to i32
  %sub228.i.i = sub nsw i32 32768, %conv227.i.i
  %div2291017.i.i = lshr i32 %sub228.i.i, 3
  %prio231.i.i = getelementptr inbounds %struct.bucket, ptr %b.01094.i.i, i32 0, i32 1
  %253 = ptrtoint ptr %prio231.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %prio231.i.i, align 4
  %conv232.i.i = zext i16 %254 to i32
  %sub236.i.i = sub nsw i32 %conv232.i.i, %conv227.i.i
  %add237.i.i = add nsw i32 %sub236.i.i, %div2291017.i.i
  %conv238.i.i = zext i32 %add237.i.i to i64
  %255 = ptrtoint ptr %gc_mark.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %gc_mark.i.i.i.i, align 4
  %257 = lshr i16 %256, 2
  %258 = and i16 %257, 8191
  %and.i1037.i.i = zext i16 %258 to i64
  %mul240.i.i = mul nuw nsw i64 %and.i1037.i.i, %conv238.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool250.not.i.i = icmp eq i32 %163, 0
  br i1 %tobool250.not.i.i, label %if.else.i.i.cond.end270.i.i_crit_edge, label %cond.true265.i.i

if.else.i.i.cond.end270.i.i_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end270.i.i

cond.true265.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %259 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %data.i.i, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %prio254.i.i = getelementptr inbounds %struct.bucket, ptr %262, i32 0, i32 1
  br label %cond.end270.i.i

cond.end270.i.i:                                  ; preds = %cond.true265.i.i, %if.else.i.i.cond.end270.i.i_crit_edge
  %conv255.pn.in.in.i.i = phi ptr [ %prio254.i.i, %cond.true265.i.i ], [ inttoptr (i32 4 to ptr), %if.else.i.i.cond.end270.i.i_crit_edge ]
  %cond271.i.i = phi ptr [ %262, %cond.true265.i.i ], [ null, %if.else.i.i.cond.end270.i.i_crit_edge ]
  %263 = ptrtoint ptr %conv255.pn.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %conv255.pn.in.i.i = load i16, ptr %conv255.pn.in.in.i.i, align 4
  %conv255.pn.i.i = zext i16 %conv255.pn.in.i.i to i32
  %sub259.pn.i.i = sub nsw i32 %div2291017.i.i, %conv227.i.i
  %conv2611075.in.i.i = add nsw i32 %sub259.pn.i.i, %conv255.pn.i.i
  %conv2611075.i.i = zext i32 %conv2611075.in.i.i to i64
  %gc_mark.i1038.i.i = getelementptr inbounds %struct.bucket, ptr %cond271.i.i, i32 0, i32 4
  %264 = ptrtoint ptr %gc_mark.i1038.i.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %gc_mark.i1038.i.i, align 4
  %266 = lshr i16 %265, 2
  %267 = and i16 %266, 8191
  %and.i1039.i.i = zext i16 %267 to i64
  %mul273.i.i = mul nuw nsw i64 %and.i1039.i.i, %conv2611075.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul240.i.i, i64 %mul273.i.i)
  %cmp274.i.i = icmp ult i64 %mul240.i.i, %mul273.i.i
  br i1 %cmp274.i.i, label %if.then276.i.i, label %cond.end270.i.i.for.inc424.i.i_crit_edge

cond.end270.i.i.for.inc424.i.i_crit_edge:         ; preds = %cond.end270.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc424.i.i

if.then276.i.i:                                   ; preds = %cond.end270.i.i
  %268 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %data.i.i, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %b.01094.i.i, ptr %269, align 4
  %271 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %272)
  %cmp2881087.i.i = icmp ugt i32 %272, 1
  br i1 %cmp2881087.i.i, label %if.then276.i.i.for.body290.i.i_crit_edge, label %if.then276.i.i.for.inc424.i.i_crit_edge

if.then276.i.i.for.inc424.i.i_crit_edge:          ; preds = %if.then276.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc424.i.i

if.then276.i.i.for.body290.i.i_crit_edge:         ; preds = %if.then276.i.i
  br label %for.body290.i.i

for.body290.i.i:                                  ; preds = %do.body402.i.i.for.body290.i.i_crit_edge, %if.then276.i.i.for.body290.i.i_crit_edge
  %273 = phi i32 [ %323, %do.body402.i.i.for.body290.i.i_crit_edge ], [ %272, %if.then276.i.i.for.body290.i.i_crit_edge ]
  %add2851090.i.i = phi i32 [ %add285.i.i, %do.body402.i.i.for.body290.i.i_crit_edge ], [ 1, %if.then276.i.i.for.body290.i.i_crit_edge ]
  %mul2841089.i.i = phi i32 [ %mul284.i.i, %do.body402.i.i.for.body290.i.i_crit_edge ], [ 0, %if.then276.i.i.for.body290.i.i_crit_edge ]
  %_j282.01088.i.i = phi i32 [ %_r281.0.i.i, %do.body402.i.i.for.body290.i.i_crit_edge ], [ 0, %if.then276.i.i.for.body290.i.i_crit_edge ]
  %add293.i.i = add i32 %mul2841089.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add293.i.i, i32 %273)
  %cmp296.i.i = icmp ult i32 %add293.i.i, %273
  br i1 %cmp296.i.i, label %land.lhs.true298.i.i, label %for.body290.i.i.if.end351.i.i_crit_edge

for.body290.i.i.if.end351.i.i_crit_edge:          ; preds = %for.body290.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end351.i.i

land.lhs.true298.i.i:                             ; preds = %for.body290.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %274 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arg, align 8
  %min_prio301.i.i = getelementptr inbounds %struct.cache_set, ptr %275, i32 0, i32 38
  %276 = ptrtoint ptr %min_prio301.i.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %min_prio301.i.i, align 8
  %conv302.i.i = zext i16 %277 to i32
  %sub303.i.i = sub nsw i32 32768, %conv302.i.i
  %div3041021.i.i = lshr i32 %sub303.i.i, 3
  %278 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %data.i.i, align 4
  %arrayidx308.i.i = getelementptr ptr, ptr %279, i32 %add2851090.i.i
  %280 = ptrtoint ptr %arrayidx308.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %arrayidx308.i.i, align 4
  %prio309.i.i = getelementptr inbounds %struct.bucket, ptr %281, i32 0, i32 1
  %282 = ptrtoint ptr %prio309.i.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %prio309.i.i, align 4
  %conv310.i.i = zext i16 %283 to i32
  %sub314.i.i = sub nsw i32 %div3041021.i.i, %conv302.i.i
  %add315.i.i = add nsw i32 %sub314.i.i, %conv310.i.i
  %conv316.i.i = zext i32 %add315.i.i to i64
  %gc_mark.i1040.i.i = getelementptr inbounds %struct.bucket, ptr %281, i32 0, i32 4
  %284 = ptrtoint ptr %gc_mark.i1040.i.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %gc_mark.i1040.i.i, align 4
  %286 = lshr i16 %285, 2
  %287 = and i16 %286, 8191
  %and.i1041.i.i = zext i16 %287 to i64
  %mul321.i.i = mul nuw nsw i64 %and.i1041.i.i, %conv316.i.i
  %arrayidx332.i.i = getelementptr ptr, ptr %279, i32 %add293.i.i
  %288 = ptrtoint ptr %arrayidx332.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx332.i.i, align 4
  %prio333.i.i = getelementptr inbounds %struct.bucket, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %prio333.i.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %prio333.i.i, align 4
  %conv334.i.i = zext i16 %291 to i32
  %add339.i.i = add nsw i32 %sub314.i.i, %conv334.i.i
  %conv340.i.i = zext i32 %add339.i.i to i64
  %gc_mark.i1042.i.i = getelementptr inbounds %struct.bucket, ptr %289, i32 0, i32 4
  %292 = ptrtoint ptr %gc_mark.i1042.i.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %gc_mark.i1042.i.i, align 4
  %294 = lshr i16 %293, 2
  %295 = and i16 %294, 8191
  %and.i1043.i.i = zext i16 %295 to i64
  %mul346.i.i = mul nuw nsw i64 %and.i1043.i.i, %conv340.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul321.i.i, i64 %mul346.i.i)
  %cmp347.i.i = icmp ult i64 %mul321.i.i, %mul346.i.i
  %spec.select1023.i.i = select i1 %cmp347.i.i, i32 %add293.i.i, i32 %add2851090.i.i
  br label %if.end351.i.i

if.end351.i.i:                                    ; preds = %land.lhs.true298.i.i, %for.body290.i.i.if.end351.i.i_crit_edge
  %_r281.0.i.i = phi i32 [ %add2851090.i.i, %for.body290.i.i.if.end351.i.i_crit_edge ], [ %spec.select1023.i.i, %land.lhs.true298.i.i ]
  %296 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %arg, align 8
  %min_prio354.i.i = getelementptr inbounds %struct.cache_set, ptr %297, i32 0, i32 38
  %298 = ptrtoint ptr %min_prio354.i.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %min_prio354.i.i, align 8
  %conv355.i.i = zext i16 %299 to i32
  %sub356.i.i = sub nsw i32 32768, %conv355.i.i
  %div3571019.i.i = lshr i32 %sub356.i.i, 3
  %300 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %data.i.i, align 4
  %arrayidx361.i.i = getelementptr ptr, ptr %301, i32 %_r281.0.i.i
  %302 = ptrtoint ptr %arrayidx361.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx361.i.i, align 4
  %prio362.i.i = getelementptr inbounds %struct.bucket, ptr %303, i32 0, i32 1
  %304 = ptrtoint ptr %prio362.i.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %prio362.i.i, align 4
  %conv363.i.i = zext i16 %305 to i32
  %sub367.i.i = sub nsw i32 %div3571019.i.i, %conv355.i.i
  %add368.i.i = add nsw i32 %sub367.i.i, %conv363.i.i
  %conv369.i.i = zext i32 %add368.i.i to i64
  %gc_mark.i1044.i.i = getelementptr inbounds %struct.bucket, ptr %303, i32 0, i32 4
  %306 = ptrtoint ptr %gc_mark.i1044.i.i to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %gc_mark.i1044.i.i, align 4
  %308 = lshr i16 %307, 2
  %309 = and i16 %308, 8191
  %and.i1045.i.i = zext i16 %309 to i64
  %mul374.i.i = mul nuw nsw i64 %and.i1045.i.i, %conv369.i.i
  %arrayidx384.i.i = getelementptr ptr, ptr %301, i32 %_j282.01088.i.i
  %310 = ptrtoint ptr %arrayidx384.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %arrayidx384.i.i, align 4
  %prio385.i.i = getelementptr inbounds %struct.bucket, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %prio385.i.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %prio385.i.i, align 4
  %conv386.i.i = zext i16 %313 to i32
  %add391.i.i = add nsw i32 %sub367.i.i, %conv386.i.i
  %conv392.i.i = zext i32 %add391.i.i to i64
  %gc_mark.i1046.i.i = getelementptr inbounds %struct.bucket, ptr %311, i32 0, i32 4
  %314 = ptrtoint ptr %gc_mark.i1046.i.i to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %gc_mark.i1046.i.i, align 4
  %316 = lshr i16 %315, 2
  %317 = and i16 %316, 8191
  %and.i1047.i.i = zext i16 %317 to i64
  %mul397.i.i = mul nuw nsw i64 %and.i1047.i.i, %conv392.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul374.i.i, i64 %mul397.i.i)
  %cmp398.i.i = icmp ult i64 %mul374.i.i, %mul397.i.i
  br i1 %cmp398.i.i, label %if.end351.i.i.for.inc424.i.i_crit_edge, label %do.body402.i.i

if.end351.i.i.for.inc424.i.i_crit_edge:           ; preds = %if.end351.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc424.i.i

do.body402.i.i:                                   ; preds = %if.end351.i.i
  %318 = ptrtoint ptr %arrayidx361.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %311, ptr %arrayidx361.i.i, align 4
  %319 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %data.i.i, align 4
  %arrayidx415.i.i = getelementptr ptr, ptr %320, i32 %_j282.01088.i.i
  %321 = ptrtoint ptr %arrayidx415.i.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %303, ptr %arrayidx415.i.i, align 4
  %mul284.i.i = shl i32 %_r281.0.i.i, 1
  %add285.i.i = or i32 %mul284.i.i, 1
  %322 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %used.i.i, align 4
  %cmp288.i.i = icmp ult i32 %add285.i.i, %323
  br i1 %cmp288.i.i, label %do.body402.i.i.for.body290.i.i_crit_edge, label %do.body402.i.i.for.inc424.i.i_crit_edge

do.body402.i.i.for.inc424.i.i_crit_edge:          ; preds = %do.body402.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc424.i.i

do.body402.i.i.for.body290.i.i_crit_edge:         ; preds = %do.body402.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body290.i.i

for.inc424.i.i:                                   ; preds = %do.body402.i.i.for.inc424.i.i_crit_edge, %if.end351.i.i.for.inc424.i.i_crit_edge, %if.then276.i.i.for.inc424.i.i_crit_edge, %cond.end270.i.i.for.inc424.i.i_crit_edge, %do.body201.i.i.for.inc424.i.i_crit_edge, %if.end150.i.i.for.inc424.i.i_crit_edge, %do.body81.i.i.for.inc424.i.i_crit_edge, %bch_can_invalidate_bucket.exit.i.i.for.inc424.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc424.i.i_crit_edge, %do.end7.i.i.i.for.inc424.i.i_crit_edge
  %incdec.ptr.i.i = getelementptr %struct.bucket, ptr %b.01094.i.i, i32 1
  %324 = ptrtoint ptr %buckets.i61.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %buckets.i61.i, align 8
  %326 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %2, align 8
  %idx.ext.i.i = trunc i64 %327 to i32
  %add.ptr3.i.i = getelementptr %struct.bucket, ptr %325, i32 %idx.ext.i.i
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr3.i.i
  br i1 %cmp.i.i, label %for.inc424.i.i.for.body.i.i_crit_edge, label %for.inc424.i.i.for.end425.i.i_crit_edge

for.inc424.i.i.for.end425.i.i_crit_edge:          ; preds = %for.inc424.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end425.i.i

for.inc424.i.i.for.body.i.i_crit_edge:            ; preds = %for.inc424.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end425.i.i:                                   ; preds = %for.inc424.i.i.for.end425.i.i_crit_edge, %sw.bb.i.for.end425.i.i_crit_edge
  %328 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %329)
  %cmp4311103.not.i.i = icmp ult i32 %329, 2
  br i1 %cmp4311103.not.i.i, label %for.end425.i.i.while.cond578.preheader.i.i_crit_edge, label %for.cond437.preheader.lr.ph.i.i

for.end425.i.i.while.cond578.preheader.i.i_crit_edge: ; preds = %for.end425.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond578.preheader.i.i

for.cond437.preheader.lr.ph.i.i:                  ; preds = %for.end425.i.i
  %div4281001.i.i = lshr i32 %329, 1
  br label %for.cond437.preheader.i.i

for.cond437.preheader.i.i:                        ; preds = %for.end573.i.i.for.cond437.preheader.i.i_crit_edge, %for.cond437.preheader.lr.ph.i.i
  %i.01104.in.i.i = phi i32 [ %div4281001.i.i, %for.cond437.preheader.lr.ph.i.i ], [ %i.01104.i.i, %for.end573.i.i.for.cond437.preheader.i.i_crit_edge ]
  %i.01104.i.i = add nsw i32 %i.01104.in.i.i, -1
  %mul4381096.i.i = shl nuw i32 %i.01104.i.i, 1
  %add4391097.i.i = or i32 %mul4381096.i.i, 1
  %330 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4391097.i.i, i32 %331)
  %cmp4421098.i.i = icmp ult i32 %add4391097.i.i, %331
  br i1 %cmp4421098.i.i, label %for.cond437.preheader.i.i.for.body444.i.i_crit_edge, label %for.cond437.preheader.i.i.for.end573.i.i_crit_edge

for.cond437.preheader.i.i.for.end573.i.i_crit_edge: ; preds = %for.cond437.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end573.i.i

for.cond437.preheader.i.i.for.body444.i.i_crit_edge: ; preds = %for.cond437.preheader.i.i
  br label %for.body444.i.i

while.cond578.preheader.i.i:                      ; preds = %for.end573.i.i.while.cond578.preheader.i.i_crit_edge, %for.end425.i.i.while.cond578.preheader.i.i_crit_edge
  %332 = ptrtoint ptr %size.i57.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %size.i57.i, align 8
  %334 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %back, align 4
  %336 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %free_inc, align 8
  %sub5821109.i.i = sub i32 %335, %337
  %338 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %mask, align 4
  %and1110.i.i = and i32 %sub5821109.i.i, %339
  call void @__sanitizer_cov_trace_cmp4(i32 %333, i32 %and1110.i.i)
  %tobool585.not1111.i.i = icmp eq i32 %333, %and1110.i.i
  br i1 %tobool585.not1111.i.i, label %while.cond578.preheader.i.i.__here583.preheader_crit_edge, label %while.cond578.preheader.i.i.while.body588.i.i_crit_edge

while.cond578.preheader.i.i.while.body588.i.i_crit_edge: ; preds = %while.cond578.preheader.i.i
  br label %while.body588.i.i

while.cond578.preheader.i.i.__here583.preheader_crit_edge: ; preds = %while.cond578.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here583.preheader

for.body444.i.i:                                  ; preds = %do.body556.i.i.for.body444.i.i_crit_edge, %for.cond437.preheader.i.i.for.body444.i.i_crit_edge
  %340 = phi i32 [ %390, %do.body556.i.i.for.body444.i.i_crit_edge ], [ %331, %for.cond437.preheader.i.i.for.body444.i.i_crit_edge ]
  %add4391101.i.i = phi i32 [ %add439.i.i, %do.body556.i.i.for.body444.i.i_crit_edge ], [ %add4391097.i.i, %for.cond437.preheader.i.i.for.body444.i.i_crit_edge ]
  %mul4381100.i.i = phi i32 [ %mul438.i.i, %do.body556.i.i.for.body444.i.i_crit_edge ], [ %mul4381096.i.i, %for.cond437.preheader.i.i.for.body444.i.i_crit_edge ]
  %_j436.01099.i.i = phi i32 [ %_r435.0.i.i, %do.body556.i.i.for.body444.i.i_crit_edge ], [ %i.01104.i.i, %for.cond437.preheader.i.i.for.body444.i.i_crit_edge ]
  %add447.i.i = add i32 %mul4381100.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add447.i.i, i32 %340)
  %cmp450.i.i = icmp ult i32 %add447.i.i, %340
  br i1 %cmp450.i.i, label %land.lhs.true452.i.i, label %for.body444.i.i.if.end505.i.i_crit_edge

for.body444.i.i.if.end505.i.i_crit_edge:          ; preds = %for.body444.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end505.i.i

land.lhs.true452.i.i:                             ; preds = %for.body444.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %341 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %arg, align 8
  %min_prio455.i.i = getelementptr inbounds %struct.cache_set, ptr %342, i32 0, i32 38
  %343 = ptrtoint ptr %min_prio455.i.i to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %min_prio455.i.i, align 8
  %conv456.i.i = zext i16 %344 to i32
  %sub457.i.i = sub nsw i32 32768, %conv456.i.i
  %div4581008.i.i = lshr i32 %sub457.i.i, 3
  %345 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %data.i.i, align 4
  %arrayidx462.i.i = getelementptr ptr, ptr %346, i32 %add4391101.i.i
  %347 = ptrtoint ptr %arrayidx462.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %arrayidx462.i.i, align 4
  %prio463.i.i = getelementptr inbounds %struct.bucket, ptr %348, i32 0, i32 1
  %349 = ptrtoint ptr %prio463.i.i to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %prio463.i.i, align 4
  %conv464.i.i = zext i16 %350 to i32
  %sub468.i.i = sub nsw i32 %div4581008.i.i, %conv456.i.i
  %add469.i.i = add nsw i32 %sub468.i.i, %conv464.i.i
  %conv470.i.i = zext i32 %add469.i.i to i64
  %gc_mark.i1048.i.i = getelementptr inbounds %struct.bucket, ptr %348, i32 0, i32 4
  %351 = ptrtoint ptr %gc_mark.i1048.i.i to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %gc_mark.i1048.i.i, align 4
  %353 = lshr i16 %352, 2
  %354 = and i16 %353, 8191
  %and.i1049.i.i = zext i16 %354 to i64
  %mul475.i.i = mul nuw nsw i64 %and.i1049.i.i, %conv470.i.i
  %arrayidx486.i.i = getelementptr ptr, ptr %346, i32 %add447.i.i
  %355 = ptrtoint ptr %arrayidx486.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %arrayidx486.i.i, align 4
  %prio487.i.i = getelementptr inbounds %struct.bucket, ptr %356, i32 0, i32 1
  %357 = ptrtoint ptr %prio487.i.i to i32
  call void @__asan_load2_noabort(i32 %357)
  %358 = load i16, ptr %prio487.i.i, align 4
  %conv488.i.i = zext i16 %358 to i32
  %add493.i.i = add nsw i32 %sub468.i.i, %conv488.i.i
  %conv494.i.i = zext i32 %add493.i.i to i64
  %gc_mark.i1050.i.i = getelementptr inbounds %struct.bucket, ptr %356, i32 0, i32 4
  %359 = ptrtoint ptr %gc_mark.i1050.i.i to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %gc_mark.i1050.i.i, align 4
  %361 = lshr i16 %360, 2
  %362 = and i16 %361, 8191
  %and.i1051.i.i = zext i16 %362 to i64
  %mul500.i.i = mul nuw nsw i64 %and.i1051.i.i, %conv494.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul475.i.i, i64 %mul500.i.i)
  %cmp501.i.i = icmp ugt i64 %mul475.i.i, %mul500.i.i
  %spec.select1024.i.i = select i1 %cmp501.i.i, i32 %add447.i.i, i32 %add4391101.i.i
  br label %if.end505.i.i

if.end505.i.i:                                    ; preds = %land.lhs.true452.i.i, %for.body444.i.i.if.end505.i.i_crit_edge
  %_r435.0.i.i = phi i32 [ %add4391101.i.i, %for.body444.i.i.if.end505.i.i_crit_edge ], [ %spec.select1024.i.i, %land.lhs.true452.i.i ]
  %363 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %arg, align 8
  %min_prio508.i.i = getelementptr inbounds %struct.cache_set, ptr %364, i32 0, i32 38
  %365 = ptrtoint ptr %min_prio508.i.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %min_prio508.i.i, align 8
  %conv509.i.i = zext i16 %366 to i32
  %sub510.i.i = sub nsw i32 32768, %conv509.i.i
  %div5111006.i.i = lshr i32 %sub510.i.i, 3
  %367 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %data.i.i, align 4
  %arrayidx515.i.i = getelementptr ptr, ptr %368, i32 %_r435.0.i.i
  %369 = ptrtoint ptr %arrayidx515.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %arrayidx515.i.i, align 4
  %prio516.i.i = getelementptr inbounds %struct.bucket, ptr %370, i32 0, i32 1
  %371 = ptrtoint ptr %prio516.i.i to i32
  call void @__asan_load2_noabort(i32 %371)
  %372 = load i16, ptr %prio516.i.i, align 4
  %conv517.i.i = zext i16 %372 to i32
  %sub521.i.i = sub nsw i32 %div5111006.i.i, %conv509.i.i
  %add522.i.i = add nsw i32 %sub521.i.i, %conv517.i.i
  %conv523.i.i = zext i32 %add522.i.i to i64
  %gc_mark.i1052.i.i = getelementptr inbounds %struct.bucket, ptr %370, i32 0, i32 4
  %373 = ptrtoint ptr %gc_mark.i1052.i.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %gc_mark.i1052.i.i, align 4
  %375 = lshr i16 %374, 2
  %376 = and i16 %375, 8191
  %and.i1053.i.i = zext i16 %376 to i64
  %mul528.i.i = mul nuw nsw i64 %and.i1053.i.i, %conv523.i.i
  %arrayidx538.i.i = getelementptr ptr, ptr %368, i32 %_j436.01099.i.i
  %377 = ptrtoint ptr %arrayidx538.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %arrayidx538.i.i, align 4
  %prio539.i.i = getelementptr inbounds %struct.bucket, ptr %378, i32 0, i32 1
  %379 = ptrtoint ptr %prio539.i.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %prio539.i.i, align 4
  %conv540.i.i = zext i16 %380 to i32
  %add545.i.i = add nsw i32 %sub521.i.i, %conv540.i.i
  %conv546.i.i = zext i32 %add545.i.i to i64
  %gc_mark.i1054.i.i = getelementptr inbounds %struct.bucket, ptr %378, i32 0, i32 4
  %381 = ptrtoint ptr %gc_mark.i1054.i.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %gc_mark.i1054.i.i, align 4
  %383 = lshr i16 %382, 2
  %384 = and i16 %383, 8191
  %and.i1055.i.i = zext i16 %384 to i64
  %mul551.i.i = mul nuw nsw i64 %and.i1055.i.i, %conv546.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul528.i.i, i64 %mul551.i.i)
  %cmp552.i.i = icmp ugt i64 %mul528.i.i, %mul551.i.i
  br i1 %cmp552.i.i, label %if.end505.i.i.for.end573.i.i_crit_edge, label %do.body556.i.i

if.end505.i.i.for.end573.i.i_crit_edge:           ; preds = %if.end505.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end573.i.i

do.body556.i.i:                                   ; preds = %if.end505.i.i
  %385 = ptrtoint ptr %arrayidx515.i.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %378, ptr %arrayidx515.i.i, align 4
  %386 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %data.i.i, align 4
  %arrayidx569.i.i = getelementptr ptr, ptr %387, i32 %_j436.01099.i.i
  %388 = ptrtoint ptr %arrayidx569.i.i to i32
  call void @__asan_store4_noabort(i32 %388)
  store ptr %370, ptr %arrayidx569.i.i, align 4
  %mul438.i.i = shl i32 %_r435.0.i.i, 1
  %add439.i.i = or i32 %mul438.i.i, 1
  %389 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %used.i.i, align 4
  %cmp442.i.i = icmp ult i32 %add439.i.i, %390
  br i1 %cmp442.i.i, label %do.body556.i.i.for.body444.i.i_crit_edge, label %do.body556.i.i.for.end573.i.i_crit_edge

do.body556.i.i.for.end573.i.i_crit_edge:          ; preds = %do.body556.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end573.i.i

do.body556.i.i.for.body444.i.i_crit_edge:         ; preds = %do.body556.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body444.i.i

for.end573.i.i:                                   ; preds = %do.body556.i.i.for.end573.i.i_crit_edge, %if.end505.i.i.for.end573.i.i_crit_edge, %for.cond437.preheader.i.i.for.end573.i.i_crit_edge
  %cmp431.i.i = icmp sgt i32 %i.01104.in.i.i, 1
  br i1 %cmp431.i.i, label %for.end573.i.i.for.cond437.preheader.i.i_crit_edge, label %for.end573.i.i.while.cond578.preheader.i.i_crit_edge

for.end573.i.i.while.cond578.preheader.i.i_crit_edge: ; preds = %for.end573.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond578.preheader.i.i

for.end573.i.i.for.cond437.preheader.i.i_crit_edge: ; preds = %for.end573.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond437.preheader.i.i

while.body588.i.i:                                ; preds = %bch_invalidate_one_bucket.exit.i.i.while.body588.i.i_crit_edge, %while.cond578.preheader.i.i.while.body588.i.i_crit_edge
  %391 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %392)
  %tobool592.not.i.i = icmp eq i32 %392, 0
  br i1 %tobool592.not.i.i, label %if.then769.i.i, label %if.then595.i.i

if.then595.i.i:                                   ; preds = %while.body588.i.i
  %393 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %data.i.i, align 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %394, align 4
  %dec601.i.i = add i32 %392, -1
  %397 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %dec601.i.i, ptr %used.i.i, align 4
  %398 = load ptr, ptr %394, align 4
  %arrayidx611.i.i = getelementptr ptr, ptr %394, i32 %dec601.i.i
  %399 = ptrtoint ptr %arrayidx611.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %arrayidx611.i.i, align 4
  store ptr %400, ptr %394, align 4
  %401 = load ptr, ptr %data.i.i, align 4
  %402 = load i32, ptr %used.i.i, align 4
  %arrayidx619.i.i = getelementptr ptr, ptr %401, i32 %402
  %403 = ptrtoint ptr %arrayidx619.i.i to i32
  call void @__asan_store4_noabort(i32 %403)
  store ptr %398, ptr %arrayidx619.i.i, align 4
  %404 = load i32, ptr %used.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %404)
  %cmp6301105.i.i = icmp ugt i32 %404, 1
  br i1 %cmp6301105.i.i, label %if.then595.i.i.for.body632.i.i_crit_edge, label %if.then595.i.i.if.end771.i.i_crit_edge

if.then595.i.i.if.end771.i.i_crit_edge:           ; preds = %if.then595.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end771.i.i

if.then595.i.i.for.body632.i.i_crit_edge:         ; preds = %if.then595.i.i
  br label %for.body632.i.i

for.body632.i.i:                                  ; preds = %do.body744.i.i.for.body632.i.i_crit_edge, %if.then595.i.i.for.body632.i.i_crit_edge
  %405 = phi i32 [ %455, %do.body744.i.i.for.body632.i.i_crit_edge ], [ %404, %if.then595.i.i.for.body632.i.i_crit_edge ]
  %add6271108.i.i = phi i32 [ %add627.i.i, %do.body744.i.i.for.body632.i.i_crit_edge ], [ 1, %if.then595.i.i.for.body632.i.i_crit_edge ]
  %mul6261107.i.i = phi i32 [ %mul626.i.i, %do.body744.i.i.for.body632.i.i_crit_edge ], [ 0, %if.then595.i.i.for.body632.i.i_crit_edge ]
  %_j624.01106.i.i = phi i32 [ %_r623.0.i.i, %do.body744.i.i.for.body632.i.i_crit_edge ], [ 0, %if.then595.i.i.for.body632.i.i_crit_edge ]
  %add635.i.i = add i32 %mul6261107.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add635.i.i, i32 %405)
  %cmp638.i.i = icmp ult i32 %add635.i.i, %405
  br i1 %cmp638.i.i, label %land.lhs.true640.i.i, label %for.body632.i.i.if.end693.i.i_crit_edge

for.body632.i.i.if.end693.i.i_crit_edge:          ; preds = %for.body632.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end693.i.i

land.lhs.true640.i.i:                             ; preds = %for.body632.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %406 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %arg, align 8
  %min_prio643.i.i = getelementptr inbounds %struct.cache_set, ptr %407, i32 0, i32 38
  %408 = ptrtoint ptr %min_prio643.i.i to i32
  call void @__asan_load2_noabort(i32 %408)
  %409 = load i16, ptr %min_prio643.i.i, align 8
  %conv644.i.i = zext i16 %409 to i32
  %sub645.i.i = sub nsw i32 32768, %conv644.i.i
  %div6461004.i.i = lshr i32 %sub645.i.i, 3
  %410 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %data.i.i, align 4
  %arrayidx650.i.i = getelementptr ptr, ptr %411, i32 %add6271108.i.i
  %412 = ptrtoint ptr %arrayidx650.i.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %arrayidx650.i.i, align 4
  %prio651.i.i = getelementptr inbounds %struct.bucket, ptr %413, i32 0, i32 1
  %414 = ptrtoint ptr %prio651.i.i to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %prio651.i.i, align 4
  %conv652.i.i = zext i16 %415 to i32
  %sub656.i.i = sub nsw i32 %div6461004.i.i, %conv644.i.i
  %add657.i.i = add nsw i32 %sub656.i.i, %conv652.i.i
  %conv658.i.i = zext i32 %add657.i.i to i64
  %gc_mark.i1056.i.i = getelementptr inbounds %struct.bucket, ptr %413, i32 0, i32 4
  %416 = ptrtoint ptr %gc_mark.i1056.i.i to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %gc_mark.i1056.i.i, align 4
  %418 = lshr i16 %417, 2
  %419 = and i16 %418, 8191
  %and.i1057.i.i = zext i16 %419 to i64
  %mul663.i.i = mul nuw nsw i64 %and.i1057.i.i, %conv658.i.i
  %arrayidx674.i.i = getelementptr ptr, ptr %411, i32 %add635.i.i
  %420 = ptrtoint ptr %arrayidx674.i.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx674.i.i, align 4
  %prio675.i.i = getelementptr inbounds %struct.bucket, ptr %421, i32 0, i32 1
  %422 = ptrtoint ptr %prio675.i.i to i32
  call void @__asan_load2_noabort(i32 %422)
  %423 = load i16, ptr %prio675.i.i, align 4
  %conv676.i.i = zext i16 %423 to i32
  %add681.i.i = add nsw i32 %sub656.i.i, %conv676.i.i
  %conv682.i.i = zext i32 %add681.i.i to i64
  %gc_mark.i1058.i.i = getelementptr inbounds %struct.bucket, ptr %421, i32 0, i32 4
  %424 = ptrtoint ptr %gc_mark.i1058.i.i to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %gc_mark.i1058.i.i, align 4
  %426 = lshr i16 %425, 2
  %427 = and i16 %426, 8191
  %and.i1059.i.i = zext i16 %427 to i64
  %mul688.i.i = mul nuw nsw i64 %and.i1059.i.i, %conv682.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul663.i.i, i64 %mul688.i.i)
  %cmp689.i.i = icmp ugt i64 %mul663.i.i, %mul688.i.i
  %spec.select1025.i.i = select i1 %cmp689.i.i, i32 %add635.i.i, i32 %add6271108.i.i
  br label %if.end693.i.i

if.end693.i.i:                                    ; preds = %land.lhs.true640.i.i, %for.body632.i.i.if.end693.i.i_crit_edge
  %_r623.0.i.i = phi i32 [ %add6271108.i.i, %for.body632.i.i.if.end693.i.i_crit_edge ], [ %spec.select1025.i.i, %land.lhs.true640.i.i ]
  %428 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arg, align 8
  %min_prio696.i.i = getelementptr inbounds %struct.cache_set, ptr %429, i32 0, i32 38
  %430 = ptrtoint ptr %min_prio696.i.i to i32
  call void @__asan_load2_noabort(i32 %430)
  %431 = load i16, ptr %min_prio696.i.i, align 8
  %conv697.i.i = zext i16 %431 to i32
  %sub698.i.i = sub nsw i32 32768, %conv697.i.i
  %div6991002.i.i = lshr i32 %sub698.i.i, 3
  %432 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %data.i.i, align 4
  %arrayidx703.i.i = getelementptr ptr, ptr %433, i32 %_r623.0.i.i
  %434 = ptrtoint ptr %arrayidx703.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %arrayidx703.i.i, align 4
  %prio704.i.i = getelementptr inbounds %struct.bucket, ptr %435, i32 0, i32 1
  %436 = ptrtoint ptr %prio704.i.i to i32
  call void @__asan_load2_noabort(i32 %436)
  %437 = load i16, ptr %prio704.i.i, align 4
  %conv705.i.i = zext i16 %437 to i32
  %sub709.i.i = sub nsw i32 %div6991002.i.i, %conv697.i.i
  %add710.i.i = add nsw i32 %sub709.i.i, %conv705.i.i
  %conv711.i.i = zext i32 %add710.i.i to i64
  %gc_mark.i1060.i.i = getelementptr inbounds %struct.bucket, ptr %435, i32 0, i32 4
  %438 = ptrtoint ptr %gc_mark.i1060.i.i to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %gc_mark.i1060.i.i, align 4
  %440 = lshr i16 %439, 2
  %441 = and i16 %440, 8191
  %and.i1061.i.i = zext i16 %441 to i64
  %mul716.i.i = mul nuw nsw i64 %and.i1061.i.i, %conv711.i.i
  %arrayidx726.i.i = getelementptr ptr, ptr %433, i32 %_j624.01106.i.i
  %442 = ptrtoint ptr %arrayidx726.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %arrayidx726.i.i, align 4
  %prio727.i.i = getelementptr inbounds %struct.bucket, ptr %443, i32 0, i32 1
  %444 = ptrtoint ptr %prio727.i.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %prio727.i.i, align 4
  %conv728.i.i = zext i16 %445 to i32
  %add733.i.i = add nsw i32 %sub709.i.i, %conv728.i.i
  %conv734.i.i = zext i32 %add733.i.i to i64
  %gc_mark.i1062.i.i = getelementptr inbounds %struct.bucket, ptr %443, i32 0, i32 4
  %446 = ptrtoint ptr %gc_mark.i1062.i.i to i32
  call void @__asan_load2_noabort(i32 %446)
  %447 = load i16, ptr %gc_mark.i1062.i.i, align 4
  %448 = lshr i16 %447, 2
  %449 = and i16 %448, 8191
  %and.i1063.i.i = zext i16 %449 to i64
  %mul739.i.i = mul nuw nsw i64 %and.i1063.i.i, %conv734.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul716.i.i, i64 %mul739.i.i)
  %cmp740.i.i = icmp ugt i64 %mul716.i.i, %mul739.i.i
  br i1 %cmp740.i.i, label %if.end693.i.i.if.end771.i.i_crit_edge, label %do.body744.i.i

if.end693.i.i.if.end771.i.i_crit_edge:            ; preds = %if.end693.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end771.i.i

do.body744.i.i:                                   ; preds = %if.end693.i.i
  %450 = ptrtoint ptr %arrayidx703.i.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %443, ptr %arrayidx703.i.i, align 4
  %451 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %data.i.i, align 4
  %arrayidx757.i.i = getelementptr ptr, ptr %452, i32 %_j624.01106.i.i
  %453 = ptrtoint ptr %arrayidx757.i.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store ptr %435, ptr %arrayidx757.i.i, align 4
  %mul626.i.i = shl i32 %_r623.0.i.i, 1
  %add627.i.i = or i32 %mul626.i.i, 1
  %454 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %used.i.i, align 4
  %cmp630.i.i = icmp ult i32 %add627.i.i, %455
  br i1 %cmp630.i.i, label %do.body744.i.i.for.body632.i.i_crit_edge, label %do.body744.i.i.if.end771.i.i_crit_edge

do.body744.i.i.if.end771.i.i_crit_edge:           ; preds = %do.body744.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end771.i.i

do.body744.i.i.for.body632.i.i_crit_edge:         ; preds = %do.body744.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body632.i.i

if.then769.i.i:                                   ; preds = %while.body588.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %456 = ptrtoint ptr %invalidate_needs_gc to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 1, ptr %invalidate_needs_gc, align 8
  %457 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %arg, align 8
  %gc_wait.i.i.i = getelementptr inbounds %struct.cache_set, ptr %458, i32 0, i32 48
  call void @__wake_up(ptr noundef %gc_wait.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %__here583.preheader

if.end771.i.i:                                    ; preds = %do.body744.i.i.if.end771.i.i_crit_edge, %if.end693.i.i.if.end771.i.i_crit_edge, %if.then595.i.i.if.end771.i.i_crit_edge
  call void @__bch_invalidate_one_bucket(ptr noundef %arg, ptr noundef %396) #8
  %459 = ptrtoint ptr %size.i57.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %size.i57.i, align 8
  %461 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %back, align 4
  %463 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %free_inc, align 8
  %sub.i.i.i = sub i32 %462, %464
  %465 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %mask, align 4
  %and.i1064.i.i = and i32 %sub.i.i.i, %466
  call void @__sanitizer_cov_trace_cmp4(i32 %460, i32 %and.i1064.i.i)
  %tobool.not.i1065.i.i = icmp eq i32 %460, %and.i1064.i.i
  br i1 %tobool.not.i1065.i.i, label %if.end771.i.i.bch_invalidate_one_bucket.exit.i.i_crit_edge, label %if.then.i.i.i

if.end771.i.i.bch_invalidate_one_bucket.exit.i.i_crit_edge: ; preds = %if.end771.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bch_invalidate_one_bucket.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end771.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %467 = ptrtoint ptr %buckets.i61.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %buckets.i61.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %396 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %468 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 12
  %469 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %data, align 8
  %inc.i.i.i = add i32 %462, 1
  %471 = ptrtoint ptr %back to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 %inc.i.i.i, ptr %back, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %470, i32 %462
  %472 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 %sub.ptr.div.i.i.i, ptr %arrayidx.i.i.i, align 4
  %473 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %mask, align 4
  %475 = load i32, ptr %back, align 4
  %and14.i.i.i = and i32 %475, %474
  store i32 %and14.i.i.i, ptr %back, align 4
  br label %bch_invalidate_one_bucket.exit.i.i

bch_invalidate_one_bucket.exit.i.i:               ; preds = %if.then.i.i.i, %if.end771.i.i.bch_invalidate_one_bucket.exit.i.i_crit_edge
  %476 = ptrtoint ptr %size.i57.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %size.i57.i, align 8
  %478 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %back, align 4
  %480 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %free_inc, align 8
  %sub582.i.i = sub i32 %479, %481
  %482 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %mask, align 4
  %and.i13.i = and i32 %sub582.i.i, %483
  %tobool585.not.i.i = icmp eq i32 %477, %and.i13.i
  br i1 %tobool585.not.i.i, label %bch_invalidate_one_bucket.exit.i.i.__here583.preheader_crit_edge, label %bch_invalidate_one_bucket.exit.i.i.while.body588.i.i_crit_edge

bch_invalidate_one_bucket.exit.i.i.while.body588.i.i_crit_edge: ; preds = %bch_invalidate_one_bucket.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body588.i.i

bch_invalidate_one_bucket.exit.i.i.__here583.preheader_crit_edge: ; preds = %bch_invalidate_one_bucket.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here583.preheader

while.cond.i.i:                                   ; preds = %if.end18.i.i.while.cond.i.i_crit_edge, %do.end6.i.while.cond.i.i_crit_edge
  %checked.0.i.i = phi i32 [ %inc19.i.i, %if.end18.i.i.while.cond.i.i_crit_edge ], [ 0, %do.end6.i.while.cond.i.i_crit_edge ]
  %484 = ptrtoint ptr %size.i57.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %size.i57.i, align 8
  %486 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %back, align 4
  %488 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %free_inc, align 8
  %sub.i20.i = sub i32 %487, %489
  %490 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %mask, align 4
  %and.i21.i = and i32 %sub.i20.i, %491
  call void @__sanitizer_cov_trace_cmp4(i32 %485, i32 %and.i21.i)
  %tobool.not.i.i = icmp eq i32 %485, %and.i21.i
  br i1 %tobool.not.i.i, label %while.cond.i.i.__here583.preheader_crit_edge, label %while.body.i24.i

while.cond.i.i.__here583.preheader_crit_edge:     ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here583.preheader

while.body.i24.i:                                 ; preds = %while.cond.i.i
  %492 = ptrtoint ptr %fifo_last_bucket.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %fifo_last_bucket.i.i, align 4
  %494 = ptrtoint ptr %first_bucket.i60.i to i32
  call void @__asan_load2_noabort(i32 %494)
  %495 = load i16, ptr %first_bucket.i60.i, align 4
  %conv.i22.i = zext i16 %495 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %493, i32 %conv.i22.i)
  %cmp.i23.i = icmp ult i32 %493, %conv.i22.i
  br i1 %cmp.i23.i, label %while.body.i24.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

while.body.i24.i.if.then.i.i_crit_edge:           ; preds = %while.body.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %while.body.i24.i
  %conv8.i.i = zext i32 %493 to i64
  %496 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %496)
  %497 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %497, i64 %conv8.i.i)
  %cmp10.not.i.i = icmp ugt i64 %497, %conv8.i.i
  br i1 %cmp10.not.i.i, label %lor.lhs.false.i.i.if.end.i29.i_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i.i.if.end.i29.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i29.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %while.body.i24.i.if.then.i.i_crit_edge
  %498 = ptrtoint ptr %fifo_last_bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 %conv.i22.i, ptr %fifo_last_bucket.i.i, align 4
  br label %if.end.i29.i

if.end.i29.i:                                     ; preds = %if.then.i.i, %lor.lhs.false.i.i.if.end.i29.i_crit_edge
  %499 = ptrtoint ptr %buckets.i61.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %buckets.i61.i, align 8
  %501 = ptrtoint ptr %fifo_last_bucket.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %fifo_last_bucket.i.i, align 4
  %inc.i25.i = add i32 %502, 1
  store i32 %inc.i25.i, ptr %fifo_last_bucket.i.i, align 4
  %add.ptr.i26.i = getelementptr %struct.bucket, ptr %500, i32 %502
  %503 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %arg, align 8
  %gc_mark_valid.i.i27.i = getelementptr inbounds %struct.cache_set, ptr %504, i32 0, i32 46
  %505 = ptrtoint ptr %gc_mark_valid.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %gc_mark_valid.i.i27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %506)
  %tobool.not.i.i28.i = icmp eq i32 %506, 0
  br i1 %tobool.not.i.i28.i, label %do.body4.i.i30.i, label %do.end7.i.i33.i, !prof !52

do.body4.i.i30.i:                                 ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

do.end7.i.i33.i:                                  ; preds = %if.end.i29.i
  %gc_mark.i.i.i31.i = getelementptr %struct.bucket, ptr %500, i32 %502, i32 4
  %507 = ptrtoint ptr %gc_mark.i.i.i31.i to i32
  call void @__asan_load2_noabort(i32 %507)
  %508 = load i16, ptr %gc_mark.i.i.i31.i, align 4
  %509 = and i16 %508, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %509)
  %switch.not.not.i.i32.i = icmp eq i16 %509, 0
  br i1 %switch.not.not.i.i32.i, label %land.lhs.true.i.i36.i, label %do.end7.i.i33.i.if.end18.i.i_crit_edge

do.end7.i.i33.i.if.end18.i.i_crit_edge:           ; preds = %do.end7.i.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i

land.lhs.true.i.i36.i:                            ; preds = %do.end7.i.i33.i
  %call.i.i.i.i34.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i26.i, i32 noundef 4) #8
  %510 = ptrtoint ptr %add.ptr.i26.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load volatile i32, ptr %add.ptr.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %511)
  %tobool11.not.i.i35.i = icmp eq i32 %511, 0
  br i1 %tobool11.not.i.i35.i, label %bch_can_invalidate_bucket.exit.i41.i, label %land.lhs.true.i.i36.i.if.end18.i.i_crit_edge

land.lhs.true.i.i36.i.if.end18.i.i_crit_edge:     ; preds = %land.lhs.true.i.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i

bch_can_invalidate_bucket.exit.i41.i:             ; preds = %land.lhs.true.i.i36.i
  %gen.i.i.i.i37.i = getelementptr %struct.bucket, ptr %500, i32 %502, i32 2
  %512 = ptrtoint ptr %gen.i.i.i.i37.i to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %gen.i.i.i.i37.i, align 2
  %last_gc.i.i.i.i38.i = getelementptr %struct.bucket, ptr %500, i32 %502, i32 3
  %514 = ptrtoint ptr %last_gc.i.i.i.i38.i to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %last_gc.i.i.i.i38.i, align 1
  %sub.i.i.i.i39.i = sub i8 %513, %515
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %sub.i.i.i.i39.i)
  %cmp.i.i.i40.i = icmp ult i8 %sub.i.i.i.i39.i, 96
  br i1 %cmp.i.i.i40.i, label %if.then17.i44.i, label %bch_can_invalidate_bucket.exit.i41.i.if.end18.i.i_crit_edge

bch_can_invalidate_bucket.exit.i41.i.if.end18.i.i_crit_edge: ; preds = %bch_can_invalidate_bucket.exit.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i

if.then17.i44.i:                                  ; preds = %bch_can_invalidate_bucket.exit.i41.i
  call void @__bch_invalidate_one_bucket(ptr noundef %arg, ptr noundef %add.ptr.i26.i) #8
  %516 = ptrtoint ptr %size.i57.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load i32, ptr %size.i57.i, align 8
  %518 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %back, align 4
  %520 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %free_inc, align 8
  %sub.i.i42.i = sub i32 %519, %521
  %522 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %mask, align 4
  %and.i.i43.i = and i32 %sub.i.i42.i, %523
  call void @__sanitizer_cov_trace_cmp4(i32 %517, i32 %and.i.i43.i)
  %tobool.not.i45.i.i = icmp eq i32 %517, %and.i.i43.i
  br i1 %tobool.not.i45.i.i, label %if.then17.i44.i.if.end18.i.i_crit_edge, label %if.then.i.i52.i

if.then17.i44.i.if.end18.i.i_crit_edge:           ; preds = %if.then17.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i

if.then.i.i52.i:                                  ; preds = %if.then17.i44.i
  call void @__sanitizer_cov_trace_pc() #10
  %524 = ptrtoint ptr %buckets.i61.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %buckets.i61.i, align 8
  %sub.ptr.lhs.cast.i.i45.i = ptrtoint ptr %add.ptr.i26.i to i32
  %sub.ptr.rhs.cast.i.i46.i = ptrtoint ptr %525 to i32
  %sub.ptr.sub.i.i47.i = sub i32 %sub.ptr.lhs.cast.i.i45.i, %sub.ptr.rhs.cast.i.i46.i
  %sub.ptr.div.i.i48.i = sdiv exact i32 %sub.ptr.sub.i.i47.i, 12
  %526 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %data, align 8
  %inc.i.i49.i = add i32 %519, 1
  %528 = ptrtoint ptr %back to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 %inc.i.i49.i, ptr %back, align 4
  %arrayidx.i.i50.i = getelementptr i32, ptr %527, i32 %519
  %529 = ptrtoint ptr %arrayidx.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %sub.ptr.div.i.i48.i, ptr %arrayidx.i.i50.i, align 4
  %530 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %mask, align 4
  %532 = load i32, ptr %back, align 4
  %and14.i.i51.i = and i32 %532, %531
  store i32 %and14.i.i51.i, ptr %back, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then.i.i52.i, %if.then17.i44.i.if.end18.i.i_crit_edge, %bch_can_invalidate_bucket.exit.i41.i.if.end18.i.i_crit_edge, %land.lhs.true.i.i36.i.if.end18.i.i_crit_edge, %do.end7.i.i33.i.if.end18.i.i_crit_edge
  %inc19.i.i = add i32 %checked.0.i.i, 1
  %conv20.i.i = zext i32 %inc19.i.i to i64
  %533 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %533)
  %534 = load i64, ptr %2, align 8
  %cmp23.not.i.i = icmp ugt i64 %534, %conv20.i.i
  br i1 %cmp23.not.i.i, label %if.end18.i.i.while.cond.i.i_crit_edge, label %if.then25.i.i

if.end18.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

if.then25.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %535 = ptrtoint ptr %invalidate_needs_gc to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 1, ptr %invalidate_needs_gc, align 8
  %536 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %arg, align 8
  %gc_wait.i.i54.i = getelementptr inbounds %struct.cache_set, ptr %537, i32 0, i32 48
  call void @__wake_up(ptr noundef %gc_wait.i.i54.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %__here583.preheader

sw.bb8.i:                                         ; preds = %do.end6.i
  %538 = ptrtoint ptr %size.i57.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %size.i57.i, align 8
  %540 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %back, align 4
  %542 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %free_inc, align 8
  %sub37.i.i = sub i32 %541, %543
  %544 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %mask, align 4
  %and38.i.i = and i32 %sub37.i.i, %545
  call void @__sanitizer_cov_trace_cmp4(i32 %539, i32 %and38.i.i)
  %tobool.not39.i.i = icmp eq i32 %539, %and38.i.i
  br i1 %tobool.not39.i.i, label %sw.bb8.i.__here583.preheader_crit_edge, label %sw.bb8.i.while.body.i72.i_crit_edge

sw.bb8.i.while.body.i72.i_crit_edge:              ; preds = %sw.bb8.i
  br label %while.body.i72.i

sw.bb8.i.__here583.preheader_crit_edge:           ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here583.preheader

while.cond.critedge.i.i:                          ; preds = %if.end.i97.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i.i) #8
  %546 = ptrtoint ptr %size.i57.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %size.i57.i, align 8
  %548 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %back, align 4
  %550 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %free_inc, align 8
  %sub.i63.i = sub i32 %549, %551
  %552 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %mask, align 4
  %and.i64.i = and i32 %sub.i63.i, %553
  %tobool.not.i65.i = icmp eq i32 %547, %and.i64.i
  br i1 %tobool.not.i65.i, label %while.cond.critedge.i.i.__here583.preheader_crit_edge, label %while.cond.critedge.i.i.while.body.i72.i_crit_edge

while.cond.critedge.i.i.while.body.i72.i_crit_edge: ; preds = %while.cond.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i72.i

while.cond.critedge.i.i.__here583.preheader_crit_edge: ; preds = %while.cond.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here583.preheader

while.body.i72.i:                                 ; preds = %while.cond.critedge.i.i.while.body.i72.i_crit_edge, %sw.bb8.i.while.body.i72.i_crit_edge
  %checked.040.i.i = phi i32 [ %inc.i96.i, %while.cond.critedge.i.i.while.body.i72.i_crit_edge ], [ 0, %sw.bb8.i.while.body.i72.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i.i) #8
  %554 = ptrtoint ptr %n.i.i to i32
  call void @__asan_store4_noabort(i32 %554)
  store i32 -1, ptr %n.i.i, align 4, !annotation !80
  call void @get_random_bytes(ptr noundef nonnull %n.i.i, i32 noundef 4) #8
  %555 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %555)
  %556 = load i64, ptr %2, align 8
  %557 = ptrtoint ptr %first_bucket.i60.i to i32
  call void @__asan_load2_noabort(i32 %557)
  %558 = load i16, ptr %first_bucket.i60.i, align 4
  %conv.i66.i = zext i16 %558 to i64
  %sub7.i.i = sub i64 %556, %conv.i66.i
  %conv8.i67.i = trunc i64 %sub7.i.i to i32
  %559 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %n.i.i, align 4
  %rem.i.i = urem i32 %560, %conv8.i67.i
  %conv11.i.i = zext i16 %558 to i32
  %add.i68.i = add i32 %rem.i.i, %conv11.i.i
  store i32 %add.i68.i, ptr %n.i.i, align 4
  %561 = ptrtoint ptr %buckets.i61.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %buckets.i61.i, align 8
  %add.ptr.i69.i = getelementptr %struct.bucket, ptr %562, i32 %add.i68.i
  %563 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %arg, align 8
  %gc_mark_valid.i.i70.i = getelementptr inbounds %struct.cache_set, ptr %564, i32 0, i32 46
  %565 = ptrtoint ptr %gc_mark_valid.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %gc_mark_valid.i.i70.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %566)
  %tobool.not.i.i71.i = icmp eq i32 %566, 0
  br i1 %tobool.not.i.i71.i, label %do.body4.i.i73.i, label %do.end7.i.i76.i, !prof !52

do.body4.i.i73.i:                                 ; preds = %while.body.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 132, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

do.end7.i.i76.i:                                  ; preds = %while.body.i72.i
  %gc_mark.i.i.i74.i = getelementptr %struct.bucket, ptr %562, i32 %add.i68.i, i32 4
  %567 = ptrtoint ptr %gc_mark.i.i.i74.i to i32
  call void @__asan_load2_noabort(i32 %567)
  %568 = load i16, ptr %gc_mark.i.i.i74.i, align 4
  %569 = and i16 %568, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %569)
  %switch.not.not.i.i75.i = icmp eq i16 %569, 0
  br i1 %switch.not.not.i.i75.i, label %land.lhs.true.i.i79.i, label %do.end7.i.i76.i.if.end.i97.i_crit_edge

do.end7.i.i76.i.if.end.i97.i_crit_edge:           ; preds = %do.end7.i.i76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i97.i

land.lhs.true.i.i79.i:                            ; preds = %do.end7.i.i76.i
  %call.i.i.i.i77.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i69.i, i32 noundef 4) #8
  %570 = ptrtoint ptr %add.ptr.i69.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load volatile i32, ptr %add.ptr.i69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %571)
  %tobool11.not.i.i78.i = icmp eq i32 %571, 0
  br i1 %tobool11.not.i.i78.i, label %bch_can_invalidate_bucket.exit.i84.i, label %land.lhs.true.i.i79.i.if.end.i97.i_crit_edge

land.lhs.true.i.i79.i.if.end.i97.i_crit_edge:     ; preds = %land.lhs.true.i.i79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i97.i

bch_can_invalidate_bucket.exit.i84.i:             ; preds = %land.lhs.true.i.i79.i
  %gen.i.i.i.i80.i = getelementptr %struct.bucket, ptr %562, i32 %add.i68.i, i32 2
  %572 = ptrtoint ptr %gen.i.i.i.i80.i to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %gen.i.i.i.i80.i, align 2
  %last_gc.i.i.i.i81.i = getelementptr %struct.bucket, ptr %562, i32 %add.i68.i, i32 3
  %574 = ptrtoint ptr %last_gc.i.i.i.i81.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %last_gc.i.i.i.i81.i, align 1
  %sub.i.i.i.i82.i = sub i8 %573, %575
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %sub.i.i.i.i82.i)
  %cmp.i.i.i83.i = icmp ult i8 %sub.i.i.i.i82.i, 96
  br i1 %cmp.i.i.i83.i, label %if.then.i87.i, label %bch_can_invalidate_bucket.exit.i84.i.if.end.i97.i_crit_edge

bch_can_invalidate_bucket.exit.i84.i.if.end.i97.i_crit_edge: ; preds = %bch_can_invalidate_bucket.exit.i84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i97.i

if.then.i87.i:                                    ; preds = %bch_can_invalidate_bucket.exit.i84.i
  call void @__bch_invalidate_one_bucket(ptr noundef %arg, ptr noundef %add.ptr.i69.i) #8
  %576 = ptrtoint ptr %size.i57.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %size.i57.i, align 8
  %578 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %back, align 4
  %580 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %free_inc, align 8
  %sub.i.i85.i = sub i32 %579, %581
  %582 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %mask, align 4
  %and.i.i86.i = and i32 %sub.i.i85.i, %583
  call void @__sanitizer_cov_trace_cmp4(i32 %577, i32 %and.i.i86.i)
  %tobool.not.i36.i.i = icmp eq i32 %577, %and.i.i86.i
  br i1 %tobool.not.i36.i.i, label %if.then.i87.i.if.end.i97.i_crit_edge, label %if.then.i.i95.i

if.then.i87.i.if.end.i97.i_crit_edge:             ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i97.i

if.then.i.i95.i:                                  ; preds = %if.then.i87.i
  call void @__sanitizer_cov_trace_pc() #10
  %584 = ptrtoint ptr %buckets.i61.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %buckets.i61.i, align 8
  %sub.ptr.lhs.cast.i.i88.i = ptrtoint ptr %add.ptr.i69.i to i32
  %sub.ptr.rhs.cast.i.i89.i = ptrtoint ptr %585 to i32
  %sub.ptr.sub.i.i90.i = sub i32 %sub.ptr.lhs.cast.i.i88.i, %sub.ptr.rhs.cast.i.i89.i
  %sub.ptr.div.i.i91.i = sdiv exact i32 %sub.ptr.sub.i.i90.i, 12
  %586 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %data, align 8
  %inc.i.i92.i = add i32 %579, 1
  %588 = ptrtoint ptr %back to i32
  call void @__asan_store4_noabort(i32 %588)
  store i32 %inc.i.i92.i, ptr %back, align 4
  %arrayidx.i.i93.i = getelementptr i32, ptr %587, i32 %579
  %589 = ptrtoint ptr %arrayidx.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %589)
  store i32 %sub.ptr.div.i.i91.i, ptr %arrayidx.i.i93.i, align 4
  %590 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %mask, align 4
  %592 = load i32, ptr %back, align 4
  %and14.i.i94.i = and i32 %592, %591
  store i32 %and14.i.i94.i, ptr %back, align 4
  br label %if.end.i97.i

if.end.i97.i:                                     ; preds = %if.then.i.i95.i, %if.then.i87.i.if.end.i97.i_crit_edge, %bch_can_invalidate_bucket.exit.i84.i.if.end.i97.i_crit_edge, %land.lhs.true.i.i79.i.if.end.i97.i_crit_edge, %do.end7.i.i76.i.if.end.i97.i_crit_edge
  %inc.i96.i = add i32 %checked.040.i.i, 1
  %conv12.i.i = zext i32 %inc.i96.i to i64
  %593 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %593)
  %594 = load i64, ptr %2, align 8
  %div35.i.i = lshr i64 %594, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %div35.i.i, i64 %conv12.i.i)
  %cmp.not.i.i = icmp ugt i64 %div35.i.i, %conv12.i.i
  br i1 %cmp.not.i.i, label %while.cond.critedge.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end.i97.i
  call void @__sanitizer_cov_trace_pc() #10
  %595 = ptrtoint ptr %invalidate_needs_gc to i32
  call void @__asan_store4_noabort(i32 %595)
  store i32 1, ptr %invalidate_needs_gc, align 8
  %596 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %arg, align 8
  %gc_wait.i.i99.i = getelementptr inbounds %struct.cache_set, ptr %597, i32 0, i32 48
  call void @__wake_up(ptr noundef %gc_wait.i.i99.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i.i) #8
  br label %__here583.preheader

__here583.preheader:                              ; preds = %if.then16.i.i, %while.cond.critedge.i.i.__here583.preheader_crit_edge, %sw.bb8.i.__here583.preheader_crit_edge, %if.then25.i.i, %while.cond.i.i.__here583.preheader_crit_edge, %bch_invalidate_one_bucket.exit.i.i.__here583.preheader_crit_edge, %if.then769.i.i, %while.cond578.preheader.i.i.__here583.preheader_crit_edge, %do.end6.i.__here583.preheader_crit_edge
  br label %__here583

__here583:                                        ; preds = %if.end709, %__here583.preheader
  %598 = ptrtoint ptr %task328.le982 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %task328.le982, align 8
  %task_state_change587 = getelementptr inbounds %struct.task_struct, ptr %599, i32 0, i32 212
  %600 = ptrtoint ptr %task_state_change587 to i32
  call void @__asan_store4_noabort(i32 %600)
  store i32 ptrtoint (ptr blockaddress(@bch_allocator_thread, %__here583) to i32), ptr %task_state_change587, align 4
  %601 = load ptr, ptr %task328.le982, align 8
  %602 = ptrtoint ptr %601 to i32
  call void @__asan_store4_noabort(i32 %602)
  store volatile i32 1, ptr %601, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !81
  %603 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %arg, align 8
  %prio_blocked = getelementptr inbounds %struct.cache_set, ptr %604, i32 0, i32 34
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %prio_blocked, i32 noundef 4) #8
  %605 = ptrtoint ptr %prio_blocked to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load volatile i32, ptr %prio_blocked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %606)
  %tobool615.not = icmp eq i32 %606, 0
  br i1 %tobool615.not, label %__here764, label %if.end617

if.end617:                                        ; preds = %__here583
  %607 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %arg, align 8
  %bucket_lock619 = getelementptr inbounds %struct.cache_set, ptr %608, i32 0, i32 23
  call void @mutex_unlock(ptr noundef %bucket_lock619) #8
  %call620 = call zeroext i1 @kthread_should_stop() #8
  br i1 %call620, label %if.end617.__here679_crit_edge, label %lor.lhs.false622

if.end617.__here679_crit_edge:                    ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here679

lor.lhs.false622:                                 ; preds = %if.end617
  %609 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %arg, align 8
  %flags624 = getelementptr inbounds %struct.cache_set, ptr %610, i32 0, i32 6
  %611 = ptrtoint ptr %flags624 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load volatile i32, ptr %flags624, align 4
  %613 = and i32 %612, 8
  %tobool626.not = icmp eq i32 %613, 0
  br i1 %tobool626.not, label %if.end709, label %lor.lhs.false622.__here679_crit_edge

lor.lhs.false622.__here679_crit_edge:             ; preds = %lor.lhs.false622
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here679

__here679:                                        ; preds = %lor.lhs.false622.__here679_crit_edge, %if.end617.__here679_crit_edge
  %614 = ptrtoint ptr %task328.le982 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %task328.le982, align 8
  %task_state_change683 = getelementptr inbounds %struct.task_struct, ptr %615, i32 0, i32 212
  %616 = ptrtoint ptr %task_state_change683 to i32
  call void @__asan_store4_noabort(i32 %616)
  store i32 ptrtoint (ptr blockaddress(@bch_allocator_thread, %__here679) to i32), ptr %task_state_change683, align 4
  %617 = load ptr, ptr %task328.le982, align 8
  %618 = ptrtoint ptr %617 to i32
  call void @__asan_store4_noabort(i32 %618)
  store volatile i32 0, ptr %617, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !82
  br label %cleanup811

if.end709:                                        ; preds = %lor.lhs.false622
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  %619 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %arg, align 8
  %bucket_lock711 = getelementptr inbounds %struct.cache_set, ptr %620, i32 0, i32 23
  call void @mutex_lock_nested(ptr noundef %bucket_lock711, i32 noundef 0) #8
  br label %__here583

__here764:                                        ; preds = %__here583
  %621 = ptrtoint ptr %task328.le982 to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %task328.le982, align 8
  %task_state_change768 = getelementptr inbounds %struct.task_struct, ptr %622, i32 0, i32 212
  %623 = ptrtoint ptr %task_state_change768 to i32
  call void @__asan_store4_noabort(i32 %623)
  store i32 ptrtoint (ptr blockaddress(@bch_allocator_thread, %__here764) to i32), ptr %task_state_change768, align 4
  %624 = load ptr, ptr %task328.le982, align 8
  %625 = ptrtoint ptr %624 to i32
  call void @__asan_store4_noabort(i32 %625)
  store volatile i32 0, ptr %624, align 128
  %626 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load8_noabort(i32 %626)
  %627 = load i64, ptr %flags.i.i, align 8
  %and.i876 = and i64 %627, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i876)
  %tobool789.not = icmp eq i64 %and.i876, 0
  br i1 %tobool789.not, label %__here764.while.cond.backedge_crit_edge, label %if.then790

__here764.while.cond.backedge_crit_edge:          ; preds = %__here764
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then790:                                       ; preds = %__here764
  %628 = ptrtoint ptr %size.i57.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %size.i57.i, align 8
  %630 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load i32, ptr %back, align 4
  %632 = ptrtoint ptr %free_inc to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %free_inc, align 8
  %sub796 = sub i32 %631, %633
  %634 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %mask, align 4
  %and799 = and i32 %sub796, %635
  call void @__sanitizer_cov_trace_cmp4(i32 %629, i32 %and799)
  %tobool801.not = icmp eq i32 %629, %and799
  br i1 %tobool801.not, label %if.end803, label %if.then790.__here325.backedge_crit_edge

if.then790.__here325.backedge_crit_edge:          ; preds = %if.then790
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here325.backedge

__here325.backedge:                               ; preds = %if.then790.__here325.backedge_crit_edge, %if.end451
  br label %__here325

if.end803:                                        ; preds = %if.then790
  %call804 = call i32 @bch_prio_write(ptr noundef %arg, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call804)
  %cmp = icmp slt i32 %call804, 0
  br i1 %cmp, label %if.then806, label %if.end803.while.cond.backedge_crit_edge

if.end803.while.cond.backedge_crit_edge:          ; preds = %if.end803
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then806, %if.end803.while.cond.backedge_crit_edge, %__here764.while.cond.backedge_crit_edge
  br label %while.cond

if.then806:                                       ; preds = %if.end803
  call void @__sanitizer_cov_trace_pc() #10
  %636 = ptrtoint ptr %invalidate_needs_gc to i32
  call void @__asan_store4_noabort(i32 %636)
  store i32 1, ptr %invalidate_needs_gc, align 8
  %637 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %arg, align 8
  %gc_wait.i = getelementptr inbounds %struct.cache_set, ptr %638, i32 0, i32 48
  call void @__wake_up(ptr noundef %gc_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %while.cond.backedge

cleanup811:                                       ; preds = %__here679, %__here421, %cleanup.thread
  call fastcc void @wait_for_kthread_stop()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_invalidate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_alloc_fail(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_bcache_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bch_prio_write(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_for_kthread_stop() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call64 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call64, label %entry.while.end_crit_edge, label %entry.__here_crit_edge

entry.__here_crit_edge:                           ; preds = %entry
  br label %__here

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

__here:                                           ; preds = %__here.__here_crit_edge, %entry.__here_crit_edge
  %0 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@wait_for_kthread_stop, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @schedule() #8
  %call = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %call, label %__here.while.end_crit_edge, label %__here.__here_crit_edge

__here.__here_crit_edge:                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %__here.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/alloc.c", i32 81, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @bch_open_buckets_alloc.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/md/bcache/alloc.c", i32 713, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/bcache/alloc.c", i32 729, i32 26}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/trace/events/bcache.h", i32 428, i32 1}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/trace/events/bcache.h", i32 467, i32 1}
!18 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/trace/events/bcache.h", i32 449, i32 1}
!21 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../drivers/md/bcache/alloc.c", i32 343, i32 4}
!24 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!25 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/md/bcache/alloc.c", i32 355, i32 3}
!28 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!29 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/md/bcache/alloc.c", i32 363, i32 3}
!32 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!33 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/md/bcache/bcache.h", i32 948, i32 3}
!36 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2148597046, i64 2148597072, i64 2148597101, i64 2148597135, i64 2148597166, i64 2148597189}
!49 = !{i64 2148696428}
!50 = !{i64 1080094, i64 1080118, i64 1080139, i64 1080156, i64 1080173}
!51 = !{i64 2148696654}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2155160053, i64 2155160543, i64 2155160090, i64 2155160146, i64 2155160180, i64 2155160204, i64 2155160245, i64 2155160266, i64 2155160294, i64 2155160328}
!54 = !{!"branch_weights", i32 4001, i32 1}
!55 = !{i64 2155162492, i64 2155162982, i64 2155162529, i64 2155162585, i64 2155162619, i64 2155162643, i64 2155162684, i64 2155162705, i64 2155162733, i64 2155162767}
!56 = !{i64 2148594581, i64 2148594607, i64 2148594636, i64 2148594670, i64 2148594701, i64 2148594724}
!57 = !{i64 2148419179, i64 2148419184, i64 2148419197, i64 2148419241, i64 2148419275, i64 2148419296}
!58 = !{i64 2155071651}
!59 = !{i64 2155071868}
!60 = !{i64 2149582670}
!61 = !{i64 2149583706}
!62 = !{i8 0, i8 2}
!63 = !{i64 2155229366, i64 2155229856, i64 2155229403, i64 2155229459, i64 2155229493, i64 2155229517, i64 2155229558, i64 2155229579, i64 2155229607, i64 2155229641}
!64 = !{i64 2155231159, i64 2155231649, i64 2155231196, i64 2155231252, i64 2155231286, i64 2155231310, i64 2155231351, i64 2155231372, i64 2155231400, i64 2155231434}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.peeled.count", i32 1}
!67 = !{i64 2155232956, i64 2155233446, i64 2155232993, i64 2155233049, i64 2155233083, i64 2155233107, i64 2155233148, i64 2155233169, i64 2155233197, i64 2155233231}
!68 = distinct !{!68, !66}
!69 = !{i64 2155234580, i64 2155235070, i64 2155234617, i64 2155234673, i64 2155234707, i64 2155234731, i64 2155234772, i64 2155234793, i64 2155234821, i64 2155234855}
!70 = !{i64 2155108273}
!71 = !{i64 2155108492}
!72 = !{i64 2155087946}
!73 = !{i64 2155088153}
!74 = !{i64 2155242346, i64 2155242836, i64 2155242383, i64 2155242439, i64 2155242473, i64 2155242497, i64 2155242538, i64 2155242559, i64 2155242587, i64 2155242621}
!75 = !{i64 2155187406}
!76 = !{i64 2155192152}
!77 = !{i64 2155202149}
!78 = !{i64 2155206895}
!79 = !{i64 2155179031, i64 2155179521, i64 2155179068, i64 2155179124, i64 2155179158, i64 2155179182, i64 2155179223, i64 2155179244, i64 2155179272, i64 2155179306}
!80 = !{!"auto-init"}
!81 = !{i64 2155216609}
!82 = !{i64 2155221355}
!83 = !{i64 2154436774}
