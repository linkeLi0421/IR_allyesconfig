; ModuleID = '/llk/IR_all_yes/fs/nilfs2/dir.c_pt.bc'
source_filename = "../fs/nilfs2/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { ptr }
%struct.nilfs_dir_entry = type { i64, i16, i8, i8, [255 x i8], i8 }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nilfs_transaction_info = type { i32, ptr, i16, i16 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.dir_context = type { ptr, i64 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__func__.nilfs_find_entry = private unnamed_addr constant [17 x i8] c"nilfs_find_entry\00", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zero-length directory entry\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dir %lu size %lld exceeds block count %llu\00", [53 x i8] zeroinitializer }, align 32
@__func__.nilfs_add_link = private unnamed_addr constant [15 x i8] c"nilfs_add_link\00", align 1
@__func__.nilfs_delete_entry = private unnamed_addr constant [19 x i8] c"nilfs_delete_entry\00", align 1
@__func__.nilfs_empty_dir = private unnamed_addr constant [16 x i8] c"nilfs_empty_dir\00", align 1
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"zero-length directory entry (kaddr=%p, de=%p)\00", [50 x i8] zeroinitializer }, align 32
@nilfs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nilfs_readdir, ptr null, ptr @nilfs_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @nilfs_sync_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__func__.nilfs_check_page = private unnamed_addr constant [17 x i8] c"nilfs_check_page\00", align 1
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"size of directory #%lu is not a multiple of chunk size\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rec_len is smaller than minimal\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unaligned directory entry\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rec_len is too small for name_len\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"directory entry across blocks\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"bad entry in directory #%lu: %s - offset=%lu, inode=%lu, rec_len=%d, name_len=%d\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"entry in directory #%lu spans the page boundary offset=%lu, inode=%lu\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@nilfs_type_by_mode = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\00\05\03\00\02\00\04\00\01\00\07\00\06\00\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/nilfs2/dir.c\00", [16 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__func__.nilfs_readdir = private unnamed_addr constant [14 x i8] c"nilfs_readdir\00", align 1
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad page in #%lu\00", [47 x i8] zeroinitializer }, align 32
@nilfs_filetype_table = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\08\04\02\06\01\0C\0A", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 357, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 372, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 640, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"nilfs_dir_operations\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 669, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 44, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 156, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 161, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 164, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 167, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 170, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 172, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 180, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 430, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 416, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 717, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 788, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 260, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"nilfs_type_by_mode\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 246, i32 1 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 112, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 271, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 281, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"nilfs_filetype_table\00", align 1
@___asan_gen_.96 = private constant [19 x i8] c"../fs/nilfs2/dir.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 233, i32 1 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.4, ptr @nilfs_dir_operations, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @nilfs_type_by_mode, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @nilfs_filetype_table], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_type_by_mode to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nilfs_filetype_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_find_entry(ptr nocapture noundef %dir, ptr nocapture noundef readonly %qstr, ptr nocapture noundef writeonly %res_page) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.qstr, ptr %qstr, i32 0, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %qstr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qstr, align 8
  %add2 = add i32 %3, 19
  %and = and i32 %add2, -8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %4 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size.i, align 8
  %6 = trunc i64 %5 to i32
  %conv.i = add i32 %6, 4095
  %shr.i = lshr i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv.i)
  %cmp = icmp ult i32 %conv.i, 4096
  br i1 %cmp, label %entry.cleanup38_crit_edge, label %if.end

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %res_page, align 4
  %i_dir_start_lookup = getelementptr i8, ptr %dir, i32 -376
  %8 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_dir_start_lookup, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr.i)
  %cmp4.not = icmp ult i32 %9, %shr.i
  %spec.store.select = select i1 %cmp4.not, i32 %9, i32 0
  %i_blocks = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %n.0 = phi i32 [ %spec.store.select, %if.end ], [ %spec.store.select47, %do.cond.do.body_crit_edge ]
  %call7 = tail call fastcc ptr @nilfs_get_page(ptr noundef %dir, i32 noundef %n.0)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body.if.end21_crit_edge, label %if.then9

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then9:                                         ; preds = %do.body
  %call10 = tail call ptr @page_address(ptr noundef %call7) #9
  %10 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size.i, align 8
  %conv.i81 = trunc i64 %11 to i32
  %shl.neg.i = mul i32 %n.0, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i81
  %12 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #9
  %sub = sub i32 %12, %and
  %add.ptr = getelementptr i8, ptr %call10, i32 %sub
  %cmp12.not104 = icmp ugt ptr %call10, %add.ptr
  br i1 %cmp12.not104, label %if.then9.while.end_crit_edge, label %if.then9.while.body_crit_edge

if.then9.while.body_crit_edge:                    ; preds = %if.then9
  br label %while.body

if.then9.while.end_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %if.then9.while.body_crit_edge
  %de.1105 = phi ptr [ %add.ptr.i83, %if.end19.while.body_crit_edge ], [ %call10, %if.then9.while.body_crit_edge ]
  %rec_len = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.1105, i32 0, i32 1
  %13 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rec_len, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp13 = icmp eq i16 %14, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %15 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %16, ptr noundef nonnull @__func__.nilfs_find_entry, ptr noundef nonnull @.str) #9
  tail call fastcc void @nilfs_put_page(ptr noundef %call7)
  br label %cleanup38

if.end16:                                         ; preds = %while.body
  %name_len.i = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.1105, i32 0, i32 2
  %17 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %name_len.i, align 2
  %conv.i82 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i82)
  %cmp.not.i = icmp eq i32 %3, %conv.i82
  br i1 %cmp.not.i, label %if.end.i, label %if.end16.if.end19_crit_edge

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end.i:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %de.1105 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %de.1105, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.not.i = icmp eq i64 %20, 0
  br i1 %tobool.not.i, label %if.end.i.if.end19_crit_edge, label %nilfs_match.exit

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

nilfs_match.exit:                                 ; preds = %if.end.i
  %name4.i = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.1105, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %name4.i, i32 %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i.not, label %found, label %nilfs_match.exit.if.end19_crit_edge

nilfs_match.exit.if.end19_crit_edge:              ; preds = %nilfs_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end19:                                         ; preds = %nilfs_match.exit.if.end19_crit_edge, %if.end.i.if.end19_crit_edge, %if.end16.if.end19_crit_edge
  %21 = tail call i16 @llvm.bswap.i16(i16 %14) #9
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i83 = getelementptr i8, ptr %de.1105, i32 %conv.i.i
  %cmp12.not = icmp ugt ptr %add.ptr.i83, %add.ptr
  br i1 %cmp12.not, label %if.end19.while.end_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end19.while.end_crit_edge, %if.then9.while.end_crit_edge
  tail call fastcc void @nilfs_put_page(ptr noundef %call7)
  br label %if.end21

if.end21:                                         ; preds = %while.end, %do.body.if.end21_crit_edge
  %inc = add i32 %n.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %shr.i)
  %cmp22.not = icmp ult i32 %inc, %shr.i
  %spec.store.select47 = select i1 %cmp22.not, i32 %inc, i32 0
  %conv26 = zext i32 %spec.store.select47 to i64
  %22 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_blocks, align 8
  %shr = lshr i64 %23, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv26)
  %cmp27 = icmp ult i64 %shr, %conv26
  br i1 %cmp27, label %if.then31, label %do.cond, !prof !71

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb32 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %24 = ptrtoint ptr %i_sb32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb32, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino, align 8
  %28 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_size.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %25, ptr noundef nonnull @__func__.nilfs_find_entry, ptr noundef nonnull @.str.1, i32 noundef %27, i64 noundef %29, i64 noundef %23) #9
  br label %cleanup38

do.cond:                                          ; preds = %if.end21
  %cmp35.not = icmp eq i32 %spec.store.select47, %spec.store.select
  br i1 %cmp35.not, label %do.cond.cleanup38_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.cond.cleanup38_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

found:                                            ; preds = %nilfs_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7, ptr %res_page, align 4
  %31 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %n.0, ptr %i_dir_start_lookup, align 8
  br label %cleanup38

cleanup38:                                        ; preds = %found, %do.cond.cleanup38_crit_edge, %if.then31, %if.then15, %entry.cleanup38_crit_edge
  %retval.0 = phi ptr [ %de.1105, %found ], [ null, %entry.cleanup38_crit_edge ], [ null, %if.then31 ], [ null, %if.then15 ], [ null, %do.cond.cleanup38_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nilfs_get_page(ptr nocapture noundef readonly %dir, i32 noundef %n) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %1, i32 noundef %n, ptr noundef null, ptr noundef null) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 44) #9
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %shr.i.i26 = lshr i32 %3, 30
  %4 = zext i32 %shr.i.i26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i26, label %if.then.if.then.i27_crit_edge [
    i32 2, label %if.then.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.if.then.i27_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i27

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %5 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.i.not.i = icmp eq i32 %5, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i27_crit_edge

is_highmem_idx.exit.i.if.then.i27_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i27

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then.i27:                                      ; preds = %is_highmem_idx.exit.i.if.then.i27_crit_edge, %if.then.if.then.i27_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call.i) #9
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call.i) #9
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i27
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageChecked.exit, !prof !71

if.then.i:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !72
  unreachable

PageChecked.exit:                                 ; preds = %kmap.exit
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %call.i, align 4
  %10 = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then7, label %PageChecked.exit.cleanup_crit_edge, !prof !71

PageChecked.exit.cleanup_crit_edge:               ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %PageChecked.exit
  %11 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i22 = icmp eq i32 %17, -1
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %11, align 4
  %and.i16.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i22, label %if.then.i23, label %do.end10.i, !prof !71

if.then.i23:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !73

if.then.i19.i:                                    ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i18.i = add i32 %19, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %20, %if.end.i20.i ]
  %21 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !74
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !73

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i25.i = add i32 %19, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %22, %if.end.i27.i ]
  %23 = inttoptr i32 %retval.0.i28.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not = icmp eq i32 %26, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %PageError.exit.fail_crit_edge

PageError.exit.fail_crit_edge:                    ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false:                                    ; preds = %PageError.exit
  %call10 = tail call fastcc zeroext i1 @nilfs_check_page(ptr noundef %call.i)
  br i1 %call10, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.fail_crit_edge

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fail:                                             ; preds = %lor.lhs.false.fail_crit_edge, %PageError.exit.fail_crit_edge
  tail call fastcc void @nilfs_put_page(ptr noundef %call.i)
  br label %cleanup

cleanup:                                          ; preds = %fail, %lor.lhs.false.cleanup_crit_edge, %PageChecked.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %fail ], [ %call.i, %PageChecked.exit.cleanup_crit_edge ], [ %call.i, %lor.lhs.false.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nilfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_put_page(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
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
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

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
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !71

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.17) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_put_page, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nilfs_dotdot(ptr nocapture noundef readonly %dir, ptr nocapture noundef writeonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nilfs_get_page(ptr noundef %dir, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call ptr @page_address(ptr noundef %call) #9
  %rec_len.i = getelementptr inbounds %struct.nilfs_dir_entry, ptr %call2, i32 0, i32 1
  %0 = ptrtoint ptr %rec_len.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rec_len.i, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #9
  %conv.i.i = zext i16 %2 to i32
  %add.ptr.i = getelementptr i8, ptr %call2, i32 %conv.i.i
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %p, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %de.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr.i, %if.then ]
  ret ptr %de.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_inode_by_name(ptr nocapture noundef %dir, ptr nocapture noundef readonly %qstr) local_unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !80
  %call = call ptr @nilfs_find_entry(ptr noundef %dir, ptr noundef %qstr, ptr noundef nonnull %page)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %call, align 8
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  %conv = trunc i64 %3 to i32
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 55) #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr.i.i = lshr i32 %7, 30
  %8 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr.i.i, label %if.then.kunmap.exit_crit_edge [
    i32 2, label %if.then.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.kunmap.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %9 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp2.i.not.i = icmp eq i32 %9, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %5) #9
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %if.then.kunmap.exit_crit_edge
  %10 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %15 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !71

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %14, ptr noundef nonnull @.str.17) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_inode_by_name, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %14, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end_crit_edge

folio_put_testzero.exit.i.i.if.end_crit_edge:     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %14) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %res.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %conv, %folio_put_testzero.exit.i.i.if.end_crit_edge ], [ %conv, %if.then.i4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #9
  ret i32 %res.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nilfs_set_link(ptr noundef %dir, ptr noundef %de, ptr noundef %page, ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @page_address(ptr noundef %page) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %de to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %rec_len = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de, i32 0, i32 1
  %0 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rec_len, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #9
  %conv.i = zext i16 %2 to i32
  %mapping2 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %mapping2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mapping2, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 788) #9
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %10 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.19) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #9
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %and.i.i4.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #9, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
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
  tail call void @__folio_lock(ptr noundef %9) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %17 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %conv.i27 = zext i32 %sub.ptr.sub to i64
  %add.i = add nuw nsw i64 %shl.i.i, %conv.i27
  %call1.i = tail call i32 @__block_write_begin(ptr noundef %page, i64 noundef %add.i, i32 noundef %conv.i, ptr noundef nonnull @nilfs_get_block) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %do.end11, label %do.body6, !prof !73

do.body6:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 427, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable

do.end11:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add = add i32 %sub.ptr.sub, %conv.i
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %19 to i64
  %20 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %21 = ptrtoint ptr %de to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %de, align 8
  %22 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %inode, align 8
  %24 = lshr i16 %23, 12
  %25 = zext i16 %24 to i32
  %arrayidx.i = getelementptr [15 x i8], ptr @nilfs_type_by_mode, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %file_type.i = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de, i32 0, i32 3
  %28 = ptrtoint ptr %file_type.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %file_type.i, align 1
  tail call fastcc void @nilfs_commit_chunk(ptr noundef %page, ptr noundef %4, i32 noundef %sub.ptr.sub, i32 noundef %add)
  tail call fastcc void @nilfs_put_page(ptr noundef %page)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #9
  %29 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %30 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nilfs_commit_chunk(ptr noundef %page, ptr noundef %mapping, i32 noundef %from, i32 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %conv.i = zext i32 %3 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 12
  %conv = zext i32 %from to i64
  %add = add nuw nsw i64 %shl.i, %conv
  %sub = sub i32 %to, %from
  %call1 = tail call i32 @nilfs_page_count_clean_buffers(ptr noundef %page, i32 noundef %from, i32 noundef %to) #9
  %call2 = tail call i32 @block_write_end(ptr noundef null, ptr noundef %mapping, i64 noundef %add, i32 noundef %sub, i32 noundef %sub, ptr noundef %page, ptr noundef null) #9
  %conv3 = zext i32 %call2 to i64
  %add4 = add nuw nsw i64 %add, %conv3
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add4, i64 %5)
  %cmp = icmp sgt i64 %add4, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %9, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then.i_size_write.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %11 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %15 = tail call i32 @llvm.read_register.i32(metadata !61) #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %24 = tail call i32 @llvm.read_register.i32(metadata !61) #9
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
  %28 = tail call i32 @llvm.read_register.i32(metadata !61) #9
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
  %32 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i9.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %35, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !89
  %43 = tail call i32 @llvm.read_register.i32(metadata !61) #9
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
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !73

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %47 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %48, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %49 = tail call ptr @llvm.returnaddress(i32 0) #9
  %50 = ptrtoint ptr %49 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %50) #9
  %51 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add4, ptr %i_size, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %50) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !91
  %52 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !92
  %54 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i26.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  br label %if.end

if.end:                                           ; preds = %i_size_write.exit, %entry.if.end_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
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
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then10_crit_edge

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %62 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_flags, align 4
  %and8 = and i32 %63, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %64 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 146
  %68 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %journal_info.i, align 4
  %ti_flags.i = getelementptr inbounds %struct.nilfs_transaction_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %ti_flags.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %ti_flags.i, align 4
  %72 = or i16 %71, 2
  store i16 %72, ptr %ti_flags.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false.if.end11_crit_edge
  %call12 = tail call i32 @nilfs_set_file_dirty(ptr noundef %1, i32 noundef %call1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.end28_crit_edge, label %do.end, !prof !73

if.end11.if.end28_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 112, i32 noundef 9, ptr noundef null) #9
  br label %if.end28

if.end28:                                         ; preds = %do.end, %if.end11.if.end28_crit_edge
  tail call void @unlock_page(ptr noundef %page) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_add_link(ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
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
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize.i, align 16
  %add4 = add i32 %7, 19
  %and = and i32 %add4, -8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_size.i, align 8
  %14 = trunc i64 %13 to i32
  %conv.i = add i32 %14, 4095
  %shr.i = lshr i32 %conv.i, 12
  %sub = sub i32 4096, %and
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %n.0218 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call6 = tail call fastcc ptr @nilfs_get_page(ptr noundef %3, i32 noundef %n.0218)
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call6 to i32
  br i1 %cmp.i, label %cleanup83.loopexit, label %if.end

if.end:                                           ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 788) #9
  %16 = getelementptr inbounds %struct.page, ptr %call6, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !73

if.end._compound_head.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.end._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end._compound_head.exit.i_crit_edge ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.19) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #9
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %19, align 4
  %and.i.i4.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %19, i32 1, i32 3, i32 1) #9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #9, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
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
  tail call void @__folio_lock(ptr noundef %19) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call9 = tail call ptr @page_address(ptr noundef %call6) #9
  %27 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size.i, align 8
  %conv.i163 = trunc i64 %28 to i32
  %shl.neg.i = mul i32 %n.0218, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i163
  %29 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #9
  %add.ptr = getelementptr i8, ptr %call9, i32 %29
  %add.ptr11 = getelementptr i8, ptr %call9, i32 %sub
  %cmp12.not216 = icmp ugt ptr %call9, %add.ptr11
  br i1 %cmp12.not216, label %lock_page.exit.for.inc_crit_edge, label %lock_page.exit.while.body_crit_edge

lock_page.exit.while.body_crit_edge:              ; preds = %lock_page.exit
  br label %while.body

lock_page.exit.for.inc_crit_edge:                 ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %lock_page.exit.while.body_crit_edge
  %de.1217 = phi ptr [ %add.ptr52, %if.end50.while.body_crit_edge ], [ %call9, %lock_page.exit.while.body_crit_edge ]
  %cmp13 = icmp eq ptr %de.1217, %add.ptr
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %11 to i16
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv) #9
  %rec_len16 = getelementptr inbounds %struct.nilfs_dir_entry, ptr %add.ptr, i32 0, i32 1
  %31 = ptrtoint ptr %rec_len16 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %rec_len16, align 8
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %add.ptr, align 8
  %.pre = and i32 %11, 65535
  br label %got_it

if.end18:                                         ; preds = %while.body
  %rec_len19 = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.1217, i32 0, i32 1
  %33 = ptrtoint ptr %rec_len19 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rec_len19, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp21 = icmp eq i16 %34, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %36, ptr noundef nonnull @__func__.nilfs_add_link, ptr noundef nonnull @.str) #9
  br label %out_unlock

if.end24:                                         ; preds = %if.end18
  %name_len.i = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.1217, i32 0, i32 2
  %37 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %name_len.i, align 2
  %conv.i165 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i165)
  %cmp.not.i = icmp eq i32 %7, %conv.i165
  br i1 %cmp.not.i, label %if.end.i, label %if.end24.if.end27_crit_edge

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end.i:                                         ; preds = %if.end24
  %39 = ptrtoint ptr %de.1217 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %de.1217, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool.not.i = icmp eq i64 %40, 0
  br i1 %tobool.not.i, label %if.end.i.if.end27_crit_edge, label %nilfs_match.exit

if.end.i.if.end27_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

nilfs_match.exit:                                 ; preds = %if.end.i
  %name4.i = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.1217, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %5, ptr %name4.i, i32 %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i.not, label %nilfs_match.exit.out_unlock_crit_edge, label %nilfs_match.exit.if.end27_crit_edge

nilfs_match.exit.if.end27_crit_edge:              ; preds = %nilfs_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

nilfs_match.exit.out_unlock_crit_edge:            ; preds = %nilfs_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end27:                                         ; preds = %nilfs_match.exit.if.end27_crit_edge, %if.end.i.if.end27_crit_edge, %if.end24.if.end27_crit_edge
  %conv29 = zext i8 %38 to i16
  %add31 = add nuw nsw i16 %conv29, 19
  %and32 = and i16 %add31, 504
  %41 = tail call i16 @llvm.bswap.i16(i16 %34) #9
  %conv.i166 = zext i16 %41 to i32
  %42 = ptrtoint ptr %de.1217 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %de.1217, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool38.not = icmp ne i64 %43, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv.i166)
  %cmp40.not = icmp ugt i32 %and, %conv.i166
  %or.cond = select i1 %tobool38.not, i1 true, i1 %cmp40.not
  br i1 %or.cond, label %if.end43, label %if.end27.got_it_crit_edge

if.end27.got_it_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %got_it

if.end43:                                         ; preds = %if.end27
  %conv45 = zext i16 %and32 to i32
  %add46 = add i32 %and, %conv45
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %conv.i166)
  %cmp47.not = icmp ugt i32 %add46, %conv.i166
  br i1 %cmp47.not, label %if.end50, label %if.end43.got_it_crit_edge

if.end43.got_it_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %got_it

if.end50:                                         ; preds = %if.end43
  %add.ptr52 = getelementptr i8, ptr %de.1217, i32 %conv.i166
  %cmp12.not = icmp ugt ptr %add.ptr52, %add.ptr11
  br i1 %cmp12.not, label %if.end50.for.inc_crit_edge, label %if.end50.while.body_crit_edge

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end50.for.inc_crit_edge, %lock_page.exit.for.inc_crit_edge
  tail call void @unlock_page(ptr noundef %call6) #9
  tail call fastcc void @nilfs_put_page(ptr noundef %call6)
  %inc = add nuw nsw i32 %n.0218, 1
  %exitcond = icmp eq i32 %n.0218, %shr.i
  br i1 %exitcond, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 500, 0\0A.popsection", ""() #9, !srcloc !93
  unreachable

got_it:                                           ; preds = %if.end43.got_it_crit_edge, %if.end27.got_it_crit_edge, %if.then14
  %conv57.pre-phi = phi i32 [ %.pre, %if.then14 ], [ %conv.i166, %if.end43.got_it_crit_edge ], [ %conv.i166, %if.end27.got_it_crit_edge ]
  %de.1217223 = phi ptr [ %add.ptr, %if.then14 ], [ %de.1217, %if.end43.got_it_crit_edge ], [ %de.1217, %if.end27.got_it_crit_edge ]
  %rec_len.2.ph = phi i16 [ %conv, %if.then14 ], [ %41, %if.end43.got_it_crit_edge ], [ %41, %if.end27.got_it_crit_edge ]
  %name_len.2.ph = phi i16 [ 0, %if.then14 ], [ %and32, %if.end43.got_it_crit_edge ], [ %and32, %if.end27.got_it_crit_edge ]
  %call56 = tail call ptr @page_address(ptr noundef %call6) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %de.1217223 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call56 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add58 = add i32 %sub.ptr.sub, %conv57.pre-phi
  %index.i.i = getelementptr inbounds %struct.page, ptr %call6, i32 0, i32 1, i32 0, i32 2
  %44 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %45 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %conv.i167 = zext i32 %sub.ptr.sub to i64
  %add.i = add nuw nsw i64 %shl.i.i, %conv.i167
  %call1.i = tail call i32 @__block_write_begin(ptr noundef %call6, i64 noundef %add.i, i32 noundef %conv57.pre-phi, ptr noundef nonnull @nilfs_get_block) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool60.not = icmp eq i32 %call1.i, 0
  br i1 %tobool60.not, label %if.end62, label %got_it.out_unlock_crit_edge

got_it.out_unlock_crit_edge:                      ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_unlock

if.end62:                                         ; preds = %got_it
  %46 = ptrtoint ptr %de.1217223 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %de.1217223, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool64.not = icmp eq i64 %47, 0
  br i1 %tobool64.not, label %if.end62.if.end76_crit_edge, label %if.then65

if.end62.if.end76_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %conv66 = zext i16 %name_len.2.ph to i32
  %add.ptr67 = getelementptr i8, ptr %de.1217223, i32 %conv66
  %sub70 = sub i16 %rec_len.2.ph, %name_len.2.ph
  %48 = tail call i16 @llvm.bswap.i16(i16 %sub70) #9
  %rec_len72 = getelementptr inbounds %struct.nilfs_dir_entry, ptr %add.ptr67, i32 0, i32 1
  %49 = ptrtoint ptr %rec_len72 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %rec_len72, align 8
  %50 = tail call i16 @llvm.bswap.i16(i16 %name_len.2.ph) #9
  %rec_len75 = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.1217223, i32 0, i32 1
  %51 = ptrtoint ptr %rec_len75 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %rec_len75, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.then65, %if.end62.if.end76_crit_edge
  %de.3 = phi ptr [ %add.ptr67, %if.then65 ], [ %de.1217223, %if.end62.if.end76_crit_edge ]
  %conv77 = trunc i32 %7 to i8
  %name_len78 = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.3, i32 0, i32 2
  %52 = ptrtoint ptr %name_len78 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv77, ptr %name_len78, align 2
  %name79 = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.3, i32 0, i32 4
  %53 = call ptr @memcpy(ptr %name79, ptr %5, i32 %7)
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %54 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_ino, align 8
  %conv80 = zext i32 %55 to i64
  %56 = tail call i64 @llvm.bswap.i64(i64 %conv80)
  %57 = ptrtoint ptr %de.3 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %de.3, align 8
  %58 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %inode, align 8
  %60 = lshr i16 %59, 12
  %61 = zext i16 %60 to i32
  %arrayidx.i = getelementptr [15 x i8], ptr @nilfs_type_by_mode, i32 0, i32 %61
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i, align 1
  %file_type.i = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.3, i32 0, i32 3
  %64 = ptrtoint ptr %file_type.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %file_type.i, align 1
  %mapping = getelementptr inbounds %struct.page, ptr %call6, i32 0, i32 1, i32 0, i32 1
  %65 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mapping, align 4
  tail call fastcc void @nilfs_commit_chunk(ptr noundef %call6, ptr noundef %66, i32 noundef %sub.ptr.sub, i32 noundef %add58)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #9
  %67 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %68 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %call.i = call i32 @__nilfs_mark_inode_dirty(ptr noundef %3, i32 noundef 7) #9
  br label %out_put

out_put:                                          ; preds = %out_unlock, %if.end76
  %err.2 = phi i32 [ %err.4, %out_unlock ], [ 0, %if.end76 ]
  call fastcc void @nilfs_put_page(ptr noundef %call6)
  br label %cleanup83

out_unlock:                                       ; preds = %got_it.out_unlock_crit_edge, %nilfs_match.exit.out_unlock_crit_edge, %if.then23
  %err.4 = phi i32 [ %call1.i, %got_it.out_unlock_crit_edge ], [ -5, %if.then23 ], [ -17, %nilfs_match.exit.out_unlock_crit_edge ]
  tail call void @unlock_page(ptr noundef %call6) #9
  br label %out_put

cleanup83.loopexit:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %call6 to i32
  br label %cleanup83

cleanup83:                                        ; preds = %cleanup83.loopexit, %out_put
  %retval.0 = phi i32 [ %err.2, %out_put ], [ %69, %cleanup83.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_delete_entry(ptr noundef %dir, ptr noundef %page) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @page_address(ptr noundef %page) #9
  %sub.ptr.lhs.cast = ptrtoint ptr %dir to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize.i, align 16
  %neg = sub i32 0, %7
  %and = and i32 %sub.ptr.sub, %neg
  %rec_len = getelementptr inbounds %struct.nilfs_dir_entry, ptr %dir, i32 0, i32 1
  %8 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rec_len, align 8
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #9
  %conv.i = zext i16 %10 to i32
  %add = add i32 %sub.ptr.sub, %conv.i
  %add.ptr = getelementptr i8, ptr %call, i32 %and
  %cmp69 = icmp ult ptr %add.ptr, %dir
  br i1 %cmp69, label %entry.while.body_crit_edge, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %de.070 = phi ptr [ %add.ptr.i, %if.end.while.body_crit_edge ], [ %add.ptr, %entry.while.body_crit_edge ]
  %rec_len7 = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.070, i32 0, i32 1
  %11 = ptrtoint ptr %rec_len7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rec_len7, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp8 = icmp eq i16 %12, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %5, ptr noundef nonnull @__func__.nilfs_delete_entry, ptr noundef nonnull @.str) #9
  br label %out

if.end:                                           ; preds = %while.body
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #9
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %de.070, i32 %conv.i.i
  %cmp = icmp ult ptr %add.ptr.i, %dir
  br i1 %cmp, label %if.end.while.body_crit_edge, label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end
  %tobool.not = icmp eq ptr %de.070, null
  br i1 %tobool.not, label %while.end.if.end16_crit_edge, label %if.then11

while.end.if.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then11:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call ptr @page_address(ptr noundef %page) #9
  %sub.ptr.lhs.cast13 = ptrtoint ptr %de.070 to i32
  %sub.ptr.rhs.cast14 = ptrtoint ptr %call12 to i32
  %sub.ptr.sub15 = sub i32 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %while.end.if.end16_crit_edge, %entry.if.end16_crit_edge
  %tobool.not75 = phi i1 [ false, %if.then11 ], [ true, %while.end.if.end16_crit_edge ], [ true, %entry.if.end16_crit_edge ]
  %pde.0.lcssa74 = phi ptr [ %de.070, %if.then11 ], [ null, %while.end.if.end16_crit_edge ], [ null, %entry.if.end16_crit_edge ]
  %from.0 = phi i32 [ %sub.ptr.sub15, %if.then11 ], [ %and, %while.end.if.end16_crit_edge ], [ %and, %entry.if.end16_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 788) #9
  %14 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.19) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #9
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %18, align 4
  %and.i.i4.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #9
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #9, !srcloc !82
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
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
  tail call void @__folio_lock(ptr noundef %18) #9
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index.i.i, align 4
  %conv.i.i65 = zext i32 %26 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i65, 12
  %conv.i66 = zext i32 %from.0 to i64
  %add.i = add nuw nsw i64 %shl.i.i, %conv.i66
  %sub.i = sub i32 %add, %from.0
  %call1.i = tail call i32 @__block_write_begin(ptr noundef %page, i64 noundef %add.i, i32 noundef %sub.i, ptr noundef nonnull @nilfs_get_block) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool18.not = icmp eq i32 %call1.i, 0
  br i1 %tobool18.not, label %do.end28, label %do.body22, !prof !73

do.body22:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nilfs2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 565, 0\0A.popsection", ""() #9, !srcloc !94
  unreachable

do.end28:                                         ; preds = %lock_page.exit
  br i1 %tobool.not75, label %do.end28.if.end34_crit_edge, label %if.then30

do.end28.if.end34_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then30:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i67 = trunc i32 %sub.i to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv.i67) #9
  %rec_len33 = getelementptr inbounds %struct.nilfs_dir_entry, ptr %pde.0.lcssa74, i32 0, i32 1
  %28 = ptrtoint ptr %rec_len33 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %rec_len33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %do.end28.if.end34_crit_edge
  %29 = ptrtoint ptr %dir to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %dir, align 8
  tail call fastcc void @nilfs_commit_chunk(ptr noundef %page, ptr noundef %1, i32 noundef %from.0, i32 noundef %add)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #9
  %30 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  %31 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  br label %out

out:                                              ; preds = %if.end34, %if.then
  %err.0 = phi i32 [ -5, %if.then ], [ 0, %if.end34 ]
  call fastcc void @nilfs_put_page(ptr noundef %page)
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_make_empty(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %parent) local_unnamed_addr #0 align 64 {
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
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize.i, align 16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %index.i.i = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %9 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %call1.i = tail call i32 @__block_write_begin(ptr noundef nonnull %call.i.i, i64 noundef %shl.i.i, i32 noundef %7, ptr noundef nonnull @nilfs_get_block) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  br i1 %tobool3.not, label %if.end7, label %if.then6, !prof !73

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #9
  br label %fail

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %10 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %10, 512
  %11 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !95
  %15 = tail call i32 @llvm.read_register.i32(metadata !61) #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !96
  %call.i.i53 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i.i, i32 noundef %or.i) #9
  %21 = call ptr @memset(ptr %call.i.i53, i32 0, i32 %7)
  %name_len = getelementptr inbounds %struct.nilfs_dir_entry, ptr %call.i.i53, i32 0, i32 2
  %22 = ptrtoint ptr %name_len to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %name_len, align 2
  %rec_len = getelementptr inbounds %struct.nilfs_dir_entry, ptr %call.i.i53, i32 0, i32 1
  %23 = ptrtoint ptr %rec_len to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 4096, ptr %rec_len, align 8
  %name = getelementptr inbounds %struct.nilfs_dir_entry, ptr %call.i.i53, i32 0, i32 4
  %24 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 771751936, ptr %name, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  %conv = zext i32 %26 to i64
  %27 = tail call i64 @llvm.bswap.i64(i64 %conv)
  %28 = ptrtoint ptr %call.i.i53 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %call.i.i53, align 8
  %29 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %inode, align 8
  %31 = lshr i16 %30, 12
  %32 = zext i16 %31 to i32
  %arrayidx.i = getelementptr [15 x i8], ptr @nilfs_type_by_mode, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i, align 1
  %file_type.i = getelementptr inbounds %struct.nilfs_dir_entry, ptr %call.i.i53, i32 0, i32 3
  %35 = ptrtoint ptr %file_type.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %file_type.i, align 1
  %add.ptr = getelementptr i8, ptr %call.i.i53, i32 16
  %name_len11 = getelementptr i8, ptr %call.i.i53, i32 26
  %36 = ptrtoint ptr %name_len11 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %name_len11, align 2
  %37 = trunc i32 %7 to i16
  %conv.i = add i16 %37, -16
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #9
  %rec_len13 = getelementptr i8, ptr %call.i.i53, i32 24
  %39 = ptrtoint ptr %rec_len13 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %rec_len13, align 8
  %i_ino14 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 11
  %40 = ptrtoint ptr %i_ino14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i_ino14, align 8
  %conv15 = zext i32 %41 to i64
  %42 = tail call i64 @llvm.bswap.i64(i64 %conv15)
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %add.ptr, align 8
  %name17 = getelementptr i8, ptr %call.i.i53, i32 28
  %44 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 774766592, ptr %name17, align 4
  %45 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %inode, align 8
  %47 = lshr i16 %46, 12
  %48 = zext i16 %47 to i32
  %arrayidx.i54 = getelementptr [15 x i8], ptr @nilfs_type_by_mode, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i54, align 1
  %file_type.i55 = getelementptr i8, ptr %call.i.i53, i32 27
  %51 = ptrtoint ptr %file_type.i55 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %file_type.i55, align 1
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i53) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !97
  %52 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i1.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %55, i32 0, i32 213
  %56 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %57, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !98
  %58 = tail call i32 @llvm.read_register.i32(metadata !61) #9
  %and.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @nilfs_commit_chunk(ptr noundef nonnull %call.i.i, ptr noundef %1, i32 noundef 0, i32 noundef %7)
  br label %fail

fail:                                             ; preds = %if.end7, %if.then6
  %62 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %and.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i56 = add i32 %64, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i56, %if.then.i.i ], [ %65, %if.end.i.i ]
  %66 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %67 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i.i.i.i = icmp eq i32 %68, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !71

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %66, ptr noundef nonnull @.str.17) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %69, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nilfs_make_empty, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %66, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %66) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %call1.i, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nilfs_empty_dir(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
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
  %cmp81.not = icmp ult i32 %conv.i, 4096
  br i1 %cmp81.not, label %entry.cleanup46_crit_edge, label %for.body.lr.ph

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

for.body.lr.ph:                                   ; preds = %entry
  %shr.i = lshr i32 %conv.i, 12
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call1 = tail call fastcc ptr @nilfs_get_page(ptr noundef %inode, i32 noundef %i.082)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call3 = tail call ptr @page_address(ptr noundef %call1) #9
  %3 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_size.i, align 8
  %conv.i72 = trunc i64 %4 to i32
  %shl.neg.i = mul i32 %i.082, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i72
  %5 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #9
  %sub = add nsw i32 %5, -16
  %add.ptr = getelementptr i8, ptr %call3, i32 %sub
  %cmp5.not79 = icmp ugt ptr %call3, %add.ptr
  br i1 %cmp5.not79, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %if.end.while.body_crit_edge
  %de.080 = phi ptr [ %add.ptr.i, %if.end43.while.body_crit_edge ], [ %call3, %if.end.while.body_crit_edge ]
  %rec_len = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.080, i32 0, i32 1
  %6 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rec_len, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp6 = icmp eq i16 %7, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %9, ptr noundef nonnull @__func__.nilfs_empty_dir, ptr noundef nonnull @.str.4, ptr noundef %add.ptr, ptr noundef %de.080) #9
  br label %not_empty

if.end9:                                          ; preds = %while.body
  %10 = ptrtoint ptr %de.080 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %de.080, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp11.not = icmp eq i64 %11, 0
  br i1 %cmp11.not, label %if.end9.if.end43_crit_edge, label %if.then13

if.end9.if.end43_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then13:                                        ; preds = %if.end9
  %name = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.080, i32 0, i32 4
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %13)
  %cmp15.not = icmp eq i8 %13, 46
  br i1 %cmp15.not, label %if.end18, label %if.then13.not_empty_crit_edge

if.then13.not_empty_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.end18:                                         ; preds = %if.then13
  %name_len = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.080, i32 0, i32 2
  %14 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %name_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp20 = icmp ugt i8 %15, 2
  br i1 %cmp20, label %if.end18.not_empty_crit_edge, label %if.end23

if.end18.not_empty_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp26.not = icmp eq i8 %15, 2
  br i1 %cmp26.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end23
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %conv30 = zext i32 %17 to i64
  %18 = tail call i64 @llvm.bswap.i64(i64 %conv30)
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %18)
  %cmp31.not = icmp eq i64 %11, %18
  br i1 %cmp31.not, label %if.then28.if.end43_crit_edge, label %if.then28.not_empty_crit_edge

if.then28.not_empty_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.then28.if.end43_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.else:                                          ; preds = %if.end23
  %arrayidx36 = getelementptr %struct.nilfs_dir_entry, ptr %de.080, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %20)
  %cmp38.not = icmp eq i8 %20, 46
  br i1 %cmp38.not, label %if.else.if.end43_crit_edge, label %if.else.not_empty_crit_edge

if.else.not_empty_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %not_empty

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %if.else.if.end43_crit_edge, %if.then28.if.end43_crit_edge, %if.end9.if.end43_crit_edge
  %21 = tail call i16 @llvm.bswap.i16(i16 %7) #9
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i = getelementptr i8, ptr %de.080, i32 %conv.i.i
  %cmp5.not = icmp ugt ptr %add.ptr.i, %add.ptr
  br i1 %cmp5.not, label %if.end43.while.end_crit_edge, label %if.end43.while.body_crit_edge

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end43.while.end_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end43.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call fastcc void @nilfs_put_page(ptr noundef %call1)
  br label %for.inc

for.inc:                                          ; preds = %while.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc.cleanup46_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup46_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

not_empty:                                        ; preds = %if.else.not_empty_crit_edge, %if.then28.not_empty_crit_edge, %if.end18.not_empty_crit_edge, %if.then13.not_empty_crit_edge, %if.then8
  tail call fastcc void @nilfs_put_page(ptr noundef %call1)
  br label %cleanup46

cleanup46:                                        ; preds = %not_empty, %for.inc.cleanup46_crit_edge, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ 0, %not_empty ], [ 1, %entry.cleanup46_crit_edge ], [ 1, %for.inc.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nilfs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pos1 = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos1, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %6 = lshr i64 %1, 12
  %conv2 = trunc i64 %6 to i32
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size.i, align 8
  %9 = trunc i64 %8 to i32
  %conv.i = add i32 %9, 4095
  %shr.i = lshr i32 %conv.i, 12
  %sub = add i64 %8, -16
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %sub)
  %cmp = icmp sle i64 %1, %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv2)
  %cmp5107 = icmp ugt i32 %shr.i, %conv2
  %or.cond = select i1 %cmp, i1 %cmp5107, i1 false
  br i1 %or.cond, label %for.body.preheader, label %entry.cleanup56_crit_edge

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

for.body.preheader:                               ; preds = %entry
  %10 = trunc i64 %1 to i32
  %conv = and i32 %10, 4095
  br label %for.body

for.body:                                         ; preds = %for.inc54.for.body_crit_edge, %for.body.preheader
  %n.0109 = phi i32 [ %inc, %for.inc54.for.body_crit_edge ], [ %conv2, %for.body.preheader ]
  %offset.0108 = phi i32 [ 0, %for.inc54.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %call7 = tail call fastcc ptr @nilfs_get_page(ptr noundef %3, i32 noundef %n.0109)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %5, ptr noundef nonnull @__func__.nilfs_readdir, ptr noundef nonnull @.str.23, i32 noundef %12) #9
  %sub10 = sub nuw nsw i32 4096, %offset.0108
  %conv11 = zext i32 %sub10 to i64
  %13 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %pos1, align 8
  %add = add i64 %14, %conv11
  store i64 %add, ptr %pos1, align 8
  br label %cleanup56

if.end13:                                         ; preds = %for.body
  %call14 = tail call ptr @page_address(ptr noundef %call7) #9
  %add.ptr = getelementptr i8, ptr %call14, i32 %offset.0108
  %15 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size.i, align 8
  %conv.i94 = trunc i64 %16 to i32
  %shl.neg.i = mul i32 %n.0109, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i94
  %17 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #9
  %add.ptr16 = getelementptr i8, ptr %call14, i32 -16
  %add.ptr17 = getelementptr i8, ptr %add.ptr16, i32 %17
  %cmp19.not105 = icmp ugt ptr %add.ptr, %add.ptr17
  br i1 %cmp19.not105, label %if.end13.for.inc54_crit_edge, label %if.end13.for.body21_crit_edge

if.end13.for.body21_crit_edge:                    ; preds = %if.end13
  br label %for.body21

if.end13.for.inc54_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc54

for.body21:                                       ; preds = %if.end41.for.body21_crit_edge, %if.end13.for.body21_crit_edge
  %de.0106 = phi ptr [ %add.ptr.i, %if.end41.for.body21_crit_edge ], [ %add.ptr, %if.end13.for.body21_crit_edge ]
  %rec_len = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.0106, i32 0, i32 1
  %18 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rec_len, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp23 = icmp eq i16 %19, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %5, ptr noundef nonnull @__func__.nilfs_readdir, ptr noundef nonnull @.str) #9
  tail call fastcc void @nilfs_put_page(ptr noundef %call7)
  br label %cleanup56

if.end26:                                         ; preds = %for.body21
  %20 = ptrtoint ptr %de.0106 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %de.0106, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool.not = icmp eq i64 %21, 0
  br i1 %tobool.not, label %if.end26.if.end41_crit_edge, label %if.then28

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then28:                                        ; preds = %if.end26
  %file_type = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.0106, i32 0, i32 3
  %22 = ptrtoint ptr %file_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %file_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %23)
  %cmp30 = icmp ult i8 %23, 8
  br i1 %cmp30, label %if.then32, label %if.then28.if.end34_crit_edge

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %conv29 = zext i8 %23 to i32
  %arrayidx = getelementptr [8 x i8], ptr @nilfs_filetype_table, i32 0, i32 %conv29
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then28.if.end34_crit_edge
  %t.0 = phi i8 [ %25, %if.then32 ], [ 0, %if.then28.if.end34_crit_edge ]
  %name = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.0106, i32 0, i32 4
  %name_len = getelementptr inbounds %struct.nilfs_dir_entry, ptr %de.0106, i32 0, i32 2
  %26 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %name_len, align 2
  %conv35 = zext i8 %27 to i32
  %28 = tail call i64 @llvm.bswap.i64(i64 %21)
  %conv37 = zext i8 %t.0 to i32
  %29 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctx, align 8
  %31 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %pos1, align 8
  %call.i = tail call i32 %30(ptr noundef %ctx, ptr noundef %name, i32 noundef %conv35, i64 noundef %32, i64 noundef %28, i32 noundef %conv37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i95 = icmp eq i32 %call.i, 0
  br i1 %cmp.i95, label %if.end34.if.end41_crit_edge, label %cleanup

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

cleanup:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @nilfs_put_page(ptr noundef %call7)
  br label %cleanup56

if.end41:                                         ; preds = %if.end34.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  %33 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rec_len, align 8
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #9
  %conv44 = zext i16 %35 to i64
  %36 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %pos1, align 8
  %add46 = add i64 %37, %conv44
  store i64 %add46, ptr %pos1, align 8
  %38 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rec_len, align 8
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #9
  %conv.i.i = zext i16 %40 to i32
  %add.ptr.i = getelementptr i8, ptr %de.0106, i32 %conv.i.i
  %cmp19.not = icmp ugt ptr %add.ptr.i, %add.ptr17
  br i1 %cmp19.not, label %if.end41.for.inc54_crit_edge, label %if.end41.for.body21_crit_edge

if.end41.for.body21_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21

if.end41.for.inc54_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc54

for.inc54:                                        ; preds = %if.end41.for.inc54_crit_edge, %if.end13.for.inc54_crit_edge
  tail call fastcc void @nilfs_put_page(ptr noundef %call7)
  %inc = add nuw nsw i32 %n.0109, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc54.cleanup56_crit_edge, label %for.inc54.for.body_crit_edge

for.inc54.for.body_crit_edge:                     ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc54.cleanup56_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

cleanup56:                                        ; preds = %for.inc54.cleanup56_crit_edge, %cleanup, %if.then25, %if.then9, %entry.cleanup56_crit_edge
  %retval.5 = phi i32 [ 0, %entry.cleanup56_crit_edge ], [ 0, %cleanup ], [ -5, %if.then25 ], [ -5, %if.then9 ], [ 0, %for.inc54.cleanup56_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_sync_file(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nilfs_check_page(ptr noundef %page) unnamed_addr #0 align 64 {
entry:
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
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_blocksize.i, align 16
  %call1 = tail call ptr @page_address(ptr noundef %page) #9
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  %shr = ashr i64 %9, 12
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %conv = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv)
  %cmp = icmp eq i64 %shr, %conv
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %entry
  %12 = trunc i64 %9 to i32
  %conv4 = and i32 %12, 4095
  %sub = add i32 %7, -1
  %and5 = and i32 %conv4, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end, label %Ebadsize

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %tobool7.not = icmp eq i32 %conv4, 0
  br i1 %tobool7.not, label %if.end.out_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %limit.0 = phi i32 [ %conv4, %if.end.if.end10_crit_edge ], [ 4096, %entry.if.end10_crit_edge ]
  %sub11 = add nsw i32 %limit.0, -16
  %neg = sub i32 0, %7
  br label %for.cond

for.cond:                                         ; preds = %if.end30.for.cond_crit_edge, %if.end10
  %offs.0 = phi i32 [ 0, %if.end10 ], [ %add31, %if.end30.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.0, i32 %sub11)
  %cmp12.not = icmp ugt i32 %offs.0, %sub11
  br i1 %cmp12.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %call1, i32 %offs.0
  %rec_len14 = getelementptr inbounds %struct.nilfs_dir_entry, ptr %add.ptr, i32 0, i32 1
  %13 = ptrtoint ptr %rec_len14 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rec_len14, align 8
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #9
  %conv.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %15)
  %cmp16 = icmp ult i16 %15, 16
  br i1 %cmp16, label %for.body.bad_entry_crit_edge, label %if.end19

for.body.bad_entry_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_entry

if.end19:                                         ; preds = %for.body
  %and20 = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.bad_entry_crit_edge

if.end19.bad_entry_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_entry

if.end23:                                         ; preds = %if.end19
  %name_len = getelementptr inbounds %struct.nilfs_dir_entry, ptr %add.ptr, i32 0, i32 2
  %16 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %name_len, align 2
  %conv24 = zext i8 %17 to i32
  %add25 = add nuw nsw i32 %conv24, 19
  %and26 = and i32 %add25, 504
  call void @__sanitizer_cov_trace_cmp4(i32 %and26, i32 %conv.i)
  %cmp27 = icmp ugt i32 %and26, %conv.i
  br i1 %cmp27, label %if.end23.bad_entry_crit_edge, label %if.end30

if.end23.bad_entry_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_entry

if.end30:                                         ; preds = %if.end23
  %add31 = add i32 %offs.0, %conv.i
  %sub32 = add i32 %add31, -1
  %xor = xor i32 %sub32, %offs.0
  %and34 = and i32 %xor, %neg
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end30.for.cond_crit_edge, label %if.end30.bad_entry_crit_edge

if.end30.bad_entry_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_entry

if.end30.for.cond_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.0, i32 %limit.0)
  %cmp39.not = icmp eq i32 %offs.0, %limit.0
  br i1 %cmp39.not, label %for.end.out_crit_edge, label %Eend

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.end.out_crit_edge, %if.end.out_crit_edge
  %18 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %page, align 4
  %20 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %out.if.then.i_crit_edge

out.if.then.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %out
  %21 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !73

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %out.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !99
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !71

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.6) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #9, !srcloc !100
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef 10, ptr noundef %page) #9
  br label %cleanup

Ebadsize:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %5, ptr noundef nonnull @__func__.nilfs_check_page, ptr noundef nonnull @.str.8, i32 noundef %27) #9
  br label %fail

bad_entry:                                        ; preds = %if.end30.bad_entry_crit_edge, %if.end23.bad_entry_crit_edge, %if.end19.bad_entry_crit_edge, %for.body.bad_entry_crit_edge
  %error.0 = phi ptr [ @.str.9, %for.body.bad_entry_crit_edge ], [ @.str.10, %if.end19.bad_entry_crit_edge ], [ @.str.11, %if.end23.bad_entry_crit_edge ], [ @.str.12, %if.end30.bad_entry_crit_edge ]
  %i_ino43 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %28 = ptrtoint ptr %i_ino43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino43, align 8
  %shl = shl i32 %11, 12
  %add45 = add i32 %offs.0, %shl
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr, align 8
  %32 = tail call i64 @llvm.bswap.i64(i64 %31)
  %conv46 = trunc i64 %32 to i32
  %name_len47 = getelementptr inbounds %struct.nilfs_dir_entry, ptr %add.ptr, i32 0, i32 2
  %33 = ptrtoint ptr %name_len47 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %name_len47, align 2
  %conv48 = zext i8 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %5, ptr noundef nonnull @__func__.nilfs_check_page, ptr noundef nonnull @.str.13, i32 noundef %29, ptr noundef nonnull %error.0, i32 noundef %add45, i32 noundef %conv46, i32 noundef %conv.i, i32 noundef %conv48) #9
  br label %fail

Eend:                                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr49 = getelementptr i8, ptr %call1, i32 %offs.0
  %i_ino50 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %35 = ptrtoint ptr %i_ino50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i_ino50, align 8
  %shl52 = shl i32 %11, 12
  %add53 = add i32 %offs.0, %shl52
  %37 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr49, align 8
  %39 = tail call i64 @llvm.bswap.i64(i64 %38)
  %conv55 = trunc i64 %39 to i32
  tail call void (ptr, ptr, ptr, ...) @__nilfs_error(ptr noundef %5, ptr noundef nonnull @__func__.nilfs_check_page, ptr noundef nonnull @.str.14, i32 noundef %36, i32 noundef %add53, i32 noundef %conv55) #9
  br label %fail

fail:                                             ; preds = %Eend, %bad_entry, %Ebadsize
  %40 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %and.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i100 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i100, label %do.body7.i103, label %if.then.i101, !prof !73

if.then.i101:                                     ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !101
  unreachable

do.body7.i103:                                    ; preds = %fail
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %40, align 4
  %and.i31.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i102 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i102, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %do.body7.i103
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %44, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i103
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %45, %if.end.i.i ]
  %46 = inttoptr i32 %retval.0.i.i to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i.not.i104 = icmp eq i32 %48, -1
  %49 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %40, align 4
  %and.i32.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i104, label %if.then17.i, label %do.end24.i, !prof !71

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !73

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i34.i = add i32 %50, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %51, %if.end.i36.i ]
  %52 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #9, !srcloc !102
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !73

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i41.i = add i32 %50, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %53, %if.end.i43.i ]
  %54 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %54) #9
  br label %cleanup

cleanup:                                          ; preds = %SetPageError.exit, %SetPageChecked.exit
  %retval.0 = phi i1 [ false, %SetPageError.exit ], [ true, %SetPageChecked.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_page_count_clean_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nilfs_set_file_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nilfs_mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__func__.nilfs_find_entry, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nilfs2/dir.c", i32 357, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/nilfs2/dir.c", i32 372, i32 4}
!5 = !{ptr @__func__.nilfs_add_link, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/nilfs2/dir.c", i32 481, i32 5}
!7 = !{ptr @__func__.nilfs_delete_entry, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nilfs2/dir.c", i32 553, i32 4}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/nilfs2/dir.c", i32 601, i32 19}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/nilfs2/dir.c", i32 609, i32 19}
!13 = !{ptr @__func__.nilfs_empty_dir, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/nilfs2/dir.c", i32 640, i32 5}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nilfs_dir_operations, !17, !"nilfs_dir_operations", i1 false, i1 false}
!17 = !{!"../fs/nilfs2/dir.c", i32 669, i32 30}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/page-flags.h", i32 430, i32 1}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!24 = !{ptr @__func__.nilfs_check_page, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/nilfs2/dir.c", i32 156, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/nilfs2/dir.c", i32 161, i32 10}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/nilfs2/dir.c", i32 164, i32 10}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/nilfs2/dir.c", i32 167, i32 10}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/nilfs2/dir.c", i32 170, i32 10}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/nilfs2/dir.c", i32 172, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/nilfs2/dir.c", i32 180, i32 2}
!39 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/mm.h", i32 717, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!47 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!49 = !{ptr @nilfs_type_by_mode, !50, !"nilfs_type_by_mode", i1 false, i1 false}
!50 = !{!"../fs/nilfs2/dir.c", i32 246, i32 1}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/nilfs2/dir.c", i32 112, i32 2}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__func__.nilfs_readdir, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/nilfs2/dir.c", i32 281, i32 4}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @nilfs_filetype_table, !60, !"nilfs_filetype_table", i1 false, i1 false}
!60 = !{!"../fs/nilfs2/dir.c", i32 233, i32 1}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2150526405, i64 2150526896, i64 2150526442, i64 2150526498, i64 2150526532, i64 2150526556, i64 2150526597, i64 2150526618, i64 2150526646, i64 2150526680}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2150331098, i64 2150331589, i64 2150331135, i64 2150331191, i64 2150331225, i64 2150331249, i64 2150331290, i64 2150331311, i64 2150331339, i64 2150331373}
!75 = !{i64 2153165003, i64 2153165486, i64 2153165040, i64 2153165096, i64 2153165130, i64 2153165154, i64 2153165195, i64 2153165216, i64 2153165244, i64 2153165278}
!76 = !{i64 2148807483}
!77 = !{i64 2148722192, i64 2148722224, i64 2148722253, i64 2148722287, i64 2148722318, i64 2148722341}
!78 = !{i64 2148807712}
!79 = !{i64 2148319684, i64 2148319689, i64 2148319702, i64 2148319746, i64 2148319780, i64 2148319801}
!80 = !{!"auto-init"}
!81 = !{i64 2150274005, i64 2150274496, i64 2150274042, i64 2150274098, i64 2150274132, i64 2150274156, i64 2150274197, i64 2150274218, i64 2150274246, i64 2150274280}
!82 = !{i64 2148727865, i64 2148727897, i64 2148727926, i64 2148727960, i64 2148727991, i64 2148728014}
!83 = !{i64 2148816970}
!84 = !{i64 2154934711, i64 2154935191, i64 2154934748, i64 2154934804, i64 2154934838, i64 2154934862, i64 2154934903, i64 2154934924, i64 2154934952, i64 2154934986}
!85 = !{i64 2153111520}
!86 = !{i64 2149789200}
!87 = !{i64 2149794132}
!88 = !{i64 2149815844}
!89 = !{i64 2149820736}
!90 = !{i64 2149897193}
!91 = !{i64 2149897518}
!92 = !{i64 2153123382}
!93 = !{i64 2154936692, i64 2154937172, i64 2154936729, i64 2154936785, i64 2154936819, i64 2154936843, i64 2154936884, i64 2154936905, i64 2154936933, i64 2154936967}
!94 = !{i64 2154938462, i64 2154938942, i64 2154938499, i64 2154938555, i64 2154938589, i64 2154938613, i64 2154938654, i64 2154938675, i64 2154938703, i64 2154938737}
!95 = !{i64 2153688939}
!96 = !{i64 2152782054}
!97 = !{i64 2152782261}
!98 = !{i64 2153691710}
!99 = !{i64 2150534448, i64 2150534621, i64 2150534636, i64 2150534688, i64 2150534747, i64 2150534771, i64 2150534812, i64 2150534833, i64 2150534861, i64 2150534893}
!100 = !{i64 2150535219, i64 2150535392, i64 2150535407, i64 2150535459, i64 2150535518, i64 2150535542, i64 2150535583, i64 2150535604, i64 2150535632, i64 2150535664}
!101 = !{i64 2150339656, i64 2150339829, i64 2150339844, i64 2150339896, i64 2150339955, i64 2150339979, i64 2150340020, i64 2150340041, i64 2150340069, i64 2150340101}
!102 = !{i64 2150340531, i64 2150340704, i64 2150340719, i64 2150340771, i64 2150340830, i64 2150340854, i64 2150340895, i64 2150340916, i64 2150340944, i64 2150340976}
