; ModuleID = '/llk/IR_all_yes/kernel/bpf/task_iter.c_pt.bc'
source_filename = "../kernel/bpf/task_iter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.163, %union.anon.165, ptr, ptr }
%union.anon.163 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32, i32 }
%union.anon.165 = type { %struct.anon.164 }
%struct.anon.164 = type { ptr, ptr, ptr, ptr, ptr }
%struct.mmap_unlock_irq_work = type { %struct.irq_work, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.129 }
%struct.atomic_t = type { i32 }
%union.anon.129 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bpf_iter_reg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.bpf_ctx_arg_aux], ptr }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_iter_seq_info = type { ptr, ptr, ptr, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.118, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.118 = type { %struct.callback_head }
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
%struct.anon.26 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.27, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.bpf_iter_seq_task_info = type { %struct.bpf_iter_seq_task_common, i32 }
%struct.bpf_iter_seq_task_common = type { ptr }
%struct.bpf_iter_meta = type { %union.anon, i64, i64 }
%union.anon = type { i64 }
%struct.bpf_iter__task = type { %union.anon.176, %union.anon.177 }
%union.anon.176 = type { i64 }
%union.anon.177 = type { i64 }
%struct.bpf_iter_seq_task_file_info = type { %struct.bpf_iter_seq_task_common, ptr, i32, i32 }
%struct.bpf_iter__task_file = type { %union.anon.178, %union.anon.179, i32, %union.anon.180 }
%union.anon.178 = type { i64 }
%union.anon.179 = type { i64 }
%union.anon.180 = type { i64 }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.bpf_iter__task_vma = type { %union.anon.181, %union.anon.182, %union.anon.183 }
%union.anon.181 = type { i64 }
%union.anon.182 = type { i64 }
%union.anon.183 = type { i64 }
%struct.bpf_iter_seq_task_vma_info = type { %struct.bpf_iter_seq_task_common, ptr, ptr, i32, i32, i32 }

@btf_tracing_ids = external dso_local global [0 x i32], align 4
@bpf_find_vma_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_find_vma, i8 0, i8 0, i32 0, %union.anon.163 { %struct.anon.162 { i32 16, i32 10, i32 21, i32 278, i32 10 } }, %union.anon.165 { %struct.anon.164 { ptr @btf_tracing_ids, ptr null, ptr null, ptr null, ptr null } }, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_task_iter__399_670_task_iter_init7 = internal global ptr @task_iter_init, section ".initcall7.init", align 4
@__pcpu_scope_mmap_unlock_work = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_mmap_unlock_work = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@mmap_unlock_work = weak dso_local global %struct.mmap_unlock_irq_work zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@task_reg_info = internal global { %struct.bpf_iter_reg, [36 x i8] } { %struct.bpf_iter_reg { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 1, [2 x %struct.bpf_ctx_arg_aux] [%struct.bpf_ctx_arg_aux { i32 8, i32 272, i32 0 }, %struct.bpf_ctx_arg_aux zeroinitializer], ptr @task_seq_info }, [36 x i8] zeroinitializer }, align 32
@task_file_reg_info = internal global { %struct.bpf_iter_reg, [36 x i8] } { %struct.bpf_iter_reg { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, i32 1, [2 x %struct.bpf_ctx_arg_aux] [%struct.bpf_ctx_arg_aux { i32 8, i32 272, i32 0 }, %struct.bpf_ctx_arg_aux { i32 24, i32 272, i32 0 }], ptr @task_file_seq_info }, [36 x i8] zeroinitializer }, align 32
@task_vma_reg_info = internal global { %struct.bpf_iter_reg, [36 x i8] } { %struct.bpf_iter_reg { ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, i32 2, i32 1, [2 x %struct.bpf_ctx_arg_aux] [%struct.bpf_ctx_arg_aux { i32 8, i32 272, i32 0 }, %struct.bpf_ctx_arg_aux { i32 16, i32 272, i32 0 }], ptr @task_vma_seq_info }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"task\00", [27 x i8] zeroinitializer }, align 32
@task_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @task_seq_ops, ptr @init_seq_pidns, ptr @fini_seq_pidns, i32 8 }, [16 x i8] zeroinitializer }, align 32
@task_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @task_seq_start, ptr @task_seq_stop, ptr @task_seq_next, ptr @task_seq_show }, [16 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@init_pid_ns = external dso_local global %struct.pid_namespace, align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"task_file\00", [22 x i8] zeroinitializer }, align 32
@task_file_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @task_file_seq_ops, ptr @init_seq_pidns, ptr @fini_seq_pidns, i32 16 }, [16 x i8] zeroinitializer }, align 32
@task_file_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @task_file_seq_start, ptr @task_file_seq_stop, ptr @task_file_seq_next, ptr @task_file_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"task_vma\00", [23 x i8] zeroinitializer }, align 32
@task_vma_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @task_vma_seq_ops, ptr @init_seq_pidns, ptr @fini_seq_pidns, i32 24 }, [16 x i8] zeroinitializer }, align 32
@task_vma_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @task_vma_seq_start, ptr @task_vma_seq_stop, ptr @task_vma_seq_next, ptr @task_vma_seq_show }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"bpf_find_vma_proto\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 621, i32 29 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"task_reg_info\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 535, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"task_file_reg_info\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 553, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"task_vma_reg_info\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 573, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 536, i32 14 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"task_seq_info\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 528, i32 39 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"task_seq_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 121, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 695, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 723, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 554, i32 14 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"task_file_seq_info\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 546, i32 39 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"task_file_seq_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 283, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 574, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"task_vma_seq_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 566, i32 39 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"task_vma_seq_ops\00", align 1
@___asan_gen_.53 = private constant [26 x i8] c"../kernel/bpf/task_iter.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 521, i32 36 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__initcall__kmod_task_iter__399_670_task_iter_init7, ptr @bpf_find_vma_proto, ptr @task_reg_info, ptr @task_file_reg_info, ptr @task_vma_reg_info, ptr @.str.1, ptr @task_seq_info, ptr @task_seq_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @task_file_seq_info, ptr @task_file_seq_ops, ptr @.str.6, ptr @task_vma_seq_info, ptr @task_vma_seq_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_find_vma_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_reg_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_file_reg_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_vma_reg_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_file_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_file_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_vma_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_vma_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_task(ptr nocapture noundef readnone %meta, ptr nocapture noundef readnone %task) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_task_file(ptr nocapture noundef readnone %meta, ptr nocapture noundef readnone %task, i32 noundef %fd, ptr nocapture noundef readnone %file) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_task_vma(ptr nocapture noundef readnone %meta, ptr nocapture noundef readnone %task, ptr nocapture noundef readnone %vma) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_find_vma(i64 noundef %task, i64 noundef %start, i64 noundef %callback_fn, i64 noundef %callback_ctx, i64 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %task to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %callback_fn to i32
  %1 = inttoptr i32 %conv1 to ptr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %tobool.not.i = icmp eq i64 %flags, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.____bpf_find_vma.exit_crit_edge

entry.____bpf_find_vma.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %____bpf_find_vma.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool1.not.i = icmp eq i32 %conv, 0
  br i1 %tobool1.not.i, label %if.end.i.____bpf_find_vma.exit_crit_edge, label %if.end3.i

if.end.i.____bpf_find_vma.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %____bpf_find_vma.exit

if.end3.i:                                        ; preds = %if.end.i
  %mm4.i = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 53
  %2 = ptrtoint ptr %mm4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm4.i, align 8
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %if.end3.i.____bpf_find_vma.exit_crit_edge, label %if.end7.i

if.end3.i.____bpf_find_vma.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %____bpf_find_vma.exit

if.end7.i:                                        ; preds = %if.end3.i
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !52
  %and.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end7.i.lor.lhs.false.i_crit_edge, label %bpf_mmap_unlock_get_irq_work.exit.i

if.end7.i.lor.lhs.false.i_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

bpf_mmap_unlock_get_irq_work.exit.i:              ; preds = %if.end7.i
  %5 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i21.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i21.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %10, ptrtoint (ptr @mmap_unlock_work to i32)
  %11 = inttoptr i32 %add.i.i to ptr
  %12 = getelementptr inbounds %struct.__call_single_node, ptr %11, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %12, i32 noundef 4) #10
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i22.i.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and.i22.i.i, 0
  br i1 %tobool.i.i.not.i, label %bpf_mmap_unlock_get_irq_work.exit.i.lor.lhs.false.i_crit_edge, label %bpf_mmap_unlock_get_irq_work.exit.i.____bpf_find_vma.exit_crit_edge

bpf_mmap_unlock_get_irq_work.exit.i.____bpf_find_vma.exit_crit_edge: ; preds = %bpf_mmap_unlock_get_irq_work.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %____bpf_find_vma.exit

bpf_mmap_unlock_get_irq_work.exit.i.lor.lhs.false.i_crit_edge: ; preds = %bpf_mmap_unlock_get_irq_work.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %bpf_mmap_unlock_get_irq_work.exit.i.lor.lhs.false.i_crit_edge, %if.end7.i.lor.lhs.false.i_crit_edge
  %work.0.i45.i = phi ptr [ %11, %bpf_mmap_unlock_get_irq_work.exit.i.lor.lhs.false.i_crit_edge ], [ null, %if.end7.i.lor.lhs.false.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@bpf_find_vma, %if.then.i.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i.i [label %if.then.i.i.i], !srcloc !53

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %3, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i.i

__mmap_lock_trace_start_locking.exit.i.i:         ; preds = %if.then.i.i.i, %lor.lhs.false.i
  %mmap_lock.i.i = getelementptr inbounds %struct.anon.26, ptr %3, i32 0, i32 15
  %call.i.i = tail call i32 @down_read_trylock(ptr noundef %mmap_lock.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp ne i32 %call.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@bpf_find_vma, %if.then.i5.i.i)) #10
          to label %mmap_read_trylock.exit.i [label %if.then.i5.i.i], !srcloc !53

if.then.i5.i.i:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %3, i1 noundef zeroext false, i1 noundef zeroext %cmp.i.i) #10
  br label %mmap_read_trylock.exit.i

mmap_read_trylock.exit.i:                         ; preds = %if.then.i5.i.i, %__mmap_lock_trace_start_locking.exit.i.i
  br i1 %cmp.i.i, label %if.end11.i, label %mmap_read_trylock.exit.i.____bpf_find_vma.exit_crit_edge

mmap_read_trylock.exit.i.____bpf_find_vma.exit_crit_edge: ; preds = %mmap_read_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %____bpf_find_vma.exit

if.end11.i:                                       ; preds = %mmap_read_trylock.exit.i
  %conv.i = trunc i64 %start to i32
  %call12.i = tail call ptr @find_vma(ptr noundef nonnull %3, i32 noundef %conv.i) #10
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end25.i_crit_edge, label %land.lhs.true.i

if.end11.i.if.end25.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

land.lhs.true.i:                                  ; preds = %if.end11.i
  %15 = ptrtoint ptr %call12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call12.i, align 4
  %conv14.i = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv14.i, i64 %start)
  %cmp.not.i = icmp ugt i64 %conv14.i, %start
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end25.i_crit_edge, label %land.lhs.true16.i

land.lhs.true.i.if.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %call12.i, i32 0, i32 1
  %17 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_end.i, align 4
  %conv17.i = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv17.i, i64 %start)
  %cmp18.i = icmp ugt i64 %conv17.i, %start
  br i1 %cmp18.i, label %if.then20.i, label %land.lhs.true16.i.if.end25.i_crit_edge

land.lhs.true16.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then20.i:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv21.i = sext i32 %conv to i64
  %19 = ptrtoint ptr %call12.i to i32
  %conv22.i = sext i32 %19 to i64
  %20 = shl i64 %callback_ctx, 32
  %conv23.i = ashr exact i64 %20, 32
  %call24.i = tail call i64 %1(i64 noundef %conv21.i, i64 noundef %conv22.i, i64 noundef %conv23.i, i64 noundef 0, i64 noundef 0) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %land.lhs.true16.i.if.end25.i_crit_edge, %land.lhs.true.i.if.end25.i_crit_edge, %if.end11.i.if.end25.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then20.i ], [ -2, %land.lhs.true16.i.if.end25.i_crit_edge ], [ -2, %land.lhs.true.i.if.end25.i_crit_edge ], [ -2, %if.end11.i.if.end25.i_crit_edge ]
  %tobool.not.i41.i = icmp eq ptr %work.0.i45.i, null
  br i1 %tobool.not.i41.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end25.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@bpf_find_vma, %if.then.i.i.i.i)) #10
          to label %mmap_read_unlock.exit.i.i [label %if.then.i.i.i.i], !srcloc !53

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %3, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit.i.i

mmap_read_unlock.exit.i.i:                        ; preds = %if.then.i.i.i.i, %if.then.i.i
  tail call void @up_read(ptr noundef %mmap_lock.i.i) #10
  br label %bpf_mmap_unlock_mm.exit.i

if.else.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %mm1.i.i = getelementptr inbounds %struct.mmap_unlock_irq_work, ptr %work.0.i45.i, i32 0, i32 1
  %21 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %mm1.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon.26, ptr %3, i32 0, i32 15, i32 6
  %22 = tail call ptr @llvm.returnaddress(i32 0) #10
  %23 = ptrtoint ptr %22 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %23) #10
  %call.i42.i = tail call zeroext i1 @irq_work_queue(ptr noundef nonnull %work.0.i45.i) #10
  br label %bpf_mmap_unlock_mm.exit.i

bpf_mmap_unlock_mm.exit.i:                        ; preds = %if.else.i.i, %mmap_read_unlock.exit.i.i
  %conv26.i = sext i32 %ret.0.i to i64
  br label %____bpf_find_vma.exit

____bpf_find_vma.exit:                            ; preds = %bpf_mmap_unlock_mm.exit.i, %mmap_read_trylock.exit.i.____bpf_find_vma.exit_crit_edge, %bpf_mmap_unlock_get_irq_work.exit.i.____bpf_find_vma.exit_crit_edge, %if.end3.i.____bpf_find_vma.exit_crit_edge, %if.end.i.____bpf_find_vma.exit_crit_edge, %entry.____bpf_find_vma.exit_crit_edge
  %retval.0.i = phi i64 [ %conv26.i, %bpf_mmap_unlock_mm.exit.i ], [ -22, %entry.____bpf_find_vma.exit_crit_edge ], [ -2, %if.end.i.____bpf_find_vma.exit_crit_edge ], [ -2, %if.end3.i.____bpf_find_vma.exit_crit_edge ], [ -16, %mmap_read_trylock.exit.i.____bpf_find_vma.exit_crit_edge ], [ -16, %bpf_mmap_unlock_get_irq_work.exit.i.____bpf_find_vma.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @task_iter_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %0)
  %cmp16 = icmp ult i32 %call15, %0
  br i1 %cmp16, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call17 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call15, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call17
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @mmap_unlock_work to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @do_mmap_read_unlock, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %3, i32 12
  %7 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call17, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %8
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_tracing_ids to i32))
  %9 = load i32, ptr @btf_tracing_ids, align 4
  store i32 %9, ptr getelementptr inbounds (%struct.bpf_iter_reg, ptr @task_reg_info, i32 0, i32 8, i32 0, i32 2), align 4
  %call2 = tail call i32 @bpf_iter_reg_target(ptr noundef nonnull @task_reg_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_tracing_ids to i32))
  %10 = load i32, ptr @btf_tracing_ids, align 4
  store i32 %10, ptr getelementptr inbounds (%struct.bpf_iter_reg, ptr @task_file_reg_info, i32 0, i32 8, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @btf_tracing_ids, i32 0, i32 1) to i32))
  %11 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @btf_tracing_ids, i32 0, i32 1), align 4
  store i32 %11, ptr getelementptr inbounds (%struct.bpf_iter_reg, ptr @task_file_reg_info, i32 0, i32 8, i32 1, i32 2), align 4
  %call3 = tail call i32 @bpf_iter_reg_target(ptr noundef nonnull @task_file_reg_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @btf_tracing_ids to i32))
  %12 = load i32, ptr @btf_tracing_ids, align 4
  store i32 %12, ptr getelementptr inbounds (%struct.bpf_iter_reg, ptr @task_vma_reg_info, i32 0, i32 8, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x i32], ptr @btf_tracing_ids, i32 0, i32 2) to i32))
  %13 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @btf_tracing_ids, i32 0, i32 2), align 4
  store i32 %13, ptr getelementptr inbounds (%struct.bpf_iter_reg, ptr @task_vma_reg_info, i32 0, i32 8, i32 1, i32 2), align 4
  %call7 = tail call i32 @bpf_iter_reg_target(ptr noundef nonnull @task_vma_reg_info) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ %call2, %for.end.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_mmap_read_unlock(ptr nocapture noundef readonly %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr inbounds %struct.mmap_unlock_irq_work, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@do_mmap_read_unlock, %if.then.i.i)) #10
          to label %mmap_read_unlock_non_owner.exit [label %if.then.i.i], !srcloc !53

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext false) #10
  br label %mmap_read_unlock_non_owner.exit

mmap_read_unlock_non_owner.exit:                  ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.26, ptr %1, i32 0, i32 15
  tail call void @up_read_non_owner(ptr noundef %mmap_lock.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_reg_target(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read_non_owner(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_seq_pidns(ptr nocapture noundef writeonly %priv_data, ptr nocapture noundef readnone %aux) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call ptr @task_active_pid_ns(ptr noundef %3) #10
  %cmp.not.i = icmp eq ptr %call1, @init_pid_ns
  br i1 %cmp.not.i, label %entry.get_pid_ns.exit_crit_edge, label %if.then.i

entry.get_pid_ns.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid_ns.exit

if.then.i:                                        ; preds = %entry
  %count.i = getelementptr inbounds %struct.pid_namespace, ptr %call1, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !54
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !55

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !56

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_pid_ns.exit_crit_edge:        ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_pid_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_pid_ns.exit

get_pid_ns.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_pid_ns.exit_crit_edge, %entry.get_pid_ns.exit_crit_edge
  %6 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %priv_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fini_seq_pidns(ptr nocapture noundef readonly %priv_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  tail call void @put_pid_ns(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @task_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tid = getelementptr inbounds %struct.bpf_iter_seq_task_info, ptr %1, i32 0, i32 1
  %call = tail call fastcc ptr @task_seq_get_next(ptr noundef %3, ptr noundef %tid, i1 noundef zeroext false)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %if.then1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @task_seq_stop(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  %ctx.i = alloca %struct.bpf_iter__task, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #10
  %0 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx.i) #10
  %1 = call ptr @memset(ptr %ctx.i, i32 255, i32 16)
  %2 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext true) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.__task_seq_show.exit_crit_edge, label %if.end.i

if.then.__task_seq_show.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__task_seq_show.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = getelementptr inbounds %struct.bpf_iter__task, ptr %ctx.i, i32 0, i32 1
  %4 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %seq, ptr %meta.i, align 8
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta.i, ptr %ctx.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %3, align 8
  %call2.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #10
  br label %__task_seq_show.exit

__task_seq_show.exit:                             ; preds = %if.end.i, %if.then.__task_seq_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %v, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !56

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @__put_task_struct(ptr noundef nonnull %v) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %__task_seq_show.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @task_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %tid = getelementptr inbounds %struct.bpf_iter_seq_task_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid, align 4
  %inc1 = add i32 %5, 1
  store i32 %inc1, ptr %tid, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %v, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !56

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @__put_task_struct(ptr noundef %v) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call = tail call fastcc ptr @task_seq_get_next(ptr noundef %8, ptr noundef %tid, i1 noundef zeroext false)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @task_seq_show(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  %ctx.i = alloca %struct.bpf_iter__task, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #10
  %0 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx.i) #10
  %1 = call ptr @memset(ptr %ctx.i, i32 255, i32 16)
  %2 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext false) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %entry.__task_seq_show.exit_crit_edge, label %if.end.i

entry.__task_seq_show.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__task_seq_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = getelementptr inbounds %struct.bpf_iter__task, ptr %ctx.i, i32 0, i32 1
  %4 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %seq, ptr %meta.i, align 8
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta.i, ptr %ctx.i, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %v, ptr %3, align 8
  %call2.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #10
  br label %__task_seq_show.exit

__task_seq_show.exit:                             ; preds = %if.end.i, %entry.__task_seq_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ 0, %entry.__task_seq_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @task_seq_get_next(ptr noundef %ns, ptr nocapture noundef %tid, i1 noundef zeroext %skip_if_dup_files) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !60
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid, align 4
  %call34 = tail call ptr @find_ge_pid(i32 noundef %5, ptr noundef %ns) #10
  %tobool.not35 = icmp eq ptr %call34, null
  br i1 %tobool.not35, label %rcu_read_lock.exit.if.end12_crit_edge, label %rcu_read_lock.exit.if.then_crit_edge

rcu_read_lock.exit.if.then_crit_edge:             ; preds = %rcu_read_lock.exit
  br label %if.then

rcu_read_lock.exit.if.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %retry.backedge.if.then_crit_edge, %rcu_read_lock.exit.if.then_crit_edge
  %call36 = phi ptr [ %call, %retry.backedge.if.then_crit_edge ], [ %call34, %rcu_read_lock.exit.if.then_crit_edge ]
  %call1 = tail call i32 @pid_nr_ns(ptr noundef nonnull %call36, ptr noundef %ns) #10
  %6 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1, ptr %tid, align 4
  %call2 = tail call ptr @get_pid_task(ptr noundef nonnull %call36, i32 noundef 0) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.retry.backedge_crit_edge, label %if.else

if.then.retry.backedge_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.then.i24, %if.then10.i.i.i.i, %if.end5.i.i.i.i.retry.backedge_crit_edge, %if.then.retry.backedge_crit_edge
  %7 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %7)
  %storemerge.in = load i32, ptr %tid, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %tid, align 4
  %call = tail call ptr @find_ge_pid(i32 noundef %storemerge, ptr noundef %ns) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %retry.backedge.if.end12_crit_edge, label %retry.backedge.if.then_crit_edge

retry.backedge.if.then_crit_edge:                 ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

retry.backedge.if.end12_crit_edge:                ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.else:                                          ; preds = %if.then
  br i1 %skip_if_dup_files, label %land.lhs.true, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.else
  %exit_signal.i = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 59
  %8 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i = icmp sgt i32 %9, -1
  br i1 %cmp.i, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true7

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %files = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 108
  %10 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %files, align 4
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 75
  %12 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group_leader, align 4
  %files8 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 108
  %14 = ptrtoint ptr %files8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %files8, align 4
  %cmp = icmp eq ptr %11, %15
  br i1 %cmp, label %if.then9, label %land.lhs.true7.if.end12_crit_edge

land.lhs.true7.if.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then9:                                         ; preds = %land.lhs.true7
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call2, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i24, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.retry.backedge_crit_edge, label %if.then10.i.i.i.i, !prof !56

if.end5.i.i.i.i.retry.backedge_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.backedge

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %retry.backedge

if.then.i24:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @__put_task_struct(ptr noundef nonnull %call2) #10
  br label %retry.backedge

if.end12:                                         ; preds = %land.lhs.true7.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.else.if.end12_crit_edge, %retry.backedge.if.end12_crit_edge, %rcu_read_lock.exit.if.end12_crit_edge
  %task.1 = phi ptr [ null, %rcu_read_lock.exit.if.end12_crit_edge ], [ %call2, %land.lhs.true7.if.end12_crit_edge ], [ %call2, %land.lhs.true.if.end12_crit_edge ], [ %call2, %if.else.if.end12_crit_edge ], [ null, %retry.backedge.if.end12_crit_edge ]
  %call.i25 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i25, label %if.end12.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i28

if.end12.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i28:                                ; preds = %if.end12
  %call1.i26 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %tobool.not.i27 = icmp eq i32 %call1.i26, 0
  br i1 %tobool.not.i27, label %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i30

land.lhs.true.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i30:                               ; preds = %land.lhs.true.i28
  %.b4.i29 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i29, label %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, label %if.then.i31

land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i31:                                      ; preds = %land.lhs.true2.i30
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i31, %land.lhs.true2.i30.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i28.rcu_read_unlock.exit_crit_edge, %if.end12.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i.i32 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i32 to ptr
  %preempt_count.i.i.i.i33 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i33, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i33, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %task.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_ge_pid(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pid_task(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_iter_get_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_run_prog(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid_ns(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @task_file_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %task = getelementptr inbounds %struct.bpf_iter_seq_task_file_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %task, align 4
  %call = tail call fastcc ptr @task_file_seq_get_next(ptr noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 1, ptr %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @task_file_seq_stop(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__task_file, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ctx.i) #10
  %2 = call ptr @memset(ptr %ctx.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #10
  %3 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  %4 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext true) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.__task_file_seq_show.exit_crit_edge, label %if.end.i

if.then.__task_file_seq_show.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__task_file_seq_show.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta.i, ptr %ctx.i, align 8
  %task.i = getelementptr inbounds %struct.bpf_iter_seq_task_file_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 4
  %8 = getelementptr inbounds %struct.bpf_iter__task_file, ptr %ctx.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  %fd.i = getelementptr inbounds %struct.bpf_iter_seq_task_file_info, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fd.i, align 4
  %fd2.i = getelementptr inbounds %struct.bpf_iter__task_file, ptr %ctx.i, i32 0, i32 2
  %12 = ptrtoint ptr %fd2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fd2.i, align 8
  %13 = getelementptr inbounds %struct.bpf_iter__task_file, ptr %ctx.i, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %13, align 8
  %call3.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #10
  br label %__task_file_seq_show.exit

__task_file_seq_show.exit:                        ; preds = %if.end.i, %if.then.__task_file_seq_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @fput(ptr noundef nonnull %v) #10
  %task = getelementptr inbounds %struct.bpf_iter_seq_task_file_info, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !56

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @__put_task_struct(ptr noundef %16) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %18 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %task, align 4
  br label %if.end

if.end:                                           ; preds = %put_task_struct.exit, %__task_file_seq_show.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @task_file_seq_next(ptr nocapture noundef readonly %seq, ptr noundef %v, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %fd = getelementptr inbounds %struct.bpf_iter_seq_task_file_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fd, align 4
  %inc1 = add i32 %5, 1
  store i32 %inc1, ptr %fd, align 4
  tail call void @fput(ptr noundef %v) #10
  %call = tail call fastcc ptr @task_file_seq_get_next(ptr noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @task_file_seq_show(ptr noundef %seq, ptr noundef %v) #1 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__task_file, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ctx.i) #10
  %2 = call ptr @memset(ptr %ctx.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #10
  %3 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  %4 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext false) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %entry.__task_file_seq_show.exit_crit_edge, label %if.end.i

entry.__task_file_seq_show.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__task_file_seq_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %meta.i, ptr %ctx.i, align 8
  %task.i = getelementptr inbounds %struct.bpf_iter_seq_task_file_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 4
  %8 = getelementptr inbounds %struct.bpf_iter__task_file, ptr %ctx.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 8
  %fd.i = getelementptr inbounds %struct.bpf_iter_seq_task_file_info, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %fd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fd.i, align 4
  %fd2.i = getelementptr inbounds %struct.bpf_iter__task_file, ptr %ctx.i, i32 0, i32 2
  %12 = ptrtoint ptr %fd2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fd2.i, align 8
  %13 = getelementptr inbounds %struct.bpf_iter__task_file, ptr %ctx.i, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %v, ptr %13, align 8
  %call3.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #10
  br label %__task_file_seq_show.exit

__task_file_seq_show.exit:                        ; preds = %if.end.i, %entry.__task_file_seq_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ 0, %entry.__task_file_seq_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ctx.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @task_file_seq_get_next(ptr nocapture noundef %info) unnamed_addr #1 align 64 {
entry:
  %curr_tid = alloca i32, align 4
  %curr_fd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_tid) #10
  %tid = getelementptr inbounds %struct.bpf_iter_seq_task_file_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tid, align 4
  %4 = ptrtoint ptr %curr_tid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %curr_tid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_fd) #10
  %fd = getelementptr inbounds %struct.bpf_iter_seq_task_file_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fd, align 4
  %7 = ptrtoint ptr %curr_fd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %curr_fd, align 4
  %task = getelementptr inbounds %struct.bpf_iter_seq_task_file_info, ptr %info, i32 0, i32 1
  br label %again

again:                                            ; preds = %put_task_struct.exit, %entry
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fd, align 4
  %12 = ptrtoint ptr %curr_fd to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %curr_fd, align 4
  br label %if.end15

if.else:                                          ; preds = %again
  %call = call fastcc ptr @task_seq_get_next(ptr noundef %1, ptr noundef nonnull %curr_tid, i1 noundef zeroext true)
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %task, align 4
  %14 = ptrtoint ptr %curr_tid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %curr_tid, align 4
  %16 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tid, align 4
  br label %cleanup28

if.end:                                           ; preds = %if.else
  %17 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %task, align 4
  %18 = ptrtoint ptr %curr_tid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %curr_tid, align 4
  %20 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp = icmp eq i32 %19, %21
  br i1 %cmp, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %fd to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fd, align 4
  %24 = ptrtoint ptr %curr_fd to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %curr_fd, align 4
  br label %if.end15

if.else12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %19, ptr %tid, align 4
  %26 = ptrtoint ptr %curr_fd to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %curr_fd, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then10, %if.then
  %curr_task.0 = phi ptr [ %9, %if.then ], [ %call, %if.then10 ], [ %call, %if.else12 ]
  %27 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !60
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end15.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end15.rcu_read_lock.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end15
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end15.rcu_read_lock.exit_crit_edge
  %call1683 = call ptr @task_lookup_next_fd_rcu(ptr noundef nonnull %curr_task.0, ptr noundef nonnull %curr_fd) #10
  %tobool17.not84 = icmp eq ptr %call1683, null
  br i1 %tobool17.not84, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.if.end19_crit_edge

rcu_read_lock.exit.if.end19_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %if.end19

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end19:                                         ; preds = %for.inc.if.end19_crit_edge, %rcu_read_lock.exit.if.end19_crit_edge
  %call1685 = phi ptr [ %call16, %for.inc.if.end19_crit_edge ], [ %call1683, %rcu_read_lock.exit.if.end19_crit_edge ]
  %f_count = getelementptr inbounds %struct.file, ptr %call1685, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %f_count, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !62
  call void @llvm.prefetch.p0(ptr %f_count, i32 1, i32 3, i32 1) #10
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %f_count, ptr %f_count, i32 0, i32 1, ptr elementtype(i32) %f_count) #10, !srcloc !63
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %for.inc, label %if.end22

if.end22:                                         ; preds = %if.end19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  %32 = ptrtoint ptr %curr_fd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %curr_fd, align 4
  %34 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fd, align 4
  %call.i53 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i53, label %if.end22.cleanup.thread_crit_edge, label %land.lhs.true.i56

if.end22.cleanup.thread_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

land.lhs.true.i56:                                ; preds = %if.end22
  %call1.i54 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.cleanup.thread_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.cleanup.thread_crit_edge:       ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.cleanup.thread_crit_edge, label %if.then.i59

land.lhs.true2.i58.cleanup.thread_crit_edge:      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then.i59, %land.lhs.true2.i58.cleanup.thread_crit_edge, %land.lhs.true.i56.cleanup.thread_crit_edge, %if.end22.cleanup.thread_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  %35 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i.i60 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i60 to ptr
  %preempt_count.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i61, align 4
  %sub.i.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i61, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup28

for.inc:                                          ; preds = %if.end19
  %39 = ptrtoint ptr %curr_fd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %curr_fd, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %curr_fd, align 4
  %call16 = call ptr @task_lookup_next_fd_rcu(ptr noundef nonnull %curr_task.0, ptr noundef nonnull %curr_fd) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %for.inc.for.end_crit_edge, label %for.inc.if.end19_crit_edge

for.inc.if.end19_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.i62 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i62, label %for.end.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true.i65

for.end.rcu_read_unlock.exit72_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit72

land.lhs.true.i65:                                ; preds = %for.end
  %call1.i63 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit72

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit72

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_unlock.exit72

rcu_read_unlock.exit72:                           ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, %for.end.rcu_read_unlock.exit72_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  %41 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i.i69 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i71 = add i32 %44, -1
  store volatile i32 %sub.i.i.i71, ptr %preempt_count.i.i.i.i70, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %curr_task.0, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i73, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rcu_read_unlock.exit72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !56

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i73:                                      ; preds = %rcu_read_unlock.exit72
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @__put_task_struct(ptr noundef nonnull %curr_task.0) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i73, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %46 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %task, align 4
  %47 = ptrtoint ptr %fd to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %fd, align 4
  %48 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tid, align 4
  %inc27 = add i32 %49, 1
  store i32 %inc27, ptr %tid, align 4
  %50 = ptrtoint ptr %curr_tid to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %inc27, ptr %curr_tid, align 4
  br label %again

cleanup28:                                        ; preds = %cleanup.thread, %if.then5
  %retval.3 = phi ptr [ null, %if.then5 ], [ %call1685, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_fd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_tid) #10
  ret ptr %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_lookup_next_fd_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @task_vma_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call = tail call fastcc ptr @task_vma_seq_get_next(ptr noundef %1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1, ptr %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @task_vma_seq_stop(ptr noundef %seq, ptr noundef readnone %v) #1 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__task_vma, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %v, null
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx.i) #10
  %2 = call ptr @memset(ptr %ctx.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #10
  %3 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  %4 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext true) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.then.__task_vma_seq_show.exit_crit_edge, label %if.end.i

if.then.__task_vma_seq_show.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %__task_vma_seq_show.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = getelementptr inbounds %struct.bpf_iter__task_vma, ptr %ctx.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.bpf_iter__task_vma, ptr %ctx.i, i32 0, i32 1
  %7 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %meta.i, ptr %ctx.i, align 8
  %task.i = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %6, align 8
  %vma.i = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %vma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vma.i, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %5, align 8
  %call2.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #10
  br label %__task_vma_seq_show.exit

__task_vma_seq_show.exit:                         ; preds = %if.end.i, %if.then.__task_vma_seq_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %prev_vm_start = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %prev_vm_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %prev_vm_start, align 4
  %vma = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vma, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_end, align 4
  %prev_vm_end = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %prev_vm_end to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %prev_vm_end, align 4
  %task = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 4
  %mm = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 53
  %22 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@task_vma_seq_stop, %if.then.i.i)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i], !srcloc !53

if.then.i.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %23, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i, %if.else
  %mmap_lock.i = getelementptr inbounds %struct.anon.26, ptr %23, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i) #10
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 4
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !56

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @__put_task_struct(ptr noundef %25) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %27 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %task, align 4
  br label %if.end

if.end:                                           ; preds = %put_task_struct.exit, %__task_vma_seq_show.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @task_vma_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %pos, align 8
  %call = tail call fastcc ptr @task_vma_seq_get_next(ptr noundef %1)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @task_vma_seq_show(ptr noundef %seq, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__task_vma, align 8
  %meta.i = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx.i) #10
  %2 = call ptr @memset(ptr %ctx.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta.i) #10
  %3 = call ptr @memset(ptr %meta.i, i32 255, i32 24)
  %4 = ptrtoint ptr %meta.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %seq, ptr %meta.i, align 8
  %call.i = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta.i, i1 noundef zeroext false) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %entry.__task_vma_seq_show.exit_crit_edge, label %if.end.i

entry.__task_vma_seq_show.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__task_vma_seq_show.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = getelementptr inbounds %struct.bpf_iter__task_vma, ptr %ctx.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.bpf_iter__task_vma, ptr %ctx.i, i32 0, i32 1
  %7 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %meta.i, ptr %ctx.i, align 8
  %task.i = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %6, align 8
  %vma.i = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %vma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vma.i, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %5, align 8
  %call2.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call.i, ptr noundef nonnull %ctx.i) #10
  br label %__task_vma_seq_show.exit

__task_vma_seq_show.exit:                         ; preds = %if.end.i, %entry.__task_vma_seq_show.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ 0, %entry.__task_vma_seq_show.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @task_vma_seq_get_next(ptr nocapture noundef %info) unnamed_addr #1 align 64 {
entry:
  %curr_tid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_tid) #10
  %tid = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %info, i32 0, i32 3
  %2 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tid, align 4
  %4 = ptrtoint ptr %curr_tid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %curr_tid, align 4
  %task = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.again_crit_edge, label %if.then

entry.again_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %again

if.then:                                          ; preds = %entry
  %vma = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vma, align 4
  %mm = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 53
  %9 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mm, align 8
  %wait_list.i.i = getelementptr inbounds %struct.anon.26, ptr %10, i32 0, i32 15, i32 4
  %11 = ptrtoint ptr %wait_list.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %wait_list.i.i, align 4
  %cmp.i.i.i.not = icmp eq ptr %12, %wait_list.i.i
  br i1 %cmp.i.i.i.not, label %sw.bb33, label %if.then4

if.then4:                                         ; preds = %if.then
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %prev_vm_start = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %info, i32 0, i32 4
  %15 = ptrtoint ptr %prev_vm_start to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %prev_vm_start, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vm_end, align 4
  %prev_vm_end = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %info, i32 0, i32 5
  %18 = ptrtoint ptr %prev_vm_end to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %prev_vm_end, align 4
  %19 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@task_vma_seq_get_next, %if.then.i.i)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i], !srcloc !53

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %20, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i, %if.then4
  %mmap_lock.i = getelementptr inbounds %struct.anon.26, ptr %20, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i) #10
  %21 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@task_vma_seq_get_next, %if.then.i.i105)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i105], !srcloc !53

if.then.i.i105:                                   ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %22, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i105, %mmap_read_unlock.exit
  %mmap_lock.i106 = getelementptr inbounds %struct.anon.26, ptr %22, i32 0, i32 15
  %call.i = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i106) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@task_vma_seq_get_next, %if.then.i4.i)) #10
          to label %mmap_read_lock_killable.exit [label %if.then.i4.i], !srcloc !53

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %22, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #10
  br label %mmap_read_lock_killable.exit

mmap_read_lock_killable.exit:                     ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %mmap_read_lock_killable.exit.sw.bb34_crit_edge, label %mmap_read_lock_killable.exit.if.then57_crit_edge

mmap_read_lock_killable.exit.if.then57_crit_edge: ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

mmap_read_lock_killable.exit.sw.bb34_crit_edge:   ; preds = %mmap_read_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb34

again:                                            ; preds = %put_task_struct.exit, %entry.again_crit_edge
  %call12 = call fastcc ptr @task_seq_get_next(ptr noundef %1, ptr noundef nonnull %curr_tid, i1 noundef zeroext true)
  %tobool13.not = icmp eq ptr %call12, null
  %23 = ptrtoint ptr %curr_tid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %curr_tid, align 4
  br i1 %tobool13.not, label %finish, label %if.end16

if.end16:                                         ; preds = %again
  %25 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.not = icmp eq i32 %24, %26
  br i1 %cmp.not, label %if.end16.if.end21_crit_edge, label %if.then18

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %tid, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16.if.end21_crit_edge
  %mm22 = getelementptr inbounds %struct.task_struct, ptr %call12, i32 0, i32 53
  %28 = ptrtoint ptr %mm22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mm22, align 8
  %tobool23.not = icmp eq ptr %29, null
  br i1 %tobool23.not, label %if.end21.next_task_crit_edge, label %if.end25

if.end21.next_task_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_task

if.end25:                                         ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@task_vma_seq_get_next, %if.then.i.i107)) #10
          to label %__mmap_lock_trace_start_locking.exit.i110 [label %if.then.i.i107], !srcloc !53

if.then.i.i107:                                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %29, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i110

__mmap_lock_trace_start_locking.exit.i110:        ; preds = %if.then.i.i107, %if.end25
  %mmap_lock.i108 = getelementptr inbounds %struct.anon.26, ptr %29, i32 0, i32 15
  %call.i109 = tail call i32 @down_read_killable(ptr noundef %mmap_lock.i108) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@task_vma_seq_get_next, %if.then.i4.i112)) #10
          to label %mmap_read_lock_killable.exit113 [label %if.then.i4.i112], !srcloc !53

if.then.i4.i112:                                  ; preds = %__mmap_lock_trace_start_locking.exit.i110
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp.i111 = icmp eq i32 %call.i109, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %29, i1 noundef zeroext false, i1 noundef zeroext %cmp.i111) #10
  br label %mmap_read_lock_killable.exit113

mmap_read_lock_killable.exit113:                  ; preds = %if.then.i4.i112, %__mmap_lock_trace_start_locking.exit.i110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool28.not = icmp eq i32 %call.i109, 0
  br i1 %tobool28.not, label %if.end31, label %mmap_read_lock_killable.exit113.if.then57_crit_edge

mmap_read_lock_killable.exit113.if.then57_crit_edge: ; preds = %mmap_read_lock_killable.exit113
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.end31:                                         ; preds = %mmap_read_lock_killable.exit113
  br i1 %cmp.not, label %if.end31.sw.bb34_crit_edge, label %sw.bb

if.end31.sw.bb34_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb34

sw.bb:                                            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %mm22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mm22, align 8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %8, i32 0, i32 2
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end31.sw.bb34_crit_edge, %mmap_read_lock_killable.exit.sw.bb34_crit_edge
  %curr_task.0136 = phi ptr [ %call12, %if.end31.sw.bb34_crit_edge ], [ %6, %mmap_read_lock_killable.exit.sw.bb34_crit_edge ]
  %mm35 = getelementptr inbounds %struct.task_struct, ptr %curr_task.0136, i32 0, i32 53
  %32 = ptrtoint ptr %mm35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mm35, align 8
  %prev_vm_end36 = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %info, i32 0, i32 5
  %34 = ptrtoint ptr %prev_vm_end36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %prev_vm_end36, align 4
  %sub = add i32 %35, -1
  %call37 = tail call ptr @find_vma(ptr noundef %33, i32 noundef %sub) #10
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %sw.bb34.if.then50_crit_edge, label %land.lhs.true

sw.bb34.if.then50_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

land.lhs.true:                                    ; preds = %sw.bb34
  %36 = ptrtoint ptr %call37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call37, align 4
  %prev_vm_start40 = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %info, i32 0, i32 4
  %38 = ptrtoint ptr %prev_vm_start40 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prev_vm_start40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp41 = icmp eq i32 %37, %39
  br i1 %cmp41, label %land.lhs.true42, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true42:                                  ; preds = %land.lhs.true
  %vm_end43 = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 1
  %40 = ptrtoint ptr %vm_end43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %vm_end43, align 4
  %42 = ptrtoint ptr %prev_vm_end36 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %prev_vm_end36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp45 = icmp eq i32 %41, %43
  br i1 %cmp45, label %if.then46, label %land.lhs.true42.cleanup_crit_edge

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then46:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  %vm_next47 = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then46, %sw.bb33, %sw.bb
  %curr_task.0131 = phi ptr [ %curr_task.0136, %if.then46 ], [ %6, %sw.bb33 ], [ %call12, %sw.bb ]
  %curr_vma.2.in = phi ptr [ %vm_next47, %if.then46 ], [ %vm_next, %sw.bb33 ], [ %31, %sw.bb ]
  %44 = ptrtoint ptr %curr_vma.2.in to i32
  call void @__asan_load4_noabort(i32 %44)
  %curr_vma.2 = load ptr, ptr %curr_vma.2.in, align 4
  %tobool49.not = icmp eq ptr %curr_vma.2, null
  br i1 %tobool49.not, label %sw.epilog.if.then50_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.if.then50_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.then50:                                        ; preds = %sw.epilog.if.then50_crit_edge, %sw.bb34.if.then50_crit_edge
  %curr_task.0131146 = phi ptr [ %curr_task.0131, %sw.epilog.if.then50_crit_edge ], [ %curr_task.0136, %sw.bb34.if.then50_crit_edge ]
  %mm51 = getelementptr inbounds %struct.task_struct, ptr %curr_task.0131146, i32 0, i32 53
  %45 = ptrtoint ptr %mm51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mm51, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@task_vma_seq_get_next, %if.then.i.i114)) #10
          to label %mmap_read_unlock.exit116 [label %if.then.i.i114], !srcloc !53

if.then.i.i114:                                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %46, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit116

mmap_read_unlock.exit116:                         ; preds = %if.then.i.i114, %if.then50
  %mmap_lock.i115 = getelementptr inbounds %struct.anon.26, ptr %46, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i115) #10
  br label %next_task

next_task:                                        ; preds = %mmap_read_unlock.exit116, %if.end21.next_task_crit_edge
  %curr_task.1 = phi ptr [ %curr_task.0131146, %mmap_read_unlock.exit116 ], [ %call12, %if.end21.next_task_crit_edge ]
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %curr_task.1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %next_task
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !56

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %next_task
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @__put_task_struct(ptr noundef nonnull %curr_task.1) #10
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  %48 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %task, align 4
  %49 = ptrtoint ptr %curr_tid to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %curr_tid, align 4
  %inc = add i32 %50, 1
  store i32 %inc, ptr %curr_tid, align 4
  br label %again

finish:                                           ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %24, 1
  %51 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add, ptr %tid, align 4
  br label %cleanup

if.then57:                                        ; preds = %mmap_read_lock_killable.exit113.if.then57_crit_edge, %mmap_read_lock_killable.exit.if.then57_crit_edge
  %curr_task.2.ph = phi ptr [ %call12, %mmap_read_lock_killable.exit113.if.then57_crit_edge ], [ %6, %mmap_read_lock_killable.exit.if.then57_crit_edge ]
  %usage.i117 = getelementptr inbounds %struct.task_struct, ptr %curr_task.2.ph, i32 0, i32 2
  %call.i.i.i.i.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i117, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage.i117, i32 1, i32 3, i32 1) #10
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i117, ptr %usage.i117, i32 1, ptr elementtype(i32) %usage.i117) #10, !srcloc !58
  %asmresult.i.i.i.i.i.i.i119 = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i119)
  %cmp.i.i.i.i120 = icmp eq i32 %asmresult.i.i.i.i.i.i.i119, 1
  br i1 %cmp.i.i.i.i120, label %if.then.i124, label %if.end5.i.i.i.i122

if.end5.i.i.i.i122:                               ; preds = %if.then57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i119)
  %.not.i.i.i.i121 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i119, 0
  br i1 %.not.i.i.i.i121, label %if.end5.i.i.i.i122.cleanup_crit_edge, label %if.then10.i.i.i.i123, !prof !56

if.end5.i.i.i.i122.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i123:                             ; preds = %if.end5.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i117, i32 noundef 3) #10
  br label %cleanup

if.then.i124:                                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !59
  tail call void @__put_task_struct(ptr noundef nonnull %curr_task.2.ph) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i124, %if.then10.i.i.i.i123, %if.end5.i.i.i.i122.cleanup_crit_edge, %finish, %sw.epilog.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %.sink151 = phi ptr [ %curr_task.0131, %sw.epilog.cleanup_crit_edge ], [ %curr_task.0136, %land.lhs.true42.cleanup_crit_edge ], [ %curr_task.0136, %land.lhs.true.cleanup_crit_edge ], [ null, %if.then.i124 ], [ null, %if.then10.i.i.i.i123 ], [ null, %if.end5.i.i.i.i122.cleanup_crit_edge ], [ null, %finish ]
  %.sink = phi ptr [ %curr_vma.2, %sw.epilog.cleanup_crit_edge ], [ %call37, %land.lhs.true42.cleanup_crit_edge ], [ %call37, %land.lhs.true.cleanup_crit_edge ], [ null, %if.then.i124 ], [ null, %if.then10.i.i.i.i123 ], [ null, %if.end5.i.i.i.i122.cleanup_crit_edge ], [ null, %finish ]
  %53 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %.sink151, ptr %task, align 4
  %vma60 = getelementptr inbounds %struct.bpf_iter_seq_task_vma_info, ptr %info, i32 0, i32 2
  %54 = ptrtoint ptr %vma60 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %.sink, ptr %vma60, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_tid) #10
  ret ptr %.sink
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @bpf_find_vma_proto, !1, !"bpf_find_vma_proto", i1 false, i1 false}
!1 = !{!"../kernel/bpf/task_iter.c", i32 621, i32 29}
!2 = !{ptr @__initcall__kmod_task_iter__399_670_task_iter_init7, !3, !"__initcall__kmod_task_iter__399_670_task_iter_init7", i1 false, i1 false}
!3 = !{!"../kernel/bpf/task_iter.c", i32 670, i32 1}
!4 = !{ptr @__pcpu_scope_mmap_unlock_work, !5, !"__pcpu_scope_mmap_unlock_work", i1 false, i1 false}
!5 = !{!"../kernel/bpf/task_iter.c", i32 632, i32 1}
!6 = !{ptr @__pcpu_unique_mmap_unlock_work, !5, !"__pcpu_unique_mmap_unlock_work", i1 false, i1 false}
!7 = !{ptr @mmap_unlock_work, !5, !"mmap_unlock_work", i1 false, i1 false}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/bpf/task_iter.c", i32 638, i32 6}
!10 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../kernel/bpf/task_iter.c", i32 536, i32 14}
!13 = !{ptr @task_reg_info, !14, !"task_reg_info", i1 false, i1 false}
!14 = !{!"../kernel/bpf/task_iter.c", i32 535, i32 28}
!15 = !{ptr @task_seq_info, !16, !"task_seq_info", i1 false, i1 false}
!16 = !{!"../kernel/bpf/task_iter.c", i32 528, i32 39}
!17 = !{ptr @task_seq_ops, !18, !"task_seq_ops", i1 false, i1 false}
!18 = !{!"../kernel/bpf/task_iter.c", i32 121, i32 36}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/bpf/task_iter.c", i32 554, i32 14}
!28 = !{ptr @task_file_reg_info, !29, !"task_file_reg_info", i1 false, i1 false}
!29 = !{!"../kernel/bpf/task_iter.c", i32 553, i32 28}
!30 = !{ptr @task_file_seq_info, !31, !"task_file_seq_info", i1 false, i1 false}
!31 = !{!"../kernel/bpf/task_iter.c", i32 546, i32 39}
!32 = !{ptr @task_file_seq_ops, !33, !"task_file_seq_ops", i1 false, i1 false}
!33 = !{!"../kernel/bpf/task_iter.c", i32 283, i32 36}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/bpf/task_iter.c", i32 574, i32 14}
!36 = !{ptr @task_vma_reg_info, !37, !"task_vma_reg_info", i1 false, i1 false}
!37 = !{!"../kernel/bpf/task_iter.c", i32 573, i32 28}
!38 = !{ptr @task_vma_seq_info, !39, !"task_vma_seq_info", i1 false, i1 false}
!39 = !{!"../kernel/bpf/task_iter.c", i32 566, i32 39}
!40 = !{ptr @task_vma_seq_ops, !41, !"task_vma_seq_ops", i1 false, i1 false}
!41 = !{!"../kernel/bpf/task_iter.c", i32 521, i32 36}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 1078264}
!53 = !{i64 2148495450, i64 2148495455, i64 2148495468, i64 2148495512, i64 2148495546, i64 2148495567}
!54 = !{i64 2148672382, i64 2148672414, i64 2148672443, i64 2148672477, i64 2148672508, i64 2148672531}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2148760407}
!58 = !{i64 2148674847, i64 2148674879, i64 2148674908, i64 2148674942, i64 2148674973, i64 2148674996}
!59 = !{i64 2150381496}
!60 = !{i64 2149483298}
!61 = !{i64 2149483564}
!62 = !{i64 2148670271}
!63 = !{i64 1156871, i64 1156896, i64 1156918, i64 1156934, i64 1156946, i64 1156966, i64 1156990, i64 1157006, i64 1157018}
!64 = !{i64 2148670459}
