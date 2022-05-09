; ModuleID = '/llk/IR_all_yes/fs/minix/dir.c_pt.bc'
source_filename = "../fs/minix/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.minix_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i16, i16 }
%struct.dir_context = type { ptr, i64 }
%struct.minix3_dir_entry = type { i32, [0 x i8] }
%struct.minix_dir_entry = type { i16, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@minix_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @minix_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @generic_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 46]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"minix_dir_operations\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 22, i32 30 }
@___asan_gen_.18 = private constant [18 x i8] c"../fs/minix/dir.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 340, i32 21 }
@___asan_gen_.21 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 44, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 788, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 260, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 271, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 717, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @minix_dir_operations, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @minix_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @minix_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %s_dirsize = getelementptr inbounds %struct.minix_sb_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_dirsize, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size.i, align 8
  %10 = trunc i64 %9 to i32
  %conv.i = add i32 %10, 4095
  %shr.i = lshr i32 %conv.i, 12
  %pos3 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %pos3, align 8
  %conv = trunc i64 %12 to i32
  %sub = add i32 %7, -1
  %add = add i32 %sub, %conv
  %neg = sub i32 0, %7
  %and = and i32 %add, %neg
  %conv5 = zext i32 %and to i64
  store i64 %conv5, ptr %pos3, align 8
  %13 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv5)
  %cmp.not = icmp sgt i64 %13, %conv5
  br i1 %cmp.not, label %if.end, label %entry.cleanup58_crit_edge

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

if.end:                                           ; preds = %entry
  %shr = lshr i32 %and, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr.i)
  %cmp10107 = icmp ult i32 %shr, %shr.i
  br i1 %cmp10107, label %for.body.lr.ph, label %if.end.cleanup58_crit_edge

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

for.body.lr.ph:                                   ; preds = %if.end
  %and9 = and i32 %and, 4095
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %5, i32 0, i32 13
  %s_namelen = getelementptr inbounds %struct.minix_sb_info, ptr %5, i32 0, i32 7
  %conv42 = zext i32 %7 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc56.for.body_crit_edge, %for.body.lr.ph
  %n.0109 = phi i32 [ %shr, %for.body.lr.ph ], [ %inc, %for.inc56.for.body_crit_edge ]
  %offset.0108 = phi i32 [ %and9, %for.body.lr.ph ], [ 0, %for.inc56.for.body_crit_edge ]
  %14 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %15, i32 noundef %n.0109, ptr noundef null, ptr noundef null) #9
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.for.inc56_crit_edge, label %if.then.i

for.body.for.inc56_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc56

if.then.i:                                        ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 44) #9
  %16 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %17, 30
  %18 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %19 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp2.i.not.i.i = icmp eq i32 %19, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #9
  br label %if.end15

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #9
  br label %if.end15

if.end15:                                         ; preds = %if.else.i.i, %if.then.i.i
  %call16 = tail call ptr @page_address(ptr noundef %call.i.i) #9
  %add.ptr = getelementptr i8, ptr %call16, i32 %offset.0108
  %conv.i99 = zext i32 %n.0109 to i64
  %20 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size.i, align 8
  %shr.i101 = ashr i64 %21, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i101, i64 %conv.i99)
  %cmp.i102 = icmp eq i64 %shr.i101, %conv.i99
  %22 = trunc i64 %21 to i32
  %conv3.i = and i32 %22, 4095
  %last_byte.0.i = select i1 %cmp.i102, i32 %conv3.i, i32 4096
  %add.ptr18 = getelementptr i8, ptr %call16, i32 %neg
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 %last_byte.0.i
  %cmp21.not105 = icmp ugt ptr %add.ptr, %add.ptr19
  br i1 %cmp21.not105, label %if.end15.for.end_crit_edge, label %if.end15.for.body23_crit_edge

if.end15.for.body23_crit_edge:                    ; preds = %if.end15
  br label %for.body23

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body23:                                       ; preds = %if.end41.for.body23_crit_edge, %if.end15.for.body23_crit_edge
  %p.0106 = phi ptr [ %add.ptr.i, %if.end41.for.body23_crit_edge ], [ %add.ptr, %if.end15.for.body23_crit_edge ]
  %23 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %24)
  %cmp25 = icmp eq i16 %24, 3
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  %name28 = getelementptr inbounds %struct.minix3_dir_entry, ptr %p.0106, i32 0, i32 1
  %25 = ptrtoint ptr %p.0106 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p.0106, align 4
  br label %if.end34

if.else:                                          ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  %name30 = getelementptr inbounds %struct.minix_dir_entry, ptr %p.0106, i32 0, i32 1
  %27 = ptrtoint ptr %p.0106 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %p.0106, align 2
  %conv33 = zext i16 %28 to i32
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then27
  %name.0 = phi ptr [ %name28, %if.then27 ], [ %name30, %if.else ]
  %inumber.0 = phi i32 [ %26, %if.then27 ], [ %conv33, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inumber.0)
  %tobool.not = icmp eq i32 %inumber.0, 0
  br i1 %tobool.not, label %if.end34.if.end41_crit_edge, label %if.then35

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then35:                                        ; preds = %if.end34
  %29 = ptrtoint ptr %s_namelen to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_namelen, align 4
  %call36 = tail call i32 @strnlen(ptr noundef %name.0, i32 noundef %30) #12
  %conv37 = zext i32 %inumber.0 to i64
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 8
  %33 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %pos3, align 8
  %call.i = tail call i32 %32(ptr noundef %ctx, ptr noundef %name.0, i32 noundef %call36, i64 noundef %34, i64 noundef %conv37, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i103 = icmp eq i32 %call.i, 0
  br i1 %cmp.i103, label %if.then35.if.end41_crit_edge, label %cleanup50

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end41:                                         ; preds = %if.then35.if.end41_crit_edge, %if.end34.if.end41_crit_edge
  %35 = ptrtoint ptr %pos3 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %pos3, align 8
  %add44 = add i64 %36, %conv42
  store i64 %add44, ptr %pos3, align 8
  %37 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_dirsize, align 4
  %add.ptr.i = getelementptr i8, ptr %p.0106, i32 %38
  %cmp21.not = icmp ugt ptr %add.ptr.i, %add.ptr19
  br i1 %cmp21.not, label %if.end41.for.end_crit_edge, label %if.end41.for.body23_crit_edge

if.end41.for.body23_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end41.for.end_crit_edge, %if.end15.for.end_crit_edge
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %for.inc56

cleanup50:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %cleanup58

for.inc56:                                        ; preds = %for.end, %for.body.for.inc56_crit_edge
  %inc = add nuw nsw i32 %n.0109, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc56.cleanup58_crit_edge, label %for.inc56.for.body_crit_edge

for.inc56.for.body_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc56.cleanup58_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup58

cleanup58:                                        ; preds = %for.inc56.cleanup58_crit_edge, %cleanup50, %if.end.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @minix_find_entry(ptr nocapture noundef readonly %dentry, ptr nocapture noundef writeonly %res_page) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %d_name, align 8
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %4 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %i_size.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %12 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size.i, align 8
  %14 = trunc i64 %13 to i32
  %conv.i = add i32 %14, 4095
  %15 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %res_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv.i)
  %cmp79.not = icmp ult i32 %conv.i, 4096
  br i1 %cmp79.not, label %entry.cleanup32_crit_edge, label %for.body.lr.ph

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

for.body.lr.ph:                                   ; preds = %entry
  %shr.i = lshr i32 %conv.i, 12
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %s_dirsize = getelementptr inbounds %struct.minix_sb_info, ptr %11, i32 0, i32 6
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %11, i32 0, i32 13
  %s_namelen = getelementptr inbounds %struct.minix_sb_info, ptr %11, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %for.body.lr.ph
  %n.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc30.for.body_crit_edge ]
  %16 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %17, i32 noundef %n.080, ptr noundef null, ptr noundef null) #9
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.for.inc30_crit_edge, label %if.then.i

for.body.for.inc30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc30

if.then.i:                                        ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 44) #9
  %18 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %19, 30
  %20 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %21 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp2.i.not.i.i = icmp eq i32 %21, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #9
  br label %if.end

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.else.i.i, %if.then.i.i
  %call7 = tail call ptr @page_address(ptr noundef %call.i.i) #9
  %conv.i65 = zext i32 %n.080 to i64
  %22 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size.i, align 8
  %shr.i67 = ashr i64 %23, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i67, i64 %conv.i65)
  %cmp.i68 = icmp eq i64 %shr.i67, %conv.i65
  %24 = trunc i64 %23 to i32
  %conv3.i = and i32 %24, 4095
  %last_byte.0.i = select i1 %cmp.i68, i32 %conv3.i, i32 4096
  %add.ptr = getelementptr i8, ptr %call7, i32 %last_byte.0.i
  %25 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s_dirsize, align 4
  %idx.neg = sub i32 0, %26
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %cmp11.not76 = icmp ugt ptr %call7, %add.ptr9
  br i1 %cmp11.not76, label %if.end.for.end_crit_edge, label %for.body12.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body12.lr.ph:                                 ; preds = %if.end
  %27 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %28)
  %cmp13 = icmp eq i16 %28, 3
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.body12.lr.ph
  %p.177 = phi ptr [ %call7, %for.body12.lr.ph ], [ %add.ptr.i, %for.inc.for.body12_crit_edge ]
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  %name16 = getelementptr inbounds %struct.minix3_dir_entry, ptr %p.177, i32 0, i32 1
  %29 = ptrtoint ptr %p.177 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %p.177, align 4
  br label %if.end21

if.else:                                          ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  %name17 = getelementptr inbounds %struct.minix_dir_entry, ptr %p.177, i32 0, i32 1
  %31 = ptrtoint ptr %p.177 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %p.177, align 2
  %conv20 = zext i16 %32 to i32
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then15
  %namx.0 = phi ptr [ %name16, %if.then15 ], [ %name17, %if.else ]
  %inumber.0 = phi i32 [ %30, %if.then15 ], [ %conv20, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inumber.0)
  %tobool.not = icmp eq i32 %inumber.0, 0
  br i1 %tobool.not, label %if.end21.for.inc_crit_edge, label %if.end23

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end23:                                         ; preds = %if.end21
  %33 = ptrtoint ptr %s_namelen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_namelen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %34)
  %cmp.i69 = icmp slt i32 %3, %34
  br i1 %cmp.i69, label %land.lhs.true.i, label %if.end23.namecompare.exit_crit_edge

if.end23.namecompare.exit_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %namecompare.exit

land.lhs.true.i:                                  ; preds = %if.end23
  %arrayidx.i = getelementptr i8, ptr %namx.0, i32 %3
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.namecompare.exit_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i.namecompare.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %namecompare.exit

namecompare.exit:                                 ; preds = %land.lhs.true.i.namecompare.exit_crit_edge, %if.end23.namecompare.exit_crit_edge
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %namx.0, i32 %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i.not, label %found, label %namecompare.exit.for.inc_crit_edge

namecompare.exit.for.inc_crit_edge:               ; preds = %namecompare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %namecompare.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end21.for.inc_crit_edge
  %add.ptr.i = getelementptr i8, ptr %p.177, i32 %26
  %cmp11.not = icmp ugt ptr %add.ptr.i, %add.ptr9
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %for.inc30

for.inc30:                                        ; preds = %for.end, %for.body.for.inc30_crit_edge
  %inc = add nuw nsw i32 %n.080, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc30.cleanup32_crit_edge, label %for.inc30.for.body_crit_edge

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc30.cleanup32_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

found:                                            ; preds = %namecompare.exit
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %res_page, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %found, %for.inc30.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.0 = phi ptr [ %p.177, %found ], [ null, %entry.cleanup32_crit_edge ], [ null, %for.inc30.cleanup32_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dir_put_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 55) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !29

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !30

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !31
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@dir_put_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !35

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %8) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @minix_add_link(ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %inode) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %name1 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name1, align 8
  %6 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %d_name, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size.i, align 8
  %14 = trunc i64 %13 to i32
  %conv.i = add i32 %14, 4095
  %shr.i = lshr i32 %conv.i, 12
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %s_dirsize = getelementptr inbounds %struct.minix_sb_info, ptr %11, i32 0, i32 6
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %11, i32 0, i32 13
  %s_namelen = getelementptr inbounds %struct.minix_sb_info, ptr %11, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc46.for.body_crit_edge, %entry
  %n.0218 = phi i32 [ 0, %entry ], [ %inc, %for.inc46.for.body_crit_edge ]
  %15 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %16, i32 noundef %n.0218, ptr noundef null, ptr noundef null) #9
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.thread181, label %if.then.i

if.then.i:                                        ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 44) #9
  %17 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %18, 30
  %19 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %20 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i.not.i.i = icmp eq i32 %20, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #9
  br label %if.end

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #9
  br label %if.end

cleanup.thread181:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call.i.i to i32
  br label %cleanup80

if.end:                                           ; preds = %if.else.i.i, %if.then.i.i
  %22 = ptrtoint ptr %call.i.i to i32
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 788) #9
  %23 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end._compound_head.exit.i_crit_edge, label %if.then.i.i153, !prof !29

if.end._compound_head.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i153:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %25, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i153, %if.end._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i153 ], [ %22, %if.end._compound_head.exit.i_crit_edge ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !29

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !36
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %26, i32 noundef 4) #9
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %26, align 4
  %and.i.i4.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i154_crit_edge

folio_flags.exit.i.i.if.then.i154_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i154

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %26, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #9, !srcloc !37
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !38
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i154_crit_edge

folio_trylock.exit.i.if.then.i154_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i154

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i154:                                     ; preds = %folio_trylock.exit.i.if.then.i154_crit_edge, %folio_flags.exit.i.i.if.then.i154_crit_edge
  tail call void @__folio_lock(ptr noundef %26) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i154, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call8 = tail call ptr @page_address(ptr noundef %call.i.i) #9
  %conv.i155 = zext i32 %n.0218 to i64
  %34 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_size.i, align 8
  %shr.i157 = ashr i64 %35, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i157, i64 %conv.i155)
  %cmp.i158 = icmp eq i64 %shr.i157, %conv.i155
  %36 = trunc i64 %35 to i32
  %conv3.i = and i32 %36, 4095
  %last_byte.0.i = select i1 %cmp.i158, i32 %conv3.i, i32 4096
  %add.ptr = getelementptr i8, ptr %call8, i32 %last_byte.0.i
  %add.ptr10 = getelementptr i8, ptr %call8, i32 4096
  %37 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %s_dirsize, align 4
  %idx.neg = sub i32 0, %38
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i32 %idx.neg
  %cmp13.not216 = icmp ugt ptr %call8, %add.ptr11
  br i1 %cmp13.not216, label %lock_page.exit.for.inc46_crit_edge, label %for.body14.lr.ph

lock_page.exit.for.inc46_crit_edge:               ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc46

for.body14.lr.ph:                                 ; preds = %lock_page.exit
  %39 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %40)
  %cmp15 = icmp eq i16 %40, 3
  br label %for.body14

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %for.body14.lr.ph
  %p.1217 = phi ptr [ %call8, %for.body14.lr.ph ], [ %add.ptr.i, %for.inc.for.body14_crit_edge ]
  br i1 %cmp15, label %if.end24, label %if.end24.thread

if.end24:                                         ; preds = %for.body14
  %name18 = getelementptr inbounds %struct.minix3_dir_entry, ptr %p.1217, i32 0, i32 1
  %41 = ptrtoint ptr %p.1217 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %p.1217, align 4
  %cmp25 = icmp eq ptr %p.1217, %add.ptr
  br i1 %cmp25, label %if.then32, label %if.end24.if.end37_crit_edge

if.end24.if.end37_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end24.thread:                                  ; preds = %for.body14
  %name20 = getelementptr inbounds %struct.minix_dir_entry, ptr %p.1217, i32 0, i32 1
  %43 = ptrtoint ptr %p.1217 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %p.1217, align 2
  %conv23 = zext i16 %44 to i32
  %cmp25163 = icmp eq ptr %p.1217, %add.ptr
  br i1 %cmp25163, label %if.else34, label %if.end24.thread.if.end37_crit_edge

if.end24.thread.if.end37_crit_edge:               ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then32:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %add.ptr, align 4
  br label %got_it

if.else34:                                        ; preds = %if.end24.thread
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %add.ptr, align 2
  br label %got_it

if.end37:                                         ; preds = %if.end24.thread.if.end37_crit_edge, %if.end24.if.end37_crit_edge
  %inumber.0166 = phi i32 [ %conv23, %if.end24.thread.if.end37_crit_edge ], [ %42, %if.end24.if.end37_crit_edge ]
  %namx.2164 = phi ptr [ %name20, %if.end24.thread.if.end37_crit_edge ], [ %name18, %if.end24.if.end37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inumber.0166)
  %tobool.not = icmp eq i32 %inumber.0166, 0
  br i1 %tobool.not, label %if.end37.got_it_crit_edge, label %if.end39

if.end37.got_it_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %got_it

if.end39:                                         ; preds = %if.end37
  %47 = ptrtoint ptr %s_namelen to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_namelen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %48)
  %cmp.i159 = icmp slt i32 %7, %48
  br i1 %cmp.i159, label %land.lhs.true.i, label %if.end39.namecompare.exit_crit_edge

if.end39.namecompare.exit_crit_edge:              ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %namecompare.exit

land.lhs.true.i:                                  ; preds = %if.end39
  %arrayidx.i = getelementptr i8, ptr %namx.2164, i32 %7
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.namecompare.exit_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.i.namecompare.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %namecompare.exit

namecompare.exit:                                 ; preds = %land.lhs.true.i.namecompare.exit_crit_edge, %if.end39.namecompare.exit_crit_edge
  %bcmp.i = tail call i32 @bcmp(ptr %5, ptr %namx.2164, i32 %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool1.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool1.not.i.not, label %namecompare.exit.out_unlock_crit_edge, label %namecompare.exit.for.inc_crit_edge

namecompare.exit.for.inc_crit_edge:               ; preds = %namecompare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

namecompare.exit.out_unlock_crit_edge:            ; preds = %namecompare.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

for.inc:                                          ; preds = %namecompare.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge
  %add.ptr.i = getelementptr i8, ptr %p.1217, i32 %38
  %cmp13.not = icmp ugt ptr %add.ptr.i, %add.ptr11
  br i1 %cmp13.not, label %for.inc.for.inc46_crit_edge, label %for.inc.for.body14_crit_edge

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.inc.for.inc46_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc46

for.inc46:                                        ; preds = %for.inc.for.inc46_crit_edge, %lock_page.exit.for.inc46_crit_edge
  tail call void @unlock_page(ptr noundef %call.i.i) #9
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  %inc = add nuw nsw i32 %n.0218, 1
  %exitcond = icmp eq i32 %n.0218, %shr.i
  br i1 %exitcond, label %do.body, label %for.inc46.for.body_crit_edge

for.inc46.for.body_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/minix/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #9, !srcloc !39
  unreachable

got_it:                                           ; preds = %if.end37.got_it_crit_edge, %if.else34, %if.then32
  %p.1217223 = phi ptr [ %add.ptr, %if.then32 ], [ %add.ptr, %if.else34 ], [ %p.1217, %if.end37.got_it_crit_edge ]
  %namx.3.ph = phi ptr [ %name18, %if.then32 ], [ %name20, %if.else34 ], [ %namx.2164, %if.end37.got_it_crit_edge ]
  %index.i = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1, i32 0, i32 2
  %51 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %52, 12
  %add.ptr52 = getelementptr i8, ptr %p.1217223, i32 %shl.i
  %call53 = tail call ptr @page_address(ptr noundef %call.i.i) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr52 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call53 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv54 = sext i32 %sub.ptr.sub to i64
  %53 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_dirsize, align 4
  %call56 = tail call i32 @minix_prepare_chunk(ptr noundef %call.i.i, i64 noundef %conv54, i32 noundef %54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %got_it.out_unlock_crit_edge

got_it.out_unlock_crit_edge:                      ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end59:                                         ; preds = %got_it
  %55 = call ptr @memcpy(ptr %namx.3.ph, ptr %5, i32 %7)
  %56 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %57)
  %cmp62 = icmp eq i16 %57, 3
  %add.ptr65 = getelementptr i8, ptr %namx.3.ph, i32 %7
  %58 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_dirsize, align 4
  br i1 %cmp62, label %if.then64, label %if.else69

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 -4, %7
  %sub67 = add i32 %sub, %59
  %60 = call ptr @memset(ptr %add.ptr65, i32 0, i32 %sub67)
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %61 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %i_ino, align 8
  %63 = ptrtoint ptr %p.1217223 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %p.1217223, align 4
  br label %if.end77

if.else69:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %sub72 = sub i32 -2, %7
  %sub73 = add i32 %sub72, %59
  %64 = call ptr @memset(ptr %add.ptr65, i32 0, i32 %sub73)
  %i_ino74 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %65 = ptrtoint ptr %i_ino74 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_ino74, align 8
  %conv75 = trunc i32 %66 to i16
  %67 = ptrtoint ptr %p.1217223 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv75, ptr %p.1217223, align 2
  br label %if.end77

if.end77:                                         ; preds = %if.else69, %if.then64
  %68 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_dirsize, align 4
  %call79 = tail call fastcc i32 @dir_commit_chunk(ptr noundef %call.i.i, i64 noundef %conv54, i32 noundef %69)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #9
  %70 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %71 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #9
  br label %out_put

out_put:                                          ; preds = %out_unlock, %if.end77
  %err.2 = phi i32 [ %err.4, %out_unlock ], [ %call79, %if.end77 ]
  call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %cleanup80

out_unlock:                                       ; preds = %got_it.out_unlock_crit_edge, %namecompare.exit.out_unlock_crit_edge
  %err.4 = phi i32 [ %call56, %got_it.out_unlock_crit_edge ], [ -17, %namecompare.exit.out_unlock_crit_edge ]
  tail call void @unlock_page(ptr noundef %call.i.i) #9
  br label %out_put

cleanup80:                                        ; preds = %out_put, %cleanup.thread181
  %retval.0 = phi i32 [ %err.2, %out_put ], [ %21, %cleanup.thread181 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @minix_prepare_chunk(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dir_commit_chunk(ptr noundef %page, i64 noundef %pos, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @block_write_end(ptr noundef null, ptr noundef %1, i64 noundef %pos, i32 noundef %len, i32 noundef %len, ptr noundef %page, ptr noundef null) #9
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %5)
  %cmp = icmp sgt i64 %add, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %9, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then.i_size_write.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %11 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !41
  %15 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %20, ptrtoint (ptr @lockdep_recursion to i32)
  %21 = inttoptr i32 %add.i28.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !42
  %24 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i7.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i29.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %32 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i9.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %35, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !43
  %36 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %39, ptrtoint (ptr @hardirqs_enabled to i32)
  %40 = inttoptr i32 %add47.i.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !44
  %43 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i12.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %46, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool54.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !29

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %47 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %48, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %49 = tail call ptr @llvm.returnaddress(i32 0) #9
  %50 = ptrtoint ptr %49 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %50) #9
  %51 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add, ptr %i_size, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %50) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !46
  %52 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !47
  %54 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i26.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  tail call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #9
  br label %if.end

if.end:                                           ; preds = %i_size_write.exit, %entry.if.end_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %58 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_flags, align 4
  %and = and i32 %61, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %62 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_flags, align 4
  %and5 = and i32 %63, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %64 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %and.i.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i23 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i23, label %if.end.i.i, label %if.then.i.i25, !prof !29

if.then.i.i25:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i24 = add i32 %66, -1
  br label %write_one_page.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %page to i32
  br label %write_one_page.exit

write_one_page.exit:                              ; preds = %if.end.i.i, %if.then.i.i25
  %retval.0.i.i = phi i32 [ %sub.i.i24, %if.then.i.i25 ], [ %67, %if.end.i.i ]
  %68 = inttoptr i32 %retval.0.i.i to ptr
  %call1.i = tail call i32 @folio_write_one(ptr noundef %68) #9
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef %page) #9
  br label %if.end9

if.end9:                                          ; preds = %if.else, %write_one_page.exit
  %err.0 = phi i32 [ %call1.i, %write_one_page.exit ], [ 0, %if.else ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @minix_delete_entry(ptr noundef %de, ptr noundef %page) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @page_address(ptr noundef %page) #9
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %5, 12
  %add.ptr = getelementptr i8, ptr %de, i32 %shl.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sext i32 %sub.ptr.sub to i64
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_dirsize = getelementptr inbounds %struct.minix_sb_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_dirsize, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 788) #9
  %12 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !29

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !29

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !36
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %16, i32 noundef 4) #9
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %16, align 4
  %and.i.i4.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %16, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #9, !srcloc !37
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !38
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %16) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call3 = tail call i32 @minix_prepare_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %lock_page.exit
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %9, i32 0, i32 13
  %23 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %24)
  %cmp6 = icmp eq i16 %24, 3
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %de, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %de to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %de, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %call11 = tail call fastcc i32 @dir_commit_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef %11)
  br label %if.end13

if.else12:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef %page) #9
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.end
  %err.0 = phi i32 [ %call11, %if.end ], [ %call3, %if.else12 ]
  tail call fastcc void @dir_put_page(ptr noundef %page)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #9
  %27 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %28 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @minix_make_empty(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %dir) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef 0, i32 noundef 7, i32 noundef %3) #9
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_dirsize = getelementptr inbounds %struct.minix_sb_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_dirsize, align 4
  %mul = shl i32 %9, 1
  %call2 = tail call i32 @minix_prepare_chunk(ptr noundef nonnull %call.i.i, i64 noundef 0, i32 noundef %mul) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #9
  br label %fail

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %10, 512
  %11 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !48
  %15 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i1.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 213
  %19 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %20, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  %call.i.i65 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i.i, i32 noundef %or.i) #9
  %21 = call ptr @memset(ptr %call.i.i65, i32 0, i32 4096)
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %7, i32 0, i32 13
  %22 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %23)
  %cmp = icmp eq i16 %23, 3
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call.i.i65 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call.i.i65, align 4
  %name = getelementptr inbounds %struct.minix3_dir_entry, ptr %call.i.i65, i32 0, i32 1
  %27 = ptrtoint ptr %name to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 11776, ptr %name, align 1
  %28 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_dirsize, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i.i65, i32 %29
  %i_ino12 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %30 = ptrtoint ptr %i_ino12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i_ino12, align 8
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %add.ptr.i, align 4
  %name14 = getelementptr inbounds %struct.minix3_dir_entry, ptr %add.ptr.i, i32 0, i32 1
  br label %do.end

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %conv18 = trunc i32 %25 to i16
  %33 = ptrtoint ptr %call.i.i65 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv18, ptr %call.i.i65, align 2
  %name20 = getelementptr inbounds %struct.minix_dir_entry, ptr %call.i.i65, i32 0, i32 1
  %34 = ptrtoint ptr %name20 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 11776, ptr %name20, align 1
  %35 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_dirsize, align 4
  %add.ptr.i67 = getelementptr i8, ptr %call.i.i65, i32 %36
  %i_ino24 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %37 = ptrtoint ptr %i_ino24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i_ino24, align 8
  %conv25 = trunc i32 %38 to i16
  %39 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv25, ptr %add.ptr.i67, align 2
  %name27 = getelementptr inbounds %struct.minix_dir_entry, ptr %add.ptr.i67, i32 0, i32 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then8
  %name27.sink = phi ptr [ %name27, %if.else ], [ %name14, %if.then8 ]
  %40 = call ptr @memcpy(ptr %name27.sink, ptr @.str.1, i32 3)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i65) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %41 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i1.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 213
  %45 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %46, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !51
  %47 = tail call i32 @llvm.read_register.i32(metadata !19) #9
  %and.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %51 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_dirsize, align 4
  %mul35 = shl i32 %52, 1
  %call36 = tail call fastcc i32 @dir_commit_chunk(ptr noundef nonnull %call.i.i, i64 noundef 0, i32 noundef %mul35)
  br label %fail

fail:                                             ; preds = %do.end, %if.then4
  %err.0 = phi i32 [ %call2, %if.then4 ], [ %call36, %do.end ]
  %53 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %and.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !29

if.then.i.i:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i68 = add i32 %55, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i68, %if.then.i.i ], [ %56, %if.end.i.i ]
  %57 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %58 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i.i.i.i = icmp eq i32 %59, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !30

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %57, ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !31
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %60, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@minix_make_empty, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !35

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %57, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %57) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %err.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %err.0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @minix_empty_dir(ptr nocapture noundef readonly %inode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = add i32 %2, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv.i)
  %cmp88.not = icmp ult i32 %conv.i, 4096
  br i1 %cmp88.not, label %entry.cleanup53_crit_edge, label %for.body.lr.ph

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

for.body.lr.ph:                                   ; preds = %entry
  %shr.i = lshr i32 %conv.i, 12
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %s_dirsize = getelementptr inbounds %struct.minix_sb_info, ptr %6, i32 0, i32 6
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %6, i32 0, i32 13
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc51.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc51.for.body_crit_edge ]
  %7 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %8, i32 noundef %i.089, ptr noundef null, ptr noundef null) #9
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.for.inc51_crit_edge, label %if.then.i

for.body.for.inc51_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc51

if.then.i:                                        ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 44) #9
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %10, 30
  %11 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %12 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp2.i.not.i.i = icmp eq i32 %12, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #9
  br label %if.end

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.else.i.i, %if.then.i.i
  %call4 = tail call ptr @page_address(ptr noundef %call.i.i) #9
  %conv.i81 = zext i32 %i.089 to i64
  %13 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size.i, align 8
  %shr.i83 = ashr i64 %14, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i83, i64 %conv.i81)
  %cmp.i84 = icmp eq i64 %shr.i83, %conv.i81
  %15 = trunc i64 %14 to i32
  %conv3.i = and i32 %15, 4095
  %last_byte.0.i = select i1 %cmp.i84, i32 %conv3.i, i32 4096
  %add.ptr = getelementptr i8, ptr %call4, i32 %last_byte.0.i
  %16 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %s_dirsize, align 4
  %idx.neg = sub i32 0, %17
  %add.ptr6 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %cmp8.not86 = icmp ugt ptr %call4, %add.ptr6
  br i1 %cmp8.not86, label %if.end.for.end_crit_edge, label %for.body9.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body9.lr.ph:                                  ; preds = %if.end
  %18 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp10 = icmp eq i16 %19, 3
  br label %for.body9

for.body9:                                        ; preds = %for.inc.for.body9_crit_edge, %for.body9.lr.ph
  %p.087 = phi ptr [ %call4, %for.body9.lr.ph ], [ %add.ptr.i, %for.inc.for.body9_crit_edge ]
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  %name13 = getelementptr inbounds %struct.minix3_dir_entry, ptr %p.087, i32 0, i32 1
  %20 = ptrtoint ptr %p.087 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %p.087, align 4
  br label %if.end19

if.else:                                          ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  %name15 = getelementptr inbounds %struct.minix_dir_entry, ptr %p.087, i32 0, i32 1
  %22 = ptrtoint ptr %p.087 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %p.087, align 2
  %conv18 = zext i16 %23 to i32
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then12
  %name.0 = phi ptr [ %name13, %if.then12 ], [ %name15, %if.else ]
  %inumber.0 = phi i32 [ %21, %if.then12 ], [ %conv18, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inumber.0)
  %cmp20.not = icmp eq i32 %inumber.0, 0
  br i1 %cmp20.not, label %if.end19.for.inc_crit_edge, label %if.then22

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then22:                                        ; preds = %if.end19
  %24 = ptrtoint ptr %name.0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %name.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %25)
  %cmp24.not = icmp eq i8 %25, 46
  br i1 %cmp24.not, label %if.end27, label %if.then22.not_empty_crit_edge

if.then22.not_empty_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.end27:                                         ; preds = %if.then22
  %arrayidx28 = getelementptr i8, ptr %name.0, i32 1
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %27, label %if.end27.not_empty_crit_edge [
    i8 0, label %if.then29
    i8 46, label %if.else40
  ]

if.end27.not_empty_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.then29:                                        ; preds = %if.end27
  %29 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inumber.0, i32 %30)
  %cmp30.not = icmp eq i32 %inumber.0, %30
  br i1 %cmp30.not, label %if.then29.for.inc_crit_edge, label %if.then29.not_empty_crit_edge

if.then29.not_empty_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.then29.for.inc_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else40:                                        ; preds = %if.end27
  %arrayidx41 = getelementptr i8, ptr %name.0, i32 2
  %31 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool42.not = icmp eq i8 %32, 0
  br i1 %tobool42.not, label %if.else40.for.inc_crit_edge, label %if.else40.not_empty_crit_edge

if.else40.not_empty_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.else40.for.inc_crit_edge:                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.else40.for.inc_crit_edge, %if.then29.for.inc_crit_edge, %if.end19.for.inc_crit_edge
  %add.ptr.i = getelementptr i8, ptr %p.087, i32 %17
  %cmp8.not = icmp ugt ptr %add.ptr.i, %add.ptr6
  br i1 %cmp8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body9_crit_edge

for.inc.for.body9_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body9

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %for.inc51

for.inc51:                                        ; preds = %for.end, %for.body.for.inc51_crit_edge
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc51.cleanup53_crit_edge, label %for.inc51.for.body_crit_edge

for.inc51.for.body_crit_edge:                     ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc51.cleanup53_crit_edge:                    ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

not_empty:                                        ; preds = %if.else40.not_empty_crit_edge, %if.then29.not_empty_crit_edge, %if.end27.not_empty_crit_edge, %if.then22.not_empty_crit_edge
  tail call fastcc void @dir_put_page(ptr noundef %call.i.i)
  br label %cleanup53

cleanup53:                                        ; preds = %not_empty, %for.inc51.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.0 = phi i32 [ 0, %not_empty ], [ 1, %entry.cleanup53_crit_edge ], [ 1, %for.inc51.cleanup53_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @minix_set_link(ptr noundef %de, ptr noundef %page, ptr nocapture noundef readonly %inode) local_unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %9, 12
  %add.ptr = getelementptr i8, ptr %de, i32 %shl.i
  %call2 = tail call ptr @page_address(ptr noundef %page) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sext i32 %sub.ptr.sub to i64
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 788) #9
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !29

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %15 = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %and.i.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !29

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !36
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %14, i32 noundef 4) #9
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %14, align 4
  %and.i.i4.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %14, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #9, !srcloc !37
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !38
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %14) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %s_dirsize = getelementptr inbounds %struct.minix_sb_info, ptr %7, i32 0, i32 6
  %21 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %s_dirsize, align 4
  %call3 = tail call i32 @minix_prepare_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else15

if.then:                                          ; preds = %lock_page.exit
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %7, i32 0, i32 13
  %23 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %24)
  %cmp6 = icmp eq i16 %24, 3
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %de, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv11 = trunc i32 %26 to i16
  %28 = ptrtoint ptr %de to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv11, ptr %de, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then8
  %29 = ptrtoint ptr %s_dirsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_dirsize, align 4
  %call14 = tail call fastcc i32 @dir_commit_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef %30)
  br label %if.end16

if.else15:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef %page) #9
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.end
  tail call fastcc void @dir_put_page(ptr noundef %page)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #9
  %31 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %32 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @minix_dotdot(ptr nocapture noundef readonly %dir, ptr nocapture noundef writeonly %p) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef null) #9
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 44) #9
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i.i, align 4
  %shr.i.i.i = lshr i32 %3, 30
  %4 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %shr.i.i.i, label %if.then.i.if.then.i.i_crit_edge [
    i32 2, label %if.then.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i.if.else.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.if.then.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.not.i.i = icmp eq i32 %5, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #9
  br label %if.then

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #9
  br label %if.then

if.then:                                          ; preds = %if.else.i.i, %if.then.i.i
  %i_sb8 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb8, align 4
  %s_fs_info.i9 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i9, align 16
  %call3 = tail call ptr @page_address(ptr noundef %call.i.i) #9
  %s_dirsize.i = getelementptr inbounds %struct.minix_sb_info, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %s_dirsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_dirsize.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call3, i32 %11
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %p, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %de.0 = phi ptr [ %add.ptr.i, %if.then ], [ null, %entry.if.end_crit_edge ]
  ret ptr %de.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @minix_inode_by_name(ptr nocapture noundef readonly %dentry) local_unnamed_addr #1 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !52
  %call = call ptr @minix_find_entry(ptr noundef %dentry, ptr noundef nonnull %page)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %page, align 4
  %mapping1 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mapping1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  %s_version = getelementptr inbounds %struct.minix_sb_info, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %s_version to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %s_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %12)
  %cmp = icmp eq i16 %12, 3
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %call, align 2
  %conv7 = zext i16 %16 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %res.0 = phi i32 [ %14, %if.then4 ], [ %conv7, %if.else ]
  tail call fastcc void @dir_put_page(ptr noundef %2)
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %res.1 = phi i32 [ %res.0, %if.end ], [ 0, %entry.if.end8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #9
  ret i32 %res.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_write_one(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17}
!llvm.named.register.sp = !{!19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @minix_dir_operations, !1, !"minix_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/minix/dir.c", i32 22, i32 30}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/minix/dir.c", i32 337, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/minix/dir.c", i32 340, i32 21}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/mm.h", i32 717, i32 2}
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
!31 = !{i64 2153164653, i64 2153165136, i64 2153164690, i64 2153164746, i64 2153164780, i64 2153164804, i64 2153164845, i64 2153164866, i64 2153164894, i64 2153164928}
!32 = !{i64 2148755313}
!33 = !{i64 2148670022, i64 2148670054, i64 2148670083, i64 2148670117, i64 2148670148, i64 2148670171}
!34 = !{i64 2148755542}
!35 = !{i64 2148491435, i64 2148491440, i64 2148491453, i64 2148491497, i64 2148491531, i64 2148491552}
!36 = !{i64 2150575582, i64 2150576073, i64 2150575619, i64 2150575675, i64 2150575709, i64 2150575733, i64 2150575774, i64 2150575795, i64 2150575823, i64 2150575857}
!37 = !{i64 2148675695, i64 2148675727, i64 2148675756, i64 2148675790, i64 2148675821, i64 2148675844}
!38 = !{i64 2148764800}
!39 = !{i64 2154855453, i64 2154855932, i64 2154855490, i64 2154855546, i64 2154855580, i64 2154855604, i64 2154855645, i64 2154855666, i64 2154855694, i64 2154855728}
!40 = !{i64 2152511599}
!41 = !{i64 2149987904}
!42 = !{i64 2149992838}
!43 = !{i64 2150014556}
!44 = !{i64 2150019450}
!45 = !{i64 2150095977}
!46 = !{i64 2150096302}
!47 = !{i64 2152523461}
!48 = !{i64 2153688589}
!49 = !{i64 2152182133}
!50 = !{i64 2152182340}
!51 = !{i64 2153691360}
!52 = !{!"auto-init"}
