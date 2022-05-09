; ModuleID = '/llk/IR_all_yes/kernel/bpf/bpf_task_storage.c_pt.bc'
source_filename = "../kernel/bpf/bpf_task_storage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.163, %union.anon.165, ptr, ptr }
%union.anon.163 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32, i32 }
%union.anon.165 = type { %struct.anon.164 }
%struct.anon.164 = type { ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_local_storage_cache = type { %struct.spinlock, [16 x i64] }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.154, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.154 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bpf_local_storage = type { [16 x ptr], %struct.hlist_head, ptr, %struct.callback_head, %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.bpf_local_storage_elem = type { %struct.hlist_node, %struct.hlist_node, ptr, %struct.callback_head, [100 x i8], %struct.bpf_local_storage_data, [120 x i8] }
%struct.bpf_local_storage_data = type { ptr, [4 x i8], [0 x i8] }
%struct.bpf_local_storage_map = type { %struct.bpf_map, ptr, i32, i16, i16, [116 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }

@bpf_task_storage_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"kernel/bpf/bpf_task_storage.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bpf_local_storage_map\00", [42 x i8] zeroinitializer }, align 32
@task_storage_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@task_storage_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @bpf_local_storage_map_alloc_check, ptr @task_storage_map_alloc, ptr null, ptr @task_storage_map_free, ptr @notsupp_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_pid_task_storage_lookup_elem, ptr @bpf_pid_task_storage_update_elem, ptr @bpf_pid_task_storage_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_local_storage_map_check_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @task_storage_ptr, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str.2, ptr @task_storage_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@btf_tracing_ids = external dso_local global [0 x i32], align 4
@bpf_task_storage_get_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_task_storage_get, i8 0, i8 0, i32 258, %union.anon.163 { %struct.anon.162 { i32 1, i32 16, i32 259, i32 10, i32 0 } }, %union.anon.165 { %struct.anon.164 { ptr null, ptr @btf_tracing_ids, ptr null, ptr null, ptr null } }, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_task_storage_delete_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_task_storage_delete, i8 0, i8 0, i32 0, %union.anon.163 { %struct.anon.162 { i32 1, i32 16, i32 0, i32 0, i32 0 } }, %union.anon.165 { %struct.anon.164 { ptr null, ptr @btf_tracing_ids, ptr null, ptr null, ptr null } }, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__pcpu_unique_bpf_task_storage_busy = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@bpf_task_storage_busy = weak dso_local global i32 0, section ".data..percpu", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@____bpf_task_storage_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_trace_lock_map = external dso_local global %struct.lockdep_map, align 4
@task_storage_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@____bpf_task_storage_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@task_cache = internal global { %struct.bpf_local_storage_cache, [48 x i8] } { %struct.bpf_local_storage_cache { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [16 x i64] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"task_cache.idx_lock\00", [44 x i8] zeroinitializer }, align 32
@bpf_pid_task_storage_lookup_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_pid_task_storage_update_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_pid_task_storage_delete_elem.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 82, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 319, i32 18 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"task_storage_map_btf_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 308, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"task_storage_map_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 309, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"bpf_task_storage_get_proto\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 324, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [30 x i8] c"bpf_task_storage_delete_proto\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 335, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 695, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 723, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"task_cache\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [33 x i8] c"../kernel/bpf/bpf_task_storage.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 22, i32 1 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @task_storage_map_btf_id, ptr @task_storage_map_ops, ptr @bpf_task_storage_get_proto, ptr @bpf_task_storage_delete_proto, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @task_cache, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_storage_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_storage_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_task_storage_get_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_task_storage_delete_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_cache to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_task_storage_free(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %bpf_storage = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 216
  %4 = ptrtoint ptr %bpf_storage to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %bpf_storage, align 4
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b72 = load i1, ptr @bpf_task_storage_free.__warned, align 1
  br i1 %.b72, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bpf_task_storage_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.end7
  %call.i73 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i73, label %if.then10.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i76

if.then10.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i76:                                ; preds = %if.then10
  %call1.i74 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool.not.i75, label %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i78

land.lhs.true.i76.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i78:                               ; preds = %land.lhs.true.i76
  %.b4.i77 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i77, label %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, label %if.then.i79

land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i79:                                      ; preds = %land.lhs.true2.i78
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i79, %land.lhs.true2.i78.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i76.rcu_read_unlock.exit_crit_edge, %if.then10.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  %6 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i.i.i.i80 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i80 to ptr
  %preempt_count.i.i.i.i81 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i81, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i81, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  tail call void @migrate_disable() #6
  %10 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add7.i = add i32 %18, 1
  store i32 %add7.i, ptr %16, align 4
  %lock = getelementptr inbounds %struct.bpf_local_storage, ptr %5, i32 0, i32 4
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %list = getelementptr inbounds %struct.bpf_local_storage, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %tobool18.not = icmp eq ptr %20, null
  %add.ptr = getelementptr i8, ptr %20, i32 -8
  %tobool20.not100102 = icmp eq ptr %add.ptr, null
  %tobool20.not100 = or i1 %tobool18.not, %tobool20.not100102
  br i1 %tobool20.not100, label %if.end11.do.body34_crit_edge, label %if.end11.land.rhs_crit_edge

if.end11.land.rhs_crit_edge:                      ; preds = %if.end11
  br label %land.rhs

if.end11.do.body34_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %if.end11.land.rhs_crit_edge
  %selem.0101 = phi ptr [ %add.ptr30, %land.rhs.land.rhs_crit_edge ], [ %add.ptr, %if.end11.land.rhs_crit_edge ]
  %snode = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.0101, i32 0, i32 1
  %21 = ptrtoint ptr %snode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %snode, align 8
  tail call void @bpf_selem_unlink_map(ptr noundef nonnull %selem.0101) #6
  %call23 = tail call zeroext i1 @bpf_selem_unlink_storage_nolock(ptr noundef nonnull %5, ptr noundef nonnull %selem.0101, i1 noundef zeroext false) #6
  %tobool26.not = icmp eq ptr %22, null
  %add.ptr30 = getelementptr i8, ptr %22, i32 -8
  %tobool20.not103 = icmp eq ptr %add.ptr30, null
  %tobool20.not = or i1 %tobool26.not, %tobool20.not103
  br i1 %tobool20.not, label %land.rhs.do.body34_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs.do.body34_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

do.body34:                                        ; preds = %land.rhs.do.body34_crit_edge, %if.end11.do.body34_crit_edge
  %free_task_storage.0.off0.lcssa = phi i1 [ false, %if.end11.do.body34_crit_edge ], [ %call23, %land.rhs.do.body34_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call14) #6
  %23 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i82 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i82 to ptr
  %cpu.i83 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i83 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i83, align 4
  %arrayidx.i84 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i84, align 4
  %add.i85 = add i32 %28, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %29 = inttoptr i32 %add.i85 to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add7.i86 = add i32 %31, -1
  store i32 %add7.i86, ptr %29, align 4
  tail call void @migrate_enable() #6
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i87, label %do.body34.rcu_read_unlock.exit97_crit_edge, label %land.lhs.true.i90

do.body34.rcu_read_unlock.exit97_crit_edge:       ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit97

land.lhs.true.i90:                                ; preds = %do.body34
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock.exit97_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock.exit97_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit97

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock.exit97_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock.exit97_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit97

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_unlock.exit97

rcu_read_unlock.exit97:                           ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock.exit97_crit_edge, %land.lhs.true.i90.rcu_read_unlock.exit97_crit_edge, %do.body34.rcu_read_unlock.exit97_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  %32 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i.i.i.i94 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i94 to ptr
  %preempt_count.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i95, align 4
  %sub.i.i.i96 = add i32 %35, -1
  store volatile i32 %sub.i.i.i96, ptr %preempt_count.i.i.i.i95, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br i1 %free_task_storage.0.off0.lcssa, label %do.end50, label %rcu_read_unlock.exit97.cleanup_crit_edge

rcu_read_unlock.exit97.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end50:                                         ; preds = %rcu_read_unlock.exit97
  call void @__sanitizer_cov_trace_pc() #8
  %rcu = getelementptr inbounds %struct.bpf_local_storage, ptr %5, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 72 to ptr)) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %rcu_read_unlock.exit97.cleanup_crit_edge, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_selem_unlink_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_selem_unlink_storage_nolock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_task_storage_get(i64 noundef %map, i64 noundef %task, i64 noundef %value, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %task to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %value to i32
  %2 = inttoptr i32 %conv2 to ptr
  %call.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end33.i_crit_edge

entry.if.end33.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end33.i_crit_edge

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i, label %land.rhs.i, label %lor.rhs.i.if.end33.i_crit_edge

lor.rhs.i.if.end33.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %.b71.i = load i1, ptr @____bpf_task_storage_get.__already_done, align 1
  br i1 %.b71.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then.i, !prof !55

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @____bpf_task_storage_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef null) #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end33.i_crit_edge, %lor.rhs.i.if.end33.i_crit_edge, %lor.lhs.false.i.if.end33.i_crit_edge, %entry.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %flags)
  %tobool41.not.i = icmp ugt i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool44.not.i = icmp eq i32 %conv1, 0
  %or.cond75.i = or i1 %tobool44.not.i, %tobool41.not.i
  br i1 %or.cond75.i, label %if.end33.i.____bpf_task_storage_get.exit_crit_edge, label %if.end46.i

if.end33.i.____bpf_task_storage_get.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %____bpf_task_storage_get.exit

if.end46.i:                                       ; preds = %if.end33.i
  tail call void @migrate_disable() #6
  %3 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %8, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %9 = inttoptr i32 %add.i.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add7.i.i = add i32 %11, 1
  store i32 %add7.i.i, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i.i, label %if.end49.i, label %bpf_task_storage_trylock.exit.i, !prof !55

bpf_task_storage_trylock.exit.i:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i, align 4
  %arrayidx26.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx26.i.i, align 4
  %add27.i.i = add i32 %15, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %16 = inttoptr i32 %add27.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add28.i.i = add i32 %18, -1
  store i32 %add28.i.i, ptr %16, align 4
  tail call void @migrate_enable() #6
  br label %____bpf_task_storage_get.exit

if.end49.i:                                       ; preds = %if.end46.i
  %call50.i = tail call fastcc ptr @task_storage_lookup(ptr noundef nonnull %1, ptr noundef %0, i1 noundef zeroext true) #6
  %tobool51.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool51.not.i, label %if.end53.i, label %if.end49.i.unlock.i_crit_edge

if.end49.i.unlock.i_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.i

if.end53.i:                                       ; preds = %if.end49.i
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage.i, i32 noundef 4) #6
  %19 = ptrtoint ptr %usage.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %usage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool55.not.i = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %tobool57.not.i = icmp eq i64 %flags, 0
  %or.cond.i = or i1 %tobool57.not.i, %tobool55.not.i
  br i1 %or.cond.i, label %if.end53.i.unlock.i_crit_edge, label %if.then58.i

if.end53.i.unlock.i_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.i

if.then58.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %call59.i = tail call ptr @bpf_local_storage_update(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %2, i64 noundef 1) #6
  br label %unlock.i

unlock.i:                                         ; preds = %if.then58.i, %if.end53.i.unlock.i_crit_edge, %if.end49.i.unlock.i_crit_edge
  %sdata.0.i = phi ptr [ %call50.i, %if.end49.i.unlock.i_crit_edge ], [ %call59.i, %if.then58.i ], [ null, %if.end53.i.unlock.i_crit_edge ]
  %21 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i76.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i76.i to ptr
  %cpu.i77.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i77.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i77.i, align 4
  %arrayidx.i78.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i78.i, align 4
  %add.i79.i = add i32 %26, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %27 = inttoptr i32 %add.i79.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add7.i80.i = add i32 %29, -1
  store i32 %add7.i80.i, ptr %27, align 4
  tail call void @migrate_enable() #6
  %tobool.not.i.i = icmp eq ptr %sdata.0.i, null
  %cmp.i.i = icmp ugt ptr %sdata.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  %data.i = getelementptr inbounds %struct.bpf_local_storage_data, ptr %sdata.0.i, i32 0, i32 2
  %30 = ptrtoint ptr %data.i to i32
  %31 = zext i32 %30 to i64
  %conv.i = select i1 %spec.select.i.i, i64 0, i64 %31
  br label %____bpf_task_storage_get.exit

____bpf_task_storage_get.exit:                    ; preds = %unlock.i, %bpf_task_storage_trylock.exit.i, %if.end33.i.____bpf_task_storage_get.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %unlock.i ], [ 0, %if.end33.i.____bpf_task_storage_get.exit_crit_edge ], [ 0, %bpf_task_storage_trylock.exit.i ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_task_storage_delete(i64 noundef %map, i64 noundef %task, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %task to i32
  %1 = inttoptr i32 %conv1 to ptr
  %call.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end33.i_crit_edge

entry.if.end33.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end33.i_crit_edge

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i, label %land.rhs.i, label %lor.rhs.i.if.end33.i_crit_edge

lor.rhs.i.if.end33.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %.b51.i = load i1, ptr @____bpf_task_storage_delete.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then.i, !prof !55

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @____bpf_task_storage_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 266, i32 noundef 9, ptr noundef null) #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end33.i_crit_edge, %lor.rhs.i.if.end33.i_crit_edge, %lor.lhs.false.i.if.end33.i_crit_edge, %entry.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool41.not.i = icmp eq i32 %conv1, 0
  br i1 %tobool41.not.i, label %if.end33.i.____bpf_task_storage_delete.exit_crit_edge, label %if.end43.i

if.end33.i.____bpf_task_storage_delete.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %____bpf_task_storage_delete.exit

if.end43.i:                                       ; preds = %if.end33.i
  tail call void @migrate_disable() #6
  %2 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %7, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %8 = inttoptr i32 %add.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %add7.i.i = add i32 %10, 1
  store i32 %add7.i.i, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i.i, label %if.end46.i, label %bpf_task_storage_trylock.exit.i, !prof !55

bpf_task_storage_trylock.exit.i:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx26.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx26.i.i, align 4
  %add27.i.i = add i32 %14, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %15 = inttoptr i32 %add27.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add28.i.i = add i32 %17, -1
  store i32 %add28.i.i, ptr %15, align 4
  tail call void @migrate_enable() #6
  br label %____bpf_task_storage_delete.exit

if.end46.i:                                       ; preds = %if.end43.i
  %call.i.i = tail call fastcc ptr @task_storage_lookup(ptr noundef nonnull %1, ptr noundef %0, i1 noundef zeroext false) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end46.i.task_storage_delete.exit.i_crit_edge, label %if.end.i.i

if.end46.i.task_storage_delete.exit.i_crit_edge:  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %task_storage_delete.exit.i

if.end.i.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 -128
  tail call void @bpf_selem_unlink(ptr noundef %add.ptr.i.i) #6
  br label %task_storage_delete.exit.i

task_storage_delete.exit.i:                       ; preds = %if.end.i.i, %if.end46.i.task_storage_delete.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ -2, %if.end46.i.task_storage_delete.exit.i_crit_edge ]
  %18 = tail call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i55.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i55.i to ptr
  %cpu.i56.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i56.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i56.i, align 4
  %arrayidx.i57.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i57.i, align 4
  %add.i58.i = add i32 %23, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %24 = inttoptr i32 %add.i58.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add7.i59.i = add i32 %26, -1
  store i32 %add7.i59.i, ptr %24, align 4
  tail call void @migrate_enable() #6
  %conv.i = sext i32 %retval.0.i.i to i64
  br label %____bpf_task_storage_delete.exit

____bpf_task_storage_delete.exit:                 ; preds = %task_storage_delete.exit.i, %bpf_task_storage_trylock.exit.i, %if.end33.i.____bpf_task_storage_delete.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %task_storage_delete.exit.i ], [ -22, %if.end33.i.____bpf_task_storage_delete.exit_crit_edge ], [ -16, %bpf_task_storage_trylock.exit.i ]
  ret i64 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_local_storage_map_alloc_check(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @task_storage_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bpf_local_storage_map_alloc(ptr noundef %attr) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call zeroext i16 @bpf_local_storage_cache_idx_get(ptr noundef nonnull @task_cache) #6
  %cache_idx = getelementptr inbounds %struct.bpf_local_storage_map, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %cache_idx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call3, ptr %cache_idx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @task_storage_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_idx = getelementptr inbounds %struct.bpf_local_storage_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %cache_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cache_idx, align 2
  tail call void @bpf_local_storage_cache_idx_free(ptr noundef nonnull @task_cache, i16 noundef zeroext %1) #6
  tail call void @bpf_local_storage_map_free(ptr noundef %map, ptr noundef nonnull @bpf_task_storage_busy) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @notsupp_get_next_key(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %next_key) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_pid_task_storage_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %f_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f_flags) #6
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %f_flags, align 4, !annotation !56
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key, align 4
  %call = call ptr @pidfd_get_pid(i32 noundef %2, ptr noundef nonnull %f_flags) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.rhs:                                         ; preds = %if.end
  %.b62 = load i1, ptr @bpf_pid_task_storage_lookup_elem.__already_done, align 1
  br i1 %.b62, label %land.rhs.if.end34_crit_edge, label %if.then12, !prof !55

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bpf_pid_task_storage_lookup_elem.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %land.rhs.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %call42 = call ptr @pid_task(ptr noundef %call, i32 noundef 0) #6
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @put_pid(ptr noundef %call) #6
  br label %cleanup

if.end45:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @migrate_disable() #6
  %3 = call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %9 = inttoptr i32 %add.i to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add7.i = add i32 %11, 1
  store i32 %add7.i, ptr %9, align 4
  %call46 = call fastcc ptr @task_storage_lookup(ptr noundef nonnull %call42, ptr noundef %map, i1 noundef zeroext true)
  %12 = call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i63 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i63 to ptr
  %cpu.i64 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i64, align 4
  %arrayidx.i65 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i65, align 4
  %add.i66 = add i32 %17, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %18 = inttoptr i32 %add.i66 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add7.i67 = add i32 %20, -1
  store i32 %add7.i67, ptr %18, align 4
  call void @migrate_enable() #6
  call void @put_pid(ptr noundef %call) #6
  %tobool47.not = icmp eq ptr %call46, null
  %data = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call46, i32 0, i32 2
  %spec.select = select i1 %tobool47.not, ptr null, ptr %data
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then44, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.end45 ], [ inttoptr (i32 -2 to ptr), %if.then44 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_flags) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_pid_task_storage_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %map_flags) #0 align 64 {
entry:
  %f_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f_flags) #6
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %f_flags, align 4, !annotation !56
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key, align 4
  %call = call ptr @pidfd_get_pid(i32 noundef %2, ptr noundef nonnull %f_flags) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.rhs:                                         ; preds = %if.end
  %.b59 = load i1, ptr @bpf_pid_task_storage_update_elem.__already_done, align 1
  br i1 %.b59, label %land.rhs.if.end34_crit_edge, label %if.then12, !prof !55

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bpf_pid_task_storage_update_elem.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 9, ptr noundef null) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %land.rhs.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %call42 = call ptr @pid_task(ptr noundef %call, i32 noundef 0) #6
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end34.out_crit_edge, label %if.end45

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end45:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  call void @migrate_disable() #6
  %4 = call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add7.i = add i32 %12, 1
  store i32 %add7.i, ptr %10, align 4
  %call46 = call ptr @bpf_local_storage_update(ptr noundef nonnull %call42, ptr noundef %map, ptr noundef %value, i64 noundef %map_flags) #6
  %13 = call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i60 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i60 to ptr
  %cpu.i61 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i61, align 4
  %arrayidx.i62 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i62, align 4
  %add.i63 = add i32 %18, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %19 = inttoptr i32 %add.i63 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add7.i64 = add i32 %21, -1
  store i32 %add7.i64, ptr %19, align 4
  call void @migrate_enable() #6
  %cmp.i.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call46 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %22, i32 0
  br label %out

out:                                              ; preds = %if.end45, %if.end34.out_crit_edge
  %err.0 = phi i32 [ %spec.select.i, %if.end45 ], [ -2, %if.end34.out_crit_edge ]
  call void @put_pid(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %err.0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_flags) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_pid_task_storage_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %f_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f_flags) #6
  %0 = ptrtoint ptr %f_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %f_flags, align 4, !annotation !56
  %1 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %key, align 4
  %call = call ptr @pidfd_get_pid(i32 noundef %2, ptr noundef nonnull %f_flags) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.rhs:                                         ; preds = %if.end
  %.b57 = load i1, ptr @bpf_pid_task_storage_delete_elem.__already_done, align 1
  br i1 %.b57, label %land.rhs.if.end34_crit_edge, label %if.then12, !prof !55

land.rhs.if.end34_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bpf_pid_task_storage_delete_elem.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 9, ptr noundef null) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %land.rhs.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %call42 = call ptr @pid_task(ptr noundef %call, i32 noundef 0) #6
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end34.out_crit_edge, label %if.end45

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end45:                                         ; preds = %if.end34
  call void @migrate_disable() #6
  %4 = call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add7.i = add i32 %12, 1
  store i32 %add7.i, ptr %10, align 4
  %call.i = call fastcc ptr @task_storage_lookup(ptr noundef nonnull %call42, ptr noundef %map, i1 noundef zeroext false) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end45.task_storage_delete.exit_crit_edge, label %if.end.i

if.end45.task_storage_delete.exit_crit_edge:      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %task_storage_delete.exit

if.end.i:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -128
  call void @bpf_selem_unlink(ptr noundef %add.ptr.i) #6
  br label %task_storage_delete.exit

task_storage_delete.exit:                         ; preds = %if.end.i, %if.end45.task_storage_delete.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -2, %if.end45.task_storage_delete.exit_crit_edge ]
  %13 = call i32 @llvm.read_register.i32(metadata !43) #6
  %and.i.i58 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i58 to ptr
  %cpu.i59 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i59 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i59, align 4
  %arrayidx.i60 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i60, align 4
  %add.i61 = add i32 %18, ptrtoint (ptr @bpf_task_storage_busy to i32)
  %19 = inttoptr i32 %add.i61 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add7.i62 = add i32 %21, -1
  store i32 %add7.i62, ptr %19, align 4
  call void @migrate_enable() #6
  br label %out

out:                                              ; preds = %task_storage_delete.exit, %if.end34.out_crit_edge
  %err.0 = phi i32 [ %retval.0.i, %task_storage_delete.exit ], [ -2, %if.end34.out_crit_edge ]
  call void @put_pid(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %err.0, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f_flags) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_local_storage_map_check_btf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @task_storage_ptr(ptr noundef readnone %owner) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_storage = getelementptr inbounds %struct.task_struct, ptr %owner, i32 0, i32 216
  ret ptr %bpf_storage
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @task_storage_lookup(ptr noundef %task, ptr noundef %map, i1 noundef zeroext %cacheit_lockit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_storage = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 216
  %0 = ptrtoint ptr %bpf_storage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bpf_storage, align 4
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

lor.lhs.false:                                    ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.do.end15_crit_edge

lor.lhs.false4.do.end15_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false7.do.end15_crit_edge

lor.lhs.false7.do.end15_crit_edge:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true12

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b24 = load i1, ptr @task_storage_lookup.__warned, align 1
  br i1 %.b24, label %land.lhs.true12.do.end15_crit_edge, label %if.then

land.lhs.true12.do.end15_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @task_storage_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 64, ptr noundef nonnull @.str.1) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then, %land.lhs.true12.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %lor.lhs.false7.do.end15_crit_edge, %lor.lhs.false4.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge, %entry.do.end15_crit_edge
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %do.end15.cleanup_crit_edge, label %if.end19

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call ptr @bpf_local_storage_lookup(ptr noundef nonnull %1, ptr noundef %map, i1 noundef zeroext %cacheit_lockit) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end15.cleanup_crit_edge
  %retval.0 = phi ptr [ %call21, %if.end19 ], [ null, %do.end15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_local_storage_update(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_local_storage_lookup(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_selem_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_local_storage_map_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bpf_local_storage_cache_idx_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_local_storage_cache_idx_free(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_local_storage_map_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pidfd_get_pid(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pid_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../kernel/bpf/bpf_task_storage.c", i32 82, i32 18}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/bpf/bpf_task_storage.c", i32 319, i32 18}
!6 = !{ptr @task_storage_map_ops, !7, !"task_storage_map_ops", i1 false, i1 false}
!7 = !{!"../kernel/bpf/bpf_task_storage.c", i32 309, i32 26}
!8 = !{ptr @bpf_task_storage_get_proto, !9, !"bpf_task_storage_get_proto", i1 false, i1 false}
!9 = !{!"../kernel/bpf/bpf_task_storage.c", i32 324, i32 29}
!10 = !{ptr @bpf_task_storage_delete_proto, !11, !"bpf_task_storage_delete_proto", i1 false, i1 false}
!11 = !{!"../kernel/bpf/bpf_task_storage.c", i32 335, i32 29}
!12 = !{ptr @__pcpu_unique_bpf_task_storage_busy, !13, !"__pcpu_unique_bpf_task_storage_busy", i1 false, i1 false}
!13 = !{!"../kernel/bpf/bpf_task_storage.c", i32 24, i32 8}
!14 = !{ptr @bpf_task_storage_busy, !13, !"bpf_task_storage_busy", i1 false, i1 false}
!15 = !{ptr @task_storage_map_btf_id, !16, !"task_storage_map_btf_id", i1 false, i1 false}
!16 = !{!"../kernel/bpf/bpf_task_storage.c", i32 308, i32 12}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/bpf/bpf_task_storage.c", i32 29, i32 2}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../kernel/bpf/bpf_task_storage.c", i32 234, i32 2}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/bpf/bpf_task_storage.c", i32 41, i32 6}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../kernel/bpf/bpf_task_storage.c", i32 64, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../kernel/bpf/bpf_task_storage.c", i32 266, i32 2}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/bpf/bpf_task_storage.c", i32 22, i32 1}
!36 = !{ptr @task_cache, !35, !"task_cache", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/bpf/bpf_task_storage.c", i32 134, i32 2}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../kernel/bpf/bpf_task_storage.c", i32 168, i32 2}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../kernel/bpf/bpf_task_storage.c", i32 214, i32 2}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2149176938}
!54 = !{i64 2149177204}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{!"auto-init"}
