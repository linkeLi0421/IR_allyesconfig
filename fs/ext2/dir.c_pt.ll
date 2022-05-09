; ModuleID = '/llk/IR_all_yes/fs/ext2/dir.c_pt.bc'
source_filename = "../fs/ext2/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
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
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { ptr }
%struct.ext2_dir_entry_2 = type { i32, i16, i8, i8, [0 x i8] }
%struct.page = type { i32, %union.anon.6, %union.anon.72, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.72 = type { %struct.atomic_t }
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
%struct.ext2_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i32, i32, i32, i32, %struct.spinlock, i32, i32, ptr, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, ptr, %struct.spinlock, %struct.rb_root, %struct.ext2_reserve_window_node, %struct.spinlock, ptr, ptr, i64 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ext2_reserve_window_node = type { %struct.rb_node, i32, i32, %struct.ext2_reserve_window }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ext2_reserve_window = type { i32, i32 }
%struct.ext2_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, i32, i16, i16, i32, i32, i32, [16 x i8], [16 x i8], [64 x i8], i32, i8, i8, i16, [16 x i8], i32, i32, i32, [4 x i32], i8, i8, i16, i32, i32, [190 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.76, %struct.list_head, %struct.list_head, %union.anon.77 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.76 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dir_context = type { ptr, i64 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__func__.ext2_find_entry = private unnamed_addr constant [16 x i8] c"ext2_find_entry\00", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"zero-length directory entry\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dir %lu size %lld exceeds block count %llu\00", [53 x i8] zeroinitializer }, align 32
@__func__.ext2_add_link = private unnamed_addr constant [14 x i8] c"ext2_add_link\00", align 1
@__func__.ext2_delete_entry = private unnamed_addr constant [18 x i8] c"ext2_delete_entry\00", align 1
@__func__.ext2_empty_dir = private unnamed_addr constant [15 x i8] c"ext2_empty_dir\00", align 1
@ext2_empty_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.ext2_empty_dir, ptr @.str.5, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kaddr=%p, de=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/ext2/dir.c\00", [18 x i8] zeroinitializer }, align 32
@ext2_empty_dir._entry_ptr = internal global ptr @ext2_empty_dir._entry, section ".printk_index", align 4
@ext2_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ext2_readdir, ptr null, ptr @ext2_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @ext2_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__func__.ext2_check_page = private unnamed_addr constant [16 x i8] c"ext2_check_page\00", align 1
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"size of directory #%lu is not a multiple of chunk size\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rec_len is smaller than minimal\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unaligned directory entry\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rec_len is too small for name_len\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"directory entry across blocks\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"inode out of bounds\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"bad entry in directory #%lu: : %s - offset=%lu, inode=%lu, rec_len=%d, name_len=%d\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"entry in directory #%lu spans the page boundaryoffset=%lu, inode=%lu\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__func__.ext2_readdir = private unnamed_addr constant [13 x i8] c"ext2_readdir\00", align 1
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad page in #%lu\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 385, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 400, i32 5 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 695, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"ext2_dir_operations\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 722, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 153, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 157, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 160, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 163, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 166, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 169, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 172, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 182, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 430, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 416, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 788, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 260, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 271, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 717, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [17 x i8] c"../fs/ext2/dir.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 290, i32 8 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @ext2_empty_dir._entry, ptr @ext2_empty_dir._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @ext2_dir_operations, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_empty_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext2_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext2_find_entry(ptr nocapture noundef %dir, ptr nocapture noundef readonly %child, ptr nocapture noundef writeonly %res_page, ptr nocapture noundef writeonly %res_page_addr) local_unnamed_addr #0 align 64 {
entry:
  %page_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.qstr, ptr %child, i32 0, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %2 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %child, align 8
  %add2 = add i32 %3, 11
  %and = and i32 %add2, -4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %4 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_size.i, align 8
  %6 = trunc i64 %5 to i32
  %conv.i = add i32 %6, 4095
  %shr.i = lshr i32 %conv.i, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_addr) #10
  %7 = ptrtoint ptr %page_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %page_addr, align 4, !annotation !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv.i)
  %cmp = icmp ult i32 %conv.i, 4096
  br i1 %cmp, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %res_page, align 4
  %9 = ptrtoint ptr %res_page_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %res_page_addr, align 4
  %i_dir_start_lookup = getelementptr i8, ptr %dir, i32 -236
  %10 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_dir_start_lookup, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %shr.i)
  %cmp4.not = icmp ult i32 %11, %shr.i
  %spec.store.select = select i1 %cmp4.not, i32 %11, i32 0
  %i_blocks = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %n.0 = phi i32 [ %spec.store.select, %if.end ], [ %spec.store.select49, %do.cond.do.body_crit_edge ]
  %call7 = call fastcc ptr @ext2_get_page(ptr noundef %dir, i32 noundef %n.0, i32 noundef 0, ptr noundef nonnull %page_addr)
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body.cleanup39_crit_edge, label %if.end11

do.body.cleanup39_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

if.end11:                                         ; preds = %do.body
  %12 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %page_addr, align 4
  %14 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_size.i, align 8
  %conv.i84 = trunc i64 %15 to i32
  %shl.neg.i = mul i32 %n.0, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i84
  %16 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #10
  %sub = sub i32 %16, %and
  %add.ptr = getelementptr i8, ptr %13, i32 %sub
  %cmp13.not141 = icmp ugt ptr %13, %add.ptr
  br i1 %cmp13.not141, label %if.end11.while.end_crit_edge, label %if.end11.while.body_crit_edge

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  br label %while.body

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %if.end11.while.body_crit_edge
  %de.1142 = phi ptr [ %add.ptr.i86, %if.end20.while.body_crit_edge ], [ %13, %if.end11.while.body_crit_edge ]
  %rec_len = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.1142, i32 0, i32 1
  %17 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rec_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp14 = icmp eq i16 %18, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %while.body
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %20, ptr noundef nonnull @__func__.ext2_find_entry, ptr noundef nonnull @.str) #10
  tail call void @kunmap_local_indexed(ptr noundef %13) #10
  %21 = getelementptr inbounds %struct.page, ptr %call7, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %23, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call7 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %24, %if.end.i.i.i ]
  %25 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  %26 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i.i.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !74

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_find_entry, %if.then.i.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %25, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup39_crit_edge

folio_put_testzero.exit.i.i.i.cleanup39_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %25) #10
  br label %cleanup39

if.end17:                                         ; preds = %while.body
  %name_len.i = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.1142, i32 0, i32 2
  %29 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %name_len.i, align 2
  %conv.i85 = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv.i85)
  %cmp.not.i = icmp eq i32 %3, %conv.i85
  br i1 %cmp.not.i, label %if.end.i, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.i:                                         ; preds = %if.end17
  %31 = ptrtoint ptr %de.1142 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %de.1142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.end.i.if.end20_crit_edge, label %ext2_match.exit

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

ext2_match.exit:                                  ; preds = %if.end.i
  %name4.i = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.1142, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %name4.i, i32 %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i.not, label %found, label %ext2_match.exit.if.end20_crit_edge

ext2_match.exit.if.end20_crit_edge:               ; preds = %ext2_match.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %ext2_match.exit.if.end20_crit_edge, %if.end.i.if.end20_crit_edge, %if.end17.if.end20_crit_edge
  %33 = tail call i16 @llvm.bswap.i16(i16 %18) #10
  %conv.i.i = zext i16 %33 to i32
  %add.ptr.i86 = getelementptr i8, ptr %de.1142, i32 %conv.i.i
  %cmp13.not = icmp ugt ptr %add.ptr.i86, %add.ptr
  br i1 %cmp13.not, label %if.end20.while.end_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end20.while.end_crit_edge, %if.end11.while.end_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %13) #10
  %34 = getelementptr inbounds %struct.page, ptr %call7, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i.i87 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i87)
  %tobool.not.i.i.i88 = icmp eq i32 %and.i.i.i87, 0
  br i1 %tobool.not.i.i.i88, label %if.end.i.i.i91, label %if.then.i.i.i90, !prof !73

if.then.i.i.i90:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i89 = add i32 %36, -1
  br label %_compound_head.exit.i.i96

if.end.i.i.i91:                                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call7 to i32
  br label %_compound_head.exit.i.i96

_compound_head.exit.i.i96:                        ; preds = %if.end.i.i.i91, %if.then.i.i.i90
  %retval.0.i.i.i92 = phi i32 [ %sub.i.i.i89, %if.then.i.i.i90 ], [ %37, %if.end.i.i.i91 ]
  %38 = inttoptr i32 %retval.0.i.i.i92 to ptr
  %_refcount.i.i.i.i.i.i93 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i94 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i93, i32 noundef 4) #10
  %39 = ptrtoint ptr %_refcount.i.i.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %_refcount.i.i.i.i.i.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i.i.i.i95 = icmp eq i32 %40, 0
  br i1 %cmp.i.i.i.i.i95, label %if.then.i.i.i.i.i97, label %do.end5.i.i.i.i.i101, !prof !74

if.then.i.i.i.i.i97:                              ; preds = %_compound_head.exit.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  %41 = inttoptr i32 %retval.0.i.i.i92 to ptr
  tail call void @dump_page(ptr noundef %41, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i.i101:                             ; preds = %_compound_head.exit.i.i96
  %call.i.i.i10.i.i.i.i.i98 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i93, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i93, i32 1, i32 3, i32 1) #10
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i93, ptr %_refcount.i.i.i.i.i.i93, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i93) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i.i99 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i99)
  %cmp.i.i.i.i.i.i.i.i100 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i99, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_find_entry, %if.then.i.i.i.i.i.i103)) #10
          to label %folio_put_testzero.exit.i.i.i104 [label %if.then.i.i.i.i.i.i103], !srcloc !79

if.then.i.i.i.i.i.i103:                           ; preds = %do.end5.i.i.i.i.i101
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i102 = zext i1 %cmp.i.i.i.i.i.i.i.i100 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %38, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i102) #10
  br label %folio_put_testzero.exit.i.i.i104

folio_put_testzero.exit.i.i.i104:                 ; preds = %if.then.i.i.i.i.i.i103, %do.end5.i.i.i.i.i101
  br i1 %cmp.i.i.i.i.i.i.i.i100, label %if.then.i4.i.i105, label %folio_put_testzero.exit.i.i.i104.ext2_put_page.exit106_crit_edge

folio_put_testzero.exit.i.i.i104.ext2_put_page.exit106_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_put_page.exit106

if.then.i4.i.i105:                                ; preds = %folio_put_testzero.exit.i.i.i104
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %38) #10
  br label %ext2_put_page.exit106

ext2_put_page.exit106:                            ; preds = %if.then.i4.i.i105, %folio_put_testzero.exit.i.i.i104.ext2_put_page.exit106_crit_edge
  %inc = add i32 %n.0, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %shr.i)
  %cmp22.not = icmp ult i32 %inc, %shr.i
  %spec.store.select49 = select i1 %cmp22.not, i32 %inc, i32 0
  %conv26 = zext i32 %spec.store.select49 to i64
  %43 = ptrtoint ptr %i_blocks to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_blocks, align 8
  %shr = lshr i64 %44, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv26)
  %cmp27 = icmp ult i64 %shr, %conv26
  br i1 %cmp27, label %if.then31, label %do.cond, !prof !74

if.then31:                                        ; preds = %ext2_put_page.exit106
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb32 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %45 = ptrtoint ptr %i_sb32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb32, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %47 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_ino, align 8
  %49 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_size.i, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %46, ptr noundef nonnull @__func__.ext2_find_entry, ptr noundef nonnull @.str.1, i32 noundef %48, i64 noundef %50, i64 noundef %44) #10
  br label %cleanup39

do.cond:                                          ; preds = %ext2_put_page.exit106
  %cmp35.not = icmp eq i32 %spec.store.select49, %spec.store.select
  br i1 %cmp35.not, label %do.cond.cleanup39_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.cond.cleanup39_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup39

found:                                            ; preds = %ext2_match.exit
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %res_page to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7, ptr %res_page, align 4
  %52 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %page_addr, align 4
  %54 = ptrtoint ptr %res_page_addr to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %res_page_addr, align 4
  %55 = ptrtoint ptr %i_dir_start_lookup to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %n.0, ptr %i_dir_start_lookup, align 4
  br label %cleanup39

cleanup39:                                        ; preds = %found, %do.cond.cleanup39_crit_edge, %if.then31, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup39_crit_edge, %do.body.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.2 = phi ptr [ %de.1142, %found ], [ inttoptr (i32 -2 to ptr), %entry.cleanup39_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then31 ], [ inttoptr (i32 -2 to ptr), %folio_put_testzero.exit.i.i.i.cleanup39_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then.i4.i.i ], [ %call7, %do.body.cleanup39_crit_edge ], [ inttoptr (i32 -2 to ptr), %do.cond.cleanup39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_addr) #10
  ret ptr %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ext2_get_page(ptr nocapture noundef readonly %dir, i32 noundef %n, i32 noundef %quiet, ptr nocapture noundef %page_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @read_cache_page(ptr noundef %1, i32 noundef %n, ptr noundef null, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %2 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %2, 512
  %call.i28 = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i, i32 noundef %or.i) #10
  %3 = ptrtoint ptr %page_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i28, ptr %page_addr, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i.not.i = icmp eq i32 %5, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageChecked.exit, !prof !74

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.6) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !80
  unreachable

PageChecked.exit:                                 ; preds = %if.then
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call.i, align 4
  %8 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then7, label %PageChecked.exit.cleanup_crit_edge, !prof !74

PageChecked.exit.cleanup_crit_edge:               ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %PageChecked.exit
  %9 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %11, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %12, %if.end.i.i ]
  %13 = inttoptr i32 %retval.0.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i24 = icmp eq i32 %15, -1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %9, align 4
  %and.i16.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i24, label %if.then.i25, label %do.end10.i, !prof !74

if.then.i25:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !73

if.then.i19.i:                                    ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i = add i32 %17, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %18, %if.end.i20.i ]
  %19 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.7) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !81
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !73

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i = add i32 %17, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %20, %if.end.i27.i ]
  %21 = inttoptr i32 %retval.0.i28.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool9.not = icmp eq i32 %24, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %PageError.exit.fail_crit_edge

PageError.exit.fail_crit_edge:                    ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

lor.lhs.false:                                    ; preds = %PageError.exit
  %call10 = tail call fastcc zeroext i1 @ext2_check_page(ptr noundef %call.i, i32 noundef %quiet, ptr noundef %call.i28)
  br i1 %call10, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.fail_crit_edge

lor.lhs.false.fail_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fail:                                             ; preds = %lor.lhs.false.fail_crit_edge, %PageError.exit.fail_crit_edge
  %25 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page_addr, align 4
  tail call fastcc void @ext2_put_page(ptr noundef %call.i, ptr noundef %26)
  br label %cleanup

cleanup:                                          ; preds = %fail, %lor.lhs.false.cleanup_crit_edge, %PageChecked.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %fail ], [ %call.i, %PageChecked.exit.cleanup_crit_edge ], [ %call.i, %lor.lhs.false.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ext2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ext2_put_page(ptr noundef %page, ptr noundef %page_addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kunmap_local_indexed(ptr noundef %page_addr) #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !74

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_put_page, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %4) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ext2_dotdot(ptr nocapture noundef readonly %dir, ptr nocapture noundef writeonly %p, ptr nocapture noundef writeonly %pa) local_unnamed_addr #0 align 64 {
entry:
  %page_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_addr) #10
  %0 = ptrtoint ptr %page_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page_addr, align 4, !annotation !72
  %call = call fastcc ptr @ext2_get_page(ptr noundef %dir, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %page_addr)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %page_addr, align 4
  %rec_len.i = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %rec_len.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rec_len.i, align 4
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #10
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %6 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %p, align 4
  %7 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %2, ptr %pa, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %de.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %add.ptr.i, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_addr) #10
  ret ptr %de.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_inode_by_name(ptr nocapture noundef %dir, ptr nocapture noundef readonly %child, ptr nocapture noundef writeonly %ino) local_unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  %page_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #10
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_addr) #10
  %1 = ptrtoint ptr %page_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %page_addr, align 4, !annotation !72
  %call = call ptr @ext2_find_entry(ptr noundef %dir, ptr noundef %child, ptr noundef nonnull %page, ptr noundef nonnull %page_addr)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ino, align 4
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page, align 4
  %9 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %page_addr, align 4
  tail call void @kunmap_local_indexed(ptr noundef %10) #10
  %11 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %13, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %8 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %14, %if.end.i.i.i ]
  %15 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  %16 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !74

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_inode_by_name, %if.then.i.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %15, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.i.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %15) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %folio_put_testzero.exit.i.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_addr) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ext2_set_link(ptr noundef %dir, ptr noundef %de, ptr noundef %page, ptr noundef %page_addr, ptr nocapture noundef readonly %inode, i32 noundef %update_times) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %1, 12
  %add.ptr = getelementptr i8, ptr %de, i32 %shl.i
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %page_addr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sext i32 %sub.ptr.sub to i64
  %rec_len = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de, i32 0, i32 1
  %2 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rec_len, align 4
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %conv.i30 = zext i16 %4 to i32
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 788) #10
  %5 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.19) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %9, i32 noundef 4) #10
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %9, align 4
  %and.i.i4.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %9, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %9) #10
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %call.i = tail call i32 @__block_write_begin(ptr noundef %page, i64 noundef %conv, i32 noundef %conv.i30, ptr noundef nonnull @ext2_get_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.end10, label %do.body5, !prof !73

do.body5:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 474, 0\0A.popsection", ""() #10, !srcloc !85
  unreachable

do.end10:                                         ; preds = %lock_page.exit
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %de to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %de, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext2_super_block, ptr %25, i32 0, i32 29
  %26 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_feature_incompat.i, align 4
  %and.i = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end10.ext2_set_de_type.exit_crit_edge, label %if.then.i31

do.end10.ext2_set_de_type.exit_crit_edge:         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_set_de_type.exit

if.then.i31:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inode, align 8
  %call1.i = tail call zeroext i8 @fs_umode_to_ftype(i16 noundef zeroext %29) #10
  br label %ext2_set_de_type.exit

ext2_set_de_type.exit:                            ; preds = %if.then.i31, %do.end10.ext2_set_de_type.exit_crit_edge
  %call1.sink.i = phi i8 [ %call1.i, %if.then.i31 ], [ 0, %do.end10.ext2_set_de_type.exit_crit_edge ]
  %30 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de, i32 0, i32 3
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call1.sink.i, ptr %30, align 1
  %call12 = tail call fastcc i32 @ext2_commit_chunk(ptr noundef %page, i64 noundef %conv, i32 noundef %conv.i30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_times)
  %tobool13.not = icmp eq i32 %update_times, 0
  br i1 %tobool13.not, label %ext2_set_de_type.exit.if.end15_crit_edge, label %if.then14

ext2_set_de_type.exit.if.end15_crit_edge:         ; preds = %ext2_set_de_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %ext2_set_de_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #10
  %32 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %33 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %ext2_set_de_type.exit.if.end15_crit_edge
  %i_flags = getelementptr i8, ptr %dir, i32 -268
  %34 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %i_flags, align 4
  %and = and i32 %35, -4097
  store i32 %and, ptr %i_flags, align 4
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ext2_commit_chunk(ptr noundef %page, i64 noundef %pos, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i1.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #10
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %entry
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %entry ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %4 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %4, -2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #10
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !73

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  %call = tail call i32 @block_write_end(ptr noundef null, ptr noundef %1, i64 noundef %pos, i32 noundef %len, i32 noundef %len, ptr noundef %page, ptr noundef null) #10
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %6)
  %cmp = icmp sgt i64 %add, %6
  br i1 %cmp, label %if.then, label %inode_inc_iversion.exit.if.end_crit_edge

inode_inc_iversion.exit.if.end_crit_edge:         ; preds = %inode_inc_iversion.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %inode_inc_iversion.exit
  %7 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i30 = add i32 %10, 1
  store volatile i32 %add.i.i30, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.then.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then.i_size_write.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %12 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %16 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %21, ptrtoint (ptr @lockdep_recursion to i32)
  %22 = inttoptr i32 %add.i28.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  %25 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i7.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool20.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %29 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i29.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i31 = icmp eq i32 %32, 0
  br i1 %cmp.i.i31, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i9.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %36, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %37 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %40, ptrtoint (ptr @hardirqs_enabled to i32)
  %41 = inttoptr i32 %add47.i.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %44 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i12.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %47, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool54.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !73

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %48 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !92
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %50 = tail call ptr @llvm.returnaddress(i32 0) #10
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %51) #10
  %52 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %add, ptr %i_size, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %51) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  %53 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %55 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i26.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  tail call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #10
  br label %if.end

if.end:                                           ; preds = %i_size_write.exit, %inode_inc_iversion.exit.if.end_crit_edge
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 10
  %61 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_flags, align 4
  %and = and i32 %62, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %i_flags = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %63 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %i_flags, align 4
  %and5 = and i32 %64, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %65 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  %and.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i32 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i32, label %if.end.i.i, label %if.then.i.i34, !prof !73

if.then.i.i34:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i33 = add i32 %67, -1
  br label %write_one_page.exit

if.end.i.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %page to i32
  br label %write_one_page.exit

write_one_page.exit:                              ; preds = %if.end.i.i, %if.then.i.i34
  %retval.0.i.i = phi i32 [ %sub.i.i33, %if.then.i.i34 ], [ %68, %if.end.i.i ]
  %69 = inttoptr i32 %retval.0.i.i to ptr
  %call1.i = tail call i32 @folio_write_one(ptr noundef %69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool9.not = icmp eq i32 %call1.i, 0
  br i1 %tobool9.not, label %if.then10, label %write_one_page.exit.if.end13_crit_edge

write_one_page.exit.if.end13_crit_edge:           ; preds = %write_one_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %write_one_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @sync_inode_metadata(ptr noundef %3, i32 noundef 1) #10
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_page(ptr noundef %page) #10
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10, %write_one_page.exit.if.end13_crit_edge
  %err.0 = phi i32 [ %call1.i, %write_one_page.exit.if.end13_crit_edge ], [ %call11, %if.then10 ], [ 0, %if.else ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_add_link(ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  %page_addr = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
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
  %add4 = add i32 %7, 11
  %and = and i32 %add4, -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_addr) #10
  %12 = ptrtoint ptr %page_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %page_addr, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size.i, align 8
  %15 = trunc i64 %14 to i32
  %conv.i = add i32 %15, 4095
  %shr.i = lshr i32 %conv.i, 12
  %sub = sub i32 4096, %and
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %n.0256 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call6 = call fastcc ptr @ext2_get_page(ptr noundef %3, i32 noundef %n.0256, i32 noundef 0, ptr noundef nonnull %page_addr)
  %16 = ptrtoint ptr %call6 to i32
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup86.loopexit, label %if.end

if.end:                                           ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 788) #10
  %17 = getelementptr inbounds %struct.page, ptr %call6, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !73

if.end._compound_head.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %19, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.end._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end._compound_head.exit.i_crit_edge ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.19) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #10
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %20, align 4
  %and.i.i4.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #10
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %20) #10
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %28 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page_addr, align 4
  %30 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_size.i, align 8
  %conv.i163 = trunc i64 %31 to i32
  %shl.neg.i = mul i32 %n.0256, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i163
  %32 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #10
  %add.ptr = getelementptr i8, ptr %29, i32 %32
  %add.ptr10 = getelementptr i8, ptr %29, i32 %sub
  %cmp11.not250 = icmp ugt ptr %29, %add.ptr10
  br i1 %cmp11.not250, label %lock_page.exit.while.end_crit_edge, label %lock_page.exit.while.body_crit_edge

lock_page.exit.while.body_crit_edge:              ; preds = %lock_page.exit
  br label %while.body

lock_page.exit.while.end_crit_edge:               ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end49.while.body_crit_edge, %lock_page.exit.while.body_crit_edge
  %de.1251 = phi ptr [ %add.ptr51, %if.end49.while.body_crit_edge ], [ %29, %lock_page.exit.while.body_crit_edge ]
  %cmp12 = icmp eq ptr %de.1251, %add.ptr
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %11 to i16
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %rec_len15 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %add.ptr, i32 0, i32 1
  %34 = ptrtoint ptr %rec_len15 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %rec_len15, align 4
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %add.ptr, align 4
  %.pre = and i32 %11, 65535
  br label %got_it

if.end17:                                         ; preds = %while.body
  %rec_len18 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.1251, i32 0, i32 1
  %36 = ptrtoint ptr %rec_len18 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rec_len18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %cmp20 = icmp eq i16 %37, 0
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call6 to i32
  %39 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb.i, align 4
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %40, ptr noundef nonnull @__func__.ext2_add_link, ptr noundef nonnull @.str) #10
  br label %out_unlock

if.end23:                                         ; preds = %if.end17
  %name_len.i = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.1251, i32 0, i32 2
  %41 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %name_len.i, align 2
  %conv.i165 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.i165)
  %cmp.not.i = icmp eq i32 %7, %conv.i165
  br i1 %cmp.not.i, label %if.end.i, label %if.end23.if.end26_crit_edge

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end.i:                                         ; preds = %if.end23
  %43 = ptrtoint ptr %de.1251 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %de.1251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.end.i.if.end26_crit_edge, label %ext2_match.exit

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

ext2_match.exit:                                  ; preds = %if.end.i
  %name4.i = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.1251, i32 0, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr %5, ptr %name4.i, i32 %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i.not, label %out_unlock.loopexit, label %ext2_match.exit.if.end26_crit_edge

ext2_match.exit.if.end26_crit_edge:               ; preds = %ext2_match.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26:                                         ; preds = %ext2_match.exit.if.end26_crit_edge, %if.end.i.if.end26_crit_edge, %if.end23.if.end26_crit_edge
  %conv28 = zext i8 %42 to i16
  %add30 = add nuw nsw i16 %conv28, 11
  %and31 = and i16 %add30, 508
  %45 = tail call i16 @llvm.bswap.i16(i16 %37) #10
  %conv.i166 = zext i16 %45 to i32
  %46 = ptrtoint ptr %de.1251 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %de.1251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool37.not = icmp ne i32 %47, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv.i166)
  %cmp39.not = icmp ugt i32 %and, %conv.i166
  %or.cond = select i1 %tobool37.not, i1 true, i1 %cmp39.not
  br i1 %or.cond, label %if.end42, label %if.end26.got_it_crit_edge

if.end26.got_it_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %got_it

if.end42:                                         ; preds = %if.end26
  %conv44 = zext i16 %and31 to i32
  %add45 = add i32 %and, %conv44
  call void @__sanitizer_cov_trace_cmp4(i32 %add45, i32 %conv.i166)
  %cmp46.not = icmp ugt i32 %add45, %conv.i166
  br i1 %cmp46.not, label %if.end49, label %if.end42.got_it_crit_edge

if.end42.got_it_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %got_it

if.end49:                                         ; preds = %if.end42
  %add.ptr51 = getelementptr i8, ptr %de.1251, i32 %conv.i166
  %cmp11.not = icmp ugt ptr %add.ptr51, %add.ptr10
  br i1 %cmp11.not, label %if.end49.while.end_crit_edge, label %if.end49.while.body_crit_edge

if.end49.while.body_crit_edge:                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end49.while.end_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end49.while.end_crit_edge, %lock_page.exit.while.end_crit_edge
  tail call void @unlock_page(ptr noundef %call6) #10
  tail call void @kunmap_local_indexed(ptr noundef %29) #10
  %48 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %17, align 4
  %and.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i167 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i167, label %while.end._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i168, !prof !73

while.end._compound_head.exit.i.i_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i.i

if.then.i.i.i168:                                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %49, -1
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i168, %while.end._compound_head.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i168 ], [ %16, %while.end._compound_head.exit.i.i_crit_edge ]
  %50 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  %51 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp.i.i.i.i.i = icmp eq i32 %52, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !74

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %53, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %54, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_add_link, %if.then.i.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %50, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.i.for.inc_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %50) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %n.0256, 1
  %exitcond = icmp eq i32 %n.0256, %shr.i
  br i1 %exitcond, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 550, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

got_it:                                           ; preds = %if.end42.got_it_crit_edge, %if.end26.got_it_crit_edge, %if.then13
  %conv59.pre-phi = phi i32 [ %.pre, %if.then13 ], [ %conv.i166, %if.end42.got_it_crit_edge ], [ %conv.i166, %if.end26.got_it_crit_edge ]
  %de.1251261 = phi ptr [ %add.ptr, %if.then13 ], [ %de.1251, %if.end42.got_it_crit_edge ], [ %de.1251, %if.end26.got_it_crit_edge ]
  %rec_len.2.ph = phi i16 [ %conv, %if.then13 ], [ %45, %if.end42.got_it_crit_edge ], [ %45, %if.end26.got_it_crit_edge ]
  %name_len.2.ph = phi i16 [ 0, %if.then13 ], [ %and31, %if.end42.got_it_crit_edge ], [ %and31, %if.end26.got_it_crit_edge ]
  %55 = ptrtoint ptr %call6 to i32
  %index.i = getelementptr inbounds %struct.page, ptr %call6, i32 0, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %57, 12
  %add.ptr57 = getelementptr i8, ptr %de.1251261, i32 %shl.i
  %58 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %page_addr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr57 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %59 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv58 = sext i32 %sub.ptr.sub to i64
  %call.i = tail call i32 @__block_write_begin(ptr noundef %call6, i64 noundef %conv58, i32 noundef %conv59.pre-phi, ptr noundef nonnull @ext2_get_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool61.not = icmp eq i32 %call.i, 0
  br i1 %tobool61.not, label %if.end63, label %got_it.out_unlock_crit_edge

got_it.out_unlock_crit_edge:                      ; preds = %got_it
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end63:                                         ; preds = %got_it
  %60 = ptrtoint ptr %de.1251261 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %de.1251261, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool65.not = icmp eq i32 %61, 0
  br i1 %tobool65.not, label %if.end63.if.end77_crit_edge, label %if.then66

if.end63.if.end77_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %conv67 = zext i16 %name_len.2.ph to i32
  %add.ptr68 = getelementptr i8, ptr %de.1251261, i32 %conv67
  %sub71 = sub i16 %rec_len.2.ph, %name_len.2.ph
  %62 = tail call i16 @llvm.bswap.i16(i16 %sub71) #10
  %rec_len73 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %add.ptr68, i32 0, i32 1
  %63 = ptrtoint ptr %rec_len73 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %rec_len73, align 4
  %64 = tail call i16 @llvm.bswap.i16(i16 %name_len.2.ph) #10
  %rec_len76 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.1251261, i32 0, i32 1
  %65 = ptrtoint ptr %rec_len76 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %rec_len76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then66, %if.end63.if.end77_crit_edge
  %de.3 = phi ptr [ %add.ptr68, %if.then66 ], [ %de.1251261, %if.end63.if.end77_crit_edge ]
  %conv78 = trunc i32 %7 to i8
  %name_len79 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.3, i32 0, i32 2
  %66 = ptrtoint ptr %name_len79 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv78, ptr %name_len79, align 2
  %name80 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.3, i32 0, i32 4
  %67 = call ptr @memcpy(ptr %name80, ptr %5, i32 %7)
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %68 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %i_ino, align 8
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %de.3 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %de.3, align 4
  %i_sb.i171 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %72 = ptrtoint ptr %i_sb.i171 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i_sb.i171, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 33
  %74 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %75, i32 0, i32 13
  %76 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext2_super_block, ptr %77, i32 0, i32 29
  %78 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %s_feature_incompat.i, align 4
  %and.i = and i32 %79, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i172 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i172, label %if.end77.ext2_set_de_type.exit_crit_edge, label %if.then.i173

if.end77.ext2_set_de_type.exit_crit_edge:         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_set_de_type.exit

if.then.i173:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %inode, align 8
  %call1.i = tail call zeroext i8 @fs_umode_to_ftype(i16 noundef zeroext %81) #10
  br label %ext2_set_de_type.exit

ext2_set_de_type.exit:                            ; preds = %if.then.i173, %if.end77.ext2_set_de_type.exit_crit_edge
  %call1.sink.i = phi i8 [ %call1.i, %if.then.i173 ], [ 0, %if.end77.ext2_set_de_type.exit_crit_edge ]
  %82 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.3, i32 0, i32 3
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %call1.sink.i, ptr %82, align 1
  %call83 = tail call fastcc i32 @ext2_commit_chunk(ptr noundef %call6, i64 noundef %conv58, i32 noundef %conv59.pre-phi)
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #10
  %84 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %85 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_flags = getelementptr i8, ptr %3, i32 -268
  %86 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %i_flags, align 4
  %and85 = and i32 %87, -4097
  store i32 %and85, ptr %i_flags, align 4
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #10
  br label %out_put

out_put:                                          ; preds = %out_unlock, %ext2_set_de_type.exit
  %88 = phi i32 [ %98, %out_unlock ], [ %55, %ext2_set_de_type.exit ]
  %err.2 = phi i32 [ %err.4, %out_unlock ], [ %call83, %ext2_set_de_type.exit ]
  %89 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %page_addr, align 4
  call void @kunmap_local_indexed(ptr noundef %90) #10
  %91 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %17, align 4
  %and.i.i.i175 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i175)
  %tobool.not.i.i.i176 = icmp eq i32 %and.i.i.i175, 0
  br i1 %tobool.not.i.i.i176, label %out_put._compound_head.exit.i.i184_crit_edge, label %if.then.i.i.i178, !prof !73

out_put._compound_head.exit.i.i184_crit_edge:     ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #12
  br label %_compound_head.exit.i.i184

if.then.i.i.i178:                                 ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i177 = add i32 %92, -1
  br label %_compound_head.exit.i.i184

_compound_head.exit.i.i184:                       ; preds = %if.then.i.i.i178, %out_put._compound_head.exit.i.i184_crit_edge
  %retval.0.i.i.i180 = phi i32 [ %sub.i.i.i177, %if.then.i.i.i178 ], [ %88, %out_put._compound_head.exit.i.i184_crit_edge ]
  %93 = inttoptr i32 %retval.0.i.i.i180 to ptr
  %_refcount.i.i.i.i.i.i181 = getelementptr inbounds %struct.page, ptr %93, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i182 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i181, i32 noundef 4) #10
  %94 = ptrtoint ptr %_refcount.i.i.i.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %_refcount.i.i.i.i.i.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp.i.i.i.i.i183 = icmp eq i32 %95, 0
  br i1 %cmp.i.i.i.i.i183, label %if.then.i.i.i.i.i185, label %do.end5.i.i.i.i.i189, !prof !74

if.then.i.i.i.i.i185:                             ; preds = %_compound_head.exit.i.i184
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %93, ptr noundef nonnull @.str.22) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i.i189:                             ; preds = %_compound_head.exit.i.i184
  %call.i.i.i10.i.i.i.i.i186 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i181, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i181, i32 1, i32 3, i32 1) #10
  %96 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i181, ptr %_refcount.i.i.i.i.i.i181, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i181) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i.i187 = extractvalue { i32, i32 } %96, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i187)
  %cmp.i.i.i.i.i.i.i.i188 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i187, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_add_link, %if.then.i.i.i.i.i.i191)) #10
          to label %folio_put_testzero.exit.i.i.i192 [label %if.then.i.i.i.i.i.i191], !srcloc !79

if.then.i.i.i.i.i.i191:                           ; preds = %do.end5.i.i.i.i.i189
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i190 = zext i1 %cmp.i.i.i.i.i.i.i.i188 to i32
  call void @__page_ref_mod_and_test(ptr noundef %93, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i190) #10
  br label %folio_put_testzero.exit.i.i.i192

folio_put_testzero.exit.i.i.i192:                 ; preds = %if.then.i.i.i.i.i.i191, %do.end5.i.i.i.i.i189
  br i1 %cmp.i.i.i.i.i.i.i.i188, label %if.then.i4.i.i193, label %folio_put_testzero.exit.i.i.i192.cleanup86_crit_edge

folio_put_testzero.exit.i.i.i192.cleanup86_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i192
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup86

if.then.i4.i.i193:                                ; preds = %folio_put_testzero.exit.i.i.i192
  call void @__sanitizer_cov_trace_pc() #12
  call void @__put_page(ptr noundef %93) #10
  br label %cleanup86

out_unlock.loopexit:                              ; preds = %ext2_match.exit
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %call6 to i32
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock.loopexit, %got_it.out_unlock_crit_edge, %if.then22
  %98 = phi i32 [ %55, %got_it.out_unlock_crit_edge ], [ %38, %if.then22 ], [ %97, %out_unlock.loopexit ]
  %err.4 = phi i32 [ %call.i, %got_it.out_unlock_crit_edge ], [ -5, %if.then22 ], [ -17, %out_unlock.loopexit ]
  tail call void @unlock_page(ptr noundef %call6) #10
  br label %out_put

cleanup86.loopexit:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %call6 to i32
  br label %cleanup86

cleanup86:                                        ; preds = %cleanup86.loopexit, %if.then.i4.i.i193, %folio_put_testzero.exit.i.i.i192.cleanup86_crit_edge
  %retval.0 = phi i32 [ %err.2, %folio_put_testzero.exit.i.i.i192.cleanup86_crit_edge ], [ %err.2, %if.then.i4.i.i193 ], [ %99, %cleanup86.loopexit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_addr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_delete_entry(ptr noundef %dir, ptr noundef %page, ptr noundef %kaddr) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %dir to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %kaddr to i32
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
  %rec_len = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %dir, i32 0, i32 1
  %8 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rec_len, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  %conv.i = zext i16 %10 to i32
  %add = add i32 %sub.ptr.sub, %conv.i
  %add.ptr = getelementptr i8, ptr %kaddr, i32 %and
  %cmp76 = icmp ult ptr %add.ptr, %dir
  br i1 %cmp76, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %de.077 = phi ptr [ %add.ptr.i, %if.end.while.body_crit_edge ], [ %add.ptr, %entry.while.body_crit_edge ]
  %rec_len5 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.077, i32 0, i32 1
  %11 = ptrtoint ptr %rec_len5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rec_len5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp6 = icmp eq i16 %12, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %5, ptr noundef nonnull @__func__.ext2_delete_entry, ptr noundef nonnull @.str) #10
  br label %out

if.end:                                           ; preds = %while.body
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i = getelementptr i8, ptr %de.077, i32 %conv.i.i
  %cmp = icmp ult ptr %add.ptr.i, %dir
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %pde.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %de.077, %if.end.while.end_crit_edge ]
  %tobool.not = icmp eq ptr %pde.0.lcssa, null
  %sub.ptr.lhs.cast10 = ptrtoint ptr %pde.0.lcssa to i32
  %sub.ptr.sub12 = sub i32 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast
  %from.0 = select i1 %tobool.not, i32 %and, i32 %sub.ptr.sub12
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  %conv.i72 = zext i32 %15 to i64
  %shl.i = shl nuw nsw i64 %conv.i72, 12
  %conv15 = zext i32 %from.0 to i64
  %add16 = add nuw nsw i64 %shl.i, %conv15
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 788) #10
  %16 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.19) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %20, i32 noundef 4) #10
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %20, align 4
  %and.i.i4.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i_crit_edge

folio_flags.exit.i.i.if.then.i_crit_edge:         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %20, i32 1, i32 3, i32 1) #10
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i_crit_edge

folio_trylock.exit.i.if.then.i_crit_edge:         ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit

if.then.i:                                        ; preds = %folio_trylock.exit.i.if.then.i_crit_edge, %folio_flags.exit.i.i.if.then.i_crit_edge
  tail call void @__folio_lock(ptr noundef %20) #10
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %sub17 = sub i32 %add, %from.0
  %call.i = tail call i32 @__block_write_begin(ptr noundef %page, i64 noundef %add16, i32 noundef %sub17, ptr noundef nonnull @ext2_get_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %do.end29, label %do.body23, !prof !73

do.body23:                                        ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ext2/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 614, 0\0A.popsection", ""() #10, !srcloc !96
  unreachable

do.end29:                                         ; preds = %lock_page.exit
  br i1 %tobool.not, label %do.end29.if.end35_crit_edge, label %if.then31

do.end29.if.end35_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then31:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i73 = trunc i32 %sub17 to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv.i73) #10
  %rec_len34 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %pde.0.lcssa, i32 0, i32 1
  %28 = ptrtoint ptr %rec_len34 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %rec_len34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %do.end29.if.end35_crit_edge
  %29 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dir, align 4
  %call38 = tail call fastcc i32 @ext2_commit_chunk(ptr noundef %page, i64 noundef %add16, i32 noundef %sub17)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %3) #10
  %30 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  %31 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %i_flags = getelementptr i8, ptr %3, i32 -268
  %32 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %i_flags, align 4
  %and40 = and i32 %33, -4097
  store i32 %and40, ptr %i_flags, align 4
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #10
  br label %out

out:                                              ; preds = %if.end35, %if.then
  %err.0 = phi i32 [ -5, %if.then ], [ %call38, %if.end35 ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_make_empty(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef 0, i32 noundef 7, i32 noundef %3) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__block_write_begin(ptr noundef nonnull %call.i.i, i64 noundef 0, i32 noundef %7, ptr noundef nonnull @ext2_get_block) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @unlock_page(ptr noundef nonnull %call.i.i) #10
  br label %fail

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %8 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %8, 512
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i1.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 213
  %17 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %18, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  %call.i.i49 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %call.i.i, i32 noundef %or.i) #10
  %19 = call ptr @memset(ptr %call.i.i49, i32 0, i32 %7)
  %name_len = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %call.i.i49, i32 0, i32 2
  %20 = ptrtoint ptr %name_len to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %name_len, align 2
  %rec_len = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %call.i.i49, i32 0, i32 1
  %21 = ptrtoint ptr %rec_len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 3072, ptr %rec_len, align 4
  %name = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %call.i.i49, i32 0, i32 4
  %22 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 771751936, ptr %name, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %call.i.i49 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call.i.i49, align 4
  %27 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 33
  %29 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_es.i = getelementptr inbounds %struct.ext2_sb_info, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %s_es.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_es.i, align 4
  %s_feature_incompat.i = getelementptr inbounds %struct.ext2_super_block, ptr %32, i32 0, i32 29
  %33 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %s_feature_incompat.i, align 4
  %and.i = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end5.ext2_set_de_type.exit_crit_edge, label %if.then.i

if.end5.ext2_set_de_type.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_set_de_type.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %inode, align 8
  %call1.i = tail call zeroext i8 @fs_umode_to_ftype(i16 noundef zeroext %36) #10
  br label %ext2_set_de_type.exit

ext2_set_de_type.exit:                            ; preds = %if.then.i, %if.end5.ext2_set_de_type.exit_crit_edge
  %call1.sink.i = phi i8 [ %call1.i, %if.then.i ], [ 0, %if.end5.ext2_set_de_type.exit_crit_edge ]
  %37 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %call.i.i49, i32 0, i32 3
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call1.sink.i, ptr %37, align 1
  %add.ptr = getelementptr i8, ptr %call.i.i49, i32 12
  %name_len9 = getelementptr i8, ptr %call.i.i49, i32 18
  %39 = ptrtoint ptr %name_len9 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %name_len9, align 2
  %40 = trunc i32 %7 to i16
  %conv.i = add i16 %40, -12
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #10
  %rec_len11 = getelementptr i8, ptr %call.i.i49, i32 16
  %42 = ptrtoint ptr %rec_len11 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %rec_len11, align 4
  %i_ino12 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 11
  %43 = ptrtoint ptr %i_ino12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %i_ino12, align 8
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %add.ptr, align 4
  %name14 = getelementptr i8, ptr %call.i.i49, i32 20
  %47 = ptrtoint ptr %name14 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 774766592, ptr %name14, align 4
  %48 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i52 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %50 = ptrtoint ptr %s_fs_info.i.i52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i.i52, align 16
  %s_es.i53 = getelementptr inbounds %struct.ext2_sb_info, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %s_es.i53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_es.i53, align 4
  %s_feature_incompat.i54 = getelementptr inbounds %struct.ext2_super_block, ptr %53, i32 0, i32 29
  %54 = ptrtoint ptr %s_feature_incompat.i54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_feature_incompat.i54, align 4
  %and.i55 = and i32 %55, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %ext2_set_de_type.exit.ext2_set_de_type.exit60_crit_edge, label %if.then.i58

ext2_set_de_type.exit.ext2_set_de_type.exit60_crit_edge: ; preds = %ext2_set_de_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_set_de_type.exit60

if.then.i58:                                      ; preds = %ext2_set_de_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %inode, align 8
  %call1.i57 = tail call zeroext i8 @fs_umode_to_ftype(i16 noundef zeroext %57) #10
  br label %ext2_set_de_type.exit60

ext2_set_de_type.exit60:                          ; preds = %if.then.i58, %ext2_set_de_type.exit.ext2_set_de_type.exit60_crit_edge
  %call1.sink.i59 = phi i8 [ %call1.i57, %if.then.i58 ], [ 0, %ext2_set_de_type.exit.ext2_set_de_type.exit60_crit_edge ]
  %58 = getelementptr i8, ptr %call.i.i49, i32 19
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %call1.sink.i59, ptr %58, align 1
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i49) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !99
  %60 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i1.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 213
  %64 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %65, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %66 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %69, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %call19 = tail call fastcc i32 @ext2_commit_chunk(ptr noundef nonnull %call.i.i, i64 noundef 0, i32 noundef %7)
  br label %fail

fail:                                             ; preds = %ext2_set_de_type.exit60, %if.then4
  %err.0 = phi i32 [ %call.i, %if.then4 ], [ %call19, %ext2_set_de_type.exit60 ]
  %70 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %and.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i61 = add i32 %72, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i61, %if.then.i.i ], [ %73, %if.end.i.i ]
  %74 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %74, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %75 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp.i.i.i.i = icmp eq i32 %76, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !74

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %74, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %77, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_make_empty, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %74, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %74) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %err.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %err.0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ext2_empty_dir(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  %page_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_addr) #10
  %0 = ptrtoint ptr %page_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %page_addr, align 4
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %1 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %i_size.i, align 8
  %3 = trunc i64 %2 to i32
  %conv.i = add i32 %3, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv.i)
  %cmp104.not = icmp ult i32 %conv.i, 4096
  br i1 %cmp104.not, label %entry.cleanup45_crit_edge, label %for.body.lr.ph

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

for.body.lr.ph:                                   ; preds = %entry
  %shr.i = lshr i32 %conv.i, 12
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dir_has_error.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %dir_has_error.1, %for.inc.for.body_crit_edge ]
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call1 = call fastcc ptr @ext2_get_page(ptr noundef %inode, i32 noundef %i.0105, i32 noundef %dir_has_error.0107, ptr noundef nonnull %page_addr)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page_addr, align 4
  %6 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size.i, align 8
  %conv.i72 = trunc i64 %7 to i32
  %shl.neg.i = mul i32 %i.0105, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i72
  %8 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #10
  %sub = add nsw i32 %8, -12
  %add.ptr = getelementptr i8, ptr %5, i32 %sub
  %cmp4.not102 = icmp ugt ptr %5, %add.ptr
  br i1 %cmp4.not102, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end42.while.body_crit_edge, %if.end.while.body_crit_edge
  %de.0103 = phi ptr [ %add.ptr.i, %if.end42.while.body_crit_edge ], [ %5, %if.end.while.body_crit_edge ]
  %rec_len = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.0103, i32 0, i32 1
  %9 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rec_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp5 = icmp eq i16 %10, 0
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %12, ptr noundef nonnull @__func__.ext2_empty_dir, ptr noundef nonnull @.str) #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %add.ptr, ptr noundef %de.0103) #14
  br label %not_empty

if.end9:                                          ; preds = %while.body
  %13 = ptrtoint ptr %de.0103 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %de.0103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11.not = icmp eq i32 %14, 0
  br i1 %cmp11.not, label %if.end9.if.end42_crit_edge, label %if.then13

if.end9.if.end42_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then13:                                        ; preds = %if.end9
  %name = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.0103, i32 0, i32 4
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %16)
  %cmp15.not = icmp eq i8 %16, 46
  br i1 %cmp15.not, label %if.end18, label %if.then13.not_empty_crit_edge

if.then13.not_empty_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_empty

if.end18:                                         ; preds = %if.then13
  %name_len = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.0103, i32 0, i32 2
  %17 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %name_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp20 = icmp ugt i8 %18, 2
  br i1 %cmp20, label %if.end18.not_empty_crit_edge, label %if.end23

if.end18.not_empty_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_empty

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp26.not = icmp eq i8 %18, 2
  br i1 %cmp26.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end23
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i_ino, align 8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %21)
  %cmp30.not = icmp eq i32 %14, %21
  br i1 %cmp30.not, label %if.then28.if.end42_crit_edge, label %if.then28.not_empty_crit_edge

if.then28.not_empty_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_empty

if.then28.if.end42_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.else:                                          ; preds = %if.end23
  %arrayidx35 = getelementptr [0 x i8], ptr %name, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %23)
  %cmp37.not = icmp eq i8 %23, 46
  br i1 %cmp37.not, label %if.else.if.end42_crit_edge, label %if.else.not_empty_crit_edge

if.else.not_empty_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %not_empty

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %if.else.if.end42_crit_edge, %if.then28.if.end42_crit_edge, %if.end9.if.end42_crit_edge
  %24 = tail call i16 @llvm.bswap.i16(i16 %10) #10
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i = getelementptr i8, ptr %de.0103, i32 %conv.i.i
  %cmp4.not = icmp ugt ptr %add.ptr.i, %add.ptr
  br i1 %cmp4.not, label %if.end42.while.end_crit_edge, label %if.end42.while.body_crit_edge

if.end42.while.body_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end42.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %5) #10
  %25 = getelementptr inbounds %struct.page, ptr %call1, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %27, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %call1 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %28, %if.end.i.i.i ]
  %29 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !74

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = inttoptr i32 %retval.0.i.i.i to ptr
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_empty_dir, %if.then.i.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %29, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.i.for.inc_crit_edge:  ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %29) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dir_has_error.1 = phi i32 [ 1, %for.body.for.inc_crit_edge ], [ %dir_has_error.0107, %folio_put_testzero.exit.i.i.i.for.inc_crit_edge ], [ %dir_has_error.0107, %if.then.i4.i.i ]
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc.cleanup45_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

not_empty:                                        ; preds = %if.else.not_empty_crit_edge, %if.then28.not_empty_crit_edge, %if.end18.not_empty_crit_edge, %if.then13.not_empty_crit_edge, %if.then7
  %34 = ptrtoint ptr %page_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %page_addr, align 4
  tail call void @kunmap_local_indexed(ptr noundef %35) #10
  %36 = getelementptr inbounds %struct.page, ptr %call1, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and.i.i.i73 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i73)
  %tobool.not.i.i.i74 = icmp eq i32 %and.i.i.i73, 0
  br i1 %tobool.not.i.i.i74, label %if.end.i.i.i77, label %if.then.i.i.i76, !prof !73

if.then.i.i.i76:                                  ; preds = %not_empty
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i75 = add i32 %38, -1
  br label %_compound_head.exit.i.i82

if.end.i.i.i77:                                   ; preds = %not_empty
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %call1 to i32
  br label %_compound_head.exit.i.i82

_compound_head.exit.i.i82:                        ; preds = %if.end.i.i.i77, %if.then.i.i.i76
  %retval.0.i.i.i78 = phi i32 [ %sub.i.i.i75, %if.then.i.i.i76 ], [ %39, %if.end.i.i.i77 ]
  %40 = inttoptr i32 %retval.0.i.i.i78 to ptr
  %_refcount.i.i.i.i.i.i79 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i80 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i79, i32 noundef 4) #10
  %41 = ptrtoint ptr %_refcount.i.i.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %_refcount.i.i.i.i.i.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i.i.i.i81 = icmp eq i32 %42, 0
  br i1 %cmp.i.i.i.i.i81, label %if.then.i.i.i.i.i83, label %do.end5.i.i.i.i.i87, !prof !74

if.then.i.i.i.i.i83:                              ; preds = %_compound_head.exit.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i.i87:                              ; preds = %_compound_head.exit.i.i82
  %call.i.i.i10.i.i.i.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i79, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i79, i32 1, i32 3, i32 1) #10
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i79, ptr %_refcount.i.i.i.i.i.i79, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i79) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i.i85 = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i85)
  %cmp.i.i.i.i.i.i.i.i86 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i85, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_empty_dir, %if.then.i.i.i.i.i.i89)) #10
          to label %folio_put_testzero.exit.i.i.i90 [label %if.then.i.i.i.i.i.i89], !srcloc !79

if.then.i.i.i.i.i.i89:                            ; preds = %do.end5.i.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i88 = zext i1 %cmp.i.i.i.i.i.i.i.i86 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %40, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i88) #10
  br label %folio_put_testzero.exit.i.i.i90

folio_put_testzero.exit.i.i.i90:                  ; preds = %if.then.i.i.i.i.i.i89, %do.end5.i.i.i.i.i87
  br i1 %cmp.i.i.i.i.i.i.i.i86, label %if.then.i4.i.i91, label %folio_put_testzero.exit.i.i.i90.cleanup45_crit_edge

folio_put_testzero.exit.i.i.i90.cleanup45_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup45

if.then.i4.i.i91:                                 ; preds = %folio_put_testzero.exit.i.i.i90
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %40) #10
  br label %cleanup45

cleanup45:                                        ; preds = %if.then.i4.i.i91, %folio_put_testzero.exit.i.i.i90.cleanup45_crit_edge, %for.inc.cleanup45_crit_edge, %entry.cleanup45_crit_edge
  %retval.0 = phi i32 [ 0, %folio_put_testzero.exit.i.i.i90.cleanup45_crit_edge ], [ 0, %if.then.i4.i.i91 ], [ 1, %entry.cleanup45_crit_edge ], [ 1, %for.inc.cleanup45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_addr) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext2_readdir(ptr nocapture noundef %file, ptr noundef %ctx) #0 align 64 {
entry:
  %kaddr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
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
  %i_size.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_size.i, align 8
  %8 = trunc i64 %7 to i32
  %conv.i = add i32 %8, 4095
  %shr.i = lshr i32 %conv.i, 12
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize.i, align 16
  %neg = sub i32 0, %10
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %11 = ptrtoint ptr %f_version to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %f_version, align 8
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #10
  %call.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #10
  %13 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size.i, align 8
  %sub6 = add i64 %14, -12
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %sub6)
  %cmp = icmp sgt i64 %1, %sub6
  br i1 %cmp, label %entry.cleanup78_crit_edge, label %if.end

entry.cleanup78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

if.end:                                           ; preds = %entry
  %15 = lshr i64 %1, 12
  %conv2 = trunc i64 %15 to i32
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %16 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_es, align 4
  %s_feature_incompat = getelementptr inbounds %struct.ext2_super_block, ptr %19, i32 0, i32 29
  %20 = ptrtoint ptr %s_feature_incompat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_feature_incompat, align 4
  %and9 = and i32 %21, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv2)
  %cmp11197 = icmp ugt i32 %shr.i, %conv2
  br i1 %cmp11197, label %for.body.preheader, label %if.end.cleanup78_crit_edge

if.end.cleanup78_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

for.body.preheader:                               ; preds = %if.end
  %22 = trunc i64 %1 to i32
  %conv = and i32 %22, 4095
  %shr.i.i = lshr i64 %call.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i, i64 %12)
  %cmp.i = icmp ne i64 %shr.i.i, %12
  br label %for.body

for.body:                                         ; preds = %for.inc76.for.body_crit_edge, %for.body.preheader
  %need_revalidate.0.off0202 = phi i1 [ false, %for.inc76.for.body_crit_edge ], [ %cmp.i, %for.body.preheader ]
  %n.0199 = phi i32 [ %inc, %for.inc76.for.body_crit_edge ], [ %conv2, %for.body.preheader ]
  %offset.0198 = phi i32 [ 0, %for.inc76.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kaddr) #10
  %23 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %kaddr, align 4, !annotation !72
  %call13 = call fastcc ptr @ext2_get_page(ptr noundef %3, i32 noundef %n.0199, i32 noundef 0, ptr noundef nonnull %kaddr)
  %cmp.i133 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then15, label %if.end20

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %5, ptr noundef nonnull @__func__.ext2_readdir, ptr noundef nonnull @.str.23, i32 noundef %25) #10
  %sub16 = sub nuw nsw i32 4096, %offset.0198
  %conv17 = zext i32 %sub16 to i64
  %26 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %pos1, align 8
  %add = add i64 %27, %conv17
  store i64 %add, ptr %pos1, align 8
  %28 = ptrtoint ptr %call13 to i32
  br label %cleanup70.thread

if.end20:                                         ; preds = %for.body
  br i1 %need_revalidate.0.off0202, label %if.then25, label %if.end20.if.end35_crit_edge, !prof !74

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0198)
  %tobool26.not = icmp eq i32 %offset.0198, 0
  br i1 %tobool26.not, label %if.then25.if.end32_crit_edge, label %if.then27

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then27:                                        ; preds = %if.then25
  %29 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %kaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %offset.0198
  %and.i = and i32 %offset.0198, %neg
  %add.ptr1.i = getelementptr i8, ptr %30, i32 %and.i
  %cmp10.i = icmp ult ptr %add.ptr1.i, %add.ptr.i
  br i1 %cmp10.i, label %if.then27.while.body.i_crit_edge, label %if.then27.ext2_validate_entry.exit_crit_edge

if.then27.ext2_validate_entry.exit_crit_edge:     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_validate_entry.exit

if.then27.while.body.i_crit_edge:                 ; preds = %if.then27
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then27.while.body.i_crit_edge
  %p.011.i = phi ptr [ %add.ptr.i.i, %if.end.i.while.body.i_crit_edge ], [ %add.ptr1.i, %if.then27.while.body.i_crit_edge ]
  %rec_len.i = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %p.011.i, i32 0, i32 1
  %31 = ptrtoint ptr %rec_len.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rec_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp2.i = icmp eq i16 %32, 0
  br i1 %cmp2.i, label %while.body.i.ext2_validate_entry.exit_crit_edge, label %if.end.i

while.body.i.ext2_validate_entry.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_validate_entry.exit

if.end.i:                                         ; preds = %while.body.i
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #10
  %conv.i.i.i = zext i16 %33 to i32
  %add.ptr.i.i = getelementptr i8, ptr %p.011.i, i32 %conv.i.i.i
  %cmp.i134 = icmp ult ptr %add.ptr.i.i, %add.ptr.i
  br i1 %cmp.i134, label %if.end.i.while.body.i_crit_edge, label %if.end.i.ext2_validate_entry.exit_crit_edge

if.end.i.ext2_validate_entry.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext2_validate_entry.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

ext2_validate_entry.exit:                         ; preds = %if.end.i.ext2_validate_entry.exit_crit_edge, %while.body.i.ext2_validate_entry.exit_crit_edge, %if.then27.ext2_validate_entry.exit_crit_edge
  %p.0.lcssa.i = phi ptr [ %add.ptr1.i, %if.then27.ext2_validate_entry.exit_crit_edge ], [ %add.ptr.i.i, %if.end.i.ext2_validate_entry.exit_crit_edge ], [ %p.011.i, %while.body.i.ext2_validate_entry.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %p.0.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %shl = shl i32 %n.0199, 12
  %add29 = add i32 %sub.ptr.sub.i, %shl
  %conv30 = zext i32 %add29 to i64
  %34 = ptrtoint ptr %pos1 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv30, ptr %pos1, align 8
  br label %if.end32

if.end32:                                         ; preds = %ext2_validate_entry.exit, %if.then25.if.end32_crit_edge
  %offset.1 = phi i32 [ %sub.ptr.sub.i, %ext2_validate_entry.exit ], [ 0, %if.then25.if.end32_crit_edge ]
  %call33 = tail call fastcc i64 @inode_query_iversion(ptr noundef %3)
  %35 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call33, ptr %f_version, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %if.end20.if.end35_crit_edge
  %offset.2 = phi i32 [ %offset.1, %if.end32 ], [ %offset.0198, %if.end20.if.end35_crit_edge ]
  %36 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %kaddr, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 %offset.2
  %38 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_size.i, align 8
  %conv.i136 = trunc i64 %39 to i32
  %shl.neg.i = mul i32 %n.0199, -4096
  %sub.i = add i32 %shl.neg.i, %conv.i136
  %40 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 4096) #10
  %add.ptr37 = getelementptr i8, ptr %37, i32 -12
  %add.ptr38 = getelementptr i8, ptr %add.ptr37, i32 %40
  %cmp40.not195 = icmp ugt ptr %add.ptr, %add.ptr38
  br i1 %cmp40.not195, label %if.end35.for.end_crit_edge, label %if.end35.for.body42_crit_edge

if.end35.for.body42_crit_edge:                    ; preds = %if.end35
  br label %for.body42

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body42:                                       ; preds = %if.end63.for.body42_crit_edge, %if.end35.for.body42_crit_edge
  %de.0196 = phi ptr [ %add.ptr.i160, %if.end63.for.body42_crit_edge ], [ %add.ptr, %if.end35.for.body42_crit_edge ]
  %rec_len = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.0196, i32 0, i32 1
  %41 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %rec_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp44 = icmp eq i16 %42, 0
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %for.body42
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %5, ptr noundef nonnull @__func__.ext2_readdir, ptr noundef nonnull @.str) #10
  tail call void @kunmap_local_indexed(ptr noundef %37) #10
  %43 = getelementptr inbounds %struct.page, ptr %call13, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %and.i.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !73

if.then.i.i.i:                                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %45, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %call13 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %46, %if.end.i.i.i ]
  %47 = inttoptr i32 %retval.0.i.i.i to ptr
  %_refcount.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  %48 = ptrtoint ptr %_refcount.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %_refcount.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i.i.i.i.i = icmp eq i32 %49, 0
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %do.end5.i.i.i.i.i, !prof !74

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %47, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i
  %call.i.i.i10.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i, ptr %_refcount.i.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %50, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_readdir, %if.then.i.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i.i [label %if.then.i.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i.i:                              ; preds = %do.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %47, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i.i

folio_put_testzero.exit.i.i.i:                    ; preds = %if.then.i.i.i.i.i.i, %do.end5.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i4.i.i, label %folio_put_testzero.exit.i.i.i.cleanup70.thread_crit_edge

folio_put_testzero.exit.i.i.i.cleanup70.thread_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70.thread

if.then.i4.i.i:                                   ; preds = %folio_put_testzero.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %47) #10
  br label %cleanup70.thread

if.end47:                                         ; preds = %for.body42
  %51 = ptrtoint ptr %de.0196 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %de.0196, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool49.not = icmp eq i32 %52, 0
  br i1 %tobool49.not, label %if.end47.if.end63_crit_edge, label %if.then50

if.end47.if.end63_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then50:                                        ; preds = %if.end47
  br i1 %tobool.not, label %if.then50.if.end55_crit_edge, label %if.then52

if.then50.if.end55_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %file_type = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.0196, i32 0, i32 3
  %53 = ptrtoint ptr %file_type to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %file_type, align 1
  %conv53 = zext i8 %54 to i32
  %call54 = tail call zeroext i8 @fs_ftype_to_dtype(i32 noundef %conv53) #10
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.then50.if.end55_crit_edge
  %d_type.0 = phi i8 [ %call54, %if.then52 ], [ 0, %if.then50.if.end55_crit_edge ]
  %name = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.0196, i32 0, i32 4
  %name_len = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %de.0196, i32 0, i32 2
  %55 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %name_len, align 2
  %conv56 = zext i8 %56 to i32
  %57 = ptrtoint ptr %de.0196 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %de.0196, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %conv58 = zext i32 %59 to i64
  %conv59 = zext i8 %d_type.0 to i32
  %60 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ctx, align 8
  %62 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %pos1, align 8
  %call.i = tail call i32 %61(ptr noundef %ctx, ptr noundef %name, i32 noundef %conv56, i64 noundef %63, i64 noundef %conv58, i32 noundef %conv59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i137 = icmp eq i32 %call.i, 0
  br i1 %cmp.i137, label %if.end55.if.end63_crit_edge, label %if.then61

if.end55.if.end63_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then61:                                        ; preds = %if.end55
  tail call void @kunmap_local_indexed(ptr noundef %37) #10
  %64 = getelementptr inbounds %struct.page, ptr %call13, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %and.i.i.i138 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i138)
  %tobool.not.i.i.i139 = icmp eq i32 %and.i.i.i138, 0
  br i1 %tobool.not.i.i.i139, label %if.end.i.i.i142, label %if.then.i.i.i141, !prof !73

if.then.i.i.i141:                                 ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i140 = add i32 %66, -1
  br label %_compound_head.exit.i.i147

if.end.i.i.i142:                                  ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %call13 to i32
  br label %_compound_head.exit.i.i147

_compound_head.exit.i.i147:                       ; preds = %if.end.i.i.i142, %if.then.i.i.i141
  %retval.0.i.i.i143 = phi i32 [ %sub.i.i.i140, %if.then.i.i.i141 ], [ %67, %if.end.i.i.i142 ]
  %68 = inttoptr i32 %retval.0.i.i.i143 to ptr
  %_refcount.i.i.i.i.i.i144 = getelementptr inbounds %struct.page, ptr %68, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i145 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i144, i32 noundef 4) #10
  %69 = ptrtoint ptr %_refcount.i.i.i.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %_refcount.i.i.i.i.i.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp.i.i.i.i.i146 = icmp eq i32 %70, 0
  br i1 %cmp.i.i.i.i.i146, label %if.then.i.i.i.i.i148, label %do.end5.i.i.i.i.i152, !prof !74

if.then.i.i.i.i.i148:                             ; preds = %_compound_head.exit.i.i147
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %68, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i.i152:                             ; preds = %_compound_head.exit.i.i147
  %call.i.i.i10.i.i.i.i.i149 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i144, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i144, i32 1, i32 3, i32 1) #10
  %71 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i144, ptr %_refcount.i.i.i.i.i.i144, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i144) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i.i150 = extractvalue { i32, i32 } %71, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i150)
  %cmp.i.i.i.i.i.i.i.i151 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i150, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_readdir, %if.then.i.i.i.i.i.i154)) #10
          to label %folio_put_testzero.exit.i.i.i155 [label %if.then.i.i.i.i.i.i154], !srcloc !79

if.then.i.i.i.i.i.i154:                           ; preds = %do.end5.i.i.i.i.i152
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i153 = zext i1 %cmp.i.i.i.i.i.i.i.i151 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %68, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i153) #10
  br label %folio_put_testzero.exit.i.i.i155

folio_put_testzero.exit.i.i.i155:                 ; preds = %if.then.i.i.i.i.i.i154, %do.end5.i.i.i.i.i152
  br i1 %cmp.i.i.i.i.i.i.i.i151, label %if.then.i4.i.i156, label %folio_put_testzero.exit.i.i.i155.cleanup70.thread_crit_edge

folio_put_testzero.exit.i.i.i155.cleanup70.thread_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70.thread

if.then.i4.i.i156:                                ; preds = %folio_put_testzero.exit.i.i.i155
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %68) #10
  br label %cleanup70.thread

if.end63:                                         ; preds = %if.end55.if.end63_crit_edge, %if.end47.if.end63_crit_edge
  %72 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %rec_len, align 4
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #10
  %conv66 = zext i16 %74 to i64
  %75 = ptrtoint ptr %pos1 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %pos1, align 8
  %add68 = add i64 %76, %conv66
  store i64 %add68, ptr %pos1, align 8
  %77 = ptrtoint ptr %rec_len to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %rec_len, align 4
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #10
  %conv.i.i = zext i16 %79 to i32
  %add.ptr.i160 = getelementptr i8, ptr %de.0196, i32 %conv.i.i
  %cmp40.not = icmp ugt ptr %add.ptr.i160, %add.ptr38
  br i1 %cmp40.not, label %if.end63.for.end_crit_edge, label %if.end63.for.body42_crit_edge

if.end63.for.body42_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body42

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end63.for.end_crit_edge, %if.end35.for.end_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %37) #10
  %80 = getelementptr inbounds %struct.page, ptr %call13, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  %and.i.i.i161 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i161)
  %tobool.not.i.i.i162 = icmp eq i32 %and.i.i.i161, 0
  br i1 %tobool.not.i.i.i162, label %if.end.i.i.i165, label %if.then.i.i.i164, !prof !73

if.then.i.i.i164:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i163 = add i32 %82, -1
  br label %_compound_head.exit.i.i170

if.end.i.i.i165:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %call13 to i32
  br label %_compound_head.exit.i.i170

_compound_head.exit.i.i170:                       ; preds = %if.end.i.i.i165, %if.then.i.i.i164
  %retval.0.i.i.i166 = phi i32 [ %sub.i.i.i163, %if.then.i.i.i164 ], [ %83, %if.end.i.i.i165 ]
  %84 = inttoptr i32 %retval.0.i.i.i166 to ptr
  %_refcount.i.i.i.i.i.i167 = getelementptr inbounds %struct.page, ptr %84, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i168 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i.i167, i32 noundef 4) #10
  %85 = ptrtoint ptr %_refcount.i.i.i.i.i.i167 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %_refcount.i.i.i.i.i.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.i.i.i.i.i169 = icmp eq i32 %86, 0
  br i1 %cmp.i.i.i.i.i169, label %if.then.i.i.i.i.i171, label %do.end5.i.i.i.i.i175, !prof !74

if.then.i.i.i.i.i171:                             ; preds = %_compound_head.exit.i.i170
  call void @__sanitizer_cov_trace_pc() #12
  %87 = inttoptr i32 %retval.0.i.i.i166 to ptr
  tail call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.22) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !75
  unreachable

do.end5.i.i.i.i.i175:                             ; preds = %_compound_head.exit.i.i170
  %call.i.i.i10.i.i.i.i.i172 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i.i167, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i.i167, i32 1, i32 3, i32 1) #10
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i.i167, ptr %_refcount.i.i.i.i.i.i167, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i.i167) #10, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i.i173 = extractvalue { i32, i32 } %88, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i173)
  %cmp.i.i.i.i.i.i.i.i174 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i173, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ext2_readdir, %if.then.i.i.i.i.i.i177)) #10
          to label %folio_put_testzero.exit.i.i.i178 [label %if.then.i.i.i.i.i.i177], !srcloc !79

if.then.i.i.i.i.i.i177:                           ; preds = %do.end5.i.i.i.i.i175
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i.i176 = zext i1 %cmp.i.i.i.i.i.i.i.i174 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %84, i32 noundef -1, i32 noundef %conv.i.i.i.i.i.i176) #10
  br label %folio_put_testzero.exit.i.i.i178

folio_put_testzero.exit.i.i.i178:                 ; preds = %if.then.i.i.i.i.i.i177, %do.end5.i.i.i.i.i175
  br i1 %cmp.i.i.i.i.i.i.i.i174, label %if.then.i4.i.i179, label %folio_put_testzero.exit.i.i.i178.for.inc76_crit_edge

folio_put_testzero.exit.i.i.i178.for.inc76_crit_edge: ; preds = %folio_put_testzero.exit.i.i.i178
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc76

if.then.i4.i.i179:                                ; preds = %folio_put_testzero.exit.i.i.i178
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %84) #10
  br label %for.inc76

cleanup70.thread:                                 ; preds = %if.then.i4.i.i156, %folio_put_testzero.exit.i.i.i155.cleanup70.thread_crit_edge, %if.then.i4.i.i, %folio_put_testzero.exit.i.i.i.cleanup70.thread_crit_edge, %if.then15
  %retval.4.ph = phi i32 [ -5, %if.then.i4.i.i ], [ -5, %folio_put_testzero.exit.i.i.i.cleanup70.thread_crit_edge ], [ %28, %if.then15 ], [ 0, %if.then.i4.i.i156 ], [ 0, %folio_put_testzero.exit.i.i.i155.cleanup70.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kaddr) #10
  br label %cleanup78

for.inc76:                                        ; preds = %if.then.i4.i.i179, %folio_put_testzero.exit.i.i.i178.for.inc76_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kaddr) #10
  %inc = add nuw nsw i32 %n.0199, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.inc76.cleanup78_crit_edge, label %for.inc76.for.body_crit_edge

for.inc76.for.body_crit_edge:                     ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc76.cleanup78_crit_edge:                    ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup78

cleanup78:                                        ; preds = %for.inc76.cleanup78_crit_edge, %cleanup70.thread, %if.end.cleanup78_crit_edge, %entry.cleanup78_crit_edge
  %retval.5 = phi i32 [ 0, %entry.cleanup78_crit_edge ], [ %retval.4.ph, %cleanup70.thread ], [ 0, %if.end.cleanup78_crit_edge ], [ 0, %for.inc76.cleanup78_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ext2_check_page(ptr noundef %page, i32 noundef %quiet, ptr nocapture noundef readonly %kaddr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %s_es = getelementptr inbounds %struct.ext2_sb_info, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %s_es to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_es, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %i_size = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size, align 8
  %shr = ashr i64 %16, 12
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %conv = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv)
  %cmp = icmp eq i64 %shr, %conv
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %19 = trunc i64 %16 to i32
  %conv4 = and i32 %19, 4095
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %limit.0 = phi i32 [ %conv4, %if.end.if.end10_crit_edge ], [ 4096, %entry.if.end10_crit_edge ]
  %sub11 = add nsw i32 %limit.0, -12
  %neg = sub i32 0, %7
  br label %for.cond

for.cond:                                         ; preds = %if.end57.for.cond_crit_edge, %if.end10
  %offs.0 = phi i32 [ 0, %if.end10 ], [ %add45, %if.end57.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.0, i32 %sub11)
  %cmp12.not = icmp ugt i32 %offs.0, %sub11
  br i1 %cmp12.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %kaddr, i32 %offs.0
  %rec_len14 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %add.ptr, i32 0, i32 1
  %20 = ptrtoint ptr %rec_len14 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %rec_len14, align 4
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  %conv.i = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %22)
  %cmp16 = icmp ult i16 %22, 12
  br i1 %cmp16, label %for.body.bad_entry_crit_edge, label %if.end21, !prof !74

for.body.bad_entry_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_entry

if.end21:                                         ; preds = %for.body
  %and22 = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end31, label %if.end21.bad_entry_crit_edge, !prof !73

if.end21.bad_entry_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_entry

if.end31:                                         ; preds = %if.end21
  %name_len = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %add.ptr, i32 0, i32 2
  %23 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %name_len, align 2
  %conv32 = zext i8 %24 to i32
  %add33 = add nuw nsw i32 %conv32, 11
  %and34 = and i32 %add33, 508
  call void @__sanitizer_cov_trace_cmp4(i32 %and34, i32 %conv.i)
  %cmp35 = icmp ugt i32 %and34, %conv.i
  br i1 %cmp35, label %if.end31.bad_entry_crit_edge, label %if.end44, !prof !74

if.end31.bad_entry_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_entry

if.end44:                                         ; preds = %if.end31
  %add45 = add i32 %offs.0, %conv.i
  %sub46 = add i32 %add45, -1
  %xor = xor i32 %sub46, %offs.0
  %and48 = and i32 %xor, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end57, label %if.end44.bad_entry_crit_edge, !prof !73

if.end44.bad_entry_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_entry

if.end57:                                         ; preds = %if.end44
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %cmp58 = icmp ugt i32 %27, %14
  br i1 %cmp58, label %if.end57.bad_entry_crit_edge, label %if.end57.for.cond_crit_edge, !prof !74

if.end57.for.cond_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end57.bad_entry_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %bad_entry

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %offs.0, i32 %limit.0)
  %cmp69.not = icmp eq i32 %offs.0, %limit.0
  br i1 %cmp69.not, label %for.end.out_crit_edge, label %Eend

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.end.out_crit_edge, %if.end.out_crit_edge
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %page, align 4
  %30 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %out.if.then.i_crit_edge

out.if.then.i_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %out
  %31 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !73

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %out.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !101
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %34 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !74

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.6) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 10, ptr noundef %page) #10
  br label %cleanup

Ebadsize:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool73.not = icmp eq i32 %quiet, 0
  br i1 %tobool73.not, label %if.then74, label %Ebadsize.fail_crit_edge

Ebadsize.fail_crit_edge:                          ; preds = %Ebadsize
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then74:                                        ; preds = %Ebadsize
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %36 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_ino, align 8
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %5, ptr noundef nonnull @__func__.ext2_check_page, ptr noundef nonnull @.str.8, i32 noundef %37) #10
  br label %fail

bad_entry:                                        ; preds = %if.end57.bad_entry_crit_edge, %if.end44.bad_entry_crit_edge, %if.end31.bad_entry_crit_edge, %if.end21.bad_entry_crit_edge, %for.body.bad_entry_crit_edge
  %error.0 = phi ptr [ @.str.9, %for.body.bad_entry_crit_edge ], [ @.str.10, %if.end21.bad_entry_crit_edge ], [ @.str.11, %if.end31.bad_entry_crit_edge ], [ @.str.12, %if.end44.bad_entry_crit_edge ], [ @.str.13, %if.end57.bad_entry_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool76.not = icmp eq i32 %quiet, 0
  br i1 %tobool76.not, label %if.then77, label %bad_entry.fail_crit_edge

bad_entry.fail_crit_edge:                         ; preds = %bad_entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then77:                                        ; preds = %bad_entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino78 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %38 = ptrtoint ptr %i_ino78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino78, align 8
  %shl = shl i32 %18, 12
  %add80 = add i32 %offs.0, %shl
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %name_len82 = getelementptr inbounds %struct.ext2_dir_entry_2, ptr %add.ptr, i32 0, i32 2
  %43 = ptrtoint ptr %name_len82 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %name_len82, align 2
  %conv83 = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %5, ptr noundef nonnull @__func__.ext2_check_page, ptr noundef nonnull @.str.14, i32 noundef %39, ptr noundef nonnull %error.0, i32 noundef %add80, i32 noundef %42, i32 noundef %conv.i, i32 noundef %conv83) #10
  br label %fail

Eend:                                             ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quiet)
  %tobool85.not = icmp eq i32 %quiet, 0
  br i1 %tobool85.not, label %if.then86, label %Eend.fail_crit_edge

Eend.fail_crit_edge:                              ; preds = %Eend
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then86:                                        ; preds = %Eend
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr87 = getelementptr i8, ptr %kaddr, i32 %offs.0
  %i_ino88 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %45 = ptrtoint ptr %i_ino88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_ino88, align 8
  %shl90 = shl i32 %18, 12
  %add91 = add i32 %offs.0, %shl90
  %47 = ptrtoint ptr %add.ptr87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr87, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void (ptr, ptr, ptr, ...) @ext2_error(ptr noundef %5, ptr noundef nonnull @__func__.ext2_check_page, ptr noundef nonnull @.str.15, i32 noundef %46, i32 noundef %add91, i32 noundef %49) #10
  br label %fail

fail:                                             ; preds = %if.then86, %Eend.fail_crit_edge, %if.then77, %bad_entry.fail_crit_edge, %if.then74, %Ebadsize.fail_crit_edge
  %50 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  %and.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i141 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i141, label %do.body7.i144, label %if.then.i142, !prof !73

if.then.i142:                                     ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.17) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

do.body7.i144:                                    ; preds = %fail
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %50, align 4
  %and.i31.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i143 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i143, label %if.end.i.i, label %if.then.i.i, !prof !73

if.then.i.i:                                      ; preds = %do.body7.i144
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %54, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i144
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %55, %if.end.i.i ]
  %56 = inttoptr i32 %retval.0.i.i to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.i.not.i145 = icmp eq i32 %58, -1
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %50, align 4
  %and.i32.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i145, label %if.then17.i, label %do.end24.i, !prof !74

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !73

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i34.i = add i32 %60, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %61, %if.end.i36.i ]
  %62 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %62, ptr noundef nonnull @.str.7) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #10, !srcloc !104
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !73

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i41.i = add i32 %60, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %63, %if.end.i43.i ]
  %64 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %64) #10
  br label %cleanup

cleanup:                                          ; preds = %SetPageError.exit, %SetPageChecked.exit
  %retval.0 = phi i1 [ false, %SetPageError.exit ], [ true, %SetPageChecked.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_begin(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ext2_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @fs_umode_to_ftype(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_write_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @inode_query_iversion(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_version.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i, i32 noundef 8) #10
  %call.i.i15 = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i) #10
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  %cur.0 = phi i64 [ %call.i.i15, %entry ], [ %call.i, %if.end.for.cond_crit_edge ]
  %and = and i64 %cur.0, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !105
  br label %for.end

if.end:                                           ; preds = %for.cond
  %or = or i64 %cur.0, 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i, i32 noundef 8) #10
  %call.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i, i64 noundef %cur.0, i64 noundef %or) #10
  %cmp = icmp eq i64 %call.i, %cur.0
  br i1 %cmp, label %if.end.for.end_crit_edge, label %if.end.for.cond_crit_edge, !prof !73

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %do.end
  %shr = lshr i64 %cur.0, 1
  ret i64 %shr
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @fs_ftype_to_dtype(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !51, !53, !55, !56, !58, !60}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__func__.ext2_find_entry, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ext2/dir.c", i32 384, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ext2/dir.c", i32 385, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ext2/dir.c", i32 400, i32 5}
!6 = !{ptr @__func__.ext2_add_link, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ext2/dir.c", i32 531, i32 27}
!8 = !{ptr @__func__.ext2_delete_entry, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ext2/dir.c", i32 601, i32 28}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ext2/dir.c", i32 650, i32 20}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ext2/dir.c", i32 658, i32 20}
!14 = !{ptr @__func__.ext2_empty_dir, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ext2/dir.c", i32 693, i32 29}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ext2/dir.c", i32 695, i32 5}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ext2_empty_dir._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @ext2_empty_dir._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @ext2_dir_operations, !22, !"ext2_dir_operations", i1 false, i1 false}
!22 = !{!"../fs/ext2/dir.c", i32 722, i32 30}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/page-flags.h", i32 430, i32 1}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!27 = !{ptr @__func__.ext2_check_page, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ext2/dir.c", i32 152, i32 18}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ext2/dir.c", i32 153, i32 4}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ext2/dir.c", i32 157, i32 10}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ext2/dir.c", i32 160, i32 10}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ext2/dir.c", i32 163, i32 10}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ext2/dir.c", i32 166, i32 10}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ext2/dir.c", i32 169, i32 10}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ext2/dir.c", i32 172, i32 28}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ext2/dir.c", i32 182, i32 4}
!45 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/mm.h", i32 717, i32 2}
!58 = !{ptr @__func__.ext2_readdir, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/ext2/dir.c", i32 289, i32 19}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ext2/dir.c", i32 290, i32 8}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 2153164398, i64 2153164881, i64 2153164435, i64 2153164491, i64 2153164525, i64 2153164549, i64 2153164590, i64 2153164611, i64 2153164639, i64 2153164673}
!76 = !{i64 2148786087}
!77 = !{i64 2148700796, i64 2148700828, i64 2148700857, i64 2148700891, i64 2148700922, i64 2148700945}
!78 = !{i64 2148786316}
!79 = !{i64 2148522209, i64 2148522214, i64 2148522227, i64 2148522271, i64 2148522305, i64 2148522326}
!80 = !{i64 2150854695, i64 2150855186, i64 2150854732, i64 2150854788, i64 2150854822, i64 2150854846, i64 2150854887, i64 2150854908, i64 2150854936, i64 2150854970}
!81 = !{i64 2150659388, i64 2150659879, i64 2150659425, i64 2150659481, i64 2150659515, i64 2150659539, i64 2150659580, i64 2150659601, i64 2150659629, i64 2150659663}
!82 = !{i64 2150606356, i64 2150606847, i64 2150606393, i64 2150606449, i64 2150606483, i64 2150606507, i64 2150606548, i64 2150606569, i64 2150606597, i64 2150606631}
!83 = !{i64 2148706469, i64 2148706501, i64 2148706530, i64 2148706564, i64 2148706595, i64 2148706618}
!84 = !{i64 2148795574}
!85 = !{i64 2154915866, i64 2154916344, i64 2154915903, i64 2154915959, i64 2154915993, i64 2154916017, i64 2154916058, i64 2154916079, i64 2154916107, i64 2154916141}
!86 = !{i64 2154909174}
!87 = !{i64 2152542373}
!88 = !{i64 2150018678}
!89 = !{i64 2150023612}
!90 = !{i64 2150045330}
!91 = !{i64 2150050224}
!92 = !{i64 2150126751}
!93 = !{i64 2150127076}
!94 = !{i64 2152554235}
!95 = !{i64 2154917780, i64 2154918258, i64 2154917817, i64 2154917873, i64 2154917907, i64 2154917931, i64 2154917972, i64 2154917993, i64 2154918021, i64 2154918055}
!96 = !{i64 2154919477, i64 2154919955, i64 2154919514, i64 2154919570, i64 2154919604, i64 2154919628, i64 2154919669, i64 2154919690, i64 2154919718, i64 2154919752}
!97 = !{i64 2153688334}
!98 = !{i64 2152212907}
!99 = !{i64 2152213114}
!100 = !{i64 2153691105}
!101 = !{i64 2150862738, i64 2150862911, i64 2150862926, i64 2150862978, i64 2150863037, i64 2150863061, i64 2150863102, i64 2150863123, i64 2150863151, i64 2150863183}
!102 = !{i64 2150863509, i64 2150863682, i64 2150863697, i64 2150863749, i64 2150863808, i64 2150863832, i64 2150863873, i64 2150863894, i64 2150863922, i64 2150863954}
!103 = !{i64 2150667946, i64 2150668119, i64 2150668134, i64 2150668186, i64 2150668245, i64 2150668269, i64 2150668310, i64 2150668331, i64 2150668359, i64 2150668391}
!104 = !{i64 2150668821, i64 2150668994, i64 2150669009, i64 2150669061, i64 2150669120, i64 2150669144, i64 2150669185, i64 2150669206, i64 2150669234, i64 2150669266}
!105 = !{i64 2154910427}
