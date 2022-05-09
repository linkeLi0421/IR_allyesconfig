; ModuleID = '/llk/IR_all_yes/kernel/bpf/trampoline.c_pt.bc'
source_filename = "../kernel/bpf/trampoline.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_verifier_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_prog_ops = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.106 }
%union.anon.106 = type { i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.158 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { %struct.anon.160, [0 x %struct.sock_filter] }
%struct.anon.160 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.157 }
%struct.atomic64_t = type { i64 }
%union.anon.157 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.btf_type = type { i32, i32, %union.anon.107 }
%union.anon.107 = type { i32 }
%struct.bpf_trampoline = type { %struct.hlist_node, %struct.mutex, %struct.refcount_struct, i64, %struct.anon.4, ptr, [3 x %struct.hlist_head], [3 x i32], ptr, i64, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.4 = type { %struct.btf_func_model, ptr, i8 }
%struct.btf_func_model = type { i8, i8, [12 x i8] }
%struct.bpf_tramp_progs = type { [38 x ptr], i32 }
%struct.bpf_tramp_image = type { ptr, %struct.bpf_ksym, %struct.percpu_ref, ptr, ptr, %union.anon.5 }
%struct.percpu_ref = type { i32, ptr }
%union.anon.5 = type { %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_attach_target_info = type { %struct.btf_func_model, i32, ptr, ptr }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.91, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.35 }
%struct.llist_node = type { ptr }
%union.anon.35 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.91 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.36 = type { i8, i8, i8, i8 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }

@bpf_extension_verifier_ops = dso_local constant { %struct.bpf_verifier_ops, [36 x i8] } zeroinitializer, align 32
@bpf_extension_prog_ops = dso_local constant { %struct.bpf_prog_ops, [28 x i8] } zeroinitializer, align 32
@bpf_trampoline_unlink_prog.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kernel/bpf/trampoline.c\00", [40 x i8] zeroinitializer }, align 32
@trampoline_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @trampoline_mutex, i64 52), ptr getelementptr (i8, ptr @trampoline_mutex, i64 52) }, ptr @trampoline_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@bpf_trampoline_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_trampoline_put.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_trampoline_put.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__initcall__kmod_trampoline__406_664_init_trampolines7 = internal global ptr @init_trampolines, section ".initcall7.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__bpf_tramp_image_put_rcu.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&im->work)\00", [35 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bpf_trampoline_%llu_%u\00", [41 x i8] zeroinitializer }, align 32
@is_ftrace_location.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trampoline_table = internal global { [1024 x %struct.hlist_head], [1024 x i8] } zeroinitializer, align 32
@bpf_trampoline_lookup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tr->mutex\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trampoline_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trampoline_mutex\00", [47 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@rcu_trace_lock_map = external dso_local global %struct.lockdep_map, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 24, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 24, i64 25, i64 26, i64 27]
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"bpf_extension_verifier_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 16, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"bpf_extension_prog_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 18, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 479, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"trampoline_mutex\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 227, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 328, i32 38 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"trampoline_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 25, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 92, i32 2 }
@___asan_gen_.47 = private constant [27 x i8] c"../kernel/bpf/trampoline.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 28, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 695, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 271, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 723, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_trampoline__406_664_init_trampolines7, ptr @bpf_extension_verifier_ops, ptr @bpf_extension_prog_ops, ptr @.str, ptr @trampoline_mutex, ptr @.str.5, ptr @.str.6, ptr @trampoline_table, ptr @bpf_trampoline_lookup.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_extension_verifier_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_extension_prog_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trampoline_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trampoline_table to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_trampoline_lookup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bpf_prog_has_trampoline(ptr nocapture noundef readonly %prog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %expected_attach_type = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %0 = ptrtoint ptr %expected_attach_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %expected_attach_type, align 4
  %.off = add i32 %1, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_jit_alloc_exec_page() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bpf_jit_alloc_exec(i32 noundef 4096) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @find_vm_area(ptr noundef nonnull %call) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.set_vm_flush_reset_perms.exit_crit_edge, label %if.then.i

if.end.set_vm_flush_reset_perms.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_vm_flush_reset_perms.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr inbounds %struct.vm_struct, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %1, 256
  store i32 %or.i, ptr %flags.i, align 4
  br label %set_vm_flush_reset_perms.exit

set_vm_flush_reset_perms.exit:                    ; preds = %if.then.i, %if.end.set_vm_flush_reset_perms.exit_crit_edge
  %2 = ptrtoint ptr %call to i32
  %call1 = tail call i32 @set_memory_x(i32 noundef %2, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %set_vm_flush_reset_perms.exit, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_jit_alloc_exec(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_x(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_image_ksym_add(ptr noundef %data, ptr noundef %ksym) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  %1 = ptrtoint ptr %ksym to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %ksym, align 4
  %add = add i32 %0, 4096
  %end = getelementptr inbounds %struct.bpf_ksym, ptr %ksym, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %end, align 4
  tail call void @bpf_ksym_add(ptr noundef %ksym) #10
  %3 = ptrtoint ptr %ksym to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ksym, align 4
  %conv = zext i32 %4 to i64
  %name = getelementptr inbounds %struct.bpf_ksym, ptr %ksym, i32 0, i32 2
  tail call void @perf_event_ksymbol(i16 noundef zeroext 1, i64 noundef %conv, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %name) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_ksym_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_ksymbol(i16 noundef zeroext, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_image_ksym_del(ptr noundef %ksym) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bpf_ksym_del(ptr noundef %ksym) #10
  %0 = ptrtoint ptr %ksym to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ksym, align 4
  %conv = zext i32 %1 to i64
  %name = getelementptr inbounds %struct.bpf_ksym, ptr %ksym, i32 0, i32 2
  tail call void @perf_event_ksymbol(i16 noundef zeroext 1, i64 noundef %conv, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %name) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_ksym_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_trampoline_link_prog(ptr noundef %prog, ptr noundef %tr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %expected_attach_type.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %0 = ptrtoint ptr %expected_attach_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %expected_attach_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default.i [
    i32 24, label %entry.bpf_attach_type_to_tramp.exit_crit_edge
    i32 26, label %sw.bb1.i
    i32 25, label %sw.bb2.i
    i32 27, label %sw.bb3.i
  ]

entry.bpf_attach_type_to_tramp.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_attach_type_to_tramp.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_attach_type_to_tramp.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_attach_type_to_tramp.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %3 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux.i, align 4
  %attach_func_proto.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 28
  %5 = ptrtoint ptr %attach_func_proto.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attach_func_proto.i, align 8
  %7 = getelementptr inbounds %struct.btf_type, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 2
  br label %bpf_attach_type_to_tramp.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_attach_type_to_tramp.exit

bpf_attach_type_to_tramp.exit:                    ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.bpf_attach_type_to_tramp.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %sw.default.i ], [ 1, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 0, %entry.bpf_attach_type_to_tramp.exit_crit_edge ], [ %..i, %sw.bb3.i ]
  %mutex = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %extension_prog = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 5
  %10 = ptrtoint ptr %extension_prog to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extension_prog, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end, label %bpf_attach_type_to_tramp.exit.out_crit_edge

bpf_attach_type_to_tramp.exit.out_crit_edge:      ; preds = %bpf_attach_type_to_tramp.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %bpf_attach_type_to_tramp.exit
  %progs_cnt = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 7
  %12 = ptrtoint ptr %progs_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %progs_cnt, align 8
  %arrayidx2 = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 4
  br i1 %cmp, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool4.not = icmp eq i32 %add, 0
  br i1 %tobool4.not, label %if.end6, label %if.then3.out_crit_edge

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %extension_prog to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %prog, ptr %extension_prog, align 8
  %addr = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr, align 8
  %bpf_func = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %19 = ptrtoint ptr %bpf_func to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bpf_func, align 4
  %call8 = tail call i32 @bpf_arch_text_poke(ptr noundef %18, i32 noundef 1, ptr noundef null, ptr noundef %20) #10
  br label %out

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %add)
  %cmp10 = icmp sgt i32 %add, 37
  br i1 %cmp10, label %if.end9.out_crit_edge, label %if.end12

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %if.end9
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %21 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aux, align 4
  %tramp_hlist = getelementptr inbounds %struct.bpf_prog_aux, ptr %22, i32 0, i32 27
  %pprev.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %22, i32 0, i32 27, i32 1
  %23 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i51.not = icmp eq ptr %24, null
  br i1 %tobool.not.i51.not, label %if.end16, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end16:                                         ; preds = %if.end12
  %arrayidx19 = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 6, i32 %retval.0.i
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx19, align 4
  %27 = ptrtoint ptr %tramp_hlist to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %26, ptr %tramp_hlist, align 4
  %tobool.not.i52 = icmp eq ptr %26, null
  br i1 %tobool.not.i52, label %if.end16.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end16.hlist_add_head.exit_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i53 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %pprev.i53 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %tramp_hlist, ptr %pprev.i53, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end16.hlist_add_head.exit_crit_edge
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %tramp_hlist, ptr %arrayidx19, align 4
  %30 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %arrayidx19, ptr %pprev.i, align 4
  %arrayidx21 = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 7, i32 %retval.0.i
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx21, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %arrayidx21, align 4
  %call22 = tail call fastcc i32 @bpf_trampoline_update(ptr noundef %tr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %hlist_add_head.exit.out_crit_edge, label %if.then24

hlist_add_head.exit.out_crit_edge:                ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then24:                                        ; preds = %hlist_add_head.exit
  %33 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aux, align 4
  %tramp_hlist26 = getelementptr inbounds %struct.bpf_prog_aux, ptr %34, i32 0, i32 27
  %pprev.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %34, i32 0, i32 27, i32 1
  %35 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.not.i, label %if.then24.hlist_del_init.exit_crit_edge, label %if.then.i

if.then24.hlist_del_init.exit_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.then24
  %37 = ptrtoint ptr %tramp_hlist26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tramp_hlist26, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %38, ptr %36, align 4
  %tobool.not.i3.i = icmp eq ptr %38, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %36, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %41 = ptrtoint ptr %tramp_hlist26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %tramp_hlist26, align 4
  %42 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.then24.hlist_del_init.exit_crit_edge
  %43 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx21, align 4
  %dec = add i32 %44, -1
  store i32 %dec, ptr %arrayidx21, align 4
  br label %out

out:                                              ; preds = %hlist_del_init.exit, %hlist_add_head.exit.out_crit_edge, %if.end12.out_crit_edge, %if.end9.out_crit_edge, %if.end6, %if.then3.out_crit_edge, %bpf_attach_type_to_tramp.exit.out_crit_edge
  %err.0 = phi i32 [ %call8, %if.end6 ], [ %call22, %hlist_del_init.exit ], [ 0, %hlist_add_head.exit.out_crit_edge ], [ -16, %bpf_attach_type_to_tramp.exit.out_crit_edge ], [ -16, %if.then3.out_crit_edge ], [ -7, %if.end9.out_crit_edge ], [ -16, %if.end12.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_arch_text_poke(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpf_trampoline_update(ptr noundef %tr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 468) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %for.body.preheader.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.preheader.i:                             ; preds = %entry
  %arrayidx.i = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 7, i32 0
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %nr_progs.i = getelementptr %struct.bpf_tramp_progs, ptr %call7.i.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %nr_progs.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %nr_progs.i, align 8
  %arrayidx7.i = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %5, null
  %add.ptr.i = getelementptr i8, ptr %5, i32 -184
  %tobool11.not5357.i = icmp eq ptr %add.ptr.i, null
  %tobool11.not53.i = or i1 %tobool8.not.i, %tobool11.not5357.i
  br i1 %tobool11.not53.i, label %for.body.preheader.i.for.inc27.i_crit_edge, label %for.body.preheader.i.for.body12.i_crit_edge

for.body.preheader.i.for.body12.i_crit_edge:      ; preds = %for.body.preheader.i
  br label %for.body12.i

for.body.preheader.i.for.inc27.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body.preheader.i.for.body12.i_crit_edge
  %ip_arg.0 = phi i8 [ %or.i, %for.body12.i.for.body12.i_crit_edge ], [ 0, %for.body.preheader.i.for.body12.i_crit_edge ]
  %aux.055.i = phi ptr [ %add.ptr23.i, %for.body12.i.for.body12.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i.for.body12.i_crit_edge ]
  %progs.054.i = phi ptr [ %incdec.ptr.i, %for.body12.i.for.body12.i_crit_edge ], [ %call7.i.i.i.i, %for.body.preheader.i.for.body12.i_crit_edge ]
  %prog.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %aux.055.i, i32 0, i32 41
  %6 = ptrtoint ptr %prog.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prog.i, align 4
  %call_get_func_ip.i = getelementptr inbounds %struct.bpf_prog, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %call_get_func_ip.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %call_get_func_ip.i, align 2
  %9 = trunc i16 %bf.load.i to i8
  %10 = lshr i8 %9, 4
  %conv.i = and i8 %10, 1
  %or.i = or i8 %conv.i, %ip_arg.0
  %incdec.ptr.i = getelementptr ptr, ptr %progs.054.i, i32 1
  %11 = ptrtoint ptr %progs.054.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %7, ptr %progs.054.i, align 4
  %tramp_hlist.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %aux.055.i, i32 0, i32 27
  %12 = ptrtoint ptr %tramp_hlist.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tramp_hlist.i, align 8
  %tobool19.not.i = icmp eq ptr %13, null
  %add.ptr23.i = getelementptr i8, ptr %13, i32 -184
  %tobool11.not60.i = icmp eq ptr %add.ptr23.i, null
  %tobool11.not.i = or i1 %tobool19.not.i, %tobool11.not60.i
  br i1 %tobool11.not.i, label %for.body12.i.for.inc27.i_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.i

for.body12.i.for.inc27.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27.i

for.inc27.i:                                      ; preds = %for.body12.i.for.inc27.i_crit_edge, %for.body.preheader.i.for.inc27.i_crit_edge
  %ip_arg.1 = phi i8 [ 0, %for.body.preheader.i.for.inc27.i_crit_edge ], [ %or.i, %for.body12.i.for.inc27.i_crit_edge ]
  %arrayidx.1.i = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i, align 4
  %nr_progs.1.i = getelementptr %struct.bpf_tramp_progs, ptr %call7.i.i.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %nr_progs.1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %nr_progs.1.i, align 4
  %add.1.i = add i32 %15, %2
  %arrayidx7.1.i = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx7.1.i, align 4
  %tobool8.not.1.i = icmp eq ptr %18, null
  %add.ptr.1.i = getelementptr i8, ptr %18, i32 -184
  %tobool11.not53.158.i = icmp eq ptr %add.ptr.1.i, null
  %tobool11.not53.1.i = or i1 %tobool8.not.1.i, %tobool11.not53.158.i
  br i1 %tobool11.not53.1.i, label %for.inc27.i.for.inc27.1.i_crit_edge, label %for.body12.preheader.1.i

for.inc27.i.for.inc27.1.i_crit_edge:              ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27.1.i

for.body12.preheader.1.i:                         ; preds = %for.inc27.i
  %arrayidx2.1.i = getelementptr %struct.bpf_tramp_progs, ptr %call7.i.i.i.i, i32 1
  br label %for.body12.1.i

for.body12.1.i:                                   ; preds = %for.body12.1.i.for.body12.1.i_crit_edge, %for.body12.preheader.1.i
  %ip_arg.2 = phi i8 [ %ip_arg.1, %for.body12.preheader.1.i ], [ %or.1.i, %for.body12.1.i.for.body12.1.i_crit_edge ]
  %aux.055.1.i = phi ptr [ %add.ptr.1.i, %for.body12.preheader.1.i ], [ %add.ptr23.1.i, %for.body12.1.i.for.body12.1.i_crit_edge ]
  %progs.054.1.i = phi ptr [ %arrayidx2.1.i, %for.body12.preheader.1.i ], [ %incdec.ptr.1.i, %for.body12.1.i.for.body12.1.i_crit_edge ]
  %prog.1.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %aux.055.1.i, i32 0, i32 41
  %19 = ptrtoint ptr %prog.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prog.1.i, align 4
  %call_get_func_ip.1.i = getelementptr inbounds %struct.bpf_prog, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %call_get_func_ip.1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load.1.i = load i16, ptr %call_get_func_ip.1.i, align 2
  %22 = trunc i16 %bf.load.1.i to i8
  %23 = lshr i8 %22, 4
  %conv.1.i = and i8 %23, 1
  %or.1.i = or i8 %conv.1.i, %ip_arg.2
  %incdec.ptr.1.i = getelementptr ptr, ptr %progs.054.1.i, i32 1
  %24 = ptrtoint ptr %progs.054.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %progs.054.1.i, align 4
  %tramp_hlist.1.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %aux.055.1.i, i32 0, i32 27
  %25 = ptrtoint ptr %tramp_hlist.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tramp_hlist.1.i, align 8
  %tobool19.not.1.i = icmp eq ptr %26, null
  %add.ptr23.1.i = getelementptr i8, ptr %26, i32 -184
  %tobool11.not.161.i = icmp eq ptr %add.ptr23.1.i, null
  %tobool11.not.1.i = or i1 %tobool19.not.1.i, %tobool11.not.161.i
  br i1 %tobool11.not.1.i, label %for.body12.1.i.for.inc27.1.i_crit_edge, label %for.body12.1.i.for.body12.1.i_crit_edge

for.body12.1.i.for.body12.1.i_crit_edge:          ; preds = %for.body12.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.1.i

for.body12.1.i.for.inc27.1.i_crit_edge:           ; preds = %for.body12.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc27.1.i

for.inc27.1.i:                                    ; preds = %for.body12.1.i.for.inc27.1.i_crit_edge, %for.inc27.i.for.inc27.1.i_crit_edge
  %ip_arg.3 = phi i8 [ %ip_arg.1, %for.inc27.i.for.inc27.1.i_crit_edge ], [ %or.1.i, %for.body12.1.i.for.inc27.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.2.i, align 4
  %nr_progs.2.i = getelementptr %struct.bpf_tramp_progs, ptr %call7.i.i.i.i, i32 2, i32 1
  %29 = ptrtoint ptr %nr_progs.2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %nr_progs.2.i, align 8
  %arrayidx7.2.i = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx7.2.i, align 4
  %tobool8.not.2.i = icmp eq ptr %31, null
  %add.ptr.2.i = getelementptr i8, ptr %31, i32 -184
  %tobool11.not53.259.i = icmp eq ptr %add.ptr.2.i, null
  %tobool11.not53.2.i = or i1 %tobool8.not.2.i, %tobool11.not53.259.i
  br i1 %tobool11.not53.2.i, label %for.inc27.1.i.bpf_trampoline_get_progs.exit_crit_edge, label %for.body12.preheader.2.i

for.inc27.1.i.bpf_trampoline_get_progs.exit_crit_edge: ; preds = %for.inc27.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_trampoline_get_progs.exit

for.body12.preheader.2.i:                         ; preds = %for.inc27.1.i
  %arrayidx2.2.i = getelementptr %struct.bpf_tramp_progs, ptr %call7.i.i.i.i, i32 2
  br label %for.body12.2.i

for.body12.2.i:                                   ; preds = %for.body12.2.i.for.body12.2.i_crit_edge, %for.body12.preheader.2.i
  %ip_arg.4 = phi i8 [ %ip_arg.3, %for.body12.preheader.2.i ], [ %or.2.i, %for.body12.2.i.for.body12.2.i_crit_edge ]
  %aux.055.2.i = phi ptr [ %add.ptr.2.i, %for.body12.preheader.2.i ], [ %add.ptr23.2.i, %for.body12.2.i.for.body12.2.i_crit_edge ]
  %progs.054.2.i = phi ptr [ %arrayidx2.2.i, %for.body12.preheader.2.i ], [ %incdec.ptr.2.i, %for.body12.2.i.for.body12.2.i_crit_edge ]
  %prog.2.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %aux.055.2.i, i32 0, i32 41
  %32 = ptrtoint ptr %prog.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prog.2.i, align 4
  %call_get_func_ip.2.i = getelementptr inbounds %struct.bpf_prog, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %call_get_func_ip.2.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.2.i = load i16, ptr %call_get_func_ip.2.i, align 2
  %35 = trunc i16 %bf.load.2.i to i8
  %36 = lshr i8 %35, 4
  %conv.2.i = and i8 %36, 1
  %or.2.i = or i8 %conv.2.i, %ip_arg.4
  %incdec.ptr.2.i = getelementptr ptr, ptr %progs.054.2.i, i32 1
  %37 = ptrtoint ptr %progs.054.2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %33, ptr %progs.054.2.i, align 4
  %tramp_hlist.2.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %aux.055.2.i, i32 0, i32 27
  %38 = ptrtoint ptr %tramp_hlist.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tramp_hlist.2.i, align 8
  %tobool19.not.2.i = icmp eq ptr %39, null
  %add.ptr23.2.i = getelementptr i8, ptr %39, i32 -184
  %tobool11.not.262.i = icmp eq ptr %add.ptr23.2.i, null
  %tobool11.not.2.i = or i1 %tobool19.not.2.i, %tobool11.not.262.i
  br i1 %tobool11.not.2.i, label %for.body12.2.i.bpf_trampoline_get_progs.exit_crit_edge, label %for.body12.2.i.for.body12.2.i_crit_edge

for.body12.2.i.for.body12.2.i_crit_edge:          ; preds = %for.body12.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12.2.i

for.body12.2.i.bpf_trampoline_get_progs.exit_crit_edge: ; preds = %for.body12.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_trampoline_get_progs.exit

bpf_trampoline_get_progs.exit:                    ; preds = %for.body12.2.i.bpf_trampoline_get_progs.exit_crit_edge, %for.inc27.1.i.bpf_trampoline_get_progs.exit_crit_edge
  %ip_arg.5 = phi i8 [ %ip_arg.3, %for.inc27.1.i.bpf_trampoline_get_progs.exit_crit_edge ], [ %or.2.i, %for.body12.2.i.bpf_trampoline_get_progs.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %bpf_trampoline_get_progs.exit.if.then_crit_edge, label %if.end

bpf_trampoline_get_progs.exit.if.then_crit_edge:  ; preds = %bpf_trampoline_get_progs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %bpf_trampoline_get_progs.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i203 = phi ptr [ %call7.i.i.i.i, %bpf_trampoline_get_progs.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %40 = ptrtoint ptr %retval.0.i203 to i32
  br label %cleanup

if.end:                                           ; preds = %bpf_trampoline_get_progs.exit
  %add.2.i = sub i32 0, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1.i, i32 %add.2.i)
  %cmp = icmp eq i32 %add.1.i, %add.2.i
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %cur_image = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 8
  %ftrace_managed.i = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 4, i32 2
  %41 = ptrtoint ptr %ftrace_managed.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ftrace_managed.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i156 = icmp eq i8 %42, 0
  br i1 %tobool.not.i156, label %if.end.i, label %if.then3.unregister_fentry.exit_crit_edge

if.then3.unregister_fentry.exit_crit_edge:        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %unregister_fentry.exit

if.end.i:                                         ; preds = %if.then3
  %43 = ptrtoint ptr %cur_image to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur_image, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %addr.i = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %addr.i, align 8
  %call2.i = tail call i32 @bpf_arch_text_poke(ptr noundef %48, i32 noundef 0, ptr noundef %46, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i.unregister_fentry.exit_crit_edge

if.end.i.unregister_fentry.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unregister_fentry.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mod.i.i = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 10
  %49 = ptrtoint ptr %mod.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mod.i.i, align 8
  tail call void @module_put(ptr noundef %50) #10
  %51 = ptrtoint ptr %mod.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %mod.i.i, align 8
  br label %unregister_fentry.exit

unregister_fentry.exit:                           ; preds = %if.then4.i, %if.end.i.unregister_fentry.exit_crit_edge, %if.then3.unregister_fentry.exit_crit_edge
  %ret.013.i = phi i32 [ 0, %if.then4.i ], [ %call2.i, %if.end.i.unregister_fentry.exit_crit_edge ], [ -524, %if.then3.unregister_fentry.exit_crit_edge ]
  %52 = ptrtoint ptr %cur_image to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur_image, align 4
  %ip_after_call.i = getelementptr inbounds %struct.bpf_tramp_image, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %ip_after_call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ip_after_call.i, align 4
  %tobool.not.i157 = icmp eq ptr %55, null
  br i1 %tobool.not.i157, label %if.end23.i, label %if.then.i

if.then.i:                                        ; preds = %unregister_fentry.exit
  %ip_epilogue.i = getelementptr inbounds %struct.bpf_tramp_image, ptr %53, i32 0, i32 4
  %56 = ptrtoint ptr %ip_epilogue.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ip_epilogue.i, align 4
  %call.i = tail call i32 @bpf_arch_text_poke(ptr noundef nonnull %55, i32 noundef 1, ptr noundef null, ptr noundef %57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i158_crit_edge, label %do.end.i, !prof !59

if.then.i.if.end.i158_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i158

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i158

if.end.i158:                                      ; preds = %do.end.i, %if.then.i.if.end.i158_crit_edge
  %pcref.i = getelementptr inbounds %struct.bpf_tramp_image, ptr %53, i32 0, i32 2
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %pcref.i, ptr noundef null) #10
  br label %bpf_tramp_image_put.exit

if.end23.i:                                       ; preds = %unregister_fentry.exit
  call void @__sanitizer_cov_trace_pc() #12
  %58 = getelementptr inbounds %struct.bpf_tramp_image, ptr %53, i32 0, i32 5
  tail call void @call_rcu_tasks_trace(ptr noundef %58, ptr noundef nonnull @__bpf_tramp_image_put_rcu_tasks) #10
  br label %bpf_tramp_image_put.exit

bpf_tramp_image_put.exit:                         ; preds = %if.end23.i, %if.end.i158
  %59 = ptrtoint ptr %cur_image to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %cur_image, align 4
  %selector = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 9
  %60 = ptrtoint ptr %selector to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 0, ptr %selector, align 8
  br label %out

if.end7:                                          ; preds = %if.end
  %key = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 3
  %61 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %key, align 8
  %selector8 = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 9
  %63 = ptrtoint ptr %selector8 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %selector8, align 8
  %conv = trunc i64 %64 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 236) #13
  %tobool.not.i159 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i159, label %if.end7.out.i_crit_edge, label %if.end.i161

if.end7.out.i_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end.i161:                                      ; preds = %if.end7
  %call1.i = tail call i32 @bpf_jit_charge_modmem(i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i160 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i160, label %if.end4.i, label %if.end.i161.out_free_im.i_crit_edge

if.end.i161.out_free_im.i_crit_edge:              ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_im.i

if.end4.i:                                        ; preds = %if.end.i161
  %call.i.i = tail call ptr @bpf_jit_alloc_exec(i32 noundef 4096) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %bpf_jit_alloc_exec_page.exit.thread.i, label %if.end.i.i

bpf_jit_alloc_exec_page.exit.thread.i:            ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %call7.i.i.i, align 8
  br label %out_uncharge.i

if.end.i.i:                                       ; preds = %if.end4.i
  %call.i.i.i = tail call ptr @find_vm_area(ptr noundef nonnull %call.i.i) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end9.i_crit_edge, label %if.then.i.i.i

if.end.i.i.if.end9.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i.i.i = getelementptr inbounds %struct.vm_struct, ptr %call.i.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i.i.i, align 4
  %or.i.i.i = or i32 %68, 256
  store i32 %or.i.i.i, ptr %flags.i.i.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.i.i, %if.end.i.i.if.end9.i_crit_edge
  %69 = ptrtoint ptr %call.i.i to i32
  %call1.i.i = tail call i32 @set_memory_x(i32 noundef %69, i32 noundef 1) #10
  %70 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i, ptr %call7.i.i.i, align 8
  %pcref.i162 = getelementptr inbounds %struct.bpf_tramp_image, ptr %call7.i.i.i, i32 0, i32 2
  %call10.i = tail call i32 @percpu_ref_init(ptr noundef %pcref.i162, ptr noundef nonnull @__bpf_tramp_image_release, i32 noundef 0, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i163 = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i163, label %if.end13.i, label %out_free_image.i

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %ksym14.i = getelementptr inbounds %struct.bpf_tramp_image, ptr %call7.i.i.i, i32 0, i32 1
  %lnode.i = getelementptr inbounds %struct.bpf_tramp_image, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %71 = ptrtoint ptr %lnode.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %lnode.i, ptr %lnode.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bpf_tramp_image, ptr %call7.i.i.i, i32 0, i32 1, i32 3, i32 1
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %lnode.i, ptr %prev.i.i, align 8
  %name.i = getelementptr inbounds %struct.bpf_tramp_image, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %call15.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 128, ptr noundef nonnull @.str.6, i64 noundef %62, i32 noundef %conv) #10
  %73 = ptrtoint ptr %ksym14.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %69, ptr %ksym14.i, align 4
  %add.i.i = add i32 %69, 4096
  %end.i.i = getelementptr inbounds %struct.bpf_tramp_image, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %end.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add.i.i, ptr %end.i.i, align 8
  tail call void @bpf_ksym_add(ptr noundef %ksym14.i) #10
  %75 = ptrtoint ptr %ksym14.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ksym14.i, align 4
  %conv.i.i = zext i32 %76 to i64
  tail call void @perf_event_ksymbol(i16 noundef zeroext 1, i64 noundef %conv.i.i, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %name.i) #10
  br label %bpf_tramp_image_alloc.exit

out_free_image.i:                                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @bpf_jit_free_exec(ptr noundef %78) #10
  br label %out_uncharge.i

out_uncharge.i:                                   ; preds = %out_free_image.i, %bpf_jit_alloc_exec_page.exit.thread.i
  %err.0.i = phi i32 [ %call10.i, %out_free_image.i ], [ -12, %bpf_jit_alloc_exec_page.exit.thread.i ]
  tail call void @bpf_jit_uncharge_modmem(i32 noundef 1) #10
  br label %out_free_im.i

out_free_im.i:                                    ; preds = %out_uncharge.i, %if.end.i161.out_free_im.i_crit_edge
  %err.1.i = phi i32 [ %call1.i, %if.end.i161.out_free_im.i_crit_edge ], [ %err.0.i, %out_uncharge.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %out.i

out.i:                                            ; preds = %out_free_im.i, %if.end7.out.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %out_free_im.i ], [ -12, %if.end7.out.i_crit_edge ]
  %79 = inttoptr i32 %err.2.i to ptr
  br label %bpf_tramp_image_alloc.exit

bpf_tramp_image_alloc.exit:                       ; preds = %out.i, %if.end13.i
  %retval.0.i164 = phi ptr [ %79, %out.i ], [ %call7.i.i.i, %if.end13.i ]
  %cmp.i165 = icmp ugt ptr %retval.0.i164, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then11, label %if.end13

if.then11:                                        ; preds = %bpf_tramp_image_alloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %retval.0.i164 to i32
  br label %out

if.end13:                                         ; preds = %bpf_tramp_image_alloc.exit
  %81 = ptrtoint ptr %nr_progs.1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_progs.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not = icmp eq i32 %82, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end13.if.then17_crit_edge

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end13
  %83 = ptrtoint ptr %nr_progs.2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_progs.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool16.not = icmp eq i32 %84, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.end18_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end13.if.then17_crit_edge
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %lor.lhs.false.if.end18_crit_edge
  %flags.0 = phi i32 [ 6, %if.then17 ], [ 1, %lor.lhs.false.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ip_arg.5)
  %tobool19.not = icmp eq i8 %ip_arg.5, 0
  %or = or i32 %flags.0, 8
  %spec.select = select i1 %tobool19.not, i32 %flags.0, i32 %or
  %85 = ptrtoint ptr %retval.0.i164 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %retval.0.i164, align 4
  %add.ptr = getelementptr i8, ptr %86, i32 4096
  %func = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 4
  %addr = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %addr, align 8
  %call25 = tail call i32 @arch_prepare_bpf_trampoline(ptr noundef %retval.0.i164, ptr noundef %86, ptr noundef %add.ptr, ptr noundef %func, i32 noundef %spec.select, ptr noundef nonnull %call7.i.i.i.i, ptr noundef %88)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end18.out_crit_edge, label %if.end29

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end29:                                         ; preds = %if.end18
  %cur_image30 = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 8
  %89 = ptrtoint ptr %cur_image30 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur_image30, align 4
  %tobool31.not = icmp eq ptr %90, null
  br i1 %tobool31.not, label %if.end29.land.rhs59_crit_edge, label %land.rhs

if.end29.land.rhs59_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs59

land.rhs:                                         ; preds = %if.end29
  %91 = ptrtoint ptr %selector8 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %selector8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %92)
  %cmp33 = icmp eq i64 %92, 0
  br i1 %cmp33, label %if.end49, label %land.rhs.if.then94_crit_edge, !prof !60

land.rhs.if.then94_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94

if.end49:                                         ; preds = %land.rhs
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 381, i32 noundef 9, ptr noundef null) #10
  %93 = ptrtoint ptr %cur_image30 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr = load ptr, ptr %cur_image30, align 4
  %tobool58.not = icmp eq ptr %.pr, null
  br i1 %tobool58.not, label %if.end49.land.rhs59_crit_edge, label %if.end49.if.then94_crit_edge

if.end49.if.then94_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94

if.end49.land.rhs59_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs59

land.rhs59:                                       ; preds = %if.end49.land.rhs59_crit_edge, %if.end29.land.rhs59_crit_edge
  %94 = ptrtoint ptr %selector8 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %selector8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %95)
  %tobool61.not = icmp eq i64 %95, 0
  br i1 %tobool61.not, label %land.rhs59.if.end84_crit_edge, label %do.end78, !prof !59

land.rhs59.if.end84_crit_edge:                    ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end78:                                         ; preds = %land.rhs59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 382, i32 noundef 9, ptr noundef null) #10
  br label %if.end84

if.end84:                                         ; preds = %do.end78, %land.rhs59.if.end84_crit_edge
  %96 = ptrtoint ptr %cur_image30 to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr207.pr = load ptr, ptr %cur_image30, align 4
  %tobool93.not = icmp eq ptr %.pr207.pr, null
  br i1 %tobool93.not, label %if.else, label %if.end84.if.then94_crit_edge

if.end84.if.then94_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94

if.then94:                                        ; preds = %if.end84.if.then94_crit_edge, %if.end49.if.then94_crit_edge, %land.rhs.if.then94_crit_edge
  %97 = phi ptr [ %.pr207.pr, %if.end84.if.then94_crit_edge ], [ %.pr, %if.end49.if.then94_crit_edge ], [ %90, %land.rhs.if.then94_crit_edge ]
  %ftrace_managed.i166 = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 4, i32 2
  %98 = ptrtoint ptr %ftrace_managed.i166 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ftrace_managed.i166, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i167 = icmp eq i8 %99, 0
  br i1 %tobool.not.i167, label %if.end101, label %if.then94.out_crit_edge

if.then94.out_crit_edge:                          ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else:                                          ; preds = %if.end84
  %100 = ptrtoint ptr %retval.0.i164 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %retval.0.i164, align 4
  %102 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %addr, align 8
  %104 = ptrtoint ptr %103 to i32
  %call.i.i172 = tail call i32 @ftrace_location(i32 noundef %104) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i172)
  %tobool.not.i.i173 = icmp eq i32 %call.i.i172, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i172, i32 %104)
  %cmp.not.i.i = icmp eq i32 %call.i.i172, %104
  %or.cond.i = or i1 %tobool.not.i.i173, %cmp.not.i.i
  br i1 %or.cond.i, label %if.end.i175, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.else
  %.b45.i.i = load i1, ptr @is_ftrace_location.__already_done, align 1
  br i1 %.b45.i.i, label %land.rhs.i.i.out_crit_edge, label %if.then8.i.i, !prof !59

land.rhs.i.i.out_crit_edge:                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @is_ftrace_location.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end.i175:                                      ; preds = %if.else
  %105 = xor i1 %tobool.not.i.i173, true
  %ftrace_managed.i174 = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 4, i32 2
  %frombool.i = zext i1 %105 to i8
  %106 = ptrtoint ptr %ftrace_managed.i174 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %frombool.i, ptr %ftrace_managed.i174, align 4
  %107 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %110, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !61
  %111 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %addr, align 8
  %113 = ptrtoint ptr %112 to i32
  %call.i28.i = tail call ptr @__module_text_address(i32 noundef %113) #10
  %tobool.not.i29.i = icmp eq ptr %call.i28.i, null
  br i1 %tobool.not.i29.i, label %if.end.i175.bpf_trampoline_module_get.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i175.bpf_trampoline_module_get.exit.i_crit_edge: ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #12
  br label %bpf_trampoline_module_get.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i176 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %call.i28.i) #10
  br label %bpf_trampoline_module_get.exit.i

bpf_trampoline_module_get.exit.i:                 ; preds = %land.lhs.true.i.i, %if.end.i175.bpf_trampoline_module_get.exit.i_crit_edge
  %err.0.i.i = phi i1 [ true, %if.end.i175.bpf_trampoline_module_get.exit.i_crit_edge ], [ %call1.i.i176, %land.lhs.true.i.i ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !62
  %114 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i9.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %sub.i.i.i = add i32 %117, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i10.i.i, align 4
  %mod5.i.i = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 10
  %118 = ptrtoint ptr %mod5.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i28.i, ptr %mod5.i.i, align 8
  br i1 %err.0.i.i, label %if.end5.i, label %bpf_trampoline_module_get.exit.i.out_crit_edge

bpf_trampoline_module_get.exit.i.out_crit_edge:   ; preds = %bpf_trampoline_module_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5.i:                                        ; preds = %bpf_trampoline_module_get.exit.i
  %119 = ptrtoint ptr %ftrace_managed.i174 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %ftrace_managed.i174, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool8.not.i177 = icmp eq i8 %120, 0
  br i1 %tobool8.not.i177, label %if.end12.i, label %if.end5.i.if.then14.i_crit_edge

if.end5.i.if.then14.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.end12.i:                                       ; preds = %if.end5.i
  %call11.i = tail call i32 @bpf_arch_text_poke(ptr noundef %103, i32 noundef 0, ptr noundef null, ptr noundef %101) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.if.end104_crit_edge, label %if.end12.i.if.then14.i_crit_edge

if.end12.i.if.then14.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.end12.i.if.end104_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.then14.i:                                      ; preds = %if.end12.i.if.then14.i_crit_edge, %if.end5.i.if.then14.i_crit_edge
  %ret.034.i = phi i32 [ %call11.i, %if.end12.i.if.then14.i_crit_edge ], [ -524, %if.end5.i.if.then14.i_crit_edge ]
  %121 = ptrtoint ptr %mod5.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mod5.i.i, align 8
  tail call void @module_put(ptr noundef %122) #10
  %123 = ptrtoint ptr %mod5.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %mod5.i.i, align 8
  br label %out

if.end101:                                        ; preds = %if.then94
  %124 = ptrtoint ptr %retval.0.i164 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %retval.0.i164, align 4
  %126 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %97, align 4
  %128 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %addr, align 8
  %call2.i169 = tail call i32 @bpf_arch_text_poke(ptr noundef %129, i32 noundef 0, ptr noundef %127, ptr noundef %125) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i169)
  %tobool102.not = icmp eq i32 %call2.i169, 0
  br i1 %tobool102.not, label %if.end101.if.end104_crit_edge, label %if.end101.out_crit_edge

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end101.if.end104_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

if.end104:                                        ; preds = %if.end101.if.end104_crit_edge, %if.end12.i.if.end104_crit_edge
  %130 = ptrtoint ptr %cur_image30 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cur_image30, align 4
  %tobool106.not = icmp eq ptr %131, null
  br i1 %tobool106.not, label %if.end104.if.end109_crit_edge, label %if.then107

if.end104.if.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end109

if.then107:                                       ; preds = %if.end104
  %ip_after_call.i179 = getelementptr inbounds %struct.bpf_tramp_image, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %ip_after_call.i179 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ip_after_call.i179, align 4
  %tobool.not.i180 = icmp eq ptr %133, null
  br i1 %tobool.not.i180, label %if.end23.i188, label %if.then.i184

if.then.i184:                                     ; preds = %if.then107
  %ip_epilogue.i181 = getelementptr inbounds %struct.bpf_tramp_image, ptr %131, i32 0, i32 4
  %134 = ptrtoint ptr %ip_epilogue.i181 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ip_epilogue.i181, align 4
  %call.i182 = tail call i32 @bpf_arch_text_poke(ptr noundef nonnull %133, i32 noundef 1, ptr noundef null, ptr noundef %135) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool2.not.i183 = icmp eq i32 %call.i182, 0
  br i1 %tobool2.not.i183, label %if.then.i184.if.end.i187_crit_edge, label %do.end.i185, !prof !59

if.then.i184.if.end.i187_crit_edge:               ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i187

do.end.i185:                                      ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i187

if.end.i187:                                      ; preds = %do.end.i185, %if.then.i184.if.end.i187_crit_edge
  %pcref.i186 = getelementptr inbounds %struct.bpf_tramp_image, ptr %131, i32 0, i32 2
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %pcref.i186, ptr noundef null) #10
  br label %if.end109

if.end23.i188:                                    ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #12
  %136 = getelementptr inbounds %struct.bpf_tramp_image, ptr %131, i32 0, i32 5
  tail call void @call_rcu_tasks_trace(ptr noundef %136, ptr noundef nonnull @__bpf_tramp_image_put_rcu_tasks) #10
  br label %if.end109

if.end109:                                        ; preds = %if.end23.i188, %if.end.i187, %if.end104.if.end109_crit_edge
  %137 = ptrtoint ptr %cur_image30 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %retval.0.i164, ptr %cur_image30, align 4
  %138 = ptrtoint ptr %selector8 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %selector8, align 8
  %inc = add i64 %139, 1
  store i64 %inc, ptr %selector8, align 8
  br label %out

out:                                              ; preds = %if.end109, %if.end101.out_crit_edge, %if.then14.i, %bpf_trampoline_module_get.exit.i.out_crit_edge, %if.then8.i.i, %land.rhs.i.i.out_crit_edge, %if.then94.out_crit_edge, %if.end18.out_crit_edge, %if.then11, %bpf_tramp_image_put.exit
  %err.1 = phi i32 [ %ret.013.i, %bpf_tramp_image_put.exit ], [ %80, %if.then11 ], [ %call25, %if.end18.out_crit_edge ], [ %call2.i169, %if.end101.out_crit_edge ], [ 0, %if.end109 ], [ -14, %land.rhs.i.i.out_crit_edge ], [ -14, %if.then8.i.i ], [ %ret.034.i, %if.then14.i ], [ -2, %bpf_trampoline_module_get.exit.i.out_crit_edge ], [ -524, %if.then94.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %40, %if.then ], [ %err.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_trampoline_unlink_prog(ptr nocapture noundef readonly %prog, ptr noundef %tr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %expected_attach_type.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 3
  %0 = ptrtoint ptr %expected_attach_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %expected_attach_type.i, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %1, label %if.then [
    i32 24, label %entry.if.end41_crit_edge
    i32 26, label %sw.bb1.i
    i32 25, label %sw.bb2.i
    i32 27, label %sw.bb3.i
  ]

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %3 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux.i, align 4
  %attach_func_proto.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 28
  %5 = ptrtoint ptr %attach_func_proto.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attach_func_proto.i, align 8
  %7 = getelementptr inbounds %struct.btf_type, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  %..i = select i1 %tobool.not.i, i32 1, i32 2
  br label %if.end41

if.then:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %extension_prog = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 5
  %10 = ptrtoint ptr %extension_prog to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extension_prog, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %land.rhs, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.rhs:                                         ; preds = %if.then
  %.b55 = load i1, ptr @bpf_trampoline_unlink_prog.__already_done, align 1
  br i1 %.b55, label %land.rhs.if.end30_crit_edge, label %if.then9, !prof !59

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bpf_trampoline_unlink_prog.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 479, i32 noundef 9, ptr noundef null) #10
  br label %if.end30

if.end30:                                         ; preds = %if.then9, %land.rhs.if.end30_crit_edge, %if.then.if.end30_crit_edge
  %addr = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr, align 8
  %14 = ptrtoint ptr %extension_prog to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %extension_prog, align 8
  %bpf_func = getelementptr inbounds %struct.bpf_prog, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %bpf_func to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bpf_func, align 4
  %call39 = tail call i32 @bpf_arch_text_poke(ptr noundef %13, i32 noundef 1, ptr noundef %17, ptr noundef null) #10
  %18 = ptrtoint ptr %extension_prog to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %extension_prog, align 8
  br label %out

if.end41:                                         ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.if.end41_crit_edge
  %retval.0.i.ph = phi i32 [ %..i, %sw.bb3.i ], [ 0, %entry.if.end41_crit_edge ], [ 2, %sw.bb1.i ], [ 1, %sw.bb2.i ]
  %mutex57 = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex57, i32 noundef 0) #10
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 10
  %19 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aux, align 4
  %tramp_hlist = getelementptr inbounds %struct.bpf_prog_aux, ptr %20, i32 0, i32 27
  %pprev.i.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %20, i32 0, i32 27, i32 1
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.not.i, label %if.end41.hlist_del_init.exit_crit_edge, label %if.then.i

if.end41.hlist_del_init.exit_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %if.end41
  %23 = ptrtoint ptr %tramp_hlist to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tramp_hlist, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %22, align 4
  %tobool.not.i3.i = icmp eq ptr %24, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %22, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %27 = ptrtoint ptr %tramp_hlist to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %tramp_hlist, align 4
  %28 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.end41.hlist_del_init.exit_crit_edge
  %arrayidx = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 7, i32 %retval.0.i.ph
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %arrayidx, align 4
  %call42 = tail call fastcc i32 @bpf_trampoline_update(ptr noundef %tr)
  br label %out

out:                                              ; preds = %hlist_del_init.exit, %if.end30
  %mutex60 = phi ptr [ %mutex, %if.end30 ], [ %mutex57, %hlist_del_init.exit ]
  %err.0 = phi i32 [ %call39, %if.end30 ], [ %call42, %hlist_del_init.exit ]
  tail call void @mutex_unlock(ptr noundef %mutex60) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_trampoline_get(i64 noundef %key, ptr nocapture noundef readonly %tgt_info) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @trampoline_mutex, i32 noundef 0) #10
  %conv.i.i = trunc i64 %key to i32
  %shr.i.i = lshr i64 %key, 32
  %conv1.i.i = trunc i64 %shr.i.i to i32
  %mul.i.i.i = mul i32 %conv1.i.i, 1640531527
  %xor.i.i = xor i32 %mul.i.i.i, %conv.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 22
  %arrayidx.i = getelementptr [1024 x %struct.hlist_head], ptr @trampoline_table, i32 0, i32 %shr.i.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %tr.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %tr.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %tr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %tr.0.i = load ptr, ptr %tr.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %tr.0.i, null
  br i1 %tobool2.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %key3.i = getelementptr inbounds %struct.bpf_trampoline, ptr %tr.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %key3.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %key3.i, align 8
  %cmp.i = icmp eq i64 %2, %key
  br i1 %cmp.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %refcnt.i = getelementptr inbounds %struct.bpf_trampoline, ptr %tr.0.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !63
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !60

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #10
  br label %if.end

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 184) #13
  %tobool15.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool15.not.i, label %bpf_trampoline_lookup.exit, label %if.end17.i

if.end17.i:                                       ; preds = %for.end.i
  %key18.i = getelementptr inbounds %struct.bpf_trampoline, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %key18.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %key, ptr %key18.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %call7.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end17.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.end17.i.hlist_add_head.exit.i_crit_edge:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %pprev.i49.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev.i49.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i.i, ptr %pprev.i49.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.end17.i.hlist_add_head.exit.i_crit_edge
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx.i, ptr %pprev.i.i, align 4
  %refcnt21.i = getelementptr inbounds %struct.bpf_trampoline, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt21.i, i32 noundef 4) #10
  %14 = ptrtoint ptr %refcnt21.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %refcnt21.i, align 4
  %mutex.i = getelementptr inbounds %struct.bpf_trampoline, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @bpf_trampoline_lookup.__key) #10
  %uglygep.i = getelementptr i8, ptr %call7.i.i.i, i32 140
  %15 = call ptr @memset(ptr %uglygep.i, i32 0, i32 12)
  br label %if.end

bpf_trampoline_lookup.exit:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @trampoline_mutex) #10
  br label %cleanup

if.end:                                           ; preds = %hlist_add_head.exit.i, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge
  %tr.1.i.ph = phi ptr [ %call7.i.i.i, %hlist_add_head.exit.i ], [ %tr.0.i, %if.end15.sink.split.i.i.i.i ], [ %tr.0.i, %if.else.i.i.i.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @trampoline_mutex) #10
  %mutex = getelementptr inbounds %struct.bpf_trampoline, ptr %tr.1.i.ph, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %addr = getelementptr inbounds %struct.bpf_trampoline, ptr %tr.1.i.ph, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr, align 8
  %tobool1.not = icmp eq ptr %17, null
  br i1 %tobool1.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %func = getelementptr inbounds %struct.bpf_trampoline, ptr %tr.1.i.ph, i32 0, i32 4
  %18 = call ptr @memcpy(ptr %func, ptr %tgt_info, i32 14)
  %tgt_addr = getelementptr inbounds %struct.bpf_attach_target_info, ptr %tgt_info, i32 0, i32 1
  %19 = ptrtoint ptr %tgt_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tgt_addr, align 4
  %21 = inttoptr i32 %20 to ptr
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %addr, align 8
  br label %out

out:                                              ; preds = %if.end3, %if.end.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %bpf_trampoline_lookup.exit
  %retval.0 = phi ptr [ %tr.1.i.ph, %out ], [ null, %bpf_trampoline_lookup.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_trampoline_put(ptr noundef %tr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tr, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @trampoline_mutex, i32 noundef 0) #10
  %refcnt = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end2, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.out_crit_edge, label %if.then10.i.i.i, !prof !59

if.end5.i.i.i.out_crit_edge:                      ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #10
  br label %out

if.end2:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  %mutex = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 1
  %call3 = tail call zeroext i1 @mutex_is_locked(ptr noundef %mutex) #10
  br i1 %call3, label %land.rhs, label %if.end2.if.end33_crit_edge

if.end2.if.end33_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

land.rhs:                                         ; preds = %if.end2
  %.b179 = load i1, ptr @bpf_trampoline_put.__already_done, align 1
  br i1 %.b179, label %land.rhs.if.end33_crit_edge, label %if.then11, !prof !59

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bpf_trampoline_put.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 520, i32 noundef 9, ptr noundef null) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then11, %land.rhs.if.end33_crit_edge, %if.end2.if.end33_crit_edge
  %progs_hlist = getelementptr inbounds %struct.bpf_trampoline, ptr %tr, i32 0, i32 6
  %1 = ptrtoint ptr %progs_hlist to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %progs_hlist, align 4
  %tobool.not.i.not = icmp eq ptr %2, null
  br i1 %tobool.not.i.not, label %if.end100.critedge, label %land.rhs52

land.rhs52:                                       ; preds = %if.end33
  %.b175178 = load i1, ptr @bpf_trampoline_put.__already_done.1, align 1
  br i1 %.b175178, label %land.rhs52.out_crit_edge, label %if.then63, !prof !59

land.rhs52.out_crit_edge:                         ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then63:                                        ; preds = %land.rhs52
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bpf_trampoline_put.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 521, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end100.critedge:                               ; preds = %if.end33
  %arrayidx103 = getelementptr %struct.bpf_trampoline, ptr %tr, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx103, align 4
  %tobool.not.i183.not = icmp eq ptr %4, null
  br i1 %tobool.not.i183.not, label %if.end162.critedge, label %land.rhs114

land.rhs114:                                      ; preds = %if.end100.critedge
  %.b176177 = load i1, ptr @bpf_trampoline_put.__already_done.2, align 1
  br i1 %.b176177, label %land.rhs114.out_crit_edge, label %if.then125, !prof !59

land.rhs114.out_crit_edge:                        ; preds = %land.rhs114
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then125:                                       ; preds = %land.rhs114
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @bpf_trampoline_put.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 523, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end162.critedge:                               ; preds = %if.end100.critedge
  %5 = ptrtoint ptr %tr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tr, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %tr, i32 0, i32 1
  %7 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev2.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %6, ptr %8, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end162.critedge.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end162.critedge.hlist_del.exit_crit_edge:      ; preds = %if.end162.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end162.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end162.critedge.hlist_del.exit_crit_edge
  %11 = ptrtoint ptr %tr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %tr, align 4
  %12 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %tr) #10
  br label %out

out:                                              ; preds = %hlist_del.exit, %if.then125, %land.rhs114.out_crit_edge, %if.then63, %land.rhs52.out_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.out_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @trampoline_mutex) #10
  br label %return

return:                                           ; preds = %out, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @__bpf_prog_enter(ptr nocapture noundef readonly %prog) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  tail call void @migrate_disable() #10
  %active = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 8
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add7 = add i32 %15, 1
  store i32 %add7, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not = icmp eq i32 %15, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !59

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @inc_misses_counter(ptr noundef %prog)
  br label %return

if.end:                                           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__bpf_prog_enter, %if.then.i14)) #10
          to label %return [label %if.then.i14], !srcloc !68

if.then.i14:                                      ; preds = %if.end
  %call3.i = tail call i64 @sched_clock() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call3.i)
  %tobool4.not.i = icmp eq i64 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then13.i, label %if.then.i14.return_crit_edge, !prof !60

if.then.i14.return_crit_edge:                     ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then13.i:                                      ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %if.then13.i, %if.then.i14.return_crit_edge, %if.end, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ 1, %if.then13.i ], [ %call3.i, %if.then.i14.return_crit_edge ], [ 1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @inc_misses_counter(ptr nocapture noundef readonly %prog) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %stats1 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.bpf_prog_stats, ptr %9, i32 0, i32 3
  %call3 = tail call fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %syncp)
  %misses = getelementptr inbounds %struct.bpf_prog_stats, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %misses to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %misses, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %misses, align 8
  %dep_map.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %9, i32 0, i32 3, i32 0, i32 1
  %12 = tail call ptr @llvm.returnaddress(i32 0) #10
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  %14 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %15, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %and.i.i = and i32 %call3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then8.i, label %entry.do.body10.i_crit_edge

entry.do.body10.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i

if.then8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.then8.i, %entry.do.body10.i_crit_edge
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool18.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool18.not.i, label %if.then22.i, label %do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge, !prof !60

do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_end_irqrestore.exit

if.then22.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %u64_stats_update_end_irqrestore.exit

u64_stats_update_end_irqrestore.exit:             ; preds = %if.then22.i, %do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %call3) #10, !srcloc !71
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bpf_prog_exit(ptr nocapture noundef readonly %prog, i64 noundef %start) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @update_prog_stats(ptr noundef %prog, i64 noundef %start)
  %active = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 8
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add7 = add i32 %11, -1
  store i32 %add7, ptr %9, align 4
  tail call void @migrate_enable() #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.13) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  %12 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_prog_stats(ptr nocapture noundef readonly %prog, i64 noundef %start) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@update_prog_stats, %l_yes.i)) #10
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !68

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ true, %l_yes.i ], [ false, %entry ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %start)
  %cmp = icmp ugt i64 %start, 1
  %or.cond = and i1 %cmp, %retval.0.i
  br i1 %or.cond, label %if.then, label %arch_static_branch.exit.if.end_crit_edge

arch_static_branch.exit.if.end_crit_edge:         ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %arch_static_branch.exit
  %stats4 = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %0 = ptrtoint ptr %stats4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats4, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.bpf_prog_stats, ptr %9, i32 0, i32 3
  %call7 = tail call fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %syncp)
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %inc.i = add i64 %11, 1
  store i64 %inc.i, ptr %9, align 8
  %nsecs = getelementptr inbounds %struct.bpf_prog_stats, ptr %9, i32 0, i32 1
  %call8 = tail call i64 @sched_clock() #10
  %sub = sub i64 %call8, %start
  %conv.i = and i64 %sub, 4294967295
  %12 = ptrtoint ptr %nsecs to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %nsecs, align 8
  %add.i = add i64 %conv.i, %13
  store i64 %add.i, ptr %nsecs, align 8
  %dep_map.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %9, i32 0, i32 3, i32 0, i32 1
  %14 = tail call ptr @llvm.returnaddress(i32 0) #10
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  %16 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  %and.i.i = and i32 %call7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then8.i, label %if.then.do.body10.i_crit_edge

if.then.do.body10.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i

if.then8.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.then8.i, %if.then.do.body10.i_crit_edge
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool18.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool18.not.i, label %if.then22.i, label %do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge, !prof !60

do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_end_irqrestore.exit

if.then22.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %u64_stats_update_end_irqrestore.exit

u64_stats_update_end_irqrestore.exit:             ; preds = %if.then22.i, %do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %call7) #10, !srcloc !71
  br label %if.end

if.end:                                           ; preds = %u64_stats_update_end_irqrestore.exit, %arch_static_branch.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @__bpf_prog_enter_sleepable(ptr nocapture noundef readonly %prog) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %trc_reader_nesting.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %trc_reader_nesting.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %trc_reader_nesting.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %trc_reader_special.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %need_mb.i = getelementptr inbounds %struct.anon.36, ptr %trc_reader_special.i, i32 0, i32 3
  %6 = ptrtoint ptr %need_mb.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %need_mb.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.rcu_read_lock_trace.exit_crit_edge, label %do.end14.i

entry.rcu_read_lock_trace.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock_trace.exit

do.end14.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  br label %rcu_read_lock_trace.exit

rcu_read_lock_trace.exit:                         ; preds = %do.end14.i, %entry.rcu_read_lock_trace.exit_crit_edge
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_trace_lock_map) #10
  tail call void @migrate_disable() #10
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 621) #10
  %active = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 8
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add7 = add i32 %19, 1
  store i32 %add7, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.end, label %if.then, !prof !59

if.then:                                          ; preds = %rcu_read_lock_trace.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @inc_misses_counter(ptr noundef %prog)
  br label %return

if.end:                                           ; preds = %rcu_read_lock_trace.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@__bpf_prog_enter_sleepable, %if.then.i)) #10
          to label %return [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %if.end
  %call3.i = tail call i64 @sched_clock() #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call3.i)
  %tobool4.not.i = icmp eq i64 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then13.i, label %if.then.i.return_crit_edge, !prof !60

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %if.then13.i, %if.then.i.return_crit_edge, %if.end, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ 1, %if.then13.i ], [ %call3.i, %if.then.i.return_crit_edge ], [ 1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bpf_prog_exit_sleepable(ptr nocapture noundef readonly %prog, i64 noundef %start) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @update_prog_stats(ptr noundef %prog, i64 noundef %start)
  %active = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 8
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add7 = add i32 %11, -1
  store i32 %add7, ptr %9, align 4
  tail call void @migrate_enable() #10
  %12 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_trace_lock_map) #10
  %trc_reader_nesting.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %trc_reader_nesting.i, align 4
  %sub.i = add i32 %17, -1
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %18 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 -2147483648, ptr %trc_reader_nesting.i, align 4
  %trc_reader_special.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 46
  %19 = ptrtoint ptr %trc_reader_special.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %trc_reader_special.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %entry.do.body23.i_crit_edge, label %lor.lhs.false.i, !prof !59

entry.do.body23.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23.i

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool18.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool18.not.i, label %if.end69.i, label %lor.lhs.false.i.do.body23.i_crit_edge

lor.lhs.false.i.do.body23.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body23.i

do.body23.i:                                      ; preds = %lor.lhs.false.i.do.body23.i_crit_edge, %entry.do.body23.i_crit_edge
  %21 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %sub.i, ptr %trc_reader_nesting.i, align 4
  br label %rcu_read_unlock_trace.exit

if.end69.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rcu_read_unlock_trace_special(ptr noundef %15) #10
  br label %rcu_read_unlock_trace.exit

rcu_read_unlock_trace.exit:                       ; preds = %if.end69.i, %do.body23.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bpf_tramp_enter(ptr noundef %tr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %pcref = getelementptr inbounds %struct.bpf_tramp_image, ptr %tr, i32 0, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %pcref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %pcref, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !59

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !76
  %7 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, 1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !60

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #10, !srcloc !71
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i.i = getelementptr inbounds %struct.bpf_tramp_image, ptr %tr, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #10, !srcloc !77
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else.i.i, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i3.i.i, label %if.end38.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end38.i.i.percpu_ref_get.exit_crit_edge:       ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_get.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end38.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_get.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_get.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.13) #10
  br label %percpu_ref_get.exit

percpu_ref_get.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, %if.end38.i.i.percpu_ref_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  %20 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i.i10.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bpf_tramp_exit(ptr noundef %tr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %pcref = getelementptr inbounds %struct.bpf_tramp_image, ptr %tr, i32 0, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %pcref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %pcref, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !59

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !76
  %7 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, -1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !60

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #10, !srcloc !71
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.bpf_tramp_image, ptr %tr, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #10
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #10, !srcloc !79
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !60

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i.i, align 4
  tail call void %23(ptr noundef %pcref) #10
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.13) #10
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  %24 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i.i10.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_prepare_bpf_trampoline(ptr noundef %tr, ptr noundef %image, ptr noundef %image_end, ptr noundef %m, i32 noundef %flags, ptr noundef %tprogs, ptr noundef %orig_call) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @init_trampolines() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @trampoline_table, i32 0, i32 4096)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu_tasks_trace(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_tramp_image_put_rcu_tasks(ptr noundef %rcu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_after_call = getelementptr i8, ptr %rcu, i32 -8
  %0 = ptrtoint ptr %ip_after_call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip_after_call, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pcref = getelementptr i8, ptr %rcu, i32 -16
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %pcref, ptr noundef null) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @call_rcu_tasks(ptr noundef %rcu, ptr noundef nonnull @__bpf_tramp_image_put_rcu) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu_tasks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_tramp_image_put_rcu(ptr noundef %rcu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__init_work(ptr noundef %rcu, i32 noundef 0) #10
  %0 = ptrtoint ptr %rcu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %rcu, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %rcu, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @__bpf_tramp_image_put_rcu.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry1 = getelementptr inbounds %struct.work_struct, ptr %rcu, i32 0, i32 1
  %1 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry1, ptr %entry1, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %rcu, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry1, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %rcu, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @__bpf_tramp_image_put_deferred, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %rcu) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_tramp_image_put_deferred(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  %ksym = getelementptr i8, ptr %work, i32 -188
  tail call void @bpf_ksym_del(ptr noundef %ksym) #10
  %0 = ptrtoint ptr %ksym to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ksym, align 4
  %conv.i = zext i32 %1 to i64
  %name.i = getelementptr i8, ptr %work, i32 -180
  tail call void @perf_event_ksymbol(i16 noundef zeroext 1, i64 noundef %conv.i, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %name.i) #10
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void @bpf_jit_free_exec(ptr noundef %3) #10
  tail call void @bpf_jit_uncharge_modmem(i32 noundef 1) #10
  %pcref = getelementptr i8, ptr %work, i32 -16
  tail call void @percpu_ref_exit(ptr noundef %pcref) #10
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree_call_rcu(ptr noundef %work, ptr noundef nonnull inttoptr (i32 192 to ptr)) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_jit_free_exec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_jit_uncharge_modmem(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_jit_charge_modmem(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_tramp_image_release(ptr noundef %pcref) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr i8, ptr %pcref, i32 16
  tail call void @call_rcu_tasks(ptr noundef %0, ptr noundef nonnull @__bpf_tramp_image_put_rcu) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ftrace_location(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__module_text_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %syncp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !76
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body12.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

do.body12.__seqprop_assert.exit_crit_edge:        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %do.body12
  %2 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %6 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, ptrtoint (ptr @lockdep_recursion to i32)
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  %15 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i7.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not.i = icmp eq i32 %14, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %23 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i9.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %26, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %30, ptrtoint (ptr @hardirqs_enabled to i32)
  %31 = inttoptr i32 %add47.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  %34 = tail call i32 @llvm.read_register.i32(metadata !48) #10
  %and.i.i.i12.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %37, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool54.not.i = icmp eq i32 %33, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !59

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %do.body12.__seqprop_assert.exit_crit_edge
  %38 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %39, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %40 = tail call ptr @llvm.returnaddress(i32 0) #10
  %41 = ptrtoint ptr %40 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %41) #10
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_trace_special(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @bpf_extension_verifier_ops, !1, !"bpf_extension_verifier_ops", i1 false, i1 false}
!1 = !{!"../kernel/bpf/trampoline.c", i32 16, i32 31}
!2 = !{ptr @bpf_extension_prog_ops, !3, !"bpf_extension_prog_ops", i1 false, i1 false}
!3 = !{!"../kernel/bpf/trampoline.c", i32 18, i32 27}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/bpf/trampoline.c", i32 479, i32 3}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../kernel/bpf/trampoline.c", i32 520, i32 2}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../kernel/bpf/trampoline.c", i32 521, i32 6}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../kernel/bpf/trampoline.c", i32 523, i32 6}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/bpf/trampoline.c", i32 579, i32 6}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/bpf/trampoline.c", i32 612, i32 2}
!17 = !{ptr @__initcall__kmod_trampoline__406_664_init_trampolines7, !18, !"__initcall__kmod_trampoline__406_664_init_trampolines7", i1 false, i1 false}
!18 = !{!"../kernel/bpf/trampoline.c", i32 664, i32 1}
!19 = !{ptr @__bpf_tramp_image_put_rcu.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../kernel/bpf/trampoline.c", i32 227, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/bpf/trampoline.c", i32 328, i32 38}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../kernel/bpf/trampoline.c", i32 127, i32 6}
!26 = !{ptr @bpf_trampoline_lookup.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../kernel/bpf/trampoline.c", i32 92, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @trampoline_table, !30, !"trampoline_table", i1 false, i1 false}
!30 = !{!"../kernel/bpf/trampoline.c", i32 25, i32 26}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../kernel/bpf/trampoline.c", i32 28, i32 8}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @trampoline_mutex, !32, !"trampoline_mutex", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate_trace.h", i32 83, i32 2}
!47 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{i64 2157423213}
!62 = !{i64 2157423312}
!63 = !{i64 2148704641, i64 2148704673, i64 2148704702, i64 2148704736, i64 2148704767, i64 2148704790}
!64 = !{i64 2148792666}
!65 = !{i64 2148707106, i64 2148707138, i64 2148707167, i64 2148707201, i64 2148707232, i64 2148707255}
!66 = !{i64 2150255982}
!67 = !{i64 2149694432}
!68 = !{i64 2149264437, i64 2149264442, i64 2149264455, i64 2149264499, i64 2149264533, i64 2149264554}
!69 = !{i64 2150174988}
!70 = !{i64 1109543}
!71 = !{i64 1109828}
!72 = !{i64 2149694698}
!73 = !{i64 2157398365}
!74 = !{i64 2157399011}
!75 = !{i64 2157402373}
!76 = !{i64 1106811, i64 1106872}
!77 = !{i64 2148703111, i64 2148703137, i64 2148703166, i64 2148703200, i64 2148703231, i64 2148703254}
!78 = !{i64 2148791587}
!79 = !{i64 2148706296, i64 2148706328, i64 2148706357, i64 2148706391, i64 2148706422, i64 2148706445}
!80 = !{i64 2148791816}
!81 = !{i64 2150062609}
!82 = !{i64 2150067541}
!83 = !{i64 2150089253}
!84 = !{i64 2150094145}
!85 = !{i64 2150174663}
