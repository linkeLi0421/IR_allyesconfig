; ModuleID = '/llk/IR_all_yes/kernel/futex/core.c_pt.bc'
source_filename = "../kernel/futex/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.anon = type { %struct.fault_attr, i8 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.79 }
%union.anon.79 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.59 = type { i64, i32, i32 }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [72 x i8] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.57 = type { %union.anon.58, i32, i32 }
%union.anon.58 = type { i64 }
%struct.page = type { i32, %union.anon.22, %union.anon.35, %struct.atomic_t, i32 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.35 = type { %struct.atomic_t }
%struct.anon.77 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.71 = type { ptr }
%struct.anon.56 = type { i64, i32, i32 }
%struct.anon.17 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%union.futex_key = type { %struct.anon.56 }
%struct.anon.2 = type { [16 x i8], %struct.lockdep_map }
%struct.robust_list_head = type { %struct.robust_list, i32, ptr }
%struct.robust_list = type { ptr }
%struct.futex_pi_state = type { %struct.list_head, %struct.rt_mutex_base, ptr, %struct.refcount_struct, %union.futex_key }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }

@__setup_str_setup_fail_futex = internal constant [12 x i8] c"fail_futex=\00", section ".init.rodata", align 1
@__setup_setup_fail_futex = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_fail_futex, ptr @setup_fail_futex, i32 0 }, section ".init.setup", align 4
@fail_futex = internal global { %struct.anon, [36 x i8] } { %struct.anon { %struct.fault_attr { i32 0, i32 1, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 2, i8 0, i32 32, i32 0, i32 -1, i32 0, i32 0, i32 0, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0 }, ptr null }, i8 0 }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_core__239_102_fail_futex_debugfs7 = internal global ptr @fail_futex_debugfs, section ".initcall7.init", align 4
@__futex_data.0 = internal unnamed_addr global ptr null, section ".data..read_mostly", align 8
@__futex_data.1 = internal unnamed_addr global i32 0, section ".data..read_mostly", align 8
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/futex/core.c\00", [44 x i8] zeroinitializer }, align 32
@wait_for_owner_exiting.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@wait_for_owner_exiting.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__initcall__kmod_core__246_1141_futex_init1 = internal global ptr @futex_init, section ".initcall1.init", align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ratelimit_state.lock\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fail_futex\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ignore-private\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@get_inode_sequence_number.i_seq = internal global { %struct.atomic64_t, [24 x i8] } zeroinitializer, align 32
@get_inode_sequence_number.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@handle_futex_death.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"futex\00", [26 x i8] zeroinitializer }, align 32
@futex_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&futex_queues[i].lock\00", [42 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967282, i64 4294967285]
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"fail_futex\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 66, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 456, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 67, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 92, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 97, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 788, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 260, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 717, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 695, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 723, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"i_seq\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 173, i32 20 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1126, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [23 x i8] c"../kernel/futex/core.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1136, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__initcall__kmod_core__239_102_fail_futex_debugfs7, ptr @__initcall__kmod_core__246_1141_futex_init1, ptr @__setup_setup_fail_futex, ptr @fail_futex, ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @get_inode_sequence_number.i_seq, ptr @.str.12, ptr @futex_init.__key, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail_futex to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_inode_sequence_number.i_seq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @futex_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @setup_fail_futex(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @setup_fault_attr(ptr noundef nonnull @fail_futex, ptr noundef %str) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @should_fail_futex(i1 noundef zeroext %fshared) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @fail_futex, i32 0, i32 1), align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %brmerge = or i1 %tobool.not, %fshared
  br i1 %brmerge, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call zeroext i1 @should_fail(ptr noundef nonnull @fail_futex, i32 noundef 1) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.end ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fail_futex_debugfs() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fault_create_debugfs_attr(ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef nonnull @fail_futex) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.4, i16 noundef zeroext -32384, ptr noundef %call, ptr noundef getelementptr inbounds (%struct.anon, ptr @fail_futex, i32 0, i32 1)) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @futex_hash(ptr nocapture noundef readonly %key) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.anon.59, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %add1.i = add i32 %1, -559038725
  %arrayidx29.i = getelementptr i32, ptr %key, i32 2
  %2 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx29.i, align 4
  %add30.i = add i32 %3, %add1.i
  %arrayidx32.i = getelementptr i32, ptr %key, i32 1
  %4 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %5, %add1.i
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 4
  %add36.i = add i32 %7, %add1.i
  %xor37.i = xor i32 %add33.i, %add30.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #10
  %sub39.i = sub i32 %xor37.i, %or.i.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #10
  %sub42.i = sub i32 %xor40.i, %or.i1.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #10
  %sub45.i = sub i32 %xor43.i, %or.i2.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i3.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #10
  %sub48.i = sub i32 %xor46.i, %or.i3.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i4.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #10
  %sub51.i = sub i32 %xor49.i, %or.i4.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #10
  %sub54.i = sub i32 %xor52.i, %or.i5.i
  %or.i6.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #10
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %sub57.i = sub i32 %xor55.i, %or.i6.i
  %8 = load ptr, ptr @__futex_data.0, align 8
  %9 = load i32, ptr @__futex_data.1, align 8
  %sub = add i32 %9, -1
  %and = and i32 %sub57.i, %sub
  %arrayidx = getelementptr %struct.futex_hash_bucket, ptr %8, i32 %and
  ret ptr %arrayidx
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @futex_setup_timer(ptr noundef readonly %time, ptr noundef %timeout, i32 noundef %flags, i64 noundef %range_ns) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %time, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = lshr i32 %flags, 1
  %and.lobit = and i32 %and, 1
  %0 = xor i32 %and.lobit, 1
  tail call void @hrtimer_init_sleeper_on_stack(ptr noundef %timeout, i32 noundef %0, i32 noundef 0) #10
  %1 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %time, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %timeout, i32 0, i32 1
  %3 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %_softexpires.i, align 8
  %call1.i = tail call i64 @ktime_add_safe(i64 noundef %2, i64 noundef %range_ns) #10
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %timeout, i32 0, i32 1
  %4 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call1.i, ptr %expires.i, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi ptr [ %timeout, %if.end ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init_sleeper_on_stack(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_futex_key(ptr noundef %uaddr, i1 noundef zeroext %fshared, ptr nocapture noundef %key, i32 noundef %rw) local_unnamed_addr #1 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uaddr to i32
  %1 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #10
  %7 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !60
  %rem = and i32 %0, 4095
  %offset = getelementptr inbounds %struct.anon.59, ptr %key, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rem, ptr %offset, align 4
  %rem2 = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %cmp.not = icmp eq i32 %rem2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup106_crit_edge, !prof !61

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.end:                                           ; preds = %entry
  %sub = and i32 %0, -4096
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uaddr, i32 4, i32 -1226833920) #13, !srcloc !62
  %asmresult = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp6.not = icmp eq i32 %asmresult, 0
  br i1 %cmp6.not, label %if.end16, label %if.end.cleanup106_crit_edge, !prof !61

if.end.cleanup106_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.end16:                                         ; preds = %if.end
  %10 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @fail_futex, i32 0, i32 1), align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i147 = icmp eq i8 %10, 0
  %brmerge.i = or i1 %tobool.not.i147, %fshared
  br i1 %brmerge.i, label %should_fail_futex.exit, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

should_fail_futex.exit:                           ; preds = %if.end16
  %call.i148 = tail call zeroext i1 @should_fail(ptr noundef nonnull @fail_futex, i32 noundef 1) #10
  br i1 %call.i148, label %should_fail_futex.exit.cleanup106_crit_edge, label %should_fail_futex.exit.if.end26_crit_edge, !prof !63

should_fail_futex.exit.if.end26_crit_edge:        ; preds = %should_fail_futex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

should_fail_futex.exit.cleanup106_crit_edge:      ; preds = %should_fail_futex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.end26:                                         ; preds = %should_fail_futex.exit.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  br i1 %fshared, label %again.preheader, label %if.then28

again.preheader:                                  ; preds = %if.end26
  %call.i150265 = call zeroext i1 @should_fail(ptr noundef nonnull @fail_futex, i32 noundef 1) #10
  br i1 %call.i150265, label %again.preheader.cleanup106_crit_edge, label %if.end39.lr.ph, !prof !63

again.preheader.cleanup106_crit_edge:             ; preds = %again.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.end39.lr.ph:                                   ; preds = %again.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp42 = icmp eq i32 %rw, 0
  br label %if.end39

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %6, ptr %key, align 8
  %address29 = getelementptr inbounds %struct.anon.57, ptr %key, i32 0, i32 1
  %12 = ptrtoint ptr %address29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %address29, align 8
  br label %cleanup106

again.critedge:                                   ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @unlock_page(ptr noundef %26) #10
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page, align 4
  call fastcc void @put_page(ptr noundef %14)
  br label %again.backedge

if.end39:                                         ; preds = %again.backedge.if.end39_crit_edge, %if.end39.lr.ph
  %ro.0266 = phi i32 [ 0, %if.end39.lr.ph ], [ %ro.1, %again.backedge.if.end39_crit_edge ]
  %call40 = call i32 @get_user_pages_fast(i32 noundef %sub, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %page) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %call40)
  %cmp41 = icmp eq i32 %call40, -14
  br i1 %cmp41, label %land.lhs.true, label %if.end39.if.end45_crit_edge

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end39
  br i1 %cmp42, label %if.then43, label %land.lhs.true.cleanup106_crit_edge

land.lhs.true.cleanup106_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = call i32 @get_user_pages_fast(i32 noundef %sub, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %page) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end39.if.end45_crit_edge
  %ro.1 = phi i32 [ 1, %if.then43 ], [ %ro.0266, %if.end39.if.end45_crit_edge ]
  %err.0 = phi i32 [ %call44, %if.then43 ], [ %call40, %if.end39.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp46 = icmp slt i32 %err.0, 0
  br i1 %cmp46, label %if.end45.cleanup106_crit_edge, label %if.else

if.end45.cleanup106_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.else:                                          ; preds = %if.end45
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %page, align 4
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i153 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %tobool.not.i154 = icmp eq i32 %and.i153, 0
  br i1 %tobool.not.i154, label %if.end.i156, label %if.then.i155, !prof !61

if.then.i155:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %19, -1
  br label %_compound_head.exit

if.end.i156:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %16 to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i156, %if.then.i155
  %retval.0.i157 = phi i32 [ %sub.i, %if.then.i155 ], [ %20, %if.end.i156 ]
  %21 = inttoptr i32 %retval.0.i157 to ptr
  %22 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %page, align 4
  %mapping51 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %mapping51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %mapping51, align 4
  %tobool52.not = icmp eq ptr %24, null
  br i1 %tobool52.not, label %if.then61, label %if.end68, !prof !63

if.then61:                                        ; preds = %_compound_head.exit
  call fastcc void @lock_page(ptr noundef %21)
  %25 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page, align 4
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !61

if.then.i.i:                                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %26 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %30, %if.end.i.i ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %32 = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and.i.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !61

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.6) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %_compound_head.exit.i
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %31, align 4
  %38 = and i32 %37, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not.i.i = icmp eq i32 %38, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.lor.rhs_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.lor.rhs_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %32, align 4
  %and.i.i.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %PageSwapCache.exit, label %if.then.i.i.i, !prof !61

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.6) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

PageSwapCache.exit:                               ; preds = %land.rhs.i.i
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %31, align 4
  %44 = and i32 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.i.not = icmp eq i32 %44, 0
  br i1 %tobool.i.i.not, label %PageSwapCache.exit.lor.rhs_crit_edge, label %again.critedge

PageSwapCache.exit.lor.rhs_crit_edge:             ; preds = %PageSwapCache.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %PageSwapCache.exit.lor.rhs_crit_edge, %folio_test_swapbacked.exit.i.i.lor.rhs_crit_edge
  %mapping63 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %mapping63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mapping63, align 4
  %tobool64.not = icmp eq ptr %46, null
  call void @unlock_page(ptr noundef %26) #10
  %47 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %page, align 4
  call fastcc void @put_page(ptr noundef %48)
  br i1 %tobool64.not, label %lor.rhs.cleanup106_crit_edge, label %lor.rhs.again.backedge_crit_edge

lor.rhs.again.backedge_crit_edge:                 ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge

lor.rhs.cleanup106_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

again.backedge:                                   ; preds = %if.then.i4.i208, %folio_put_testzero.exit.i.i207.again.backedge_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.again.backedge_crit_edge, %lor.rhs.again.backedge_crit_edge, %again.critedge
  %call.i150 = call zeroext i1 @should_fail(ptr noundef nonnull @fail_futex, i32 noundef 1) #10
  br i1 %call.i150, label %again.backedge.cleanup106_crit_edge, label %again.backedge.if.end39_crit_edge, !prof !63

again.backedge.if.end39_crit_edge:                ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

again.backedge.cleanup106_crit_edge:              ; preds = %again.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.end68:                                         ; preds = %_compound_head.exit
  %49 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i2.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i.i139 = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i.i139, label %if.end68.PageAnon.exit_crit_edge, label %if.then.i.i141, !prof !61

if.end68.PageAnon.exit_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %PageAnon.exit

if.then.i.i141:                                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i140 = add i32 %51, -1
  %.pre = inttoptr i32 %sub.i.i140 to ptr
  br label %PageAnon.exit

PageAnon.exit:                                    ; preds = %if.then.i.i141, %if.end68.PageAnon.exit_crit_edge
  %.pre-phi = phi ptr [ %21, %if.end68.PageAnon.exit_crit_edge ], [ %.pre, %if.then.i.i141 ]
  %mapping.i.i = getelementptr inbounds %struct.anon.77, ptr %.pre-phi, i32 0, i32 2
  %52 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mapping.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  %and.i.i144 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i144)
  %cmp.i.i.not = icmp eq i32 %and.i.i144, 0
  br i1 %cmp.i.i.not, label %if.else83, label %if.then70

if.then70:                                        ; preds = %PageAnon.exit
  %call.i159 = call zeroext i1 @should_fail(ptr noundef nonnull @fail_futex, i32 noundef 1) #10
  %call71.not = xor i1 %call.i159, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ro.1)
  %tobool78.not = icmp eq i32 %ro.1, 0
  %or.cond = select i1 %call71.not, i1 %tobool78.not, i1 false
  br i1 %or.cond, label %if.end80, label %if.then70.out_crit_edge, !prof !65

if.then70.out_crit_edge:                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end80:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset, align 4
  %or = or i32 %56, 2
  store i32 %or, ptr %offset, align 4
  %57 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %6, ptr %key, align 8
  %address82 = getelementptr inbounds %struct.anon.57, ptr %key, i32 0, i32 1
  %58 = ptrtoint ptr %address82 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub, ptr %address82, align 8
  br label %out

if.else83:                                        ; preds = %PageAnon.exit
  %59 = call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i146 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i146 to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %62, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.else83.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.else83.rcu_read_lock.exit_crit_edge:           ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.else83
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.else83.rcu_read_lock.exit_crit_edge
  %63 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %page, align 4
  %mapping88 = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 1, i32 0, i32 1
  %65 = ptrtoint ptr %mapping88 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %mapping88, align 4
  %cmp89.not = icmp eq ptr %66, %24
  br i1 %cmp89.not, label %do.end94, label %if.then90

if.then90:                                        ; preds = %rcu_read_lock.exit
  %call.i162 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i162, label %if.then90.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i165

if.then90.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i165:                               ; preds = %if.then90
  %call1.i163 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool.not.i164 = icmp eq i32 %call1.i163, 0
  br i1 %tobool.not.i164, label %land.lhs.true.i165.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i167

land.lhs.true.i165.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i167:                              ; preds = %land.lhs.true.i165
  %.b4.i166 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i166, label %land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge, label %if.then.i168

land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i168:                                     ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i168, %land.lhs.true2.i167.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i165.rcu_read_unlock.exit_crit_edge, %if.then90.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %67 = call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i169 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i169 to ptr
  %preempt_count.i.i.i.i170 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i170, align 4
  %sub.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i170, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %71 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %page, align 4
  %73 = getelementptr inbounds %struct.page, ptr %72, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %and.i.i171 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i171)
  %tobool.not.i.i172 = icmp eq i32 %and.i.i171, 0
  br i1 %tobool.not.i.i172, label %if.end.i.i175, label %if.then.i.i174, !prof !61

if.then.i.i174:                                   ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i173 = add i32 %75, -1
  br label %_compound_head.exit.i177

if.end.i.i175:                                    ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %72 to i32
  br label %_compound_head.exit.i177

_compound_head.exit.i177:                         ; preds = %if.end.i.i175, %if.then.i.i174
  %retval.0.i.i176 = phi i32 [ %sub.i.i173, %if.then.i.i174 ], [ %76, %if.end.i.i175 ]
  %77 = inttoptr i32 %retval.0.i.i176 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %77, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %78 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i.i.i.i = icmp eq i32 %79, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i178, label %do.end5.i.i.i.i, !prof !63

if.then.i.i.i.i178:                               ; preds = %_compound_head.exit.i177
  call void @__sanitizer_cov_trace_pc() #12
  %80 = inttoptr i32 %retval.0.i.i176 to ptr
  call void @dump_page(ptr noundef %80, ptr noundef nonnull @.str.8) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i177
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %81 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %81, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@get_futex_key, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !72

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %77, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.again.backedge_crit_edge

folio_put_testzero.exit.i.i.again.backedge_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %77) #10
  br label %again.backedge

do.end94:                                         ; preds = %rcu_read_lock.exit
  %82 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %24, align 4
  %tobool96.not = icmp eq ptr %83, null
  br i1 %tobool96.not, label %if.then97, label %if.end98

if.then97:                                        ; preds = %do.end94
  %call.i179 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i179, label %if.then97.rcu_read_unlock.exit189_crit_edge, label %land.lhs.true.i182

if.then97.rcu_read_unlock.exit189_crit_edge:      ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit189

land.lhs.true.i182:                               ; preds = %if.then97
  %call1.i180 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i180)
  %tobool.not.i181 = icmp eq i32 %call1.i180, 0
  br i1 %tobool.not.i181, label %land.lhs.true.i182.rcu_read_unlock.exit189_crit_edge, label %land.lhs.true2.i184

land.lhs.true.i182.rcu_read_unlock.exit189_crit_edge: ; preds = %land.lhs.true.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit189

land.lhs.true2.i184:                              ; preds = %land.lhs.true.i182
  %.b4.i183 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i183, label %land.lhs.true2.i184.rcu_read_unlock.exit189_crit_edge, label %if.then.i185

land.lhs.true2.i184.rcu_read_unlock.exit189_crit_edge: ; preds = %land.lhs.true2.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit189

if.then.i185:                                     ; preds = %land.lhs.true2.i184
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %rcu_read_unlock.exit189

rcu_read_unlock.exit189:                          ; preds = %if.then.i185, %land.lhs.true2.i184.rcu_read_unlock.exit189_crit_edge, %land.lhs.true.i182.rcu_read_unlock.exit189_crit_edge, %if.then97.rcu_read_unlock.exit189_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %84 = call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i186 = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i.i186 to ptr
  %preempt_count.i.i.i.i187 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %preempt_count.i.i.i.i187 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %preempt_count.i.i.i.i187, align 4
  %sub.i.i.i188 = add i32 %87, -1
  store volatile i32 %sub.i.i.i188, ptr %preempt_count.i.i.i.i187, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %88 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %page, align 4
  %90 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %90, align 4
  %and.i.i190 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i190)
  %tobool.not.i.i191 = icmp eq i32 %and.i.i190, 0
  br i1 %tobool.not.i.i191, label %if.end.i.i194, label %if.then.i.i193, !prof !61

if.then.i.i193:                                   ; preds = %rcu_read_unlock.exit189
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i192 = add i32 %92, -1
  br label %_compound_head.exit.i199

if.end.i.i194:                                    ; preds = %rcu_read_unlock.exit189
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %89 to i32
  br label %_compound_head.exit.i199

_compound_head.exit.i199:                         ; preds = %if.end.i.i194, %if.then.i.i193
  %retval.0.i.i195 = phi i32 [ %sub.i.i192, %if.then.i.i193 ], [ %93, %if.end.i.i194 ]
  %94 = inttoptr i32 %retval.0.i.i195 to ptr
  %_refcount.i.i.i.i.i196 = getelementptr inbounds %struct.page, ptr %94, i32 0, i32 3
  %call.i.i.i.i.i.i.i197 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i196, i32 noundef 4) #10
  %95 = ptrtoint ptr %_refcount.i.i.i.i.i196 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %_refcount.i.i.i.i.i196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i.i.i.i198 = icmp eq i32 %96, 0
  br i1 %cmp.i.i.i.i198, label %if.then.i.i.i.i200, label %do.end5.i.i.i.i204, !prof !63

if.then.i.i.i.i200:                               ; preds = %_compound_head.exit.i199
  call void @__sanitizer_cov_trace_pc() #12
  %97 = inttoptr i32 %retval.0.i.i195 to ptr
  call void @dump_page(ptr noundef %97, ptr noundef nonnull @.str.8) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.end5.i.i.i.i204:                               ; preds = %_compound_head.exit.i199
  %call.i.i.i10.i.i.i.i201 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i196, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i196, i32 1, i32 3, i32 1) #10
  %98 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i196, ptr %_refcount.i.i.i.i.i196, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i196) #10, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i.i.i202 = extractvalue { i32, i32 } %98, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i202)
  %cmp.i.i.i.i.i.i.i203 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i202, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@get_futex_key, %if.then.i.i.i.i.i206)) #10
          to label %folio_put_testzero.exit.i.i207 [label %if.then.i.i.i.i.i206], !srcloc !72

if.then.i.i.i.i.i206:                             ; preds = %do.end5.i.i.i.i204
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i205 = zext i1 %cmp.i.i.i.i.i.i.i203 to i32
  call void @__page_ref_mod_and_test(ptr noundef %94, i32 noundef -1, i32 noundef %conv.i.i.i.i.i205) #10
  br label %folio_put_testzero.exit.i.i207

folio_put_testzero.exit.i.i207:                   ; preds = %if.then.i.i.i.i.i206, %do.end5.i.i.i.i204
  br i1 %cmp.i.i.i.i.i.i.i203, label %if.then.i4.i208, label %folio_put_testzero.exit.i.i207.again.backedge_crit_edge

folio_put_testzero.exit.i.i207.again.backedge_crit_edge: ; preds = %folio_put_testzero.exit.i.i207
  call void @__sanitizer_cov_trace_pc() #12
  br label %again.backedge

if.then.i4.i208:                                  ; preds = %folio_put_testzero.exit.i.i207
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %94) #10
  br label %again.backedge

if.end98:                                         ; preds = %do.end94
  %99 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset, align 4
  %or100 = or i32 %100, 1
  store i32 %or100, ptr %offset, align 4
  %i_sequence.i = getelementptr inbounds %struct.inode, ptr %83, i32 0, i32 39
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_sequence.i, i32 noundef 8) #10
  %call.i.i = call i64 @generic_atomic64_read(ptr noundef %i_sequence.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %tobool.not.i210 = icmp eq i64 %call.i.i, 0
  br i1 %tobool.not.i210, label %for.cond.preheader.i, label %if.end98.get_inode_sequence_number.exit_crit_edge, !prof !63

if.end98.get_inode_sequence_number.exit_crit_edge: ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_inode_sequence_number.exit

for.cond.preheader.i:                             ; preds = %if.end98
  %call.i.i7075.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @get_inode_sequence_number.i_seq, i32 noundef 8) #10
  %call.i7176.i = call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull @get_inode_sequence_number.i_seq) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i7176.i)
  %tobool4.not77.i = icmp eq i64 %call.i7176.i, 0
  br i1 %tobool4.not77.i, label %for.cond.preheader.i.land.rhs.i_crit_edge, label %for.cond.preheader.i.cleanup.thread.i_crit_edge

for.cond.preheader.i.cleanup.thread.i_crit_edge:  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

for.cond.preheader.i.land.rhs.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %for.cond.preheader.i.land.rhs.i_crit_edge
  %.b68.i = load i1, ptr @get_inode_sequence_number.__already_done, align 1
  br i1 %.b68.i, label %land.rhs.i.cleanup.i_crit_edge, label %if.then21.i, !prof !61

land.rhs.i.cleanup.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then21.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @get_inode_sequence_number.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef null) #10
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %cleanup.i.cleanup.thread.i_crit_edge, %for.cond.preheader.i.cleanup.thread.i_crit_edge
  %call.i71.lcssa.i = phi i64 [ %call.i7176.i, %for.cond.preheader.i.cleanup.thread.i_crit_edge ], [ %call.i71.i, %cleanup.i.cleanup.thread.i_crit_edge ]
  %call.i.i72.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_sequence.i, i32 noundef 8) #10
  %call.i73.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_sequence.i, i64 noundef 0, i64 noundef %call.i71.lcssa.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i73.i)
  %tobool56.not.i = icmp eq i64 %call.i73.i, 0
  %call3.call55.i = select i1 %tobool56.not.i, i64 %call.i71.lcssa.i, i64 %call.i73.i
  br label %get_inode_sequence_number.exit

cleanup.i:                                        ; preds = %if.then21.i, %land.rhs.i.cleanup.i_crit_edge
  %call.i.i70.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @get_inode_sequence_number.i_seq, i32 noundef 8) #10
  %call.i71.i = call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull @get_inode_sequence_number.i_seq) #10
  %tobool4.not.i = icmp eq i64 %call.i71.i, 0
  br i1 %tobool4.not.i, label %cleanup.i.land.rhs.i_crit_edge, label %cleanup.i.cleanup.thread.i_crit_edge

cleanup.i.cleanup.thread.i_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

get_inode_sequence_number.exit:                   ; preds = %cleanup.thread.i, %if.end98.get_inode_sequence_number.exit_crit_edge
  %retval.2.i = phi i64 [ %call.i.i, %if.end98.get_inode_sequence_number.exit_crit_edge ], [ %call3.call55.i, %cleanup.thread.i ]
  %101 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %retval.2.i, ptr %key, align 8
  %index.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1, i32 0, i32 2
  %102 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %index.i.i, align 4
  %pgoff = getelementptr inbounds %struct.anon.56, ptr %key, i32 0, i32 1
  %104 = ptrtoint ptr %pgoff to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %pgoff, align 8
  %call.i211 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i211, label %get_inode_sequence_number.exit.cleanup103.thread_crit_edge, label %land.lhs.true.i214

get_inode_sequence_number.exit.cleanup103.thread_crit_edge: ; preds = %get_inode_sequence_number.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103.thread

land.lhs.true.i214:                               ; preds = %get_inode_sequence_number.exit
  %call1.i212 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i212)
  %tobool.not.i213 = icmp eq i32 %call1.i212, 0
  br i1 %tobool.not.i213, label %land.lhs.true.i214.cleanup103.thread_crit_edge, label %land.lhs.true2.i216

land.lhs.true.i214.cleanup103.thread_crit_edge:   ; preds = %land.lhs.true.i214
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103.thread

land.lhs.true2.i216:                              ; preds = %land.lhs.true.i214
  %.b4.i215 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i215, label %land.lhs.true2.i216.cleanup103.thread_crit_edge, label %if.then.i217

land.lhs.true2.i216.cleanup103.thread_crit_edge:  ; preds = %land.lhs.true2.i216
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103.thread

if.then.i217:                                     ; preds = %land.lhs.true2.i216
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #10
  br label %cleanup103.thread

cleanup103.thread:                                ; preds = %if.then.i217, %land.lhs.true2.i216.cleanup103.thread_crit_edge, %land.lhs.true.i214.cleanup103.thread_crit_edge, %get_inode_sequence_number.exit.cleanup103.thread_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %105 = call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i218 = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i.i.i218 to ptr
  %preempt_count.i.i.i.i219 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %preempt_count.i.i.i.i219 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %preempt_count.i.i.i.i219, align 4
  %sub.i.i.i220 = add i32 %108, -1
  store volatile i32 %sub.i.i.i220, ptr %preempt_count.i.i.i.i219, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %out

out:                                              ; preds = %cleanup103.thread, %if.end80, %if.then70.out_crit_edge
  %err.1 = phi i32 [ 0, %if.end80 ], [ -14, %if.then70.out_crit_edge ], [ 0, %cleanup103.thread ]
  %109 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %page, align 4
  %111 = getelementptr inbounds %struct.page, ptr %110, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %111, align 4
  %and.i.i222 = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i222)
  %tobool.not.i.i223 = icmp eq i32 %and.i.i222, 0
  br i1 %tobool.not.i.i223, label %if.end.i.i226, label %if.then.i.i225, !prof !61

if.then.i.i225:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i224 = add i32 %113, -1
  br label %_compound_head.exit.i231

if.end.i.i226:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %110 to i32
  br label %_compound_head.exit.i231

_compound_head.exit.i231:                         ; preds = %if.end.i.i226, %if.then.i.i225
  %retval.0.i.i227 = phi i32 [ %sub.i.i224, %if.then.i.i225 ], [ %114, %if.end.i.i226 ]
  %115 = inttoptr i32 %retval.0.i.i227 to ptr
  %_refcount.i.i.i.i.i228 = getelementptr inbounds %struct.page, ptr %115, i32 0, i32 3
  %call.i.i.i.i.i.i.i229 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i228, i32 noundef 4) #10
  %116 = ptrtoint ptr %_refcount.i.i.i.i.i228 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %_refcount.i.i.i.i.i228, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp.i.i.i.i230 = icmp eq i32 %117, 0
  br i1 %cmp.i.i.i.i230, label %if.then.i.i.i.i232, label %do.end5.i.i.i.i236, !prof !63

if.then.i.i.i.i232:                               ; preds = %_compound_head.exit.i231
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %115, ptr noundef nonnull @.str.8) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.end5.i.i.i.i236:                               ; preds = %_compound_head.exit.i231
  %call.i.i.i10.i.i.i.i233 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i228, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i228, i32 1, i32 3, i32 1) #10
  %118 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i228, ptr %_refcount.i.i.i.i.i228, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i228) #10, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i.i.i234 = extractvalue { i32, i32 } %118, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i234)
  %cmp.i.i.i.i.i.i.i235 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i234, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@get_futex_key, %if.then.i.i.i.i.i238)) #10
          to label %folio_put_testzero.exit.i.i239 [label %if.then.i.i.i.i.i238], !srcloc !72

if.then.i.i.i.i.i238:                             ; preds = %do.end5.i.i.i.i236
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i237 = zext i1 %cmp.i.i.i.i.i.i.i235 to i32
  call void @__page_ref_mod_and_test(ptr noundef %115, i32 noundef -1, i32 noundef %conv.i.i.i.i.i237) #10
  br label %folio_put_testzero.exit.i.i239

folio_put_testzero.exit.i.i239:                   ; preds = %if.then.i.i.i.i.i238, %do.end5.i.i.i.i236
  br i1 %cmp.i.i.i.i.i.i.i235, label %if.then.i4.i240, label %folio_put_testzero.exit.i.i239.cleanup106_crit_edge

folio_put_testzero.exit.i.i239.cleanup106_crit_edge: ; preds = %folio_put_testzero.exit.i.i239
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup106

if.then.i4.i240:                                  ; preds = %folio_put_testzero.exit.i.i239
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %115) #10
  br label %cleanup106

cleanup106:                                       ; preds = %if.then.i4.i240, %folio_put_testzero.exit.i.i239.cleanup106_crit_edge, %again.backedge.cleanup106_crit_edge, %lor.rhs.cleanup106_crit_edge, %if.end45.cleanup106_crit_edge, %land.lhs.true.cleanup106_crit_edge, %if.then28, %again.preheader.cleanup106_crit_edge, %should_fail_futex.exit.cleanup106_crit_edge, %if.end.cleanup106_crit_edge, %entry.cleanup106_crit_edge
  %retval.2 = phi i32 [ 0, %if.then28 ], [ -22, %entry.cleanup106_crit_edge ], [ -14, %if.end.cleanup106_crit_edge ], [ -14, %should_fail_futex.exit.cleanup106_crit_edge ], [ %err.1, %folio_put_testzero.exit.i.i239.cleanup106_crit_edge ], [ %err.1, %if.then.i4.i240 ], [ -14, %again.preheader.cleanup106_crit_edge ], [ -14, %lor.rhs.cleanup106_crit_edge ], [ -14, %again.backedge.cleanup106_crit_edge ], [ %err.0, %if.end45.cleanup106_crit_edge ], [ -14, %land.lhs.true.cleanup106_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #10
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lock_page(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 788) #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !61

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !61

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.6) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %4, i32 noundef 4) #10
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %and.i.i4.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i4.i, 0
  br i1 %tobool.not.i.i.i, label %folio_trylock.exit, label %folio_flags.exit.i.if.then_crit_edge

folio_flags.exit.i.if.then_crit_edge:             ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

folio_trylock.exit:                               ; preds = %folio_flags.exit.i
  tail call void @llvm.prefetch.p0(ptr %4, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.i, label %folio_trylock.exit.if.end_crit_edge, label %folio_trylock.exit.if.then_crit_edge

folio_trylock.exit.if.then_crit_edge:             ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

folio_trylock.exit.if.end_crit_edge:              ; preds = %folio_trylock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %folio_trylock.exit.if.then_crit_edge, %folio_flags.exit.i.if.then_crit_edge
  tail call void @__folio_lock(ptr noundef %4) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %folio_trylock.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !61

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !63

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.8) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #10, !srcloc !70
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !72

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #10
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %4) #10
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fault_in_user_writeable(ptr noundef %uaddr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@fault_in_user_writeable, %if.then.i.i)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !72

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.17, ptr %5, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@fault_in_user_writeable, %if.then.i3.i)) #10
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !72

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %6 = ptrtoint ptr %uaddr to i32
  %call2 = tail call i32 @fixup_user_fault(ptr noundef %5, i32 noundef %6, i32 noundef 1, ptr noundef null) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@fault_in_user_writeable, %if.then.i.i6)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i6], !srcloc !72

if.then.i.i6:                                     ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i6, %mmap_read_lock.exit
  tail call void @up_read(ptr noundef %mmap_lock.i) #10
  %7 = tail call i32 @llvm.smin.i32(i32 %call2, i32 0)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixup_user_fault(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @futex_top_waiter(ptr noundef readonly %hb, ptr noundef readonly %key) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %hb, i32 0, i32 2
  %tobool1.not.i = icmp eq ptr %key, null
  %word3.i = getelementptr inbounds %struct.anon.59, ptr %key, i32 0, i32 1
  %offset7.i = getelementptr inbounds %struct.anon.59, ptr %key, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %futex_match.exit.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %chain, %entry ], [ %.pn, %futex_match.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %chain
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %key4 = getelementptr i8, ptr %.pn, i32 20
  %tobool.not.i = icmp eq ptr %key4, null
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %for.body.futex_match.exit_crit_edge, label %land.lhs.true2.i

for.body.futex_match.exit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %futex_match.exit

land.lhs.true2.i:                                 ; preds = %for.body
  %word.i = getelementptr i8, ptr %.pn, i32 28
  %1 = ptrtoint ptr %word.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %word.i, align 8
  %3 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %word3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.i = icmp eq i32 %2, %4
  br i1 %cmp.i, label %land.lhs.true4.i, label %land.lhs.true2.i.futex_match.exit_crit_edge

land.lhs.true2.i.futex_match.exit_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %futex_match.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %5 = ptrtoint ptr %key4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %key4, align 8
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %key, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp6.i = icmp eq i64 %6, %8
  br i1 %cmp6.i, label %land.rhs.i, label %land.lhs.true4.i.futex_match.exit_crit_edge

land.lhs.true4.i.futex_match.exit_crit_edge:      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %futex_match.exit

land.rhs.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  %offset.i = getelementptr i8, ptr %.pn, i32 32
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i, align 4
  %11 = ptrtoint ptr %offset7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8.i = icmp eq i32 %10, %12
  %phi.cast.i = zext i1 %cmp8.i to i32
  br label %futex_match.exit

futex_match.exit:                                 ; preds = %land.rhs.i, %land.lhs.true4.i.futex_match.exit_crit_edge, %land.lhs.true2.i.futex_match.exit_crit_edge, %for.body.futex_match.exit_crit_edge
  %13 = phi i32 [ 0, %land.lhs.true4.i.futex_match.exit_crit_edge ], [ 0, %land.lhs.true2.i.futex_match.exit_crit_edge ], [ 0, %for.body.futex_match.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %futex_match.exit.for.cond_crit_edge, label %cleanup.split.loop.exit15

futex_match.exit.for.cond_crit_edge:              ; preds = %futex_match.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

cleanup.split.loop.exit15:                        ; preds = %futex_match.exit
  call void @__sanitizer_cov_trace_pc() #12
  %this.0.le = getelementptr i8, ptr %.pn, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit15, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %this.0.le, %cleanup.split.loop.exit15 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_cmpxchg_value_locked(ptr nocapture noundef writeonly %curval, ptr noundef %uaddr, i32 noundef %uval, i32 noundef %newval) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uaddr, i32 4, i32 -1226833920) #13, !srcloc !76
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.futex_atomic_cmpxchg_inatomic.exit_crit_edge

entry.futex_atomic_cmpxchg_inatomic.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %futex_atomic_cmpxchg_inatomic.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %uaddr, i32 1, i32 3, i32 1) #10
  %7 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !78
  %and.i.i = and i32 %9, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %10 = tail call { i32, i32 } asm sideeffect "@futex_atomic_cmpxchg_inatomic\0A1:\09ldrex\09$1, [$4]\0A\09teq\09$1, $2\0A\09ite\09eq\09@ explicit IT needed for the 2b label\0A2:\09strexeq\09$0, $3, [$4]\0A\09movne\09$0, #0\0A\09teq\09$0, #0\0A\09bne\091b\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,r,r,r,Ir,~{cc},~{memory}"(i32 %uval, i32 %newval, ptr %uaddr, i32 -14) #10, !srcloc !81
  %asmresult5.i = extractvalue { i32, i32 } %10, 0
  %asmresult6.i = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  %11 = ptrtoint ptr %curval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %asmresult6.i, ptr %curval, align 4
  br label %futex_atomic_cmpxchg_inatomic.exit

futex_atomic_cmpxchg_inatomic.exit:               ; preds = %do.end.i, %entry.futex_atomic_cmpxchg_inatomic.exit_crit_edge
  %retval.0.i = phi i32 [ %asmresult5.i, %do.end.i ], [ -14, %entry.futex_atomic_cmpxchg_inatomic.exit_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %12 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i1 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1 to ptr
  %task.i.i2 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i2, align 8
  %pagefault_disabled.i.i3 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i3, align 8
  %dec.i.i = add i32 %17, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i3, align 8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_get_value_locked(ptr nocapture noundef writeonly %dest, ptr noundef %from) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i3 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i3 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 456) #10
  %6 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !78
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %from, i32 -1226833921) #10, !srcloc !84
  %asmresult = extractvalue { i32, i32 } %9, 0
  %asmresult1 = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %10 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %asmresult1, ptr %dest, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %11 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i4 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i4 to ptr
  %task.i.i5 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i.i5, align 8
  %pagefault_disabled.i.i6 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 213
  %15 = ptrtoint ptr %pagefault_disabled.i.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagefault_disabled.i.i6, align 8
  %dec.i.i = add i32 %16, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  %cond = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wait_for_owner_exiting(i32 noundef %ret, ptr noundef %exiting) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %ret)
  %cmp.not = icmp eq i32 %ret, -16
  %tobool41.not = icmp eq ptr %exiting, null
  br i1 %cmp.not, label %land.rhs40, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool41.not, label %if.then.return_crit_edge, label %land.rhs

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.rhs:                                         ; preds = %if.then
  %.b112 = load i1, ptr @wait_for_owner_exiting.__already_done, align 1
  br i1 %.b112, label %land.rhs.return_crit_edge, label %if.then8, !prof !61

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wait_for_owner_exiting.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 9, ptr noundef null) #10
  br label %return

land.rhs40:                                       ; preds = %entry
  br i1 %tobool41.not, label %land.rhs51, label %if.end99.critedge

land.rhs51:                                       ; preds = %land.rhs40
  %.b110111 = load i1, ptr @wait_for_owner_exiting.__already_done.1, align 1
  br i1 %.b110111, label %land.rhs51.return_crit_edge, label %if.then62, !prof !61

land.rhs51.return_crit_edge:                      ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then62:                                        ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @wait_for_owner_exiting.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef null) #10
  br label %return

if.end99.critedge:                                ; preds = %land.rhs40
  %futex_exit_mutex = getelementptr inbounds %struct.task_struct, ptr %exiting, i32 0, i32 169
  tail call void @mutex_lock_nested(ptr noundef %futex_exit_mutex, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %futex_exit_mutex) #10
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %exiting, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #10, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end99.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.return_crit_edge, label %if.then10.i.i.i.i, !prof !61

if.end5.i.i.i.i.return_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #10
  br label %return

if.then.i:                                        ; preds = %if.end99.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @__put_task_struct(ptr noundef nonnull %exiting) #10
  br label %return

return:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.return_crit_edge, %if.then62, %land.rhs51.return_crit_edge, %if.then8, %land.rhs.return_crit_edge, %if.then.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__futex_unqueue(ptr noundef %q) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock_ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false.critedge, !prof !63

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

lor.lhs.false.critedge:                           ; preds = %entry
  %node_list.i = getelementptr inbounds %struct.plist_node, ptr %q, i32 0, i32 2
  %2 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %node_list.i, align 4
  %cmp.i.i.not = icmp eq ptr %3, %node_list.i
  br i1 %cmp.i.i.not, label %do.end39, label %do.body56, !prof !63

do.end39:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

do.body56:                                        ; preds = %lor.lhs.false.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool58.not = icmp eq i32 %4, 0
  br i1 %tobool58.not, label %do.body56.if.end84_crit_edge, label %land.rhs

do.body56.if.end84_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

land.rhs:                                         ; preds = %do.body56
  %dep_map = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end78, label %land.rhs.if.end84_crit_edge, !prof !63

land.rhs.if.end84_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

do.end78:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 505, i32 noundef 9, ptr noundef null) #10
  br label %if.end84

if.end84:                                         ; preds = %do.end78, %land.rhs.if.end84_crit_edge, %do.body56.if.end84_crit_edge
  %5 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lock_ptr, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 -4
  %chain = getelementptr i8, ptr %6, i32 44
  tail call void @plist_del(ptr noundef %q, ptr noundef %chain) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #10, !srcloc !88
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %do.end39, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @futex_q_lock(ptr nocapture noundef %q) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3
  %offset.i = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 3, i32 0, i32 2
  %0 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset.i, align 4
  %add1.i.i = add i32 %1, -559038725
  %arrayidx29.i.i = getelementptr %struct.futex_q, ptr %q, i32 0, i32 3, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx29.i.i, align 4
  %add30.i.i = add i32 %3, %add1.i.i
  %arrayidx32.i.i = getelementptr i32, ptr %key, i32 1
  %4 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx32.i.i, align 4
  %add33.i.i = add i32 %5, %add1.i.i
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 4
  %add36.i.i = add i32 %7, %add1.i.i
  %xor37.i.i = xor i32 %add33.i.i, %add30.i.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i, i32 %add33.i.i, i32 14) #10
  %sub39.i.i = sub i32 %xor37.i.i, %or.i.i.i
  %xor40.i.i = xor i32 %sub39.i.i, %add36.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i, i32 %sub39.i.i, i32 11) #10
  %sub42.i.i = sub i32 %xor40.i.i, %or.i1.i.i
  %xor43.i.i = xor i32 %sub42.i.i, %add33.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i, i32 %sub42.i.i, i32 25) #10
  %sub45.i.i = sub i32 %xor43.i.i, %or.i2.i.i
  %xor46.i.i = xor i32 %sub45.i.i, %sub39.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i, i32 %sub45.i.i, i32 16) #10
  %sub48.i.i = sub i32 %xor46.i.i, %or.i3.i.i
  %xor49.i.i = xor i32 %sub48.i.i, %sub42.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i, i32 %sub48.i.i, i32 4) #10
  %sub51.i.i = sub i32 %xor49.i.i, %or.i4.i.i
  %xor52.i.i = xor i32 %sub51.i.i, %sub45.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i, i32 %sub51.i.i, i32 14) #10
  %sub54.i.i = sub i32 %xor52.i.i, %or.i5.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i, i32 %sub54.i.i, i32 24) #10
  %xor55.i.i = xor i32 %sub54.i.i, %sub48.i.i
  %sub57.i.i = sub i32 %xor55.i.i, %or.i6.i.i
  %8 = load ptr, ptr @__futex_data.0, align 8
  %9 = load i32, ptr @__futex_data.1, align 8
  %sub.i = add i32 %9, -1
  %and.i = and i32 %sub57.i.i, %sub.i
  %arrayidx.i = getelementptr %struct.futex_hash_bucket, ptr %8, i32 %and.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #10, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %lock = getelementptr %struct.futex_hash_bucket, ptr %8, i32 %and.i, i32 1
  %lock_ptr = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %11 = ptrtoint ptr %lock_ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock, ptr %lock_ptr, align 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  ret ptr %arrayidx.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @futex_q_unlock(ptr noundef %hb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.futex_hash_bucket, ptr %hb, i32 0, i32 1
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hb, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %hb, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hb, ptr %hb, i32 1, ptr elementtype(i32) %hb) #10, !srcloc !88
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__futex_queue(ptr noundef %q, ptr noundef %hb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %normal_prio = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %normal_prio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %normal_prio, align 64
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 100)
  %7 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %q, align 4
  %prio_list.i = getelementptr inbounds %struct.plist_node, ptr %q, i32 0, i32 1
  %8 = ptrtoint ptr %prio_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %prio_list.i, ptr %prio_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.plist_node, ptr %q, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %prio_list.i, ptr %prev.i.i, align 4
  %node_list.i = getelementptr inbounds %struct.plist_node, ptr %q, i32 0, i32 2
  %10 = ptrtoint ptr %node_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %node_list.i, ptr %node_list.i, align 4
  %prev.i4.i = getelementptr inbounds %struct.plist_node, ptr %q, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node_list.i, ptr %prev.i4.i, align 4
  %chain = getelementptr inbounds %struct.futex_hash_bucket, ptr %hb, i32 0, i32 2
  tail call void @plist_add(ptr noundef %q, ptr noundef %chain) #10
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %task4 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 1
  %14 = ptrtoint ptr %task4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %task4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @futex_unqueue(ptr noundef %q) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock_ptr1 = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 2
  %0 = ptrtoint ptr %lock_ptr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %lock_ptr1, align 8
  %cmp.not33 = icmp eq ptr %1, null
  br i1 %cmp.not33, label %entry.if.end24_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then:                                          ; preds = %if.then5.if.then_crit_edge, %entry.if.then_crit_edge
  %2 = phi ptr [ %6, %if.then5.if.then_crit_edge ], [ %1, %entry.if.then_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull %2) #10
  %3 = ptrtoint ptr %lock_ptr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock_ptr1, align 8
  %cmp3.not = icmp eq ptr %2, %4
  br i1 %cmp3.not, label %if.end, label %if.then5, !prof !61

if.then5:                                         ; preds = %if.then
  tail call void @_raw_spin_unlock(ptr noundef nonnull %2) #10
  %5 = ptrtoint ptr %lock_ptr1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %lock_ptr1, align 8
  %cmp.not = icmp eq ptr %6, null
  br i1 %cmp.not, label %if.then5.if.end24_crit_edge, label %if.then5.if.then_crit_edge

if.then5.if.then_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then5.if.end24_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end:                                           ; preds = %if.then
  tail call void @__futex_unqueue(ptr noundef %q)
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4
  %7 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi_state, align 8
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %do.end23, label %do.body15, !prof !61

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/futex/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 607, 0\0A.popsection", ""() #10, !srcloc !91
  unreachable

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef nonnull %2) #10
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.then5.if.end24_crit_edge, %entry.if.end24_crit_edge
  %ret.0 = phi i32 [ 1, %do.end23 ], [ 0, %entry.if.end24_crit_edge ], [ 0, %if.then5.if.end24_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @futex_unqueue_pi(ptr noundef %q) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__futex_unqueue(ptr noundef %q)
  %pi_state = getelementptr inbounds %struct.futex_q, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %pi_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi_state, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !63

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/futex/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 624, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @put_pi_state(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %pi_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pi_state, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pi_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @futex_exit_recursive(ptr noundef %tsk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %futex_state = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 170
  %0 = ptrtoint ptr %futex_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %futex_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %futex_exit_mutex = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 169
  tail call void @mutex_unlock(ptr noundef %futex_exit_mutex) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %futex_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %futex_state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @futex_exec_release(ptr noundef %tsk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %futex_exit_mutex.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 169
  tail call void @mutex_lock_nested(ptr noundef %futex_exit_mutex.i, i32 noundef 0) #10
  %pi_lock.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 128
  tail call void @_raw_spin_lock_irq(ptr noundef %pi_lock.i) #10
  %futex_state.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 170
  %0 = ptrtoint ptr %futex_state.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %futex_state.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %pi_lock.i) #10
  %robust_list.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 166
  %1 = ptrtoint ptr %robust_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %robust_list.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i, !prof !61

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @exit_robust_list(ptr noundef %tsk) #10
  %3 = ptrtoint ptr %robust_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %robust_list.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %pi_state_list.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 167
  %4 = ptrtoint ptr %pi_state_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pi_state_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %pi_state_list.i
  br i1 %cmp.i.not.i, label %if.end.i.futex_cleanup.exit_crit_edge, label %if.then13.i, !prof !61

if.end.i.futex_cleanup.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %futex_cleanup.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @exit_pi_state_list(ptr noundef %tsk) #10
  br label %futex_cleanup.exit

futex_cleanup.exit:                               ; preds = %if.then13.i, %if.end.i.futex_cleanup.exit_crit_edge
  %6 = ptrtoint ptr %futex_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %futex_state.i, align 8
  tail call void @mutex_unlock(ptr noundef %futex_exit_mutex.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @futex_exit_release(ptr noundef %tsk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %futex_exit_mutex.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 169
  tail call void @mutex_lock_nested(ptr noundef %futex_exit_mutex.i, i32 noundef 0) #10
  %pi_lock.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 128
  tail call void @_raw_spin_lock_irq(ptr noundef %pi_lock.i) #10
  %futex_state.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 170
  %0 = ptrtoint ptr %futex_state.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %futex_state.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %pi_lock.i) #10
  %robust_list.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 166
  %1 = ptrtoint ptr %robust_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %robust_list.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i, !prof !61

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @exit_robust_list(ptr noundef %tsk) #10
  %3 = ptrtoint ptr %robust_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %robust_list.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %pi_state_list.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 167
  %4 = ptrtoint ptr %pi_state_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pi_state_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %pi_state_list.i
  br i1 %cmp.i.not.i, label %if.end.i.futex_cleanup.exit_crit_edge, label %if.then13.i, !prof !61

if.end.i.futex_cleanup.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %futex_cleanup.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @exit_pi_state_list(ptr noundef %tsk) #10
  br label %futex_cleanup.exit

futex_cleanup.exit:                               ; preds = %if.then13.i, %if.end.i.futex_cleanup.exit_crit_edge
  %6 = ptrtoint ptr %futex_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %futex_state.i, align 8
  tail call void @mutex_unlock(ptr noundef %futex_exit_mutex.i) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @futex_init() #0 section ".init.text" align 64 {
entry:
  %futex_shift = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %futex_shift) #10
  %0 = ptrtoint ptr %futex_shift to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %futex_shift, align 4, !annotation !60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %1) #10
  %mul = shl i32 %call4.i.i, 8
  %sub.i = add i32 %mul, -1
  %2 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #10, !range !93
  %sub.i.i.i = sub nuw nsw i32 32, %2
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  store i32 %sub.i.i.op.i, ptr @__futex_data.1, align 8
  %call2 = call ptr @alloc_large_system_hash(ptr noundef nonnull @.str.12, i32 noundef 128, i32 noundef %sub.i.i.op.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %futex_shift, ptr noundef null, i32 noundef %sub.i.i.op.i, i32 noundef %sub.i.i.op.i) #10
  store ptr %call2, ptr @__futex_data.0, align 8
  %3 = ptrtoint ptr %futex_shift to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %futex_shift, align 4
  %shl = shl nuw i32 1, %4
  store i32 %shl, ptr @__futex_data.1, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry ]
  %5 = load ptr, ptr @__futex_data.0, align 8
  %arrayidx = getelementptr %struct.futex_hash_bucket, ptr %5, i32 %i.012
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %arrayidx, align 4
  %7 = load ptr, ptr @__futex_data.0, align 8
  %chain = getelementptr %struct.futex_hash_bucket, ptr %7, i32 %i.012, i32 2
  %8 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %chain, ptr %chain, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %chain, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %chain, ptr %prev.i.i, align 4
  %lock = getelementptr %struct.futex_hash_bucket, ptr %7, i32 %i.012, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @futex_init.__key, i16 noundef signext 3) #10
  %inc = add nuw i32 %i.012, 1
  %10 = load i32, ptr @__futex_data.1, align 8
  %cmp3 = icmp ult i32 %inc, %10
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %futex_shift) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_fault_attr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fault_create_debugfs_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exit_robust_list(ptr noundef %curr) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %robust_list = getelementptr inbounds %struct.task_struct, ptr %curr, i32 0, i32 166
  %0 = ptrtoint ptr %robust_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %robust_list, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 750) #10
  %2 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !78
  %and.i.i = and i32 %4, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1226833921) #10, !srcloc !94
  %asmresult.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %asmresult2.i = extractvalue { i32, i32 } %5, 1
  %and.i55 = and i32 %asmresult2.i, -2
  %6 = inttoptr i32 %and.i55 to ptr
  %and4.i = and i32 %asmresult2.i, 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 783) #10
  %futex_offset2 = getelementptr inbounds %struct.robust_list_head, ptr %1, i32 0, i32 1
  %7 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !78
  %and.i = and i32 %9, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %futex_offset2, i32 -1226833921) #10, !srcloc !95
  %asmresult = extractvalue { i32, i32 } %10, 0
  %asmresult4 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool6.not = icmp eq i32 %asmresult, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %list_op_pending = getelementptr inbounds %struct.robust_list_head, ptr %1, i32 0, i32 2
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 750) #10
  %11 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i56 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i56 to ptr
  %cpu_domain.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i57) #7, !srcloc !78
  %and.i.i58 = and i32 %13, -13
  %or.i.i59 = or i32 %and.i.i58, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i59) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %14 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %list_op_pending, i32 -1226833921) #10, !srcloc !94
  %asmresult.i60 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i60)
  %tobool.not.i61 = icmp eq i32 %asmresult.i60, 0
  br i1 %tobool.not.i61, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %asmresult2.i62 = extractvalue { i32, i32 } %14, 1
  %and.i63 = and i32 %asmresult2.i62, -2
  %15 = inttoptr i32 %and.i63 to ptr
  %and4.i64 = and i32 %asmresult2.i62, 1
  %cmp.not110 = icmp eq ptr %1, %6
  br i1 %cmp.not110, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end29.while.body_crit_edge, %if.end12.while.body_crit_edge
  %limit.0116 = phi i32 [ %dec, %if.end29.while.body_crit_edge ], [ 2048, %if.end12.while.body_crit_edge ]
  %next_pi.0115 = phi i32 [ %next_pi.1101, %if.end29.while.body_crit_edge ], [ -1, %if.end12.while.body_crit_edge ]
  %pi.1114 = phi i32 [ %next_pi.1101, %if.end29.while.body_crit_edge ], [ %and4.i, %if.end12.while.body_crit_edge ]
  %next_entry.0113 = phi ptr [ %next_entry.198, %if.end29.while.body_crit_edge ], [ null, %if.end12.while.body_crit_edge ]
  %entry1.1111 = phi ptr [ %next_entry.198, %if.end29.while.body_crit_edge ], [ %6, %if.end12.while.body_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 750) #10
  %16 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i68 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i68 to ptr
  %cpu_domain.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i69) #7, !srcloc !78
  %and.i.i70 = and i32 %18, -13
  %or.i.i71 = or i32 %and.i.i70, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i71) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %entry1.1111, i32 -1226833921) #10, !srcloc !94
  %asmresult.i72 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i72)
  %tobool.not.i73 = icmp eq i32 %asmresult.i72, 0
  br i1 %tobool.not.i73, label %fetch_robust_entry.exit79, label %fetch_robust_entry.exit79.thread

fetch_robust_entry.exit79:                        ; preds = %while.body
  %asmresult2.i74 = extractvalue { i32, i32 } %19, 1
  %and.i75 = and i32 %asmresult2.i74, -2
  %20 = inttoptr i32 %and.i75 to ptr
  %and4.i76 = and i32 %asmresult2.i74, 1
  %cmp16.not = icmp eq ptr %entry1.1111, %15
  br i1 %cmp16.not, label %fetch_robust_entry.exit79.if.end26_crit_edge, label %fetch_robust_entry.exit79.if.then17_crit_edge

fetch_robust_entry.exit79.if.then17_crit_edge:    ; preds = %fetch_robust_entry.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

fetch_robust_entry.exit79.if.end26_crit_edge:     ; preds = %fetch_robust_entry.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

fetch_robust_entry.exit79.thread:                 ; preds = %while.body
  %cmp16.not97 = icmp eq ptr %entry1.1111, %15
  br i1 %cmp16.not97, label %fetch_robust_entry.exit79.thread.cleanup_crit_edge, label %fetch_robust_entry.exit79.thread.if.then17_crit_edge

fetch_robust_entry.exit79.thread.if.then17_crit_edge: ; preds = %fetch_robust_entry.exit79.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then17

fetch_robust_entry.exit79.thread.cleanup_crit_edge: ; preds = %fetch_robust_entry.exit79.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %fetch_robust_entry.exit79.thread.if.then17_crit_edge, %fetch_robust_entry.exit79.if.then17_crit_edge
  %next_pi.1102 = phi i32 [ %next_pi.0115, %fetch_robust_entry.exit79.thread.if.then17_crit_edge ], [ %and4.i76, %fetch_robust_entry.exit79.if.then17_crit_edge ]
  %next_entry.199 = phi ptr [ %next_entry.0113, %fetch_robust_entry.exit79.thread.if.then17_crit_edge ], [ %20, %fetch_robust_entry.exit79.if.then17_crit_edge ]
  %add.ptr = getelementptr i8, ptr %entry1.1111, i32 %asmresult4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pi.1114)
  %tobool18 = icmp ne i32 %pi.1114, 0
  %call19 = tail call fastcc i32 @handle_futex_death(ptr noundef %add.ptr, ptr noundef %curr, i1 noundef zeroext %tobool18, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  %or.cond = select i1 %tobool20.not, i1 %tobool.not.i73, i1 false
  br i1 %or.cond, label %if.then17.if.end26_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26:                                         ; preds = %if.then17.if.end26_crit_edge, %fetch_robust_entry.exit79.if.end26_crit_edge
  %next_pi.1101 = phi i32 [ %next_pi.1102, %if.then17.if.end26_crit_edge ], [ %and4.i76, %fetch_robust_entry.exit79.if.end26_crit_edge ]
  %next_entry.198 = phi ptr [ %next_entry.199, %if.then17.if.end26_crit_edge ], [ %20, %fetch_robust_entry.exit79.if.end26_crit_edge ]
  %dec = add nsw i32 %limit.0116, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %if.end26.while.end_crit_edge, label %if.end29

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end29:                                         ; preds = %if.end26
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 818, i32 noundef 0) #10
  %call.i = tail call i32 @__cond_resched() #10
  %cmp.not = icmp eq ptr %next_entry.198, %1
  br i1 %cmp.not, label %if.end29.while.end_crit_edge, label %if.end29.while.body_crit_edge

if.end29.while.body_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end29.while.end_crit_edge, %if.end26.while.end_crit_edge, %if.end12.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool32.not = icmp eq i32 %and.i63, 0
  br i1 %tobool32.not, label %while.end.cleanup_crit_edge, label %if.then33

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr34 = getelementptr i8, ptr %15, i32 %asmresult4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i64)
  %tobool35 = icmp ne i32 %and4.i64, 0
  %call36 = tail call fastcc i32 @handle_futex_death(ptr noundef %add.ptr34, ptr noundef %curr, i1 noundef zeroext %tobool35, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %while.end.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %fetch_robust_entry.exit79.thread.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exit_pi_state_list(ptr noundef %curr) unnamed_addr #1 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pi_state_list = getelementptr inbounds %struct.task_struct, ptr %curr, i32 0, i32 167
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %curr, i32 0, i32 128
  tail call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #10
  %0 = ptrtoint ptr %pi_state_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pi_state_list, align 4
  %cmp.i.not118 = icmp eq ptr %1, %pi_state_list
  br i1 %cmp.i.not118, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %22, %while.cond.backedge.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %key2 = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %key.sroa.0.0.copyload = load i32, ptr %key2, align 8
  %key.sroa.5.0.key2.sroa_idx = getelementptr inbounds i8, ptr %key2, i32 4
  %4 = ptrtoint ptr %key.sroa.5.0.key2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %key.sroa.5.0.copyload = load i32, ptr %key.sroa.5.0.key2.sroa_idx, align 4
  %key.sroa.6.0.key2.sroa_idx = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %key.sroa.6.0.key2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %key.sroa.6.0.copyload = load i32, ptr %key.sroa.6.0.key2.sroa_idx, align 8
  %key.sroa.7.0.key2.sroa_idx = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 4, i32 0, i32 2
  %6 = ptrtoint ptr %key.sroa.7.0.key2.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %key.sroa.7.0.copyload = load i32, ptr %key.sroa.7.0.key2.sroa_idx, align 4
  %add1.i.i = add i32 %key.sroa.7.0.copyload, -559038725
  %add30.i.i = add i32 %add1.i.i, %key.sroa.6.0.copyload
  %add33.i.i = add i32 %add1.i.i, %key.sroa.5.0.copyload
  %add36.i.i = add i32 %add1.i.i, %key.sroa.0.0.copyload
  %xor37.i.i = xor i32 %add33.i.i, %add30.i.i
  %or.i.i.i = call i32 @llvm.fshl.i32(i32 %add33.i.i, i32 %add33.i.i, i32 14) #10
  %sub39.i.i = sub i32 %xor37.i.i, %or.i.i.i
  %xor40.i.i = xor i32 %sub39.i.i, %add36.i.i
  %or.i1.i.i = call i32 @llvm.fshl.i32(i32 %sub39.i.i, i32 %sub39.i.i, i32 11) #10
  %sub42.i.i = sub i32 %xor40.i.i, %or.i1.i.i
  %xor43.i.i = xor i32 %sub42.i.i, %add33.i.i
  %or.i2.i.i = call i32 @llvm.fshl.i32(i32 %sub42.i.i, i32 %sub42.i.i, i32 25) #10
  %sub45.i.i = sub i32 %xor43.i.i, %or.i2.i.i
  %xor46.i.i = xor i32 %sub45.i.i, %sub39.i.i
  %or.i3.i.i = call i32 @llvm.fshl.i32(i32 %sub45.i.i, i32 %sub45.i.i, i32 16) #10
  %sub48.i.i = sub i32 %xor46.i.i, %or.i3.i.i
  %xor49.i.i = xor i32 %sub48.i.i, %sub42.i.i
  %or.i4.i.i = call i32 @llvm.fshl.i32(i32 %sub48.i.i, i32 %sub48.i.i, i32 4) #10
  %sub51.i.i = sub i32 %xor49.i.i, %or.i4.i.i
  %xor52.i.i = xor i32 %sub51.i.i, %sub45.i.i
  %or.i5.i.i = call i32 @llvm.fshl.i32(i32 %sub51.i.i, i32 %sub51.i.i, i32 14) #10
  %sub54.i.i = sub i32 %xor52.i.i, %or.i5.i.i
  %or.i6.i.i = call i32 @llvm.fshl.i32(i32 %sub54.i.i, i32 %sub54.i.i, i32 24) #10
  %xor55.i.i = xor i32 %sub54.i.i, %sub48.i.i
  %sub57.i.i = sub i32 %xor55.i.i, %or.i6.i.i
  %7 = load ptr, ptr @__futex_data.0, align 8
  %8 = load i32, ptr @__futex_data.1, align 8
  %sub.i = add i32 %8, -1
  %and.i = and i32 %sub57.i.i, %sub.i
  %refcount = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #10
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #10
  %9 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %while.body
  %11 = phi i32 [ %10, %while.body ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %11, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %14, i32 %add.i.i.i, ptr elementtype(i32) %refcount) #10, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !61

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !61

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #10
  %19 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %20 = phi i32 [ %17, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.not = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #10
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock) #10
  br i1 %tobool12.i.i.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !97
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !98
  call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %list_del_init.exit, %if.then16, %if.then
  %21 = ptrtoint ptr %pi_state_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pi_state_list, align 4
  %cmp.i.not = icmp eq ptr %22, %pi_state_list
  br i1 %cmp.i.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %refcount_inc_not_zero.exit
  %lock = getelementptr %struct.futex_hash_bucket, ptr %7, i32 %and.i, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #10
  %pi_mutex = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %pi_mutex) #10
  call void @_raw_spin_lock(ptr noundef %pi_lock) #10
  %23 = ptrtoint ptr %pi_state_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pi_state_list, align 4
  %cmp.not = icmp eq ptr %24, %2
  br i1 %cmp.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock(ptr noundef %pi_mutex) #10
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  call void @put_pi_state(ptr noundef %2) #10
  br label %while.cond.backedge

if.end20:                                         ; preds = %if.end
  %owner = getelementptr inbounds %struct.futex_pi_state, ptr %2, i32 0, i32 2
  %25 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %owner, align 8
  %cmp21.not = icmp eq ptr %26, %curr
  br i1 %cmp21.not, label %if.end20.if.end40_crit_edge, label %do.end34, !prof !61

if.end20.if.end40_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.end34:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 987, i32 noundef 9, ptr noundef null) #10
  br label %if.end40

if.end40:                                         ; preds = %do.end34, %if.end20.if.end40_crit_edge
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %2, align 4
  %cmp.i116.not = icmp eq ptr %28, %2
  br i1 %cmp.i116.not, label %do.end66, label %if.end40.if.end72_crit_edge, !prof !63

if.end40.if.end72_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end66:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 988, i32 noundef 9, ptr noundef null) #10
  br label %if.end72

if.end72:                                         ; preds = %do.end66, %if.end40.if.end72_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end72.list_del_init.exit_crit_edge

if.end72.list_del_init.exit_crit_edge:            ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end72.list_del_init.exit_crit_edge
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %2, ptr %prev.i3.i, align 4
  %37 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %owner, align 8
  call void @_raw_spin_unlock(ptr noundef %pi_lock) #10
  call void @_raw_spin_unlock_irq(ptr noundef %pi_mutex) #10
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  call void @rt_mutex_futex_unlock(ptr noundef %pi_mutex) #10
  call void @put_pi_state(ptr noundef %2) #10
  call void @_raw_spin_lock_irq(ptr noundef %pi_lock) #10
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %pi_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_futex_death(ptr noundef %uaddr, ptr noundef %curr, i1 noundef zeroext %pi, i1 noundef zeroext %pending_op) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uaddr to i32
  %rem = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %retry.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

retry.preheader:                                  ; preds = %entry
  %pi.not = xor i1 %pi, true
  %brmerge.not = and i1 %pi.not, %pending_op
  br label %retry

retry:                                            ; preds = %retry.backedge, %retry.preheader
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 648) #10
  %1 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !78
  %and.i = and i32 %3, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %4 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %uaddr, i32 -1226833921) #10, !srcloc !99
  %asmresult = extractvalue { i32, i32 } %4, 0
  %asmresult2 = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult2)
  %tobool9.not = icmp eq i32 %asmresult2, 0
  %or.cond = select i1 %brmerge.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @futex_wake(ptr noundef %uaddr, i32 noundef 1, i32 noundef 1, i32 noundef -1) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %and = and i32 %asmresult2, 1073741823
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %curr, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %call.i)
  %cmp14.not = icmp eq i32 %and, %call.i
  br i1 %cmp14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %and17 = and i32 %asmresult2, -2147483648
  %5 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 213
  %9 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %inc.i.i.i = add i32 %10, 1
  store i32 %inc.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uaddr, i32 4, i32 -1226833920) #13, !srcloc !76
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %futex_cmpxchg_value_locked.exit, label %futex_cmpxchg_value_locked.exit.thread

futex_cmpxchg_value_locked.exit.thread:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %12 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i1.i98 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1.i98 to ptr
  %task.i.i2.i99 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i2.i99 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i2.i99, align 8
  %pagefault_disabled.i.i3.i100 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i3.i100 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i3.i100, align 8
  %dec.i.i.i101 = add i32 %17, -1
  store i32 %dec.i.i.i101, ptr %pagefault_disabled.i.i3.i100, align 8
  br label %sw.bb

futex_cmpxchg_value_locked.exit:                  ; preds = %if.end16
  %or = or i32 %and17, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @llvm.prefetch.p0(ptr %uaddr, i32 1, i32 3, i32 1) #10
  %18 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #7, !srcloc !78
  %and.i.i.i94 = and i32 %20, -13
  %or.i.i.i = or i32 %and.i.i.i94, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %21 = tail call { i32, i32 } asm sideeffect "@futex_atomic_cmpxchg_inatomic\0A1:\09ldrex\09$1, [$4]\0A\09teq\09$1, $2\0A\09ite\09eq\09@ explicit IT needed for the 2b label\0A2:\09strexeq\09$0, $3, [$4]\0A\09movne\09$0, #0\0A\09teq\09$0, #0\0A\09bne\091b\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,r,r,r,Ir,~{cc},~{memory}"(i32 %asmresult2, i32 %or, ptr %uaddr, i32 -14) #10, !srcloc !81
  %asmresult5.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #10, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %22 = tail call i32 @llvm.read_register.i32(metadata !49) #10
  %and.i.i.i1.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i.i2.i, align 8
  %pagefault_disabled.i.i3.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 213
  %26 = ptrtoint ptr %pagefault_disabled.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pagefault_disabled.i.i3.i, align 8
  %dec.i.i.i = add i32 %27, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i3.i, align 8
  %28 = zext i32 %asmresult5.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %asmresult5.i.i, label %land.end [
    i32 0, label %if.end64
    i32 -14, label %futex_cmpxchg_value_locked.exit.sw.bb_crit_edge
    i32 -11, label %sw.bb25
  ]

futex_cmpxchg_value_locked.exit.sw.bb_crit_edge:  ; preds = %futex_cmpxchg_value_locked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %futex_cmpxchg_value_locked.exit.sw.bb_crit_edge, %futex_cmpxchg_value_locked.exit.thread
  %call21 = tail call i32 @fault_in_user_writeable(ptr noundef %uaddr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %sw.bb.retry.backedge_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.retry.backedge_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.backedge

sw.bb25:                                          ; preds = %futex_cmpxchg_value_locked.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 719, i32 noundef 0) #10
  %call.i95 = tail call i32 @__cond_resched() #10
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.end64.retry.backedge_crit_edge, %sw.bb25, %sw.bb.retry.backedge_crit_edge
  br label %retry

land.end:                                         ; preds = %futex_cmpxchg_value_locked.exit
  %asmresult5.i.i.le = extractvalue { i32, i32 } %21, 0
  %.b92 = load i1, ptr @handle_futex_death.__already_done, align 1
  br i1 %.b92, label %land.end.cleanup_crit_edge, label %if.then33, !prof !61

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then33:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @handle_futex_death.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 723, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end64:                                         ; preds = %futex_cmpxchg_value_locked.exit
  %asmresult6.i.i = extractvalue { i32, i32 } %21, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult6.i.i, i32 %asmresult2)
  %cmp65.not = icmp eq i32 %asmresult6.i.i, %asmresult2
  br i1 %cmp65.not, label %if.end67, label %if.end64.retry.backedge_crit_edge

if.end64.retry.backedge_crit_edge:                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.backedge

if.end67:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool71.not = icmp eq i32 %and17, 0
  %or.cond93 = select i1 %pi, i1 true, i1 %tobool71.not
  br i1 %or.cond93, label %if.end67.cleanup_crit_edge, label %if.then72

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = tail call i32 @futex_wake(ptr noundef %uaddr, i32 noundef 1, i32 noundef 1, i32 noundef -1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.end67.cleanup_crit_edge, %if.then33, %land.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then10, %retry.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ -1, %entry.cleanup_crit_edge ], [ %asmresult5.i.i.le, %if.then33 ], [ %asmresult5.i.i.le, %land.end.cleanup_crit_edge ], [ 0, %if.then72 ], [ 0, %if.end67.cleanup_crit_edge ], [ -1, %sw.bb.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ -1, %retry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wake(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_futex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !48}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__setup_setup_fail_futex, !1, !"__setup_setup_fail_futex", i1 false, i1 false}
!1 = !{!"../kernel/futex/core.c", i32 75, i32 1}
!2 = !{ptr @__initcall__kmod_core__239_102_fail_futex_debugfs7, !3, !"__initcall__kmod_core__239_102_fail_futex_debugfs7", i1 false, i1 false}
!3 = !{!"../kernel/futex/core.c", i32 102, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/futex/core.c", i32 456, i32 8}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../kernel/futex/core.c", i32 472, i32 3}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/futex/core.c", i32 476, i32 6}
!10 = !{ptr @__initcall__kmod_core__246_1141_futex_init1, !11, !"__initcall__kmod_core__246_1141_futex_init1", i1 false, i1 false}
!11 = !{!"../kernel/futex/core.c", i32 1141, i32 1}
!12 = distinct !{null, !13, !"__futex_data", i1 false, i1 false}
!13 = !{!"../kernel/futex/core.c", i32 52, i32 3}
!14 = !{ptr @__setup_str_setup_fail_futex, !1, !"__setup_str_setup_fail_futex", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/futex/core.c", i32 67, i32 10}
!17 = !{ptr @fail_futex, !18, !"fail_futex", i1 false, i1 false}
!18 = !{!"../kernel/futex/core.c", i32 66, i32 3}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/futex/core.c", i32 92, i32 34}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/futex/core.c", i32 97, i32 22}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!27 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/mm.h", i32 717, i32 2}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @get_inode_sequence_number.i_seq, !39, !"i_seq", i1 false, i1 false}
!39 = !{!"../kernel/futex/core.c", i32 173, i32 20}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../kernel/futex/core.c", i32 183, i32 7}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../kernel/futex/core.c", i32 723, i32 4}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/futex/core.c", i32 1126, i32 41}
!46 = !{ptr @futex_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../kernel/futex/core.c", i32 1136, i32 3}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i8 0, i8 2}
!60 = !{!"auto-init"}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2154034363, i64 2154034388}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2150702684, i64 2150703175, i64 2150702721, i64 2150702777, i64 2150702811, i64 2150702835, i64 2150702876, i64 2150702897, i64 2150702925, i64 2150702959}
!65 = !{!"branch_weights", i32 2000, i32 2002}
!66 = !{i64 2149433453}
!67 = !{i64 2149433719}
!68 = !{i64 2153293717, i64 2153294200, i64 2153293754, i64 2153293810, i64 2153293844, i64 2153293868, i64 2153293909, i64 2153293930, i64 2153293958, i64 2153293992}
!69 = !{i64 2148350737}
!70 = !{i64 2148265470, i64 2148265502, i64 2148265531, i64 2148265565, i64 2148265596, i64 2148265619}
!71 = !{i64 2148350966}
!72 = !{i64 2148962215, i64 2148962220, i64 2148962233, i64 2148962277, i64 2148962311, i64 2148962332}
!73 = !{i64 2148271143, i64 2148271175, i64 2148271204, i64 2148271238, i64 2148271269, i64 2148271292}
!74 = !{i64 2148360224}
!75 = !{i64 2152296301}
!76 = !{i64 2153985197, i64 2153985222}
!77 = !{i64 2153985915}
!78 = !{i64 4789039}
!79 = !{i64 4789236}
!80 = !{i64 2152274469}
!81 = !{i64 6498286, i64 6498323, i64 6498346, i64 6498363, i64 6498414, i64 6498443, i64 6498462, i64 6498479, i64 2153986009, i64 2153986025, i64 2153986064, i64 2153986085, i64 2153986116, i64 2153986140, i64 2153986181, i64 2153986202, i64 2153986234, i64 2153986251}
!82 = !{i64 2153986362}
!83 = !{i64 2152296508}
!84 = !{i64 2154056012, i64 2154056292, i64 2154056626, i64 2154056960}
!85 = !{i64 2148351816}
!86 = !{i64 2148266280, i64 2148266312, i64 2148266341, i64 2148266375, i64 2148266406, i64 2148266429}
!87 = !{i64 2149469868}
!88 = !{i64 2148264750, i64 2148264776, i64 2148264805, i64 2148264839, i64 2148264870, i64 2148264893}
!89 = !{i64 2148262285, i64 2148262311, i64 2148262340, i64 2148262374, i64 2148262405, i64 2148262428}
!90 = !{i64 2153993126}
!91 = !{i64 2154069795, i64 2154070279, i64 2154069832, i64 2154069888, i64 2154069922, i64 2154069946, i64 2154069987, i64 2154070008, i64 2154070036, i64 2154070070}
!92 = !{i64 2154071375, i64 2154071859, i64 2154071412, i64 2154071468, i64 2154071502, i64 2154071526, i64 2154071567, i64 2154071588, i64 2154071616, i64 2154071650}
!93 = !{i32 0, i32 33}
!94 = !{i64 2154094799, i64 2154095079, i64 2154095413, i64 2154095747}
!95 = !{i64 2154107093, i64 2154107373, i64 2154107707, i64 2154108041}
!96 = !{i64 746818, i64 746842, i64 746863, i64 746880, i64 746897}
!97 = !{i64 2154112461}
!98 = !{i64 2154112303}
!99 = !{i64 2154081213, i64 2154081493, i64 2154081827, i64 2154082161}
