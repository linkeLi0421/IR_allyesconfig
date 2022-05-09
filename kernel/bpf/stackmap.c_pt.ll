; ModuleID = '/llk/IR_all_yes/kernel/bpf/stackmap.c_pt.bc'
source_filename = "../kernel/bpf/stackmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.182, %union.anon.183, ptr, ptr }
%union.anon.182 = type { %struct.anon.181 }
%struct.anon.181 = type { i32, i32, i32, i32, i32 }
%union.anon.183 = type { %struct.anon.184 }
%struct.anon.184 = type { ptr, ptr, ptr, ptr, ptr }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmap_unlock_irq_work = type { %struct.irq_work, ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.56 }
%struct.llist_node = type { ptr }
%union.anon.56 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.148 }
%struct.atomic_t = type { i32 }
%union.anon.148 = type { i32 }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic64_t = type { i64 }
%struct.bpf_perf_event_data_kern = type { ptr, ptr, ptr }
%struct.perf_event = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.rb_node, i64, %struct.list_head, %struct.hlist_node, %struct.list_head, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.local64_t, %struct.atomic64_t, i64, i64, i64, %struct.perf_event_attr, i16, i16, i16, %struct.hw_perf_event, ptr, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.list_head, ptr, %struct.mutex, %struct.atomic_t, ptr, %struct.list_head, i32, i32, %struct.wait_queue_head, ptr, i32, i32, i32, i32, %struct.irq_work, %struct.atomic_t, %struct.perf_addr_filters_head, ptr, i32, ptr, ptr, %struct.callback_head, ptr, i64, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, %struct.ftrace_ops, ptr, ptr, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.local64_t = type { %struct.atomic64_t }
%struct.perf_event_attr = type { i32, i32, i64, %union.anon.115, i64, i64, i64, %union.anon.116, i32, %union.anon.117, %union.anon.118, i64, i64, i32, i32, i64, i32, i16, i16, i32, i32, i64 }
%union.anon.115 = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { i64 }
%union.anon.118 = type { i64 }
%struct.hw_perf_event = type { %union.anon.119, ptr, ptr, i32, i32, %struct.local64_t, i64, %union.anon.126, i64, i64, i64, i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.hw_perf_event_extra, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i64, i32, i32, i32 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i64, %struct.local64_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.perf_addr_filters_head = type { %struct.list_head, %struct.raw_spinlock, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.ftrace_ops = type { ptr, ptr, i32, ptr, ptr, %struct.ftrace_ops_hash, ptr, %struct.ftrace_ops_hash, i32, i32, %struct.list_head }
%struct.ftrace_ops_hash = type { ptr, ptr, %struct.mutex }
%struct.perf_sample_data = type { i64, ptr, ptr, i64, %union.perf_sample_weight, i64, %union.perf_mem_data_src, i64, i64, %struct.anon.132, i64, i64, i64, %struct.anon.133, ptr, i64, %struct.perf_regs, %struct.perf_regs, i64, i64, i64, i64, i64, [64 x i8] }
%union.perf_sample_weight = type { i64 }
%union.perf_mem_data_src = type { i64 }
%struct.anon.132 = type { i32, i32 }
%struct.anon.133 = type { i32, i32 }
%struct.perf_regs = type { i64, ptr }
%struct.perf_callchain_entry = type { i64, [0 x i64] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.137, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.58 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.137 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.bpf_stack_map = type { %struct.bpf_map, ptr, %struct.pcpu_freelist, i32, [0 x ptr], [68 x i8] }
%struct.pcpu_freelist = type { ptr, %struct.pcpu_freelist_head }
%struct.pcpu_freelist_head = type { ptr, %struct.raw_spinlock }
%struct.stack_map_bucket = type { %struct.pcpu_freelist_node, i32, i32, [0 x i64] }
%struct.pcpu_freelist_node = type { ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.51 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.bpf_stack_build_id = type { i32, [20 x i8], %union.anon.185 }
%union.anon.185 = type { i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.52, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@bpf_get_stackid_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_stackid, i8 1, i8 0, i32 0, %union.anon.182 { %struct.anon.181 { i32 9, i32 1, i32 10, i32 0, i32 0 } }, %union.anon.183 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_stackid_proto_pe = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_stackid_pe, i8 0, i8 0, i32 0, %union.anon.182 { %struct.anon.181 { i32 9, i32 1, i32 10, i32 0, i32 0 } }, %union.anon.183 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_stack_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_stack, i8 1, i8 0, i32 0, %union.anon.182 { %struct.anon.181 { i32 9, i32 6, i32 8, i32 10, i32 0 } }, %union.anon.183 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@btf_tracing_ids = external dso_local global [0 x i32], align 4
@bpf_get_task_stack_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_task_stack, i8 0, i8 0, i32 0, %union.anon.182 { %struct.anon.181 { i32 16, i32 6, i32 8, i32 10, i32 0 } }, %union.anon.183 { %struct.anon.184 { ptr @btf_tracing_ids, ptr null, ptr null, ptr null, ptr null } }, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_get_stack_proto_pe = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_get_stack_pe, i8 1, i8 0, i32 0, %union.anon.182 { %struct.anon.181 { i32 9, i32 6, i32 8, i32 10, i32 0 } }, %union.anon.183 zeroinitializer, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bpf_stack_map\00", [18 x i8] zeroinitializer }, align 32
@stack_trace_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stack_trace_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr null, ptr @stack_map_alloc, ptr null, ptr @stack_map_free, ptr @stack_map_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stack_map_lookup_elem, ptr @stack_map_update_elem, ptr @stack_map_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @map_check_no_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str, ptr @stack_trace_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@sysctl_perf_event_max_stack = external dso_local local_unnamed_addr global i32, align 4
@mmap_unlock_work = external dso_local global %struct.mmap_unlock_irq_work, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@stack_map_get_next_key.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"kernel/bpf/stackmap.c\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.2 = private unnamed_addr constant [22 x i8] c"bpf_get_stackid_proto\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 308, i32 29 }
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"bpf_get_stackid_proto_pe\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 377, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"bpf_get_stack_proto\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 461, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"bpf_get_task_stack_proto\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 488, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"bpf_get_stack_proto_pe\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 552, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 667, i32 18 }
@___asan_gen_.20 = private unnamed_addr constant [23 x i8] c"stack_trace_map_btf_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 657, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"stack_trace_map_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 658, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [25 x i8] c"../kernel/bpf/stackmap.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 599, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @bpf_get_stackid_proto, ptr @bpf_get_stackid_proto_pe, ptr @bpf_get_stack_proto, ptr @bpf_get_task_stack_proto, ptr @bpf_get_stack_proto_pe, ptr @.str, ptr @stack_trace_map_btf_id, ptr @stack_trace_map_ops, ptr @.str.1], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_stackid_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_stackid_proto_pe to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_stack_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_task_stack_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_get_stack_proto_pe to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_trace_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stack_trace_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_get_stackid(i64 noundef %regs, i64 noundef %map, i64 noundef %flags, i64 %__ur_1, i64 %__ur_2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1 = trunc i64 %map to i32
  %0 = inttoptr i32 %conv1 to ptr
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %flags)
  %tobool4.not.i = icmp ult i64 %flags, 2048
  br i1 %tobool4.not.i, label %if.end.i, label %entry.____bpf_get_stackid.exit_crit_edge, !prof !29

entry.____bpf_get_stackid.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %____bpf_get_stackid.exit

if.end.i:                                         ; preds = %entry
  %conv = trunc i64 %regs to i32
  %1 = inttoptr i32 %conv to ptr
  %map_flags.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %0, i32 0, i32 8
  %2 = ptrtoint ptr %map_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags.i.i.i, align 8
  %and.i.i.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  %value_size.i = getelementptr inbounds %struct.bpf_map, ptr %0, i32 0, i32 5
  %4 = ptrtoint ptr %value_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value_size.i, align 4
  %and.i = and i64 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp ne i64 %and.i, 0
  %lnot.i = xor i1 %tobool.i, true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_max_stack to i32))
  %6 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %7 = select i1 %tobool.i.not.i.i, i32 3, i32 5
  %div33.i = lshr i32 %5, %7
  %sub.i = sub i32 %6, %div33.i
  %call10.i = tail call ptr @get_perf_callchain(ptr noundef %1, i32 noundef %sub.i, i1 noundef zeroext %lnot.i, i1 noundef zeroext %tobool.i, i32 noundef %6, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end.i.____bpf_get_stackid.exit_crit_edge, label %if.end21.i, !prof !30

if.end.i.____bpf_get_stackid.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %____bpf_get_stackid.exit

if.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i = tail call fastcc i32 @__bpf_get_stackid(ptr noundef %0, ptr noundef nonnull %call10.i, i64 noundef %flags) #9
  %conv.i = sext i32 %call22.i to i64
  br label %____bpf_get_stackid.exit

____bpf_get_stackid.exit:                         ; preds = %if.end21.i, %if.end.i.____bpf_get_stackid.exit_crit_edge, %entry.____bpf_get_stackid.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %if.end21.i ], [ -22, %entry.____bpf_get_stackid.exit_crit_edge ], [ -14, %if.end.i.____bpf_get_stackid.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_get_stackid_pe(i64 noundef %ctx, i64 noundef %map, i64 noundef %flags, i64 %__ur_1, i64 %__ur_2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ctx to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %map to i32
  %1 = inttoptr i32 %conv1 to ptr
  %event1.i = getelementptr inbounds %struct.bpf_perf_event_data_kern, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %event1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event1.i, align 4
  %sample_type.i = getelementptr inbounds %struct.perf_event, ptr %3, i32 0, i32 21, i32 4
  %4 = ptrtoint ptr %sample_type.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sample_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %tobool.not.i = icmp sgt i64 %5, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %flags)
  %tobool4.not.i.i.i = icmp ult i64 %flags, 2048
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i, label %if.then.i.____bpf_get_stackid_pe.exit_crit_edge, !prof !29

if.then.i.____bpf_get_stackid_pe.exit_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %____bpf_get_stackid_pe.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %map_flags.i.i.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %map_flags.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_flags.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %value_size.i.i.i = getelementptr inbounds %struct.bpf_map, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %value_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value_size.i.i.i, align 4
  %and.i.i.i = and i64 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.i = icmp ne i64 %and.i.i.i, 0
  %lnot.i.i.i = xor i1 %tobool.i.i.i, true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_max_stack to i32))
  %12 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %13 = select i1 %tobool.i.not.i.i.i.i, i32 3, i32 5
  %div33.i.i.i = lshr i32 %11, %13
  %sub.i.i.i = sub i32 %12, %div33.i.i.i
  %call10.i.i.i = tail call ptr @get_perf_callchain(ptr noundef %7, i32 noundef %sub.i.i.i, i1 noundef zeroext %lnot.i.i.i, i1 noundef zeroext %tobool.i.i.i, i32 noundef %12, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %tobool11.not.i.i.i = icmp eq ptr %call10.i.i.i, null
  br i1 %tobool11.not.i.i.i, label %if.end.i.i.i.____bpf_get_stackid_pe.exit_crit_edge, label %if.end21.i.i.i, !prof !30

if.end.i.i.i.____bpf_get_stackid_pe.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %____bpf_get_stackid_pe.exit

if.end21.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i.i.i = tail call fastcc i32 @__bpf_get_stackid(ptr noundef %1, ptr noundef nonnull %call10.i.i.i, i64 noundef %flags) #9
  %conv.i.i.i = sext i32 %call22.i.i.i to i64
  br label %____bpf_get_stackid_pe.exit

if.end.i:                                         ; preds = %entry
  br i1 %tobool4.not.i.i.i, label %if.end8.i, label %if.end.i.____bpf_get_stackid_pe.exit_crit_edge, !prof !29

if.end.i.____bpf_get_stackid_pe.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %____bpf_get_stackid_pe.exit

if.end8.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.bpf_perf_event_data_kern, ptr %0, i32 0, i32 1
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %callchain.i = getelementptr inbounds %struct.perf_sample_data, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %callchain.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %callchain.i, align 8
  %tobool15.not.i = icmp eq ptr %17, null
  br i1 %tobool15.not.i, label %if.end8.i.____bpf_get_stackid_pe.exit_crit_edge, label %if.end25.i, !prof !30

if.end8.i.____bpf_get_stackid_pe.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %____bpf_get_stackid_pe.exit

if.end25.i:                                       ; preds = %if.end8.i
  %and9.i = and i64 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i)
  %tobool10.not.i = icmp eq i64 %and9.i, 0
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp6.not.i.i = icmp eq i64 %19, 0
  br i1 %cmp6.not.i.i, label %if.end25.i.count_kernel_ip.exit.i_crit_edge, label %if.end25.i.while.body.i.i_crit_edge

if.end25.i.while.body.i.i_crit_edge:              ; preds = %if.end25.i
  br label %while.body.i.i

if.end25.i.count_kernel_ip.exit.i_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_kernel_ip.exit.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end25.i.while.body.i.i_crit_edge
  %nr_kernel.07.i.i = phi i64 [ %inc.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.end25.i.while.body.i.i_crit_edge ]
  %idxprom.i.i = trunc i64 %nr_kernel.07.i.i to i32
  %arrayidx.i.i = getelementptr %struct.perf_callchain_entry, ptr %17, i32 0, i32 1, i32 %idxprom.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -512, i64 %21)
  %cmp1.i.i = icmp eq i64 %21, -512
  br i1 %cmp1.i.i, label %while.body.i.i.count_kernel_ip.exit.i_crit_edge, label %if.end.i.i

while.body.i.i.count_kernel_ip.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_kernel_ip.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %inc.i.i = add nuw i64 %nr_kernel.07.i.i, 1
  %cmp.i.i = icmp ult i64 %inc.i.i, %19
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.count_kernel_ip.exit.i_crit_edge

if.end.i.i.count_kernel_ip.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_kernel_ip.exit.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

count_kernel_ip.exit.i:                           ; preds = %if.end.i.i.count_kernel_ip.exit.i_crit_edge, %while.body.i.i.count_kernel_ip.exit.i_crit_edge, %if.end25.i.count_kernel_ip.exit.i_crit_edge
  %nr_kernel.0.lcssa.i.i = phi i64 [ 0, %if.end25.i.count_kernel_ip.exit.i_crit_edge ], [ %nr_kernel.07.i.i, %while.body.i.i.count_kernel_ip.exit.i_crit_edge ], [ %19, %if.end.i.i.count_kernel_ip.exit.i_crit_edge ]
  br i1 %tobool10.not.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %count_kernel_ip.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %nr_kernel.0.lcssa.i.i, ptr %17, align 8
  %call31.i = tail call fastcc i32 @__bpf_get_stackid(ptr noundef %1, ptr noundef nonnull %17, i64 noundef %flags) #9
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %19, ptr %17, align 8
  br label %if.end39.i

if.else.i:                                        ; preds = %count_kernel_ip.exit.i
  %and33.i = and i64 %flags, 255
  %add.i = add i64 %nr_kernel.0.lcssa.i.i, %and33.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %add.i)
  %cmp.i = icmp ugt i64 %add.i, 255
  br i1 %cmp.i, label %if.else.i.____bpf_get_stackid_pe.exit_crit_edge, label %cleanup.i

if.else.i.____bpf_get_stackid_pe.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %____bpf_get_stackid_pe.exit

cleanup.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %and37.i = and i64 %flags, -256
  %or.i = or i64 %add.i, %and37.i
  %call38.i = tail call fastcc i32 @__bpf_get_stackid(ptr noundef %1, ptr noundef nonnull %17, i64 noundef %or.i) #9
  br label %if.end39.i

if.end39.i:                                       ; preds = %cleanup.i, %if.then28.i
  %ret.1.i = phi i32 [ %call31.i, %if.then28.i ], [ %call38.i, %cleanup.i ]
  %conv40.i = sext i32 %ret.1.i to i64
  br label %____bpf_get_stackid_pe.exit

____bpf_get_stackid_pe.exit:                      ; preds = %if.end39.i, %if.else.i.____bpf_get_stackid_pe.exit_crit_edge, %if.end8.i.____bpf_get_stackid_pe.exit_crit_edge, %if.end.i.____bpf_get_stackid_pe.exit_crit_edge, %if.end21.i.i.i, %if.end.i.i.i.____bpf_get_stackid_pe.exit_crit_edge, %if.then.i.____bpf_get_stackid_pe.exit_crit_edge
  %retval.1.i = phi i64 [ %conv40.i, %if.end39.i ], [ -22, %if.end.i.____bpf_get_stackid_pe.exit_crit_edge ], [ -14, %if.end8.i.____bpf_get_stackid_pe.exit_crit_edge ], [ %conv.i.i.i, %if.end21.i.i.i ], [ -22, %if.then.i.____bpf_get_stackid_pe.exit_crit_edge ], [ -14, %if.end.i.i.i.____bpf_get_stackid_pe.exit_crit_edge ], [ -14, %if.else.i.____bpf_get_stackid_pe.exit_crit_edge ]
  ret i64 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_get_stack(i64 noundef %regs, i64 noundef %buf, i64 noundef %size, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %regs to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %buf to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %size to i32
  %call.i = tail call fastcc i32 @__bpf_get_stack(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %1, i32 noundef %conv2, i64 noundef %flags) #9
  %conv.i = sext i32 %call.i to i64
  ret i64 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_get_task_stack(i64 noundef %task, i64 noundef %buf, i64 noundef %size, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %task to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %buf to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %size to i32
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %2 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack.i.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.____bpf_get_task_stack.exit_crit_edge, label %if.end.i

entry.____bpf_get_task_stack.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %____bpf_get_task_stack.exit

if.end.i:                                         ; preds = %entry
  %add.ptr1.i = getelementptr i8, ptr %3, i32 16304
  %tobool2.not.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call fastcc i32 @__bpf_get_stack(ptr noundef nonnull %add.ptr1.i, ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef %conv2, i64 noundef %flags) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %res.0.i = phi i32 [ %call4.i, %if.then3.i ], [ -22, %if.end.i.if.end5.i_crit_edge ]
  %conv.i = sext i32 %res.0.i to i64
  br label %____bpf_get_task_stack.exit

____bpf_get_task_stack.exit:                      ; preds = %if.end5.i, %entry.____bpf_get_task_stack.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %if.end5.i ], [ -14, %entry.____bpf_get_task_stack.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_get_stack_pe(i64 noundef %ctx, i64 noundef %buf, i64 noundef %size, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ctx to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %buf to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %size to i32
  %event2.i = getelementptr inbounds %struct.bpf_perf_event_data_kern, ptr %0, i32 0, i32 2
  %2 = ptrtoint ptr %event2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event2.i, align 4
  %sample_type.i = getelementptr inbounds %struct.perf_event, ptr %3, i32 0, i32 21, i32 4
  %4 = ptrtoint ptr %sample_type.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sample_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %tobool.not.i = icmp sgt i64 %5, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %call.i = tail call fastcc i32 @__bpf_get_stack(ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef %1, i32 noundef %conv2, i64 noundef %flags) #9
  br label %____bpf_get_stack_pe.exit

if.end.i:                                         ; preds = %entry
  %and3.i = and i64 %flags, -2560
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i)
  %tobool4.not.i = icmp eq i64 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end8.i, label %if.end.i.clear.i_crit_edge, !prof !29

if.end.i.clear.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear.i

if.end8.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.bpf_perf_event_data_kern, ptr %0, i32 0, i32 1
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %callchain.i = getelementptr inbounds %struct.perf_sample_data, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %callchain.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %callchain.i, align 8
  %tobool15.not.i = icmp eq ptr %11, null
  br i1 %tobool15.not.i, label %if.end8.i.clear.i_crit_edge, label %if.end25.i, !prof !30

if.end8.i.clear.i_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear.i

if.end25.i:                                       ; preds = %if.end8.i
  %and9.i = and i64 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9.i)
  %tobool10.not.i = icmp eq i64 %and9.i, 0
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %cmp6.not.i.i = icmp eq i64 %13, 0
  br i1 %cmp6.not.i.i, label %if.end25.i.count_kernel_ip.exit.i_crit_edge, label %if.end25.i.while.body.i.i_crit_edge

if.end25.i.while.body.i.i_crit_edge:              ; preds = %if.end25.i
  br label %while.body.i.i

if.end25.i.count_kernel_ip.exit.i_crit_edge:      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_kernel_ip.exit.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.end25.i.while.body.i.i_crit_edge
  %nr_kernel.07.i.i = phi i64 [ %inc.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.end25.i.while.body.i.i_crit_edge ]
  %idxprom.i.i = trunc i64 %nr_kernel.07.i.i to i32
  %arrayidx.i.i = getelementptr %struct.perf_callchain_entry, ptr %11, i32 0, i32 1, i32 %idxprom.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -512, i64 %15)
  %cmp1.i.i = icmp eq i64 %15, -512
  br i1 %cmp1.i.i, label %while.body.i.i.count_kernel_ip.exit.i_crit_edge, label %if.end.i.i

while.body.i.i.count_kernel_ip.exit.i_crit_edge:  ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_kernel_ip.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %inc.i.i = add nuw i64 %nr_kernel.07.i.i, 1
  %cmp.i.i = icmp ult i64 %inc.i.i, %13
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.count_kernel_ip.exit.i_crit_edge

if.end.i.i.count_kernel_ip.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_kernel_ip.exit.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

count_kernel_ip.exit.i:                           ; preds = %if.end.i.i.count_kernel_ip.exit.i_crit_edge, %while.body.i.i.count_kernel_ip.exit.i_crit_edge, %if.end25.i.count_kernel_ip.exit.i_crit_edge
  %nr_kernel.0.lcssa.i.i = phi i64 [ 0, %if.end25.i.count_kernel_ip.exit.i_crit_edge ], [ %nr_kernel.07.i.i, %while.body.i.i.count_kernel_ip.exit.i_crit_edge ], [ %13, %if.end.i.i.count_kernel_ip.exit.i_crit_edge ]
  br i1 %tobool10.not.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %count_kernel_ip.exit.i
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %nr_kernel.0.lcssa.i.i, ptr %11, align 8
  %17 = trunc i64 %flags to i32
  %conv.i.i = and i32 %17, 255
  %18 = and i64 %flags, 2304
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %18)
  %.not123.i = icmp ne i64 %18, 2048
  %rem.i.i = and i32 %conv2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool22.not.i.i = icmp eq i32 %rem.i.i, 0
  %or.cond.i = and i1 %tobool22.not.i.i, %.not123.i
  br i1 %or.cond.i, label %if.end68.i.i, label %if.then28.i.clear.i.i_crit_edge, !prof !31

if.then28.i.clear.i.i_crit_edge:                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear.i.i

if.end68.i.i:                                     ; preds = %if.then28.i
  %div159.i.i = lshr i32 %conv2, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_max_stack to i32))
  %19 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %19, i32 %div159.i.i) #9
  %21 = trunc i64 %nr_kernel.0.lcssa.i.i to i32
  %conv71.i.i = sub i32 %21, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %conv71.i.i, i32 %conv.i.i)
  %cmp72.i.i = icmp ult i32 %conv71.i.i, %conv.i.i
  br i1 %cmp72.i.i, label %if.end68.i.i.clear.i.i_crit_edge, label %if.end75.i.i

if.end68.i.i.clear.i.i_crit_edge:                 ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear.i.i

if.end75.i.i:                                     ; preds = %if.end68.i.i
  %sub76.i.i = sub i32 %conv71.i.i, %conv.i.i
  %22 = tail call i32 @llvm.umin.i32(i32 %sub76.i.i, i32 %div159.i.i) #9
  %mul.i.i = shl nuw i32 %22, 3
  %ip.i.i = getelementptr inbounds %struct.perf_callchain_entry, ptr %11, i32 0, i32 1
  %add.ptr.i.i = getelementptr i64, ptr %ip.i.i, i32 %conv.i.i
  %add.ptr80.i.i = getelementptr i64, ptr %add.ptr.i.i, i32 %20
  %23 = call ptr @memcpy(ptr %1, ptr %add.ptr80.i.i, i32 %mul.i.i)
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %conv2)
  %cmp90.i.i = icmp ult i32 %mul.i.i, %conv2
  br i1 %cmp90.i.i, label %if.then92.i.i, label %if.end75.i.i.__bpf_get_stack.exit.i_crit_edge

if.end75.i.i.__bpf_get_stack.exit.i_crit_edge:    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__bpf_get_stack.exit.i

if.then92.i.i:                                    ; preds = %if.end75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr93.i.i = getelementptr i8, ptr %1, i32 %mul.i.i
  %sub94.i.i = sub i32 %conv2, %mul.i.i
  %24 = call ptr @memset(ptr %add.ptr93.i.i, i32 0, i32 %sub94.i.i)
  br label %__bpf_get_stack.exit.i

clear.i.i:                                        ; preds = %if.end68.i.i.clear.i.i_crit_edge, %if.then28.i.clear.i.i_crit_edge
  %err.0.i.i = phi i32 [ -22, %if.then28.i.clear.i.i_crit_edge ], [ -14, %if.end68.i.i.clear.i.i_crit_edge ]
  %25 = call ptr @memset(ptr %1, i32 0, i32 %conv2)
  br label %__bpf_get_stack.exit.i

__bpf_get_stack.exit.i:                           ; preds = %clear.i.i, %if.then92.i.i, %if.end75.i.i.__bpf_get_stack.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %err.0.i.i, %clear.i.i ], [ %mul.i.i, %if.then92.i.i ], [ %mul.i.i, %if.end75.i.i.__bpf_get_stack.exit.i_crit_edge ]
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %13, ptr %11, align 8
  br label %____bpf_get_stack_pe.exit

if.else.i:                                        ; preds = %count_kernel_ip.exit.i
  %and33.i = and i64 %flags, 255
  %add.i = add i64 %nr_kernel.0.lcssa.i.i, %and33.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %add.i)
  %cmp.i = icmp ugt i64 %add.i, 255
  br i1 %cmp.i, label %if.else.i.clear.i_crit_edge, label %if.end36.i

if.else.i.clear.i_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear.i

if.end36.i:                                       ; preds = %if.else.i
  %and37.i = and i64 %flags, -256
  %or.i = or i64 %add.i, %and37.i
  %27 = trunc i64 %add.i to i32
  %and7.i82.i = and i64 %or.i, -2560
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7.i82.i)
  %tobool8.not.i83.i = icmp eq i64 %and7.i82.i, 0
  %28 = and i64 %or.i, 2304
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %28)
  %29 = icmp ne i64 %28, 2048
  %or.cond.i84.i = and i1 %tobool8.not.i83.i, %29
  br i1 %or.cond.i84.i, label %if.end17.i89.i, label %if.end36.i.clear.i115.i_crit_edge, !prof !32

if.end36.i.clear.i115.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear.i115.i

if.end17.i89.i:                                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2304, i64 %28)
  %.not.i = icmp eq i64 %28, 2304
  %spec.select.i86.i = select i1 %.not.i, i32 32, i32 8
  %30 = add nsw i32 %spec.select.i86.i, -1
  %rem.i87.i = and i32 %30, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i87.i)
  %tobool22.not.i88.i = icmp eq i32 %rem.i87.i, 0
  br i1 %tobool22.not.i88.i, label %if.end68.i99.i, label %if.end17.i89.i.clear.i115.i_crit_edge, !prof !29

if.end17.i89.i.clear.i115.i_crit_edge:            ; preds = %if.end17.i89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear.i115.i

if.end68.i99.i:                                   ; preds = %if.end17.i89.i
  %31 = select i1 %.not.i, i32 5, i32 3
  %div159.i91.i = lshr i32 %conv2, %31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_max_stack to i32))
  %32 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %33 = tail call i32 @llvm.usub.sat.i32(i32 %32, i32 %div159.i91.i) #9
  %34 = trunc i64 %13 to i32
  %conv71.i97.i = sub i32 %34, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %conv71.i97.i, i32 %27)
  %cmp72.i98.i = icmp ult i32 %conv71.i97.i, %27
  br i1 %cmp72.i98.i, label %if.end68.i99.i.clear.i115.i_crit_edge, label %if.end75.i106.i

if.end68.i99.i.clear.i115.i_crit_edge:            ; preds = %if.end68.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear.i115.i

if.end75.i106.i:                                  ; preds = %if.end68.i99.i
  %sub76.i100.i = sub i32 %conv71.i97.i, %27
  %35 = tail call i32 @llvm.umin.i32(i32 %sub76.i100.i, i32 %div159.i91.i) #9
  %mul.i101.i = mul i32 %35, %spec.select.i86.i
  %ip.i102.i = getelementptr inbounds %struct.perf_callchain_entry, ptr %11, i32 0, i32 1
  %add.ptr.i103.i = getelementptr i64, ptr %ip.i102.i, i32 %27
  %add.ptr80.i104.i = getelementptr i64, ptr %add.ptr.i103.i, i32 %33
  br i1 %.not.i, label %if.then86.i107.i, label %if.else88.i108.i

if.then86.i107.i:                                 ; preds = %if.end75.i106.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @stack_map_get_build_id_offset(ptr noundef %1, ptr noundef %add.ptr80.i104.i, i32 noundef %35, i1 noundef zeroext true) #9
  br label %if.end89.i110.i

if.else88.i108.i:                                 ; preds = %if.end75.i106.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = call ptr @memcpy(ptr %1, ptr %add.ptr80.i104.i, i32 %mul.i101.i)
  br label %if.end89.i110.i

if.end89.i110.i:                                  ; preds = %if.else88.i108.i, %if.then86.i107.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i101.i, i32 %conv2)
  %cmp90.i109.i = icmp ult i32 %mul.i101.i, %conv2
  br i1 %cmp90.i109.i, label %if.then92.i113.i, label %if.end89.i110.i.____bpf_get_stack_pe.exit_crit_edge

if.end89.i110.i.____bpf_get_stack_pe.exit_crit_edge: ; preds = %if.end89.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %____bpf_get_stack_pe.exit

if.then92.i113.i:                                 ; preds = %if.end89.i110.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr93.i111.i = getelementptr i8, ptr %1, i32 %mul.i101.i
  %sub94.i112.i = sub i32 %conv2, %mul.i101.i
  %37 = call ptr @memset(ptr %add.ptr93.i111.i, i32 0, i32 %sub94.i112.i)
  br label %____bpf_get_stack_pe.exit

clear.i115.i:                                     ; preds = %if.end68.i99.i.clear.i115.i_crit_edge, %if.end17.i89.i.clear.i115.i_crit_edge, %if.end36.i.clear.i115.i_crit_edge
  %err.0.i114.i = phi i32 [ -22, %if.end36.i.clear.i115.i_crit_edge ], [ -22, %if.end17.i89.i.clear.i115.i_crit_edge ], [ -14, %if.end68.i99.i.clear.i115.i_crit_edge ]
  %38 = call ptr @memset(ptr %1, i32 0, i32 %conv2)
  br label %____bpf_get_stack_pe.exit

clear.i:                                          ; preds = %if.else.i.clear.i_crit_edge, %if.end8.i.clear.i_crit_edge, %if.end.i.clear.i_crit_edge
  %err.2.i = phi i32 [ -22, %if.end.i.clear.i_crit_edge ], [ -14, %if.end8.i.clear.i_crit_edge ], [ -14, %if.else.i.clear.i_crit_edge ]
  %39 = call ptr @memset(ptr %1, i32 0, i32 %conv2)
  br label %____bpf_get_stack_pe.exit

____bpf_get_stack_pe.exit:                        ; preds = %clear.i, %clear.i115.i, %if.then92.i113.i, %if.end89.i110.i.____bpf_get_stack_pe.exit_crit_edge, %__bpf_get_stack.exit.i, %if.then.i
  %retval.0.in.i = phi i32 [ %err.2.i, %clear.i ], [ %call.i, %if.then.i ], [ %retval.0.i.i, %__bpf_get_stack.exit.i ], [ %mul.i101.i, %if.end89.i110.i.____bpf_get_stack_pe.exit_crit_edge ], [ %mul.i101.i, %if.then92.i113.i ], [ %err.0.i114.i, %clear.i115.i ]
  %retval.0.i = sext i32 %retval.0.in.i to i64
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_stackmap_copy(ptr noundef %map, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %n_buckets = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_buckets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !29

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.bpf_stack_map, ptr %map, i32 0, i32 4, i32 %1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx) #9, !srcloc !34
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool17.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %5 = inttoptr i32 %asmresult.i to ptr
  %nr = getelementptr inbounds %struct.stack_map_bucket, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 8
  %map_flags.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 8
  %8 = ptrtoint ptr %map_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_flags.i.i, align 8
  %and.i.i = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %cond.i = select i1 %tobool.i.not.i, i32 8, i32 32
  %mul = mul i32 %cond.i, %7
  %data = getelementptr inbounds %struct.stack_map_bucket, ptr %5, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %value, ptr %data, i32 %mul)
  %add.ptr21 = getelementptr i8, ptr %value, i32 %mul
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %11 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value_size, align 4
  %sub = sub i32 %12, %mul
  %13 = call ptr @memset(ptr %add.ptr21, i32 0, i32 %sub)
  %call.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %asmresult.i, ptr %arrayidx) #9, !srcloc !34
  %asmresult.i71 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i71)
  %tobool45.not = icmp eq i32 %asmresult.i71, 0
  br i1 %tobool45.not, label %if.end19.cleanup_crit_edge, label %if.then46

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then46:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %15 = inttoptr i32 %asmresult.i71 to ptr
  %freelist = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 2
  tail call void @pcpu_freelist_push(ptr noundef %freelist, ptr noundef nonnull %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcpu_freelist_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stack_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size1 = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %value_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size1, align 8
  %call.i = tail call zeroext i1 @capable(i32 noundef 39) #9
  br i1 %call.i, label %entry.if.end_crit_edge, label %bpf_capable.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

bpf_capable.exit:                                 ; preds = %entry
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call1.i, label %bpf_capable.exit.if.end_crit_edge, label %bpf_capable.exit.cleanup_crit_edge

bpf_capable.exit.cleanup_crit_edge:               ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

bpf_capable.exit.if.end_crit_edge:                ; preds = %bpf_capable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %bpf_capable.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %map_flags = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 4
  %2 = ptrtoint ptr %map_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags, align 8
  %and = and i32 %3, -61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %max_entries = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 3
  %4 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %key_size = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %key_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp6.not = icmp eq i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp8 = icmp ugt i32 %1, 7
  %or.cond = select i1 %cmp6.not, i1 %cmp8, i1 false
  %rem = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool10.not = icmp eq i32 %rem, 0
  %or.cond126 = select i1 %or.cond, i1 %tobool10.not, i1 false
  br i1 %or.cond126, label %do.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %and15 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %do.end
  %rem18 = and i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem18)
  %tobool19.not = icmp eq i32 %rem18, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.then17
  %div125 = lshr i32 %1, 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_max_stack to i32))
  %8 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div125, i32 %8)
  %cmp21 = icmp ugt i32 %div125, %8
  br i1 %cmp21, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false20.cond.false53_crit_edge

lor.lhs.false20.cond.false53_crit_edge:           ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false53

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %do.end
  %div25124 = lshr i32 %1, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_max_stack to i32))
  %9 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div25124, i32 %9)
  %cmp26 = icmp ugt i32 %div25124, %9
  br i1 %cmp26, label %if.else.cleanup_crit_edge, label %if.else.cond.false53_crit_edge

if.else.cond.false53_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.false53

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false53:                                     ; preds = %if.else.cond.false53_crit_edge, %lor.lhs.false20.cond.false53_crit_edge
  %sub.i127 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i127)
  %tobool.not.i.i.i = icmp eq i32 %sub.i127, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %sub.i127, i1 true) #9, !range !38
  %sub.i.i.i = sub nuw nsw i32 32, %10
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %conv58 = zext i32 %shl.i to i64
  %add64 = add i32 %1, 16
  %conv65 = zext i32 %add64 to i64
  %reass.add = add nuw nsw i64 %conv65, 4
  %reass.mul = mul i64 %reass.add, %conv58
  %add67 = add i64 %reass.mul, 512
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false53.bpf_map_attr_numa_node.exit_crit_edge, label %cond.true.i

cond.false53.bpf_map_attr_numa_node.exit_crit_edge: ; preds = %cond.false53
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_map_attr_numa_node.exit

cond.true.i:                                      ; preds = %cond.false53
  call void @__sanitizer_cov_trace_pc() #11
  %numa_node.i = getelementptr inbounds %struct.anon, ptr %attr, i32 0, i32 6
  %11 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %numa_node.i, align 8
  br label %bpf_map_attr_numa_node.exit

bpf_map_attr_numa_node.exit:                      ; preds = %cond.true.i, %cond.false53.bpf_map_attr_numa_node.exit_crit_edge
  %cond.i = phi i32 [ %12, %cond.true.i ], [ -1, %cond.false53.bpf_map_attr_numa_node.exit_crit_edge ]
  %call69 = tail call ptr @bpf_map_area_alloc(i64 noundef %add67, i32 noundef %cond.i) #9
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %bpf_map_attr_numa_node.exit.cleanup_crit_edge, label %if.end73

bpf_map_attr_numa_node.exit.cleanup_crit_edge:    ; preds = %bpf_map_attr_numa_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end73:                                         ; preds = %bpf_map_attr_numa_node.exit
  tail call void @bpf_map_init_from_attr(ptr noundef nonnull %call69, ptr noundef %attr) #9
  %value_size75 = getelementptr inbounds %struct.bpf_map, ptr %call69, i32 0, i32 5
  %13 = ptrtoint ptr %value_size75 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %1, ptr %value_size75, align 4
  %n_buckets77 = getelementptr inbounds %struct.bpf_stack_map, ptr %call69, i32 0, i32 3
  %14 = ptrtoint ptr %n_buckets77 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl.i, ptr %n_buckets77, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_max_stack to i32))
  %15 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %call78 = tail call i32 @get_callchain_buffers(i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end73.free_smap_crit_edge

if.end73.free_smap_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_smap

if.end81:                                         ; preds = %if.end73
  %call82 = tail call fastcc i32 @prealloc_elems_and_freelist(ptr noundef nonnull %call69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end81.cleanup_crit_edge, label %put_buffers

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

put_buffers:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_callchain_buffers() #9
  br label %free_smap

free_smap:                                        ; preds = %put_buffers, %if.end73.free_smap_crit_edge
  %err.0 = phi i32 [ %call78, %if.end73.free_smap_crit_edge ], [ %call82, %put_buffers ]
  tail call void @bpf_map_area_free(ptr noundef nonnull %call69) #9
  %16 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_smap, %if.end81.cleanup_crit_edge, %bpf_map_attr_numa_node.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %bpf_capable.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %free_smap ], [ %call69, %if.end81.cleanup_crit_edge ], [ inttoptr (i32 -1 to ptr), %bpf_capable.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false20.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then17.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %bpf_map_attr_numa_node.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stack_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %elems = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 1
  %0 = ptrtoint ptr %elems to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elems, align 128
  tail call void @bpf_map_area_free(ptr noundef %1) #9
  %freelist = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 2
  tail call void @pcpu_freelist_destroy(ptr noundef %freelist) #9
  tail call void @bpf_map_area_free(ptr noundef %map) #9
  tail call void @put_callchain_buffers() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stack_map_get_next_key(ptr nocapture noundef readonly %map, ptr noundef readonly %key, ptr nocapture noundef writeonly %next_key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b74 = load i1, ptr @stack_map_get_next_key.__already_done, align 1
  br i1 %.b74, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !29

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @stack_map_get_next_key.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 599, i32 noundef 9, ptr noundef null) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %tobool38.not = icmp eq ptr %key, null
  br i1 %tobool38.not, label %if.end30.if.end44_crit_edge, label %if.else

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.else:                                          ; preds = %if.end30
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %n_buckets = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_buckets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %lor.lhs.false, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.bpf_stack_map, ptr %map, i32 0, i32 4, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool40.not = icmp eq ptr %5, null
  %inc = add nuw i32 %1, 1
  %spec.select = select i1 %tobool40.not, i32 0, i32 %inc
  br label %if.end44

if.end44:                                         ; preds = %lor.lhs.false, %if.else.if.end44_crit_edge, %if.end30.if.end44_crit_edge
  %id.0 = phi i32 [ 0, %if.end30.if.end44_crit_edge ], [ 0, %if.else.if.end44_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %n_buckets45 = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 3
  %6 = ptrtoint ptr %n_buckets45 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_buckets45, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0, i32 %7)
  %cmp4676 = icmp ult i32 %id.0, %7
  br i1 %cmp4676, label %if.end44.land.rhs47_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.land.rhs47_crit_edge:                    ; preds = %if.end44
  br label %land.rhs47

land.rhs47:                                       ; preds = %while.body.land.rhs47_crit_edge, %if.end44.land.rhs47_crit_edge
  %id.177 = phi i32 [ %inc54, %while.body.land.rhs47_crit_edge ], [ %id.0, %if.end44.land.rhs47_crit_edge ]
  %arrayidx49 = getelementptr %struct.bpf_stack_map, ptr %map, i32 0, i32 4, i32 %id.177
  %8 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %9, null
  br i1 %tobool50.not, label %while.body, label %if.end58

while.body:                                       ; preds = %land.rhs47
  %inc54 = add i32 %id.177, 1
  %exitcond.not = icmp eq i32 %inc54, %7
  br i1 %exitcond.not, label %while.body.cleanup_crit_edge, label %while.body.land.rhs47_crit_edge

while.body.land.rhs47_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs47

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end58:                                         ; preds = %land.rhs47
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %next_key to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %id.177, ptr %next_key, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %while.body.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -2, %if.end44.cleanup_crit_edge ], [ -2, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @stack_map_lookup_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr inttoptr (i32 -95 to ptr)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stack_map_update_elem(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %value, i64 noundef %map_flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stack_map_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %n_buckets = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_buckets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !29

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.bpf_stack_map, ptr %map, i32 0, i32 4, i32 %1
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx) #9, !srcloc !34
  %asmresult.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool17.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.then18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = inttoptr i32 %asmresult.i to ptr
  %freelist = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 2
  tail call void @pcpu_freelist_push(ptr noundef %freelist, ptr noundef nonnull %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then18 ], [ -7, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @map_check_no_btf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_perf_callchain(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_get_stackid(ptr noundef %map, ptr nocapture noundef readonly %trace, i64 noundef %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 4
  %map_flags.i.i = getelementptr inbounds %struct.bpf_map, ptr %map, i32 0, i32 8
  %2 = ptrtoint ptr %map_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_flags.i.i, align 8
  %and.i.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  %4 = select i1 %tobool.i.not.i, i32 3, i32 5
  %div215 = lshr i32 %1, %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_max_stack to i32))
  %5 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %sub = sub i32 %5, %div215
  %6 = trunc i64 %flags to i32
  %conv = and i32 %6, 255
  %and1 = and i64 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool = icmp ne i64 %and1, 0
  %7 = ptrtoint ptr %trace to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %trace, align 8
  %9 = trunc i64 %8 to i32
  %conv4 = sub i32 %9, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %conv)
  %cmp.not = icmp ugt i32 %conv4, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub6 = sub i32 %conv4, %conv
  %mul = shl i32 %sub6, 3
  %ip = getelementptr inbounds %struct.perf_callchain_entry, ptr %trace, i32 0, i32 1
  %add.ptr7 = getelementptr i64, ptr %ip, i32 %conv
  %add.ptr8 = getelementptr i64, ptr %add.ptr7, i32 %sub
  %div9201 = lshr exact i32 %mul, 2
  %add.i = add i32 %mul, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mul)
  %cmp13.i = icmp ugt i32 %mul, 12
  br i1 %cmp13.i, label %if.end.while.body.i_crit_edge, label %if.end.while.end.i_crit_edge

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %c.018.i = phi i32 [ %xor26.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %if.end.while.body.i_crit_edge ]
  %b.017.i = phi i32 [ %add27.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %if.end.while.body.i_crit_edge ]
  %a.016.i = phi i32 [ %add23.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %if.end.while.body.i_crit_edge ]
  %k.addr.015.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr8, %if.end.while.body.i_crit_edge ]
  %length.addr.014.i = phi i32 [ %sub28.i, %while.body.i.while.body.i_crit_edge ], [ %div9201, %if.end.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %k.addr.015.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %k.addr.015.i, align 4
  %add2.i = add i32 %11, %a.016.i
  %arrayidx3.i = getelementptr i32, ptr %k.addr.015.i, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %13, %b.017.i
  %arrayidx5.i = getelementptr i32, ptr %k.addr.015.i, i32 2
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %15, %c.018.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #9
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #9
  %xor10.i = xor i32 %sub8.i, %or.i1.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #9
  %xor14.i = xor i32 %sub12.i, %or.i2.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #9
  %xor18.i = xor i32 %sub16.i, %or.i3.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #9
  %xor22.i = xor i32 %sub20.i, %or.i4.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #9
  %xor26.i = xor i32 %sub24.i, %or.i5.i
  %add27.i = add i32 %xor22.i, %add23.i
  %sub28.i = add i32 %length.addr.014.i, -3
  %add.ptr.i = getelementptr i32, ptr %k.addr.015.i, i32 3
  %cmp.i = icmp ugt i32 %sub28.i, 3
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %div9201, %if.end.while.end.i_crit_edge ], [ %sub28.i, %while.body.i.while.end.i_crit_edge ]
  %k.addr.0.lcssa.i = phi ptr [ %add.ptr8, %if.end.while.end.i_crit_edge ], [ %add.ptr.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add.i, %if.end.while.end.i_crit_edge ], [ %add23.i, %while.body.i.while.end.i_crit_edge ]
  %b.0.lcssa.i = phi i32 [ %add.i, %if.end.while.end.i_crit_edge ], [ %add27.i, %while.body.i.while.end.i_crit_edge ]
  %c.0.lcssa.i = phi i32 [ %add.i, %if.end.while.end.i_crit_edge ], [ %xor26.i, %while.body.i.while.end.i_crit_edge ]
  %16 = zext i32 %length.addr.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash2.exit_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %while.end.i.sw.bb31.i_crit_edge
    i32 1, label %while.end.i.sw.bb34.i_crit_edge
  ]

while.end.i.sw.bb34.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34.i

while.end.i.sw.bb31.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31.i

while.end.i.jhash2.exit_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %jhash2.exit

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx29.i = getelementptr i32, ptr %k.addr.0.lcssa.i, i32 2
  %17 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %18, %c.0.lcssa.i
  br label %sw.bb31.i

sw.bb31.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb31.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb31.i_crit_edge ], [ %add30.i, %sw.bb.i ]
  %arrayidx32.i = getelementptr i32, ptr %k.addr.0.lcssa.i, i32 1
  %19 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %20, %b.0.lcssa.i
  br label %sw.bb34.i

sw.bb34.i:                                        ; preds = %sw.bb31.i, %while.end.i.sw.bb34.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb34.i_crit_edge ], [ %add33.i, %sw.bb31.i ]
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb34.i_crit_edge ], [ %c.1.i, %sw.bb31.i ]
  %21 = ptrtoint ptr %k.addr.0.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %k.addr.0.lcssa.i, align 4
  %add36.i = add i32 %22, %a.0.lcssa.i
  %xor37.i = xor i32 %c.2.i, %b.1.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %b.1.i, i32 %b.1.i, i32 14) #9
  %sub39.i = sub i32 %xor37.i, %or.i6.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #9
  %sub42.i = sub i32 %xor40.i, %or.i7.i
  %xor43.i = xor i32 %sub42.i, %b.1.i
  %or.i8.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #9
  %sub45.i = sub i32 %xor43.i, %or.i8.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #9
  %sub48.i = sub i32 %xor46.i, %or.i9.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i10.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #9
  %sub51.i = sub i32 %xor49.i, %or.i10.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #9
  %sub54.i = sub i32 %xor52.i, %or.i11.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #9
  %sub57.i = sub i32 %xor55.i, %or.i12.i
  br label %jhash2.exit

jhash2.exit:                                      ; preds = %sw.bb34.i, %while.end.i.jhash2.exit_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash2.exit_crit_edge ], [ %sub57.i, %sw.bb34.i ]
  %n_buckets = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 3
  %23 = ptrtoint ptr %n_buckets to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_buckets, align 8
  %sub11 = add i32 %24, -1
  %and12 = and i32 %sub11, %c.3.i
  %arrayidx = getelementptr %struct.bpf_stack_map, ptr %map, i32 0, i32 4, i32 %and12
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %26, null
  br i1 %tobool14.not, label %if.end24.thread, label %land.end

land.end:                                         ; preds = %jhash2.exit
  %hash15 = getelementptr inbounds %struct.stack_map_bucket, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %hash15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hash15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %c.3.i)
  %cmp16 = icmp eq i32 %28, %c.3.i
  %and21 = and i64 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp ne i64 %and21, 0
  %29 = and i1 %tobool22.not, %cmp16
  br i1 %29, label %land.end.cleanup_crit_edge, label %if.end24

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %land.end
  br i1 %tobool.i.not.i, label %if.else, label %if.end24.if.then26_crit_edge

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end24.thread:                                  ; preds = %jhash2.exit
  br i1 %tobool.i.not.i, label %if.end24.thread.if.end82_crit_edge, label %if.end24.thread.if.then26_crit_edge

if.end24.thread.if.then26_crit_edge:              ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26

if.end24.thread.if.end82_crit_edge:               ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.then26:                                        ; preds = %if.end24.thread.if.then26_crit_edge, %if.end24.if.then26_crit_edge
  %30 = phi i1 [ false, %if.end24.thread.if.then26_crit_edge ], [ %cmp16, %if.end24.if.then26_crit_edge ]
  %freelist = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 2
  %call27 = tail call ptr @pcpu_freelist_pop(ptr noundef %freelist) #9
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then26.cleanup_crit_edge, label %if.end33, !prof !30

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.then26
  %nr34 = getelementptr inbounds %struct.stack_map_bucket, ptr %call27, i32 0, i32 2
  %31 = ptrtoint ptr %nr34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub6, ptr %nr34, align 8
  %data = getelementptr inbounds %struct.stack_map_bucket, ptr %call27, i32 0, i32 3
  tail call fastcc void @stack_map_get_build_id_offset(ptr noundef %data, ptr noundef %add.ptr8, i32 noundef %sub6, i1 noundef zeroext %tobool)
  %mul37 = shl i32 %sub6, 5
  br i1 %30, label %land.lhs.true40, label %if.end33.if.end54_crit_edge

if.end33.if.end54_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true40:                                  ; preds = %if.end33
  %nr41 = getelementptr inbounds %struct.stack_map_bucket, ptr %26, i32 0, i32 2
  %32 = ptrtoint ptr %nr41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr41, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %sub6)
  %cmp42 = icmp eq i32 %33, %sub6
  br i1 %cmp42, label %land.lhs.true44, label %land.lhs.true40.if.end54_crit_edge

land.lhs.true40.if.end54_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true44:                                  ; preds = %land.lhs.true40
  %data45 = getelementptr inbounds %struct.stack_map_bucket, ptr %26, i32 0, i32 3
  %bcmp202 = tail call i32 @bcmp(ptr %data45, ptr %data, i32 %mul37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp202)
  %cmp50 = icmp eq i32 %bcmp202, 0
  br i1 %cmp50, label %if.then52, label %land.lhs.true44.if.end54_crit_edge

land.lhs.true44.if.end54_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then52:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pcpu_freelist_push(ptr noundef %freelist, ptr noundef nonnull %call27) #9
  br label %cleanup

if.end54:                                         ; preds = %land.lhs.true44.if.end54_crit_edge, %land.lhs.true40.if.end54_crit_edge, %if.end33.if.end54_crit_edge
  %and57 = and i64 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57)
  %tobool58.not = icmp ne i64 %and57, 0
  %34 = or i1 %tobool58.not, %tobool14.not
  br i1 %34, label %if.end54.if.end98_crit_edge, label %if.then59

if.end54.if.end98_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pcpu_freelist_push(ptr noundef %freelist, ptr noundef nonnull %call27) #9
  br label %cleanup

if.else:                                          ; preds = %if.end24
  br i1 %cmp16, label %land.lhs.true65, label %if.else.if.end76_crit_edge

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

land.lhs.true65:                                  ; preds = %if.else
  %nr66 = getelementptr inbounds %struct.stack_map_bucket, ptr %26, i32 0, i32 2
  %35 = ptrtoint ptr %nr66 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr66, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %sub6)
  %cmp67 = icmp eq i32 %36, %sub6
  br i1 %cmp67, label %land.lhs.true69, label %land.lhs.true65.if.end76_crit_edge

land.lhs.true65.if.end76_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

land.lhs.true69:                                  ; preds = %land.lhs.true65
  %data70 = getelementptr inbounds %struct.stack_map_bucket, ptr %26, i32 0, i32 3
  %bcmp = tail call i32 @bcmp(ptr %data70, ptr %add.ptr8, i32 %mul) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp73 = icmp eq i32 %bcmp, 0
  br i1 %cmp73, label %land.lhs.true69.cleanup_crit_edge, label %land.lhs.true69.if.end76_crit_edge

land.lhs.true69.if.end76_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

land.lhs.true69.cleanup_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end76:                                         ; preds = %land.lhs.true69.if.end76_crit_edge, %land.lhs.true65.if.end76_crit_edge, %if.else.if.end76_crit_edge
  %and79 = and i64 %flags, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and79)
  %tobool80.not.not = icmp eq i64 %and79, 0
  br i1 %tobool80.not.not, label %if.end76.cleanup_crit_edge, label %if.end76.if.end82_crit_edge

if.end76.if.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end82:                                         ; preds = %if.end76.if.end82_crit_edge, %if.end24.thread.if.end82_crit_edge
  %freelist83 = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 2
  %call84 = tail call ptr @pcpu_freelist_pop(ptr noundef %freelist83) #9
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %if.end82.cleanup_crit_edge, label %if.end95, !prof !30

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end95:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %data96 = getelementptr inbounds %struct.stack_map_bucket, ptr %call84, i32 0, i32 3
  %37 = call ptr @memcpy(ptr %data96, ptr %add.ptr8, i32 %mul)
  br label %if.end98

if.end98:                                         ; preds = %if.end95, %if.end54.if.end98_crit_edge
  %new_bucket.0 = phi ptr [ %call27, %if.end54.if.end98_crit_edge ], [ %call84, %if.end95 ]
  %hash99 = getelementptr inbounds %struct.stack_map_bucket, ptr %new_bucket.0, i32 0, i32 1
  %38 = ptrtoint ptr %hash99 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %c.3.i, ptr %hash99, align 4
  %nr100 = getelementptr inbounds %struct.stack_map_bucket, ptr %new_bucket.0, i32 0, i32 2
  %39 = ptrtoint ptr %nr100 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub6, ptr %nr100, align 8
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !41
  %40 = ptrtoint ptr %new_bucket.0 to i32
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #9
  %41 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %40, ptr %arrayidx) #9, !srcloc !34
  %asmresult.i = extractvalue { i32, i32 } %41, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool122.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool122.not, label %if.end98.cleanup_crit_edge, label %if.then123

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then123:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  %42 = inttoptr i32 %asmresult.i to ptr
  %freelist124 = getelementptr inbounds %struct.bpf_stack_map, ptr %map, i32 0, i32 2
  tail call void @pcpu_freelist_push(ptr noundef %freelist124, ptr noundef nonnull %42) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %if.end98.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %land.lhs.true69.cleanup_crit_edge, %if.then59, %if.then52, %if.then26.cleanup_crit_edge, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and12, %if.then52 ], [ -17, %if.then59 ], [ -14, %entry.cleanup_crit_edge ], [ %and12, %land.end.cleanup_crit_edge ], [ -12, %if.then26.cleanup_crit_edge ], [ %and12, %land.lhs.true69.cleanup_crit_edge ], [ -17, %if.end76.cleanup_crit_edge ], [ -12, %if.end82.cleanup_crit_edge ], [ %and12, %if.then123 ], [ %and12, %if.end98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcpu_freelist_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stack_map_get_build_id_offset(ptr noundef %id_offs, ptr nocapture noundef readonly %ips, i32 noundef %trace_nr, i1 noundef zeroext %user) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !43
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %entry.bpf_mmap_unlock_get_irq_work.exit_crit_edge, label %do.body10.i

entry.bpf_mmap_unlock_get_irq_work.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpf_mmap_unlock_get_irq_work.exit

do.body10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i21.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i21.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, ptrtoint (ptr @mmap_unlock_work to i32)
  %7 = inttoptr i32 %add.i to ptr
  %8 = getelementptr inbounds %struct.__call_single_node, ptr %7, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %8, i32 noundef 4) #9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i22.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i)
  %tobool.i.i = icmp ne i32 %and.i22.i, 0
  br label %bpf_mmap_unlock_get_irq_work.exit

bpf_mmap_unlock_get_irq_work.exit:                ; preds = %do.body10.i, %entry.bpf_mmap_unlock_get_irq_work.exit_crit_edge
  %irq_work_busy.0.off0.i = phi i1 [ false, %entry.bpf_mmap_unlock_get_irq_work.exit_crit_edge ], [ %tobool.i.i, %do.body10.i ]
  %work.0.i = phi ptr [ null, %entry.bpf_mmap_unlock_get_irq_work.exit_crit_edge ], [ %7, %do.body10.i ]
  br i1 %user, label %lor.lhs.false, label %bpf_mmap_unlock_get_irq_work.exit.if.then_crit_edge

bpf_mmap_unlock_get_irq_work.exit.if.then_crit_edge: ; preds = %bpf_mmap_unlock_get_irq_work.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %bpf_mmap_unlock_get_irq_work.exit
  %11 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false4

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %mm = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 53
  %15 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mm, align 8
  %tobool7.not = icmp eq ptr %16, null
  %brmerge = select i1 %tobool7.not, i1 true, i1 %irq_work_busy.0.off0.i
  br i1 %brmerge, label %lor.lhs.false4.if.then_crit_edge, label %lor.lhs.false10

lor.lhs.false4.if.then_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@stack_map_get_build_id_offset, %if.then.i.i)) #9
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !44

if.then.i.i:                                      ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %16, i1 noundef zeroext false) #9
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %lor.lhs.false10
  %mmap_lock.i = getelementptr inbounds %struct.anon.51, ptr %16, i32 0, i32 15
  %call.i = tail call i32 @down_read_trylock(ptr noundef %mmap_lock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp ne i32 %call.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@stack_map_get_build_id_offset, %if.then.i5.i)) #9
          to label %mmap_read_trylock.exit [label %if.then.i5.i], !srcloc !44

if.then.i5.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %16, i1 noundef zeroext false, i1 noundef zeroext %cmp.i) #9
  br label %mmap_read_trylock.exit

mmap_read_trylock.exit:                           ; preds = %if.then.i5.i, %__mmap_lock_trace_start_locking.exit.i
  br i1 %cmp.i, label %for.cond18.preheader, label %mmap_read_trylock.exit.if.then_crit_edge

mmap_read_trylock.exit.if.then_crit_edge:         ; preds = %mmap_read_trylock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond18.preheader:                             ; preds = %mmap_read_trylock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trace_nr)
  %cmp1991.not = icmp eq i32 %trace_nr, 0
  br i1 %cmp1991.not, label %for.cond18.preheader.for.end50_crit_edge, label %for.cond18.preheader.for.body20_crit_edge

for.cond18.preheader.for.body20_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body20

for.cond18.preheader.for.end50_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end50

if.then:                                          ; preds = %mmap_read_trylock.exit.if.then_crit_edge, %lor.lhs.false4.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %bpf_mmap_unlock_get_irq_work.exit.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trace_nr)
  %cmp95.not = icmp eq i32 %trace_nr, 0
  br i1 %cmp95.not, label %if.then.cleanup_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.096 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.bpf_stack_build_id, ptr %id_offs, i32 %i.096
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %arrayidx, align 8
  %arrayidx15 = getelementptr i64, ptr %ips, i32 %i.096
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx15, align 8
  %20 = getelementptr %struct.bpf_stack_build_id, ptr %id_offs, i32 %i.096, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %19, ptr %20, align 8
  %build_id = getelementptr %struct.bpf_stack_build_id, ptr %id_offs, i32 %i.096, i32 1
  %22 = call ptr @memset(ptr %build_id, i32 0, i32 20)
  %inc = add nuw i32 %i.096, 1
  %exitcond97.not = icmp eq i32 %inc, %trace_nr
  br i1 %exitcond97.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body20:                                       ; preds = %for.inc48.for.body20_crit_edge, %for.cond18.preheader.for.body20_crit_edge
  %i.192 = phi i32 [ %inc49, %for.inc48.for.body20_crit_edge ], [ 0, %for.cond18.preheader.for.body20_crit_edge ]
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %mm23 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 53
  %25 = ptrtoint ptr %mm23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mm23, align 8
  %arrayidx24 = getelementptr i64, ptr %ips, i32 %i.192
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx24, align 8
  %conv = trunc i64 %28 to i32
  %call25 = tail call ptr @find_vma(ptr noundef %26, i32 noundef %conv) #9
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %for.body20.if.then33_crit_edge, label %lor.lhs.false27

for.body20.if.then33_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

lor.lhs.false27:                                  ; preds = %for.body20
  %build_id29 = getelementptr %struct.bpf_stack_build_id, ptr %id_offs, i32 %i.192, i32 1
  %call31 = tail call i32 @build_id_parse(ptr noundef nonnull %call25, ptr noundef %build_id29, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end41, label %lor.lhs.false27.if.then33_crit_edge

lor.lhs.false27.if.then33_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false27.if.then33_crit_edge, %for.body20.if.then33_crit_edge
  %arrayidx34 = getelementptr %struct.bpf_stack_build_id, ptr %id_offs, i32 %i.192
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %arrayidx34, align 8
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx24, align 8
  %32 = getelementptr %struct.bpf_stack_build_id, ptr %id_offs, i32 %i.192, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %31, ptr %32, align 8
  %build_id39 = getelementptr %struct.bpf_stack_build_id, ptr %id_offs, i32 %i.192, i32 1
  %34 = call ptr @memset(ptr %build_id39, i32 0, i32 20)
  br label %for.inc48

if.end41:                                         ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx28 = getelementptr %struct.bpf_stack_build_id, ptr %id_offs, i32 %i.192
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %call25, i32 0, i32 13
  %35 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %36, 12
  %conv42 = zext i32 %shl to i64
  %37 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx24, align 8
  %add = add i64 %38, %conv42
  %39 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call25, align 4
  %conv44 = zext i32 %40 to i64
  %sub = sub i64 %add, %conv44
  %41 = getelementptr %struct.bpf_stack_build_id, ptr %id_offs, i32 %i.192, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %sub, ptr %41, align 8
  %43 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %arrayidx28, align 8
  br label %for.inc48

for.inc48:                                        ; preds = %if.end41, %if.then33
  %inc49 = add nuw i32 %i.192, 1
  %exitcond.not = icmp eq i32 %inc49, %trace_nr
  br i1 %exitcond.not, label %for.inc48.for.end50_crit_edge, label %for.inc48.for.body20_crit_edge

for.inc48.for.body20_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

for.inc48.for.end50_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end50

for.end50:                                        ; preds = %for.inc48.for.end50_crit_edge, %for.cond18.preheader.for.end50_crit_edge
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %mm53 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 53
  %46 = ptrtoint ptr %mm53 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mm53, align 8
  %tobool.not.i89 = icmp eq ptr %work.0.i, null
  br i1 %tobool.not.i89, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@stack_map_get_build_id_offset, %if.then.i.i.i)) #9
          to label %mmap_read_unlock.exit.i [label %if.then.i.i.i], !srcloc !44

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__mmap_lock_do_trace_released(ptr noundef %47, i1 noundef zeroext false) #9
  br label %mmap_read_unlock.exit.i

mmap_read_unlock.exit.i:                          ; preds = %if.then.i.i.i, %if.then.i
  %mmap_lock.i.i = getelementptr inbounds %struct.anon.51, ptr %47, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock.i.i) #9
  br label %cleanup

if.else.i:                                        ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #11
  %mm1.i = getelementptr inbounds %struct.mmap_unlock_irq_work, ptr %work.0.i, i32 0, i32 1
  %48 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %mm1.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon.51, ptr %47, i32 0, i32 15, i32 6
  %49 = tail call ptr @llvm.returnaddress(i32 0) #9
  %50 = ptrtoint ptr %49 to i32
  tail call void @lock_release(ptr noundef %dep_map.i, i32 noundef %50) #9
  %call.i90 = tail call zeroext i1 @irq_work_queue(ptr noundef nonnull %work.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %mmap_read_unlock.exit.i, %for.body.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @build_id_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bpf_get_stack(ptr noundef %regs, ptr noundef %task, ptr noundef readonly %trace_in, ptr noundef %buf, i32 noundef %size, i64 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %rctx.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %0 = trunc i64 %flags to i32
  %conv = and i32 %0, 255
  %and2 = and i64 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3 = icmp ne i64 %and2, 0
  %lnot = xor i1 %tobool3, true
  %and7 = and i64 %flags, -2560
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  %1 = and i64 %flags, 2304
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %1)
  %2 = icmp ne i64 %1, 2048
  %or.cond = and i1 %tobool8.not, %2
  br i1 %or.cond, label %if.end17, label %entry.clear_crit_edge, !prof !32

entry.clear_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear

if.end17:                                         ; preds = %entry
  %phi.sel = select i1 %tobool.not, i32 8, i32 32
  %spec.select = select i1 %tobool3, i32 %phi.sel, i32 8
  %3 = add nsw i32 %spec.select, -1
  %rem = and i32 %3, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool22.not = icmp eq i32 %rem, 0
  br i1 %tobool22.not, label %if.end30, label %if.end17.clear_crit_edge, !prof !29

if.end17.clear_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear

if.end30:                                         ; preds = %if.end17
  %tobool31.not = icmp eq ptr %task, null
  %brmerge152 = or i1 %tobool31.not, %lnot
  br i1 %brmerge152, label %if.end30.if.end39_crit_edge, label %land.lhs.true35

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true35:                                  ; preds = %if.end30
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and36 = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp = icmp eq i32 %and36, 0
  br i1 %cmp, label %land.lhs.true35.if.end39_crit_edge, label %land.lhs.true35.clear_crit_edge

land.lhs.true35.clear_crit_edge:                  ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear

land.lhs.true35.if.end39_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true35.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %6 = select i1 %tobool.not, i32 3, i32 5
  %7 = select i1 %tobool3, i32 %6, i32 3
  %div159 = lshr i32 %size, %7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_max_stack to i32))
  %8 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %div159)
  %tobool44.not = icmp eq ptr %trace_in, null
  br i1 %tobool44.not, label %if.else46, label %if.end39.if.end68_crit_edge

if.end39.if.end68_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.else46:                                        ; preds = %if.end39
  %brmerge153 = or i1 %tobool31.not, %tobool3
  br i1 %brmerge153, label %if.else52, label %if.then51

if.then51:                                        ; preds = %if.else46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx.i) #9
  %10 = ptrtoint ptr %rctx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %rctx.i, align 4, !annotation !45
  %call.i = call ptr @get_callchain_entry(ptr noundef nonnull %rctx.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then51.get_callchain_entry_for_task.exit_crit_edge, label %if.end.i

if.then51.get_callchain_entry_for_task.exit_crit_edge: ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_callchain_entry_for_task.exit

if.end.i:                                         ; preds = %if.then51
  %ip.i = getelementptr inbounds %struct.perf_callchain_entry, ptr %call.i, i32 0, i32 1
  %add.ptr.i = getelementptr i64, ptr %ip.i, i32 %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_perf_event_max_stack to i32))
  %11 = load i32, ptr @sysctl_perf_event_max_stack, align 4
  %sub.i = sub i32 %11, %9
  %call2.i = call i32 @stack_trace_save_tsk(ptr noundef nonnull %task, ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 0) #9
  %add.i = add i32 %call2.i, %9
  %conv.i = zext i32 %add.i to i64
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv.i, ptr %call.i, align 8
  %i.026.i = add i32 %add.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.026.i, i32 %9)
  %cmp.not27.i = icmp slt i32 %i.026.i, %9
  br i1 %cmp.not27.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.026.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %ip.i, i32 %i.028.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %conv11.i = zext i32 %14 to i64
  %arrayidx12.i = getelementptr i64, ptr %ip.i, i32 %i.028.i
  %15 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv11.i, ptr %arrayidx12.i, align 8
  %i.0.i = add i32 %i.028.i, -1
  %cmp.not.i = icmp slt i32 %i.0.i, %9
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %16 = ptrtoint ptr %rctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rctx.i, align 4
  call void @put_callchain_entry(i32 noundef %17) #9
  br label %get_callchain_entry_for_task.exit

get_callchain_entry_for_task.exit:                ; preds = %for.end.i, %if.then51.get_callchain_entry_for_task.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx.i) #9
  br label %if.end57

if.else52:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #11
  %call55 = tail call ptr @get_perf_callchain(ptr noundef %regs, i32 noundef %9, i1 noundef zeroext %lnot, i1 noundef zeroext %tobool3, i32 noundef %8, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end57

if.end57:                                         ; preds = %if.else52, %get_callchain_entry_for_task.exit
  %trace.0 = phi ptr [ %call.i, %get_callchain_entry_for_task.exit ], [ %call55, %if.else52 ]
  %tobool58.not = icmp eq ptr %trace.0, null
  br i1 %tobool58.not, label %if.end57.clear_crit_edge, label %if.end57.if.end68_crit_edge, !prof !30

if.end57.if.end68_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end57.clear_crit_edge:                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear

if.end68:                                         ; preds = %if.end57.if.end68_crit_edge, %if.end39.if.end68_crit_edge
  %trace.0158 = phi ptr [ %trace.0, %if.end57.if.end68_crit_edge ], [ %trace_in, %if.end39.if.end68_crit_edge ]
  %18 = ptrtoint ptr %trace.0158 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %trace.0158, align 8
  %20 = trunc i64 %19 to i32
  %conv71 = sub i32 %20, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %conv71, i32 %conv)
  %cmp72 = icmp ult i32 %conv71, %conv
  br i1 %cmp72, label %if.end68.clear_crit_edge, label %if.end75

if.end68.clear_crit_edge:                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear

if.end75:                                         ; preds = %if.end68
  %sub76 = sub i32 %conv71, %conv
  %21 = call i32 @llvm.umin.i32(i32 %sub76, i32 %div159)
  %mul = mul i32 %21, %spec.select
  %ip = getelementptr inbounds %struct.perf_callchain_entry, ptr %trace.0158, i32 0, i32 1
  %add.ptr = getelementptr i64, ptr %ip, i32 %conv
  %add.ptr80 = getelementptr i64, ptr %add.ptr, i32 %9
  %brmerge155 = or i1 %tobool.not, %lnot
  br i1 %brmerge155, label %if.else88, label %if.then86

if.then86:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @stack_map_get_build_id_offset(ptr noundef %buf, ptr noundef %add.ptr80, i32 noundef %21, i1 noundef zeroext true)
  br label %if.end89

if.else88:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %22 = call ptr @memcpy(ptr %buf, ptr %add.ptr80, i32 %mul)
  br label %if.end89

if.end89:                                         ; preds = %if.else88, %if.then86
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %size)
  %cmp90 = icmp ult i32 %mul, %size
  br i1 %cmp90, label %if.then92, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr93 = getelementptr i8, ptr %buf, i32 %mul
  %sub94 = sub i32 %size, %mul
  %23 = call ptr @memset(ptr %add.ptr93, i32 0, i32 %sub94)
  br label %cleanup

clear:                                            ; preds = %if.end68.clear_crit_edge, %if.end57.clear_crit_edge, %land.lhs.true35.clear_crit_edge, %if.end17.clear_crit_edge, %entry.clear_crit_edge
  %err.0 = phi i32 [ -22, %entry.clear_crit_edge ], [ -22, %if.end17.clear_crit_edge ], [ -14, %if.end68.clear_crit_edge ], [ -14, %if.end57.clear_crit_edge ], [ -14, %land.lhs.true35.clear_crit_edge ]
  %24 = call ptr @memset(ptr %buf, i32 0, i32 %size)
  br label %cleanup

cleanup:                                          ; preds = %clear, %if.then92, %if.end89.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %clear ], [ %mul, %if.then92 ], [ %mul, %if.end89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_callchain_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stack_trace_save_tsk(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_callchain_entry(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_map_area_alloc(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_init_from_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_callchain_buffers(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @prealloc_elems_and_freelist(ptr noundef %smap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %smap, i32 0, i32 5
  %0 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value_size, align 4
  %conv = zext i32 %1 to i64
  %add = add nuw nsw i64 %conv, 16
  %max_entries = getelementptr inbounds %struct.bpf_map, ptr %smap, i32 0, i32 6
  %2 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_entries, align 8
  %conv2 = zext i32 %3 to i64
  %mul = mul i64 %add, %conv2
  %numa_node = getelementptr inbounds %struct.bpf_map, ptr %smap, i32 0, i32 12
  %4 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numa_node, align 8
  %call = tail call ptr @bpf_map_area_alloc(i64 noundef %mul, i32 noundef %5) #9
  %elems = getelementptr inbounds %struct.bpf_stack_map, ptr %smap, i32 0, i32 1
  %6 = ptrtoint ptr %elems to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %elems, align 128
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %freelist = getelementptr inbounds %struct.bpf_stack_map, ptr %smap, i32 0, i32 2
  %call5 = tail call i32 @pcpu_freelist_init(ptr noundef %freelist) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %7 = ptrtoint ptr %elems to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %elems, align 128
  br i1 %tobool6.not, label %if.end8, label %free_elems

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv11 = trunc i64 %add to i32
  %9 = ptrtoint ptr %max_entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_entries, align 8
  tail call void @pcpu_freelist_populate(ptr noundef %freelist, ptr noundef %8, i32 noundef %conv11, i32 noundef %10) #9
  br label %cleanup

free_elems:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_map_area_free(ptr noundef %8) #9
  br label %cleanup

cleanup:                                          ; preds = %free_elems, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %free_elems ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_callchain_buffers() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_map_area_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcpu_freelist_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcpu_freelist_populate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcpu_freelist_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @bpf_get_stackid_proto, !1, !"bpf_get_stackid_proto", i1 false, i1 false}
!1 = !{!"../kernel/bpf/stackmap.c", i32 308, i32 29}
!2 = !{ptr @bpf_get_stackid_proto_pe, !3, !"bpf_get_stackid_proto_pe", i1 false, i1 false}
!3 = !{!"../kernel/bpf/stackmap.c", i32 377, i32 29}
!4 = !{ptr @bpf_get_stack_proto, !5, !"bpf_get_stack_proto", i1 false, i1 false}
!5 = !{!"../kernel/bpf/stackmap.c", i32 461, i32 29}
!6 = !{ptr @bpf_get_task_stack_proto, !7, !"bpf_get_task_stack_proto", i1 false, i1 false}
!7 = !{!"../kernel/bpf/stackmap.c", i32 488, i32 29}
!8 = !{ptr @bpf_get_stack_proto_pe, !9, !"bpf_get_stack_proto_pe", i1 false, i1 false}
!9 = !{!"../kernel/bpf/stackmap.c", i32 552, i32 29}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/bpf/stackmap.c", i32 667, i32 18}
!12 = !{ptr @stack_trace_map_ops, !13, !"stack_trace_map_ops", i1 false, i1 false}
!13 = !{!"../kernel/bpf/stackmap.c", i32 658, i32 26}
!14 = !{ptr @stack_trace_map_btf_id, !15, !"stack_trace_map_btf_id", i1 false, i1 false}
!15 = !{!"../kernel/bpf/stackmap.c", i32 657, i32 12}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../kernel/bpf/stackmap.c", i32 599, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{!"sp"}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{!"branch_weights", i32 4000000, i32 4008002}
!32 = !{!"branch_weights", i32 2000, i32 2002}
!33 = !{i64 2157436554}
!34 = !{i64 1206509, i64 1206526, i64 1206550, i64 1206576, i64 1206594}
!35 = !{i64 2157436907}
!36 = !{i64 2157437765}
!37 = !{i64 2157438113}
!38 = !{i32 0, i32 33}
!39 = !{i64 2157442404}
!40 = !{i64 2157442757}
!41 = !{i64 2157398307}
!42 = !{i64 2157398659}
!43 = !{i64 1106173}
!44 = !{i64 2149261067, i64 2149261072, i64 2149261085, i64 2149261129, i64 2149261163, i64 2149261184}
!45 = !{!"auto-init"}
