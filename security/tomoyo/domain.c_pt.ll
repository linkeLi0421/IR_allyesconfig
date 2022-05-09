; ModuleID = '/llk/IR_all_yes/security/tomoyo/domain.c_pt.bc'
source_filename = "../security/tomoyo/domain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tomoyo_domain_info = type { %struct.list_head, %struct.list_head, ptr, ptr, [8 x i32], i8, i8, [2 x i8], %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.118 }
%union.anon.118 = type { i32 }
%struct.tomoyo_acl_param = type { ptr, ptr, ptr, i8 }
%struct.tomoyo_acl_head = type <{ %struct.list_head, i8 }>
%struct.tomoyo_acl_info = type <{ %struct.list_head, ptr, i8, i8 }>
%struct.tomoyo_condition = type { %struct.tomoyo_shared_acl_head, i32, i16, i16, i16, i16, i16, i8, ptr }
%struct.tomoyo_shared_acl_head = type { %struct.list_head, %struct.atomic_t }
%struct.tomoyo_path_acl = type { %struct.tomoyo_acl_info, i16, %struct.tomoyo_name_union }
%struct.tomoyo_name_union = type { ptr, ptr }
%struct.tomoyo_request_info = type { ptr, ptr, ptr, %union.anon.130, ptr, i8, i8, i8, i8, i8, i8 }
%union.anon.130 = type { %struct.anon.133 }
%struct.anon.133 = type { ptr, i32, i32, i32, i8 }
%struct.tomoyo_policy_namespace = type { [256 x ptr], [3 x %struct.list_head], [11 x %struct.list_head], [256 x %struct.list_head], %struct.list_head, i32, ptr }
%struct.tomoyo_transition_control = type { %struct.tomoyo_acl_head, i8, i8, ptr, ptr }
%struct.tomoyo_aggregator = type { %struct.tomoyo_acl_head, ptr, ptr }
%struct.tomoyo_path_info = type { ptr, i32, i16, i8, i8 }
%struct.tomoyo_page_dump = type { ptr, ptr }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.tomoyo_execve = type { %struct.tomoyo_request_info, %struct.tomoyo_obj_info, ptr, ptr, %struct.tomoyo_page_dump, ptr }
%struct.tomoyo_obj_info = type { i8, [4 x i8], %struct.path, %struct.path, [4 x %struct.tomoyo_mini_stat], ptr }
%struct.path = type { ptr, ptr }
%struct.tomoyo_mini_stat = type { %struct.kuid_t, %struct.kgid_t, i32, i16, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.file = type { %union.anon.140, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.140 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.110, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.42 }
%struct.llist_node = type { ptr }
%union.anon.42 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.110 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.tomoyo_task = type { ptr, ptr }
%struct.anon.24 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.page = type { i32, %union.anon.16, %union.anon.116, %struct.atomic_t, i32 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.116 = type { %struct.atomic_t }

@tomoyo_policy_lock = external dso_local global %struct.mutex, align 4
@tomoyo_update_policy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_ss = external dso_local global %struct.srcu_struct, align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"security/tomoyo/domain.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@tomoyo_update_domain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_check_acl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_domain_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tomoyo_domain_list, ptr @tomoyo_domain_list }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" from \00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@tomoyo_policy_loaded = external dso_local local_unnamed_addr global i8, align 1
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"use_profile %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"use_group %u\0A\00", [18 x i8] zeroinitializer }, align 32
@tomoyo_find_next_domain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"child\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"initialize\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parent\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"<%s>\00", [27 x i8] zeroinitializer }, align 32
@tomoyo_kernel_domain = dso_local global { %struct.tomoyo_domain_info, [32 x i8] } zeroinitializer, align 32
@tomoyo_find_next_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014ERROR: Domain '%s' not ready.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tomoyo_find_next_domain\00", [40 x i8] zeroinitializer }, align 32
@tomoyo_find_next_domain._entry_ptr = internal global ptr @tomoyo_find_next_domain._entry, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@tomoyo_dif = external dso_local local_unnamed_addr constant [2 x ptr], align 4
@tomoyo_find_next_domain._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014ERROR: Domain '%s' not defined.\0A\00", [61 x i8] zeroinitializer }, align 32
@tomoyo_find_next_domain._entry_ptr.18 = internal global ptr @tomoyo_find_next_domain._entry.16, section ".printk_index", align 4
@tomoyo_namespace_list = external dso_local global %struct.list_head, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tomoyo_scan_transition.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tomoyo_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 61, i64 92]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 44, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"tomoyo_domain_list\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 193, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 248, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 258, i32 33 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 594, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 598, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 776, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 778, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 780, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 782, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 784, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 795, i32 47 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 808, i32 46 }
@___asan_gen_.67 = private unnamed_addr constant [21 x i8] c"tomoyo_kernel_domain\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 17, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 851, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 860, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private constant [28 x i8] c"../security/tomoyo/domain.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 862, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 717, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @tomoyo_find_next_domain._entry, ptr @tomoyo_find_next_domain._entry.16, ptr @tomoyo_find_next_domain._entry_ptr, ptr @tomoyo_find_next_domain._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @tomoyo_domain_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @tomoyo_kernel_domain, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_domain_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_kernel_domain to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_find_next_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_find_next_domain._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_update_policy(ptr noundef %new_entry, i32 noundef %size, ptr nocapture noundef readonly %param, ptr nocapture noundef readonly %check_duplicate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_delete = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 3
  %0 = ptrtoint ptr %is_delete to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_delete, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 -12, i32 -2
  %list2 = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %list2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list2, align 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.do.end_crit_edge, label %srcu_read_lock_held.exit

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

srcu_read_lock_held.exit:                         ; preds = %do.body
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end_crit_edge

srcu_read_lock_held.exit.do.end_crit_edge:        ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call6 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b66 = load i1, ptr @tomoyo_update_policy.__warned, align 1
  br i1 %.b66, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tomoyo_update_policy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %srcu_read_lock_held.exit.do.end_crit_edge, %do.body.do.end_crit_edge
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %entry1.072 = load volatile ptr, ptr %3, align 1
  %cmp.not73 = icmp eq ptr %entry1.072, %3
  br i1 %cmp.not73, label %do.end.land.lhs.true41_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.land.lhs.true41_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %entry1.074 = phi ptr [ %entry1.0, %for.inc.for.body_crit_edge ], [ %entry1.072, %do.end.for.body_crit_edge ]
  %is_deleted = getelementptr inbounds %struct.tomoyo_acl_head, ptr %entry1.074, i32 0, i32 1
  %5 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_deleted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp20 = icmp eq i8 %6, -1
  br i1 %cmp20, label %for.body.for.inc_crit_edge, label %if.end23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end23:                                         ; preds = %for.body
  %call24 = tail call zeroext i1 %check_duplicate(ptr noundef %entry1.074, ptr noundef %new_entry) #13
  br i1 %call24, label %for.end.thread, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.end.thread:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %is_deleted.le = getelementptr inbounds %struct.tomoyo_acl_head, ptr %entry1.074, i32 0, i32 1
  %7 = ptrtoint ptr %is_delete to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_delete, align 4, !range !61
  %9 = ptrtoint ptr %is_deleted.le to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %is_deleted.le, align 1
  br label %if.end50

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %entry1.074 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %entry1.0 = load volatile ptr, ptr %entry1.074, align 1
  %cmp.not = icmp eq ptr %entry1.0, %3
  br i1 %cmp.not, label %for.inc.land.lhs.true41_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.land.lhs.true41_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true41

land.lhs.true41:                                  ; preds = %for.inc.land.lhs.true41_crit_edge, %do.end.land.lhs.true41_crit_edge
  %11 = ptrtoint ptr %is_delete to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_delete, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool43.not = icmp eq i8 %12, 0
  br i1 %tobool43.not, label %if.then44, label %land.lhs.true41.if.end50_crit_edge

land.lhs.true41.if.end50_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then44:                                        ; preds = %land.lhs.true41
  %call45 = tail call ptr @tomoyo_commit_ok(ptr noundef %new_entry, i32 noundef %size) #13
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.then44.if.end50_crit_edge, label %if.then47

if.then44.if.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then47:                                        ; preds = %if.then44
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i67 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call45, ptr noundef %14, ptr noundef %3) #13
  br i1 %call.i.i67, label %if.end.i.i, label %if.then47.if.end50_crit_edge

if.then47.if.end50_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.end.i.i:                                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %call45 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %call45, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call45, i32 0, i32 1
  %16 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !62
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call45, ptr %14, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call45, ptr %prev.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end.i.i, %if.then47.if.end50_crit_edge, %if.then44.if.end50_crit_edge, %land.lhs.true41.if.end50_crit_edge, %for.end.thread
  %error.1 = phi i32 [ %cond, %land.lhs.true41.if.end50_crit_edge ], [ %cond, %if.then44.if.end50_crit_edge ], [ 0, %for.end.thread ], [ 0, %if.then47.if.end50_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.1, %if.end50 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_commit_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #13
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !62
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %1, align 4
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_update_domain(ptr noundef %new_entry, i32 noundef %size, ptr noundef %param, ptr nocapture noundef readonly %check_duplicate, ptr noundef readonly %merge_duplicate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_delete1 = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 3
  %0 = ptrtoint ptr %is_delete1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_delete1, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  %cond = select i1 %tobool, i32 -2, i32 -12
  %list4 = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 1
  %2 = ptrtoint ptr %list4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list4, align 4
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then:                                          ; preds = %entry
  %call = tail call ptr @tomoyo_get_condition(ptr noundef %param) #13
  %cond6 = getelementptr inbounds %struct.tomoyo_acl_info, ptr %new_entry, i32 0, i32 1
  %8 = ptrtoint ptr %cond6 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store ptr %call, ptr %cond6, align 1
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %transit = getelementptr inbounds %struct.tomoyo_condition, ptr %call, i32 0, i32 8
  %9 = ptrtoint ptr %transit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transit, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.tomoyo_acl_info, ptr %new_entry, i32 0, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp = icmp eq i8 %12, 0
  br i1 %cmp, label %land.lhs.true13, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true13:                                  ; preds = %land.lhs.true
  %perm = getelementptr inbounds %struct.tomoyo_path_acl, ptr %new_entry, i32 0, i32 1
  %13 = ptrtoint ptr %perm to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %perm, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %14)
  %cmp15 = icmp eq i16 %14, 1
  br i1 %cmp15, label %land.lhs.true13.if.end19_crit_edge, label %land.lhs.true13.out_crit_edge

land.lhs.true13.out_crit_edge:                    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

land.lhs.true13.if.end19_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true13.if.end19_crit_edge, %if.end.if.end19_crit_edge, %entry.if.end19_crit_edge
  %call20 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.body, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body:                                          ; preds = %if.end19
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.do.end_crit_edge, label %srcu_read_lock_held.exit

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

srcu_read_lock_held.exit:                         ; preds = %do.body
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool25.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %srcu_read_lock_held.exit.do.end_crit_edge

srcu_read_lock_held.exit.do.end_crit_edge:        ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true26:                                  ; preds = %srcu_read_lock_held.exit
  %call27 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %land.lhs.true26.do.end_crit_edge

land.lhs.true26.do.end_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end_crit_edge:                 ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b116 = load i1, ptr @tomoyo_update_domain.__warned, align 1
  br i1 %.b116, label %land.lhs.true32.do.end_crit_edge, label %if.then34

land.lhs.true32.do.end_crit_edge:                 ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tomoyo_update_domain.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 124, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then34, %land.lhs.true32.do.end_crit_edge, %land.lhs.true29.do.end_crit_edge, %land.lhs.true26.do.end_crit_edge, %srcu_read_lock_held.exit.do.end_crit_edge, %do.body.do.end_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %entry3.0126 = load volatile ptr, ptr %3, align 1
  %cmp44.not127 = icmp eq ptr %entry3.0126, %3
  br i1 %cmp44.not127, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %type1.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %new_entry, i32 0, i32 3
  %cond4.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %new_entry, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %entry3.0128 = phi ptr [ %entry3.0126, %for.body.lr.ph ], [ %entry3.0, %for.inc.for.body_crit_edge ]
  %is_deleted = getelementptr inbounds %struct.tomoyo_acl_info, ptr %entry3.0128, i32 0, i32 2
  %16 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_deleted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp47 = icmp eq i8 %17, -1
  br i1 %cmp47, label %for.body.for.inc_crit_edge, label %if.end50

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end50:                                         ; preds = %for.body
  %type.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %entry3.0128, i32 0, i32 3
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type.i, align 1
  %20 = ptrtoint ptr %type1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp.i = icmp eq i8 %19, %21
  br i1 %cmp.i, label %tomoyo_same_acl_head.exit, label %if.end50.for.inc_crit_edge

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

tomoyo_same_acl_head.exit:                        ; preds = %if.end50
  %cond.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %entry3.0128, i32 0, i32 1
  %22 = ptrtoint ptr %cond.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load ptr, ptr %cond.i, align 1
  %24 = ptrtoint ptr %cond4.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load ptr, ptr %cond4.i, align 1
  %cmp5.i = icmp eq ptr %23, %25
  br i1 %cmp5.i, label %lor.lhs.false, label %tomoyo_same_acl_head.exit.for.inc_crit_edge

tomoyo_same_acl_head.exit.for.inc_crit_edge:      ; preds = %tomoyo_same_acl_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false:                                    ; preds = %tomoyo_same_acl_head.exit
  %call52 = tail call zeroext i1 %check_duplicate(ptr noundef %entry3.0128, ptr noundef %new_entry) #13
  br i1 %call52, label %if.end54, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end54:                                         ; preds = %lor.lhs.false
  %is_deleted.le = getelementptr inbounds %struct.tomoyo_acl_info, ptr %entry3.0128, i32 0, i32 2
  %tobool55.not = icmp eq ptr %merge_duplicate, null
  br i1 %tobool55.not, label %if.end54.for.end.thread_crit_edge, label %if.then56

if.end54.for.end.thread_crit_edge:                ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.thread

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %call58 = tail call zeroext i1 %merge_duplicate(ptr noundef %entry3.0128, ptr noundef %new_entry, i1 noundef zeroext %tobool) #13
  %conv59 = zext i1 %call58 to i8
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.then56, %if.end54.for.end.thread_crit_edge
  %storemerge = phi i8 [ %conv59, %if.then56 ], [ %1, %if.end54.for.end.thread_crit_edge ]
  %26 = ptrtoint ptr %is_deleted.le to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %storemerge, ptr %is_deleted.le, align 1
  br label %if.end83

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %tomoyo_same_acl_head.exit.for.inc_crit_edge, %if.end50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %entry3.0128 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %entry3.0 = load volatile ptr, ptr %entry3.0128, align 1
  %cmp44.not = icmp eq ptr %entry3.0, %3
  br i1 %cmp44.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  br i1 %tobool, label %for.end.if.end83_crit_edge, label %if.then77

for.end.if.end83_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then77:                                        ; preds = %for.end
  %call78 = tail call ptr @tomoyo_commit_ok(ptr noundef %new_entry, i32 noundef %size) #13
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.then77.if.end83_crit_edge, label %if.then80

if.then77.if.end83_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.then80:                                        ; preds = %if.then77
  %prev.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i117 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call78, ptr noundef %29, ptr noundef %3) #13
  br i1 %call.i.i117, label %if.end.i.i, label %if.then80.if.end83_crit_edge

if.then80.if.end83_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end83

if.end.i.i:                                       ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #15
  %30 = ptrtoint ptr %call78 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %3, ptr %call78, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call78, i32 0, i32 1
  %31 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !62
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call78, ptr %29, align 4
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call78, ptr %prev.i, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.end.i.i, %if.then80.if.end83_crit_edge, %if.then77.if.end83_crit_edge, %for.end.if.end83_crit_edge, %for.end.thread
  %error.1 = phi i32 [ -12, %if.then77.if.end83_crit_edge ], [ -2, %for.end.if.end83_crit_edge ], [ 0, %for.end.thread ], [ 0, %if.then80.if.end83_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #13
  br label %out

out:                                              ; preds = %if.end83, %if.end19.out_crit_edge, %land.lhs.true13.out_crit_edge, %land.lhs.true.out_crit_edge
  %error.2 = phi i32 [ %cond, %if.end19.out_crit_edge ], [ %error.1, %if.end83 ], [ %cond, %land.lhs.true13.out_crit_edge ], [ %cond, %land.lhs.true.out_crit_edge ]
  %cond84 = getelementptr inbounds %struct.tomoyo_acl_info, ptr %new_entry, i32 0, i32 1
  %34 = ptrtoint ptr %cond84 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load ptr, ptr %cond84, align 1
  %tobool.not.i118 = icmp eq ptr %35, null
  br i1 %tobool.not.i118, label %out.cleanup_crit_edge, label %if.then.i

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %users.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %35, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %out.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ %error.2, %out.cleanup_crit_edge ], [ %error.2, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_condition(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_check_acl(ptr noundef %r, ptr nocapture noundef readonly %check_entry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 2
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %acl_info_list = getelementptr inbounds %struct.tomoyo_domain_info, ptr %1, i32 0, i32 1
  %param_type = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 5
  %group = getelementptr inbounds %struct.tomoyo_domain_info, ptr %1, i32 0, i32 4
  %ns = getelementptr inbounds %struct.tomoyo_domain_info, ptr %1, i32 0, i32 3
  br label %retry

retry:                                            ; preds = %if.end45, %entry
  %i.0 = phi i16 [ 0, %entry ], [ %inc, %if.end45 ]
  %list.0 = phi ptr [ %acl_info_list, %entry ], [ %arrayidx, %if.end45 ]
  %call.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %retry.do.end_crit_edge, label %srcu_read_lock_held.exit

retry.do.end_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

srcu_read_lock_held.exit:                         ; preds = %retry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end_crit_edge

srcu_read_lock_held.exit.do.end_crit_edge:        ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call2 = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b71 = load i1, ptr @tomoyo_check_acl.__warned, align 1
  br i1 %.b71, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tomoyo_check_acl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %srcu_read_lock_held.exit.do.end_crit_edge, %retry.do.end_crit_edge
  %2 = ptrtoint ptr %list.0 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %ptr.077 = load volatile ptr, ptr %list.0, align 1
  %cmp.not78 = icmp eq ptr %ptr.077, %list.0
  br i1 %cmp.not78, label %do.end.for.cond36.preheader_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.cond36.preheader_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.inc.for.cond36.preheader_crit_edge, %do.end.for.cond36.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %i.0)
  %cmp3881 = icmp ult i16 %i.0, 256
  br i1 %cmp3881, label %for.body40.preheader, label %for.cond36.preheader.cleanup_crit_edge

for.cond36.preheader.cleanup_crit_edge:           ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body40.preheader:                             ; preds = %for.cond36.preheader
  %3 = zext i16 %i.0 to i32
  br label %for.body40

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %ptr.079 = phi ptr [ %ptr.0, %for.inc.for.body_crit_edge ], [ %ptr.077, %do.end.for.body_crit_edge ]
  %is_deleted = getelementptr inbounds %struct.tomoyo_acl_info, ptr %ptr.079, i32 0, i32 2
  %4 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_deleted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool14.not = icmp eq i8 %5, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %type = getelementptr inbounds %struct.tomoyo_acl_info, ptr %ptr.079, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 1
  %8 = ptrtoint ptr %param_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %param_type, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp17.not = icmp eq i8 %7, %9
  br i1 %cmp17.not, label %if.end20, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end20:                                         ; preds = %lor.lhs.false
  %call21 = tail call zeroext i1 %check_entry(ptr noundef %r, ptr noundef %ptr.079) #13
  br i1 %call21, label %if.end23, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end23:                                         ; preds = %if.end20
  %cond = getelementptr inbounds %struct.tomoyo_acl_info, ptr %ptr.079, i32 0, i32 1
  %10 = ptrtoint ptr %cond to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load ptr, ptr %cond, align 1
  %call24 = tail call zeroext i1 @tomoyo_condition(ptr noundef %r, ptr noundef %11) #13
  br i1 %call24, label %if.end26, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %matched_acl = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 4
  %12 = ptrtoint ptr %matched_acl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ptr.079, ptr %matched_acl, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %if.end20.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %ptr.079 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %ptr.0 = load volatile ptr, ptr %ptr.079, align 1
  %cmp.not = icmp eq ptr %ptr.0, %list.0
  br i1 %cmp.not, label %for.inc.for.cond36.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.cond36.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond36.preheader

for.body40:                                       ; preds = %for.inc46.for.body40_crit_edge, %for.body40.preheader
  %indvars.iv = phi i32 [ %3, %for.body40.preheader ], [ %indvars.iv.next, %for.inc46.for.body40_crit_edge ]
  %div3.i = lshr i32 %indvars.iv, 5
  %arrayidx.i = getelementptr i32, ptr %group, i32 %div3.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %indvars.iv, 31
  %16 = shl nuw i32 1, %and.i
  %17 = and i32 %15, %16
  %tobool43.not = icmp eq i32 %17, 0
  br i1 %tobool43.not, label %for.inc46, label %if.end45

if.end45:                                         ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #15
  %18 = trunc i32 %indvars.iv to i16
  %19 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ns, align 4
  %inc = add nuw nsw i16 %18, 1
  %arrayidx = getelementptr %struct.tomoyo_policy_namespace, ptr %20, i32 0, i32 3, i32 %indvars.iv
  br label %retry

for.inc46:                                        ; preds = %for.body40
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.inc46.cleanup_crit_edge, label %for.inc46.for.body40_crit_edge

for.inc46.for.body40_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body40

for.inc46.cleanup_crit_edge:                      ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc46.cleanup_crit_edge, %if.end26, %for.cond36.preheader.cleanup_crit_edge
  %.sink = phi i8 [ 1, %if.end26 ], [ 0, %for.inc46.cleanup_crit_edge ], [ 0, %for.cond36.preheader.cleanup_crit_edge ]
  %granted49 = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 6
  %21 = ptrtoint ptr %granted49 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %.sink, ptr %granted49, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_condition(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_write_transition_control(ptr nocapture noundef %param, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca %struct.tomoyo_transition_control, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %e) #13
  %0 = call ptr @memset(ptr %e, i32 0, i32 20)
  %type1 = getelementptr inbounds %struct.tomoyo_transition_control, ptr %e, i32 0, i32 1
  %1 = ptrtoint ptr %type1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %type, ptr %type1, align 1
  %is_delete = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 3
  %2 = ptrtoint ptr %is_delete to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_delete, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 -12, i32 -2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  %call = tail call ptr @strstr(ptr noundef %5, ptr noundef nonnull @.str.2)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %call, align 1
  %add.ptr = getelementptr i8, ptr %call, i32 6
  br label %if.end8

if.else:                                          ; preds = %entry
  %7 = and i8 %type, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %switch = icmp eq i8 %7, 4
  br i1 %switch, label %if.else.if.end22_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %if.then
  %domainname.0 = phi ptr [ %add.ptr, %if.then ], [ null, %if.else.if.end8_crit_edge ]
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end8.if.end22_crit_edge, label %land.lhs.true

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end8
  %call10 = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef nonnull dereferenceable(4) @.str.3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end22_crit_edge, label %if.then12

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then12:                                        ; preds = %land.lhs.true
  %call13 = tail call zeroext i1 @tomoyo_correct_path(ptr noundef nonnull %5) #13
  br i1 %call13, label %if.end15, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.then12
  %call16 = tail call ptr @tomoyo_get_name(ptr noundef nonnull %5) #13
  %program17 = getelementptr inbounds %struct.tomoyo_transition_control, ptr %e, i32 0, i32 4
  %8 = ptrtoint ptr %program17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %program17, align 4
  %tobool19.not = icmp eq ptr %call16, null
  br i1 %tobool19.not, label %if.end15.out_crit_edge, label %if.end15.if.end22_crit_edge

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end22:                                         ; preds = %if.end15.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end8.if.end22_crit_edge, %if.else.if.end22_crit_edge
  %domainname.074 = phi ptr [ %domainname.0, %if.end15.if.end22_crit_edge ], [ %domainname.0, %land.lhs.true.if.end22_crit_edge ], [ %domainname.0, %if.end8.if.end22_crit_edge ], [ %5, %if.else.if.end22_crit_edge ]
  %tobool23.not = icmp eq ptr %domainname.074, null
  br i1 %tobool23.not, label %if.end22.if.end40_crit_edge, label %land.lhs.true24

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

land.lhs.true24:                                  ; preds = %if.end22
  %call25 = tail call i32 @strcmp(ptr noundef nonnull %domainname.074, ptr noundef nonnull dereferenceable(4) @.str.3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end40_crit_edge, label %if.then27

land.lhs.true24.if.end40_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then27:                                        ; preds = %land.lhs.true24
  %call28 = tail call zeroext i1 @tomoyo_correct_domain(ptr noundef nonnull %domainname.074) #13
  br i1 %call28, label %if.then27.if.end33_crit_edge, label %if.then29

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then29:                                        ; preds = %if.then27
  %call30 = tail call zeroext i1 @tomoyo_correct_path(ptr noundef nonnull %domainname.074) #13
  br i1 %call30, label %if.end32, label %if.then29.out_crit_edge

if.then29.out_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end32:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  %is_last_name = getelementptr inbounds %struct.tomoyo_transition_control, ptr %e, i32 0, i32 2
  %9 = ptrtoint ptr %is_last_name to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %is_last_name, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then27.if.end33_crit_edge
  %call34 = tail call ptr @tomoyo_get_name(ptr noundef nonnull %domainname.074) #13
  %domainname35 = getelementptr inbounds %struct.tomoyo_transition_control, ptr %e, i32 0, i32 3
  %10 = ptrtoint ptr %domainname35 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call34, ptr %domainname35, align 4
  %tobool37.not = icmp eq ptr %call34, null
  br i1 %tobool37.not, label %if.end33.out_crit_edge, label %if.end33.if.end40_crit_edge

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end40:                                         ; preds = %if.end33.if.end40_crit_edge, %land.lhs.true24.if.end40_crit_edge, %if.end22.if.end40_crit_edge
  %ns = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 2
  %11 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns, align 4
  %arrayidx = getelementptr %struct.tomoyo_policy_namespace, ptr %12, i32 0, i32 2, i32 4
  %list = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 1
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %list, align 4
  %call41 = call i32 @tomoyo_update_policy(ptr noundef nonnull %e, i32 noundef 20, ptr noundef %param, ptr noundef nonnull @tomoyo_same_transition_control)
  br label %out

out:                                              ; preds = %if.end40, %if.end33.out_crit_edge, %if.then29.out_crit_edge, %if.end15.out_crit_edge
  %error.0 = phi i32 [ %call41, %if.end40 ], [ %cond, %if.end33.out_crit_edge ], [ %cond, %if.then29.out_crit_edge ], [ %cond, %if.end15.out_crit_edge ]
  %domainname42 = getelementptr inbounds %struct.tomoyo_transition_control, ptr %e, i32 0, i32 3
  %14 = ptrtoint ptr %domainname42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domainname42, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %out.tomoyo_put_name.exit_crit_edge, label %if.then.i

out.tomoyo_put_name.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_put_name.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %users.i = getelementptr i8, ptr %15, i32 -4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %16 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !63
  br label %tomoyo_put_name.exit

tomoyo_put_name.exit:                             ; preds = %if.then.i, %out.tomoyo_put_name.exit_crit_edge
  %program43 = getelementptr inbounds %struct.tomoyo_transition_control, ptr %e, i32 0, i32 4
  %17 = ptrtoint ptr %program43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %program43, align 4
  %tobool.not.i66 = icmp eq ptr %18, null
  br i1 %tobool.not.i66, label %tomoyo_put_name.exit.cleanup_crit_edge, label %if.then.i69

tomoyo_put_name.exit.cleanup_crit_edge:           ; preds = %tomoyo_put_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i69:                                      ; preds = %tomoyo_put_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %users.i67 = getelementptr i8, ptr %18, i32 -4
  %call.i.i.i68 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i67, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %users.i67, i32 1, i32 3, i32 1) #13
  %19 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i67, ptr %users.i67, i32 1, ptr elementtype(i32) %users.i67) #13, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %if.then.i69, %tomoyo_put_name.exit.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then12.cleanup_crit_edge ], [ %error.0, %tomoyo_put_name.exit.cleanup_crit_edge ], [ %error.0, %if.then.i69 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %e) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_correct_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_correct_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_transition_control(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.tomoyo_transition_control, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %type4 = getelementptr inbounds %struct.tomoyo_transition_control, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %type4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp = icmp eq i8 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %is_last_name = getelementptr inbounds %struct.tomoyo_transition_control, ptr %a, i32 0, i32 2
  %4 = ptrtoint ptr %is_last_name to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_last_name, align 2, !range !61
  %is_last_name8 = getelementptr inbounds %struct.tomoyo_transition_control, ptr %b, i32 0, i32 2
  %6 = ptrtoint ptr %is_last_name8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_last_name8, align 2, !range !61
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp11 = icmp eq i8 %5, %7
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %domainname = getelementptr inbounds %struct.tomoyo_transition_control, ptr %a, i32 0, i32 3
  %8 = ptrtoint ptr %domainname to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domainname, align 4
  %domainname14 = getelementptr inbounds %struct.tomoyo_transition_control, ptr %b, i32 0, i32 3
  %10 = ptrtoint ptr %domainname14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domainname14, align 4
  %cmp15 = icmp eq ptr %9, %11
  br i1 %cmp15, label %land.rhs, label %land.lhs.true13.land.end_crit_edge

land.lhs.true13.land.end_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  %program = getelementptr inbounds %struct.tomoyo_transition_control, ptr %a, i32 0, i32 4
  %12 = ptrtoint ptr %program to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %program, align 4
  %program17 = getelementptr inbounds %struct.tomoyo_transition_control, ptr %b, i32 0, i32 4
  %14 = ptrtoint ptr %program17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %program17, align 4
  %cmp18 = icmp eq ptr %13, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true13.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %16 = phi i1 [ false, %land.lhs.true13.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp18, %land.rhs ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_write_aggregator(ptr noundef %param) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca %struct.tomoyo_aggregator, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %e) #13
  %0 = call ptr @memset(ptr %e, i32 0, i32 12)
  %is_delete = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 3
  %1 = ptrtoint ptr %is_delete to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_delete, align 4, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond = select i1 %tobool.not, i32 -12, i32 -2
  %call = tail call ptr @tomoyo_read_token(ptr noundef %param) #13
  %call1 = tail call ptr @tomoyo_read_token(ptr noundef %param) #13
  %call2 = tail call zeroext i1 @tomoyo_correct_word(ptr noundef %call) #13
  br i1 %call2, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call zeroext i1 @tomoyo_correct_path(ptr noundef %call1) #13
  br i1 %call3, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call4 = tail call ptr @tomoyo_get_name(ptr noundef %call) #13
  %original_name5 = getelementptr inbounds %struct.tomoyo_aggregator, ptr %e, i32 0, i32 1
  %3 = ptrtoint ptr %original_name5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %original_name5, align 4
  %call6 = tail call ptr @tomoyo_get_name(ptr noundef %call1) #13
  %aggregated_name7 = getelementptr inbounds %struct.tomoyo_aggregator, ptr %e, i32 0, i32 2
  %4 = ptrtoint ptr %aggregated_name7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %aggregated_name7, align 4
  %tobool9.not = icmp eq ptr %call4, null
  %tobool12.not = icmp eq ptr %call6, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %lor.lhs.false13

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

lor.lhs.false13:                                  ; preds = %if.end
  %is_patterned = getelementptr inbounds %struct.tomoyo_path_info, ptr %call6, i32 0, i32 4
  %5 = ptrtoint ptr %is_patterned to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_patterned, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool15.not = icmp eq i8 %6, 0
  br i1 %tobool15.not, label %if.end17, label %lor.lhs.false13.outthread-pre-split_crit_edge

lor.lhs.false13.outthread-pre-split_crit_edge:    ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #15
  br label %outthread-pre-split

if.end17:                                         ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #15
  %ns = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 2
  %7 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns, align 4
  %arrayidx = getelementptr %struct.tomoyo_policy_namespace, ptr %8, i32 0, i32 2, i32 5
  %list = getelementptr inbounds %struct.tomoyo_acl_param, ptr %param, i32 0, i32 1
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx, ptr %list, align 4
  %call18 = call i32 @tomoyo_update_policy(ptr noundef nonnull %e, i32 noundef 20, ptr noundef %param, ptr noundef nonnull @tomoyo_same_aggregator)
  br label %outthread-pre-split

outthread-pre-split:                              ; preds = %if.end17, %lor.lhs.false13.outthread-pre-split_crit_edge
  %error.0.ph = phi i32 [ %call18, %if.end17 ], [ %cond, %lor.lhs.false13.outthread-pre-split_crit_edge ]
  %10 = ptrtoint ptr %original_name5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %original_name5, align 4
  br label %out

out:                                              ; preds = %outthread-pre-split, %if.end.out_crit_edge
  %11 = phi ptr [ %.pr, %outthread-pre-split ], [ %call4, %if.end.out_crit_edge ]
  %error.0 = phi i32 [ %error.0.ph, %outthread-pre-split ], [ %cond, %if.end.out_crit_edge ]
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %out.tomoyo_put_name.exit_crit_edge, label %if.then.i

out.tomoyo_put_name.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_put_name.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %users.i = getelementptr i8, ptr %11, i32 -4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %12 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !63
  br label %tomoyo_put_name.exit

tomoyo_put_name.exit:                             ; preds = %if.then.i, %out.tomoyo_put_name.exit_crit_edge
  %13 = ptrtoint ptr %aggregated_name7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aggregated_name7, align 4
  %tobool.not.i31 = icmp eq ptr %14, null
  br i1 %tobool.not.i31, label %tomoyo_put_name.exit.cleanup_crit_edge, label %if.then.i34

tomoyo_put_name.exit.cleanup_crit_edge:           ; preds = %tomoyo_put_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i34:                                      ; preds = %tomoyo_put_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %users.i32 = getelementptr i8, ptr %14, i32 -4
  %call.i.i.i33 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i32, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %users.i32, i32 1, i32 3, i32 1) #13
  %15 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i32, ptr %users.i32, i32 1, ptr elementtype(i32) %users.i32) #13, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %if.then.i34, %tomoyo_put_name.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %error.0, %tomoyo_put_name.exit.cleanup_crit_edge ], [ %error.0, %if.then.i34 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %e) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_read_token(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_correct_word(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tomoyo_same_aggregator(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %original_name = getelementptr inbounds %struct.tomoyo_aggregator, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %original_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %original_name, align 4
  %original_name4 = getelementptr inbounds %struct.tomoyo_aggregator, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %original_name4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %original_name4, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %aggregated_name = getelementptr inbounds %struct.tomoyo_aggregator, ptr %a, i32 0, i32 2
  %4 = ptrtoint ptr %aggregated_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aggregated_name, align 4
  %aggregated_name5 = getelementptr inbounds %struct.tomoyo_aggregator, ptr %b, i32 0, i32 2
  %6 = ptrtoint ptr %aggregated_name5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aggregated_name5, align 4
  %cmp6 = icmp eq ptr %5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp6, %land.rhs ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_assign_namespace(ptr noundef %domainname) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %cp.0 = phi ptr [ %domainname, %entry ], [ %incdec.ptr, %while.body ]
  %len.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %0 = ptrtoint ptr %cp.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cp.0, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %while.body [
    i8 0, label %while.cond.while.end_crit_edge
    i8 32, label %while.cond.while.end_crit_edge80
  ]

while.cond.while.end_crit_edge80:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  %incdec.ptr = getelementptr i8, ptr %cp.0, i32 1
  %inc = add i32 %len.0, 1
  br label %while.cond

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %while.cond.while.end_crit_edge80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_namespace_list to i32))
  %.pn20.i = load ptr, ptr @tomoyo_namespace_list, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, @tomoyo_namespace_list
  br i1 %cmp.not21.i, label %while.end.if.end_crit_edge, label %for.body.lr.ph.i

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %while.end
  %arrayidx.i = getelementptr i8, ptr %domainname, i32 %len.0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn22.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %name1.i = getelementptr i8, ptr %.pn22.i, i32 12
  %3 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1.i, align 4
  %call.i = tail call i32 @strncmp(ptr noundef %domainname, ptr noundef %4, i32 noundef %len.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %6, label %lor.lhs.false.i.for.inc.i_crit_edge [
    i8 0, label %lor.lhs.false.i.tomoyo_find_namespace.exit_crit_edge
    i8 32, label %lor.lhs.false.i.tomoyo_find_namespace.exit_crit_edge81
  ]

lor.lhs.false.i.tomoyo_find_namespace.exit_crit_edge81: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_find_namespace.exit

lor.lhs.false.i.tomoyo_find_namespace.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_find_namespace.exit

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @tomoyo_namespace_list
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

tomoyo_find_namespace.exit:                       ; preds = %lor.lhs.false.i.tomoyo_find_namespace.exit_crit_edge, %lor.lhs.false.i.tomoyo_find_namespace.exit_crit_edge81
  %ns.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -3184
  %tobool4.not = icmp eq ptr %ns.0.le.i, null
  br i1 %tobool4.not, label %tomoyo_find_namespace.exit.if.end_crit_edge, label %tomoyo_find_namespace.exit.cleanup_crit_edge

tomoyo_find_namespace.exit.cleanup_crit_edge:     ; preds = %tomoyo_find_namespace.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

tomoyo_find_namespace.exit.if.end_crit_edge:      ; preds = %tomoyo_find_namespace.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %tomoyo_find_namespace.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %while.end.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4085, i32 %len.0)
  %cmp5 = icmp ugt i32 %len.0, 4085
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call7 = tail call zeroext i1 @tomoyo_domain_def(ptr noundef %domainname) #13
  br i1 %call7, label %if.end8.i.i, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %lor.lhs.false
  %add10 = add nuw nsw i32 %len.0, 3201
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 11584) #17
  %call12 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end8.i.i.out_crit_edge

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end15:                                         ; preds = %if.end8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_namespace_list to i32))
  %.pn20.i47 = load ptr, ptr @tomoyo_namespace_list, align 4
  %cmp.not21.i48 = icmp eq ptr %.pn20.i47, @tomoyo_namespace_list
  br i1 %cmp.not21.i48, label %if.end15.land.lhs.true_crit_edge, label %for.body.lr.ph.i50

if.end15.land.lhs.true_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

for.body.lr.ph.i50:                               ; preds = %if.end15
  %arrayidx.i49 = getelementptr i8, ptr %domainname, i32 %len.0
  br label %for.body.i55

for.body.i55:                                     ; preds = %for.inc.i59.for.body.i55_crit_edge, %for.body.lr.ph.i50
  %.pn22.i51 = phi ptr [ %.pn20.i47, %for.body.lr.ph.i50 ], [ %.pn.i57, %for.inc.i59.for.body.i55_crit_edge ]
  %name1.i52 = getelementptr i8, ptr %.pn22.i51, i32 12
  %9 = ptrtoint ptr %name1.i52 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name1.i52, align 4
  %call.i53 = tail call i32 @strncmp(ptr noundef %domainname, ptr noundef %10, i32 noundef %len.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %lor.lhs.false.i56, label %for.body.i55.for.inc.i59_crit_edge

for.body.i55.for.inc.i59_crit_edge:               ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i59

lor.lhs.false.i56:                                ; preds = %for.body.i55
  %11 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i49, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %12, label %lor.lhs.false.i56.for.inc.i59_crit_edge [
    i8 0, label %lor.lhs.false.i56.tomoyo_find_namespace.exit63_crit_edge
    i8 32, label %lor.lhs.false.i56.tomoyo_find_namespace.exit63_crit_edge82
  ]

lor.lhs.false.i56.tomoyo_find_namespace.exit63_crit_edge82: ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_find_namespace.exit63

lor.lhs.false.i56.tomoyo_find_namespace.exit63_crit_edge: ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_find_namespace.exit63

lor.lhs.false.i56.for.inc.i59_crit_edge:          ; preds = %lor.lhs.false.i56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i59

for.inc.i59:                                      ; preds = %lor.lhs.false.i56.for.inc.i59_crit_edge, %for.body.i55.for.inc.i59_crit_edge
  %14 = ptrtoint ptr %.pn22.i51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i57 = load ptr, ptr %.pn22.i51, align 4
  %cmp.not.i58 = icmp eq ptr %.pn.i57, @tomoyo_namespace_list
  br i1 %cmp.not.i58, label %for.inc.i59.land.lhs.true_crit_edge, label %for.inc.i59.for.body.i55_crit_edge

for.inc.i59.for.body.i55_crit_edge:               ; preds = %for.inc.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i55

for.inc.i59.land.lhs.true_crit_edge:              ; preds = %for.inc.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

tomoyo_find_namespace.exit63:                     ; preds = %lor.lhs.false.i56.tomoyo_find_namespace.exit63_crit_edge, %lor.lhs.false.i56.tomoyo_find_namespace.exit63_crit_edge82
  %ns.0.le.i60 = getelementptr i8, ptr %.pn22.i51, i32 -3184
  %tobool17.not = icmp eq ptr %ns.0.le.i60, null
  br i1 %tobool17.not, label %tomoyo_find_namespace.exit63.land.lhs.true_crit_edge, label %tomoyo_find_namespace.exit63.if.end22_crit_edge

tomoyo_find_namespace.exit63.if.end22_crit_edge:  ; preds = %tomoyo_find_namespace.exit63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

tomoyo_find_namespace.exit63.land.lhs.true_crit_edge: ; preds = %tomoyo_find_namespace.exit63
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %tomoyo_find_namespace.exit63.land.lhs.true_crit_edge, %for.inc.i59.land.lhs.true_crit_edge, %if.end15.land.lhs.true_crit_edge
  %call18 = tail call zeroext i1 @tomoyo_memory_ok(ptr noundef %call9.i.i) #13
  br i1 %call18, label %if.then20, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr = getelementptr %struct.tomoyo_policy_namespace, ptr %call9.i.i, i32 1
  %15 = call ptr @memmove(ptr %add.ptr, ptr %domainname, i32 %len.0)
  %arrayidx = getelementptr i8, ptr %add.ptr, i32 %len.0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx, align 1
  %name21 = getelementptr inbounds %struct.tomoyo_policy_namespace, ptr %call9.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %name21, align 4
  tail call void @tomoyo_init_policy_namespace(ptr noundef %call9.i.i) #13
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %land.lhs.true.if.end22_crit_edge, %tomoyo_find_namespace.exit63.if.end22_crit_edge
  %ptr.0 = phi ptr [ %ns.0.le.i60, %tomoyo_find_namespace.exit63.if.end22_crit_edge ], [ %call9.i.i, %if.then20 ], [ null, %land.lhs.true.if.end22_crit_edge ]
  %entry1.0 = phi ptr [ %call9.i.i, %tomoyo_find_namespace.exit63.if.end22_crit_edge ], [ null, %if.then20 ], [ %call9.i.i, %land.lhs.true.if.end22_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #13
  br label %out

out:                                              ; preds = %if.end22, %if.end8.i.i.out_crit_edge
  %ptr.1 = phi ptr [ null, %if.end8.i.i.out_crit_edge ], [ %ptr.0, %if.end22 ]
  %entry1.1 = phi ptr [ %call9.i.i, %if.end8.i.i.out_crit_edge ], [ %entry1.0, %if.end22 ]
  tail call void @kfree(ptr noundef %entry1.1) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tomoyo_find_namespace.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %ptr.1, %out ], [ %ns.0.le.i, %tomoyo_find_namespace.exit.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_domain_def(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_memory_ok(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_init_policy_namespace(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tomoyo_assign_domain(ptr noundef %domainname, i1 noundef zeroext %transit) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca %struct.tomoyo_domain_info, align 4
  %r = alloca %struct.tomoyo_request_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %e) #13
  %0 = call ptr @memset(ptr %e, i32 0, i32 64)
  %call = tail call ptr @tomoyo_find_domain(ptr noundef %domainname) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  br i1 %transit, label %if.then3, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.then3:                                         ; preds = %if.then
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_policy_loaded to i32))
  %1 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool4.not = icmp eq i8 %1, 0
  br i1 %tobool4.not, label %if.then3.if.end7_crit_edge, label %land.lhs.true

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then3
  %ns = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ns, align 4
  %profile = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %profile, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [256 x ptr], ptr %3, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.then3.if.end7_crit_edge, %if.then.if.end7_crit_edge
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = tail call i32 @strlen(ptr noundef %domainname) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4085, i32 %call9)
  %cmp = icmp ugt i32 %call9, 4085
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %call10 = tail call zeroext i1 @tomoyo_correct_domain(ptr noundef %domainname) #13
  br i1 %call10, label %if.end12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  br i1 %transit, label %land.lhs.true14, label %if.end17.thread

land.lhs.true14:                                  ; preds = %if.end12
  %call.i.i = tail call ptr @tomoyo_domain() #13
  %ns.i.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %ns.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ns.i.i, align 4
  %name.i = getelementptr inbounds %struct.tomoyo_policy_namespace, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  %call1.i = tail call i32 @strlen(ptr noundef %11) #18
  %call2.i = tail call i32 @strncmp(ptr noundef %domainname, ptr noundef %11, i32 noundef %call1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %tomoyo_namespace_jump.exit, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

tomoyo_namespace_jump.exit:                       ; preds = %land.lhs.true14
  %arrayidx.i97 = getelementptr i8, ptr %domainname, i32 %call1.i
  %12 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i97, align 1
  %14 = and i8 %13, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %.not = icmp eq i8 %14, 0
  br i1 %.not, label %if.end17, label %tomoyo_namespace_jump.exit.cleanup_crit_edge

tomoyo_namespace_jump.exit.cleanup_crit_edge:     ; preds = %tomoyo_namespace_jump.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %tomoyo_namespace_jump.exit
  %call18 = tail call ptr @tomoyo_assign_namespace(ptr noundef %domainname)
  %ns19 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %e, i32 0, i32 3
  %15 = ptrtoint ptr %ns19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call18, ptr %ns19, align 4
  %tobool21.not = icmp eq ptr %call18, null
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %if.then25.critedge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17.thread:                                  ; preds = %if.end12
  %call1899 = tail call ptr @tomoyo_assign_namespace(ptr noundef %domainname)
  %ns19100 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %e, i32 0, i32 3
  %16 = ptrtoint ptr %ns19100 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1899, ptr %ns19100, align 4
  %tobool21.not101 = icmp eq ptr %call1899, null
  br i1 %tobool21.not101, label %if.end17.thread.cleanup_crit_edge, label %if.end17.thread.if.end31_crit_edge

if.end17.thread.if.end31_crit_edge:               ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.end17.thread.cleanup_crit_edge:                ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25.critedge:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %call26 = tail call ptr @tomoyo_domain() #13
  %profile27 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call26, i32 0, i32 5
  %17 = ptrtoint ptr %profile27 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %profile27, align 4
  %profile28 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %e, i32 0, i32 5
  %19 = ptrtoint ptr %profile28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %profile28, align 4
  %group = getelementptr inbounds %struct.tomoyo_domain_info, ptr %e, i32 0, i32 4
  %group29 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call26, i32 0, i32 4
  %20 = call ptr @memcpy(ptr %group, ptr %group29, i32 32)
  br label %if.end31

if.end31:                                         ; preds = %if.then25.critedge, %if.end17.thread.if.end31_crit_edge
  %call32 = tail call ptr @tomoyo_get_name(ptr noundef %domainname) #13
  %domainname33 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %e, i32 0, i32 2
  %21 = ptrtoint ptr %domainname33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call32, ptr %domainname33, align 4
  %tobool35.not = icmp eq ptr %call32, null
  br i1 %tobool35.not, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %call38 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.if.then.i_crit_edge

if.end37.if.then.i_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

if.end41:                                         ; preds = %if.end37
  %call42 = tail call ptr @tomoyo_find_domain(ptr noundef %domainname) #13
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.then44, label %if.end41.out_crit_edge

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then44:                                        ; preds = %if.end41
  %call45 = call ptr @tomoyo_commit_ok(ptr noundef nonnull %e, i32 noundef 64) #13
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.then44.out_crit_edge, label %if.then47

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  %acl_info_list = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call45, i32 0, i32 1
  %22 = ptrtoint ptr %acl_info_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %acl_info_list, ptr %acl_info_list, align 4
  %prev.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call45, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %acl_info_list, ptr %prev.i, align 4
  call fastcc void @list_add_tail_rcu(ptr noundef nonnull %call45, ptr noundef nonnull @tomoyo_domain_list)
  br label %out

out:                                              ; preds = %if.then47, %if.then44.out_crit_edge, %if.end41.out_crit_edge
  %entry1.0 = phi ptr [ %call42, %if.end41.out_crit_edge ], [ %call45, %if.then47 ], [ null, %if.then44.out_crit_edge ]
  %created.0.off0 = phi i1 [ false, %if.end41.out_crit_edge ], [ true, %if.then47 ], [ false, %if.then44.out_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #13
  %24 = ptrtoint ptr %domainname33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load ptr, ptr %domainname33, align 4
  %tobool.not.i98 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i98, label %out.tomoyo_put_name.exit_crit_edge, label %out.if.then.i_crit_edge

out.if.then.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i

out.tomoyo_put_name.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_put_name.exit

if.then.i:                                        ; preds = %out.if.then.i_crit_edge, %if.end37.if.then.i_crit_edge
  %created.1.off0109 = phi i1 [ %created.0.off0, %out.if.then.i_crit_edge ], [ false, %if.end37.if.then.i_crit_edge ]
  %entry1.1107 = phi ptr [ %entry1.0, %out.if.then.i_crit_edge ], [ null, %if.end37.if.then.i_crit_edge ]
  %25 = phi ptr [ %.pr, %out.if.then.i_crit_edge ], [ %call32, %if.end37.if.then.i_crit_edge ]
  %users.i = getelementptr i8, ptr %25, i32 -4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #13
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #13, !srcloc !63
  br label %tomoyo_put_name.exit

tomoyo_put_name.exit:                             ; preds = %if.then.i, %out.tomoyo_put_name.exit_crit_edge
  %created.1.off0110 = phi i1 [ %created.0.off0, %out.tomoyo_put_name.exit_crit_edge ], [ %created.1.off0109, %if.then.i ]
  %entry1.1108 = phi ptr [ %entry1.0, %out.tomoyo_put_name.exit_crit_edge ], [ %entry1.1107, %if.then.i ]
  %tobool51.not = icmp ne ptr %entry1.1108, null
  %27 = and i1 %created.1.off0110, %transit
  %28 = and i1 %tobool51.not, %27
  br i1 %28, label %if.then56, label %tomoyo_put_name.exit.cleanup_crit_edge

tomoyo_put_name.exit.cleanup_crit_edge:           ; preds = %tomoyo_put_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then56:                                        ; preds = %tomoyo_put_name.exit
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %r) #13
  %29 = call ptr @memset(ptr %r, i32 255, i32 44)
  %call57 = call i32 @tomoyo_init_request_info(ptr noundef nonnull %r, ptr noundef nonnull %entry1.1108, i8 noundef zeroext 0) #13
  %granted = getelementptr inbounds %struct.tomoyo_request_info, ptr %r, i32 0, i32 6
  %30 = ptrtoint ptr %granted to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %granted, align 1
  %profile58 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %entry1.1108, i32 0, i32 5
  %31 = ptrtoint ptr %profile58 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %profile58, align 4
  %conv = zext i8 %32 to i32
  call void (ptr, ptr, ...) @tomoyo_write_log(ptr noundef nonnull %r, ptr noundef nonnull @.str.4, i32 noundef %conv) #13
  %group61 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %entry1.1108, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then56
  %i.0102 = phi i32 [ 0, %if.then56 ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0102, 5
  %arrayidx.i = getelementptr i32, ptr %group61, i32 %div3.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0102, 31
  %35 = shl nuw i32 1, %and.i
  %36 = and i32 %34, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool64.not = icmp eq i32 %36, 0
  br i1 %tobool64.not, label %for.body.for.inc_crit_edge, label %if.then65

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then65:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @tomoyo_write_log(ptr noundef nonnull %r, ptr noundef nonnull @.str.5, i32 noundef %i.0102) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then65, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  call void @tomoyo_update_stat(i8 noundef zeroext 0) #13
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %r) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %tomoyo_put_name.exit.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end17.thread.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %tomoyo_namespace_jump.exit.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end7, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end7 ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ], [ null, %tomoyo_namespace_jump.exit.cleanup_crit_edge ], [ null, %if.end17.cleanup_crit_edge ], [ null, %if.end31.cleanup_crit_edge ], [ %entry1.1108, %tomoyo_put_name.exit.cleanup_crit_edge ], [ %entry1.1108, %for.end ], [ null, %if.end17.thread.cleanup_crit_edge ], [ null, %land.lhs.true14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %e) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_find_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_domain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_init_request_info(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_write_log(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_update_stat(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tomoyo_find_next_domain(ptr noundef %bprm) local_unnamed_addr #0 align 64 {
entry:
  %env_page.i = alloca %struct.tomoyo_page_dump, align 8
  %exename = alloca %struct.tomoyo_path_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tomoyo_domain() #13
  %filename = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 14
  %0 = ptrtoint ptr %filename to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filename, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %exename) #13
  %2 = call ptr @memset(ptr %exename, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3392, i32 noundef 188) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup194_crit_edge, label %if.end

entry.cleanup194_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup194

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i281 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3392, i32 noundef 4096) #19
  %tmp = getelementptr inbounds %struct.tomoyo_execve, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i281, ptr %tmp, align 8
  %tobool5.not = icmp eq ptr %call7.i.i281, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup194

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @tomoyo_init_request_info(ptr noundef nonnull %call7.i.i, ptr noundef null, i8 noundef zeroext 0) #13
  %ee10 = getelementptr inbounds %struct.tomoyo_request_info, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %ee10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %ee10, align 4
  %bprm11 = getelementptr inbounds %struct.tomoyo_execve, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %bprm11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bprm, ptr %bprm11, align 8
  %obj = getelementptr inbounds %struct.tomoyo_execve, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %obj, ptr %call7.i.i, align 8
  %path1 = getelementptr inbounds %struct.tomoyo_execve, ptr %call7.i.i, i32 0, i32 1, i32 2
  %file = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 8
  %9 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %file, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %f_path to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %f_path, align 8
  %13 = ptrtoint ptr %path1 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %path1, align 4
  %call15 = tail call ptr @tomoyo_realpath_nofollow(ptr noundef %1) #13
  %14 = ptrtoint ptr %exename to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %exename, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end7.out_crit_edge, label %if.end19

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end19:                                         ; preds = %if.end7
  call void @tomoyo_fill_path_info(ptr noundef nonnull %exename) #13
  %ns = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call, i32 0, i32 3
  br label %retry

retry:                                            ; preds = %for.end.retry_crit_edge, %if.end19
  %15 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ns, align 4
  %arrayidx = getelementptr %struct.tomoyo_policy_namespace, ptr %16, i32 0, i32 2, i32 5
  %call.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %retry.do.end_crit_edge, label %srcu_read_lock_held.exit

retry.do.end_crit_edge:                           ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

srcu_read_lock_held.exit:                         ; preds = %retry
  %call.i.i282 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i282)
  %tobool21.not = icmp eq i32 %call.i.i282, 0
  br i1 %tobool21.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end_crit_edge

srcu_read_lock_held.exit.do.end_crit_edge:        ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call22 = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true24:                                  ; preds = %land.lhs.true
  %call25 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end_crit_edge:                 ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b279 = load i1, ptr @tomoyo_find_next_domain.__warned, align 1
  br i1 %.b279, label %land.lhs.true27.do.end_crit_edge, label %if.then29

land.lhs.true27.do.end_crit_edge:                 ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tomoyo_find_next_domain.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 741, ptr noundef nonnull @.str.1) #13
  br label %do.end

do.end:                                           ; preds = %if.then29, %land.lhs.true27.do.end_crit_edge, %land.lhs.true24.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %srcu_read_lock_held.exit.do.end_crit_edge, %retry.do.end_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %ptr.0316 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.not317 = icmp eq ptr %ptr.0316, %arrayidx
  br i1 %cmp.not317, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %ptr.0318 = phi ptr [ %ptr.0, %for.inc.for.body_crit_edge ], [ %ptr.0316, %do.end.for.body_crit_edge ]
  %is_deleted = getelementptr inbounds %struct.tomoyo_acl_head, ptr %ptr.0318, i32 0, i32 1
  %18 = ptrtoint ptr %is_deleted to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool38.not = icmp eq i8 %19, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %original_name39 = getelementptr inbounds %struct.tomoyo_aggregator, ptr %ptr.0318, i32 0, i32 1
  %20 = ptrtoint ptr %original_name39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %original_name39, align 4
  %call40 = call zeroext i1 @tomoyo_path_matches_pattern(ptr noundef nonnull %exename, ptr noundef %21) #13
  br i1 %call40, label %if.end42, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end42:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %aggregated_name = getelementptr inbounds %struct.tomoyo_aggregator, ptr %ptr.0318, i32 0, i32 2
  %22 = ptrtoint ptr %aggregated_name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aggregated_name, align 4
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %ptr.0318 to i32
  call void @__asan_load4_noabort(i32 %24)
  %ptr.0 = load volatile ptr, ptr %ptr.0318, align 4
  %cmp.not = icmp eq ptr %ptr.0, %arrayidx
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end42, %do.end.for.end_crit_edge
  %candidate.0 = phi ptr [ %23, %if.end42 ], [ %exename, %do.end.for.end_crit_edge ], [ %exename, %for.inc.for.end_crit_edge ]
  %call54 = call i32 @tomoyo_execute_permission(ptr noundef nonnull %call7.i.i, ptr noundef %candidate.0) #13
  %cmp55 = icmp eq i32 %call54, 1
  br i1 %cmp55, label %for.end.retry_crit_edge, label %if.end58

for.end.retry_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %retry

if.end58:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp59 = icmp slt i32 %call54, 0
  br i1 %cmp59, label %if.end58.out_crit_edge, label %if.end62

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end62:                                         ; preds = %if.end58
  %matched_path = getelementptr inbounds %struct.tomoyo_request_info, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %25 = ptrtoint ptr %matched_path to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %matched_path, align 8
  %tobool64.not = icmp eq ptr %26, null
  %spec.select = select i1 %tobool64.not, ptr %candidate.0, ptr %26
  %transition = getelementptr inbounds %struct.tomoyo_execve, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %transition to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %transition, align 4
  %tobool70.not = icmp eq ptr %28, null
  br i1 %tobool70.not, label %if.end115, label %if.then71

if.then71:                                        ; preds = %if.end62
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call74 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(5) @.str.6) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then71.force_jump_domain_crit_edge, label %if.end77

if.then71.force_jump_domain_crit_edge:            ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %force_jump_domain

if.end77:                                         ; preds = %if.then71
  %call78 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(6) @.str.7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end77.force_child_domain_crit_edge, label %if.end81

if.end77.force_child_domain_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #15
  br label %force_child_domain

if.end81:                                         ; preds = %if.end77
  %call82 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(6) @.str.8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end81.force_reset_domain_crit_edge, label %if.end85

if.end81.force_reset_domain_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  br label %force_reset_domain

if.end85:                                         ; preds = %if.end81
  %call86 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(11) @.str.9) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end85.force_initialize_domain_crit_edge, label %if.end89

if.end85.force_initialize_domain_crit_edge:       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %force_initialize_domain

if.end89:                                         ; preds = %if.end85
  %call90 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(7) @.str.10) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then92, label %if.else

if.then92:                                        ; preds = %if.end89
  %31 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tmp, align 8
  %domainname94 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call, i32 0, i32 2
  %33 = ptrtoint ptr %domainname94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %domainname94, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call96 = call ptr @strncpy(ptr noundef %32, ptr noundef %36, i32 noundef 4095)
  %call98 = call ptr @strrchr(ptr noundef %32, i32 noundef 32)
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %if.then92.if.end144_crit_edge, label %if.then100

if.then92.if.end144_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

if.then100:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %call98 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %call98, align 1
  br label %if.end144

if.else:                                          ; preds = %if.end89
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %39)
  %cmp103 = icmp eq i8 %39, 60
  %40 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tmp, align 8
  br i1 %cmp103, label %if.then105, label %if.else108

if.then105:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %call107 = call ptr @strncpy(ptr noundef %41, ptr noundef %30, i32 noundef 4095)
  br label %if.end144

if.else108:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %domainname110 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call, i32 0, i32 2
  %42 = ptrtoint ptr %domainname110 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %domainname110, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call112 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %41, i32 noundef 4095, ptr noundef nonnull @.str.11, ptr noundef %45, ptr noundef %30)
  br label %if.end144

if.end115:                                        ; preds = %if.end62
  %46 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ns, align 4
  %domainname117 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call, i32 0, i32 2
  %48 = ptrtoint ptr %domainname117 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %domainname117, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %call.i.i283 = call ptr @strrchr(ptr noundef %51, i32 noundef 32) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i283, null
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i283, i32 1
  %retval.0.i.i = select i1 %tobool.not.i.i, ptr %51, ptr %add.ptr.i.i
  %arrayidx.i = getelementptr %struct.tomoyo_policy_namespace, ptr %47, i32 0, i32 2, i32 4
  %candidate.0.sroa.gep = getelementptr inbounds %struct.tomoyo_path_info, ptr %candidate.0, i32 0, i32 1
  %.sroa.gep = getelementptr inbounds %struct.tomoyo_path_info, ptr %26, i32 0, i32 1
  %spec.select.sroa.sel = select i1 %tobool64.not, ptr %candidate.0.sroa.gep, ptr %.sroa.gep
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end115
  %type.024.i = phi i32 [ 0, %if.end115 ], [ %inc7.i, %cleanup.i.while.body.i_crit_edge ]
  %call.i.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.do.end.i.i_crit_edge, label %srcu_read_lock_held.exit.i.i

while.body.i.do.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

srcu_read_lock_held.exit.i.i:                     ; preds = %while.body.i
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @tomoyo_ss, i32 0, i32 16), i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i18.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i.i, label %srcu_read_lock_held.exit.i.i.do.end.i.i_crit_edge

srcu_read_lock_held.exit.i.i.do.end.i.i_crit_edge: ; preds = %srcu_read_lock_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %srcu_read_lock_held.exit.i.i
  %call1.i.i = call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true3.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %call4.i.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true3.i.i
  %.b67.i.i = load i1, ptr @tomoyo_scan_transition.__warned, align 1
  br i1 %.b67.i.i, label %land.lhs.true6.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true6.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @tomoyo_scan_transition.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 305, ptr noundef nonnull @.str.1) #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true6.i.i.do.end.i.i_crit_edge, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %srcu_read_lock_held.exit.i.i.do.end.i.i_crit_edge, %while.body.i.do.end.i.i_crit_edge
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %ptr.071.i.i = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.not72.i.i = icmp eq ptr %ptr.071.i.i, %arrayidx.i
  br i1 %cmp.not72.i.i, label %do.end.i.i.cleanup.i_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.cleanup.i_crit_edge:                   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %ptr.073.i.i = phi ptr [ %ptr.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %ptr.071.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %is_deleted.i.i = getelementptr inbounds %struct.tomoyo_acl_head, ptr %ptr.073.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %is_deleted.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %is_deleted.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool14.not.i.i = icmp eq i8 %54, 0
  br i1 %tobool14.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %type15.i.i = getelementptr inbounds %struct.tomoyo_transition_control, ptr %ptr.073.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %type15.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type15.i.i, align 1
  %conv16.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %type.024.i, i32 %conv16.i.i)
  %cmp17.not.i.i = icmp eq i32 %type.024.i, %conv16.i.i
  br i1 %cmp17.not.i.i, label %if.end20.i.i, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end20.i.i:                                     ; preds = %lor.lhs.false.i.i
  %domainname21.i.i = getelementptr inbounds %struct.tomoyo_transition_control, ptr %ptr.073.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %domainname21.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %domainname21.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %58, null
  br i1 %tobool22.not.i.i, label %if.end20.i.i.if.end37.i.i_crit_edge, label %if.then23.i.i

if.end20.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i.i

if.then23.i.i:                                    ; preds = %if.end20.i.i
  %is_last_name.i.i = getelementptr inbounds %struct.tomoyo_transition_control, ptr %ptr.073.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %is_last_name.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_last_name.i.i, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool24.not.i.i = icmp eq i8 %60, 0
  br i1 %tobool24.not.i.i, label %if.then25.i.i, label %if.else.i.i

if.then25.i.i:                                    ; preds = %if.then23.i.i
  %cmp27.not.i.i = icmp eq ptr %58, %49
  br i1 %cmp27.not.i.i, label %if.then25.i.i.if.end37.i.i_crit_edge, label %if.then25.i.i.for.inc.i.i_crit_edge

if.then25.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then25.i.i.if.end37.i.i_crit_edge:             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i.i

if.else.i.i:                                      ; preds = %if.then23.i.i
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  %call32.i.i = call i32 @strcmp(ptr noundef %62, ptr noundef %retval.0.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i)
  %tobool33.not.i.i = icmp eq i32 %call32.i.i, 0
  br i1 %tobool33.not.i.i, label %if.else.i.i.if.end37.i.i_crit_edge, label %if.else.i.i.for.inc.i.i_crit_edge

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.else.i.i.if.end37.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.else.i.i.if.end37.i.i_crit_edge, %if.then25.i.i.if.end37.i.i_crit_edge, %if.end20.i.i.if.end37.i.i_crit_edge
  %program38.i.i = getelementptr inbounds %struct.tomoyo_transition_control, ptr %ptr.073.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %program38.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %program38.i.i, align 4
  %tobool39.not.i.i = icmp eq ptr %64, null
  br i1 %tobool39.not.i.i, label %if.end37.i.i.if.end.i284_crit_edge, label %land.lhs.true40.i.i

if.end37.i.i.if.end.i284_crit_edge:               ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i284

land.lhs.true40.i.i:                              ; preds = %if.end37.i.i
  %hash.i.i.i = getelementptr inbounds %struct.tomoyo_path_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %hash.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hash.i.i.i, align 4
  %67 = ptrtoint ptr %spec.select.sroa.sel to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %spec.select.sroa.sel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp.not.i.i.i = icmp eq i32 %66, %68
  br i1 %cmp.not.i.i.i, label %tomoyo_pathcmp.exit.i.i, label %land.lhs.true40.i.i.for.inc.i.i_crit_edge

land.lhs.true40.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true40.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

tomoyo_pathcmp.exit.i.i:                          ; preds = %land.lhs.true40.i.i
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %64, align 4
  %71 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spec.select, align 4
  %call.i68.i.i = call i32 @strcmp(ptr noundef %70, ptr noundef %72) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i.i)
  %tobool.i.not.i.i = icmp eq i32 %call.i68.i.i, 0
  br i1 %tobool.i.not.i.i, label %tomoyo_pathcmp.exit.i.i.if.end.i284_crit_edge, label %tomoyo_pathcmp.exit.i.i.for.inc.i.i_crit_edge

tomoyo_pathcmp.exit.i.i.for.inc.i.i_crit_edge:    ; preds = %tomoyo_pathcmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

tomoyo_pathcmp.exit.i.i.if.end.i284_crit_edge:    ; preds = %tomoyo_pathcmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i284

for.inc.i.i:                                      ; preds = %tomoyo_pathcmp.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true40.i.i.for.inc.i.i_crit_edge, %if.else.i.i.for.inc.i.i_crit_edge, %if.then25.i.i.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %73 = ptrtoint ptr %ptr.073.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %ptr.0.i.i = load volatile ptr, ptr %ptr.073.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ptr.0.i.i, %arrayidx.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.cleanup.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.cleanup.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i284:                                      ; preds = %tomoyo_pathcmp.exit.i.i.if.end.i284_crit_edge, %if.end37.i.i.if.end.i284_crit_edge
  %74 = zext i32 %type.024.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %type.024.i, label %if.end.i284.tomoyo_transition_type.exit_crit_edge [
    i32 0, label %if.end.i284.cleanup.i_crit_edge
    i32 2, label %if.end.i284.cleanup.i_crit_edge363
  ]

if.end.i284.cleanup.i_crit_edge363:               ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i284.cleanup.i_crit_edge:                  ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end.i284.tomoyo_transition_type.exit_crit_edge: ; preds = %if.end.i284
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_transition_type.exit

cleanup.i:                                        ; preds = %if.end.i284.cleanup.i_crit_edge, %if.end.i284.cleanup.i_crit_edge363, %for.inc.i.i.cleanup.i_crit_edge, %do.end.i.i.cleanup.i_crit_edge
  %.sink.i = phi i32 [ 1, %do.end.i.i.cleanup.i_crit_edge ], [ 2, %if.end.i284.cleanup.i_crit_edge ], [ 2, %if.end.i284.cleanup.i_crit_edge363 ], [ 1, %for.inc.i.i.cleanup.i_crit_edge ]
  %inc7.i = add i32 %.sink.i, %type.024.i
  %cmp.i = icmp ult i32 %inc7.i, 6
  br i1 %cmp.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.tomoyo_transition_type.exit_crit_edge

cleanup.i.tomoyo_transition_type.exit_crit_edge:  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_transition_type.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

tomoyo_transition_type.exit:                      ; preds = %cleanup.i.tomoyo_transition_type.exit_crit_edge, %if.end.i284.tomoyo_transition_type.exit_crit_edge
  %type.0.lcssa.i = phi i32 [ %type.024.i, %if.end.i284.tomoyo_transition_type.exit_crit_edge ], [ %inc7.i, %cleanup.i.tomoyo_transition_type.exit_crit_edge ]
  %75 = zext i32 %type.0.lcssa.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %type.0.lcssa.i, label %sw.default [
    i32 1, label %tomoyo_transition_type.exit.force_reset_domain_crit_edge
    i32 3, label %tomoyo_transition_type.exit.force_initialize_domain_crit_edge
    i32 5, label %tomoyo_transition_type.exit.force_jump_domain_crit_edge
  ]

tomoyo_transition_type.exit.force_jump_domain_crit_edge: ; preds = %tomoyo_transition_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %force_jump_domain

tomoyo_transition_type.exit.force_initialize_domain_crit_edge: ; preds = %tomoyo_transition_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %force_initialize_domain

tomoyo_transition_type.exit.force_reset_domain_crit_edge: ; preds = %tomoyo_transition_type.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %force_reset_domain

force_reset_domain:                               ; preds = %tomoyo_transition_type.exit.force_reset_domain_crit_edge, %if.end81.force_reset_domain_crit_edge
  %76 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tmp, align 8
  %78 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %spec.select, align 4
  %call121 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %77, i32 noundef 4095, ptr noundef nonnull @.str.12, ptr noundef %79)
  br label %if.end144

force_initialize_domain:                          ; preds = %tomoyo_transition_type.exit.force_initialize_domain_crit_edge, %if.end85.force_initialize_domain_crit_edge
  %80 = xor i1 %tobool70.not, true
  %81 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tmp, align 8
  %83 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ns, align 4
  %name125 = getelementptr inbounds %struct.tomoyo_policy_namespace, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %name125 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name125, align 4
  %87 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %spec.select, align 4
  %call127 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %82, i32 noundef 4095, ptr noundef nonnull @.str.11, ptr noundef %86, ptr noundef %88)
  br label %if.end144

sw.default:                                       ; preds = %tomoyo_transition_type.exit
  %cmp129 = icmp eq ptr %call, @tomoyo_kernel_domain
  br i1 %cmp129, label %land.lhs.true131, label %sw.default.force_child_domain_crit_edge

sw.default.force_child_domain_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %force_child_domain

land.lhs.true131:                                 ; preds = %sw.default
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @tomoyo_policy_loaded to i32))
  %89 = load i8, ptr @tomoyo_policy_loaded, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool132.not = icmp eq i8 %89, 0
  br i1 %tobool132.not, label %land.lhs.true131.out_crit_edge, label %land.lhs.true131.force_child_domain_crit_edge

land.lhs.true131.force_child_domain_crit_edge:    ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #15
  br label %force_child_domain

land.lhs.true131.out_crit_edge:                   ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

force_child_domain:                               ; preds = %land.lhs.true131.force_child_domain_crit_edge, %sw.default.force_child_domain_crit_edge, %if.end77.force_child_domain_crit_edge
  %90 = xor i1 %tobool70.not, true
  %91 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tmp, align 8
  %domainname136 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %call, i32 0, i32 2
  %93 = ptrtoint ptr %domainname136 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %domainname136, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %97 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %spec.select, align 4
  %call139 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %92, i32 noundef 4095, ptr noundef nonnull @.str.11, ptr noundef %96, ptr noundef %98)
  br label %if.end144

force_jump_domain:                                ; preds = %tomoyo_transition_type.exit.force_jump_domain_crit_edge, %if.then71.force_jump_domain_crit_edge
  %99 = xor i1 %tobool70.not, true
  %tobool140.not = icmp eq ptr %call, null
  br i1 %tobool140.not, label %force_jump_domain.if.end144_crit_edge, label %force_jump_domain.out_crit_edge

force_jump_domain.out_crit_edge:                  ; preds = %force_jump_domain
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

force_jump_domain.if.end144_crit_edge:            ; preds = %force_jump_domain
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end144

if.end144:                                        ; preds = %force_jump_domain.if.end144_crit_edge, %force_child_domain, %force_initialize_domain, %force_reset_domain, %if.else108, %if.then105, %if.then100, %if.then92.if.end144_crit_edge
  %reject_on_transition_failure.3.off0307 = phi i1 [ %99, %force_jump_domain.if.end144_crit_edge ], [ true, %force_reset_domain ], [ %80, %force_initialize_domain ], [ %90, %force_child_domain ], [ true, %if.then92.if.end144_crit_edge ], [ true, %if.then100 ], [ true, %if.then105 ], [ true, %if.else108 ]
  %100 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tmp, align 8
  %call143 = call ptr @tomoyo_assign_domain(ptr noundef %101, i1 noundef zeroext true)
  %tobool145.not = icmp eq ptr %call143, null
  br i1 %tobool145.not, label %if.else147, label %if.end144.out_crit_edge

if.end144.out_crit_edge:                          ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else147:                                       ; preds = %if.end144
  br i1 %reject_on_transition_failure.3.off0307, label %if.else147.out.sink.split_crit_edge, label %if.else156

if.else147.out.sink.split_crit_edge:              ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.sink.split

if.else156:                                       ; preds = %if.else147
  %mode = getelementptr inbounds %struct.tomoyo_request_info, ptr %call7.i.i, i32 0, i32 9
  %102 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %103)
  %cmp159 = icmp eq i8 %103, 3
  br i1 %cmp159, label %if.else156.out_crit_edge, label %if.else162

if.else156.out_crit_edge:                         ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.else162:                                       ; preds = %if.else156
  %arrayidx163 = getelementptr %struct.tomoyo_domain_info, ptr %call, i32 0, i32 7, i32 1
  %104 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx163, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool164.not = icmp eq i8 %105, 0
  br i1 %tobool164.not, label %if.then165, label %if.else162.out_crit_edge

if.else162.out_crit_edge:                         ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then165:                                       ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #15
  %106 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %arrayidx163, align 1
  %granted = getelementptr inbounds %struct.tomoyo_request_info, ptr %call7.i.i, i32 0, i32 6
  %107 = ptrtoint ptr %granted to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %granted, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([2 x ptr], ptr @tomoyo_dif, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @tomoyo_dif, i32 0, i32 1), align 4
  call void (ptr, ptr, ...) @tomoyo_write_log(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.15, ptr noundef %108) #13
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.then165, %if.else147.out.sink.split_crit_edge
  %.str.17.sink = phi ptr [ @.str.17, %if.then165 ], [ @.str.13, %if.else147.out.sink.split_crit_edge ]
  %retval1.0.ph = phi i32 [ 0, %if.then165 ], [ -12, %if.else147.out.sink.split_crit_edge ]
  %109 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tmp, align 8
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.17.sink, ptr noundef %110) #20
  br label %out

out:                                              ; preds = %out.sink.split, %if.else162.out_crit_edge, %if.else156.out_crit_edge, %if.end144.out_crit_edge, %force_jump_domain.out_crit_edge, %land.lhs.true131.out_crit_edge, %if.end58.out_crit_edge, %if.end7.out_crit_edge
  %retval1.0 = phi i32 [ %call54, %if.end58.out_crit_edge ], [ 0, %if.else162.out_crit_edge ], [ -2, %if.end7.out_crit_edge ], [ 0, %if.end144.out_crit_edge ], [ -12, %if.else156.out_crit_edge ], [ 0, %force_jump_domain.out_crit_edge ], [ 0, %land.lhs.true131.out_crit_edge ], [ %retval1.0.ph, %out.sink.split ]
  %domain.2 = phi ptr [ null, %if.end58.out_crit_edge ], [ null, %if.else162.out_crit_edge ], [ null, %if.end7.out_crit_edge ], [ %call143, %if.end144.out_crit_edge ], [ null, %if.else156.out_crit_edge ], [ %call, %force_jump_domain.out_crit_edge ], [ @tomoyo_kernel_domain, %land.lhs.true131.out_crit_edge ], [ null, %out.sink.split ]
  %tobool180.not = icmp eq ptr %domain.2, null
  %spec.select280 = select i1 %tobool180.not, ptr %call, ptr %domain.2
  %111 = call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i = and i32 %111, -16384
  %112 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %task, align 8
  %security.i = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 215
  %115 = ptrtoint ptr %security.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %security.i, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6) to i32))
  %117 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @tomoyo_blob_sizes, i32 0, i32 6), align 4
  %add.ptr.i = getelementptr i8, ptr %116, i32 %117
  %118 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %add.ptr.i, align 4
  %old_domain_info = getelementptr inbounds %struct.tomoyo_task, ptr %add.ptr.i, i32 0, i32 1
  %120 = ptrtoint ptr %old_domain_info to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %old_domain_info, align 4
  store ptr %spec.select280, ptr %add.ptr.i, align 4
  %users = getelementptr inbounds %struct.tomoyo_domain_info, ptr %spec.select280, i32 0, i32 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #13
  call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #13
  %121 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #13, !srcloc !64
  %122 = ptrtoint ptr %exename to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %exename, align 4
  call void @kfree(ptr noundef %123) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %tobool187.not = icmp eq i32 %retval1.0, 0
  br i1 %tobool187.not, label %if.then188, label %out.if.end192_crit_edge

out.if.end192_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end192

if.then188:                                       ; preds = %out
  %domain190 = getelementptr inbounds %struct.tomoyo_request_info, ptr %call7.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %domain190 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %spec.select280, ptr %domain190, align 8
  %125 = ptrtoint ptr %bprm11 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bprm11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %env_page.i) #13
  %127 = ptrtoint ptr %env_page.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 0, ptr %env_page.i, align 8
  %p.i = getelementptr inbounds %struct.linux_binprm, ptr %126, i32 0, i32 3
  %128 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %p.i, align 4
  %argc.i = getelementptr inbounds %struct.linux_binprm, ptr %126, i32 0, i32 12
  %130 = ptrtoint ptr %argc.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %argc.i, align 4
  %envc.i = getelementptr inbounds %struct.linux_binprm, ptr %126, i32 0, i32 13
  %132 = ptrtoint ptr %envc.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %envc.i, align 4
  %type.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %call7.i.i, i32 0, i32 10
  %134 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 38, ptr %type.i, align 1
  %profile.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %spec.select280, i32 0, i32 5
  %135 = ptrtoint ptr %profile.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %profile.i, align 4
  %profile5.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %call7.i.i, i32 0, i32 8
  %137 = ptrtoint ptr %profile5.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %profile5.i, align 1
  %ns.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %spec.select280, i32 0, i32 3
  %138 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ns.i, align 4
  %call.i285 = call i32 @tomoyo_get_mode(ptr noundef %139, i8 noundef zeroext %136, i8 noundef zeroext 38) #13
  %conv.i = trunc i32 %call.i285 to i8
  %mode.i = getelementptr inbounds %struct.tomoyo_request_info, ptr %call7.i.i, i32 0, i32 9
  %140 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv.i, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i286 = icmp eq i8 %conv.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool11.not.i = icmp eq i32 %133, 0
  %or.cond.i = select i1 %tobool.not.i286, i1 true, i1 %tobool11.not.i
  br i1 %or.cond.i, label %if.then188.tomoyo_environ.exit_crit_edge, label %if.end.i287

if.then188.tomoyo_environ.exit_crit_edge:         ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #15
  br label %tomoyo_environ.exit

if.end.i287:                                      ; preds = %if.then188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %141 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %141, i32 noundef 3392, i32 noundef 4096) #19
  %tobool13.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool13.not.i, label %if.end.i287.out.i_crit_edge, label %while.cond.preheader.i

if.end.i287.out.i_crit_edge:                      ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

while.cond.preheader.i:                           ; preds = %if.end.i287
  %rem.i = and i32 %129, 4095
  %data.i = getelementptr inbounds %struct.tomoyo_page_dump, ptr %env_page.i, i32 0, i32 1
  br label %while.cond.outer.i.outer

while.cond.outer.i.loopexit:                      ; preds = %cleanup.i292.while.cond.outer.i.loopexit_crit_edge, %if.end100.i.while.cond.outer.i.loopexit_crit_edge, %if.end96.i.while.cond.outer.i.loopexit_crit_edge
  %arg_len.0.ph.i.ph = phi i32 [ %arg_len.2.i, %if.end100.i.while.cond.outer.i.loopexit_crit_edge ], [ %arg_len.2.i, %if.end96.i.while.cond.outer.i.loopexit_crit_edge ], [ %arg_len.3.i, %cleanup.i292.while.cond.outer.i.loopexit_crit_edge ]
  %envp_count.0.ph.i.ph = phi i32 [ 0, %if.end100.i.while.cond.outer.i.loopexit_crit_edge ], [ %envp_count.1.i322, %if.end96.i.while.cond.outer.i.loopexit_crit_edge ], [ %envp_count.2.i, %cleanup.i292.while.cond.outer.i.loopexit_crit_edge ]
  %error.0.ph.i.ph = phi i32 [ 0, %if.end100.i.while.cond.outer.i.loopexit_crit_edge ], [ -1, %if.end96.i.while.cond.outer.i.loopexit_crit_edge ], [ -12, %cleanup.i292.while.cond.outer.i.loopexit_crit_edge ]
  br label %while.cond.outer.i.outer

while.cond.outer.i.outer:                         ; preds = %while.cond.outer.i.loopexit, %while.cond.preheader.i
  %arg_len.0.ph.i.ph349 = phi i32 [ %arg_len.0.ph.i.ph, %while.cond.outer.i.loopexit ], [ 0, %while.cond.preheader.i ]
  %pos.0.ph.i.ph = phi i32 [ %add.i, %while.cond.outer.i.loopexit ], [ %129, %while.cond.preheader.i ]
  %offset.0.ph.i.ph = phi i32 [ 0, %while.cond.outer.i.loopexit ], [ %rem.i, %while.cond.preheader.i ]
  %argv_count.0.ph.i.ph = phi i32 [ 0, %while.cond.outer.i.loopexit ], [ %131, %while.cond.preheader.i ]
  %envp_count.0.ph.i.ph350 = phi i32 [ %envp_count.0.ph.i.ph, %while.cond.outer.i.loopexit ], [ %133, %while.cond.preheader.i ]
  %error.0.ph.i.ph351 = phi i32 [ %error.0.ph.i.ph, %while.cond.outer.i.loopexit ], [ -12, %while.cond.preheader.i ]
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %while.cond31.preheader.i.while.cond.outer.i_crit_edge, %while.cond.outer.i.outer
  %pos.0.ph.i = phi i32 [ %add.i, %while.cond31.preheader.i.while.cond.outer.i_crit_edge ], [ %pos.0.ph.i.ph, %while.cond.outer.i.outer ]
  %offset.0.ph.i = phi i32 [ 0, %while.cond31.preheader.i.while.cond.outer.i_crit_edge ], [ %offset.0.ph.i.ph, %while.cond.outer.i.outer ]
  %argv_count.0.ph.i = phi i32 [ 0, %while.cond31.preheader.i.while.cond.outer.i_crit_edge ], [ %argv_count.0.ph.i.ph, %while.cond.outer.i.outer ]
  %error.0.ph.i = phi i32 [ -12, %while.cond31.preheader.i.while.cond.outer.i_crit_edge ], [ %error.0.ph.i.ph351, %while.cond.outer.i.outer ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.end.i.while.cond.i_crit_edge, %while.cond.outer.i
  %pos.0.i = phi i32 [ %add.i, %while.end.i.while.cond.i_crit_edge ], [ %pos.0.ph.i, %while.cond.outer.i ]
  %offset.0.i = phi i32 [ 0, %while.end.i.while.cond.i_crit_edge ], [ %offset.0.ph.i, %while.cond.outer.i ]
  %argv_count.0.i = phi i32 [ %spec.select.i, %while.end.i.while.cond.i_crit_edge ], [ %argv_count.0.ph.i, %while.cond.outer.i ]
  %error.0.i = phi i32 [ -12, %while.end.i.while.cond.i_crit_edge ], [ %error.0.ph.i, %while.cond.outer.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %error.0.i)
  %cmp.i288 = icmp eq i32 %error.0.i, -12
  br i1 %cmp.i288, label %while.body.i289, label %while.cond.i.out.i_crit_edge

while.cond.i.out.i_crit_edge:                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

while.body.i289:                                  ; preds = %while.cond.i
  %call17.i = call zeroext i1 @tomoyo_dump_page(ptr noundef %126, i32 noundef %pos.0.i, ptr noundef nonnull %env_page.i) #13
  br i1 %call17.i, label %if.end19.i, label %while.body.i289.out.i_crit_edge

while.body.i289.out.i_crit_edge:                  ; preds = %while.body.i289
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end19.i:                                       ; preds = %while.body.i289
  %sub.i = sub nuw nsw i32 4096, %offset.0.i
  %add.i = add i32 %sub.i, %pos.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argv_count.0.i)
  %tobool21.not187.i = icmp eq i32 %argv_count.0.i, 0
  br i1 %tobool21.not187.i, label %if.end19.i.while.body34.i.lr.ph_crit_edge, label %while.body24.lr.ph.i

if.end19.i.while.body34.i.lr.ph_crit_edge:        ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body34.i.lr.ph

while.body24.lr.ph.i:                             ; preds = %if.end19.i
  %142 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %data.i, align 4
  br label %while.body24.i

while.body24.i:                                   ; preds = %while.body24.i.while.body24.i_crit_edge, %while.body24.lr.ph.i
  %argv_count.1191.i = phi i32 [ %argv_count.0.i, %while.body24.lr.ph.i ], [ %spec.select.i, %while.body24.i.while.body24.i_crit_edge ]
  %offset.1190.i = phi i32 [ %offset.0.i, %while.body24.lr.ph.i ], [ %inc.i, %while.body24.i.while.body24.i_crit_edge ]
  %inc.i = add nuw nsw i32 %offset.1190.i, 1
  %arrayidx.i290 = getelementptr i8, ptr %143, i32 %offset.1190.i
  %144 = ptrtoint ptr %arrayidx.i290 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx.i290, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool25.not.i = icmp eq i8 %145, 0
  %dec.i = sext i1 %tobool25.not.i to i32
  %spec.select.i = add i32 %argv_count.1191.i, %dec.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool21.not.i = icmp eq i32 %spec.select.i, 0
  %tobool21.not.not.i = xor i1 %tobool21.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %offset.1190.i)
  %cmp22.i = icmp ult i32 %offset.1190.i, 4095
  %or.cond175.i = select i1 %tobool21.not.not.i, i1 %cmp22.i, i1 false
  br i1 %or.cond175.i, label %while.body24.i.while.body24.i_crit_edge, label %while.end.i

while.body24.i.while.body24.i_crit_edge:          ; preds = %while.body24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body24.i

while.end.i:                                      ; preds = %while.body24.i
  br i1 %tobool21.not.i, label %while.cond31.preheader.i, label %while.end.i.while.cond.i_crit_edge

while.end.i.while.cond.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

while.cond31.preheader.i:                         ; preds = %while.end.i
  %exitcond.not.i319 = icmp ugt i32 %offset.1190.i, 4094
  br i1 %exitcond.not.i319, label %while.cond31.preheader.i.while.cond.outer.i_crit_edge, label %while.cond31.preheader.i.while.body34.i.lr.ph_crit_edge

while.cond31.preheader.i.while.body34.i.lr.ph_crit_edge: ; preds = %while.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body34.i.lr.ph

while.cond31.preheader.i.while.cond.outer.i_crit_edge: ; preds = %while.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.outer.i

while.body34.i.lr.ph:                             ; preds = %while.cond31.preheader.i.while.body34.i.lr.ph_crit_edge, %if.end19.i.while.body34.i.lr.ph_crit_edge
  %offset.1.lcssa198.i335 = phi i32 [ %offset.0.i, %if.end19.i.while.body34.i.lr.ph_crit_edge ], [ %inc.i, %while.cond31.preheader.i.while.body34.i.lr.ph_crit_edge ]
  %146 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data.i, align 4
  br label %while.body34.i

while.body34.i:                                   ; preds = %cleanup.i292.while.body34.i_crit_edge, %while.body34.i.lr.ph
  %envp_count.1.i322 = phi i32 [ %envp_count.0.ph.i.ph350, %while.body34.i.lr.ph ], [ %envp_count.2.i, %cleanup.i292.while.body34.i_crit_edge ]
  %offset.2.i321 = phi i32 [ %offset.1.lcssa198.i335, %while.body34.i.lr.ph ], [ %inc36.i, %cleanup.i292.while.body34.i_crit_edge ]
  %arg_len.1.i320 = phi i32 [ %arg_len.0.ph.i.ph349, %while.body34.i.lr.ph ], [ %arg_len.3.i, %cleanup.i292.while.body34.i_crit_edge ]
  %inc36.i = add nuw nsw i32 %offset.2.i321, 1
  %arrayidx37.i = getelementptr i8, ptr %147, i32 %offset.2.i321
  %148 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx37.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool39.not.i = icmp ne i8 %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4086, i32 %arg_len.1.i320)
  %cmp40.i = icmp slt i32 %arg_len.1.i320, 4086
  %or.cond176.i = select i1 %tobool39.not.i, i1 %cmp40.i, i1 false
  br i1 %or.cond176.i, label %if.then42.i, label %while.body34.i.if.end93.i_crit_edge

while.body34.i.if.end93.i_crit_edge:              ; preds = %while.body34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93.i

if.then42.i:                                      ; preds = %while.body34.i
  %150 = zext i8 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %149, label %if.else57.i [
    i8 61, label %if.then46.i
    i8 92, label %if.then52.i
  ]

if.then46.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc47.i = add nsw i32 %arg_len.1.i320, 1
  %arrayidx48.i = getelementptr i8, ptr %call7.i.i.i, i32 %arg_len.1.i320
  %151 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %arrayidx48.i, align 1
  br label %cleanup.i292

if.then52.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc53.i = add nsw i32 %arg_len.1.i320, 1
  %arrayidx54.i = getelementptr i8, ptr %call7.i.i.i, i32 %arg_len.1.i320
  %152 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 92, ptr %arrayidx54.i, align 1
  %inc55.i = add nsw i32 %arg_len.1.i320, 2
  %arrayidx56.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc53.i
  %153 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 92, ptr %arrayidx56.i, align 1
  br label %cleanup.i292

if.else57.i:                                      ; preds = %if.then42.i
  %154 = add i8 %149, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %154)
  %155 = icmp ult i8 %154, 94
  %inc66.i = add nsw i32 %arg_len.1.i320, 1
  %arrayidx67.i = getelementptr i8, ptr %call7.i.i.i, i32 %arg_len.1.i320
  br i1 %155, label %if.then65.i, label %if.else68.i

if.then65.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #15
  %156 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %149, ptr %arrayidx67.i, align 1
  br label %cleanup.i292

if.else68.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_pc() #15
  %157 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 92, ptr %arrayidx67.i, align 1
  %158 = lshr i8 %149, 6
  %add72.i = or i8 %158, 48
  %inc74.i = add nsw i32 %arg_len.1.i320, 2
  %arrayidx75.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc66.i
  %159 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %add72.i, ptr %arrayidx75.i, align 1
  %160 = lshr i8 %149, 3
  %and.i291 = and i8 %160, 7
  %add78.i = or i8 %and.i291, 48
  %inc80.i = add nsw i32 %arg_len.1.i320, 3
  %arrayidx81.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc74.i
  %161 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %add78.i, ptr %arrayidx81.i, align 1
  %and83.i = and i8 %149, 7
  %add84.i = or i8 %and83.i, 48
  %inc86.i = add nsw i32 %arg_len.1.i320, 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.else68.i, %while.body34.i.if.end93.i_crit_edge
  %inc80.sink.i = phi i32 [ %inc80.i, %if.else68.i ], [ %arg_len.1.i320, %while.body34.i.if.end93.i_crit_edge ]
  %add84.sink.i = phi i8 [ %add84.i, %if.else68.i ], [ 0, %while.body34.i.if.end93.i_crit_edge ]
  %arg_len.2.i = phi i32 [ %inc86.i, %if.else68.i ], [ %arg_len.1.i320, %while.body34.i.if.end93.i_crit_edge ]
  %arrayidx87.i = getelementptr i8, ptr %call7.i.i.i, i32 %inc80.sink.i
  %162 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %add84.sink.i, ptr %arrayidx87.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool94.not.i = icmp eq i8 %149, 0
  br i1 %tobool94.not.i, label %if.end96.i, label %if.end93.i.cleanup.i292_crit_edge

if.end93.i.cleanup.i292_crit_edge:                ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i292

if.end96.i:                                       ; preds = %if.end93.i
  %call97.i = call i32 @tomoyo_env_perm(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %tobool98.not.i = icmp eq i32 %call97.i, 0
  br i1 %tobool98.not.i, label %if.end100.i, label %if.end96.i.while.cond.outer.i.loopexit_crit_edge

if.end96.i.while.cond.outer.i.loopexit_crit_edge: ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.outer.i.loopexit

if.end100.i:                                      ; preds = %if.end96.i
  %dec101.i = add i32 %envp_count.1.i322, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec101.i)
  %tobool102.not.i = icmp eq i32 %dec101.i, 0
  br i1 %tobool102.not.i, label %if.end100.i.while.cond.outer.i.loopexit_crit_edge, label %if.end100.i.cleanup.i292_crit_edge

if.end100.i.cleanup.i292_crit_edge:               ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i292

if.end100.i.while.cond.outer.i.loopexit_crit_edge: ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.outer.i.loopexit

cleanup.i292:                                     ; preds = %if.end100.i.cleanup.i292_crit_edge, %if.end93.i.cleanup.i292_crit_edge, %if.then65.i, %if.then52.i, %if.then46.i
  %arg_len.3.i = phi i32 [ %arg_len.2.i, %if.end93.i.cleanup.i292_crit_edge ], [ 0, %if.end100.i.cleanup.i292_crit_edge ], [ %inc66.i, %if.then65.i ], [ %inc55.i, %if.then52.i ], [ %inc47.i, %if.then46.i ]
  %envp_count.2.i = phi i32 [ %envp_count.1.i322, %if.end93.i.cleanup.i292_crit_edge ], [ %dec101.i, %if.end100.i.cleanup.i292_crit_edge ], [ %envp_count.1.i322, %if.then65.i ], [ %envp_count.1.i322, %if.then52.i ], [ %envp_count.1.i322, %if.then46.i ]
  %exitcond.not.i = icmp eq i32 %inc36.i, 4096
  br i1 %exitcond.not.i, label %cleanup.i292.while.cond.outer.i.loopexit_crit_edge, label %cleanup.i292.while.body34.i_crit_edge

cleanup.i292.while.body34.i_crit_edge:            ; preds = %cleanup.i292
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body34.i

cleanup.i292.while.cond.outer.i.loopexit_crit_edge: ; preds = %cleanup.i292
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.outer.i.loopexit

out.i:                                            ; preds = %while.body.i289.out.i_crit_edge, %while.cond.i.out.i_crit_edge, %if.end.i287.out.i_crit_edge
  %error.4.i = phi i32 [ -12, %if.end.i287.out.i_crit_edge ], [ -12, %while.body.i289.out.i_crit_edge ], [ %error.0.i, %while.cond.i.out.i_crit_edge ]
  %163 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %164)
  %cmp109.not.i = icmp eq i8 %164, 3
  %spec.select178.i = select i1 %cmp109.not.i, i32 %error.4.i, i32 0
  %data113.i = getelementptr inbounds %struct.tomoyo_page_dump, ptr %env_page.i, i32 0, i32 1
  %165 = ptrtoint ptr %data113.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %data113.i, align 4
  call void @kfree(ptr noundef %166) #13
  call void @kfree(ptr noundef %call7.i.i.i) #13
  br label %tomoyo_environ.exit

tomoyo_environ.exit:                              ; preds = %out.i, %if.then188.tomoyo_environ.exit_crit_edge
  %retval.0.i293 = phi i32 [ %spec.select178.i, %out.i ], [ 0, %if.then188.tomoyo_environ.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %env_page.i) #13
  br label %if.end192

if.end192:                                        ; preds = %tomoyo_environ.exit, %out.if.end192_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %out.if.end192_crit_edge ], [ %retval.0.i293, %tomoyo_environ.exit ]
  %167 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %tmp, align 8
  call void @kfree(ptr noundef %168) #13
  %data = getelementptr inbounds %struct.tomoyo_execve, ptr %call7.i.i, i32 0, i32 4, i32 1
  %169 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %data, align 4
  call void @kfree(ptr noundef %170) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup194

cleanup194:                                       ; preds = %if.end192, %if.then6, %entry.cleanup194_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %if.end192 ], [ -12, %if.then6 ], [ -12, %entry.cleanup194_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %exename) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tomoyo_realpath_nofollow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_fill_path_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tomoyo_path_matches_pattern(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_execute_permission(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tomoyo_dump_page(ptr nocapture noundef readonly %bprm, i32 noundef %pos, ptr nocapture noundef %dump) local_unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #13
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !65
  %data = getelementptr inbounds %struct.tomoyo_page_dump, ptr %dump, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3392, i32 noundef 4096) #19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %data, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %mm = getelementptr inbounds %struct.linux_binprm, ptr %bprm, i32 0, i32 2
  %5 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@tomoyo_dump_page, %if.then.i.i)) #13
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !66

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %6, i1 noundef zeroext false) #13
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.end5
  %mmap_lock.i = getelementptr inbounds %struct.anon.24, ptr %6, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@tomoyo_dump_page, %if.then.i3.i)) #13
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !66

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext true) #13
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %7 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mm, align 4
  %call7 = call i32 @get_user_pages_remote(ptr noundef %8, i32 noundef %pos, i32 noundef 1, i32 noundef 16, ptr noundef nonnull %page, ptr noundef null, ptr noundef null) #13
  %9 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mm, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@tomoyo_dump_page, %if.then.i.i34)) #13
          to label %mmap_read_unlock.exit [label %if.then.i.i34], !srcloc !66

if.then.i.i34:                                    ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__mmap_lock_do_trace_released(ptr noundef %10, i1 noundef zeroext false) #13
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i34, %mmap_read_lock.exit
  %mmap_lock.i35 = getelementptr inbounds %struct.anon.24, ptr %10, i32 0, i32 15
  call void @up_read(ptr noundef %mmap_lock.i35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp = icmp slt i32 %call7, 1
  br i1 %cmp, label %mmap_read_unlock.exit.cleanup_crit_edge, label %if.end10

mmap_read_unlock.exit.cleanup_crit_edge:          ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %mmap_read_unlock.exit
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %page, align 4
  %13 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dump, align 4
  %cmp12.not = icmp eq ptr %12, %14
  br i1 %cmp12.not, label %if.end10.if.end21_crit_edge, label %if.then13

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %rem = and i32 %pos, 4095
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %15 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %15, 512
  %16 = call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !67
  %20 = call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i.i.i1.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 213
  %24 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !68
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %12, i32 noundef %or.i) #13
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %page, align 4
  %28 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %dump, align 4
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %rem
  %add.ptr17 = getelementptr i8, ptr %call.i.i, i32 %rem
  %sub = sub nuw nsw i32 4096, %rem
  %31 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr17, i32 %sub)
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !69
  %32 = call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i.i.i1.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %37, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !70
  %38 = call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %if.end10.if.end21_crit_edge
  %42 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %page, align 4
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i37, !prof !71

if.then.i.i37:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %sub.i.i36 = add i32 %46, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %43 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i37
  %retval.0.i.i = phi i32 [ %sub.i.i36, %if.then.i.i37 ], [ %47, %if.end.i.i ]
  %48 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  %49 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i.i.i.i = icmp eq i32 %50, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !72

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @dump_page(ptr noundef %48, ptr noundef nonnull @.str.19) #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #13, !srcloc !73
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !74
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #13
  %51 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #13, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %51, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@tomoyo_dump_page, %if.then.i.i.i.i.i)) #13
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !66

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %48, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #13
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__put_page(ptr noundef %48) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %mmap_read_unlock.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then.cleanup_crit_edge ], [ false, %mmap_read_unlock.exit.cleanup_crit_edge ], [ true, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ true, %if.then.i4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #13
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_remote(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_get_mode(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tomoyo_env_perm(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../security/tomoyo/domain.c", i32 44, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../security/tomoyo/domain.c", i32 123, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../security/tomoyo/domain.c", i32 171, i32 2}
!8 = !{ptr @tomoyo_domain_list, !9, !"tomoyo_domain_list", i1 false, i1 false}
!9 = !{!"../security/tomoyo/domain.c", i32 193, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/tomoyo/domain.c", i32 248, i32 37}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/tomoyo/domain.c", i32 258, i32 33}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/tomoyo/domain.c", i32 594, i32 25}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../security/tomoyo/domain.c", i32 598, i32 27}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../security/tomoyo/domain.c", i32 740, i32 3}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/tomoyo/domain.c", i32 776, i32 27}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/tomoyo/domain.c", i32 778, i32 27}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/tomoyo/domain.c", i32 780, i32 27}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/tomoyo/domain.c", i32 782, i32 27}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/tomoyo/domain.c", i32 784, i32 27}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/tomoyo/domain.c", i32 795, i32 47}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/tomoyo/domain.c", i32 808, i32 46}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/tomoyo/domain.c", i32 851, i32 3}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tomoyo_find_next_domain._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @tomoyo_find_next_domain._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../security/tomoyo/domain.c", i32 860, i32 29}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../security/tomoyo/domain.c", i32 862, i32 4}
!43 = !{ptr @tomoyo_find_next_domain._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tomoyo_find_next_domain._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @tomoyo_kernel_domain, !46, !"tomoyo_kernel_domain", i1 false, i1 false}
!46 = !{!"../security/tomoyo/domain.c", i32 17, i32 27}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../security/tomoyo/domain.c", i32 304, i32 2}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/mm.h", i32 717, i32 2}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{i64 2151552421}
!63 = !{i64 2148749632, i64 2148749658, i64 2148749687, i64 2148749721, i64 2148749752, i64 2148749775}
!64 = !{i64 2148747167, i64 2148747193, i64 2148747222, i64 2148747256, i64 2148747287, i64 2148747310}
!65 = !{!"auto-init"}
!66 = !{i64 2148347844, i64 2148347849, i64 2148347862, i64 2148347906, i64 2148347940, i64 2148347961}
!67 = !{i64 2153742279}
!68 = !{i64 2152796403}
!69 = !{i64 2152796610}
!70 = !{i64 2153745050}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2153179352, i64 2153179835, i64 2153179389, i64 2153179445, i64 2153179479, i64 2153179503, i64 2153179544, i64 2153179565, i64 2153179593, i64 2153179627}
!74 = !{i64 2148835643}
!75 = !{i64 2148750352, i64 2148750384, i64 2148750413, i64 2148750447, i64 2148750478, i64 2148750501}
!76 = !{i64 2148835872}
