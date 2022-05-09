; ModuleID = '/llk/IR_all_yes/fs/ntfs/file.c_pt.bc'
source_filename = "../fs/ntfs/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.68, %union.anon.69 }
%union.anon.68 = type { ptr }
%union.anon.69 = type { i64 }
%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.runlist_element = type { i64, i64, i64 }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.88 }
%union.anon.88 = type { %struct.anon.90 }
%struct.anon.90 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.84, %struct.mutex, i32, %union.anon.87 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%union.anon.84 = type { %struct.anon.86 }
%struct.anon.86 = type { i64, i32, i8, i8 }
%union.anon.87 = type { ptr }
%struct.anon.89 = type { i32, i16, i8, i8 }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }

@ntfs_file_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @generic_file_read_iter, ptr @ntfs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_mmap, i32 0, ptr @ntfs_file_open, ptr null, ptr null, ptr @ntfs_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ntfs_file_inode_ops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@ntfs_empty_file_ops = dso_local constant { %struct.file_operations, [32 x i8] } zeroinitializer, align 32
@ntfs_empty_inode_ops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ntfs/file.c\00", [17 x i8] zeroinitializer }, align 32
@__func__.ntfs_prepare_file_for_write = private unnamed_addr constant [28 x i8] c"ntfs_prepare_file_for_write\00", align 1
@.str.1 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Entering for i_ino 0x%lx, attribute type 0x%x, pos 0x%llx, count 0x%zx.\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Denying write access to encrypted file.\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Writing to compressed files is not implemented yet.  Sorry.\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"Truncating write to inode 0x%lx, attribute type 0x%x, because the allocation was only partially extended.\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Truncating write to inode 0x%lx attribute type 0x%x, because extending the allocation failed (error %d).\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"Cannot perform write to inode 0x%lx, attribute type 0x%x, because extending the allocation failed (error %ld).\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"Cannot perform write to inode 0x%lx, attribute type 0x%x, because there is not space left.\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"Cannot perform write to inode 0x%lx, attribute type 0x%x, because extending the initialized size failed (error %d).\00", [44 x i8] zeroinitializer }, align 32
@__func__.ntfs_attr_extend_initialized = private unnamed_addr constant [29 x i8] c"ntfs_attr_extend_initialized\00", align 1
@.str.9 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"Entering for i_ino 0x%lx, attribute type 0x%x, old_initialized_size 0x%llx, new_initialized_size 0x%llx, i_size 0x%llx.\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Done, initialized_size 0x%llx, i_size 0x%llx.\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed.  Returning error code %i.\00", [62 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__func__.ntfs_perform_write = private unnamed_addr constant [19 x i8] c"ntfs_perform_write\00", align 1
@.str.15 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Entering for i_ino 0x%lx, attribute type 0x%x, pos 0x%llx, count 0x%lx.\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"Cannot perform write to inode 0x%lx, attribute type 0x%x, because ntfs_truncate() failed (error code %i).\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"Cannot perform write to inode 0x%lx, attribute type 0x%x, because the attribute is corrupt.\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Done.  Returning %s (written 0x%lx, status %li).\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"written\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@__func__.ntfs_prepare_pages_for_non_resident_write = private unnamed_addr constant [42 x i8] c"ntfs_prepare_pages_for_non_resident_write\00", align 1
@.str.22 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"Entering for inode 0x%lx, attribute type 0x%x, start page index 0x%lx, nr_pages 0x%x, pos 0x%llx, bytes 0x%zx.\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [154 x i8], [38 x i8] } { [154 x i8] c"Failed to write to inode 0x%lx, attribute type 0x%x, vcn 0x%llx, vcn offset 0x%x, because its location on disk could not be determined%s (error code %i).\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" even after retrying\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to allocate cluster, error code %i.\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"Failed to release allocated cluster in error code path.  Run chkdsk to recover the lost cluster.\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Allocated cluster, lcn 0x%llx.\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Failed to get size for mapping pairs array, error code %i.\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Not enough space in the mft record for the extended attribute record.  This case is not implemented yet.\00", [55 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [116 x i8], [44 x i8] } { [116 x i8] c"Cannot fill hole in inode 0x%lx, attribute type 0x%x, because building the mapping pairs failed with error code %i.\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"Failed to find required attribute extent of attribute in error code path.  Run chkdsk to recover.\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"Failed to punch hole into attribute runlist in error code path.  Run chkdsk to recover the lost cluster.\00", [55 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Failed to restore attribute record in error code path.  Run chkdsk to recover.\00", [49 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Failed to restore mapping pairs array in error code path.  Run chkdsk to recover.\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__func__.ntfs_commit_pages_after_write = private unnamed_addr constant [30 x i8] c"ntfs_commit_pages_after_write\00", align 1
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Error allocating memory required to commit the write.\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Page is uptodate, setting dirty so the write will be retried later on by the VM.\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Page is not uptodate.  Written data has been lost.\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Resident attribute commit write failed with error %i.\00", [42 x i8] zeroinitializer }, align 32
@__func__.ntfs_commit_pages_after_non_resident_write = private unnamed_addr constant [43 x i8] c"ntfs_commit_pages_after_non_resident_write\00", align 1
@.str.45 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to update initialized_size/i_size (error code %i).\00", [38 x i8] zeroinitializer }, align 32
@__func__.ntfs_file_fsync = private unnamed_addr constant [16 x i8] c"ntfs_file_fsync\00", align 1
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Entering for inode 0x%lx.\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to f%ssync inode 0x%lx.  Error %u.\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 -3, i64 -1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"ntfs_file_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1991, i32 30 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"ntfs_empty_file_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 2009, i32 30 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 330, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 351, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 364, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 401, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 416, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 426, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 437, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 466, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 118, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 302, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 314, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 271, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 416, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 717, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1740, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1757, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1801, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1895, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 603, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 907, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 983, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 994, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1005, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1063, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1088, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1104, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1221, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1229, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1261, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1292, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1303, i32 5 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 452, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 260, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 366, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1651, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1654, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1664, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1667, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1494, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1961, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [18 x i8] c"../fs/ntfs/file.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1983, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @ntfs_file_ops, ptr @ntfs_empty_file_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_file_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_empty_file_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 154, i32 192, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_file_write_iter(ptr noundef %iocb, ptr noundef %from) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  %call1 = tail call ptr @inode_to_bdi(ptr noundef %3) #8
  %4 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %backing_dev_info = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 150
  %8 = ptrtoint ptr %backing_dev_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %backing_dev_info, align 4
  %9 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iocb, align 8
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_inode.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 -528
  %vol2.i = getelementptr i8, ptr %12, i32 -448
  %13 = ptrtoint ptr %vol2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vol2.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  %15 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_ino.i, align 8
  %type.i = getelementptr i8, ptr %12, i32 -444
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  %ki_pos.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %20 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ki_pos.i, align 8
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %22 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 334, ptr noundef nonnull @__func__.ntfs_prepare_file_for_write, ptr noundef nonnull @.str.1, i32 noundef %16, i32 noundef %19, i64 noundef %21, i32 noundef %23) #8
  %call4.i = tail call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 1
  br i1 %cmp.i, label %entry.ntfs_prepare_file_for_write.exit_crit_edge, label %do.body.i, !prof !120

entry.ntfs_prepare_file_for_write.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_prepare_file_for_write.exit

do.body.i:                                        ; preds = %entry
  %state.i.i = getelementptr i8, ptr %12, i32 -464
  %24 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i.i, align 4
  %26 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool7.not.i = icmp eq i32 %26, 0
  br i1 %tobool7.not.i, label %do.body22.i, label %do.body15.i, !prof !121

do.body15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 342, 0\0A.popsection", ""() #8, !srcloc !122
  unreachable

do.body22.i:                                      ; preds = %do.body.i
  %27 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %28)
  %cmp24.not.i = icmp eq i32 %28, -2147483648
  br i1 %cmp24.not.i, label %do.end40.i, label %do.body32.i, !prof !121

do.body32.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 343, 0\0A.popsection", ""() #8, !srcloc !123
  unreachable

do.end40.i:                                       ; preds = %do.body22.i
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i, align 4
  %31 = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool42.not.i = icmp eq i32 %31, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.then43.i

if.then43.i:                                      ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 351, ptr noundef nonnull @__func__.ntfs_prepare_file_for_write, ptr noundef nonnull @.str.2) #8
  br label %if.end

if.end44.i:                                       ; preds = %do.end40.i
  %32 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i.i, align 4
  %34 = and i32 %33, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool46.not.i = icmp eq i32 %34, 0
  br i1 %tobool46.not.i, label %if.end66.i, label %do.body48.i

do.body48.i:                                      ; preds = %if.end44.i
  %name_len.i = getelementptr i8, ptr %12, i32 -436
  %35 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %name_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool49.not.i = icmp eq i32 %36, 0
  br i1 %tobool49.not.i, label %do.end65.i, label %do.body57.i, !prof !121

do.body57.i:                                      ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 357, 0\0A.popsection", ""() #8, !srcloc !124
  unreachable

do.end65.i:                                       ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %37 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_sb.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_file_for_write, ptr noundef %38, ptr noundef nonnull @.str.3) #8
  br label %if.end

if.end66.i:                                       ; preds = %if.end44.i
  %call67.i = tail call i32 @file_remove_privs(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end76.i, label %if.end66.i.if.end_crit_edge, !prof !121

if.end66.i.if.end_crit_edge:                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end76.i:                                       ; preds = %if.end66.i
  %call77.i = tail call i32 @file_update_time(ptr noundef %10) #8
  %39 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ki_pos.i, align 8
  %41 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count.i.i, align 8
  %conv.i = zext i32 %42 to i64
  %add.i = add i64 %40, %conv.i
  %cluster_size_mask.i = getelementptr inbounds %struct.ntfs_volume, ptr %14, i32 0, i32 12
  %43 = ptrtoint ptr %cluster_size_mask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cluster_size_mask.i, align 4
  %conv80.i = zext i32 %44 to i64
  %add81.i = add i64 %add.i, %conv80.i
  %neg.i = xor i64 %conv80.i, -1
  %and.i32 = and i64 %add81.i, %neg.i
  %call87.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i) #8
  %allocated_size.i = getelementptr i8, ptr %12, i32 -472
  %45 = ptrtoint ptr %allocated_size.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %allocated_size.i, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call87.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i32, i64 %46)
  %cmp99.i = icmp sgt i64 %and.i32, %46
  br i1 %cmp99.i, label %if.then101.i, label %if.end76.i.do.body180.i_crit_edge

if.end76.i.do.body180.i_crit_edge:                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body180.i

if.then101.i:                                     ; preds = %if.end76.i
  %call102.i = tail call i64 @ntfs_attr_extend_allocation(ptr noundef %add.ptr.i.i, i64 noundef %and.i32, i64 noundef -1, i64 noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call102.i)
  %cmp103.i = icmp sgt i64 %call102.i, -1
  br i1 %cmp103.i, label %do.body112.i, label %if.else.i, !prof !121

do.body112.i:                                     ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call102.i, i64 %40)
  %cmp113.not.i = icmp sgt i64 %call102.i, %40
  br i1 %cmp113.not.i, label %do.end130.i, label %do.body122.i, !prof !121

do.body122.i:                                     ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 398, 0\0A.popsection", ""() #8, !srcloc !125
  unreachable

do.end130.i:                                      ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i32, i64 %call102.i)
  %cmp131.i = icmp sgt i64 %and.i32, %call102.i
  br i1 %cmp131.i, label %if.then133.i, label %do.end130.i.do.body180.i_crit_edge

do.end130.i.do.body180.i_crit_edge:               ; preds = %do.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body180.i

if.then133.i:                                     ; preds = %do.end130.i
  %47 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_ino.i, align 8
  %49 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type.i, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 406, ptr noundef nonnull @__func__.ntfs_prepare_file_for_write, ptr noundef nonnull @.str.4, i32 noundef %48, i32 noundef %51) #8
  %sub.i = sub i64 %call102.i, %40
  %52 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %count.i.i, align 8
  %conv.i.i = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv.i.i)
  %cmp.i.i = icmp ult i64 %sub.i, %conv.i.i
  %extract.t.i = trunc i64 %sub.i to i32
  br i1 %cmp.i.i, label %if.then133.i.do.body180.sink.split.i_crit_edge, label %if.then133.i.do.body180.i_crit_edge

if.then133.i.do.body180.i_crit_edge:              ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body180.i

if.then133.i.do.body180.sink.split.i_crit_edge:   ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body180.sink.split.i

if.else.i:                                        ; preds = %if.then101.i
  %conv137.i = trunc i64 %call102.i to i32
  %call145.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i) #8
  %54 = ptrtoint ptr %allocated_size.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %allocated_size.i, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call145.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %40)
  %cmp158.i = icmp sgt i64 %55, %40
  br i1 %cmp158.i, label %if.then160.i, label %if.else165.i

if.then160.i:                                     ; preds = %if.else.i
  %56 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_ino.i, align 8
  %58 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type.i, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  %sub163.i = sub i32 0, %conv137.i
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 422, ptr noundef nonnull @__func__.ntfs_prepare_file_for_write, ptr noundef nonnull @.str.5, i32 noundef %57, i32 noundef %60, i32 noundef %sub163.i) #8
  %sub164.i = sub i64 %55, %40
  %61 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %count.i.i, align 8
  %conv.i295.i = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub164.i, i64 %conv.i295.i)
  %cmp.i296.i = icmp ult i64 %sub164.i, %conv.i295.i
  %extract.t300.i = trunc i64 %sub164.i to i32
  br i1 %cmp.i296.i, label %if.then160.i.do.body180.sink.split.i_crit_edge, label %if.then160.i.do.body180.i_crit_edge

if.then160.i.do.body180.i_crit_edge:              ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body180.i

if.then160.i.do.body180.sink.split.i_crit_edge:   ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body180.sink.split.i

if.else165.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %conv137.i)
  %cmp166.not.i = icmp eq i32 %conv137.i, -28
  br i1 %cmp166.not.i, label %if.else173.i, label %if.then168.i

if.then168.i:                                     ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb169.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %63 = ptrtoint ptr %i_sb169.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_sb169.i, align 4
  %65 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_ino.i, align 8
  %67 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %type.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  %sub172.i = sub i32 0, %conv137.i
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_file_for_write, ptr noundef %64, ptr noundef nonnull @.str.6, i32 noundef %66, i32 noundef %69, i32 noundef %sub172.i) #8
  br label %ntfs_prepare_file_for_write.exit

if.else173.i:                                     ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_ino.i, align 8
  %72 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 443, ptr noundef nonnull @__func__.ntfs_prepare_file_for_write, ptr noundef nonnull @.str.7, i32 noundef %71, i32 noundef %74) #8
  br label %if.end

do.body180.sink.split.i:                          ; preds = %if.then160.i.do.body180.sink.split.i_crit_edge, %if.then133.i.do.body180.sink.split.i_crit_edge
  %sub164.sink.off0.i = phi i32 [ %extract.t.i, %if.then133.i.do.body180.sink.split.i_crit_edge ], [ %extract.t300.i, %if.then160.i.do.body180.sink.split.i_crit_edge ]
  %err.0.ph.i = phi i32 [ 0, %if.then133.i.do.body180.sink.split.i_crit_edge ], [ %conv137.i, %if.then160.i.do.body180.sink.split.i_crit_edge ]
  %75 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub164.sink.off0.i, ptr %count.i.i, align 8
  br label %do.body180.i

do.body180.i:                                     ; preds = %do.body180.sink.split.i, %if.then160.i.do.body180.i_crit_edge, %if.then133.i.do.body180.i_crit_edge, %do.end130.i.do.body180.i_crit_edge, %if.end76.i.do.body180.i_crit_edge
  %err.0.i = phi i32 [ 0, %do.end130.i.do.body180.i_crit_edge ], [ 0, %if.end76.i.do.body180.i_crit_edge ], [ 0, %if.then133.i.do.body180.i_crit_edge ], [ %conv137.i, %if.then160.i.do.body180.i_crit_edge ], [ %err.0.ph.i, %do.body180.sink.split.i ]
  %call187.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i) #8
  %initialized_size.i = getelementptr i8, ptr %12, i32 -480
  %76 = ptrtoint ptr %initialized_size.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %initialized_size.i, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call187.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %77)
  %cmp199.i = icmp sgt i64 %40, %77
  br i1 %cmp199.i, label %if.then201.i, label %do.body180.i.ntfs_prepare_file_for_write.exit_crit_edge

do.body180.i.ntfs_prepare_file_for_write.exit_crit_edge: ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_prepare_file_for_write.exit

if.then201.i:                                     ; preds = %do.body180.i
  tail call void @inode_dio_wait(ptr noundef %12) #8
  %call202.i = tail call fastcc i32 @ntfs_attr_extend_initialized(ptr noundef %add.ptr.i.i, i64 noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202.i)
  %cmp203.i = icmp slt i32 %call202.i, 0
  br i1 %cmp203.i, label %if.then211.i, label %if.then201.i.ntfs_prepare_file_for_write.exit_crit_edge, !prof !120

if.then201.i.ntfs_prepare_file_for_write.exit_crit_edge: ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_prepare_file_for_write.exit

if.then211.i:                                     ; preds = %if.then201.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb212.i = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %78 = ptrtoint ptr %i_sb212.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_sb212.i, align 4
  %80 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %i_ino.i, align 8
  %82 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type.i, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #8
  %sub215.i = sub i32 0, %call202.i
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_file_for_write, ptr noundef %79, ptr noundef nonnull @.str.8, i32 noundef %81, i32 noundef %84, i32 noundef %sub215.i) #8
  br label %if.end

ntfs_prepare_file_for_write.exit:                 ; preds = %if.then201.i.ntfs_prepare_file_for_write.exit_crit_edge, %do.body180.i.ntfs_prepare_file_for_write.exit_crit_edge, %if.then168.i, %entry.ntfs_prepare_file_for_write.exit_crit_edge
  %err.1.i = phi i32 [ %call4.i, %entry.ntfs_prepare_file_for_write.exit_crit_edge ], [ %call202.i, %if.then201.i.ntfs_prepare_file_for_write.exit_crit_edge ], [ %err.0.i, %do.body180.i.ntfs_prepare_file_for_write.exit_crit_edge ], [ %conv137.i, %if.then168.i ]
  %85 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not = icmp ne i32 %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool5.not = icmp eq i32 %err.1.i, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.then, label %ntfs_prepare_file_for_write.exit.if.end_crit_edge

ntfs_prepare_file_for_write.exit.if.end_crit_edge: ; preds = %ntfs_prepare_file_for_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %ntfs_prepare_file_for_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %ki_pos.i, align 8
  %call6 = tail call fastcc i32 @ntfs_perform_write(ptr noundef %1, ptr noundef %from, i64 noundef %88)
  br label %if.end

if.end:                                           ; preds = %if.then, %ntfs_prepare_file_for_write.exit.if.end_crit_edge, %if.then211.i, %if.else173.i, %if.end66.i.if.end_crit_edge, %do.end65.i, %if.then43.i
  %err.1.i42 = phi i32 [ 0, %if.then ], [ %err.1.i, %ntfs_prepare_file_for_write.exit.if.end_crit_edge ], [ -28, %if.else173.i ], [ %call202.i, %if.then211.i ], [ %call67.i, %if.end66.i.if.end_crit_edge ], [ -95, %do.end65.i ], [ -13, %if.then43.i ]
  %written.0 = phi i32 [ %call6, %if.then ], [ 0, %ntfs_prepare_file_for_write.exit.if.end_crit_edge ], [ 0, %if.else173.i ], [ 0, %if.then211.i ], [ 0, %if.end66.i.if.end_crit_edge ], [ 0, %do.end65.i ], [ 0, %if.then43.i ]
  %89 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %task, align 8
  %backing_dev_info9 = getelementptr inbounds %struct.task_struct, ptr %90, i32 0, i32 150
  %91 = ptrtoint ptr %backing_dev_info9 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %backing_dev_info9, align 4
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  %conv = sext i32 %written.0 to i64
  %92 = ptrtoint ptr %ki_pos.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %ki_pos.i, align 8
  %add = add i64 %93, %conv
  store i64 %add, ptr %ki_pos.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.0)
  %cmp = icmp sgt i32 %written.0, 0
  br i1 %cmp, label %if.then14, label %if.end.if.end16_crit_edge, !prof !121

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %94 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ki_flags.i, align 8
  %and.i34 = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i34)
  %tobool.not.i = icmp eq i32 %and.i34, 0
  br i1 %tobool.not.i, label %if.then14.if.end8.i_crit_edge, label %if.then.i

if.then14.if.end8.i_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then14
  %96 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %iocb, align 8
  %sub2.i = add i64 %add, -1
  %and4.i = lshr i32 %95, 2
  %and4.lobit.i = and i32 %and4.i, 1
  %98 = xor i32 %and4.lobit.i, 1
  %call.i = tail call i32 @vfs_fsync_range(ptr noundef %97, i64 noundef %93, i64 noundef %sub2.i, i32 noundef %98) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.if.end16_crit_edge

if.then.i.if.end16_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %if.then14.if.end8.i_crit_edge
  br label %if.end16

if.end16:                                         ; preds = %if.end8.i, %if.then.i.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %written.1 = phi i32 [ %written.0, %if.end.if.end16_crit_edge ], [ %call.i, %if.then.i.if.end16_crit_edge ], [ %written.0, %if.end8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.1)
  %tobool17.not = icmp eq i32 %written.1, 0
  %call3.written.1 = select i1 %tobool17.not, i32 %err.1.i42, i32 %written.1
  ret i32 %call3.written.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_file_open(ptr noundef %vi, ptr noundef %filp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @i_size_read(ptr noundef %vi)
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186040320, i64 %call)
  %cmp = icmp sgt i64 %call, 17592186040320
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @generic_file_open(ptr noundef %vi, ptr noundef %filp) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -75, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_file_fsync(ptr noundef %filp, i64 noundef %start, i64 noundef %end, i32 noundef %datasync) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1961, ptr noundef nonnull @__func__.ntfs_file_fsync, ptr noundef nonnull @.str.46, i32 noundef %5) #8
  %call = tail call i32 @file_write_and_wait_range(ptr noundef %filp, i64 noundef %start, i64 noundef %end) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %8)
  %cmp = icmp eq i16 %8, 16384
  br i1 %cmp, label %do.body5, label %do.end11, !prof !120

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1968, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datasync)
  %tobool12.not = icmp eq i32 %datasync, 0
  br i1 %tobool12.not, label %do.end11.if.then16_crit_edge, label %lor.lhs.false

do.end11.if.then16_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

lor.lhs.false:                                    ; preds = %do.end11
  %state.i = getelementptr i8, ptr %3, i32 -464
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %lor.lhs.false.if.then16_crit_edge, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

lor.lhs.false.if.then16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false.if.then16_crit_edge, %do.end11.if.then16_crit_edge
  %call17 = tail call i32 @__ntfs_write_inode(ptr noundef %3, i32 noundef 1) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %lor.lhs.false.if.end18_crit_edge
  %ret.0 = phi i32 [ 0, %lor.lhs.false.if.end18_crit_edge ], [ %call17, %if.then16 ]
  %lnot.ext21 = zext i1 %tobool12.not to i32
  %call22 = tail call i32 @write_inode_now(ptr noundef %3, i32 noundef %lnot.ext21) #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev, align 4
  %call23 = tail call i32 @sync_blockdev(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp ne i32 %call23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool25.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool24.not, i1 %tobool25.not, i1 false
  br i1 %spec.select, label %if.end18.if.else_crit_edge, label %if.end35, !prof !120

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end35:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool36.not = icmp eq i32 %ret.0, 0
  br i1 %tobool36.not, label %if.then45, label %if.end35.if.else_crit_edge, !prof !121

if.end35.if.else_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1981, ptr noundef nonnull @__func__.ntfs_file_fsync, ptr noundef nonnull @.str.32) #8
  br label %if.end49

if.else:                                          ; preds = %if.end35.if.else_crit_edge, %if.end18.if.else_crit_edge
  %ret.173 = phi i32 [ %ret.0, %if.end35.if.else_crit_edge ], [ %call23, %if.end18.if.else_crit_edge ]
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %cond = select i1 %tobool12.not, ptr @.str.25, ptr @.str.48
  %18 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_ino, align 8
  %sub = sub i32 0, %ret.173
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_file_fsync, ptr noundef %17, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond, i32 noundef %19, i32 noundef %sub) #8
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then45
  %ret.174 = phi i32 [ %ret.173, %if.else ], [ 0, %if.then45 ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.174, %if.end49 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_perform_write(ptr nocapture noundef readonly %file, ptr noundef %i, i64 noundef %pos) unnamed_addr #1 align 64 {
entry:
  %wait.i = alloca [2 x ptr], align 4
  %pages = alloca [16 x ptr], align 4
  %cached_page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -528
  %vol1 = getelementptr i8, ptr %3, i32 -448
  %4 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vol1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pages) #8
  %6 = call ptr @memset(ptr %pages, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cached_page) #8
  %7 = ptrtoint ptr %cached_page to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cached_page, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_ino, align 8
  %type = getelementptr i8, ptr %3, i32 -444
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %i, i32 0, i32 4
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count.i, align 8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1744, ptr noundef nonnull @__func__.ntfs_perform_write, ptr noundef nonnull @.str.15, i32 noundef %9, i32 noundef %12, i64 noundef %pos, i32 noundef %14) #8
  %state.i = getelementptr i8, ptr %3, i32 -464
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then, !prof !121

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then:                                          ; preds = %entry
  tail call void @inode_dio_wait(ptr noundef %3) #8
  %call6 = tail call i32 @ntfs_truncate(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %20 = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp eq i32 %20, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %spec.store.select = phi i32 [ -5, %lor.lhs.false.cleanup_crit_edge ], [ %call6, %if.then.cleanup_crit_edge ]
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 8
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_ino, align 8
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_perform_write, ptr noundef %22, ptr noundef nonnull @.str.16, i32 noundef %24, i32 noundef %27, i32 noundef %spec.store.select) #8
  br label %cleanup204

if.end16:                                         ; preds = %lor.lhs.false.if.end16_crit_edge, %entry.if.end16_crit_edge
  %cluster_size = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 11
  %28 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cluster_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %29)
  %cmp = icmp ugt i32 %29, 4096
  br i1 %cmp, label %land.lhs.true, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i, align 4
  %32 = and i32 %31, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool18.not = icmp eq i32 %32, 0
  %shr = lshr i32 %29, 12
  %spec.select448 = select i1 %tobool18.not, i32 1, i32 %shr
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true, %if.end16.if.end21_crit_edge
  %nr_pages.0 = phi i32 [ 1, %if.end16.if.end21_crit_edge ], [ %spec.select448, %land.lhs.true ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_pages.0)
  %cmp24 = icmp ugt i32 %nr_pages.0, 1
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 13
  %lock = getelementptr i8, ptr %3, i32 -428
  %cluster_size_mask = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 12
  %33 = getelementptr inbounds [2 x ptr], ptr %wait.i, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond194.do.body_crit_edge, %if.end21
  %last_vcn.0 = phi i64 [ -1, %if.end21 ], [ %last_vcn.1, %do.cond194.do.body_crit_edge ]
  %written.0 = phi i32 [ 0, %if.end21 ], [ %add179, %do.cond194.do.body_crit_edge ]
  %pos.addr.0 = phi i64 [ %pos, %if.end21 ], [ %add, %do.cond194.do.body_crit_edge ]
  %34 = lshr i64 %pos.addr.0, 12
  %conv = trunc i64 %34 to i32
  %35 = trunc i64 %pos.addr.0 to i32
  %conv23 = and i32 %35, 4095
  %sub = sub nuw nsw i32 4096, %conv23
  br i1 %cmp24, label %if.then26, label %do.body.if.end72_crit_edge

do.body.if.end72_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then26:                                        ; preds = %do.body
  %36 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom = zext i8 %37 to i64
  %shr28 = ashr i64 %pos.addr.0, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr28, i64 %last_vcn.0)
  %cmp29.not = icmp eq i64 %shr28, %last_vcn.0
  br i1 %cmp29.not, label %if.then26.if.end72_crit_edge, label %if.then31

if.then26.if.end72_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then31:                                        ; preds = %if.then26
  call void @down_read(ptr noundef %lock) #8
  %38 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom34 = zext i8 %39 to i64
  %shr35 = ashr i64 %pos.addr.0, %sh_prom34
  %call36 = call i64 @ntfs_attr_vcn_to_lcn_nolock(ptr noundef %add.ptr.i, i64 noundef %shr35, i1 noundef zeroext false) #8
  call void @up_read(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call36)
  %cmp39 = icmp slt i64 %call36, -1
  br i1 %cmp39, label %if.then47, label %if.end55, !prof !120

if.then47:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_const_cmp8(i64 -4, i64 %call36)
  %cmp48 = icmp eq i64 %call36, -4
  br i1 %cmp48, label %if.then47.do.end197_crit_edge, label %if.else

if.then47.do.end197_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end197

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 8
  %42 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_ino, align 8
  %44 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %type, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_perform_write, ptr noundef %41, ptr noundef nonnull @.str.17, i32 noundef %43, i32 noundef %46) #8
  br label %do.end197

if.end55:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call36)
  %cmp56 = icmp eq i64 %call36, -1
  br i1 %cmp56, label %if.then58, label %if.end55.if.end72_crit_edge

if.end55.if.end72_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %cluster_size_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cluster_size_mask, align 4
  %conv59 = zext i32 %48 to i64
  %neg = xor i64 %conv59, -1
  %and60 = and i64 %pos.addr.0, %neg
  %49 = lshr i64 %and60, 12
  %conv62 = trunc i64 %49 to i32
  %50 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cluster_size, align 8
  %52 = and i32 %48, %35
  %conv69 = sub i32 %51, %52
  br label %if.end72

if.end72:                                         ; preds = %if.then58, %if.end55.if.end72_crit_edge, %if.then26.if.end72_crit_edge, %do.body.if.end72_crit_edge
  %last_vcn.1 = phi i64 [ %shr28, %if.then58 ], [ %shr28, %if.end55.if.end72_crit_edge ], [ %last_vcn.0, %if.then26.if.end72_crit_edge ], [ %last_vcn.0, %do.body.if.end72_crit_edge ]
  %bytes.0 = phi i32 [ %conv69, %if.then58 ], [ %sub, %if.end55.if.end72_crit_edge ], [ %sub, %if.then26.if.end72_crit_edge ], [ %sub, %do.body.if.end72_crit_edge ]
  %start_idx.0 = phi i32 [ %conv62, %if.then58 ], [ %conv, %if.end55.if.end72_crit_edge ], [ %conv, %if.then26.if.end72_crit_edge ], [ %conv, %do.body.if.end72_crit_edge ]
  %do_pages.0 = phi i32 [ %nr_pages.0, %if.then58 ], [ 1, %if.end55.if.end72_crit_edge ], [ 1, %if.then26.if.end72_crit_edge ], [ 1, %do.body.if.end72_crit_edge ]
  %53 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count.i, align 8
  %55 = call i32 @llvm.umin.i32(i32 %bytes.0, i32 %54)
  %call791384 = call i32 @fault_in_iov_iter_readable(ptr noundef %i, i32 noundef %55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call791384)
  %tobool80.not1385 = icmp eq i32 %call791384, 0
  br i1 %tobool80.not1385, label %if.end88.lr.ph, label %if.end72.do.end197_crit_edge, !prof !121

if.end72.do.end197_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end197

if.end88.lr.ph:                                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pos.addr.0)
  %cmp225.i = icmp sgt i64 %pos.addr.0, 0
  br label %if.end88

if.end88:                                         ; preds = %if.then166.if.end88_crit_edge, %if.end88.lr.ph
  %do_pages.11387 = phi i32 [ %do_pages.0, %if.end88.lr.ph ], [ 0, %if.then166.if.end88_crit_edge ]
  %bytes.21386 = phi i32 [ %55, %if.end88.lr.ph ], [ %bytes.3, %if.then166.if.end88_crit_edge ]
  %call89 = call fastcc i32 @__ntfs_grab_cache_pages(ptr noundef %1, i32 noundef %start_idx.0, i32 noundef %do_pages.11387, ptr noundef nonnull %pages, ptr noundef nonnull %cached_page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end98, label %if.end88.do.end197_crit_edge, !prof !121

if.end88.do.end197_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end197

if.end98:                                         ; preds = %if.end88
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state.i, align 4
  %58 = and i32 %57, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool100.not = icmp eq i32 %58, 0
  br i1 %tobool100.not, label %if.end98.if.end116_crit_edge, label %if.then101

if.end98.if.end116_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then101:                                       ; preds = %if.end98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wait.i) #8
  %59 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 -1 to ptr), ptr %wait.i, align 4, !annotation !127
  %60 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -1 to ptr), ptr %33, align 4, !annotation !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_pages.11387)
  %tobool.not.i = icmp eq i32 %do_pages.11387, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body10.i, !prof !120

do.body4.i:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 597, 0\0A.popsection", ""() #8, !srcloc !128
  unreachable

do.body10.i:                                      ; preds = %if.then101
  %61 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pages, align 4
  %tobool31.not.i = icmp eq ptr %62, null
  br i1 %tobool31.not.i, label %do.body41.i, label %do.end49.i, !prof !120

do.body41.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 599, 0\0A.popsection", ""() #8, !srcloc !129
  unreachable

do.end49.i:                                       ; preds = %do.body10.i
  %mapping.i = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mapping.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 -528
  %vol50.i = getelementptr i8, ptr %66, i32 -448
  %67 = ptrtoint ptr %vol50.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vol50.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 11
  %69 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %i_ino.i, align 8
  %type.i = getelementptr i8, ptr %66, i32 -444
  %71 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type.i, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %62, i32 0, i32 1, i32 0, i32 2
  %73 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %index.i, align 4
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 606, ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef nonnull @.str.22, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %do_pages.11387, i64 noundef %pos.addr.0, i32 noundef %bytes.21386) #8
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %68, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_blocksize.i, align 16
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 2
  %79 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %s_blocksize_bits.i, align 4
  br label %do.body53.i

do.body53.i:                                      ; preds = %do.cond91.i.do.body53.i_crit_edge, %do.end49.i
  %u.0.i = phi i32 [ 0, %do.end49.i ], [ %inc.i, %do.cond91.i.do.body53.i_crit_edge ]
  %arrayidx54.i = getelementptr ptr, ptr %pages, i32 %u.0.i
  %81 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx54.i, align 4
  %tobool56.not.i = icmp eq ptr %82, null
  br i1 %tobool56.not.i, label %do.body66.i, label %do.end74.i, !prof !120

do.body66.i:                                      ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 612, 0\0A.popsection", ""() #8, !srcloc !130
  unreachable

do.end74.i:                                       ; preds = %do.body53.i
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %84)
  %cmp.i.not.i.i = icmp eq i32 %84, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !120

if.then.i.i:                                      ; preds = %do.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef nonnull %82, ptr noundef nonnull @.str.37) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !131
  unreachable

PagePrivate.exit.i:                               ; preds = %do.end74.i
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %82, align 4
  %87 = and i32 %86, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool76.not.i = icmp eq i32 %87, 0
  br i1 %tobool76.not.i, label %if.then77.i, label %PagePrivate.exit.i.do.cond91.i_crit_edge

PagePrivate.exit.i.do.cond91.i_crit_edge:         ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond91.i

if.then77.i:                                      ; preds = %PagePrivate.exit.i
  call void @create_empty_buffers(ptr noundef nonnull %82, i32 noundef %78, i32 noundef 0) #8
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %89)
  %cmp.i.not.i1909.i = icmp eq i32 %89, -1
  br i1 %cmp.i.not.i1909.i, label %if.then.i1910.i, label %PagePrivate.exit1913.i, !prof !120

if.then.i1910.i:                                  ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef nonnull %82, ptr noundef nonnull @.str.37) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !131
  unreachable

PagePrivate.exit1913.i:                           ; preds = %if.then77.i
  %90 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %82, align 4
  %92 = and i32 %91, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool79.not.i = icmp eq i32 %92, 0
  br i1 %tobool79.not.i, label %PagePrivate.exit1913.i.ntfs_prepare_pages_for_non_resident_write.exit_crit_edge, label %PagePrivate.exit1913.i.do.cond91.i_crit_edge, !prof !120

PagePrivate.exit1913.i.do.cond91.i_crit_edge:     ; preds = %PagePrivate.exit1913.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond91.i

PagePrivate.exit1913.i.ntfs_prepare_pages_for_non_resident_write.exit_crit_edge: ; preds = %PagePrivate.exit1913.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_prepare_pages_for_non_resident_write.exit

do.cond91.i:                                      ; preds = %PagePrivate.exit1913.i.do.cond91.i_crit_edge, %PagePrivate.exit.i.do.cond91.i_crit_edge
  %inc.i = add nuw nsw i32 %u.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %do_pages.11387
  br i1 %exitcond.not.i, label %do.end92.i, label %do.cond91.i.do.body53.i_crit_edge

do.cond91.i.do.body53.i_crit_edge:                ; preds = %do.cond91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53.i

do.end92.i:                                       ; preds = %do.cond91.i
  %cluster_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %68, i32 0, i32 13
  %93 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %cluster_size_bits.i, align 8
  %sh_prom.i = zext i8 %94 to i64
  %shr.i = ashr i64 %pos.addr.0, %sh_prom.i
  %conv93.i = zext i32 %bytes.21386 to i64
  %add.i = add i64 %pos.addr.0, %conv93.i
  %cluster_size.i = getelementptr inbounds %struct.ntfs_volume, ptr %68, i32 0, i32 11
  %95 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cluster_size.i, align 8
  %conv94.i = zext i32 %96 to i64
  %add95.i = add i64 %add.i, -1
  %sub.i = add i64 %add95.i, %conv94.i
  %shr99.i = ashr i64 %sub.i, %sh_prom.i
  %conv129.i = zext i32 %78 to i64
  %cluster_size_mask.i = getelementptr inbounds %struct.ntfs_volume, ptr %68, i32 0, i32 12
  %initialized_size165.i = getelementptr i8, ptr %66, i32 -480
  %allocated_size.i = getelementptr i8, ptr %66, i32 -472
  %lock.i = getelementptr i8, ptr %66, i32 -428
  %runlist396.i = getelementptr i8, ptr %66, i32 -432
  %conv431.i = zext i8 %80 to i32
  %state.i.i = getelementptr i8, ptr %66, i32 -464
  %ext.i = getelementptr i8, ptr %66, i32 -8
  %name.i = getelementptr i8, ptr %66, i32 -440
  %name_len.i = getelementptr i8, ptr %66, i32 -436
  %itype.i = getelementptr i8, ptr %66, i32 -120
  %97 = trunc i64 %add.i to i32
  %conv343.i = and i32 %97, 4095
  %flags.i.i = getelementptr inbounds %struct.ntfs_volume, ptr %68, i32 0, i32 2
  %mft_no.i = getelementptr i8, ptr %66, i32 -460
  br label %do_next_page.i

do_next_page.i:                                   ; preds = %do.end965.i.do_next_page.i_crit_edge, %do.end92.i
  %base_ni.0.i = phi ptr [ null, %do.end92.i ], [ %base_ni.42158.i, %do.end965.i.do_next_page.i_crit_edge ]
  %rl.0.i = phi ptr [ null, %do.end92.i ], [ %rl.62160.i, %do.end965.i.do_next_page.i_crit_edge ]
  %wait_bh.0.i = phi ptr [ %wait.i, %do.end92.i ], [ %wait_bh.42162.i, %do.end965.i.do_next_page.i_crit_edge ]
  %ctx.0.i = phi ptr [ null, %do.end92.i ], [ %ctx.32164.i, %do.end965.i.do_next_page.i_crit_edge ]
  %m.0.i = phi ptr [ null, %do.end92.i ], [ %m.32167.i, %do.end965.i.do_next_page.i_crit_edge ]
  %a.0.i = phi ptr [ null, %do.end92.i ], [ %a.52169.i, %do.end965.i.do_next_page.i_crit_edge ]
  %attr_rec_len.0.i = phi i32 [ 0, %do.end92.i ], [ %attr_rec_len.32171.i, %do.end965.i.do_next_page.i_crit_edge ]
  %u.1.i = phi i32 [ 0, %do.end92.i ], [ %u.2.i, %do.end965.i.do_next_page.i_crit_edge ]
  %rl_write_locked.0.off0.i = phi i1 [ false, %do.end92.i ], [ %rl_write_locked.6.off02175.i, %do.end965.i.do_next_page.i_crit_edge ]
  %was_hole.0.off0.i = phi i1 [ false, %do.end92.i ], [ %was_hole.3.off02178.i, %do.end965.i.do_next_page.i_crit_edge ]
  %status.sroa.0.0.i = phi i8 [ 0, %do.end92.i ], [ %status.sroa.0.32179.i, %do.end965.i.do_next_page.i_crit_edge ]
  %lcn_block.0.i = phi i64 [ -1, %do.end92.i ], [ %lcn_block.32181.i, %do.end965.i.do_next_page.i_crit_edge ]
  %vcn_len.0.i = phi i64 [ 0, %do.end92.i ], [ %vcn_len.32183.i, %do.end965.i.do_next_page.i_crit_edge ]
  %lcn.0.i = phi i64 [ -1, %do.end92.i ], [ %lcn.62185.i, %do.end965.i.do_next_page.i_crit_edge ]
  %highest_vcn.0.i = phi i64 [ 0, %do.end92.i ], [ %highest_vcn.42187.i, %do.end965.i.do_next_page.i_crit_edge ]
  %vcn.0.i = phi i64 [ -1, %do.end92.i ], [ %vcn.32189.i, %do.end965.i.do_next_page.i_crit_edge ]
  %arrayidx100.i = getelementptr ptr, ptr %pages, i32 %u.1.i
  %98 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx100.i, align 4
  %index101.i = getelementptr inbounds %struct.page, ptr %99, i32 0, i32 1, i32 0, i32 2
  %100 = ptrtoint ptr %index101.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %index101.i, align 4
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %cmp.i.not.i1914.i = icmp eq i32 %103, -1
  br i1 %cmp.i.not.i1914.i, label %if.then.i1915.i, label %PagePrivate.exit1918.i, !prof !120

if.then.i1915.i:                                  ; preds = %do_next_page.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %99, ptr noundef nonnull @.str.37) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !131
  unreachable

PagePrivate.exit1918.i:                           ; preds = %do_next_page.i
  %104 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %99, align 4
  %106 = and i32 %105, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool105.not.i = icmp eq i32 %106, 0
  br i1 %tobool105.not.i, label %do.body115.i, label %do.end123.i, !prof !120

do.body115.i:                                     ; preds = %PagePrivate.exit1918.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 641, 0\0A.popsection", ""() #8, !srcloc !132
  unreachable

do.end123.i:                                      ; preds = %PagePrivate.exit1918.i
  %conv102.i = zext i32 %101 to i64
  %shl.i = shl nuw nsw i64 %conv102.i, 12
  %private.i = getelementptr inbounds %struct.page, ptr %99, i32 0, i32 1, i32 0, i32 3
  %107 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %private.i, align 4
  %109 = inttoptr i32 %108 to ptr
  %110 = getelementptr inbounds %struct.page, ptr %99, i32 0, i32 1
  %111 = ptrtoint ptr %99 to i32
  br label %do.body124.i

do.body124.i:                                     ; preds = %do.cond960.i.do.body124.i_crit_edge, %do.end123.i
  %base_ni.1.i = phi ptr [ %base_ni.0.i, %do.end123.i ], [ %base_ni.4.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %rl.1.i = phi ptr [ %rl.0.i, %do.end123.i ], [ %rl.6.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %bh.0.i = phi ptr [ %109, %do.end123.i ], [ %402, %do.cond960.i.do.body124.i_crit_edge ]
  %wait_bh.1.i = phi ptr [ %wait_bh.0.i, %do.end123.i ], [ %wait_bh.4.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %ctx.1.i = phi ptr [ %ctx.0.i, %do.end123.i ], [ %ctx.3.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %m.1.i = phi ptr [ %m.0.i, %do.end123.i ], [ %m.3.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %a.1.i = phi ptr [ %a.0.i, %do.end123.i ], [ %a.5.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %attr_rec_len.1.i = phi i32 [ %attr_rec_len.0.i, %do.end123.i ], [ %attr_rec_len.3.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %rl_write_locked.1.off0.i = phi i1 [ %rl_write_locked.0.off0.i, %do.end123.i ], [ %rl_write_locked.6.off0.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %was_hole.1.off0.i = phi i1 [ %was_hole.0.off0.i, %do.end123.i ], [ %was_hole.3.off0.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %status.sroa.0.1.i = phi i8 [ %status.sroa.0.0.i, %do.end123.i ], [ %status.sroa.0.3.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %lcn_block.1.i = phi i64 [ %lcn_block.0.i, %do.end123.i ], [ %lcn_block.3.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %vcn_len.1.i = phi i64 [ %vcn_len.0.i, %do.end123.i ], [ %vcn_len.3.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %bh_pos.0.i = phi i64 [ %shl.i, %do.end123.i ], [ %add130.i, %do.cond960.i.do.body124.i_crit_edge ]
  %lcn.1.i = phi i64 [ %lcn.0.i, %do.end123.i ], [ %lcn.6.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %highest_vcn.1.i = phi i64 [ %highest_vcn.0.i, %do.end123.i ], [ %highest_vcn.4.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %vcn.1.i = phi i64 [ %vcn.0.i, %do.end123.i ], [ %vcn.3.ph.i, %do.cond960.i.do.body124.i_crit_edge ]
  %112 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %bh.0.i, align 4
  %114 = and i32 %113, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool126.not.i = icmp eq i32 %114, 0
  br i1 %tobool126.not.i, label %do.body124.i.if.end128.i_crit_edge, label %if.then127.i

do.body124.i.if.end128.i_crit_edge:               ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

if.then127.i:                                     ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 5, ptr noundef %bh.0.i) #8
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.then127.i, %do.body124.i.if.end128.i_crit_edge
  %add130.i = add i64 %bh_pos.0.i, %conv129.i
  %115 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %cluster_size_bits.i, align 8
  %sh_prom133.i = zext i8 %116 to i64
  %shr134.i = ashr i64 %bh_pos.0.i, %sh_prom133.i
  %117 = ptrtoint ptr %cluster_size_mask.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cluster_size_mask.i, align 4
  %119 = trunc i64 %bh_pos.0.i to i32
  %conv136.i = and i32 %118, %119
  %120 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %bh.0.i, align 4
  %122 = and i32 %121, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool138.not.i = icmp eq i32 %122, 0
  br i1 %tobool138.not.i, label %if.end182.i, label %if.then139.i

if.then139.i:                                     ; preds = %if.end128.i
  %123 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1923.i = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1923.i)
  %tobool141.not.i = icmp eq i32 %and1.i.i1923.i, 0
  br i1 %tobool141.not.i, label %if.end143.i, label %if.then139.i.do.cond960.i_crit_edge

if.then139.i.do.cond960.i_crit_edge:              ; preds = %if.then139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.end143.i:                                      ; preds = %if.then139.i
  %125 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %110, align 4
  %and.i.i.i = and i32 %126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end143.i._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !121

if.end143.i._compound_head.exit.i.i_crit_edge:    ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add i32 %126, -1
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i, %if.end143.i._compound_head.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %111, %if.end143.i._compound_head.exit.i.i_crit_edge ]
  %127 = inttoptr i32 %retval.0.i.i.i to ptr
  %128 = getelementptr inbounds %struct.page, ptr %127, i32 0, i32 1
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %128, align 4
  %and.i.i.i.i.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i, !prof !121

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %131 = inttoptr i32 %retval.0.i.i.i to ptr
  call void @dump_page(ptr noundef %131, ptr noundef nonnull @.str.38) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %132 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %127, align 4
  %134 = and i32 %133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.i.not.i.i = icmp eq i32 %134, 0
  br i1 %tobool.i.not.i.i, label %if.end147.i, label %PageUptodate.exit.i

PageUptodate.exit.i:                              ; preds = %folio_flags.exit.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %135 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1924.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1924.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i1924.i, 0
  br i1 %tobool.not.i.i, label %if.then.i1925.i, label %PageUptodate.exit.i.do.cond960.i_crit_edge

PageUptodate.exit.i.do.cond960.i_crit_edge:       ; preds = %PageUptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then.i1925.i:                                  ; preds = %PageUptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #8
  br label %do.cond960.i

if.end147.i:                                      ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.addr.0, i64 %bh_pos.0.i)
  %cmp148.i = icmp sgt i64 %pos.addr.0, %bh_pos.0.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add130.i, i64 %pos.addr.0)
  %cmp150.i = icmp sgt i64 %add130.i, %pos.addr.0
  %or.cond.i = select i1 %cmp148.i, i1 %cmp150.i, i1 false
  br i1 %or.cond.i, label %if.end147.i.do.body158.i_crit_edge, label %lor.lhs.false.i

if.end147.i.do.body158.i_crit_edge:               ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body158.i

lor.lhs.false.i:                                  ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_cmp8(i64 %bh_pos.0.i, i64 %add.i)
  %cmp152.i = icmp slt i64 %bh_pos.0.i, %add.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add130.i, i64 %add.i)
  %cmp155.i = icmp sgt i64 %add130.i, %add.i
  %or.cond1897.i = select i1 %cmp152.i, i1 %cmp155.i, i1 false
  br i1 %or.cond1897.i, label %lor.lhs.false.i.do.body158.i_crit_edge, label %lor.lhs.false.i.do.cond960.i_crit_edge

lor.lhs.false.i.do.cond960.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

lor.lhs.false.i.do.body158.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body158.i

do.body158.i:                                     ; preds = %lor.lhs.false.i.do.body158.i_crit_edge, %if.end147.i.do.body158.i_crit_edge
  %call162.i = call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i) #8
  %137 = ptrtoint ptr %initialized_size165.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %initialized_size165.i, align 8
  call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call162.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %bh_pos.0.i, i64 %138)
  %cmp175.i = icmp slt i64 %bh_pos.0.i, %138
  br i1 %cmp175.i, label %if.then177.i, label %if.else.i

if.then177.i:                                     ; preds = %do.body158.i
  call void @__might_sleep(ptr noundef nonnull @.str.40, i32 noundef 366) #8
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %bh.0.i, i32 noundef 4) #8
  %139 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %bh.0.i, align 4
  %and.i.i.i.i.i.i = and i32 %140, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %trylock_buffer.exit.i.i.i, label %if.then177.i.if.then.i.i1997.i_crit_edge

if.then177.i.if.then.i.i1997.i_crit_edge:         ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i1997.i

trylock_buffer.exit.i.i.i:                        ; preds = %if.then177.i
  call void @llvm.prefetch.p0(ptr %bh.0.i, i32 1, i32 3, i32 1) #8
  %141 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0.i, ptr %bh.0.i, i32 4, ptr elementtype(i32) %bh.0.i) #8, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %141, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !136
  %142 = and i32 %asmresult.i.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not.not.i.i.i = icmp eq i32 %142, 0
  br i1 %tobool.not.not.i.i.i, label %trylock_buffer.exit.i.i.i.ntfs_submit_bh_for_read.exit.i_crit_edge, label %trylock_buffer.exit.i.i.i.if.then.i.i1997.i_crit_edge

trylock_buffer.exit.i.i.i.if.then.i.i1997.i_crit_edge: ; preds = %trylock_buffer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i1997.i

trylock_buffer.exit.i.i.i.ntfs_submit_bh_for_read.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_submit_bh_for_read.exit.i

if.then.i.i1997.i:                                ; preds = %trylock_buffer.exit.i.i.i.if.then.i.i1997.i_crit_edge, %if.then177.i.if.then.i.i1997.i_crit_edge
  call void @__lock_buffer(ptr noundef %bh.0.i) #8
  br label %ntfs_submit_bh_for_read.exit.i

ntfs_submit_bh_for_read.exit.i:                   ; preds = %if.then.i.i1997.i, %trylock_buffer.exit.i.i.i.ntfs_submit_bh_for_read.exit.i_crit_edge
  %b_count.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 11
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i.i.i, i32 1, i32 3, i32 1) #8
  %143 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i.i, ptr %b_count.i.i.i, i32 1, ptr elementtype(i32) %b_count.i.i.i) #8, !srcloc !137
  %b_end_io.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 7
  %144 = ptrtoint ptr %b_end_io.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @end_buffer_read_sync, ptr %b_end_io.i.i, align 4
  %call.i.i = call i32 @submit_bh(i32 noundef 0, i32 noundef 0, ptr noundef %bh.0.i) #8
  %incdec.ptr.i = getelementptr ptr, ptr %wait_bh.1.i, i32 1
  %145 = ptrtoint ptr %wait_bh.1.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %bh.0.i, ptr %wait_bh.1.i, align 4
  br label %do.cond960.i

if.else.i:                                        ; preds = %do.body158.i
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 5
  %146 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %b_data.i, align 4
  %148 = ptrtoint ptr %147 to i32
  %and179.i = and i32 %148, 4095
  %add.i.i = add i32 %and179.i, %78
  call void @zero_user_segments(ptr noundef %99, i32 noundef %and179.i, i32 noundef %add.i.i, i32 noundef 0, i32 noundef 0) #8
  %149 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1926.i = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1926.i)
  %tobool.not.i1927.i = icmp eq i32 %and1.i.i1926.i, 0
  br i1 %tobool.not.i1927.i, label %if.then.i1928.i, label %if.else.i.do.cond960.i_crit_edge

if.else.i.do.cond960.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then.i1928.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #8
  br label %do.cond960.i

if.end182.i:                                      ; preds = %if.end128.i
  %151 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %68, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %152, i32 0, i32 26
  %153 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 6
  %155 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %b_bdev.i, align 8
  %sub184.i = sub i64 %shr134.i, %vcn.1.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub184.i)
  %tobool185.not.i = icmp eq i64 %sub184.i, 0
  br i1 %tobool185.not.i, label %if.end182.i.do.body197.i_crit_edge, label %lor.rhs.i

if.end182.i.do.body197.i_crit_edge:               ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body197.i

lor.rhs.i:                                        ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub184.i)
  %cmp186.i = icmp sgt i64 %sub184.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub184.i, i64 %vcn_len.1.i)
  %cmp188.i = icmp slt i64 %sub184.i, %vcn_len.1.i
  %spec.select.i = select i1 %cmp186.i, i1 %cmp188.i, i1 false
  br i1 %spec.select.i, label %lor.rhs.i.do.body197.i_crit_edge, label %do.body356.i, !prof !121

lor.rhs.i.do.body197.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body197.i

do.body197.i:                                     ; preds = %if.then954.i, %if.end927.i.do.body197.i_crit_edge, %lor.rhs.i.do.body197.i_crit_edge, %if.end182.i.do.body197.i_crit_edge
  %base_ni.2.i = phi ptr [ %base_ni.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ %base_ni.3.i, %if.then954.i ], [ %base_ni.3.i, %if.end927.i.do.body197.i_crit_edge ], [ %base_ni.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %rl.2.i = phi ptr [ %rl.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ null, %if.then954.i ], [ %call648.i, %if.end927.i.do.body197.i_crit_edge ], [ %rl.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %ctx.2.i = phi ptr [ %ctx.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ %call674.i, %if.then954.i ], [ %call674.i, %if.end927.i.do.body197.i_crit_edge ], [ %ctx.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %m.2.i = phi ptr [ %m.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ %324, %if.then954.i ], [ %324, %if.end927.i.do.body197.i_crit_edge ], [ %m.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %a.2.i = phi ptr [ %a.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ %a.4.i, %if.then954.i ], [ %a.4.i, %if.end927.i.do.body197.i_crit_edge ], [ %a.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %attr_rec_len.2.i = phi i32 [ %attr_rec_len.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ %344, %if.then954.i ], [ %344, %if.end927.i.do.body197.i_crit_edge ], [ %attr_rec_len.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %rl_write_locked.2.off0.i = phi i1 [ %rl_write_locked.1.off0.i, %lor.rhs.i.do.body197.i_crit_edge ], [ false, %if.then954.i ], [ true, %if.end927.i.do.body197.i_crit_edge ], [ %rl_write_locked.1.off0.i, %if.end182.i.do.body197.i_crit_edge ]
  %was_hole.2.off0.i = phi i1 [ %was_hole.1.off0.i, %lor.rhs.i.do.body197.i_crit_edge ], [ true, %if.then954.i ], [ true, %if.end927.i.do.body197.i_crit_edge ], [ %was_hole.1.off0.i, %if.end182.i.do.body197.i_crit_edge ]
  %status.sroa.0.2.i = phi i8 [ %status.sroa.0.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ %bf.clear937.i, %if.then954.i ], [ %bf.clear937.i, %if.end927.i.do.body197.i_crit_edge ], [ %status.sroa.0.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %cdelta.0.i = phi i64 [ %sub184.i, %lor.rhs.i.do.body197.i_crit_edge ], [ 0, %if.then954.i ], [ 0, %if.end927.i.do.body197.i_crit_edge ], [ 0, %if.end182.i.do.body197.i_crit_edge ]
  %lcn_block.2.i = phi i64 [ %lcn_block.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ %shl944.i, %if.then954.i ], [ %shl944.i, %if.end927.i.do.body197.i_crit_edge ], [ %lcn_block.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %vcn_len.2.i = phi i64 [ %vcn_len.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ 1, %if.then954.i ], [ 1, %if.end927.i.do.body197.i_crit_edge ], [ %vcn_len.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %lcn.2.i = phi i64 [ %lcn.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ %304, %if.then954.i ], [ %304, %if.end927.i.do.body197.i_crit_edge ], [ %lcn.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %highest_vcn.2.i = phi i64 [ %highest_vcn.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ %highest_vcn.3.i, %if.then954.i ], [ %highest_vcn.3.i, %if.end927.i.do.body197.i_crit_edge ], [ %highest_vcn.1.i, %if.end182.i.do.body197.i_crit_edge ]
  %vcn.2.i = phi i64 [ %vcn.1.i, %lor.rhs.i.do.body197.i_crit_edge ], [ %shr134.i, %if.then954.i ], [ %shr134.i, %if.end927.i.do.body197.i_crit_edge ], [ %vcn.1.i, %if.end182.i.do.body197.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %lcn.2.i)
  %cmp198.i = icmp slt i64 %lcn.2.i, 0
  br i1 %cmp198.i, label %do.body207.i, label %do.body197.i.do.end215.i_crit_edge, !prof !120

do.body197.i.do.end215.i_crit_edge:               ; preds = %do.body197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end215.i

do.body207.i:                                     ; preds = %do.body197.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 707, 0\0A.popsection", ""() #8, !srcloc !138
  unreachable

do.end215.i:                                      ; preds = %if.else449.i, %if.then446.i, %if.then425.i.do.end215.i_crit_edge, %do.body197.i.do.end215.i_crit_edge
  %vcn.22119.i = phi i64 [ %vcn.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %shr134.i, %if.then425.i.do.end215.i_crit_edge ], [ %shr134.i, %if.else449.i ], [ %shr134.i, %if.then446.i ]
  %highest_vcn.22118.i = phi i64 [ %highest_vcn.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %highest_vcn.1.i, %if.then425.i.do.end215.i_crit_edge ], [ %highest_vcn.1.i, %if.else449.i ], [ %highest_vcn.1.i, %if.then446.i ]
  %lcn.22117.i = phi i64 [ %lcn.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %call416.i, %if.then425.i.do.end215.i_crit_edge ], [ %call416.i, %if.else449.i ], [ %call416.i, %if.then446.i ]
  %vcn_len.22116.i = phi i64 [ %vcn_len.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %sub428.i, %if.then425.i.do.end215.i_crit_edge ], [ %sub428.i, %if.else449.i ], [ %sub428.i, %if.then446.i ]
  %lcn_block.22115.i = phi i64 [ %lcn_block.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %shl434.i, %if.then425.i.do.end215.i_crit_edge ], [ %shl434.i, %if.else449.i ], [ %shl434.i, %if.then446.i ]
  %cdelta.02114.i = phi i64 [ %cdelta.0.i, %do.body197.i.do.end215.i_crit_edge ], [ 0, %if.then425.i.do.end215.i_crit_edge ], [ 0, %if.else449.i ], [ 0, %if.then446.i ]
  %status.sroa.0.22113.i = phi i8 [ %status.sroa.0.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %status.sroa.0.1.i, %if.then425.i.do.end215.i_crit_edge ], [ %status.sroa.0.1.i, %if.else449.i ], [ %status.sroa.0.1.i, %if.then446.i ]
  %was_hole.2.off02112.i = phi i1 [ %was_hole.2.off0.i, %do.body197.i.do.end215.i_crit_edge ], [ false, %if.then425.i.do.end215.i_crit_edge ], [ false, %if.else449.i ], [ false, %if.then446.i ]
  %rl_write_locked.2.off02111.i = phi i1 [ %rl_write_locked.2.off0.i, %do.body197.i.do.end215.i_crit_edge ], [ %rl_write_locked.4.off03348.i, %if.then425.i.do.end215.i_crit_edge ], [ false, %if.else449.i ], [ false, %if.then446.i ]
  %attr_rec_len.22109.i = phi i32 [ %attr_rec_len.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %attr_rec_len.1.i, %if.then425.i.do.end215.i_crit_edge ], [ %attr_rec_len.1.i, %if.else449.i ], [ %attr_rec_len.1.i, %if.then446.i ]
  %a.22108.i = phi ptr [ %a.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %a.1.i, %if.then425.i.do.end215.i_crit_edge ], [ %a.1.i, %if.else449.i ], [ %a.1.i, %if.then446.i ]
  %m.22107.i = phi ptr [ %m.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %m.1.i, %if.then425.i.do.end215.i_crit_edge ], [ %m.1.i, %if.else449.i ], [ %m.1.i, %if.then446.i ]
  %ctx.22106.i = phi ptr [ %ctx.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %ctx.1.i, %if.then425.i.do.end215.i_crit_edge ], [ %ctx.1.i, %if.else449.i ], [ %ctx.1.i, %if.then446.i ]
  %rl.22105.i = phi ptr [ %rl.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %rl.4.i, %if.then425.i.do.end215.i_crit_edge ], [ null, %if.else449.i ], [ null, %if.then446.i ]
  %base_ni.22104.i = phi ptr [ %base_ni.2.i, %do.body197.i.do.end215.i_crit_edge ], [ %base_ni.1.i, %if.then425.i.do.end215.i_crit_edge ], [ %base_ni.1.i, %if.else449.i ], [ %base_ni.1.i, %if.then446.i ]
  %156 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %cluster_size_bits.i, align 8
  %conv217.i = zext i8 %157 to i32
  %sub219.i = sub nsw i32 %conv217.i, %conv431.i
  %sh_prom220.i = zext i32 %sub219.i to i64
  %shl221.i = shl i64 %cdelta.02114.i, %sh_prom220.i
  %shr224.i = lshr i32 %conv136.i, %conv431.i
  %conv225.i = zext i32 %shr224.i to i64
  %add222.i = add i64 %lcn_block.22115.i, %conv225.i
  %add226.i = add i64 %add222.i, %shl221.i
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %158 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %add226.i, ptr %b_blocknr.i, align 8
  %159 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %bh.0.i, align 4
  %161 = and i32 %160, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i1930.i = icmp eq i32 %161, 0
  br i1 %tobool.not.i1930.i, label %if.then.i1931.i, label %do.end215.i.set_buffer_mapped.exit.i_crit_edge

do.end215.i.set_buffer_mapped.exit.i_crit_edge:   ; preds = %do.end215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_mapped.exit.i

if.then.i1931.i:                                  ; preds = %do.end215.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 4, ptr noundef %bh.0.i) #8
  br label %set_buffer_mapped.exit.i

set_buffer_mapped.exit.i:                         ; preds = %if.then.i1931.i, %do.end215.i.set_buffer_mapped.exit.i_crit_edge
  %162 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %110, align 4
  %and.i.i1998.i = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1998.i)
  %tobool.not.i.i1999.i = icmp eq i32 %and.i.i1998.i, 0
  br i1 %tobool.not.i.i1999.i, label %set_buffer_mapped.exit.i._compound_head.exit.i2006.i_crit_edge, label %if.then.i.i2001.i, !prof !121

set_buffer_mapped.exit.i._compound_head.exit.i2006.i_crit_edge: ; preds = %set_buffer_mapped.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i2006.i

if.then.i.i2001.i:                                ; preds = %set_buffer_mapped.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i2000.i = add i32 %163, -1
  br label %_compound_head.exit.i2006.i

_compound_head.exit.i2006.i:                      ; preds = %if.then.i.i2001.i, %set_buffer_mapped.exit.i._compound_head.exit.i2006.i_crit_edge
  %retval.0.i.i2003.i = phi i32 [ %sub.i.i2000.i, %if.then.i.i2001.i ], [ %111, %set_buffer_mapped.exit.i._compound_head.exit.i2006.i_crit_edge ]
  %164 = inttoptr i32 %retval.0.i.i2003.i to ptr
  %165 = getelementptr inbounds %struct.page, ptr %164, i32 0, i32 1
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %165, align 4
  %and.i.i.i.i2004.i = and i32 %167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i2004.i)
  %tobool.not.i.i.i2005.i = icmp eq i32 %and.i.i.i.i2004.i, 0
  br i1 %tobool.not.i.i.i2005.i, label %folio_flags.exit.i.i2009.i, label %if.then.i.i.i2007.i, !prof !121

if.then.i.i.i2007.i:                              ; preds = %_compound_head.exit.i2006.i
  call void @__sanitizer_cov_trace_pc() #10
  %168 = inttoptr i32 %retval.0.i.i2003.i to ptr
  call void @dump_page(ptr noundef %168, ptr noundef nonnull @.str.38) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

folio_flags.exit.i.i2009.i:                       ; preds = %_compound_head.exit.i2006.i
  %169 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %164, align 4
  %171 = and i32 %170, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.i.not.i2008.i = icmp eq i32 %171, 0
  br i1 %tobool.i.not.i2008.i, label %if.end251.i, label %PageUptodate.exit2012.i

PageUptodate.exit2012.i:                          ; preds = %folio_flags.exit.i.i2009.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %172 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1932.i = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1932.i)
  %tobool231.not.i = icmp eq i32 %and1.i.i1932.i, 0
  br i1 %tobool231.not.i, label %if.then232.i, label %PageUptodate.exit2012.i.if.end233.i_crit_edge

PageUptodate.exit2012.i.if.end233.i_crit_edge:    ; preds = %PageUptodate.exit2012.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end233.i

if.then232.i:                                     ; preds = %PageUptodate.exit2012.i
  %174 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1933.i = and i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1933.i)
  %tobool.not.i1934.i = icmp eq i32 %and1.i.i1933.i, 0
  br i1 %tobool.not.i1934.i, label %if.then.i1935.i, label %if.then232.i.if.end233.i_crit_edge

if.then232.i.if.end233.i_crit_edge:               ; preds = %if.then232.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end233.i

if.then.i1935.i:                                  ; preds = %if.then232.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #8
  br label %if.end233.i

if.end233.i:                                      ; preds = %if.then.i1935.i, %if.then232.i.if.end233.i_crit_edge, %PageUptodate.exit2012.i.if.end233.i_crit_edge
  br i1 %was_hole.2.off02112.i, label %if.then241.i, label %if.end233.i.do.cond960.i_crit_edge, !prof !120

if.end233.i.do.cond960.i_crit_edge:               ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then241.i:                                     ; preds = %if.end233.i
  %176 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %b_bdev.i, align 8
  %178 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %b_blocknr.i, align 8
  call void @clean_bdev_aliases(ptr noundef %177, i64 noundef %179, i64 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add130.i, i64 %pos.addr.0)
  %cmp242.not.i = icmp sgt i64 %add130.i, %pos.addr.0
  call void @__sanitizer_cov_trace_cmp8(i64 %bh_pos.0.i, i64 %add.i)
  %cmp245.not.i = icmp slt i64 %bh_pos.0.i, %add.i
  %or.cond1898.i = and i1 %cmp245.not.i, %cmp242.not.i
  br i1 %or.cond1898.i, label %if.else248.i, label %if.then247.i

if.then247.i:                                     ; preds = %if.then241.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @mark_buffer_dirty(ptr noundef %bh.0.i) #8
  br label %do.cond960.i

if.else248.i:                                     ; preds = %if.then241.i
  %180 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %bh.0.i, align 4
  %182 = and i32 %181, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i1937.i = icmp eq i32 %182, 0
  br i1 %tobool.not.i1937.i, label %if.then.i1938.i, label %if.else248.i.do.cond960.i_crit_edge

if.else248.i.do.cond960.i_crit_edge:              ; preds = %if.else248.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then.i1938.i:                                  ; preds = %if.else248.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 5, ptr noundef %bh.0.i) #8
  br label %do.cond960.i

if.end251.i:                                      ; preds = %folio_flags.exit.i.i2009.i
  br i1 %was_hole.2.off02112.i, label %if.end307.i, label %if.then261.i, !prof !120

if.then261.i:                                     ; preds = %if.end251.i
  %183 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1939.i = and i32 %184, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1939.i)
  %tobool263.not.i = icmp eq i32 %and1.i.i1939.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %bh_pos.0.i, i64 %add.i)
  %cmp265.i = icmp slt i64 %bh_pos.0.i, %add.i
  %or.cond1899.i = select i1 %tobool263.not.i, i1 %cmp265.i, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add130.i, i64 %pos.addr.0)
  %cmp268.i = icmp sgt i64 %add130.i, %pos.addr.0
  %or.cond1900.i = select i1 %or.cond1899.i, i1 %cmp268.i, i1 false
  br i1 %or.cond1900.i, label %land.lhs.true270.i, label %if.then261.i.do.cond960.i_crit_edge

if.then261.i.do.cond960.i_crit_edge:              ; preds = %if.then261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

land.lhs.true270.i:                               ; preds = %if.then261.i
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.addr.0, i64 %bh_pos.0.i)
  %cmp271.i = icmp sgt i64 %pos.addr.0, %bh_pos.0.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add130.i, i64 %add.i)
  %cmp274.i = icmp sgt i64 %add130.i, %add.i
  %or.cond1901.i = select i1 %cmp271.i, i1 true, i1 %cmp274.i
  br i1 %or.cond1901.i, label %do.body277.i, label %land.lhs.true270.i.do.cond960.i_crit_edge

land.lhs.true270.i.do.cond960.i_crit_edge:        ; preds = %land.lhs.true270.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

do.body277.i:                                     ; preds = %land.lhs.true270.i
  %call284.i = call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i) #8
  %185 = ptrtoint ptr %initialized_size165.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %initialized_size165.i, align 8
  call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call284.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %bh_pos.0.i, i64 %186)
  %cmp297.i = icmp slt i64 %bh_pos.0.i, %186
  br i1 %cmp297.i, label %if.then299.i, label %if.else302.i

if.then299.i:                                     ; preds = %do.body277.i
  call void @__might_sleep(ptr noundef nonnull @.str.40, i32 noundef 366) #8
  %call.i.i.i.i.i2013.i = call zeroext i1 @__kasan_check_write(ptr noundef %bh.0.i, i32 noundef 4) #8
  %187 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %bh.0.i, align 4
  %and.i.i.i.i.i2014.i = and i32 %188, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i2014.i)
  %tobool.not.i.i.i.i.i2015.i = icmp eq i32 %and.i.i.i.i.i2014.i, 0
  br i1 %tobool.not.i.i.i.i.i2015.i, label %trylock_buffer.exit.i.i2018.i, label %if.then299.i.if.then.i.i2019.i_crit_edge

if.then299.i.if.then.i.i2019.i_crit_edge:         ; preds = %if.then299.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i2019.i

trylock_buffer.exit.i.i2018.i:                    ; preds = %if.then299.i
  call void @llvm.prefetch.p0(ptr %bh.0.i, i32 1, i32 3, i32 1) #8
  %189 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0.i, ptr %bh.0.i, i32 4, ptr elementtype(i32) %bh.0.i) #8, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i2016.i = extractvalue { i32, i32, i32 } %189, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !136
  %190 = and i32 %asmresult.i.i.i.i.i.i.i.i2016.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.not.i.i2017.i = icmp eq i32 %190, 0
  br i1 %tobool.not.not.i.i2017.i, label %trylock_buffer.exit.i.i2018.i.ntfs_submit_bh_for_read.exit2024.i_crit_edge, label %trylock_buffer.exit.i.i2018.i.if.then.i.i2019.i_crit_edge

trylock_buffer.exit.i.i2018.i.if.then.i.i2019.i_crit_edge: ; preds = %trylock_buffer.exit.i.i2018.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i2019.i

trylock_buffer.exit.i.i2018.i.ntfs_submit_bh_for_read.exit2024.i_crit_edge: ; preds = %trylock_buffer.exit.i.i2018.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_submit_bh_for_read.exit2024.i

if.then.i.i2019.i:                                ; preds = %trylock_buffer.exit.i.i2018.i.if.then.i.i2019.i_crit_edge, %if.then299.i.if.then.i.i2019.i_crit_edge
  call void @__lock_buffer(ptr noundef %bh.0.i) #8
  br label %ntfs_submit_bh_for_read.exit2024.i

ntfs_submit_bh_for_read.exit2024.i:               ; preds = %if.then.i.i2019.i, %trylock_buffer.exit.i.i2018.i.ntfs_submit_bh_for_read.exit2024.i_crit_edge
  %b_count.i.i2020.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 11
  %call.i.i.i.i2021.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i2020.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i.i2020.i, i32 1, i32 3, i32 1) #8
  %191 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i2020.i, ptr %b_count.i.i2020.i, i32 1, ptr elementtype(i32) %b_count.i.i2020.i) #8, !srcloc !137
  %b_end_io.i2022.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 7
  %192 = ptrtoint ptr %b_end_io.i2022.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @end_buffer_read_sync, ptr %b_end_io.i2022.i, align 4
  %call.i2023.i = call i32 @submit_bh(i32 noundef 0, i32 noundef 0, ptr noundef %bh.0.i) #8
  %incdec.ptr301.i = getelementptr ptr, ptr %wait_bh.1.i, i32 1
  %193 = ptrtoint ptr %wait_bh.1.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %bh.0.i, ptr %wait_bh.1.i, align 4
  br label %do.cond960.i

if.else302.i:                                     ; preds = %do.body277.i
  %b_data303.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 5
  %194 = ptrtoint ptr %b_data303.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %b_data303.i, align 4
  %196 = ptrtoint ptr %195 to i32
  %and304.i = and i32 %196, 4095
  %add.i2025.i = add i32 %and304.i, %78
  call void @zero_user_segments(ptr noundef %99, i32 noundef %and304.i, i32 noundef %add.i2025.i, i32 noundef 0, i32 noundef 0) #8
  %197 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1940.i = and i32 %198, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1940.i)
  %tobool.not.i1941.i = icmp eq i32 %and1.i.i1940.i, 0
  br i1 %tobool.not.i1941.i, label %if.then.i1942.i, label %if.else302.i.do.cond960.i_crit_edge

if.else302.i.do.cond960.i_crit_edge:              ; preds = %if.else302.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then.i1942.i:                                  ; preds = %if.else302.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #8
  br label %do.cond960.i

if.end307.i:                                      ; preds = %if.end251.i
  %199 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %b_bdev.i, align 8
  %201 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %b_blocknr.i, align 8
  call void @clean_bdev_aliases(ptr noundef %200, i64 noundef %202, i64 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add130.i, i64 %pos.addr.0)
  %cmp308.not.i = icmp sgt i64 %add130.i, %pos.addr.0
  call void @__sanitizer_cov_trace_cmp8(i64 %bh_pos.0.i, i64 %add.i)
  %cmp311.not.i = icmp slt i64 %bh_pos.0.i, %add.i
  %or.cond1902.i = and i1 %cmp311.not.i, %cmp308.not.i
  %203 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load volatile i32, ptr %bh.0.i, align 4
  br i1 %or.cond1902.i, label %if.end320.i, label %if.then313.i

if.then313.i:                                     ; preds = %if.end307.i
  %and1.i.i1944.i = and i32 %204, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1944.i)
  %tobool315.not.i = icmp eq i32 %and1.i.i1944.i, 0
  br i1 %tobool315.not.i, label %if.then316.i, label %if.then313.i.if.end319.i_crit_edge

if.then313.i.if.end319.i_crit_edge:               ; preds = %if.then313.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end319.i

if.then316.i:                                     ; preds = %if.then313.i
  %b_data317.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 5
  %205 = ptrtoint ptr %b_data317.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %b_data317.i, align 4
  %207 = ptrtoint ptr %206 to i32
  %and318.i = and i32 %207, 4095
  %add.i2028.i = add i32 %and318.i, %78
  call void @zero_user_segments(ptr noundef %99, i32 noundef %and318.i, i32 noundef %add.i2028.i, i32 noundef 0, i32 noundef 0) #8
  %208 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1945.i = and i32 %209, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1945.i)
  %tobool.not.i1946.i = icmp eq i32 %and1.i.i1945.i, 0
  br i1 %tobool.not.i1946.i, label %if.then.i1947.i, label %if.then316.i.if.end319.i_crit_edge

if.then316.i.if.end319.i_crit_edge:               ; preds = %if.then316.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end319.i

if.then.i1947.i:                                  ; preds = %if.then316.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #8
  br label %if.end319.i

if.end319.i:                                      ; preds = %if.then.i1947.i, %if.then316.i.if.end319.i_crit_edge, %if.then313.i.if.end319.i_crit_edge
  call void @mark_buffer_dirty(ptr noundef %bh.0.i) #8
  br label %do.cond960.i

if.end320.i:                                      ; preds = %if.end307.i
  %210 = and i32 %204, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.not.i1949.i = icmp eq i32 %210, 0
  br i1 %tobool.not.i1949.i, label %if.then.i1950.i, label %if.end320.i.set_buffer_new.exit1951.i_crit_edge

if.end320.i.set_buffer_new.exit1951.i_crit_edge:  ; preds = %if.end320.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_new.exit1951.i

if.then.i1950.i:                                  ; preds = %if.end320.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 5, ptr noundef %bh.0.i) #8
  br label %set_buffer_new.exit1951.i

set_buffer_new.exit1951.i:                        ; preds = %if.then.i1950.i, %if.end320.i.set_buffer_new.exit1951.i_crit_edge
  %211 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1952.i = and i32 %212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1952.i)
  %tobool322.not.i = icmp eq i32 %and1.i.i1952.i, 0
  br i1 %tobool322.not.i, label %land.lhs.true323.i, label %set_buffer_new.exit1951.i.do.cond960.i_crit_edge

set_buffer_new.exit1951.i.do.cond960.i_crit_edge: ; preds = %set_buffer_new.exit1951.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

land.lhs.true323.i:                               ; preds = %set_buffer_new.exit1951.i
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.addr.0, i64 %bh_pos.0.i)
  %cmp324.i = icmp sgt i64 %pos.addr.0, %bh_pos.0.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add130.i, i64 %add.i)
  %cmp327.i = icmp sgt i64 %add130.i, %add.i
  %or.cond1903.i = select i1 %cmp324.i, i1 true, i1 %cmp327.i
  br i1 %or.cond1903.i, label %if.then329.i, label %land.lhs.true323.i.do.cond960.i_crit_edge

land.lhs.true323.i.do.cond960.i_crit_edge:        ; preds = %land.lhs.true323.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then329.i:                                     ; preds = %land.lhs.true323.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %213 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %213, 512
  %214 = call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i.i.i2029.i = and i32 %214, -16384
  %215 = inttoptr i32 %and.i.i.i.i.i2029.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %217, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  %218 = call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i1.i.i.i = and i32 %218, -16384
  %219 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %219, i32 0, i32 2
  %220 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %221, i32 0, i32 213
  %222 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %223, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %99, i32 noundef %or.i.i) #8
  br i1 %cmp324.i, label %if.then333.i, label %if.then329.i.if.end338.i_crit_edge

if.then329.i.if.end338.i_crit_edge:               ; preds = %if.then329.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end338.i

if.then333.i:                                     ; preds = %if.then329.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv335.i = and i32 %119, 4095
  %add.ptr.i316 = getelementptr i8, ptr %call.i.i.i, i32 %conv335.i
  %sub336.i = sub i64 %pos.addr.0, %bh_pos.0.i
  %conv337.i = trunc i64 %sub336.i to i32
  %224 = call ptr @memset(ptr %add.ptr.i316, i32 0, i32 %conv337.i)
  br label %if.end338.i

if.end338.i:                                      ; preds = %if.then333.i, %if.then329.i.if.end338.i_crit_edge
  br i1 %cmp327.i, label %if.then341.i, label %if.end338.i.do.end351.i_crit_edge

if.end338.i.do.end351.i_crit_edge:                ; preds = %if.end338.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end351.i

if.then341.i:                                     ; preds = %if.end338.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr344.i = getelementptr i8, ptr %call.i.i.i, i32 %conv343.i
  %sub345.i = sub i64 %add130.i, %add.i
  %conv346.i = trunc i64 %sub345.i to i32
  %225 = call ptr @memset(ptr %add.ptr344.i, i32 0, i32 %conv346.i)
  br label %do.end351.i

do.end351.i:                                      ; preds = %if.then341.i, %if.end338.i.do.end351.i_crit_edge
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %226 = call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i1.i.i = and i32 %226, -16384
  %227 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %227, i32 0, i32 2
  %228 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %229, i32 0, i32 213
  %230 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %231, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !142
  %232 = call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i.i2030.i = and i32 %232, -16384
  %233 = inttoptr i32 %and.i.i.i.i2030.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i2031.i = add i32 %235, -1
  store volatile i32 %sub.i.i2031.i, ptr %preempt_count.i.i.i.i, align 4
  call void @flush_dcache_page(ptr noundef %99) #8
  br label %do.cond960.i

do.body356.i:                                     ; preds = %lor.rhs.i
  %call363.i = call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i) #8
  %236 = ptrtoint ptr %allocated_size.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %allocated_size.i, align 8
  call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call363.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %bh_pos.0.i, i64 %237)
  %cmp375.i = icmp sgt i64 %bh_pos.0.i, %237
  br i1 %cmp375.i, label %if.then377.i, label %if.end393.i

if.then377.i:                                     ; preds = %do.body356.i
  %238 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %110, align 4
  %and.i.i2032.i = and i32 %239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2032.i)
  %tobool.not.i.i2033.i = icmp eq i32 %and.i.i2032.i, 0
  br i1 %tobool.not.i.i2033.i, label %if.then377.i._compound_head.exit.i2040.i_crit_edge, label %if.then.i.i2035.i, !prof !121

if.then377.i._compound_head.exit.i2040.i_crit_edge: ; preds = %if.then377.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i2040.i

if.then.i.i2035.i:                                ; preds = %if.then377.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i2034.i = add i32 %239, -1
  br label %_compound_head.exit.i2040.i

_compound_head.exit.i2040.i:                      ; preds = %if.then.i.i2035.i, %if.then377.i._compound_head.exit.i2040.i_crit_edge
  %retval.0.i.i2037.i = phi i32 [ %sub.i.i2034.i, %if.then.i.i2035.i ], [ %111, %if.then377.i._compound_head.exit.i2040.i_crit_edge ]
  %240 = inttoptr i32 %retval.0.i.i2037.i to ptr
  %241 = getelementptr inbounds %struct.page, ptr %240, i32 0, i32 1
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile i32, ptr %241, align 4
  %and.i.i.i.i2038.i = and i32 %243, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i2038.i)
  %tobool.not.i.i.i2039.i = icmp eq i32 %and.i.i.i.i2038.i, 0
  br i1 %tobool.not.i.i.i2039.i, label %folio_flags.exit.i.i2043.i, label %if.then.i.i.i2041.i, !prof !121

if.then.i.i.i2041.i:                              ; preds = %_compound_head.exit.i2040.i
  call void @__sanitizer_cov_trace_pc() #10
  %244 = inttoptr i32 %retval.0.i.i2037.i to ptr
  call void @dump_page(ptr noundef %244, ptr noundef nonnull @.str.38) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

folio_flags.exit.i.i2043.i:                       ; preds = %_compound_head.exit.i2040.i
  %245 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load volatile i32, ptr %240, align 4
  %247 = and i32 %246, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %247)
  %tobool.i.not.i2042.i = icmp eq i32 %247, 0
  br i1 %tobool.i.not.i2042.i, label %if.else385.i, label %PageUptodate.exit2046.i

PageUptodate.exit2046.i:                          ; preds = %folio_flags.exit.i.i2043.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %248 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1953.i = and i32 %249, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1953.i)
  %tobool382.not.i = icmp eq i32 %and1.i.i1953.i, 0
  br i1 %tobool382.not.i, label %if.then383.i, label %PageUptodate.exit2046.i.do.cond960.i_crit_edge

PageUptodate.exit2046.i.do.cond960.i_crit_edge:   ; preds = %PageUptodate.exit2046.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then383.i:                                     ; preds = %PageUptodate.exit2046.i
  %250 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1954.i = and i32 %251, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1954.i)
  %tobool.not.i1955.i = icmp eq i32 %and1.i.i1954.i, 0
  br i1 %tobool.not.i1955.i, label %if.then.i1956.i, label %if.then383.i.do.cond960.i_crit_edge

if.then383.i.do.cond960.i_crit_edge:              ; preds = %if.then383.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then.i1956.i:                                  ; preds = %if.then383.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #8
  br label %do.cond960.i

if.else385.i:                                     ; preds = %folio_flags.exit.i.i2043.i
  %252 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1958.i = and i32 %253, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1958.i)
  %tobool387.not.i = icmp eq i32 %and1.i.i1958.i, 0
  br i1 %tobool387.not.i, label %if.then388.i, label %if.else385.i.do.cond960.i_crit_edge

if.else385.i.do.cond960.i_crit_edge:              ; preds = %if.else385.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then388.i:                                     ; preds = %if.else385.i
  %b_data389.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 5
  %254 = ptrtoint ptr %b_data389.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %b_data389.i, align 4
  %256 = ptrtoint ptr %255 to i32
  %and390.i = and i32 %256, 4095
  %add.i2047.i = add i32 %and390.i, %78
  call void @zero_user_segments(ptr noundef %99, i32 noundef %and390.i, i32 noundef %add.i2047.i, i32 noundef 0, i32 noundef 0) #8
  %257 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1959.i = and i32 %258, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1959.i)
  %tobool.not.i1960.i = icmp eq i32 %and1.i.i1959.i, 0
  br i1 %tobool.not.i1960.i, label %if.then.i1961.i, label %if.then388.i.do.cond960.i_crit_edge

if.then388.i.do.cond960.i_crit_edge:              ; preds = %if.then388.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then.i1961.i:                                  ; preds = %if.then388.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #8
  br label %do.cond960.i

if.end393.i:                                      ; preds = %do.body356.i
  %tobool394.not.i = icmp eq ptr %rl.1.i, null
  br i1 %tobool394.not.i, label %if.then395.i, label %if.end393.i.while.cond.preheader.i_crit_edge

if.end393.i.while.cond.preheader.i_crit_edge:     ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader.i

if.then395.i:                                     ; preds = %if.end393.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @down_read(ptr noundef %lock.i) #8
  br label %if.end398.i

if.end398.i:                                      ; preds = %if.then598.i, %if.end488.i.if.end398.i_crit_edge, %if.then483.i, %if.then395.i
  %rl_write_locked.3.off0.i = phi i1 [ true, %if.then598.i ], [ true, %if.then483.i ], [ %rl_write_locked.1.off0.i, %if.then395.i ], [ true, %if.end488.i.if.end398.i_crit_edge ]
  %is_retry.0.off0.i = phi i1 [ %is_retry.1.off03349.i, %if.then598.i ], [ %is_retry.1.off03350.i, %if.then483.i ], [ false, %if.then395.i ], [ true, %if.end488.i.if.end398.i_crit_edge ]
  %259 = ptrtoint ptr %runlist396.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %runlist396.i, align 8
  %cmp399.not.i = icmp eq ptr %260, null
  br i1 %cmp399.not.i, label %if.end398.i.if.then469.i_crit_edge, label %if.end398.i.while.cond.preheader.i_crit_edge, !prof !120

if.end398.i.while.cond.preheader.i_crit_edge:     ; preds = %if.end398.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader.i

if.end398.i.if.then469.i_crit_edge:               ; preds = %if.end398.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then469.i

while.cond.preheader.i:                           ; preds = %if.end398.i.while.cond.preheader.i_crit_edge, %if.end393.i.while.cond.preheader.i_crit_edge
  %is_retry.1.off03351.i = phi i1 [ %is_retry.0.off0.i, %if.end398.i.while.cond.preheader.i_crit_edge ], [ false, %if.end393.i.while.cond.preheader.i_crit_edge ]
  %rl_write_locked.4.off03348.i = phi i1 [ %rl_write_locked.3.off0.i, %if.end398.i.while.cond.preheader.i_crit_edge ], [ %rl_write_locked.1.off0.i, %if.end393.i.while.cond.preheader.i_crit_edge ]
  %rl.33345.i = phi ptr [ %260, %if.end398.i.while.cond.preheader.i_crit_edge ], [ %rl.1.i, %if.end393.i.while.cond.preheader.i_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs409.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %rl.4.i = phi ptr [ %arrayidx410.i, %land.rhs409.i.while.cond.i_crit_edge ], [ %rl.33345.i, %while.cond.preheader.i ]
  %length.i = getelementptr inbounds %struct.runlist_element, ptr %rl.4.i, i32 0, i32 2
  %261 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %262)
  %tobool408.not.i = icmp eq i64 %262, 0
  br i1 %tobool408.not.i, label %while.cond.i.while.end.i_crit_edge, label %land.rhs409.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

land.rhs409.i:                                    ; preds = %while.cond.i
  %arrayidx410.i = getelementptr %struct.runlist_element, ptr %rl.4.i, i32 1
  %263 = ptrtoint ptr %arrayidx410.i to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %arrayidx410.i, align 8
  %cmp412.not.i = icmp sgt i64 %264, %shr134.i
  br i1 %cmp412.not.i, label %land.rhs409.i.while.end.i_crit_edge, label %land.rhs409.i.while.cond.i_crit_edge

land.rhs409.i.while.cond.i_crit_edge:             ; preds = %land.rhs409.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

land.rhs409.i.while.end.i_crit_edge:              ; preds = %land.rhs409.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %land.rhs409.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %call416.i = call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %rl.4.i, i64 noundef %shr134.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call416.i)
  %cmp417.i = icmp sgt i64 %call416.i, -1
  br i1 %cmp417.i, label %if.then425.i, label %if.end456.i, !prof !121

if.then425.i:                                     ; preds = %while.end.i
  %arrayidx426.i = getelementptr %struct.runlist_element, ptr %rl.4.i, i32 1
  %265 = ptrtoint ptr %arrayidx426.i to i32
  call void @__asan_load8_noabort(i32 %265)
  %266 = load i64, ptr %arrayidx426.i, align 8
  %sub428.i = sub i64 %266, %shr134.i
  %267 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %cluster_size_bits.i, align 8
  %conv430.i = zext i8 %268 to i32
  %sub432.i = sub nsw i32 %conv430.i, %conv431.i
  %sh_prom433.i = zext i32 %sub432.i to i64
  %shl434.i = shl i64 %call416.i, %sh_prom433.i
  call void @__sanitizer_cov_trace_cmp8(i64 %266, i64 %shr99.i)
  %cmp436.not.i = icmp slt i64 %266, %shr99.i
  br i1 %cmp436.not.i, label %if.then425.i.do.end215.i_crit_edge, label %if.then444.i, !prof !120

if.then425.i.do.end215.i_crit_edge:               ; preds = %if.then425.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end215.i

if.then444.i:                                     ; preds = %if.then425.i
  br i1 %rl_write_locked.4.off03348.i, label %if.then446.i, label %if.else449.i

if.then446.i:                                     ; preds = %if.then444.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_write(ptr noundef %lock.i) #8
  br label %do.end215.i

if.else449.i:                                     ; preds = %if.then444.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef %lock.i) #8
  br label %do.end215.i

if.end456.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_switch(i64 %call416.i, ptr @__sancov_gen_cov_switch_values)
  switch i64 %call416.i, label %if.end456.i.if.then469.i_crit_edge [
    i64 -1, label %if.end456.i.rl_not_mapped_enoent.i_crit_edge
    i64 -3, label %rl_not_mapped_enoent.fold.split.i
  ], !prof !143

if.end456.i.rl_not_mapped_enoent.i_crit_edge:     ; preds = %if.end456.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rl_not_mapped_enoent.i

if.end456.i.if.then469.i_crit_edge:               ; preds = %if.end456.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then469.i

if.then469.i:                                     ; preds = %if.end456.i.if.then469.i_crit_edge, %if.end398.i.if.then469.i_crit_edge
  %is_retry.1.off03350.i = phi i1 [ %is_retry.0.off0.i, %if.end398.i.if.then469.i_crit_edge ], [ %is_retry.1.off03351.i, %if.end456.i.if.then469.i_crit_edge ]
  %rl_write_locked.4.off03347.i = phi i1 [ %rl_write_locked.3.off0.i, %if.end398.i.if.then469.i_crit_edge ], [ %rl_write_locked.4.off03348.i, %if.end456.i.if.then469.i_crit_edge ]
  %rl.521282135.i = phi ptr [ null, %if.end398.i.if.then469.i_crit_edge ], [ %rl.4.i, %if.end456.i.if.then469.i_crit_edge ]
  %lcn.321302133.i = phi i64 [ -2, %if.end398.i.if.then469.i_crit_edge ], [ %call416.i, %if.end456.i.if.then469.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %lcn.321302133.i)
  %cmp472.i = icmp eq i64 %lcn.321302133.i, -2
  %not.is_retry.1.off0.i = xor i1 %is_retry.1.off03350.i, true
  %spec.select1905.i = select i1 %not.is_retry.1.off0.i, i1 %cmp472.i, i1 false
  br i1 %spec.select1905.i, label %if.then481.i, label %if.then469.i.if.end506.i_crit_edge, !prof !121

if.then469.i.if.end506.i_crit_edge:               ; preds = %if.then469.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end506.i

if.then481.i:                                     ; preds = %if.then469.i
  br i1 %rl_write_locked.4.off03347.i, label %if.end488.i, label %if.then483.i

if.then483.i:                                     ; preds = %if.then481.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef %lock.i) #8
  call void @down_write(ptr noundef %lock.i) #8
  br label %if.end398.i

if.end488.i:                                      ; preds = %if.then481.i
  %call489.i = call i32 @ntfs_map_runlist_nolock(ptr noundef %add.ptr.i.i, i64 noundef %shr134.i, ptr noundef null) #8
  %269 = zext i32 %call489.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %269, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call489.i, label %if.end488.i.if.end506.i_crit_edge [
    i32 0, label %if.end488.i.if.end398.i_crit_edge
    i32 -2, label %if.end488.i.rl_not_mapped_enoent.i_crit_edge
  ], !prof !144

if.end488.i.rl_not_mapped_enoent.i_crit_edge:     ; preds = %if.end488.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rl_not_mapped_enoent.i

if.end488.i.if.end398.i_crit_edge:                ; preds = %if.end488.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end398.i

if.end488.i.if.end506.i_crit_edge:                ; preds = %if.end488.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end506.i

if.end506.i:                                      ; preds = %if.end488.i.if.end506.i_crit_edge, %if.then469.i.if.end506.i_crit_edge
  %rl_write_locked.4.off0.lcssa.i = phi i1 [ true, %if.end488.i.if.end506.i_crit_edge ], [ %rl_write_locked.4.off03347.i, %if.then469.i.if.end506.i_crit_edge ]
  %err.5.i = phi i32 [ %call489.i, %if.end488.i.if.end506.i_crit_edge ], [ -5, %if.then469.i.if.end506.i_crit_edge ]
  %270 = trunc i64 %bh_pos.0.i to i32
  %b_blocknr507.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %271 = ptrtoint ptr %b_blocknr507.i to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 -1, ptr %b_blocknr507.i, align 8
  %272 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %68, align 8
  %274 = ptrtoint ptr %mft_no.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %mft_no.i, align 4
  %276 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %type.i, align 4
  %278 = ptrtoint ptr %cluster_size_mask.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %cluster_size_mask.i, align 4
  %and512.i = and i32 %279, %270
  %cond.i = select i1 %is_retry.1.off03350.i, ptr @.str.24, ptr @.str.25
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef %273, ptr noundef nonnull @.str.23, i32 noundef %275, i32 noundef %277, i64 noundef %shr134.i, i32 noundef %and512.i, ptr noundef nonnull %cond.i, i32 noundef %err.5.i) #8
  br label %do.end965.i

rl_not_mapped_enoent.fold.split.i:                ; preds = %if.end456.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rl_not_mapped_enoent.i

rl_not_mapped_enoent.i:                           ; preds = %rl_not_mapped_enoent.fold.split.i, %if.end488.i.rl_not_mapped_enoent.i_crit_edge, %if.end456.i.rl_not_mapped_enoent.i_crit_edge
  %is_retry.1.off03349.i = phi i1 [ %is_retry.1.off03350.i, %if.end488.i.rl_not_mapped_enoent.i_crit_edge ], [ %is_retry.1.off03351.i, %if.end456.i.rl_not_mapped_enoent.i_crit_edge ], [ %is_retry.1.off03351.i, %rl_not_mapped_enoent.fold.split.i ]
  %rl_write_locked.4.off03346.i = phi i1 [ true, %if.end488.i.rl_not_mapped_enoent.i_crit_edge ], [ %rl_write_locked.4.off03348.i, %if.end456.i.rl_not_mapped_enoent.i_crit_edge ], [ %rl_write_locked.4.off03348.i, %rl_not_mapped_enoent.fold.split.i ]
  %rl.521282134.i = phi ptr [ %rl.521282135.i, %if.end488.i.rl_not_mapped_enoent.i_crit_edge ], [ %rl.4.i, %if.end456.i.rl_not_mapped_enoent.i_crit_edge ], [ %rl.4.i, %rl_not_mapped_enoent.fold.split.i ]
  %cmp559.not.i = phi i1 [ false, %if.end488.i.rl_not_mapped_enoent.i_crit_edge ], [ true, %if.end456.i.rl_not_mapped_enoent.i_crit_edge ], [ false, %rl_not_mapped_enoent.fold.split.i ]
  %lcn.4.i = phi i64 [ -3, %if.end488.i.rl_not_mapped_enoent.i_crit_edge ], [ %call416.i, %if.end456.i.rl_not_mapped_enoent.i_crit_edge ], [ -3, %rl_not_mapped_enoent.fold.split.i ]
  %280 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %cluster_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %281)
  %cmp517.i = icmp ult i32 %281, 4096
  br i1 %cmp517.i, label %if.then525.i, label %rl_not_mapped_enoent.i.do.body558.i_crit_edge, !prof !120

rl_not_mapped_enoent.i.do.body558.i_crit_edge:    ; preds = %rl_not_mapped_enoent.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body558.i

if.then525.i:                                     ; preds = %rl_not_mapped_enoent.i
  %conv527.i = zext i32 %281 to i64
  %add528.i = add i64 %add130.i, -1
  %sub529.i = add i64 %add528.i, %conv527.i
  %282 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %cluster_size_bits.i, align 8
  %sh_prom532.i = zext i8 %283 to i64
  %shr533.i = ashr i64 %sub529.i, %sh_prom532.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr533.i, i64 %shr.i)
  %cmp534.not.i = icmp sgt i64 %shr533.i, %shr.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shr134.i, i64 %shr99.i)
  %cmp537.not.i = icmp slt i64 %shr134.i, %shr99.i
  %or.cond1906.i = select i1 %cmp534.not.i, i1 %cmp537.not.i, i1 false
  br i1 %or.cond1906.i, label %if.then525.i.do.body558.i_crit_edge, label %if.then539.i

if.then525.i.do.body558.i_crit_edge:              ; preds = %if.then525.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body558.i

if.then539.i:                                     ; preds = %if.then525.i
  %b_blocknr540.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %284 = ptrtoint ptr %b_blocknr540.i to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 -1, ptr %b_blocknr540.i, align 8
  %call541.i = call fastcc i32 @PageUptodate(ptr noundef %99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call541.i)
  %tobool542.not.i = icmp eq i32 %call541.i, 0
  %285 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1968.i = and i32 %286, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1968.i)
  %tobool550.not.i = icmp eq i32 %and1.i.i1968.i, 0
  br i1 %tobool542.not.i, label %if.else548.i, label %if.then543.i

if.then543.i:                                     ; preds = %if.then539.i
  br i1 %tobool550.not.i, label %if.then546.i, label %if.then543.i.do.cond960.i_crit_edge

if.then543.i.do.cond960.i_crit_edge:              ; preds = %if.then543.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then546.i:                                     ; preds = %if.then543.i
  %287 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1964.i = and i32 %288, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1964.i)
  %tobool.not.i1965.i = icmp eq i32 %and1.i.i1964.i, 0
  br i1 %tobool.not.i1965.i, label %if.then.i1966.i, label %if.then546.i.do.cond960.i_crit_edge

if.then546.i.do.cond960.i_crit_edge:              ; preds = %if.then546.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then.i1966.i:                                  ; preds = %if.then546.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #8
  br label %do.cond960.i

if.else548.i:                                     ; preds = %if.then539.i
  br i1 %tobool550.not.i, label %if.then551.i, label %if.else548.i.do.cond960.i_crit_edge

if.else548.i.do.cond960.i_crit_edge:              ; preds = %if.else548.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then551.i:                                     ; preds = %if.else548.i
  %b_data552.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 5
  %289 = ptrtoint ptr %b_data552.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %b_data552.i, align 4
  %291 = ptrtoint ptr %290 to i32
  %and553.i = and i32 %291, 4095
  %add.i2048.i = add i32 %and553.i, %78
  call void @zero_user_segments(ptr noundef %99, i32 noundef %and553.i, i32 noundef %add.i2048.i, i32 noundef 0, i32 noundef 0) #8
  %292 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i1969.i = and i32 %293, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1969.i)
  %tobool.not.i1970.i = icmp eq i32 %and1.i.i1969.i, 0
  br i1 %tobool.not.i1970.i, label %if.then.i1971.i, label %if.then551.i.do.cond960.i_crit_edge

if.then551.i.do.cond960.i_crit_edge:              ; preds = %if.then551.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond960.i

if.then.i1971.i:                                  ; preds = %if.then551.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #8
  br label %do.cond960.i

do.body558.i:                                     ; preds = %if.then525.i.do.body558.i_crit_edge, %rl_not_mapped_enoent.i.do.body558.i_crit_edge
  br i1 %cmp559.not.i, label %do.body577.i, label %do.body568.i, !prof !121

do.body568.i:                                     ; preds = %do.body558.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 956, 0\0A.popsection", ""() #8, !srcloc !145
  unreachable

do.body577.i:                                     ; preds = %do.body558.i
  %tobool578.not.i = icmp eq ptr %rl.521282134.i, null
  br i1 %tobool578.not.i, label %do.body588.i, label %do.end596.i, !prof !120

do.body588.i:                                     ; preds = %do.body577.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 962, 0\0A.popsection", ""() #8, !srcloc !146
  unreachable

do.end596.i:                                      ; preds = %do.body577.i
  br i1 %rl_write_locked.4.off03346.i, label %do.body604.i, label %if.then598.i

if.then598.i:                                     ; preds = %do.end596.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef %lock.i) #8
  call void @down_write(ptr noundef %lock.i) #8
  br label %if.end398.i

do.body604.i:                                     ; preds = %do.end596.i
  %lcn605.i = getelementptr inbounds %struct.runlist_element, ptr %rl.521282134.i, i32 0, i32 1
  %294 = ptrtoint ptr %lcn605.i to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %lcn605.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %295)
  %cmp606.not.i = icmp eq i64 %295, -1
  br i1 %cmp606.not.i, label %while.cond624.preheader.i, label %do.body615.i, !prof !121

while.cond624.preheader.i:                        ; preds = %do.body604.i
  %296 = ptrtoint ptr %runlist396.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %runlist396.i, align 8
  br label %while.cond624.i

do.body615.i:                                     ; preds = %do.body604.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 970, 0\0A.popsection", ""() #8, !srcloc !147
  unreachable

while.cond624.i:                                  ; preds = %while.body630.i.while.cond624.i_crit_edge, %while.cond624.preheader.i
  %rl2.0.i = phi ptr [ %incdec.ptr625.i, %while.body630.i.while.cond624.i_crit_edge ], [ %rl.521282134.i, %while.cond624.preheader.i ]
  %incdec.ptr625.i = getelementptr %struct.runlist_element, ptr %rl2.0.i, i32 -1
  %cmp628.not.i = icmp ult ptr %incdec.ptr625.i, %297
  br i1 %cmp628.not.i, label %while.cond624.i.while.end639.i_crit_edge, label %while.body630.i

while.cond624.i.while.end639.i_crit_edge:         ; preds = %while.cond624.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end639.i

while.body630.i:                                  ; preds = %while.cond624.i
  %lcn631.i = getelementptr %struct.runlist_element, ptr %rl2.0.i, i32 -1, i32 1
  %298 = ptrtoint ptr %lcn631.i to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %lcn631.i, align 8
  %cmp632.i = icmp sgt i64 %299, -1
  br i1 %cmp632.i, label %if.then634.i, label %while.body630.i.while.cond624.i_crit_edge

while.body630.i.while.cond624.i_crit_edge:        ; preds = %while.body630.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond624.i

if.then634.i:                                     ; preds = %while.body630.i
  call void @__sanitizer_cov_trace_pc() #10
  %length636.i = getelementptr %struct.runlist_element, ptr %rl2.0.i, i32 -1, i32 2
  %300 = ptrtoint ptr %length636.i to i32
  call void @__asan_load8_noabort(i32 %300)
  %301 = load i64, ptr %length636.i, align 8
  %add637.i = add i64 %301, %299
  br label %while.end639.i

while.end639.i:                                   ; preds = %if.then634.i, %while.cond624.i.while.end639.i_crit_edge
  %lcn.5.i = phi i64 [ %add637.i, %if.then634.i ], [ -1, %while.cond624.i.while.end639.i_crit_edge ]
  %call640.i = call ptr @ntfs_cluster_alloc(ptr noundef %68, i64 noundef %shr134.i, i64 noundef 1, i64 noundef %lcn.5.i, i32 noundef 1, i1 noundef zeroext false) #8
  %cmp.i.i = icmp ugt ptr %call640.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then642.i, label %if.end644.i

if.then642.i:                                     ; preds = %while.end639.i
  call void @__sanitizer_cov_trace_pc() #10
  %302 = ptrtoint ptr %call640.i to i32
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 984, ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef nonnull @.str.26, i32 noundef %302) #8
  br label %do.end965.i

if.end644.i:                                      ; preds = %while.end639.i
  %lcn645.i = getelementptr inbounds %struct.runlist_element, ptr %call640.i, i32 0, i32 1
  %303 = ptrtoint ptr %lcn645.i to i32
  call void @__asan_load8_noabort(i32 %303)
  %304 = load i64, ptr %lcn645.i, align 8
  %305 = ptrtoint ptr %runlist396.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %runlist396.i, align 8
  %call648.i = call ptr @ntfs_runlists_merge(ptr noundef %306, ptr noundef %call640.i) #8
  %cmp.i2049.i = icmp ugt ptr %call648.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2049.i, label %if.then650.i, label %if.end661.i

if.then650.i:                                     ; preds = %if.end644.i
  %cmp652.not.i = icmp eq ptr %call648.i, inttoptr (i32 -12 to ptr)
  %spec.store.select.i = select i1 %cmp652.not.i, i32 -12, i32 -5
  %call656.i = call fastcc i32 @ntfs_cluster_free_from_rl(ptr noundef %68, ptr noundef %call640.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call656.i)
  %tobool657.not.i = icmp eq i32 %call656.i, 0
  br i1 %tobool657.not.i, label %if.then650.i.if.end660.i_crit_edge, label %if.then658.i

if.then650.i.if.end660.i_crit_edge:               ; preds = %if.then650.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end660.i

if.then658.i:                                     ; preds = %if.then650.i
  call void @__sanitizer_cov_trace_pc() #10
  %307 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %68, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef %308, ptr noundef nonnull @.str.27) #8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #8
  br label %if.end660.i

if.end660.i:                                      ; preds = %if.then658.i, %if.then650.i.if.end660.i_crit_edge
  call void @kvfree(ptr noundef %call640.i) #8
  br label %do.body1014.i

if.end661.i:                                      ; preds = %if.end644.i
  %309 = ptrtoint ptr %runlist396.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %call648.i, ptr %runlist396.i, align 8
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1006, ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef nonnull @.str.28, i64 noundef %304) #8
  %310 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load volatile i32, ptr %state.i.i, align 4
  %312 = and i32 %311, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %312)
  %tobool665.not.i = icmp eq i32 %312, 0
  br i1 %tobool665.not.i, label %if.end661.i.if.end668.i_crit_edge, label %if.else667.i

if.end661.i.if.end668.i_crit_edge:                ; preds = %if.end661.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end668.i

if.else667.i:                                     ; preds = %if.end661.i
  call void @__sanitizer_cov_trace_pc() #10
  %313 = ptrtoint ptr %ext.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %ext.i, align 8
  br label %if.end668.i

if.end668.i:                                      ; preds = %if.else667.i, %if.end661.i.if.end668.i_crit_edge
  %base_ni.3.i = phi ptr [ %314, %if.else667.i ], [ %add.ptr.i.i, %if.end661.i.if.end668.i_crit_edge ]
  %call669.i = call ptr @map_mft_record(ptr noundef %base_ni.3.i) #8
  %cmp.i2052.i = icmp ugt ptr %call669.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2052.i, label %if.then671.i, label %if.end673.i

if.then671.i:                                     ; preds = %if.end668.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.le2798.i = or i8 %status.sroa.0.1.i, -128
  %315 = ptrtoint ptr %call669.i to i32
  br label %do.end965.i

if.end673.i:                                      ; preds = %if.end668.i
  %call674.i = call ptr @ntfs_attr_get_search_ctx(ptr noundef %base_ni.3.i, ptr noundef %call669.i) #8
  %tobool675.not.i = icmp eq ptr %call674.i, null
  br i1 %tobool675.not.i, label %if.then684.i, label %if.end685.i, !prof !120

if.then684.i:                                     ; preds = %if.end673.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.le.i = or i8 %status.sroa.0.1.i, -128
  call void @unmap_mft_record(ptr noundef %base_ni.3.i) #8
  br label %do.body1014.i

if.end685.i:                                      ; preds = %if.end673.i
  %316 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %type.i, align 4
  %318 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %name.i, align 8
  %320 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %name_len.i, align 4
  %call690.i = call i32 @ntfs_attr_lookup(i32 noundef %317, ptr noundef %319, i32 noundef %321, i32 noundef 0, i64 noundef %shr134.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call674.i) #8
  %322 = zext i32 %call690.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %322, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call690.i, label %do.end965.loopexit.split.loop.exit2772.i [
    i32 0, label %if.end703.i
    i32 -2, label %if.then701.i
  ], !prof !144

if.then701.i:                                     ; preds = %if.end685.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set688.le2795.i = or i8 %status.sroa.0.1.i, -64
  br label %do.body1014.i

if.end703.i:                                      ; preds = %if.end685.i
  %323 = ptrtoint ptr %call674.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %call674.i, align 4
  %attr.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call674.i, i32 0, i32 1
  %325 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %attr.i, align 4
  %data.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %326, i32 0, i32 7
  %327 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %327, i32 8)
  %328 = load i64, ptr %data.i, align 1
  %329 = call i64 @llvm.bswap.i64(i64 %328) #8
  %call705.i = call ptr @ntfs_rl_find_vcn_nolock(ptr noundef %call648.i, i64 noundef %329) #8
  %tobool707.not.i = icmp eq ptr %call705.i, null
  br i1 %tobool707.not.i, label %do.body717.i, label %do.body726.i, !prof !120

do.body717.i:                                     ; preds = %if.end703.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1042, 0\0A.popsection", ""() #8, !srcloc !148
  unreachable

do.body726.i:                                     ; preds = %if.end703.i
  %length727.i = getelementptr inbounds %struct.runlist_element, ptr %call705.i, i32 0, i32 2
  %330 = ptrtoint ptr %length727.i to i32
  call void @__asan_load8_noabort(i32 %330)
  %331 = load i64, ptr %length727.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %331)
  %tobool728.not.i = icmp eq i64 %331, 0
  br i1 %tobool728.not.i, label %do.body738.i, label %do.body747.i, !prof !120

do.body738.i:                                     ; preds = %do.body726.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1043, 0\0A.popsection", ""() #8, !srcloc !149
  unreachable

do.body747.i:                                     ; preds = %do.body726.i
  %lcn748.i = getelementptr inbounds %struct.runlist_element, ptr %call705.i, i32 0, i32 1
  %332 = ptrtoint ptr %lcn748.i to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %lcn748.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %333)
  %cmp749.i = icmp slt i64 %333, -1
  br i1 %cmp749.i, label %do.body758.i, label %do.end766.i, !prof !120

do.body758.i:                                     ; preds = %do.body747.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1044, 0\0A.popsection", ""() #8, !srcloc !150
  unreachable

do.end766.i:                                      ; preds = %do.body747.i
  %highest_vcn768.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %326, i32 0, i32 7, i32 0, i32 1
  %334 = ptrtoint ptr %highest_vcn768.i to i32
  call void @__asan_loadN_noabort(i32 %334, i32 8)
  %335 = load i64, ptr %highest_vcn768.i, align 1
  %336 = call i64 @llvm.bswap.i64(i64 %335) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %335)
  %tobool770.not.i = icmp eq i64 %335, 0
  br i1 %tobool770.not.i, label %if.then771.i, label %do.end766.i.if.end780.i_crit_edge

do.end766.i.if.end780.i_crit_edge:                ; preds = %do.end766.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end780.i

if.then771.i:                                     ; preds = %do.end766.i
  call void @__sanitizer_cov_trace_pc() #10
  %allocated_size773.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %326, i32 0, i32 7, i32 0, i32 5
  %337 = ptrtoint ptr %allocated_size773.i to i32
  call void @__asan_loadN_noabort(i32 %337, i32 8)
  %338 = load i64, ptr %allocated_size773.i, align 1
  %339 = call i64 @llvm.bswap.i64(i64 %338) #8
  %340 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %cluster_size_bits.i, align 8
  %sh_prom777.i = zext i8 %341 to i64
  %shr778.i = ashr i64 %339, %sh_prom777.i
  %sub779.i = add i64 %shr778.i, -1
  br label %if.end780.i

if.end780.i:                                      ; preds = %if.then771.i, %do.end766.i.if.end780.i_crit_edge
  %highest_vcn.3.i = phi i64 [ %336, %do.end766.i.if.end780.i_crit_edge ], [ %sub779.i, %if.then771.i ]
  %call781.i = call i32 @ntfs_get_size_for_mapping_pairs(ptr noundef %68, ptr noundef nonnull %call705.i, i64 noundef %329, i64 noundef %highest_vcn.3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call781.i)
  %cmp782.i = icmp slt i32 %call781.i, 1
  br i1 %cmp782.i, label %if.then790.i, label %if.end794.i, !prof !120

if.then790.i:                                     ; preds = %if.end780.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set688.le2793.i = or i8 %status.sroa.0.1.i, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call781.i)
  %tobool791.not.i = icmp eq i32 %call781.i, 0
  %spec.store.select1388.i = select i1 %tobool791.not.i, i32 -5, i32 %call781.i
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1064, ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef nonnull @.str.29, i32 noundef %spec.store.select1388.i) #8
  br label %do.body1014.i

if.end794.i:                                      ; preds = %if.end780.i
  %length795.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %326, i32 0, i32 1
  %342 = ptrtoint ptr %length795.i to i32
  call void @__asan_loadN_noabort(i32 %342, i32 4)
  %343 = load i32, ptr %length795.i, align 1
  %344 = call i32 @llvm.bswap.i32(i32 %343) #8
  %mapping_pairs_offset.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %326, i32 0, i32 7, i32 0, i32 2
  %345 = ptrtoint ptr %mapping_pairs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %345, i32 2)
  %346 = load i16, ptr %mapping_pairs_offset.i, align 1
  %347 = call i16 @llvm.bswap.i16(i16 %346) #8
  %conv797.i = zext i16 %347 to i32
  %add798.i = add nuw i32 %call781.i, %conv797.i
  %call799.i = call i32 @ntfs_attr_record_resize(ptr noundef %324, ptr noundef %326, i32 noundef %add798.i) #8
  %348 = zext i32 %call799.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %348, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call799.i, label %do.body818.i [
    i32 0, label %if.end828.i
    i32 -28, label %do.end826.i
  ], !prof !151

do.body818.i:                                     ; preds = %if.end794.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1075, 0\0A.popsection", ""() #8, !srcloc !152
  unreachable

do.end826.i:                                      ; preds = %if.end794.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set688.le2791.i = or i8 %status.sroa.0.1.i, -64
  %349 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %68, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef %350, ptr noundef nonnull @.str.30) #8
  br label %do.body1014.i

if.end828.i:                                      ; preds = %if.end794.i
  %351 = ptrtoint ptr %mapping_pairs_offset.i to i32
  call void @__asan_loadN_noabort(i32 %351, i32 2)
  %352 = load i16, ptr %mapping_pairs_offset.i, align 1
  %353 = call i16 @llvm.bswap.i16(i16 %352) #8
  %conv834.i = zext i16 %353 to i32
  %add.ptr835.i = getelementptr i8, ptr %326, i32 %conv834.i
  %call836.i = call i32 @ntfs_mapping_pairs_build(ptr noundef %68, ptr noundef %add.ptr835.i, i32 noundef %call781.i, ptr noundef nonnull %call705.i, i64 noundef %329, i64 noundef %highest_vcn.3.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call836.i)
  %tobool837.not.i = icmp eq i32 %call836.i, 0
  br i1 %tobool837.not.i, label %if.end848.i, label %if.then844.i, !prof !121

if.then844.i:                                     ; preds = %if.end828.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set831.i = or i8 %status.sroa.0.1.i, -32
  %354 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %68, align 8
  %356 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %i_ino.i, align 8
  %358 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %type.i, align 4
  %360 = call i32 @llvm.bswap.i32(i32 %359) #8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef %355, ptr noundef nonnull @.str.31, i32 noundef %357, i32 noundef %360, i32 noundef %call836.i) #8
  br label %do.body1014.i

if.end848.i:                                      ; preds = %if.end828.i
  %361 = ptrtoint ptr %highest_vcn768.i to i32
  call void @__asan_loadN_noabort(i32 %361, i32 8)
  %362 = load i64, ptr %highest_vcn768.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %362)
  %tobool851.not.i = icmp eq i64 %362, 0
  br i1 %tobool851.not.i, label %if.then860.i, label %if.end848.i.if.end864.i_crit_edge, !prof !120

if.end848.i.if.end864.i_crit_edge:                ; preds = %if.end848.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end864.i

if.then860.i:                                     ; preds = %if.end848.i
  call void @__sanitizer_cov_trace_pc() #10
  %363 = call i64 @llvm.bswap.i64(i64 %highest_vcn.3.i) #8
  %364 = ptrtoint ptr %highest_vcn768.i to i32
  call void @__asan_storeN_noabort(i32 %364, i32 8)
  store i64 %363, ptr %highest_vcn768.i, align 1
  br label %if.end864.i

if.end864.i:                                      ; preds = %if.then860.i, %if.end848.i.if.end864.i_crit_edge
  %365 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load volatile i32, ptr %state.i.i, align 4
  %367 = and i32 %366, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %367)
  %tobool866.not.i = icmp eq i32 %367, 0
  br i1 %tobool866.not.i, label %lor.rhs867.i, label %if.end864.i.if.then877.i_crit_edge

if.end864.i.if.then877.i_crit_edge:               ; preds = %if.end864.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then877.i

lor.rhs867.i:                                     ; preds = %if.end864.i
  %368 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load volatile i32, ptr %state.i.i, align 4
  %370 = and i32 %369, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool869.not.i = icmp eq i32 %370, 0
  br i1 %tobool869.not.i, label %lor.rhs867.i.if.end927.i_crit_edge, label %lor.rhs867.i.if.then877.i_crit_edge, !prof !120

lor.rhs867.i.if.then877.i_crit_edge:              ; preds = %lor.rhs867.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then877.i

lor.rhs867.i.if.end927.i_crit_edge:               ; preds = %lor.rhs867.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end927.i

if.then877.i:                                     ; preds = %lor.rhs867.i.if.then877.i_crit_edge, %if.end864.i.if.then877.i_crit_edge
  %371 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %371, i32 8)
  %372 = load i64, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %372)
  %tobool880.not.i = icmp eq i64 %372, 0
  br i1 %tobool880.not.i, label %if.then877.i.do.body901.i_crit_edge, label %if.then881.i

if.then877.i.do.body901.i_crit_edge:              ; preds = %if.then877.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body901.i

if.then881.i:                                     ; preds = %if.then877.i
  %ntfs_ino.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call674.i, i32 0, i32 3
  %373 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %ntfs_ino.i, align 4
  %page.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %374, i32 0, i32 13
  %375 = ptrtoint ptr %page.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %page.i.i, align 8
  call void @flush_dcache_page(ptr noundef %376) #8
  %377 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %ntfs_ino.i, align 4
  call fastcc void @mark_mft_record_dirty(ptr noundef %378) #8
  call void @ntfs_attr_reinit_search_ctx(ptr noundef nonnull %call674.i) #8
  %379 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %type.i, align 4
  %381 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %name.i, align 8
  %383 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %name_len.i, align 4
  %call886.i = call i32 @ntfs_attr_lookup(i32 noundef %380, ptr noundef %382, i32 noundef %384, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call674.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call886.i)
  %tobool887.not.i = icmp eq i32 %call886.i, 0
  br i1 %tobool887.not.i, label %if.end898.i, label %if.then881.i.do.body1014.i_crit_edge, !prof !121

if.then881.i.do.body1014.i_crit_edge:             ; preds = %if.then881.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1014.i

if.end898.i:                                      ; preds = %if.then881.i
  call void @__sanitizer_cov_trace_pc() #10
  %385 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %attr.i, align 4
  br label %do.body901.i

do.body901.i:                                     ; preds = %if.end898.i, %if.then877.i.do.body901.i_crit_edge
  %a.3.i = phi ptr [ %386, %if.end898.i ], [ %326, %if.then877.i.do.body901.i_crit_edge ]
  %call908.i = call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i.i) #8
  %387 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %cluster_size.i, align 8
  %conv912.i = zext i32 %388 to i64
  %389 = ptrtoint ptr %itype.i to i32
  call void @__asan_load8_noabort(i32 %389)
  %390 = load i64, ptr %itype.i, align 8
  %add913.i = add i64 %390, %conv912.i
  store i64 %add913.i, ptr %itype.i, align 8
  %391 = call i64 @llvm.bswap.i64(i64 %add913.i) #8
  %compressed_size.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.3.i, i32 0, i32 7, i32 0, i32 8
  %392 = ptrtoint ptr %compressed_size.i to i32
  call void @__asan_storeN_noabort(i32 %392, i32 8)
  store i64 %391, ptr %compressed_size.i, align 1
  call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call908.i) #8
  br label %if.end927.i

if.end927.i:                                      ; preds = %do.body901.i, %lor.rhs867.i.if.end927.i_crit_edge
  %a.4.i = phi ptr [ %a.3.i, %do.body901.i ], [ %326, %lor.rhs867.i.if.end927.i_crit_edge ]
  %ntfs_ino928.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call674.i, i32 0, i32 3
  %393 = ptrtoint ptr %ntfs_ino928.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %ntfs_ino928.i, align 4
  %page.i2059.i = getelementptr inbounds %struct._ntfs_inode, ptr %394, i32 0, i32 13
  %395 = ptrtoint ptr %page.i2059.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %page.i2059.i, align 8
  call void @flush_dcache_page(ptr noundef %396) #8
  %397 = ptrtoint ptr %ntfs_ino928.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %ntfs_ino928.i, align 4
  call fastcc void @mark_mft_record_dirty(ptr noundef %398) #8
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call674.i) #8
  call void @unmap_mft_record(ptr noundef %base_ni.3.i) #8
  %bf.clear937.i = and i8 %status.sroa.0.1.i, 31
  %399 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %cluster_size_bits.i, align 8
  %conv940.i = zext i8 %400 to i32
  %sub942.i = sub nsw i32 %conv940.i, %conv431.i
  %sh_prom943.i = zext i32 %sub942.i to i64
  %shl944.i = shl i64 %304, %sh_prom943.i
  %add945.i = add i64 %shr134.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add945.i, i64 %shr99.i)
  %cmp946.not.i = icmp slt i64 %add945.i, %shr99.i
  br i1 %cmp946.not.i, label %if.end927.i.do.body197.i_crit_edge, label %if.then954.i, !prof !120

if.end927.i.do.body197.i_crit_edge:               ; preds = %if.end927.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body197.i

if.then954.i:                                     ; preds = %if.end927.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_write(ptr noundef %lock.i) #8
  br label %do.body197.i

do.cond960.i:                                     ; preds = %if.then.i1971.i, %if.then551.i.do.cond960.i_crit_edge, %if.else548.i.do.cond960.i_crit_edge, %if.then.i1966.i, %if.then546.i.do.cond960.i_crit_edge, %if.then543.i.do.cond960.i_crit_edge, %if.then.i1961.i, %if.then388.i.do.cond960.i_crit_edge, %if.else385.i.do.cond960.i_crit_edge, %if.then.i1956.i, %if.then383.i.do.cond960.i_crit_edge, %PageUptodate.exit2046.i.do.cond960.i_crit_edge, %do.end351.i, %land.lhs.true323.i.do.cond960.i_crit_edge, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge, %if.end319.i, %if.then.i1942.i, %if.else302.i.do.cond960.i_crit_edge, %ntfs_submit_bh_for_read.exit2024.i, %land.lhs.true270.i.do.cond960.i_crit_edge, %if.then261.i.do.cond960.i_crit_edge, %if.then.i1938.i, %if.else248.i.do.cond960.i_crit_edge, %if.then247.i, %if.end233.i.do.cond960.i_crit_edge, %if.then.i1928.i, %if.else.i.do.cond960.i_crit_edge, %ntfs_submit_bh_for_read.exit.i, %lor.lhs.false.i.do.cond960.i_crit_edge, %if.then.i1925.i, %PageUptodate.exit.i.do.cond960.i_crit_edge, %if.then139.i.do.cond960.i_crit_edge
  %base_ni.4.ph.i = phi ptr [ %base_ni.1.i, %if.then.i1971.i ], [ %base_ni.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %base_ni.1.i, %if.then.i1966.i ], [ %base_ni.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %base_ni.1.i, %if.then.i1961.i ], [ %base_ni.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %base_ni.1.i, %if.then.i1956.i ], [ %base_ni.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %base_ni.22104.i, %if.then.i1942.i ], [ %base_ni.22104.i, %if.else302.i.do.cond960.i_crit_edge ], [ %base_ni.22104.i, %if.then.i1938.i ], [ %base_ni.22104.i, %if.else248.i.do.cond960.i_crit_edge ], [ %base_ni.1.i, %if.then.i1928.i ], [ %base_ni.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %base_ni.1.i, %if.then.i1925.i ], [ %base_ni.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %base_ni.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %base_ni.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %base_ni.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %base_ni.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %base_ni.22104.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %base_ni.22104.i, %do.end351.i ], [ %base_ni.22104.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %base_ni.22104.i, %if.then261.i.do.cond960.i_crit_edge ], [ %base_ni.22104.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %base_ni.22104.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %base_ni.22104.i, %if.end233.i.do.cond960.i_crit_edge ], [ %base_ni.22104.i, %if.then247.i ], [ %base_ni.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %base_ni.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %base_ni.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %base_ni.22104.i, %if.end319.i ]
  %rl.6.ph.i = phi ptr [ %rl.521282134.i, %if.then.i1971.i ], [ %rl.521282134.i, %if.then551.i.do.cond960.i_crit_edge ], [ %rl.521282134.i, %if.then.i1966.i ], [ %rl.521282134.i, %if.then546.i.do.cond960.i_crit_edge ], [ %rl.1.i, %if.then.i1961.i ], [ %rl.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %rl.1.i, %if.then.i1956.i ], [ %rl.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %rl.22105.i, %if.then.i1942.i ], [ %rl.22105.i, %if.else302.i.do.cond960.i_crit_edge ], [ %rl.22105.i, %if.then.i1938.i ], [ %rl.22105.i, %if.else248.i.do.cond960.i_crit_edge ], [ %rl.1.i, %if.then.i1928.i ], [ %rl.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %rl.1.i, %if.then.i1925.i ], [ %rl.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %rl.521282134.i, %if.then543.i.do.cond960.i_crit_edge ], [ %rl.521282134.i, %if.else548.i.do.cond960.i_crit_edge ], [ %rl.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %rl.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %rl.22105.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %rl.22105.i, %do.end351.i ], [ %rl.22105.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %rl.22105.i, %if.then261.i.do.cond960.i_crit_edge ], [ %rl.22105.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %rl.22105.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %rl.22105.i, %if.end233.i.do.cond960.i_crit_edge ], [ %rl.22105.i, %if.then247.i ], [ %rl.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %rl.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %rl.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %rl.22105.i, %if.end319.i ]
  %wait_bh.4.ph.i = phi ptr [ %wait_bh.1.i, %if.then.i1971.i ], [ %wait_bh.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.then.i1966.i ], [ %wait_bh.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.then.i1961.i ], [ %wait_bh.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.then.i1956.i ], [ %wait_bh.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.then.i1942.i ], [ %wait_bh.1.i, %if.else302.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.then.i1938.i ], [ %wait_bh.1.i, %if.else248.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.then.i1928.i ], [ %wait_bh.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.then.i1925.i ], [ %wait_bh.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %do.end351.i ], [ %wait_bh.1.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.then261.i.do.cond960.i_crit_edge ], [ %incdec.ptr301.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %wait_bh.1.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.end233.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.then247.i ], [ %wait_bh.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %incdec.ptr.i, %ntfs_submit_bh_for_read.exit.i ], [ %wait_bh.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %wait_bh.1.i, %if.end319.i ]
  %ctx.3.ph.i = phi ptr [ %ctx.1.i, %if.then.i1971.i ], [ %ctx.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %ctx.1.i, %if.then.i1966.i ], [ %ctx.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %ctx.1.i, %if.then.i1961.i ], [ %ctx.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %ctx.1.i, %if.then.i1956.i ], [ %ctx.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %ctx.22106.i, %if.then.i1942.i ], [ %ctx.22106.i, %if.else302.i.do.cond960.i_crit_edge ], [ %ctx.22106.i, %if.then.i1938.i ], [ %ctx.22106.i, %if.else248.i.do.cond960.i_crit_edge ], [ %ctx.1.i, %if.then.i1928.i ], [ %ctx.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %ctx.1.i, %if.then.i1925.i ], [ %ctx.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %ctx.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %ctx.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %ctx.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %ctx.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %ctx.22106.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %ctx.22106.i, %do.end351.i ], [ %ctx.22106.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %ctx.22106.i, %if.then261.i.do.cond960.i_crit_edge ], [ %ctx.22106.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %ctx.22106.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %ctx.22106.i, %if.end233.i.do.cond960.i_crit_edge ], [ %ctx.22106.i, %if.then247.i ], [ %ctx.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %ctx.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %ctx.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %ctx.22106.i, %if.end319.i ]
  %m.3.ph.i = phi ptr [ %m.1.i, %if.then.i1971.i ], [ %m.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %m.1.i, %if.then.i1966.i ], [ %m.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %m.1.i, %if.then.i1961.i ], [ %m.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %m.1.i, %if.then.i1956.i ], [ %m.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %m.22107.i, %if.then.i1942.i ], [ %m.22107.i, %if.else302.i.do.cond960.i_crit_edge ], [ %m.22107.i, %if.then.i1938.i ], [ %m.22107.i, %if.else248.i.do.cond960.i_crit_edge ], [ %m.1.i, %if.then.i1928.i ], [ %m.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %m.1.i, %if.then.i1925.i ], [ %m.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %m.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %m.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %m.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %m.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %m.22107.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %m.22107.i, %do.end351.i ], [ %m.22107.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %m.22107.i, %if.then261.i.do.cond960.i_crit_edge ], [ %m.22107.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %m.22107.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %m.22107.i, %if.end233.i.do.cond960.i_crit_edge ], [ %m.22107.i, %if.then247.i ], [ %m.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %m.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %m.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %m.22107.i, %if.end319.i ]
  %a.5.ph.i = phi ptr [ %a.1.i, %if.then.i1971.i ], [ %a.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %a.1.i, %if.then.i1966.i ], [ %a.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %a.1.i, %if.then.i1961.i ], [ %a.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %a.1.i, %if.then.i1956.i ], [ %a.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %a.22108.i, %if.then.i1942.i ], [ %a.22108.i, %if.else302.i.do.cond960.i_crit_edge ], [ %a.22108.i, %if.then.i1938.i ], [ %a.22108.i, %if.else248.i.do.cond960.i_crit_edge ], [ %a.1.i, %if.then.i1928.i ], [ %a.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %a.1.i, %if.then.i1925.i ], [ %a.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %a.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %a.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %a.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %a.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %a.22108.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %a.22108.i, %do.end351.i ], [ %a.22108.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %a.22108.i, %if.then261.i.do.cond960.i_crit_edge ], [ %a.22108.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %a.22108.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %a.22108.i, %if.end233.i.do.cond960.i_crit_edge ], [ %a.22108.i, %if.then247.i ], [ %a.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %a.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %a.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %a.22108.i, %if.end319.i ]
  %attr_rec_len.3.ph.i = phi i32 [ %attr_rec_len.1.i, %if.then.i1971.i ], [ %attr_rec_len.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %attr_rec_len.1.i, %if.then.i1966.i ], [ %attr_rec_len.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %attr_rec_len.1.i, %if.then.i1961.i ], [ %attr_rec_len.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %attr_rec_len.1.i, %if.then.i1956.i ], [ %attr_rec_len.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %attr_rec_len.22109.i, %if.then.i1942.i ], [ %attr_rec_len.22109.i, %if.else302.i.do.cond960.i_crit_edge ], [ %attr_rec_len.22109.i, %if.then.i1938.i ], [ %attr_rec_len.22109.i, %if.else248.i.do.cond960.i_crit_edge ], [ %attr_rec_len.1.i, %if.then.i1928.i ], [ %attr_rec_len.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %attr_rec_len.1.i, %if.then.i1925.i ], [ %attr_rec_len.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %attr_rec_len.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %attr_rec_len.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %attr_rec_len.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %attr_rec_len.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %attr_rec_len.22109.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %attr_rec_len.22109.i, %do.end351.i ], [ %attr_rec_len.22109.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %attr_rec_len.22109.i, %if.then261.i.do.cond960.i_crit_edge ], [ %attr_rec_len.22109.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %attr_rec_len.22109.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %attr_rec_len.22109.i, %if.end233.i.do.cond960.i_crit_edge ], [ %attr_rec_len.22109.i, %if.then247.i ], [ %attr_rec_len.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %attr_rec_len.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %attr_rec_len.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %attr_rec_len.22109.i, %if.end319.i ]
  %rl_write_locked.6.off0.ph.i = phi i1 [ %rl_write_locked.4.off03346.i, %if.then.i1971.i ], [ %rl_write_locked.4.off03346.i, %if.then551.i.do.cond960.i_crit_edge ], [ %rl_write_locked.4.off03346.i, %if.then.i1966.i ], [ %rl_write_locked.4.off03346.i, %if.then546.i.do.cond960.i_crit_edge ], [ %rl_write_locked.1.off0.i, %if.then.i1961.i ], [ %rl_write_locked.1.off0.i, %if.then388.i.do.cond960.i_crit_edge ], [ %rl_write_locked.1.off0.i, %if.then.i1956.i ], [ %rl_write_locked.1.off0.i, %if.then383.i.do.cond960.i_crit_edge ], [ %rl_write_locked.2.off02111.i, %if.then.i1942.i ], [ %rl_write_locked.2.off02111.i, %if.else302.i.do.cond960.i_crit_edge ], [ %rl_write_locked.2.off02111.i, %if.then.i1938.i ], [ %rl_write_locked.2.off02111.i, %if.else248.i.do.cond960.i_crit_edge ], [ %rl_write_locked.1.off0.i, %if.then.i1928.i ], [ %rl_write_locked.1.off0.i, %if.else.i.do.cond960.i_crit_edge ], [ %rl_write_locked.1.off0.i, %if.then.i1925.i ], [ %rl_write_locked.1.off0.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %rl_write_locked.4.off03346.i, %if.then543.i.do.cond960.i_crit_edge ], [ %rl_write_locked.4.off03346.i, %if.else548.i.do.cond960.i_crit_edge ], [ %rl_write_locked.1.off0.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %rl_write_locked.1.off0.i, %if.else385.i.do.cond960.i_crit_edge ], [ %rl_write_locked.2.off02111.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %rl_write_locked.2.off02111.i, %do.end351.i ], [ %rl_write_locked.2.off02111.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %rl_write_locked.2.off02111.i, %if.then261.i.do.cond960.i_crit_edge ], [ %rl_write_locked.2.off02111.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %rl_write_locked.2.off02111.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %rl_write_locked.2.off02111.i, %if.end233.i.do.cond960.i_crit_edge ], [ %rl_write_locked.2.off02111.i, %if.then247.i ], [ %rl_write_locked.1.off0.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %rl_write_locked.1.off0.i, %ntfs_submit_bh_for_read.exit.i ], [ %rl_write_locked.1.off0.i, %if.then139.i.do.cond960.i_crit_edge ], [ %rl_write_locked.2.off02111.i, %if.end319.i ]
  %was_hole.3.off0.ph.i = phi i1 [ %was_hole.1.off0.i, %if.then.i1971.i ], [ %was_hole.1.off0.i, %if.then551.i.do.cond960.i_crit_edge ], [ %was_hole.1.off0.i, %if.then.i1966.i ], [ %was_hole.1.off0.i, %if.then546.i.do.cond960.i_crit_edge ], [ %was_hole.1.off0.i, %if.then.i1961.i ], [ %was_hole.1.off0.i, %if.then388.i.do.cond960.i_crit_edge ], [ %was_hole.1.off0.i, %if.then.i1956.i ], [ %was_hole.1.off0.i, %if.then383.i.do.cond960.i_crit_edge ], [ false, %if.then.i1942.i ], [ false, %if.else302.i.do.cond960.i_crit_edge ], [ true, %if.then.i1938.i ], [ true, %if.else248.i.do.cond960.i_crit_edge ], [ %was_hole.1.off0.i, %if.then.i1928.i ], [ %was_hole.1.off0.i, %if.else.i.do.cond960.i_crit_edge ], [ %was_hole.1.off0.i, %if.then.i1925.i ], [ %was_hole.1.off0.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %was_hole.1.off0.i, %if.then543.i.do.cond960.i_crit_edge ], [ %was_hole.1.off0.i, %if.else548.i.do.cond960.i_crit_edge ], [ %was_hole.1.off0.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %was_hole.1.off0.i, %if.else385.i.do.cond960.i_crit_edge ], [ true, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ true, %do.end351.i ], [ true, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ false, %if.then261.i.do.cond960.i_crit_edge ], [ false, %ntfs_submit_bh_for_read.exit2024.i ], [ false, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ false, %if.end233.i.do.cond960.i_crit_edge ], [ true, %if.then247.i ], [ %was_hole.1.off0.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %was_hole.1.off0.i, %ntfs_submit_bh_for_read.exit.i ], [ %was_hole.1.off0.i, %if.then139.i.do.cond960.i_crit_edge ], [ true, %if.end319.i ]
  %status.sroa.0.3.ph.i = phi i8 [ %status.sroa.0.1.i, %if.then.i1971.i ], [ %status.sroa.0.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %status.sroa.0.1.i, %if.then.i1966.i ], [ %status.sroa.0.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %status.sroa.0.1.i, %if.then.i1961.i ], [ %status.sroa.0.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %status.sroa.0.1.i, %if.then.i1956.i ], [ %status.sroa.0.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %status.sroa.0.22113.i, %if.then.i1942.i ], [ %status.sroa.0.22113.i, %if.else302.i.do.cond960.i_crit_edge ], [ %status.sroa.0.22113.i, %if.then.i1938.i ], [ %status.sroa.0.22113.i, %if.else248.i.do.cond960.i_crit_edge ], [ %status.sroa.0.1.i, %if.then.i1928.i ], [ %status.sroa.0.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %status.sroa.0.1.i, %if.then.i1925.i ], [ %status.sroa.0.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %status.sroa.0.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %status.sroa.0.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %status.sroa.0.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %status.sroa.0.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %status.sroa.0.22113.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %status.sroa.0.22113.i, %do.end351.i ], [ %status.sroa.0.22113.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %status.sroa.0.22113.i, %if.then261.i.do.cond960.i_crit_edge ], [ %status.sroa.0.22113.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %status.sroa.0.22113.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %status.sroa.0.22113.i, %if.end233.i.do.cond960.i_crit_edge ], [ %status.sroa.0.22113.i, %if.then247.i ], [ %status.sroa.0.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %status.sroa.0.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %status.sroa.0.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %status.sroa.0.22113.i, %if.end319.i ]
  %lcn_block.3.ph.i = phi i64 [ %lcn_block.1.i, %if.then.i1971.i ], [ %lcn_block.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %lcn_block.1.i, %if.then.i1966.i ], [ %lcn_block.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %lcn_block.1.i, %if.then.i1961.i ], [ %lcn_block.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %lcn_block.1.i, %if.then.i1956.i ], [ %lcn_block.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %lcn_block.22115.i, %if.then.i1942.i ], [ %lcn_block.22115.i, %if.else302.i.do.cond960.i_crit_edge ], [ %lcn_block.22115.i, %if.then.i1938.i ], [ %lcn_block.22115.i, %if.else248.i.do.cond960.i_crit_edge ], [ %lcn_block.1.i, %if.then.i1928.i ], [ %lcn_block.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %lcn_block.1.i, %if.then.i1925.i ], [ %lcn_block.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %lcn_block.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %lcn_block.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %lcn_block.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %lcn_block.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %lcn_block.22115.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %lcn_block.22115.i, %do.end351.i ], [ %lcn_block.22115.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %lcn_block.22115.i, %if.then261.i.do.cond960.i_crit_edge ], [ %lcn_block.22115.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %lcn_block.22115.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %lcn_block.22115.i, %if.end233.i.do.cond960.i_crit_edge ], [ %lcn_block.22115.i, %if.then247.i ], [ %lcn_block.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %lcn_block.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %lcn_block.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %lcn_block.22115.i, %if.end319.i ]
  %vcn_len.3.ph.i = phi i64 [ %vcn_len.1.i, %if.then.i1971.i ], [ %vcn_len.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %vcn_len.1.i, %if.then.i1966.i ], [ %vcn_len.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %vcn_len.1.i, %if.then.i1961.i ], [ %vcn_len.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %vcn_len.1.i, %if.then.i1956.i ], [ %vcn_len.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %vcn_len.22116.i, %if.then.i1942.i ], [ %vcn_len.22116.i, %if.else302.i.do.cond960.i_crit_edge ], [ %vcn_len.22116.i, %if.then.i1938.i ], [ %vcn_len.22116.i, %if.else248.i.do.cond960.i_crit_edge ], [ %vcn_len.1.i, %if.then.i1928.i ], [ %vcn_len.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %vcn_len.1.i, %if.then.i1925.i ], [ %vcn_len.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %vcn_len.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %vcn_len.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %vcn_len.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %vcn_len.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %vcn_len.22116.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %vcn_len.22116.i, %do.end351.i ], [ %vcn_len.22116.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %vcn_len.22116.i, %if.then261.i.do.cond960.i_crit_edge ], [ %vcn_len.22116.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %vcn_len.22116.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %vcn_len.22116.i, %if.end233.i.do.cond960.i_crit_edge ], [ %vcn_len.22116.i, %if.then247.i ], [ %vcn_len.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %vcn_len.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %vcn_len.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %vcn_len.22116.i, %if.end319.i ]
  %lcn.6.ph.i = phi i64 [ %lcn.4.i, %if.then.i1971.i ], [ %lcn.4.i, %if.then551.i.do.cond960.i_crit_edge ], [ %lcn.4.i, %if.then.i1966.i ], [ %lcn.4.i, %if.then546.i.do.cond960.i_crit_edge ], [ %lcn.1.i, %if.then.i1961.i ], [ %lcn.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %lcn.1.i, %if.then.i1956.i ], [ %lcn.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %lcn.22117.i, %if.then.i1942.i ], [ %lcn.22117.i, %if.else302.i.do.cond960.i_crit_edge ], [ %lcn.22117.i, %if.then.i1938.i ], [ %lcn.22117.i, %if.else248.i.do.cond960.i_crit_edge ], [ %lcn.1.i, %if.then.i1928.i ], [ %lcn.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %lcn.1.i, %if.then.i1925.i ], [ %lcn.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %lcn.4.i, %if.then543.i.do.cond960.i_crit_edge ], [ %lcn.4.i, %if.else548.i.do.cond960.i_crit_edge ], [ %lcn.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %lcn.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %lcn.22117.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %lcn.22117.i, %do.end351.i ], [ %lcn.22117.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %lcn.22117.i, %if.then261.i.do.cond960.i_crit_edge ], [ %lcn.22117.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %lcn.22117.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %lcn.22117.i, %if.end233.i.do.cond960.i_crit_edge ], [ %lcn.22117.i, %if.then247.i ], [ %lcn.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %lcn.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %lcn.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %lcn.22117.i, %if.end319.i ]
  %highest_vcn.4.ph.i = phi i64 [ %highest_vcn.1.i, %if.then.i1971.i ], [ %highest_vcn.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %highest_vcn.1.i, %if.then.i1966.i ], [ %highest_vcn.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %highest_vcn.1.i, %if.then.i1961.i ], [ %highest_vcn.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %highest_vcn.1.i, %if.then.i1956.i ], [ %highest_vcn.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %highest_vcn.22118.i, %if.then.i1942.i ], [ %highest_vcn.22118.i, %if.else302.i.do.cond960.i_crit_edge ], [ %highest_vcn.22118.i, %if.then.i1938.i ], [ %highest_vcn.22118.i, %if.else248.i.do.cond960.i_crit_edge ], [ %highest_vcn.1.i, %if.then.i1928.i ], [ %highest_vcn.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %highest_vcn.1.i, %if.then.i1925.i ], [ %highest_vcn.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %highest_vcn.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %highest_vcn.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %highest_vcn.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %highest_vcn.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %highest_vcn.22118.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %highest_vcn.22118.i, %do.end351.i ], [ %highest_vcn.22118.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %highest_vcn.22118.i, %if.then261.i.do.cond960.i_crit_edge ], [ %highest_vcn.22118.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %highest_vcn.22118.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %highest_vcn.22118.i, %if.end233.i.do.cond960.i_crit_edge ], [ %highest_vcn.22118.i, %if.then247.i ], [ %highest_vcn.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %highest_vcn.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %highest_vcn.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %highest_vcn.22118.i, %if.end319.i ]
  %vcn.3.ph.i = phi i64 [ %vcn.1.i, %if.then.i1971.i ], [ %vcn.1.i, %if.then551.i.do.cond960.i_crit_edge ], [ %vcn.1.i, %if.then.i1966.i ], [ %vcn.1.i, %if.then546.i.do.cond960.i_crit_edge ], [ %vcn.1.i, %if.then.i1961.i ], [ %vcn.1.i, %if.then388.i.do.cond960.i_crit_edge ], [ %vcn.1.i, %if.then.i1956.i ], [ %vcn.1.i, %if.then383.i.do.cond960.i_crit_edge ], [ %vcn.22119.i, %if.then.i1942.i ], [ %vcn.22119.i, %if.else302.i.do.cond960.i_crit_edge ], [ %vcn.22119.i, %if.then.i1938.i ], [ %vcn.22119.i, %if.else248.i.do.cond960.i_crit_edge ], [ %vcn.1.i, %if.then.i1928.i ], [ %vcn.1.i, %if.else.i.do.cond960.i_crit_edge ], [ %vcn.1.i, %if.then.i1925.i ], [ %vcn.1.i, %PageUptodate.exit.i.do.cond960.i_crit_edge ], [ %vcn.1.i, %if.then543.i.do.cond960.i_crit_edge ], [ %vcn.1.i, %if.else548.i.do.cond960.i_crit_edge ], [ %vcn.1.i, %PageUptodate.exit2046.i.do.cond960.i_crit_edge ], [ %vcn.1.i, %if.else385.i.do.cond960.i_crit_edge ], [ %vcn.22119.i, %set_buffer_new.exit1951.i.do.cond960.i_crit_edge ], [ %vcn.22119.i, %do.end351.i ], [ %vcn.22119.i, %land.lhs.true323.i.do.cond960.i_crit_edge ], [ %vcn.22119.i, %if.then261.i.do.cond960.i_crit_edge ], [ %vcn.22119.i, %ntfs_submit_bh_for_read.exit2024.i ], [ %vcn.22119.i, %land.lhs.true270.i.do.cond960.i_crit_edge ], [ %vcn.22119.i, %if.end233.i.do.cond960.i_crit_edge ], [ %vcn.22119.i, %if.then247.i ], [ %vcn.1.i, %lor.lhs.false.i.do.cond960.i_crit_edge ], [ %vcn.1.i, %ntfs_submit_bh_for_read.exit.i ], [ %vcn.1.i, %if.then139.i.do.cond960.i_crit_edge ], [ %vcn.22119.i, %if.end319.i ]
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %401 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %b_this_page.i, align 4
  %cmp963.not.i = icmp eq ptr %402, %109
  br i1 %cmp963.not.i, label %do.cond960.i.do.end965.i_crit_edge, label %do.cond960.i.do.body124.i_crit_edge

do.cond960.i.do.body124.i_crit_edge:              ; preds = %do.cond960.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body124.i

do.cond960.i.do.end965.i_crit_edge:               ; preds = %do.cond960.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end965.i

do.end965.loopexit.split.loop.exit2772.i:         ; preds = %if.end685.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set688.le.i = or i8 %status.sroa.0.1.i, -64
  br label %do.end965.i

do.end965.i:                                      ; preds = %do.end965.loopexit.split.loop.exit2772.i, %do.cond960.i.do.end965.i_crit_edge, %if.then671.i, %if.then642.i, %if.end506.i
  %vcn.32189.i = phi i64 [ %vcn.1.i, %if.then642.i ], [ %vcn.1.i, %if.then671.i ], [ %vcn.1.i, %if.end506.i ], [ %vcn.1.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %vcn.3.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %highest_vcn.42187.i = phi i64 [ %highest_vcn.1.i, %if.then642.i ], [ %highest_vcn.1.i, %if.then671.i ], [ %highest_vcn.1.i, %if.end506.i ], [ %highest_vcn.1.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %highest_vcn.4.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %lcn.62185.i = phi i64 [ %lcn.5.i, %if.then642.i ], [ %304, %if.then671.i ], [ %lcn.321302133.i, %if.end506.i ], [ %304, %do.end965.loopexit.split.loop.exit2772.i ], [ %lcn.6.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %vcn_len.32183.i = phi i64 [ %vcn_len.1.i, %if.then642.i ], [ %vcn_len.1.i, %if.then671.i ], [ %vcn_len.1.i, %if.end506.i ], [ %vcn_len.1.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %vcn_len.3.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %lcn_block.32181.i = phi i64 [ %lcn_block.1.i, %if.then642.i ], [ %lcn_block.1.i, %if.then671.i ], [ %lcn_block.1.i, %if.end506.i ], [ %lcn_block.1.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %lcn_block.3.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %status.sroa.0.32179.i = phi i8 [ %status.sroa.0.1.i, %if.then642.i ], [ %bf.set.le2798.i, %if.then671.i ], [ %status.sroa.0.1.i, %if.end506.i ], [ %bf.set688.le.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %status.sroa.0.3.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %was_hole.3.off02178.i = phi i1 [ %was_hole.1.off0.i, %if.then642.i ], [ %was_hole.1.off0.i, %if.then671.i ], [ %was_hole.1.off0.i, %if.end506.i ], [ %was_hole.1.off0.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %was_hole.3.off0.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %rl_write_locked.6.off02175.i = phi i1 [ true, %if.then642.i ], [ true, %if.then671.i ], [ %rl_write_locked.4.off0.lcssa.i, %if.end506.i ], [ true, %do.end965.loopexit.split.loop.exit2772.i ], [ %rl_write_locked.6.off0.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %err.102173.i = phi i32 [ %302, %if.then642.i ], [ %315, %if.then671.i ], [ %err.5.i, %if.end506.i ], [ %call690.i, %do.end965.loopexit.split.loop.exit2772.i ], [ 0, %do.cond960.i.do.end965.i_crit_edge ]
  %attr_rec_len.32171.i = phi i32 [ %attr_rec_len.1.i, %if.then642.i ], [ %attr_rec_len.1.i, %if.then671.i ], [ %attr_rec_len.1.i, %if.end506.i ], [ %attr_rec_len.1.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %attr_rec_len.3.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %a.52169.i = phi ptr [ %a.1.i, %if.then642.i ], [ %a.1.i, %if.then671.i ], [ %a.1.i, %if.end506.i ], [ %a.1.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %a.5.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %m.32167.i = phi ptr [ %m.1.i, %if.then642.i ], [ %call669.i, %if.then671.i ], [ %m.1.i, %if.end506.i ], [ %call669.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %m.3.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %ctx.32164.i = phi ptr [ %ctx.1.i, %if.then642.i ], [ %ctx.1.i, %if.then671.i ], [ %ctx.1.i, %if.end506.i ], [ %call674.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %ctx.3.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %wait_bh.42162.i = phi ptr [ %wait_bh.1.i, %if.then642.i ], [ %wait_bh.1.i, %if.then671.i ], [ %wait_bh.1.i, %if.end506.i ], [ %wait_bh.1.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %wait_bh.4.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %rl.62160.i = phi ptr [ %rl.521282134.i, %if.then642.i ], [ %call648.i, %if.then671.i ], [ %rl.521282135.i, %if.end506.i ], [ %call648.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %rl.6.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  %base_ni.42158.i = phi ptr [ %base_ni.1.i, %if.then642.i ], [ %base_ni.3.i, %if.then671.i ], [ %base_ni.1.i, %if.end506.i ], [ %base_ni.3.i, %do.end965.loopexit.split.loop.exit2772.i ], [ %base_ni.4.ph.i, %do.cond960.i.do.end965.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.102173.i)
  %tobool966.not.i = icmp eq i32 %err.102173.i, 0
  %inc968.i = add i32 %u.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc968.i, i32 %do_pages.11387)
  %cmp969.i = icmp ult i32 %inc968.i, %do_pages.11387
  %u.2.i = select i1 %tobool966.not.i, i32 %inc968.i, i32 %u.1.i, !prof !121
  %403 = select i1 %tobool966.not.i, i1 %cmp969.i, i1 false, !prof !121
  br i1 %403, label %do.end965.i.do_next_page.i_crit_edge, label %if.end979.i, !prof !121

do.end965.i.do_next_page.i_crit_edge:             ; preds = %do.end965.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_next_page.i

if.end979.i:                                      ; preds = %do.end965.i
  br i1 %tobool966.not.i, label %if.then989.i, label %if.end979.i.do.body1014.i_crit_edge, !prof !121

if.end979.i.do.body1014.i_crit_edge:              ; preds = %if.end979.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1014.i

if.then989.i:                                     ; preds = %if.end979.i
  br i1 %rl_write_locked.6.off02175.i, label %if.then997.i, label %if.else1000.i, !prof !120

if.then997.i:                                     ; preds = %if.then989.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_write(ptr noundef %lock.i) #8
  br label %do.body1014.i

if.else1000.i:                                    ; preds = %if.then989.i
  %tobool1001.not.i = icmp eq ptr %rl.62160.i, null
  br i1 %tobool1001.not.i, label %if.else1000.i.do.body1014.i_crit_edge, label %if.then1008.i, !prof !121

if.else1000.i.do.body1014.i_crit_edge:            ; preds = %if.else1000.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1014.i

if.then1008.i:                                    ; preds = %if.else1000.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef %lock.i) #8
  br label %do.body1014.i

do.body1014.i:                                    ; preds = %if.then1008.i, %if.else1000.i.do.body1014.i_crit_edge, %if.then997.i, %if.end979.i.do.body1014.i_crit_edge, %if.then881.i.do.body1014.i_crit_edge, %if.then844.i, %do.end826.i, %if.then790.i, %if.then701.i, %if.then684.i, %if.end660.i
  %vcn.3218933733414.i = phi i64 [ %vcn.32189.i, %if.end979.i.do.body1014.i_crit_edge ], [ %vcn.32189.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %vcn.32189.i, %if.then1008.i ], [ %vcn.32189.i, %if.then997.i ], [ %vcn.1.i, %if.then701.i ], [ %329, %if.then844.i ], [ %329, %do.end826.i ], [ %329, %if.then790.i ], [ %vcn.1.i, %if.then684.i ], [ %vcn.1.i, %if.end660.i ], [ %329, %if.then881.i.do.body1014.i_crit_edge ]
  %highest_vcn.4218733743412.i = phi i64 [ %highest_vcn.42187.i, %if.end979.i.do.body1014.i_crit_edge ], [ %highest_vcn.42187.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %highest_vcn.42187.i, %if.then1008.i ], [ %highest_vcn.42187.i, %if.then997.i ], [ %highest_vcn.1.i, %if.then701.i ], [ %highest_vcn.3.i, %if.then844.i ], [ %highest_vcn.3.i, %do.end826.i ], [ %highest_vcn.3.i, %if.then790.i ], [ %highest_vcn.1.i, %if.then684.i ], [ %highest_vcn.1.i, %if.end660.i ], [ %highest_vcn.3.i, %if.then881.i.do.body1014.i_crit_edge ]
  %lcn.6218533753410.i = phi i64 [ %lcn.62185.i, %if.end979.i.do.body1014.i_crit_edge ], [ %lcn.62185.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %lcn.62185.i, %if.then1008.i ], [ %lcn.62185.i, %if.then997.i ], [ %304, %if.then701.i ], [ %304, %if.then844.i ], [ %304, %do.end826.i ], [ %304, %if.then790.i ], [ %304, %if.then684.i ], [ %304, %if.end660.i ], [ %304, %if.then881.i.do.body1014.i_crit_edge ]
  %status.sroa.0.3217933763408.i = phi i8 [ %status.sroa.0.32179.i, %if.end979.i.do.body1014.i_crit_edge ], [ %status.sroa.0.32179.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %status.sroa.0.32179.i, %if.then1008.i ], [ %status.sroa.0.32179.i, %if.then997.i ], [ %bf.set688.le2795.i, %if.then701.i ], [ %bf.set831.i, %if.then844.i ], [ %bf.set688.le2791.i, %do.end826.i ], [ %bf.set688.le2793.i, %if.then790.i ], [ %bf.set.le.i, %if.then684.i ], [ %status.sroa.0.1.i, %if.end660.i ], [ -16, %if.then881.i.do.body1014.i_crit_edge ]
  %err.10217333783405.i = phi i32 [ %err.102173.i, %if.end979.i.do.body1014.i_crit_edge ], [ 0, %if.else1000.i.do.body1014.i_crit_edge ], [ 0, %if.then1008.i ], [ 0, %if.then997.i ], [ -5, %if.then701.i ], [ -5, %if.then844.i ], [ -95, %do.end826.i ], [ %spec.store.select1388.i, %if.then790.i ], [ -12, %if.then684.i ], [ %spec.store.select.i, %if.end660.i ], [ %call886.i, %if.then881.i.do.body1014.i_crit_edge ]
  %attr_rec_len.3217133793403.i = phi i32 [ %attr_rec_len.32171.i, %if.end979.i.do.body1014.i_crit_edge ], [ %attr_rec_len.32171.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %attr_rec_len.32171.i, %if.then1008.i ], [ %attr_rec_len.32171.i, %if.then997.i ], [ %attr_rec_len.1.i, %if.then701.i ], [ %344, %if.then844.i ], [ %344, %do.end826.i ], [ %attr_rec_len.1.i, %if.then790.i ], [ %attr_rec_len.1.i, %if.then684.i ], [ %attr_rec_len.1.i, %if.end660.i ], [ %344, %if.then881.i.do.body1014.i_crit_edge ]
  %a.5216933803401.i = phi ptr [ %a.52169.i, %if.end979.i.do.body1014.i_crit_edge ], [ %a.52169.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %a.52169.i, %if.then1008.i ], [ %a.52169.i, %if.then997.i ], [ %a.1.i, %if.then701.i ], [ %326, %if.then844.i ], [ %326, %do.end826.i ], [ %326, %if.then790.i ], [ %a.1.i, %if.then684.i ], [ %a.1.i, %if.end660.i ], [ %326, %if.then881.i.do.body1014.i_crit_edge ]
  %m.3216733813399.i = phi ptr [ %m.32167.i, %if.end979.i.do.body1014.i_crit_edge ], [ %m.32167.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %m.32167.i, %if.then1008.i ], [ %m.32167.i, %if.then997.i ], [ %call669.i, %if.then701.i ], [ %324, %if.then844.i ], [ %324, %do.end826.i ], [ %324, %if.then790.i ], [ %call669.i, %if.then684.i ], [ %m.1.i, %if.end660.i ], [ %324, %if.then881.i.do.body1014.i_crit_edge ]
  %ctx.3216433823397.i = phi ptr [ %ctx.32164.i, %if.end979.i.do.body1014.i_crit_edge ], [ %ctx.32164.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %ctx.32164.i, %if.then1008.i ], [ %ctx.32164.i, %if.then997.i ], [ %call674.i, %if.then701.i ], [ %call674.i, %if.then844.i ], [ %call674.i, %do.end826.i ], [ %call674.i, %if.then790.i ], [ null, %if.then684.i ], [ %ctx.1.i, %if.end660.i ], [ %call674.i, %if.then881.i.do.body1014.i_crit_edge ]
  %wait_bh.4216233853395.i = phi ptr [ %wait_bh.42162.i, %if.end979.i.do.body1014.i_crit_edge ], [ %wait_bh.42162.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %wait_bh.42162.i, %if.then1008.i ], [ %wait_bh.42162.i, %if.then997.i ], [ %wait_bh.1.i, %if.then701.i ], [ %wait_bh.1.i, %if.then844.i ], [ %wait_bh.1.i, %do.end826.i ], [ %wait_bh.1.i, %if.then790.i ], [ %wait_bh.1.i, %if.then684.i ], [ %wait_bh.1.i, %if.end660.i ], [ %wait_bh.1.i, %if.then881.i.do.body1014.i_crit_edge ]
  %base_ni.4215833873392.i = phi ptr [ %base_ni.42158.i, %if.end979.i.do.body1014.i_crit_edge ], [ %base_ni.42158.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %base_ni.42158.i, %if.then1008.i ], [ %base_ni.42158.i, %if.then997.i ], [ %base_ni.3.i, %if.then701.i ], [ %base_ni.3.i, %if.then844.i ], [ %base_ni.3.i, %do.end826.i ], [ %base_ni.3.i, %if.then790.i ], [ %base_ni.3.i, %if.then684.i ], [ %base_ni.1.i, %if.end660.i ], [ %base_ni.3.i, %if.then881.i.do.body1014.i_crit_edge ]
  %u.233893390.i = phi i32 [ %u.1.i, %if.end979.i.do.body1014.i_crit_edge ], [ %inc968.i, %if.else1000.i.do.body1014.i_crit_edge ], [ %inc968.i, %if.then1008.i ], [ %inc968.i, %if.then997.i ], [ %u.1.i, %if.then701.i ], [ %u.1.i, %if.then844.i ], [ %u.1.i, %do.end826.i ], [ %u.1.i, %if.then790.i ], [ %u.1.i, %if.then684.i ], [ %u.1.i, %if.end660.i ], [ %u.1.i, %if.then881.i.do.body1014.i_crit_edge ]
  %rl.7.i = phi ptr [ %rl.62160.i, %if.end979.i.do.body1014.i_crit_edge ], [ null, %if.else1000.i.do.body1014.i_crit_edge ], [ null, %if.then1008.i ], [ null, %if.then997.i ], [ %call648.i, %if.then701.i ], [ %call648.i, %if.then844.i ], [ %call648.i, %do.end826.i ], [ %call648.i, %if.then790.i ], [ %call648.i, %if.then684.i ], [ %call648.i, %if.end660.i ], [ %call648.i, %if.then881.i.do.body1014.i_crit_edge ]
  %rl_write_locked.8.off0.i = phi i1 [ %rl_write_locked.6.off02175.i, %if.end979.i.do.body1014.i_crit_edge ], [ false, %if.else1000.i.do.body1014.i_crit_edge ], [ false, %if.then1008.i ], [ false, %if.then997.i ], [ true, %if.then701.i ], [ true, %if.then844.i ], [ true, %do.end826.i ], [ true, %if.then790.i ], [ true, %if.then684.i ], [ true, %if.end660.i ], [ true, %if.then881.i.do.body1014.i_crit_edge ]
  %call1021.i = call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i) #8
  %404 = ptrtoint ptr %initialized_size165.i to i32
  call void @__asan_load8_noabort(i32 %404)
  %405 = load i64, ptr %initialized_size165.i, align 8
  call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call1021.i) #8
  %cmp10362800.i = icmp ugt ptr %wait_bh.4216233853395.i, %wait.i
  br i1 %cmp10362800.i, label %do.body1014.i.while.body1038.i_crit_edge, label %do.body1014.i.while.end1085.i_crit_edge

do.body1014.i.while.end1085.i_crit_edge:          ; preds = %do.body1014.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end1085.i

do.body1014.i.while.body1038.i_crit_edge:         ; preds = %do.body1014.i
  br label %while.body1038.i

while.body1038.i:                                 ; preds = %if.end1084.i.while.body1038.i_crit_edge, %do.body1014.i.while.body1038.i_crit_edge
  %err.112802.i = phi i32 [ %err.12.i, %if.end1084.i.while.body1038.i_crit_edge ], [ %err.10217333783405.i, %do.body1014.i.while.body1038.i_crit_edge ]
  %wait_bh.52801.i = phi ptr [ %incdec.ptr1039.i, %if.end1084.i.while.body1038.i_crit_edge ], [ %wait_bh.4216233853395.i, %do.body1014.i.while.body1038.i_crit_edge ]
  %incdec.ptr1039.i = getelementptr ptr, ptr %wait_bh.52801.i, i32 -1
  %406 = ptrtoint ptr %incdec.ptr1039.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %incdec.ptr1039.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.40, i32 noundef 354) #8
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load volatile i32, ptr %407, align 4
  %410 = and i32 %409, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %410)
  %tobool.not.i2060.i = icmp eq i32 %410, 0
  br i1 %tobool.not.i2060.i, label %while.body1038.i.wait_on_buffer.exit.i_crit_edge, label %if.then.i2061.i

while.body1038.i.wait_on_buffer.exit.i_crit_edge: ; preds = %while.body1038.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit.i

if.then.i2061.i:                                  ; preds = %while.body1038.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef %407) #8
  br label %wait_on_buffer.exit.i

wait_on_buffer.exit.i:                            ; preds = %if.then.i2061.i, %while.body1038.i.wait_on_buffer.exit.i_crit_edge
  %411 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load volatile i32, ptr %407, align 4
  %and1.i.i1973.i = and i32 %412, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1973.i)
  %tobool1041.not.i = icmp eq i32 %and1.i.i1973.i, 0
  br i1 %tobool1041.not.i, label %wait_on_buffer.exit.i.if.end1084.i_crit_edge, label %if.then1048.i, !prof !120

wait_on_buffer.exit.i.if.end1084.i_crit_edge:     ; preds = %wait_on_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1084.i

if.then1048.i:                                    ; preds = %wait_on_buffer.exit.i
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %407, i32 0, i32 2
  %413 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %b_page.i, align 8
  %index1049.i = getelementptr inbounds %struct.page, ptr %414, i32 0, i32 1, i32 0, i32 2
  %415 = ptrtoint ptr %index1049.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %index1049.i, align 4
  %conv1050.i = zext i32 %416 to i64
  %shl1051.i = shl nuw nsw i64 %conv1050.i, 12
  %b_data1052.i = getelementptr inbounds %struct.buffer_head, ptr %407, i32 0, i32 5
  %417 = ptrtoint ptr %b_data1052.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %b_data1052.i, align 4
  %419 = ptrtoint ptr %418 to i32
  %and1053.i = and i32 %419, 4095
  %conv1054.i = zext i32 %and1053.i to i64
  %add1055.i = or i64 %shl1051.i, %conv1054.i
  %add1057.i = add nuw nsw i64 %add1055.i, %conv129.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add1057.i, i64 %405)
  %cmp1058.i = icmp sgt i64 %add1057.i, %405
  br i1 %cmp1058.i, label %if.then1066.i, label %if.then1048.i.if.end1084.i_crit_edge, !prof !120

if.then1048.i.if.end1084.i_crit_edge:             ; preds = %if.then1048.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1084.i

if.then1066.i:                                    ; preds = %if.then1048.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %405, i64 %add1055.i)
  %cmp1067.i = icmp sgt i64 %405, %add1055.i
  %sub1076.i = sub i64 %405, %add1055.i
  %conv1077.i = trunc i64 %sub1076.i to i32
  %ofs.0.i = select i1 %cmp1067.i, i32 %conv1077.i, i32 0, !prof !121
  %add1081.i = add i32 %ofs.0.i, %and1053.i
  call void @zero_user_segments(ptr noundef %414, i32 noundef %add1081.i, i32 noundef %78, i32 noundef 0, i32 noundef 0) #8
  br label %if.end1084.i

if.end1084.i:                                     ; preds = %if.then1066.i, %if.then1048.i.if.end1084.i_crit_edge, %wait_on_buffer.exit.i.if.end1084.i_crit_edge
  %err.12.i = phi i32 [ %err.112802.i, %if.then1066.i ], [ %err.112802.i, %if.then1048.i.if.end1084.i_crit_edge ], [ -5, %wait_on_buffer.exit.i.if.end1084.i_crit_edge ]
  %cmp1036.i = icmp ugt ptr %incdec.ptr1039.i, %wait.i
  br i1 %cmp1036.i, label %if.end1084.i.while.body1038.i_crit_edge, label %if.end1084.i.while.end1085.i_crit_edge

if.end1084.i.while.end1085.i_crit_edge:           ; preds = %if.end1084.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end1085.i

if.end1084.i.while.body1038.i_crit_edge:          ; preds = %if.end1084.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body1038.i

while.end1085.i:                                  ; preds = %if.end1084.i.while.end1085.i_crit_edge, %do.body1014.i.while.end1085.i_crit_edge
  %err.11.lcssa.i = phi i32 [ %err.10217333783405.i, %do.body1014.i.while.end1085.i_crit_edge ], [ %err.12.i, %if.end1084.i.while.end1085.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.11.lcssa.i)
  %tobool1086.not.i = icmp eq i32 %err.11.lcssa.i, 0
  br i1 %tobool1086.not.i, label %do.body1096.preheader.i, label %if.end1137.i, !prof !121

do.body1096.preheader.i:                          ; preds = %while.end1085.i
  %umax.i = call i32 @llvm.umax.i32(i32 %do_pages.11387, i32 1) #8
  br label %do.body1096.i

do.body1096.i:                                    ; preds = %do.cond1132.i.do.body1096.i_crit_edge, %do.body1096.preheader.i
  %u.3.i = phi i32 [ %inc1133.i, %do.cond1132.i.do.body1096.i_crit_edge ], [ 0, %do.body1096.preheader.i ]
  %arrayidx1098.i = getelementptr ptr, ptr %pages, i32 %u.3.i
  %420 = ptrtoint ptr %arrayidx1098.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx1098.i, align 4
  %422 = ptrtoint ptr %421 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load volatile i32, ptr %421, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %423)
  %cmp.i.not.i1974.i = icmp eq i32 %423, -1
  br i1 %cmp.i.not.i1974.i, label %if.then.i1975.i, label %PagePrivate.exit1978.i, !prof !120

if.then.i1975.i:                                  ; preds = %do.body1096.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %421, ptr noundef nonnull @.str.37) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !131
  unreachable

PagePrivate.exit1978.i:                           ; preds = %do.body1096.i
  %424 = ptrtoint ptr %421 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load volatile i32, ptr %421, align 4
  %426 = and i32 %425, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %426)
  %tobool1100.not.i = icmp eq i32 %426, 0
  br i1 %tobool1100.not.i, label %do.body1110.i, label %do.end1118.i, !prof !120

do.body1110.i:                                    ; preds = %PagePrivate.exit1978.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1215, 0\0A.popsection", ""() #8, !srcloc !153
  unreachable

do.end1118.i:                                     ; preds = %PagePrivate.exit1978.i
  %private1121.i = getelementptr inbounds %struct.page, ptr %421, i32 0, i32 1, i32 0, i32 3
  %427 = ptrtoint ptr %private1121.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load i32, ptr %private1121.i, align 4
  %429 = inttoptr i32 %428 to ptr
  br label %do.body1122.i

do.body1122.i:                                    ; preds = %do.cond1127.i.do.body1122.i_crit_edge, %do.end1118.i
  %bh.1.i = phi ptr [ %429, %do.end1118.i ], [ %434, %do.cond1127.i.do.body1122.i_crit_edge ]
  %430 = ptrtoint ptr %bh.1.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load volatile i32, ptr %bh.1.i, align 4
  %432 = and i32 %431, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %432)
  %tobool1124.not.i = icmp eq i32 %432, 0
  br i1 %tobool1124.not.i, label %do.body1122.i.do.cond1127.i_crit_edge, label %if.then1125.i

do.body1122.i.do.cond1127.i_crit_edge:            ; preds = %do.body1122.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond1127.i

if.then1125.i:                                    ; preds = %do.body1122.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 5, ptr noundef %bh.1.i) #8
  br label %do.cond1127.i

do.cond1127.i:                                    ; preds = %if.then1125.i, %do.body1122.i.do.cond1127.i_crit_edge
  %b_this_page1128.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 1
  %433 = ptrtoint ptr %b_this_page1128.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %b_this_page1128.i, align 4
  %cmp1129.not.i = icmp eq ptr %434, %429
  br i1 %cmp1129.not.i, label %do.cond1132.i, label %do.cond1127.i.do.body1122.i_crit_edge

do.cond1127.i.do.body1122.i_crit_edge:            ; preds = %do.cond1127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1122.i

do.cond1132.i:                                    ; preds = %do.cond1127.i
  %inc1133.i = add nuw nsw i32 %u.3.i, 1
  %exitcond3340.not.i = icmp eq i32 %inc1133.i, %umax.i
  br i1 %exitcond3340.not.i, label %ntfs_prepare_pages_for_non_resident_write.exit.thread, label %do.cond1132.i.do.body1096.i_crit_edge

do.cond1132.i.do.body1096.i_crit_edge:            ; preds = %do.cond1132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1096.i

ntfs_prepare_pages_for_non_resident_write.exit.thread: ; preds = %do.cond1132.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1221, ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef nonnull @.str.32) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wait.i) #8
  br label %if.end116

if.end1137.i:                                     ; preds = %while.end1085.i
  %435 = and i8 %status.sroa.0.3217933763408.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %435)
  %tobool1140.not.i = icmp eq i8 %435, 0
  br i1 %tobool1140.not.i, label %if.end1137.i.if.end1182.i_crit_edge, label %if.then1141.i

if.end1137.i.if.end1182.i_crit_edge:              ; preds = %if.end1137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1182.i

if.then1141.i:                                    ; preds = %if.end1137.i
  call void @ntfs_attr_reinit_search_ctx(ptr noundef %ctx.3216433823397.i) #8
  %436 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %type.i, align 4
  %438 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %name.i, align 8
  %440 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %name_len.i, align 4
  %call1145.i = call i32 @ntfs_attr_lookup(i32 noundef %437, ptr noundef %439, i32 noundef %441, i32 noundef 0, i64 noundef %shr134.i, ptr noundef null, i32 noundef 0, ptr noundef %ctx.3216433823397.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1145.i)
  %tobool1146.not.i = icmp eq i32 %call1145.i, 0
  br i1 %tobool1146.not.i, label %if.else1175.i, label %if.then1147.i

if.then1147.i:                                    ; preds = %if.then1141.i
  call void @__sanitizer_cov_trace_pc() #10
  %442 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %68, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef %443, ptr noundef nonnull @.str.33) #8
  %call1156.i = call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i.i) #8
  %444 = ptrtoint ptr %cluster_size.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %cluster_size.i, align 8
  %conv1160.i = zext i32 %445 to i64
  %446 = ptrtoint ptr %itype.i to i32
  call void @__asan_load8_noabort(i32 %446)
  %447 = load i64, ptr %itype.i, align 8
  %add1163.i = add i64 %447, %conv1160.i
  store i64 %add1163.i, ptr %itype.i, align 8
  call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call1156.i) #8
  %ntfs_ino1173.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.3216433823397.i, i32 0, i32 3
  %448 = ptrtoint ptr %ntfs_ino1173.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %ntfs_ino1173.i, align 4
  %page.i2062.i = getelementptr inbounds %struct._ntfs_inode, ptr %449, i32 0, i32 13
  %450 = ptrtoint ptr %page.i2062.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %page.i2062.i, align 8
  call void @flush_dcache_page(ptr noundef %451) #8
  %452 = ptrtoint ptr %ntfs_ino1173.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %ntfs_ino1173.i, align 4
  call fastcc void @mark_mft_record_dirty(ptr noundef %453) #8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #8
  br label %if.end1182.i

if.else1175.i:                                    ; preds = %if.then1141.i
  call void @__sanitizer_cov_trace_pc() #10
  %454 = ptrtoint ptr %ctx.3216433823397.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %ctx.3216433823397.i, align 4
  %attr1177.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.3216433823397.i, i32 0, i32 1
  %456 = ptrtoint ptr %attr1177.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %attr1177.i, align 4
  %bf.clear1179.i = and i8 %status.sroa.0.3217933763408.i, -17
  br label %if.end1182.i

if.end1182.i:                                     ; preds = %if.else1175.i, %if.then1147.i, %if.end1137.i.if.end1182.i_crit_edge
  %m.4.i = phi ptr [ %m.3216733813399.i, %if.then1147.i ], [ %455, %if.else1175.i ], [ %m.3216733813399.i, %if.end1137.i.if.end1182.i_crit_edge ]
  %a.6.i = phi ptr [ %a.5216933803401.i, %if.then1147.i ], [ %457, %if.else1175.i ], [ %a.5216933803401.i, %if.end1137.i.if.end1182.i_crit_edge ]
  %status.sroa.0.4.i = phi i8 [ %status.sroa.0.3217933763408.i, %if.then1147.i ], [ %bf.clear1179.i, %if.else1175.i ], [ %status.sroa.0.3217933763408.i, %if.end1137.i.if.end1182.i_crit_edge ]
  %458 = and i8 %status.sroa.0.4.i, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %458)
  %459 = icmp eq i8 %458, -128
  br i1 %459, label %do.body1193.i, label %if.end1182.i.if.end1229.i_crit_edge

if.end1182.i.if.end1229.i_crit_edge:              ; preds = %if.end1182.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1229.i

do.body1193.i:                                    ; preds = %if.end1182.i
  br i1 %rl_write_locked.8.off0.i, label %do.end1212.i, label %do.body1204.i, !prof !121

do.body1204.i:                                    ; preds = %do.body1193.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1258, 0\0A.popsection", ""() #8, !srcloc !154
  unreachable

do.end1212.i:                                     ; preds = %do.body1193.i
  %call1214.i = call i32 @ntfs_rl_punch_nolock(ptr noundef %68, ptr noundef %runlist396.i, i64 noundef %shr134.i, i64 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1214.i)
  %tobool1215.not.i = icmp eq i32 %call1214.i, 0
  br i1 %tobool1215.not.i, label %if.else1218.i, label %if.end1229.thread.i

if.end1229.thread.i:                              ; preds = %do.end1212.i
  call void @__sanitizer_cov_trace_pc() #10
  %460 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %68, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef %461, ptr noundef nonnull @.str.34) #8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #8
  br label %if.end1263.i

if.else1218.i:                                    ; preds = %do.end1212.i
  %bf.clear1220.i = and i8 %status.sroa.0.4.i, 127
  %lcnbmp_lock.i = getelementptr inbounds %struct.ntfs_volume, ptr %68, i32 0, i32 41
  call void @down_write(ptr noundef %lcnbmp_lock.i) #8
  %lcnbmp_ino.i = getelementptr inbounds %struct.ntfs_volume, ptr %68, i32 0, i32 40
  %462 = ptrtoint ptr %lcnbmp_ino.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %lcnbmp_ino.i, align 4
  %call.i.i.i.i = call i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef %463, i64 noundef %lcn.6218533753410.i, i64 noundef 1, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1223.not.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1223.not.i, label %if.else1218.i.if.end1226.i_crit_edge, label %if.then1224.i

if.else1218.i.if.end1226.i_crit_edge:             ; preds = %if.else1218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1226.i

if.then1224.i:                                    ; preds = %if.else1218.i
  call void @__sanitizer_cov_trace_pc() #10
  %464 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %68, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef %465, ptr noundef nonnull @.str.27) #8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #8
  br label %if.end1226.i

if.end1226.i:                                     ; preds = %if.then1224.i, %if.else1218.i.if.end1226.i_crit_edge
  call void @up_write(ptr noundef %lcnbmp_lock.i) #8
  br label %if.end1229.i

if.end1229.i:                                     ; preds = %if.end1226.i, %if.end1182.i.if.end1229.i_crit_edge
  %status.sroa.0.5.i = phi i8 [ %bf.clear1220.i, %if.end1226.i ], [ %status.sroa.0.4.i, %if.end1182.i.if.end1229.i_crit_edge ]
  %466 = and i8 %status.sroa.0.5.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %466)
  %467 = icmp eq i8 %466, 32
  br i1 %467, label %if.then1239.i, label %if.end1229.i.if.end1263.i_crit_edge

if.end1229.i.if.end1263.i_crit_edge:              ; preds = %if.end1229.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1263.i

if.then1239.i:                                    ; preds = %if.end1229.i
  %call1240.i = call i32 @ntfs_attr_record_resize(ptr noundef %m.4.i, ptr noundef %a.6.i, i32 noundef %attr_rec_len.3217133793403.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1240.i)
  %tobool1241.not.i = icmp eq i32 %call1240.i, 0
  br i1 %tobool1241.not.i, label %if.else1244.i, label %if.then1242.i

if.then1242.i:                                    ; preds = %if.then1239.i
  call void @__sanitizer_cov_trace_pc() #10
  %468 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %68, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef %469, ptr noundef nonnull @.str.35) #8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #8
  br label %if.end1263.i

if.else1244.i:                                    ; preds = %if.then1239.i
  %mapping_pairs_offset1246.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %a.6.i, i32 0, i32 7, i32 0, i32 2
  %470 = ptrtoint ptr %mapping_pairs_offset1246.i to i32
  call void @__asan_loadN_noabort(i32 %470, i32 2)
  %471 = load i16, ptr %mapping_pairs_offset1246.i, align 1
  %472 = call i16 @llvm.bswap.i16(i16 %471) #8
  %conv1247.i = zext i16 %472 to i32
  %add.ptr1248.i = getelementptr i8, ptr %a.6.i, i32 %conv1247.i
  %sub1252.i = sub i32 %attr_rec_len.3217133793403.i, %conv1247.i
  %473 = ptrtoint ptr %runlist396.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %runlist396.i, align 8
  %call1255.i = call i32 @ntfs_mapping_pairs_build(ptr noundef %68, ptr noundef %add.ptr1248.i, i32 noundef %sub1252.i, ptr noundef %474, i64 noundef %vcn.3218933733414.i, i64 noundef %highest_vcn.4218733743412.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1255.i)
  %tobool1256.not.i = icmp eq i32 %call1255.i, 0
  br i1 %tobool1256.not.i, label %if.else1244.i.if.end1259.i_crit_edge, label %if.then1257.i

if.else1244.i.if.end1259.i_crit_edge:             ; preds = %if.else1244.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1259.i

if.then1257.i:                                    ; preds = %if.else1244.i
  call void @__sanitizer_cov_trace_pc() #10
  %475 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %68, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef %476, ptr noundef nonnull @.str.36) #8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #8
  br label %if.end1259.i

if.end1259.i:                                     ; preds = %if.then1257.i, %if.else1244.i.if.end1259.i_crit_edge
  %ntfs_ino1260.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.3216433823397.i, i32 0, i32 3
  %477 = ptrtoint ptr %ntfs_ino1260.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %ntfs_ino1260.i, align 4
  %page.i2068.i = getelementptr inbounds %struct._ntfs_inode, ptr %478, i32 0, i32 13
  %479 = ptrtoint ptr %page.i2068.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %page.i2068.i, align 8
  call void @flush_dcache_page(ptr noundef %480) #8
  %481 = ptrtoint ptr %ntfs_ino1260.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %ntfs_ino1260.i, align 4
  call fastcc void @mark_mft_record_dirty(ptr noundef %482) #8
  br label %if.end1263.i

if.end1263.i:                                     ; preds = %if.end1259.i, %if.then1242.i, %if.end1229.i.if.end1263.i_crit_edge, %if.end1229.thread.i
  %status.sroa.0.52195.i = phi i8 [ %status.sroa.0.4.i, %if.end1229.thread.i ], [ %status.sroa.0.5.i, %if.then1242.i ], [ %status.sroa.0.5.i, %if.end1259.i ], [ %status.sroa.0.5.i, %if.end1229.i.if.end1263.i_crit_edge ]
  %483 = and i8 %status.sroa.0.52195.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %483)
  %tobool1267.not.i = icmp eq i8 %483, 0
  br i1 %tobool1267.not.i, label %if.end1263.i.if.end1269.i_crit_edge, label %if.then1268.i

if.end1263.i.if.end1269.i_crit_edge:              ; preds = %if.end1263.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1269.i

if.then1268.i:                                    ; preds = %if.end1263.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ntfs_attr_put_search_ctx(ptr noundef %ctx.3216433823397.i) #8
  call void @unmap_mft_record(ptr noundef %base_ni.4215833873392.i) #8
  br label %if.end1269.i

if.end1269.i:                                     ; preds = %if.then1268.i, %if.end1263.i.if.end1269.i_crit_edge
  br i1 %rl_write_locked.8.off0.i, label %if.then1271.i, label %if.else1274.i

if.then1271.i:                                    ; preds = %if.end1269.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_write(ptr noundef %lock.i) #8
  br label %if.end1280.i

if.else1274.i:                                    ; preds = %if.end1269.i
  %tobool1275.not.i = icmp eq ptr %rl.7.i, null
  br i1 %tobool1275.not.i, label %if.else1274.i.if.end1280.i_crit_edge, label %if.then1276.i

if.else1274.i.if.end1280.i_crit_edge:             ; preds = %if.else1274.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1280.i

if.then1276.i:                                    ; preds = %if.else1274.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef %lock.i) #8
  br label %if.end1280.i

if.end1280.i:                                     ; preds = %if.then1276.i, %if.else1274.i.if.end1280.i_crit_edge, %if.then1271.i
  %484 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %cluster_size_bits.i, align 8
  %sh_prom1283.i = zext i8 %485 to i64
  %shl1284.i = shl i64 %shr134.i, %sh_prom1283.i
  br label %do.body1285.i

do.body1285.i:                                    ; preds = %do.cond1345.i.do.body1285.i_crit_edge, %if.end1280.i
  %u.4.i = phi i32 [ 0, %if.end1280.i ], [ %inc1346.i, %do.cond1345.i.do.body1285.i_crit_edge ]
  %arrayidx1286.i = getelementptr ptr, ptr %pages, i32 %u.4.i
  %486 = ptrtoint ptr %arrayidx1286.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %arrayidx1286.i, align 4
  %488 = ptrtoint ptr %487 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load volatile i32, ptr %487, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %489)
  %cmp.i.not.i1981.i = icmp eq i32 %489, -1
  br i1 %cmp.i.not.i1981.i, label %if.then.i1982.i, label %PagePrivate.exit1985.i, !prof !120

if.then.i1982.i:                                  ; preds = %do.body1285.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %487, ptr noundef nonnull @.str.37) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !131
  unreachable

PagePrivate.exit1985.i:                           ; preds = %do.body1285.i
  %490 = ptrtoint ptr %487 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load volatile i32, ptr %487, align 4
  %492 = and i32 %491, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %492)
  %tobool1289.not.i = icmp eq i32 %492, 0
  br i1 %tobool1289.not.i, label %do.body1299.i, label %do.end1307.i, !prof !120

do.body1299.i:                                    ; preds = %PagePrivate.exit1985.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1333, 0\0A.popsection", ""() #8, !srcloc !155
  unreachable

do.end1307.i:                                     ; preds = %PagePrivate.exit1985.i
  %private1309.i = getelementptr inbounds %struct.page, ptr %487, i32 0, i32 1, i32 0, i32 3
  %493 = ptrtoint ptr %private1309.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %private1309.i, align 4
  %495 = inttoptr i32 %494 to ptr
  call void @__sanitizer_cov_trace_cmp4(i32 %u.4.i, i32 %u.233893390.i)
  %cmp1311.i = icmp eq i32 %u.4.i, %u.233893390.i
  %index1314.i = getelementptr inbounds %struct.page, ptr %487, i32 0, i32 1, i32 0, i32 2
  %496 = getelementptr inbounds %struct.page, ptr %487, i32 0, i32 1
  %497 = ptrtoint ptr %487 to i32
  br label %do.body1310.i

do.body1310.i:                                    ; preds = %do.cond1340.i.do.body1310.i_crit_edge, %do.end1307.i
  %bh.2.i = phi ptr [ %495, %do.end1307.i ], [ %526, %do.cond1340.i.do.body1310.i_crit_edge ]
  br i1 %cmp1311.i, label %land.lhs.true1313.i, label %do.body1310.i.if.end1324.i_crit_edge

do.body1310.i.if.end1324.i_crit_edge:             ; preds = %do.body1310.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1324.i

land.lhs.true1313.i:                              ; preds = %do.body1310.i
  %498 = ptrtoint ptr %index1314.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %index1314.i, align 4
  %conv1315.i = zext i32 %499 to i64
  %shl1316.i = shl nuw nsw i64 %conv1315.i, 12
  %b_data1317.i = getelementptr inbounds %struct.buffer_head, ptr %bh.2.i, i32 0, i32 5
  %500 = ptrtoint ptr %b_data1317.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %b_data1317.i, align 4
  %502 = ptrtoint ptr %501 to i32
  %and1318.i = and i32 %502, 4095
  %conv1319.i = zext i32 %and1318.i to i64
  %add1320.i = or i64 %shl1316.i, %conv1319.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add1320.i, i64 %shl1284.i)
  %cmp1321.not.i = icmp slt i64 %add1320.i, %shl1284.i
  br i1 %cmp1321.not.i, label %land.lhs.true1313.i.if.end1324.i_crit_edge, label %land.lhs.true1313.i.do.cond1345.i_crit_edge

land.lhs.true1313.i.do.cond1345.i_crit_edge:      ; preds = %land.lhs.true1313.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond1345.i

land.lhs.true1313.i.if.end1324.i_crit_edge:       ; preds = %land.lhs.true1313.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1324.i

if.end1324.i:                                     ; preds = %land.lhs.true1313.i.if.end1324.i_crit_edge, %do.body1310.i.if.end1324.i_crit_edge
  %503 = ptrtoint ptr %bh.2.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load volatile i32, ptr %bh.2.i, align 4
  %505 = and i32 %504, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %505)
  %tobool1326.not.i = icmp eq i32 %505, 0
  br i1 %tobool1326.not.i, label %if.end1324.i.do.cond1340.i_crit_edge, label %if.end1328.i

if.end1324.i.do.cond1340.i_crit_edge:             ; preds = %if.end1324.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond1340.i

if.end1328.i:                                     ; preds = %if.end1324.i
  call void @_clear_bit(i32 noundef 5, ptr noundef %bh.2.i) #8
  %506 = ptrtoint ptr %bh.2.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load volatile i32, ptr %bh.2.i, align 4
  %and1.i.i1988.i = and i32 %507, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1988.i)
  %tobool1330.not.i = icmp eq i32 %and1.i.i1988.i, 0
  br i1 %tobool1330.not.i, label %if.then1331.i, label %if.end1328.i.if.end1339.i_crit_edge

if.end1328.i.if.end1339.i_crit_edge:              ; preds = %if.end1328.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1339.i

if.then1331.i:                                    ; preds = %if.end1328.i
  %508 = ptrtoint ptr %496 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load volatile i32, ptr %496, align 4
  %and.i.i2069.i = and i32 %509, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2069.i)
  %tobool.not.i.i2070.i = icmp eq i32 %and.i.i2069.i, 0
  br i1 %tobool.not.i.i2070.i, label %if.then1331.i._compound_head.exit.i2077.i_crit_edge, label %if.then.i.i2072.i, !prof !121

if.then1331.i._compound_head.exit.i2077.i_crit_edge: ; preds = %if.then1331.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i2077.i

if.then.i.i2072.i:                                ; preds = %if.then1331.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i2071.i = add i32 %509, -1
  br label %_compound_head.exit.i2077.i

_compound_head.exit.i2077.i:                      ; preds = %if.then.i.i2072.i, %if.then1331.i._compound_head.exit.i2077.i_crit_edge
  %retval.0.i.i2074.i = phi i32 [ %sub.i.i2071.i, %if.then.i.i2072.i ], [ %497, %if.then1331.i._compound_head.exit.i2077.i_crit_edge ]
  %510 = inttoptr i32 %retval.0.i.i2074.i to ptr
  %511 = getelementptr inbounds %struct.page, ptr %510, i32 0, i32 1
  %512 = ptrtoint ptr %511 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load volatile i32, ptr %511, align 4
  %and.i.i.i.i2075.i = and i32 %513, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i2075.i)
  %tobool.not.i.i.i2076.i = icmp eq i32 %and.i.i.i.i2075.i, 0
  br i1 %tobool.not.i.i.i2076.i, label %folio_flags.exit.i.i2080.i, label %if.then.i.i.i2078.i, !prof !121

if.then.i.i.i2078.i:                              ; preds = %_compound_head.exit.i2077.i
  call void @__sanitizer_cov_trace_pc() #10
  %514 = inttoptr i32 %retval.0.i.i2074.i to ptr
  call void @dump_page(ptr noundef %514, ptr noundef nonnull @.str.38) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

folio_flags.exit.i.i2080.i:                       ; preds = %_compound_head.exit.i2077.i
  %515 = ptrtoint ptr %510 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load volatile i32, ptr %510, align 4
  %517 = and i32 %516, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %517)
  %tobool.i.not.i2079.i = icmp eq i32 %517, 0
  br i1 %tobool.i.not.i2079.i, label %if.else1335.i, label %PageUptodate.exit2083.i

PageUptodate.exit2083.i:                          ; preds = %folio_flags.exit.i.i2080.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %518 = ptrtoint ptr %bh.2.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load volatile i32, ptr %bh.2.i, align 4
  %and1.i.i1989.i = and i32 %519, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1989.i)
  %tobool.not.i1990.i = icmp eq i32 %and1.i.i1989.i, 0
  br i1 %tobool.not.i1990.i, label %PageUptodate.exit2083.i.if.end1339.sink.split.i_crit_edge, label %PageUptodate.exit2083.i.if.end1339.i_crit_edge

PageUptodate.exit2083.i.if.end1339.i_crit_edge:   ; preds = %PageUptodate.exit2083.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1339.i

PageUptodate.exit2083.i.if.end1339.sink.split.i_crit_edge: ; preds = %PageUptodate.exit2083.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1339.sink.split.i

if.else1335.i:                                    ; preds = %folio_flags.exit.i.i2080.i
  %b_data1336.i = getelementptr inbounds %struct.buffer_head, ptr %bh.2.i, i32 0, i32 5
  %520 = ptrtoint ptr %b_data1336.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %b_data1336.i, align 4
  %522 = ptrtoint ptr %521 to i32
  %and1337.i = and i32 %522, 4095
  %add.i2084.i = add i32 %and1337.i, %78
  call void @zero_user_segments(ptr noundef %487, i32 noundef %and1337.i, i32 noundef %add.i2084.i, i32 noundef 0, i32 noundef 0) #8
  %523 = ptrtoint ptr %bh.2.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load volatile i32, ptr %bh.2.i, align 4
  %and1.i.i1993.i = and i32 %524, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1993.i)
  %tobool.not.i1994.i = icmp eq i32 %and1.i.i1993.i, 0
  br i1 %tobool.not.i1994.i, label %if.else1335.i.if.end1339.sink.split.i_crit_edge, label %if.else1335.i.if.end1339.i_crit_edge

if.else1335.i.if.end1339.i_crit_edge:             ; preds = %if.else1335.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1339.i

if.else1335.i.if.end1339.sink.split.i_crit_edge:  ; preds = %if.else1335.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1339.sink.split.i

if.end1339.sink.split.i:                          ; preds = %if.else1335.i.if.end1339.sink.split.i_crit_edge, %PageUptodate.exit2083.i.if.end1339.sink.split.i_crit_edge
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.2.i) #8
  br label %if.end1339.i

if.end1339.i:                                     ; preds = %if.end1339.sink.split.i, %if.else1335.i.if.end1339.i_crit_edge, %PageUptodate.exit2083.i.if.end1339.i_crit_edge, %if.end1328.i.if.end1339.i_crit_edge
  call void @mark_buffer_dirty(ptr noundef %bh.2.i) #8
  br label %do.cond1340.i

do.cond1340.i:                                    ; preds = %if.end1339.i, %if.end1324.i.do.cond1340.i_crit_edge
  %b_this_page1341.i = getelementptr inbounds %struct.buffer_head, ptr %bh.2.i, i32 0, i32 1
  %525 = ptrtoint ptr %b_this_page1341.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %b_this_page1341.i, align 4
  %cmp1342.not.i = icmp eq ptr %526, %495
  br i1 %cmp1342.not.i, label %do.cond1340.i.do.cond1345.i_crit_edge, label %do.cond1340.i.do.body1310.i_crit_edge

do.cond1340.i.do.body1310.i_crit_edge:            ; preds = %do.cond1340.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1310.i

do.cond1340.i.do.cond1345.i_crit_edge:            ; preds = %do.cond1340.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond1345.i

do.cond1345.i:                                    ; preds = %do.cond1340.i.do.cond1345.i_crit_edge, %land.lhs.true1313.i.do.cond1345.i_crit_edge
  %inc1346.i = add i32 %u.4.i, 1
  %cmp1347.not.i = icmp ugt i32 %inc1346.i, %u.233893390.i
  br i1 %cmp1347.not.i, label %do.end1349.i, label %do.cond1345.i.do.body1285.i_crit_edge

do.cond1345.i.do.body1285.i_crit_edge:            ; preds = %do.cond1345.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1285.i

do.end1349.i:                                     ; preds = %do.cond1345.i
  call void @__sanitizer_cov_trace_pc() #10
  %527 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %68, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_prepare_pages_for_non_resident_write, ptr noundef %528, ptr noundef nonnull @.str.11, i32 noundef %err.11.lcssa.i) #8
  br label %ntfs_prepare_pages_for_non_resident_write.exit

ntfs_prepare_pages_for_non_resident_write.exit:   ; preds = %do.end1349.i, %PagePrivate.exit1913.i.ntfs_prepare_pages_for_non_resident_write.exit_crit_edge
  %retval.0.i = phi i32 [ %err.11.lcssa.i, %do.end1349.i ], [ -12, %PagePrivate.exit1913.i.ntfs_prepare_pages_for_non_resident_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wait.i) #8
  br label %do.body112

do.body112:                                       ; preds = %put_page.exit.do.body112_crit_edge, %ntfs_prepare_pages_for_non_resident_write.exit
  %do_pages.2 = phi i32 [ %do_pages.11387, %ntfs_prepare_pages_for_non_resident_write.exit ], [ %dec, %put_page.exit.do.body112_crit_edge ]
  %dec = add i32 %do_pages.2, -1
  %arrayidx = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %dec
  %529 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %arrayidx, align 4
  call void @unlock_page(ptr noundef %530) #8
  %531 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %arrayidx, align 4
  %533 = getelementptr inbounds %struct.page, ptr %532, i32 0, i32 1
  %534 = ptrtoint ptr %533 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load volatile i32, ptr %533, align 4
  %and.i.i = and i32 %535, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i317 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i317, label %if.end.i.i, label %if.then.i.i318, !prof !121

if.then.i.i318:                                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %535, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  %536 = ptrtoint ptr %532 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i318
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i318 ], [ %536, %if.end.i.i ]
  %537 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %537, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %538 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %539)
  %cmp.i.i.i.i = icmp eq i32 %539, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i319, label %do.end5.i.i.i.i, !prof !120

if.then.i.i.i.i319:                               ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %540 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %540, ptr noundef nonnull @.str.14) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !156
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !157
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %541 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %541, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_perform_write, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !160

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %537, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %537) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %tobool114.not = icmp eq i32 %dec, 0
  br i1 %tobool114.not, label %put_page.exit.do.end197_crit_edge, label %put_page.exit.do.body112_crit_edge

put_page.exit.do.body112_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body112

put_page.exit.do.end197_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end197

if.end116:                                        ; preds = %ntfs_prepare_pages_for_non_resident_write.exit.thread, %if.end98.if.end116_crit_edge
  %542 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %pages, align 4
  %index = getelementptr inbounds %struct.page, ptr %543, i32 0, i32 1, i32 0, i32 2
  %544 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %index, align 4
  %conv121 = sub i32 %conv, %545
  %add.ptr = getelementptr ptr, ptr %pages, i32 %conv121
  %sub123 = sub i32 %do_pages.11387, %conv121
  %add.ptr.i320 = getelementptr ptr, ptr %pages, i32 %do_pages.11387
  br label %do.body.i

do.body.i:                                        ; preds = %if.end6.i.do.body.i_crit_edge, %if.end116
  %ofs.addr.0.i = phi i32 [ %conv23, %if.end116 ], [ 0, %if.end6.i.do.body.i_crit_edge ]
  %pages.addr.0.i = phi ptr [ %add.ptr, %if.end116 ], [ %incdec.ptr.i324, %if.end6.i.do.body.i_crit_edge ]
  %bytes.addr.0.i = phi i32 [ %bytes.21386, %if.end116 ], [ %sub1.i, %if.end6.i.do.body.i_crit_edge ]
  %total.0.i = phi i32 [ 0, %if.end116 ], [ %add.i322, %if.end6.i.do.body.i_crit_edge ]
  %sub.i321 = sub nuw nsw i32 4096, %ofs.addr.0.i
  %546 = call i32 @llvm.umin.i32(i32 %sub.i321, i32 %bytes.addr.0.i) #8
  %547 = ptrtoint ptr %pages.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %pages.addr.0.i, align 4
  %call.i = call i32 @copy_page_from_iter_atomic(ptr noundef %548, i32 noundef %ofs.addr.0.i, i32 noundef %546, ptr noundef %i) #8
  %add.i322 = add i32 %call.i, %total.0.i
  %sub1.i = sub i32 %bytes.addr.0.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %tobool.not.i323 = icmp eq i32 %sub1.i, 0
  br i1 %tobool.not.i323, label %do.body.i.ntfs_copy_from_user_iter.exit_crit_edge, label %if.end3.i

do.body.i.ntfs_copy_from_user_iter.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_copy_from_user_iter.exit

if.end3.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %546)
  %cmp4.i = icmp ult i32 %call.i, %546
  br i1 %cmp4.i, label %err.i, label %if.end6.i

if.end6.i:                                        ; preds = %if.end3.i
  %incdec.ptr.i324 = getelementptr ptr, ptr %pages.addr.0.i, i32 1
  %cmp7.i = icmp ult ptr %incdec.ptr.i324, %add.ptr.i320
  br i1 %cmp7.i, label %if.end6.i.do.body.i_crit_edge, label %if.end6.i.ntfs_copy_from_user_iter.exit_crit_edge

if.end6.i.ntfs_copy_from_user_iter.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_copy_from_user_iter.exit

if.end6.i.do.body.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

err.i:                                            ; preds = %if.end3.i
  %sub8.i = sub i32 4096, %call.i
  %549 = call i32 @llvm.umin.i32(i32 %sub8.i, i32 %sub1.i) #8
  %550 = ptrtoint ptr %pages.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %pages.addr.0.i, align 4
  %add.i.peel.i = add i32 %549, %call.i
  call void @zero_user_segments(ptr noundef %551, i32 noundef %call.i, i32 noundef %add.i.peel.i, i32 noundef 0, i32 noundef 0) #8
  %incdec.ptr15.peel.i = getelementptr ptr, ptr %pages.addr.0.i, i32 1
  %cmp16.peel.i = icmp ult ptr %incdec.ptr15.peel.i, %add.ptr.i320
  br i1 %cmp16.peel.i, label %do.body9.peel.next.i, label %err.i.ntfs_copy_from_user_iter.exit_crit_edge

err.i.ntfs_copy_from_user_iter.exit_crit_edge:    ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_copy_from_user_iter.exit

do.body9.peel.next.i:                             ; preds = %err.i
  %sub13.peel.i = sub i32 %sub1.i, %549
  br label %do.body9.i

do.body9.i:                                       ; preds = %do.body9.i.do.body9.i_crit_edge, %do.body9.peel.next.i
  %pages.addr.1.i = phi ptr [ %incdec.ptr15.peel.i, %do.body9.peel.next.i ], [ %incdec.ptr15.i, %do.body9.i.do.body9.i_crit_edge ]
  %bytes.addr.1.i = phi i32 [ %sub13.peel.i, %do.body9.peel.next.i ], [ %sub13.i, %do.body9.i.do.body9.i_crit_edge ]
  %552 = call i32 @llvm.umin.i32(i32 %bytes.addr.1.i, i32 4096) #8
  %553 = ptrtoint ptr %pages.addr.1.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %pages.addr.1.i, align 4
  call void @zero_user_segments(ptr noundef %554, i32 noundef 0, i32 noundef %552, i32 noundef 0, i32 noundef 0) #8
  %sub13.i = sub i32 %bytes.addr.1.i, %552
  %incdec.ptr15.i = getelementptr ptr, ptr %pages.addr.1.i, i32 1
  %cmp16.i = icmp ult ptr %incdec.ptr15.i, %add.ptr.i320
  br i1 %cmp16.i, label %do.body9.i.do.body9.i_crit_edge, label %do.body9.i.ntfs_copy_from_user_iter.exit_crit_edge, !llvm.loop !161

do.body9.i.ntfs_copy_from_user_iter.exit_crit_edge: ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_copy_from_user_iter.exit

do.body9.i.do.body9.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9.i

ntfs_copy_from_user_iter.exit:                    ; preds = %do.body9.i.ntfs_copy_from_user_iter.exit_crit_edge, %err.i.ntfs_copy_from_user_iter.exit_crit_edge, %if.end6.i.ntfs_copy_from_user_iter.exit_crit_edge, %do.body.i.ntfs_copy_from_user_iter.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub123)
  %tobool.not.i325 = icmp eq i32 %sub123, 0
  br i1 %tobool.not.i325, label %do.body4.i326, label %ntfs_copy_from_user_iter.exit.do.body8.i_crit_edge, !prof !120

ntfs_copy_from_user_iter.exit.do.body8.i_crit_edge: ; preds = %ntfs_copy_from_user_iter.exit
  br label %do.body8.i

do.body4.i326:                                    ; preds = %ntfs_copy_from_user_iter.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1361, 0\0A.popsection", ""() #8, !srcloc !163
  unreachable

do.body8.i:                                       ; preds = %do.body8.i.do.body8.i_crit_edge, %ntfs_copy_from_user_iter.exit.do.body8.i_crit_edge
  %nr_pages.addr.0.i = phi i32 [ %dec.i, %do.body8.i.do.body8.i_crit_edge ], [ %sub123, %ntfs_copy_from_user_iter.exit.do.body8.i_crit_edge ]
  %dec.i = add i32 %nr_pages.addr.0.i, -1
  %arrayidx.i = getelementptr ptr, ptr %add.ptr, i32 %dec.i
  %555 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %arrayidx.i, align 4
  call void @flush_dcache_page(ptr noundef %556) #8
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %ntfs_flush_dcache_pages.exit, label %do.body8.i.do.body8.i_crit_edge

do.body8.i.do.body8.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8.i

ntfs_flush_dcache_pages.exit:                     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i322, i32 %bytes.21386)
  %cmp128 = icmp eq i32 %add.i322, %bytes.21386
  br i1 %cmp128, label %if.then136, label %ntfs_flush_dcache_pages.exit.if.end139_crit_edge, !prof !121

ntfs_flush_dcache_pages.exit.if.end139_crit_edge: ; preds = %ntfs_flush_dcache_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then136:                                       ; preds = %ntfs_flush_dcache_pages.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_pages.11387)
  %tobool.not.i327 = icmp eq i32 %do_pages.11387, 0
  br i1 %tobool.not.i327, label %do.body4.i328, label %do.body10.i329, !prof !120

do.body4.i328:                                    ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1553, 0\0A.popsection", ""() #8, !srcloc !164
  unreachable

do.body10.i329:                                   ; preds = %if.then136
  %557 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %pages, align 4
  %tobool31.not.i330 = icmp eq ptr %558, null
  br i1 %tobool31.not.i330, label %do.body41.i331, label %do.end49.i338, !prof !120

do.body41.i331:                                   ; preds = %do.body10.i329
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1556, 0\0A.popsection", ""() #8, !srcloc !165
  unreachable

do.end49.i338:                                    ; preds = %do.body10.i329
  %mapping.i332 = getelementptr inbounds %struct.page, ptr %558, i32 0, i32 1, i32 0, i32 1
  %559 = ptrtoint ptr %mapping.i332 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %mapping.i332, align 4
  %561 = ptrtoint ptr %560 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %560, align 4
  %add.ptr.i.i333 = getelementptr i8, ptr %562, i32 -528
  %i_ino.i334 = getelementptr inbounds %struct.inode, ptr %562, i32 0, i32 11
  %563 = ptrtoint ptr %i_ino.i334 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %i_ino.i334, align 8
  %type.i335 = getelementptr i8, ptr %562, i32 -444
  %565 = ptrtoint ptr %type.i335 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %type.i335, align 4
  %index.i336 = getelementptr inbounds %struct.page, ptr %558, i32 0, i32 1, i32 0, i32 2
  %567 = ptrtoint ptr %index.i336 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %index.i336, align 4
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1562, ptr noundef nonnull @__func__.ntfs_commit_pages_after_write, ptr noundef nonnull @.str.22, i32 noundef %564, i32 noundef %566, i32 noundef %568, i32 noundef %do_pages.11387, i64 noundef %pos.addr.0, i32 noundef %bytes.21386) #8
  %state.i.i337 = getelementptr i8, ptr %562, i32 -464
  %569 = ptrtoint ptr %state.i.i337 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load volatile i32, ptr %state.i.i337, align 4
  %571 = and i32 %570, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %571)
  %tobool51.not.i = icmp eq i32 %571, 0
  br i1 %tobool51.not.i, label %do.body55.i, label %if.then52.i

if.then52.i:                                      ; preds = %do.end49.i338
  %572 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %pages, align 4
  %mapping.i.i = getelementptr inbounds %struct.page, ptr %573, i32 0, i32 1, i32 0, i32 1
  %574 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %mapping.i.i, align 4
  %576 = ptrtoint ptr %575 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %575, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %577, i32 -528
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %577, i32 0, i32 8
  %578 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %i_sb.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %579, i32 0, i32 3
  %580 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %s_blocksize.i.i, align 16
  %conv.i.i = zext i32 %bytes.21386 to i64
  %add.i.i339 = add i64 %pos.addr.0, %conv.i.i
  %conv15.i.i = zext i32 %581 to i64
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end36.i.i.do.body.i.i_crit_edge, %if.then52.i
  %u.0.i.i = phi i32 [ 0, %if.then52.i ], [ %inc.i.i, %if.end36.i.i.do.body.i.i_crit_edge ]
  %arrayidx1.i.i = getelementptr ptr, ptr %pages, i32 %u.0.i.i
  %582 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %arrayidx1.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.page, ptr %583, i32 0, i32 1, i32 0, i32 2
  %584 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %index.i.i, align 4
  %586 = ptrtoint ptr %583 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load volatile i32, ptr %583, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %587)
  %cmp.i.not.i.i.i = icmp eq i32 %587, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i340, label %PagePrivate.exit.i.i, !prof !120

if.then.i.i.i340:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %583, ptr noundef nonnull @.str.37) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !131
  unreachable

PagePrivate.exit.i.i:                             ; preds = %do.body.i.i
  %588 = ptrtoint ptr %583 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load volatile i32, ptr %583, align 4
  %590 = and i32 %589, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %590)
  %tobool.not.i.i341 = icmp eq i32 %590, 0
  br i1 %tobool.not.i.i341, label %do.body8.i.i, label %do.end13.i.i, !prof !120

do.body8.i.i:                                     ; preds = %PagePrivate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1409, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

do.end13.i.i:                                     ; preds = %PagePrivate.exit.i.i
  %conv2.i.i = zext i32 %585 to i64
  %shl.i.i = shl nuw nsw i64 %conv2.i.i, 12
  %private.i.i = getelementptr inbounds %struct.page, ptr %583, i32 0, i32 1, i32 0, i32 3
  %591 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %private.i.i, align 4
  %593 = inttoptr i32 %592 to ptr
  br label %do.body14.i.i

do.body14.i.i:                                    ; preds = %if.end25.i.i.do.body14.i.i_crit_edge, %do.end13.i.i
  %bh.0.i.i = phi ptr [ %593, %do.end13.i.i ], [ %597, %if.end25.i.i.do.body14.i.i_crit_edge ]
  %bh_pos.0.i.i = phi i64 [ %shl.i.i, %do.end13.i.i ], [ %add16.i.i, %if.end25.i.i.do.body14.i.i_crit_edge ]
  %partial.0.off0.i.i = phi i1 [ false, %do.end13.i.i ], [ %partial.1.off0.i.i, %if.end25.i.i.do.body14.i.i_crit_edge ]
  %add16.i.i = add i64 %bh_pos.0.i.i, %conv15.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add16.i.i, i64 %pos.addr.0)
  %cmp.not.i.i = icmp sgt i64 %add16.i.i, %pos.addr.0
  call void @__sanitizer_cov_trace_cmp8(i64 %bh_pos.0.i.i, i64 %add.i.i339)
  %cmp18.not.i.i = icmp slt i64 %bh_pos.0.i.i, %add.i.i339
  %or.cond.i.i = and i1 %cmp18.not.i.i, %cmp.not.i.i
  %594 = ptrtoint ptr %bh.0.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load volatile i32, ptr %bh.0.i.i, align 4
  %and1.i.i274.i.i = and i32 %595, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i274.i.i)
  %tobool.not.i.i.i342 = icmp eq i32 %and1.i.i274.i.i, 0
  br i1 %or.cond.i.i, label %if.else.i.i, label %if.then20.i.i

if.then20.i.i:                                    ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select.i.i = select i1 %tobool.not.i.i.i342, i1 true, i1 %partial.0.off0.i.i
  br label %if.end25.i.i

if.else.i.i:                                      ; preds = %do.body14.i.i
  br i1 %tobool.not.i.i.i342, label %if.then.i275.i.i, label %if.else.i.i.set_buffer_uptodate.exit.i.i_crit_edge

if.else.i.i.set_buffer_uptodate.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit.i.i

if.then.i275.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i.i) #8
  br label %set_buffer_uptodate.exit.i.i

set_buffer_uptodate.exit.i.i:                     ; preds = %if.then.i275.i.i, %if.else.i.i.set_buffer_uptodate.exit.i.i_crit_edge
  call void @mark_buffer_dirty(ptr noundef %bh.0.i.i) #8
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %set_buffer_uptodate.exit.i.i, %if.then20.i.i
  %partial.1.off0.i.i = phi i1 [ %partial.0.off0.i.i, %set_buffer_uptodate.exit.i.i ], [ %spec.select.i.i, %if.then20.i.i ]
  %b_this_page.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i.i, i32 0, i32 1
  %596 = ptrtoint ptr %b_this_page.i.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %b_this_page.i.i, align 4
  %cmp29.not.i.i = icmp eq ptr %597, %593
  br i1 %cmp29.not.i.i, label %do.end31.i.i, label %if.end25.i.i.do.body14.i.i_crit_edge

if.end25.i.i.do.body14.i.i_crit_edge:             ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.i.i

do.end31.i.i:                                     ; preds = %if.end25.i.i
  br i1 %partial.1.off0.i.i, label %do.end31.i.i.if.end36.i.i_crit_edge, label %land.lhs.true.i.i

do.end31.i.i.if.end36.i.i_crit_edge:              ; preds = %do.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i.i

land.lhs.true.i.i:                                ; preds = %do.end31.i.i
  %598 = getelementptr inbounds %struct.page, ptr %583, i32 0, i32 1
  %599 = ptrtoint ptr %598 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load volatile i32, ptr %598, align 4
  %and.i.i.i.i = and i32 %600, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i459.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i459.i, label %if.end.i.i.i.i, label %if.then.i.i.i460.i, !prof !121

if.then.i.i.i460.i:                               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i = add i32 %600, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %601 = ptrtoint ptr %583 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i460.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i460.i ], [ %601, %if.end.i.i.i.i ]
  %602 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %603 = getelementptr inbounds %struct.page, ptr %602, i32 0, i32 1
  %604 = ptrtoint ptr %603 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load volatile i32, ptr %603, align 4
  %and.i.i.i.i276.i.i = and i32 %605, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i276.i.i)
  %tobool.not.i.i.i277.i.i = icmp eq i32 %and.i.i.i.i276.i.i, 0
  br i1 %tobool.not.i.i.i277.i.i, label %folio_flags.exit.i.i.i.i, label %if.then.i.i.i278.i.i, !prof !121

if.then.i.i.i278.i.i:                             ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %606 = inttoptr i32 %retval.0.i.i.i.i to ptr
  call void @dump_page(ptr noundef %606, ptr noundef nonnull @.str.38) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

folio_flags.exit.i.i.i.i:                         ; preds = %_compound_head.exit.i.i.i
  %607 = ptrtoint ptr %602 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load volatile i32, ptr %602, align 4
  %609 = and i32 %608, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %609)
  %tobool.i.not.i.i.i = icmp eq i32 %609, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8
  br i1 %tobool.i.not.i.i.i, label %if.then35.i.i, label %folio_flags.exit.i.i.i.i.if.end36.i.i_crit_edge

folio_flags.exit.i.i.i.i.if.end36.i.i_crit_edge:  ; preds = %folio_flags.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i.i

if.then35.i.i:                                    ; preds = %folio_flags.exit.i.i.i.i
  %610 = ptrtoint ptr %598 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load volatile i32, ptr %598, align 4
  %and.i.i.i.i.i.i343 = and i32 %611, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i343)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i343, 0
  br i1 %tobool.not.i.i.i.i.i, label %SetPageUptodate.exit.i.i, label %if.then.i.i.i.i.i344, !prof !121

if.then.i.i.i.i.i344:                             ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %583, ptr noundef nonnull @.str.38) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

SetPageUptodate.exit.i.i:                         ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 2, ptr noundef %583) #8
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %SetPageUptodate.exit.i.i, %folio_flags.exit.i.i.i.i.if.end36.i.i_crit_edge, %do.end31.i.i.if.end36.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %u.0.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %do_pages.11387
  br i1 %exitcond.not.i.i, label %do.body41.i.i, label %if.end36.i.i.do.body.i.i_crit_edge

if.end36.i.i.do.body.i.i_crit_edge:               ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.body41.i.i:                                    ; preds = %if.end36.i.i
  %call45.i.i = call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i.i) #8
  %initialized_size48.i.i = getelementptr i8, ptr %577, i32 -480
  %612 = ptrtoint ptr %initialized_size48.i.i to i32
  call void @__asan_load8_noabort(i32 %612)
  %613 = load i64, ptr %initialized_size48.i.i, align 8
  call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i.i, i32 noundef %call45.i.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i339, i64 %613)
  %cmp58.not.i.i = icmp sgt i64 %add.i.i339, %613
  br i1 %cmp58.not.i.i, label %if.end61.i.i, label %if.then60.i.i

if.then60.i.i:                                    ; preds = %do.body41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1438, ptr noundef nonnull @__func__.ntfs_commit_pages_after_non_resident_write, ptr noundef nonnull @.str.32) #8
  br label %if.end139

if.end61.i.i:                                     ; preds = %do.body41.i.i
  %state.i.i.i = getelementptr i8, ptr %577, i32 -464
  %614 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load volatile i32, ptr %state.i.i.i, align 4
  %616 = and i32 %615, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %616)
  %tobool63.not.i.i = icmp eq i32 %616, 0
  br i1 %tobool63.not.i.i, label %if.end61.i.i.if.end66.i.i_crit_edge, label %if.else65.i.i

if.end61.i.i.if.end66.i.i_crit_edge:              ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66.i.i

if.else65.i.i:                                    ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ext.i.i = getelementptr i8, ptr %577, i32 -8
  %617 = ptrtoint ptr %ext.i.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %ext.i.i, align 8
  br label %if.end66.i.i

if.end66.i.i:                                     ; preds = %if.else65.i.i, %if.end61.i.i.if.end66.i.i_crit_edge
  %base_ni.0.i.i = phi ptr [ %618, %if.else65.i.i ], [ %add.ptr.i.i.i, %if.end61.i.i.if.end66.i.i_crit_edge ]
  %call67.i.i = call ptr @map_mft_record(ptr noundef %base_ni.0.i.i) #8
  %cmp.i.i.i = icmp ugt ptr %call67.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end191.thread.i.i, label %do.body72.i.i

if.end191.thread.i.i:                             ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %619 = ptrtoint ptr %call67.i.i to i32
  br label %if.end194.i.i

do.body72.i.i:                                    ; preds = %if.end66.i.i
  %620 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load volatile i32, ptr %state.i.i.i, align 4
  %622 = and i32 %621, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %622)
  %tobool74.not.i.i = icmp eq i32 %622, 0
  br i1 %tobool74.not.i.i, label %do.body84.i.i, label %do.end92.i.i, !prof !120

do.body84.i.i:                                    ; preds = %do.body72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1457, 0\0A.popsection", ""() #8, !srcloc !167
  unreachable

do.end92.i.i:                                     ; preds = %do.body72.i.i
  %call93.i.i = call ptr @ntfs_attr_get_search_ctx(ptr noundef %base_ni.0.i.i, ptr noundef %call67.i.i) #8
  %tobool94.not.i.i = icmp eq ptr %call93.i.i, null
  br i1 %tobool94.not.i.i, label %do.end92.i.i.if.end191.i.i_crit_edge, label %if.end104.i.i, !prof !120

do.end92.i.i.if.end191.i.i_crit_edge:             ; preds = %do.end92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191.i.i

if.end104.i.i:                                    ; preds = %do.end92.i.i
  %type.i.i = getelementptr i8, ptr %577, i32 -444
  %623 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %type.i.i, align 4
  %name.i.i = getelementptr i8, ptr %577, i32 -440
  %625 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %name.i.i, align 8
  %name_len.i.i = getelementptr i8, ptr %577, i32 -436
  %627 = ptrtoint ptr %name_len.i.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %name_len.i.i, align 4
  %call105.i.i = call i32 @ntfs_attr_lookup(i32 noundef %624, ptr noundef %626, i32 noundef %628, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call93.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i.i)
  %tobool106.not.i.i = icmp eq i32 %call105.i.i, 0
  br i1 %tobool106.not.i.i, label %if.end118.i.i, label %if.then190.i.i, !prof !121

if.end118.i.i:                                    ; preds = %if.end104.i.i
  %attr.i.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call93.i.i, i32 0, i32 1
  %629 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %attr.i.i, align 4
  %non_resident.i.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %630, i32 0, i32 2
  %631 = ptrtoint ptr %non_resident.i.i to i32
  call void @__asan_load1_noabort(i32 %631)
  %632 = load i8, ptr %non_resident.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %632)
  %tobool120.not.i.i = icmp eq i8 %632, 0
  br i1 %tobool120.not.i.i, label %do.body130.i.i, label %do.body139.i.i, !prof !120

do.body130.i.i:                                   ; preds = %if.end118.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1471, 0\0A.popsection", ""() #8, !srcloc !168
  unreachable

do.body139.i.i:                                   ; preds = %if.end118.i.i
  %call146.i.i = call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i.i.i) #8
  %allocated_size.i.i = getelementptr i8, ptr %577, i32 -472
  %633 = ptrtoint ptr %allocated_size.i.i to i32
  call void @__asan_load8_noabort(i32 %633)
  %634 = load i64, ptr %allocated_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i339, i64 %634)
  %cmp150.i.i = icmp sgt i64 %add.i.i339, %634
  br i1 %cmp150.i.i, label %do.body159.i.i, label %do.end167.i.i, !prof !120

do.body159.i.i:                                   ; preds = %do.body139.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1473, 0\0A.popsection", ""() #8, !srcloc !169
  unreachable

do.end167.i.i:                                    ; preds = %do.body139.i.i
  %635 = ptrtoint ptr %initialized_size48.i.i to i32
  call void @__asan_store8_noabort(i32 %635)
  store i64 %add.i.i339, ptr %initialized_size48.i.i, align 8
  %636 = call i64 @llvm.bswap.i64(i64 %add.i.i339) #8
  %initialized_size170.i.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %630, i32 0, i32 7, i32 0, i32 7
  %637 = ptrtoint ptr %initialized_size170.i.i to i32
  call void @__asan_storeN_noabort(i32 %637, i32 8)
  store i64 %636, ptr %initialized_size170.i.i, align 1
  %call171.i.i = call fastcc i64 @i_size_read(ptr noundef %577) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i339, i64 %call171.i.i)
  %cmp172.i.i = icmp sgt i64 %add.i.i339, %call171.i.i
  br i1 %cmp172.i.i, label %if.then174.i.i, label %do.end167.i.i.do.body179.i.i_crit_edge

do.end167.i.i.do.body179.i.i_crit_edge:           ; preds = %do.end167.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body179.i.i

if.then174.i.i:                                   ; preds = %do.end167.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @i_size_write(ptr noundef %577, i64 noundef %add.i.i339) #8
  %638 = ptrtoint ptr %initialized_size170.i.i to i32
  call void @__asan_loadN_noabort(i32 %638, i32 8)
  %639 = load i64, ptr %initialized_size170.i.i, align 1
  %data_size.i.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %630, i32 0, i32 7, i32 0, i32 6
  %640 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_storeN_noabort(i32 %640, i32 8)
  store i64 %639, ptr %data_size.i.i, align 1
  br label %do.body179.i.i

do.body179.i.i:                                   ; preds = %if.then174.i.i, %do.end167.i.i.do.body179.i.i_crit_edge
  call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i.i.i, i32 noundef %call146.i.i) #8
  %ntfs_ino.i.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call93.i.i, i32 0, i32 3
  %641 = ptrtoint ptr %ntfs_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %ntfs_ino.i.i, align 4
  %page.i.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %642, i32 0, i32 13
  %643 = ptrtoint ptr %page.i.i.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %page.i.i.i, align 8
  call void @flush_dcache_page(ptr noundef %644) #8
  %645 = ptrtoint ptr %ntfs_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %ntfs_ino.i.i, align 4
  %state.i.i.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %646, i32 0, i32 3
  %call.i.i.i.i345 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i345)
  %tobool.not.i284.i.i = icmp eq i32 %call.i.i.i.i345, 0
  br i1 %tobool.not.i284.i.i, label %if.then.i285.i.i, label %do.body179.i.i.mark_mft_record_dirty.exit.i.i_crit_edge

do.body179.i.i.mark_mft_record_dirty.exit.i.i_crit_edge: ; preds = %do.body179.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_mft_record_dirty.exit.i.i

if.then.i285.i.i:                                 ; preds = %do.body179.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_mft_record_dirty(ptr noundef %646) #8
  br label %mark_mft_record_dirty.exit.i.i

mark_mft_record_dirty.exit.i.i:                   ; preds = %if.then.i285.i.i, %do.body179.i.i.mark_mft_record_dirty.exit.i.i_crit_edge
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call93.i.i) #8
  call void @unmap_mft_record(ptr noundef %base_ni.0.i.i) #8
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1487, ptr noundef nonnull @__func__.ntfs_commit_pages_after_non_resident_write, ptr noundef nonnull @.str.32) #8
  br label %if.end139

if.then190.i.i:                                   ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call105.i.i)
  %cmp114.i.i = icmp eq i32 %call105.i.i, -2
  %spec.store.select.i.i = select i1 %cmp114.i.i, i32 -5, i32 %call105.i.i
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call93.i.i) #8
  br label %if.end191.i.i

if.end191.i.i:                                    ; preds = %if.then190.i.i, %do.end92.i.i.if.end191.i.i_crit_edge
  %err.0293.i.i = phi i32 [ %spec.store.select.i.i, %if.then190.i.i ], [ -12, %do.end92.i.i.if.end191.i.i_crit_edge ]
  %tobool192.not.i.i = icmp eq ptr %call67.i.i, null
  br i1 %tobool192.not.i.i, label %if.end191.i.i.if.end194.i.i_crit_edge, label %if.then193.i.i

if.end191.i.i.if.end194.i.i_crit_edge:            ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194.i.i

if.then193.i.i:                                   ; preds = %if.end191.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @unmap_mft_record(ptr noundef %base_ni.0.i.i) #8
  br label %if.end194.i.i

if.end194.i.i:                                    ; preds = %if.then193.i.i, %if.end191.i.i.if.end194.i.i_crit_edge, %if.end191.thread.i.i
  %err.0293297.i.i = phi i32 [ %619, %if.end191.thread.i.i ], [ %err.0293.i.i, %if.then193.i.i ], [ %err.0293.i.i, %if.end191.i.i.if.end194.i.i_crit_edge ]
  %647 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %i_sb.i.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_commit_pages_after_non_resident_write, ptr noundef %648, ptr noundef nonnull @.str.45, i32 noundef %err.0293297.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.0293297.i.i)
  %cmp196.not.i.i = icmp eq i32 %err.0293297.i.i, -12
  br i1 %cmp196.not.i.i, label %if.end194.i.i.if.end139_crit_edge, label %if.then198.i.i

if.end194.i.i.if.end139_crit_edge:                ; preds = %if.end194.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then198.i.i:                                   ; preds = %if.end194.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %vol.i.i = getelementptr i8, ptr %577, i32 -448
  %649 = ptrtoint ptr %vol.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %vol.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.ntfs_volume, ptr %650, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i.i) #8
  br label %if.end139

do.body55.i:                                      ; preds = %do.end49.i338
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %do_pages.11387)
  %cmp.i = icmp ugt i32 %do_pages.11387, 1
  br i1 %cmp.i, label %do.body63.i, label %do.end71.i, !prof !120

do.body63.i:                                      ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1566, 0\0A.popsection", ""() #8, !srcloc !170
  unreachable

do.end71.i:                                       ; preds = %do.body55.i
  %651 = ptrtoint ptr %state.i.i337 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load volatile i32, ptr %state.i.i337, align 4
  %653 = and i32 %652, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %653)
  %tobool73.not.i = icmp eq i32 %653, 0
  br i1 %tobool73.not.i, label %do.end71.i.do.body76.i_crit_edge, label %if.else.i347

do.end71.i.do.body76.i_crit_edge:                 ; preds = %do.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body76.i

if.else.i347:                                     ; preds = %do.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  %ext.i346 = getelementptr i8, ptr %562, i32 -8
  %654 = ptrtoint ptr %ext.i346 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %ext.i346, align 8
  br label %do.body76.i

do.body76.i:                                      ; preds = %if.else.i347, %do.end71.i.do.body76.i_crit_edge
  %base_ni.0.i348 = phi ptr [ %655, %if.else.i347 ], [ %add.ptr.i.i333, %do.end71.i.do.body76.i_crit_edge ]
  %656 = ptrtoint ptr %state.i.i337 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load volatile i32, ptr %state.i.i337, align 4
  %658 = and i32 %657, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %658)
  %tobool78.not.i = icmp eq i32 %658, 0
  br i1 %tobool78.not.i, label %do.end94.i, label %do.body86.i, !prof !121

do.body86.i:                                      ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1575, 0\0A.popsection", ""() #8, !srcloc !171
  unreachable

do.end94.i:                                       ; preds = %do.body76.i
  %call95.i = call ptr @map_mft_record(ptr noundef %base_ni.0.i348) #8
  %cmp.i.i349 = icmp ugt ptr %call95.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i349, label %if.then97.i, label %if.end99.i

if.then97.i:                                      ; preds = %do.end94.i
  call void @__sanitizer_cov_trace_pc() #10
  %659 = ptrtoint ptr %call95.i to i32
  br label %err_out.i

if.end99.i:                                       ; preds = %do.end94.i
  %call100.i = call ptr @ntfs_attr_get_search_ctx(ptr noundef %base_ni.0.i348, ptr noundef %call95.i) #8
  %tobool101.not.i = icmp eq ptr %call100.i, null
  br i1 %tobool101.not.i, label %if.end99.i.if.then332.i_crit_edge, label %if.end111.i, !prof !120

if.end99.i.if.then332.i_crit_edge:                ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then332.i

if.end111.i:                                      ; preds = %if.end99.i
  %660 = ptrtoint ptr %type.i335 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %type.i335, align 4
  %name.i350 = getelementptr i8, ptr %562, i32 -440
  %662 = ptrtoint ptr %name.i350 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %name.i350, align 8
  %name_len.i351 = getelementptr i8, ptr %562, i32 -436
  %664 = ptrtoint ptr %name_len.i351 to i32
  call void @__asan_load4_noabort(i32 %664)
  %665 = load i32, ptr %name_len.i351, align 4
  %call113.i = call i32 @ntfs_attr_lookup(i32 noundef %661, ptr noundef %663, i32 noundef %665, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call100.i) #8
  %666 = zext i32 %call113.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %666, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call113.i, label %if.end111.i.err_out.i_crit_edge [
    i32 0, label %if.end125.i
    i32 -2, label %if.end111.i.if.else341.i_crit_edge
  ], !prof !144

if.end111.i.if.else341.i_crit_edge:               ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else341.i

if.end111.i.err_out.i_crit_edge:                  ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out.i

if.end125.i:                                      ; preds = %if.end111.i
  %attr.i352 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call100.i, i32 0, i32 1
  %667 = ptrtoint ptr %attr.i352 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %attr.i352, align 4
  %non_resident.i = getelementptr inbounds %struct.ATTR_RECORD, ptr %668, i32 0, i32 2
  %669 = ptrtoint ptr %non_resident.i to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %non_resident.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %670)
  %tobool127.not.i = icmp eq i8 %670, 0
  br i1 %tobool127.not.i, label %do.end143.i, label %do.body135.i, !prof !121

do.body135.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1597, 0\0A.popsection", ""() #8, !srcloc !172
  unreachable

do.end143.i:                                      ; preds = %if.end125.i
  %data.i353 = getelementptr inbounds %struct.ATTR_RECORD, ptr %668, i32 0, i32 7
  %671 = ptrtoint ptr %data.i353 to i32
  call void @__asan_loadN_noabort(i32 %671, i32 4)
  %672 = load i32, ptr %data.i353, align 1
  %673 = call i32 @llvm.bswap.i32(i32 %672) #8
  %call144.i = call fastcc i64 @i_size_read(ptr noundef %562) #8
  %conv.i = zext i32 %673 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call144.i, i64 %conv.i)
  %cmp146.not.i = icmp eq i64 %call144.i, %conv.i
  br i1 %cmp146.not.i, label %do.body164.i, label %do.body155.i, !prof !121

do.body155.i:                                     ; preds = %do.end143.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1601, 0\0A.popsection", ""() #8, !srcloc !173
  unreachable

do.body164.i:                                     ; preds = %do.end143.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call144.i, i64 %pos.addr.0)
  %cmp166.i = icmp slt i64 %call144.i, %pos.addr.0
  br i1 %cmp166.i, label %do.body175.i, label %do.end183.i, !prof !120

do.body175.i:                                     ; preds = %do.body164.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1602, 0\0A.popsection", ""() #8, !srcloc !174
  unreachable

do.end183.i:                                      ; preds = %do.body164.i
  %conv184.i = zext i32 %bytes.21386 to i64
  %add.i354 = add i64 %pos.addr.0, %conv184.i
  %length.i355 = getelementptr inbounds %struct.ATTR_RECORD, ptr %668, i32 0, i32 1
  %674 = ptrtoint ptr %length.i355 to i32
  call void @__asan_loadN_noabort(i32 %674, i32 4)
  %675 = load i32, ptr %length.i355, align 1
  %676 = call i32 @llvm.bswap.i32(i32 %675) #8
  %value_offset.i = getelementptr inbounds %struct.anon.89, ptr %data.i353, i32 0, i32 1
  %677 = ptrtoint ptr %value_offset.i to i32
  call void @__asan_loadN_noabort(i32 %677, i32 2)
  %678 = load i16, ptr %value_offset.i, align 1
  %679 = call i16 @llvm.bswap.i16(i16 %678) #8
  %conv187.i = zext i16 %679 to i32
  %sub.i356 = sub i32 %676, %conv187.i
  %conv188.i = zext i32 %sub.i356 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i354, i64 %conv188.i)
  %cmp189.i = icmp sgt i64 %add.i354, %conv188.i
  br i1 %cmp189.i, label %do.body198.i, label %do.end206.i, !prof !120

do.body198.i:                                     ; preds = %do.end183.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1605, 0\0A.popsection", ""() #8, !srcloc !175
  unreachable

do.end206.i:                                      ; preds = %do.end183.i
  %add.ptr.i357 = getelementptr i8, ptr %668, i32 %conv187.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %680 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i358 = or i32 %680, 512
  %681 = call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i.i.i467.i = and i32 %681, -16384
  %682 = inttoptr i32 %and.i.i.i.i.i467.i to ptr
  %preempt_count.i.i.i.i.i359 = getelementptr inbounds %struct.thread_info, ptr %682, i32 0, i32 1
  %683 = ptrtoint ptr %preempt_count.i.i.i.i.i359 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load volatile i32, ptr %preempt_count.i.i.i.i.i359, align 4
  %add.i.i.i.i360 = add i32 %684, 1
  store volatile i32 %add.i.i.i.i360, ptr %preempt_count.i.i.i.i.i359, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  %685 = call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i1.i.i.i361 = and i32 %685, -16384
  %686 = inttoptr i32 %and.i.i.i1.i.i.i361 to ptr
  %task.i.i.i.i.i362 = getelementptr inbounds %struct.thread_info, ptr %686, i32 0, i32 2
  %687 = ptrtoint ptr %task.i.i.i.i.i362 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %task.i.i.i.i.i362, align 8
  %pagefault_disabled.i.i.i.i.i363 = getelementptr inbounds %struct.task_struct, ptr %688, i32 0, i32 213
  %689 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i363 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %pagefault_disabled.i.i.i.i.i363, align 8
  %inc.i.i.i.i.i364 = add i32 %690, 1
  store i32 %inc.i.i.i.i.i364, ptr %pagefault_disabled.i.i.i.i.i363, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  %call.i.i.i365 = call ptr @__kmap_local_page_prot(ptr noundef nonnull %558, i32 noundef %or.i.i358) #8
  %add.ptr211.i = getelementptr i8, ptr %add.ptr.i357, i32 %35
  %add.ptr213.i = getelementptr i8, ptr %call.i.i.i365, i32 %35
  %691 = call ptr @memcpy(ptr %add.ptr211.i, ptr %add.ptr213.i, i32 %bytes.21386)
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i354, i64 %call144.i)
  %cmp215.i = icmp sgt i64 %add.i354, %call144.i
  br i1 %cmp215.i, label %if.then217.i, label %do.end206.i.if.end221.i_crit_edge

do.end206.i.if.end221.i_crit_edge:                ; preds = %do.end206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221.i

if.then217.i:                                     ; preds = %do.end206.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv218.i = trunc i64 %add.i354 to i32
  %692 = call i32 @llvm.bswap.i32(i32 %conv218.i) #8
  %693 = ptrtoint ptr %data.i353 to i32
  call void @__asan_storeN_noabort(i32 %693, i32 4)
  store i32 %692, ptr %data.i353, align 1
  br label %if.end221.i

if.end221.i:                                      ; preds = %if.then217.i, %do.end206.i.if.end221.i_crit_edge
  %attr_len.0.i = phi i32 [ %conv218.i, %if.then217.i ], [ %673, %do.end206.i.if.end221.i_crit_edge ]
  %694 = getelementptr inbounds %struct.page, ptr %558, i32 0, i32 1
  %695 = ptrtoint ptr %694 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load volatile i32, ptr %694, align 4
  %and.i.i.i366 = and i32 %696, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i366)
  %tobool.not.i.i468.i = icmp eq i32 %and.i.i.i366, 0
  br i1 %tobool.not.i.i468.i, label %if.end.i.i.i, label %if.then.i.i469.i, !prof !121

if.then.i.i469.i:                                 ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i367 = add i32 %696, -1
  br label %_compound_head.exit.i.i369

if.end.i.i.i:                                     ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #10
  %697 = ptrtoint ptr %558 to i32
  br label %_compound_head.exit.i.i369

_compound_head.exit.i.i369:                       ; preds = %if.end.i.i.i, %if.then.i.i469.i
  %retval.0.i.i.i368 = phi i32 [ %sub.i.i.i367, %if.then.i.i469.i ], [ %697, %if.end.i.i.i ]
  %698 = inttoptr i32 %retval.0.i.i.i368 to ptr
  %699 = getelementptr inbounds %struct.page, ptr %698, i32 0, i32 1
  %700 = ptrtoint ptr %699 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load volatile i32, ptr %699, align 4
  %and.i.i.i.i470.i = and i32 %701, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i470.i)
  %tobool.not.i.i.i471.i = icmp eq i32 %and.i.i.i.i470.i, 0
  br i1 %tobool.not.i.i.i471.i, label %folio_flags.exit.i.i.i371, label %if.then.i.i.i472.i, !prof !121

if.then.i.i.i472.i:                               ; preds = %_compound_head.exit.i.i369
  call void @__sanitizer_cov_trace_pc() #10
  %702 = inttoptr i32 %retval.0.i.i.i368 to ptr
  call void @dump_page(ptr noundef %702, ptr noundef nonnull @.str.38) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

folio_flags.exit.i.i.i371:                        ; preds = %_compound_head.exit.i.i369
  %703 = ptrtoint ptr %698 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load volatile i32, ptr %698, align 4
  %705 = and i32 %704, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %705)
  %tobool.i.not.i.i370 = icmp eq i32 %705, 0
  br i1 %tobool.i.not.i.i370, label %if.then224.i, label %PageUptodate.exit.i372

PageUptodate.exit.i372:                           ; preds = %folio_flags.exit.i.i.i371
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  br label %do.end248.i

if.then224.i:                                     ; preds = %folio_flags.exit.i.i.i371
  br i1 %cmp225.i, label %if.then227.i, label %if.then224.i.if.end229.i_crit_edge

if.then224.i.if.end229.i_crit_edge:               ; preds = %if.then224.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229.i

if.then227.i:                                     ; preds = %if.then224.i
  call void @__sanitizer_cov_trace_pc() #10
  %706 = call ptr @memcpy(ptr %call.i.i.i365, ptr %add.ptr.i357, i32 %35)
  br label %if.end229.i

if.end229.i:                                      ; preds = %if.then227.i, %if.then224.i.if.end229.i_crit_edge
  %conv230.i = zext i32 %attr_len.0.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i354, i64 %conv230.i)
  %cmp231.i = icmp slt i64 %add.i354, %conv230.i
  br i1 %cmp231.i, label %if.then233.i, label %if.end229.i.if.end241.i_crit_edge

if.end229.i.if.end241.i_crit_edge:                ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end241.i

if.then233.i:                                     ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #10
  %idx.ext234.i = trunc i64 %add.i354 to i32
  %add.ptr235.i = getelementptr i8, ptr %call.i.i.i365, i32 %idx.ext234.i
  %add.ptr237.i = getelementptr i8, ptr %add.ptr.i357, i32 %idx.ext234.i
  %conv240.i = sub i32 %attr_len.0.i, %idx.ext234.i
  %707 = call ptr @memcpy(ptr %add.ptr235.i, ptr %add.ptr237.i, i32 %conv240.i)
  br label %if.end241.i

if.end241.i:                                      ; preds = %if.then233.i, %if.end229.i.if.end241.i_crit_edge
  %add.ptr242.i = getelementptr i8, ptr %call.i.i.i365, i32 %attr_len.0.i
  %sub243.i = sub i32 4096, %attr_len.0.i
  %708 = call ptr @memset(ptr %add.ptr242.i, i32 0, i32 %sub243.i)
  call void @flush_dcache_page(ptr noundef nonnull %558) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !176
  %709 = ptrtoint ptr %694 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load volatile i32, ptr %694, align 4
  %and.i.i.i.i.i373 = and i32 %710, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i373)
  %tobool.not.i.i.i.i374 = icmp eq i32 %and.i.i.i.i.i373, 0
  br i1 %tobool.not.i.i.i.i374, label %SetPageUptodate.exit.i, label %if.then.i.i.i.i375, !prof !121

if.then.i.i.i.i375:                               ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef nonnull %558, ptr noundef nonnull @.str.38) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

SetPageUptodate.exit.i:                           ; preds = %if.end241.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %558) #8
  br label %do.end248.i

do.end248.i:                                      ; preds = %SetPageUptodate.exit.i, %PageUptodate.exit.i372
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i365) #8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %711 = call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i1.i.i376 = and i32 %711, -16384
  %712 = inttoptr i32 %and.i.i.i1.i.i376 to ptr
  %task.i.i.i.i377 = getelementptr inbounds %struct.thread_info, ptr %712, i32 0, i32 2
  %713 = ptrtoint ptr %task.i.i.i.i377 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %task.i.i.i.i377, align 8
  %pagefault_disabled.i.i.i.i378 = getelementptr inbounds %struct.task_struct, ptr %714, i32 0, i32 213
  %715 = ptrtoint ptr %pagefault_disabled.i.i.i.i378 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %pagefault_disabled.i.i.i.i378, align 8
  %dec.i.i.i.i379 = add i32 %716, -1
  store i32 %dec.i.i.i.i379, ptr %pagefault_disabled.i.i.i.i378, align 8
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !142
  %717 = call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i.i473.i = and i32 %717, -16384
  %718 = inttoptr i32 %and.i.i.i.i473.i to ptr
  %preempt_count.i.i.i.i380 = getelementptr inbounds %struct.thread_info, ptr %718, i32 0, i32 1
  %719 = ptrtoint ptr %preempt_count.i.i.i.i380 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load volatile i32, ptr %preempt_count.i.i.i.i380, align 4
  %sub.i.i474.i = add i32 %720, -1
  store volatile i32 %sub.i.i474.i, ptr %preempt_count.i.i.i.i380, align 4
  %call254.i = call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i333) #8
  %initialized_size257.i = getelementptr i8, ptr %562, i32 -480
  %allocated_size.i381 = getelementptr i8, ptr %562, i32 -472
  %721 = ptrtoint ptr %allocated_size.i381 to i32
  call void @__asan_load8_noabort(i32 %721)
  %722 = load i64, ptr %allocated_size.i381, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i354, i64 %722)
  %cmp259.i = icmp sgt i64 %add.i354, %722
  br i1 %cmp259.i, label %do.body268.i, label %do.body277.i382, !prof !120

do.body268.i:                                     ; preds = %do.end248.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1633, 0\0A.popsection", ""() #8, !srcloc !177
  unreachable

do.body277.i382:                                  ; preds = %do.end248.i
  %723 = ptrtoint ptr %initialized_size257.i to i32
  call void @__asan_load8_noabort(i32 %723)
  %724 = load i64, ptr %initialized_size257.i, align 8
  call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i333, i32 noundef %call254.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %724, i64 %call144.i)
  %cmp287.not.i = icmp eq i64 %724, %call144.i
  br i1 %cmp287.not.i, label %do.end304.i, label %do.body296.i, !prof !121

do.body296.i:                                     ; preds = %do.body277.i382
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1635, 0\0A.popsection", ""() #8, !srcloc !178
  unreachable

do.end304.i:                                      ; preds = %do.body277.i382
  br i1 %cmp215.i, label %do.body308.i, label %do.end304.i.if.end328.i_crit_edge

do.end304.i.if.end328.i_crit_edge:                ; preds = %do.end304.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end328.i

do.body308.i:                                     ; preds = %do.end304.i
  call void @__sanitizer_cov_trace_pc() #10
  %call315.i = call i32 @_raw_write_lock_irqsave(ptr noundef %add.ptr.i.i333) #8
  %725 = ptrtoint ptr %initialized_size257.i to i32
  call void @__asan_store8_noabort(i32 %725)
  store i64 %add.i354, ptr %initialized_size257.i, align 8
  call fastcc void @i_size_write(ptr noundef %562, i64 noundef %add.i354) #8
  call void @_raw_write_unlock_irqrestore(ptr noundef %add.ptr.i.i333, i32 noundef %call315.i) #8
  br label %if.end328.i

if.end328.i:                                      ; preds = %do.body308.i, %do.end304.i.if.end328.i_crit_edge
  %ntfs_ino.i383 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call100.i, i32 0, i32 3
  %726 = ptrtoint ptr %ntfs_ino.i383 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %ntfs_ino.i383, align 4
  %page.i.i384 = getelementptr inbounds %struct._ntfs_inode, ptr %727, i32 0, i32 13
  %728 = ptrtoint ptr %page.i.i384 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %page.i.i384, align 8
  call void @flush_dcache_page(ptr noundef %729) #8
  %730 = ptrtoint ptr %ntfs_ino.i383 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %ntfs_ino.i383, align 4
  %state.i.i475.i = getelementptr inbounds %struct._ntfs_inode, ptr %731, i32 0, i32 3
  %call.i.i476.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i475.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i476.i)
  %tobool.not.i477.i = icmp eq i32 %call.i.i476.i, 0
  br i1 %tobool.not.i477.i, label %if.then.i.i385, label %if.end328.i.mark_mft_record_dirty.exit.i_crit_edge

if.end328.i.mark_mft_record_dirty.exit.i_crit_edge: ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_mft_record_dirty.exit.i

if.then.i.i385:                                   ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_mft_record_dirty(ptr noundef %731) #8
  br label %mark_mft_record_dirty.exit.i

mark_mft_record_dirty.exit.i:                     ; preds = %if.then.i.i385, %if.end328.i.mark_mft_record_dirty.exit.i_crit_edge
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call100.i) #8
  call void @unmap_mft_record(ptr noundef %base_ni.0.i348) #8
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1647, ptr noundef nonnull @__func__.ntfs_commit_pages_after_write, ptr noundef nonnull @.str.32) #8
  br label %if.end139

err_out.i:                                        ; preds = %if.end111.i.err_out.i_crit_edge, %if.then97.i
  %ctx.0.i386 = phi ptr [ null, %if.then97.i ], [ %call100.i, %if.end111.i.err_out.i_crit_edge ]
  %m.0.i387 = phi ptr [ null, %if.then97.i ], [ %call95.i, %if.end111.i.err_out.i_crit_edge ]
  %err.0.i = phi i32 [ %659, %if.then97.i ], [ %call113.i, %if.end111.i.err_out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.0.i)
  %cmp330.i = icmp eq i32 %err.0.i, -12
  br i1 %cmp330.i, label %err_out.i.if.then332.i_crit_edge, label %err_out.i.if.else341.i_crit_edge

err_out.i.if.else341.i_crit_edge:                 ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else341.i

err_out.i.if.then332.i_crit_edge:                 ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then332.i

if.then332.i:                                     ; preds = %err_out.i.if.then332.i_crit_edge, %if.end99.i.if.then332.i_crit_edge
  %m.0502.i = phi ptr [ %m.0.i387, %err_out.i.if.then332.i_crit_edge ], [ %call95.i, %if.end99.i.if.then332.i_crit_edge ]
  %ctx.0500.i = phi ptr [ %ctx.0.i386, %err_out.i.if.then332.i_crit_edge ], [ null, %if.end99.i.if.then332.i_crit_edge ]
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %562, i32 0, i32 8
  %732 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_commit_pages_after_write, ptr noundef %733, ptr noundef nonnull @.str.41) #8
  %734 = getelementptr inbounds %struct.page, ptr %558, i32 0, i32 1
  %735 = ptrtoint ptr %734 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load volatile i32, ptr %734, align 4
  %and.i.i478.i = and i32 %736, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i478.i)
  %tobool.not.i.i479.i = icmp eq i32 %and.i.i478.i, 0
  br i1 %tobool.not.i.i479.i, label %if.end.i.i482.i, label %if.then.i.i481.i, !prof !121

if.then.i.i481.i:                                 ; preds = %if.then332.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i480.i = add i32 %736, -1
  br label %_compound_head.exit.i486.i

if.end.i.i482.i:                                  ; preds = %if.then332.i
  call void @__sanitizer_cov_trace_pc() #10
  %737 = ptrtoint ptr %558 to i32
  br label %_compound_head.exit.i486.i

_compound_head.exit.i486.i:                       ; preds = %if.end.i.i482.i, %if.then.i.i481.i
  %retval.0.i.i483.i = phi i32 [ %sub.i.i480.i, %if.then.i.i481.i ], [ %737, %if.end.i.i482.i ]
  %738 = inttoptr i32 %retval.0.i.i483.i to ptr
  %739 = getelementptr inbounds %struct.page, ptr %738, i32 0, i32 1
  %740 = ptrtoint ptr %739 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load volatile i32, ptr %739, align 4
  %and.i.i.i.i484.i = and i32 %741, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i484.i)
  %tobool.not.i.i.i485.i = icmp eq i32 %and.i.i.i.i484.i, 0
  br i1 %tobool.not.i.i.i485.i, label %folio_flags.exit.i.i489.i, label %if.then.i.i.i487.i, !prof !121

if.then.i.i.i487.i:                               ; preds = %_compound_head.exit.i486.i
  call void @__sanitizer_cov_trace_pc() #10
  %742 = inttoptr i32 %retval.0.i.i483.i to ptr
  call void @dump_page(ptr noundef %742, ptr noundef nonnull @.str.38) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

folio_flags.exit.i.i489.i:                        ; preds = %_compound_head.exit.i486.i
  %743 = ptrtoint ptr %738 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load volatile i32, ptr %738, align 4
  %745 = and i32 %744, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %745)
  %tobool.i.not.i488.i = icmp eq i32 %745, 0
  br i1 %tobool.i.not.i488.i, label %if.else338.i, label %PageUptodate.exit492.i

PageUptodate.exit492.i:                           ; preds = %folio_flags.exit.i.i489.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %746 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_commit_pages_after_write, ptr noundef %747, ptr noundef nonnull @.str.42) #8
  %call337.i = call i32 @__set_page_dirty_nobuffers(ptr noundef nonnull %558) #8
  br label %if.end343.i

if.else338.i:                                     ; preds = %folio_flags.exit.i.i489.i
  call void @__sanitizer_cov_trace_pc() #10
  %748 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %i_sb.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_commit_pages_after_write, ptr noundef %749, ptr noundef nonnull @.str.43) #8
  br label %if.end343.i

if.else341.i:                                     ; preds = %err_out.i.if.else341.i_crit_edge, %if.end111.i.if.else341.i_crit_edge
  %err.0510.i = phi i32 [ %err.0.i, %err_out.i.if.else341.i_crit_edge ], [ -5, %if.end111.i.if.else341.i_crit_edge ]
  %m.0509.i = phi ptr [ %m.0.i387, %err_out.i.if.else341.i_crit_edge ], [ %call95.i, %if.end111.i.if.else341.i_crit_edge ]
  %ctx.0508.i = phi ptr [ %ctx.0.i386, %err_out.i.if.else341.i_crit_edge ], [ %call100.i, %if.end111.i.if.else341.i_crit_edge ]
  %i_sb342.i = getelementptr inbounds %struct.inode, ptr %562, i32 0, i32 8
  %750 = ptrtoint ptr %i_sb342.i to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %i_sb342.i, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_commit_pages_after_write, ptr noundef %751, ptr noundef nonnull @.str.44, i32 noundef %err.0510.i) #8
  %vol.i = getelementptr i8, ptr %562, i32 -448
  %752 = ptrtoint ptr %vol.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %vol.i, align 8
  %flags.i.i388 = getelementptr inbounds %struct.ntfs_volume, ptr %753, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i388) #8
  br label %if.end343.i

if.end343.i:                                      ; preds = %if.else341.i, %if.else338.i, %PageUptodate.exit492.i
  %m.0501.i = phi ptr [ %m.0502.i, %PageUptodate.exit492.i ], [ %m.0502.i, %if.else338.i ], [ %m.0509.i, %if.else341.i ]
  %ctx.0499.i = phi ptr [ %ctx.0500.i, %PageUptodate.exit492.i ], [ %ctx.0500.i, %if.else338.i ], [ %ctx.0508.i, %if.else341.i ]
  %err.1.i = phi i32 [ 0, %PageUptodate.exit492.i ], [ -12, %if.else338.i ], [ %err.0510.i, %if.else341.i ]
  %tobool344.not.i = icmp eq ptr %ctx.0499.i, null
  br i1 %tobool344.not.i, label %if.end343.i.if.end346.i_crit_edge, label %if.then345.i

if.end343.i.if.end346.i_crit_edge:                ; preds = %if.end343.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end346.i

if.then345.i:                                     ; preds = %if.end343.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.0499.i) #8
  br label %if.end346.i

if.end346.i:                                      ; preds = %if.then345.i, %if.end343.i.if.end346.i_crit_edge
  %tobool347.not.i = icmp eq ptr %m.0501.i, null
  br i1 %tobool347.not.i, label %if.end346.i.if.end139_crit_edge, label %if.then348.i

if.end346.i.if.end139_crit_edge:                  ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then348.i:                                     ; preds = %if.end346.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @unmap_mft_record(ptr noundef %base_ni.0.i348) #8
  br label %if.end139

if.end139:                                        ; preds = %if.then348.i, %if.end346.i.if.end139_crit_edge, %mark_mft_record_dirty.exit.i, %if.then198.i.i, %if.end194.i.i.if.end139_crit_edge, %mark_mft_record_dirty.exit.i.i, %if.then60.i.i, %ntfs_flush_dcache_pages.exit.if.end139_crit_edge
  %status.1 = phi i32 [ 0, %ntfs_flush_dcache_pages.exit.if.end139_crit_edge ], [ 0, %mark_mft_record_dirty.exit.i ], [ %err.1.i, %if.then348.i ], [ %err.1.i, %if.end346.i.if.end139_crit_edge ], [ 0, %if.then60.i.i ], [ 0, %mark_mft_record_dirty.exit.i.i ], [ %err.0293297.i.i, %if.then198.i.i ], [ -12, %if.end194.i.i.if.end139_crit_edge ]
  br label %do.body140

do.body140:                                       ; preds = %put_page.exit409.do.body140_crit_edge, %if.end139
  %do_pages.3 = phi i32 [ %do_pages.11387, %if.end139 ], [ %dec141, %put_page.exit409.do.body140_crit_edge ]
  %dec141 = add i32 %do_pages.3, -1
  %arrayidx142 = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %dec141
  %754 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %arrayidx142, align 4
  call void @unlock_page(ptr noundef %755) #8
  %756 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %arrayidx142, align 4
  %758 = getelementptr inbounds %struct.page, ptr %757, i32 0, i32 1
  %759 = ptrtoint ptr %758 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load volatile i32, ptr %758, align 4
  %and.i.i390 = and i32 %760, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i390)
  %tobool.not.i.i391 = icmp eq i32 %and.i.i390, 0
  br i1 %tobool.not.i.i391, label %if.end.i.i394, label %if.then.i.i393, !prof !121

if.then.i.i393:                                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i392 = add i32 %760, -1
  br label %_compound_head.exit.i399

if.end.i.i394:                                    ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  %761 = ptrtoint ptr %757 to i32
  br label %_compound_head.exit.i399

_compound_head.exit.i399:                         ; preds = %if.end.i.i394, %if.then.i.i393
  %retval.0.i.i395 = phi i32 [ %sub.i.i392, %if.then.i.i393 ], [ %761, %if.end.i.i394 ]
  %762 = inttoptr i32 %retval.0.i.i395 to ptr
  %_refcount.i.i.i.i.i396 = getelementptr inbounds %struct.page, ptr %762, i32 0, i32 3
  %call.i.i.i.i.i.i.i397 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i396, i32 noundef 4) #8
  %763 = ptrtoint ptr %_refcount.i.i.i.i.i396 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load volatile i32, ptr %_refcount.i.i.i.i.i396, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %764)
  %cmp.i.i.i.i398 = icmp eq i32 %764, 0
  br i1 %cmp.i.i.i.i398, label %if.then.i.i.i.i400, label %do.end5.i.i.i.i404, !prof !120

if.then.i.i.i.i400:                               ; preds = %_compound_head.exit.i399
  call void @__sanitizer_cov_trace_pc() #10
  %765 = inttoptr i32 %retval.0.i.i395 to ptr
  call void @dump_page(ptr noundef %765, ptr noundef nonnull @.str.14) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !156
  unreachable

do.end5.i.i.i.i404:                               ; preds = %_compound_head.exit.i399
  %call.i.i.i10.i.i.i.i401 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i396, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !157
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i396, i32 1, i32 3, i32 1) #8
  %766 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i396, ptr %_refcount.i.i.i.i.i396, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i396) #8, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i.i.i402 = extractvalue { i32, i32 } %766, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i402)
  %cmp.i.i.i.i.i.i.i403 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i402, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_perform_write, %if.then.i.i.i.i.i406)) #8
          to label %folio_put_testzero.exit.i.i407 [label %if.then.i.i.i.i.i406], !srcloc !160

if.then.i.i.i.i.i406:                             ; preds = %do.end5.i.i.i.i404
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i405 = zext i1 %cmp.i.i.i.i.i.i.i403 to i32
  call void @__page_ref_mod_and_test(ptr noundef %762, i32 noundef -1, i32 noundef %conv.i.i.i.i.i405) #8
  br label %folio_put_testzero.exit.i.i407

folio_put_testzero.exit.i.i407:                   ; preds = %if.then.i.i.i.i.i406, %do.end5.i.i.i.i404
  br i1 %cmp.i.i.i.i.i.i.i403, label %if.then.i4.i408, label %folio_put_testzero.exit.i.i407.put_page.exit409_crit_edge

folio_put_testzero.exit.i.i407.put_page.exit409_crit_edge: ; preds = %folio_put_testzero.exit.i.i407
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit409

if.then.i4.i408:                                  ; preds = %folio_put_testzero.exit.i.i407
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %762) #8
  br label %put_page.exit409

put_page.exit409:                                 ; preds = %if.then.i4.i408, %folio_put_testzero.exit.i.i407.put_page.exit409_crit_edge
  %tobool145.not = icmp eq i32 %dec141, 0
  br i1 %tobool145.not, label %do.end146, label %put_page.exit409.do.body140_crit_edge

put_page.exit409.do.body140_crit_edge:            ; preds = %put_page.exit409
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body140

do.end146:                                        ; preds = %put_page.exit409
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %cmp147 = icmp slt i32 %status.1, 0
  br i1 %cmp147, label %if.then155, label %if.end156, !prof !120

if.then155:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #10
  call void @iov_iter_revert(ptr noundef %i, i32 noundef %add.i322) #8
  br label %do.end197

if.end156:                                        ; preds = %do.end146
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1876, i32 noundef 0) #8
  %call.i410 = call i32 @__cond_resched() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i322, i32 %bytes.21386)
  %cmp158 = icmp ult i32 %add.i322, %bytes.21386
  br i1 %cmp158, label %if.then166, label %if.end177, !prof !120

if.then166:                                       ; preds = %if.end156
  call void @iov_iter_revert(ptr noundef %i, i32 noundef %add.i322) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i322)
  %tobool167.not = icmp eq i32 %add.i322, 0
  %767 = call i32 @llvm.umin.i32(i32 %bytes.21386, i32 %sub)
  %bytes.3 = select i1 %tobool167.not, i32 %767, i32 %add.i322
  %call79 = call i32 @fault_in_iov_iter_readable(ptr noundef %i, i32 noundef %bytes.3) #8
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then166.if.end88_crit_edge, label %if.then166.do.end197_crit_edge, !prof !121

if.then166.do.end197_crit_edge:                   ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end197

if.then166.if.end88_crit_edge:                    ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.end177:                                        ; preds = %if.end156
  %conv178 = zext i32 %add.i322 to i64
  %add = add i64 %pos.addr.0, %conv178
  %add179 = add i32 %add.i322, %written.0
  call void @balance_dirty_pages_ratelimited(ptr noundef %1) #8
  %768 = call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i = and i32 %768, -16384
  %769 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %769, i32 0, i32 2
  %770 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %771, i32 0, i32 1
  %772 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %stack.i.i.i, align 4
  %774 = ptrtoint ptr %773 to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load volatile i32, ptr %773, align 4
  %and1.i.i.i.i.i = and i32 %775, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i411 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i411, label %if.end177.do.cond194_crit_edge, label %fatal_signal_pending.exit

if.end177.do.cond194_crit_edge:                   ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond194

fatal_signal_pending.exit:                        ; preds = %if.end177
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %771, i32 0, i32 116, i32 1
  %776 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load i32, ptr %signal.i.i, align 4
  %778 = and i32 %777, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %778)
  %tobool182.not = icmp eq i32 %778, 0
  br i1 %tobool182.not, label %fatal_signal_pending.exit.do.cond194_crit_edge, label %fatal_signal_pending.exit.do.end197_crit_edge

fatal_signal_pending.exit.do.end197_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end197

fatal_signal_pending.exit.do.cond194_crit_edge:   ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond194

do.cond194:                                       ; preds = %fatal_signal_pending.exit.do.cond194_crit_edge, %if.end177.do.cond194_crit_edge
  %779 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %count.i, align 8
  %tobool196.not = icmp eq i32 %780, 0
  br i1 %tobool196.not, label %do.cond194.do.end197_crit_edge, label %do.cond194.do.body_crit_edge

do.cond194.do.body_crit_edge:                     ; preds = %do.cond194
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.cond194.do.end197_crit_edge:                   ; preds = %do.cond194
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end197

do.end197:                                        ; preds = %do.cond194.do.end197_crit_edge, %fatal_signal_pending.exit.do.end197_crit_edge, %if.then166.do.end197_crit_edge, %if.then155, %put_page.exit.do.end197_crit_edge, %if.end88.do.end197_crit_edge, %if.end72.do.end197_crit_edge, %if.else, %if.then47.do.end197_crit_edge
  %written.1444 = phi i32 [ %written.0, %if.else ], [ %written.0, %if.then47.do.end197_crit_edge ], [ %written.0, %if.then155 ], [ %written.0, %put_page.exit.do.end197_crit_edge ], [ %written.0, %if.end88.do.end197_crit_edge ], [ %written.0, %if.then166.do.end197_crit_edge ], [ %written.0, %if.end72.do.end197_crit_edge ], [ %add179, %do.cond194.do.end197_crit_edge ], [ %add179, %fatal_signal_pending.exit.do.end197_crit_edge ]
  %status.2443 = phi i32 [ -5, %if.else ], [ -12, %if.then47.do.end197_crit_edge ], [ %status.1, %if.then155 ], [ %retval.0.i, %put_page.exit.do.end197_crit_edge ], [ -14, %if.then166.do.end197_crit_edge ], [ %call89, %if.end88.do.end197_crit_edge ], [ -14, %if.end72.do.end197_crit_edge ], [ %status.1, %do.cond194.do.end197_crit_edge ], [ -4, %fatal_signal_pending.exit.do.end197_crit_edge ]
  %781 = ptrtoint ptr %cached_page to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %cached_page, align 4
  %tobool198.not = icmp eq ptr %782, null
  br i1 %tobool198.not, label %do.end197.if.end200_crit_edge, label %if.then199

do.end197.if.end200_crit_edge:                    ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

if.then199:                                       ; preds = %do.end197
  %783 = getelementptr inbounds %struct.page, ptr %782, i32 0, i32 1
  %784 = ptrtoint ptr %783 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load volatile i32, ptr %783, align 4
  %and.i.i413 = and i32 %785, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i413)
  %tobool.not.i.i414 = icmp eq i32 %and.i.i413, 0
  br i1 %tobool.not.i.i414, label %if.end.i.i417, label %if.then.i.i416, !prof !121

if.then.i.i416:                                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i415 = add i32 %785, -1
  br label %_compound_head.exit.i422

if.end.i.i417:                                    ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #10
  %786 = ptrtoint ptr %782 to i32
  br label %_compound_head.exit.i422

_compound_head.exit.i422:                         ; preds = %if.end.i.i417, %if.then.i.i416
  %retval.0.i.i418 = phi i32 [ %sub.i.i415, %if.then.i.i416 ], [ %786, %if.end.i.i417 ]
  %787 = inttoptr i32 %retval.0.i.i418 to ptr
  %_refcount.i.i.i.i.i419 = getelementptr inbounds %struct.page, ptr %787, i32 0, i32 3
  %call.i.i.i.i.i.i.i420 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i419, i32 noundef 4) #8
  %788 = ptrtoint ptr %_refcount.i.i.i.i.i419 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load volatile i32, ptr %_refcount.i.i.i.i.i419, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %789)
  %cmp.i.i.i.i421 = icmp eq i32 %789, 0
  br i1 %cmp.i.i.i.i421, label %if.then.i.i.i.i423, label %do.end5.i.i.i.i427, !prof !120

if.then.i.i.i.i423:                               ; preds = %_compound_head.exit.i422
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %787, ptr noundef nonnull @.str.14) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !156
  unreachable

do.end5.i.i.i.i427:                               ; preds = %_compound_head.exit.i422
  %call.i.i.i10.i.i.i.i424 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i419, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !157
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i419, i32 1, i32 3, i32 1) #8
  %790 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i419, ptr %_refcount.i.i.i.i.i419, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i419) #8, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i.i.i425 = extractvalue { i32, i32 } %790, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i425)
  %cmp.i.i.i.i.i.i.i426 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i425, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_perform_write, %if.then.i.i.i.i.i429)) #8
          to label %folio_put_testzero.exit.i.i430 [label %if.then.i.i.i.i.i429], !srcloc !160

if.then.i.i.i.i.i429:                             ; preds = %do.end5.i.i.i.i427
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i428 = zext i1 %cmp.i.i.i.i.i.i.i426 to i32
  call void @__page_ref_mod_and_test(ptr noundef %787, i32 noundef -1, i32 noundef %conv.i.i.i.i.i428) #8
  br label %folio_put_testzero.exit.i.i430

folio_put_testzero.exit.i.i430:                   ; preds = %if.then.i.i.i.i.i429, %do.end5.i.i.i.i427
  br i1 %cmp.i.i.i.i.i.i.i426, label %if.then.i4.i431, label %folio_put_testzero.exit.i.i430.if.end200_crit_edge

folio_put_testzero.exit.i.i430.if.end200_crit_edge: ; preds = %folio_put_testzero.exit.i.i430
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200

if.then.i4.i431:                                  ; preds = %folio_put_testzero.exit.i.i430
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %787) #8
  br label %if.end200

if.end200:                                        ; preds = %if.then.i4.i431, %folio_put_testzero.exit.i.i430.if.end200_crit_edge, %do.end197.if.end200_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.1444)
  %tobool201.not = icmp eq i32 %written.1444, 0
  %cond = select i1 %tobool201.not, ptr @.str.20, ptr @.str.19
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1897, ptr noundef nonnull @__func__.ntfs_perform_write, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond, i32 noundef %written.1444, i32 noundef %status.2443) #8
  %status.2.written.1 = select i1 %tobool201.not, i32 %status.2443, i32 %written.1444
  br label %cleanup204

cleanup204:                                       ; preds = %if.end200, %cleanup
  %retval.1 = phi i32 [ %status.2.written.1, %if.end200 ], [ %spec.store.select, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cached_page) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages) #8
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_remove_privs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_attr_extend_allocation(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_attr_extend_initialized(ptr noundef %ni, i64 noundef %new_init_size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1
  %call1 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %ni) #8
  %initialized_size = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 1
  %0 = ptrtoint ptr %initialized_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %initialized_size, align 8
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %vfs_inode.i)
  %allocated_size = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 2
  %2 = ptrtoint ptr %allocated_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %allocated_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %new_init_size)
  %cmp4 = icmp slt i64 %3, %new_init_size
  br i1 %cmp4, label %do.body7, label %do.body15, !prof !120

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #8, !srcloc !179
  unreachable

do.body15:                                        ; preds = %entry
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %ni, i32 noundef %call1) #8
  %i_ino = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_ino, align 8
  %type = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 8
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 123, ptr noundef nonnull @__func__.ntfs_attr_extend_initialized, ptr noundef nonnull @.str.9, i32 noundef %5, i32 noundef %8, i64 noundef %1, i64 noundef %new_init_size, i64 noundef %call2) #8
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool25.not = icmp eq i32 %11, 0
  br i1 %tobool25.not, label %do.body15.if.end27_crit_edge, label %if.else

do.body15.if.end27_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.else:                                          ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 21
  %12 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.else, %do.body15.if.end27_crit_edge
  %base_ni.0 = phi ptr [ %13, %if.else ], [ %ni, %do.body15.if.end27_crit_edge ]
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool29.not = icmp eq i32 %16, 0
  br i1 %tobool29.not, label %do.body32, label %do_non_resident_extend

do.body32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %call2)
  %cmp33.not = icmp eq i64 %1, %call2
  br i1 %cmp33.not, label %do.end50, label %do.body42, !prof !121

do.body42:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #8, !srcloc !180
  unreachable

do.end50:                                         ; preds = %do.body32
  %call51 = tail call ptr @map_mft_record(ptr noundef %base_ni.0) #8
  %cmp.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then53, label %if.end55

if.then53:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call51 to i32
  br label %if.end423

if.end55:                                         ; preds = %do.end50
  %call56 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %base_ni.0, ptr noundef %call51) #8
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.end55.if.end420_crit_edge, label %if.end67, !prof !120

if.end55.if.end420_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end420

if.end67:                                         ; preds = %if.end55
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %name = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 9
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  %name_len = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 10
  %22 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %name_len, align 4
  %call69 = tail call i32 @ntfs_attr_lookup(i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call56) #8
  %24 = zext i32 %call69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call69, label %if.end67.if.then419_crit_edge [
    i32 0, label %if.end82
    i32 -2, label %if.then80
  ], !prof !144

if.end67.if.then419_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then419

if.then80:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then419

if.end82:                                         ; preds = %if.end67
  %25 = ptrtoint ptr %call56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call56, align 4
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call56, i32 0, i32 1
  %27 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %attr, align 4
  %non_resident = getelementptr inbounds %struct.ATTR_RECORD, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %non_resident to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %non_resident, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool84.not = icmp eq i8 %30, 0
  br i1 %tobool84.not, label %do.end100, label %do.body92, !prof !121

do.body92:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #8, !srcloc !181
  unreachable

do.end100:                                        ; preds = %if.end82
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %28, i32 0, i32 7
  %31 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %data, align 1
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %conv102 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %conv102)
  %cmp103.not = icmp eq i64 %1, %conv102
  br i1 %cmp103.not, label %do.end120, label %do.body112, !prof !121

do.body112:                                       ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 155, 0\0A.popsection", ""() #8, !srcloc !182
  unreachable

do.end120:                                        ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #10
  %value_offset = getelementptr inbounds %struct.anon.89, ptr %data, i32 0, i32 1
  %34 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %value_offset, align 1
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  %conv122 = zext i16 %36 to i32
  %add.ptr = getelementptr i8, ptr %28, i32 %conv122
  %add.ptr123 = getelementptr i8, ptr %add.ptr, i32 %33
  %37 = trunc i64 %new_init_size to i32
  %conv125 = sub i32 %37, %33
  %38 = call ptr @memset(ptr %add.ptr123, i32 0, i32 %conv125)
  %39 = tail call i32 @llvm.bswap.i32(i32 %37)
  %40 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %data, align 1
  %call136 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ni) #8
  tail call fastcc void @i_size_write(ptr noundef %vfs_inode.i, i64 noundef %new_init_size)
  %41 = ptrtoint ptr %initialized_size to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %new_init_size, ptr %initialized_size, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ni, i32 noundef %call136) #8
  br label %done

do_non_resident_extend:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %new_init_size)
  %cmp149 = icmp slt i64 %call2, %new_init_size
  br i1 %cmp149, label %if.then151, label %do_non_resident_extend.if.end234_crit_edge

do_non_resident_extend.if.end234_crit_edge:       ; preds = %do_non_resident_extend
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end234

if.then151:                                       ; preds = %do_non_resident_extend
  %call152 = tail call ptr @map_mft_record(ptr noundef %base_ni.0) #8
  %cmp.i569 = icmp ugt ptr %call152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i569, label %if.then154, label %if.end156

if.then154:                                       ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %call152 to i32
  br label %if.end423

if.end156:                                        ; preds = %if.then151
  %call157 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %base_ni.0, ptr noundef %call152) #8
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %if.end156.if.end420_crit_edge, label %if.end168, !prof !120

if.end156.if.end420_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end420

if.end168:                                        ; preds = %if.end156
  %43 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type, align 4
  %name170 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 9
  %45 = ptrtoint ptr %name170 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name170, align 8
  %name_len171 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 10
  %47 = ptrtoint ptr %name_len171 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %name_len171, align 4
  %call172 = tail call i32 @ntfs_attr_lookup(i32 noundef %44, ptr noundef %46, i32 noundef %48, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call157) #8
  %49 = zext i32 %call172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call172, label %if.end168.if.then419_crit_edge [
    i32 0, label %if.end185
    i32 -2, label %if.then183
  ], !prof !144

if.end168.if.then419_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then419

if.then183:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then419

if.end185:                                        ; preds = %if.end168
  %attr187 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call157, i32 0, i32 1
  %50 = ptrtoint ptr %attr187 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %attr187, align 4
  %non_resident189 = getelementptr inbounds %struct.ATTR_RECORD, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %non_resident189 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %non_resident189, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool190.not = icmp eq i8 %53, 0
  br i1 %tobool190.not, label %do.body200, label %do.body209, !prof !120

do.body200:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 196, 0\0A.popsection", ""() #8, !srcloc !183
  unreachable

do.body209:                                       ; preds = %if.end185
  %data_size = getelementptr inbounds %struct.ATTR_RECORD, ptr %51, i32 0, i32 7, i32 0, i32 6
  %54 = ptrtoint ptr %data_size to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %data_size, align 1
  %56 = tail call i64 @llvm.bswap.i64(i64 %55) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %56)
  %cmp212.not = icmp eq i64 %call2, %56
  br i1 %cmp212.not, label %do.end229, label %do.body221, !prof !121

do.body221:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #8, !srcloc !184
  unreachable

do.end229:                                        ; preds = %do.body209
  %57 = tail call i64 @llvm.bswap.i64(i64 %new_init_size) #8
  %58 = ptrtoint ptr %data_size to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %57, ptr %data_size, align 1
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call157, i32 0, i32 3
  %59 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ntfs_ino, align 4
  %page.i = getelementptr inbounds %struct._ntfs_inode, ptr %60, i32 0, i32 13
  %61 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %page.i, align 8
  tail call void @flush_dcache_page(ptr noundef %62) #8
  %63 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ntfs_ino, align 4
  %state.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %64, i32 0, i32 3
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i570, label %do.end229.mark_mft_record_dirty.exit_crit_edge

do.end229.mark_mft_record_dirty.exit_crit_edge:   ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_mft_record_dirty.exit

if.then.i570:                                     ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_mft_record_dirty(ptr noundef %64) #8
  br label %mark_mft_record_dirty.exit

mark_mft_record_dirty.exit:                       ; preds = %if.then.i570, %do.end229.mark_mft_record_dirty.exit_crit_edge
  tail call fastcc void @i_size_write(ptr noundef %vfs_inode.i, i64 noundef %new_init_size)
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call157) #8
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #8
  br label %if.end234

if.end234:                                        ; preds = %mark_mft_record_dirty.exit, %do_non_resident_extend.if.end234_crit_edge
  %i_mapping = getelementptr inbounds %struct.big_ntfs_inode, ptr %ni, i32 0, i32 1, i32 9
  %65 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_mapping, align 8
  %67 = lshr i64 %1, 12
  %conv235 = trunc i64 %67 to i32
  %sub236 = add i64 %new_init_size, 4095
  %68 = lshr i64 %sub236, 12
  %conv238 = trunc i64 %68 to i32
  br label %do.body239

do.body239:                                       ; preds = %put_page.exit.do.body239_crit_edge, %if.end234
  %index.0 = phi i32 [ %conv235, %if.end234 ], [ %add265, %put_page.exit.do.body239_crit_edge ]
  %call.i = tail call ptr @read_cache_page(ptr noundef %66, i32 noundef %index.0, ptr noundef null, ptr noundef null) #8
  %cmp.i571 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i571, label %if.then242, label %if.end244

if.then242:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %call.i to i32
  br label %err_out

if.end244:                                        ; preds = %do.body239
  %70 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %70, align 4
  %and.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !121

if.then.i.i:                                      ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %72, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %73, %if.end.i.i ]
  %74 = inttoptr i32 %retval.0.i.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp.i.not.i = icmp eq i32 %76, -1
  %77 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %70, align 4
  %and.i16.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !120

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !121

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %78, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %79, %if.end.i20.i ]
  %80 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %80, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !185
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !121

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %78, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %81, %if.end.i27.i ]
  %82 = inttoptr i32 %retval.0.i28.i to ptr
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %82, align 4
  %85 = and i32 %84, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool246.not = icmp eq i32 %85, 0
  br i1 %tobool246.not, label %do.body255, label %if.then253, !prof !121

if.then253:                                       ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @put_page(ptr noundef %call.i)
  br label %err_out

do.body255:                                       ; preds = %PageError.exit
  %call262 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ni) #8
  %add265 = add i32 %index.0, 1
  %conv266 = zext i32 %add265 to i64
  %shl = shl nuw nsw i64 %conv266, 12
  %86 = tail call i64 @llvm.smin.i64(i64 %shl, i64 %new_init_size)
  %87 = ptrtoint ptr %initialized_size to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %86, ptr %initialized_size, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ni, i32 noundef %call262) #8
  %call283 = tail call zeroext i1 @set_page_dirty(ptr noundef %call.i) #8
  %88 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %70, align 4
  %and.i.i572 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i572)
  %tobool.not.i.i573 = icmp eq i32 %and.i.i572, 0
  br i1 %tobool.not.i.i573, label %if.end.i.i576, label %if.then.i.i575, !prof !121

if.then.i.i575:                                   ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i574 = add i32 %89, -1
  br label %_compound_head.exit.i578

if.end.i.i576:                                    ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i578

_compound_head.exit.i578:                         ; preds = %if.end.i.i576, %if.then.i.i575
  %retval.0.i.i577 = phi i32 [ %sub.i.i574, %if.then.i.i575 ], [ %90, %if.end.i.i576 ]
  %91 = inttoptr i32 %retval.0.i.i577 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %91, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %92 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp.i.i.i.i = icmp eq i32 %93, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !120

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i578
  call void @__sanitizer_cov_trace_pc() #10
  %94 = inttoptr i32 %retval.0.i.i577 to ptr
  tail call void @dump_page(ptr noundef %94, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !156
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i578
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %95, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_attr_extend_initialized, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !160

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %91, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %91) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  tail call void @balance_dirty_pages_ratelimited(ptr noundef %66) #8
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 0) #8
  %call.i579 = tail call i32 @__cond_resched() #8
  %cmp287 = icmp ult i32 %add265, %conv238
  br i1 %cmp287, label %put_page.exit.do.body239_crit_edge, label %do.body290

put_page.exit.do.body239_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body239

do.body290:                                       ; preds = %put_page.exit
  %call297 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %ni) #8
  %96 = ptrtoint ptr %initialized_size to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %initialized_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %97, i64 %new_init_size)
  %cmp302.not = icmp eq i64 %97, %new_init_size
  br i1 %cmp302.not, label %do.body320, label %do.body311, !prof !121

do.body311:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 270, 0\0A.popsection", ""() #8, !srcloc !186
  unreachable

do.body320:                                       ; preds = %do.body290
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %ni, i32 noundef %call297) #8
  %call329 = tail call ptr @map_mft_record(ptr noundef %base_ni.0) #8
  %cmp.i580 = icmp ugt ptr %call329, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i580, label %if.then331, label %if.end333

if.then331:                                       ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %call329 to i32
  br label %err_out

if.end333:                                        ; preds = %do.body320
  %call334 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %base_ni.0, ptr noundef %call329) #8
  %tobool335.not = icmp eq ptr %call334, null
  br i1 %tobool335.not, label %if.end333.err_out_crit_edge, label %if.end345, !prof !120

if.end333.err_out_crit_edge:                      ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end345:                                        ; preds = %if.end333
  %99 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %type, align 4
  %name347 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 9
  %101 = ptrtoint ptr %name347 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %name347, align 8
  %name_len348 = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 10
  %103 = ptrtoint ptr %name_len348 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %name_len348, align 4
  %call349 = tail call i32 @ntfs_attr_lookup(i32 noundef %100, ptr noundef %102, i32 noundef %104, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call334) #8
  %105 = zext i32 %call349 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call349, label %if.end345.err_out_crit_edge [
    i32 0, label %if.end362
    i32 -2, label %if.then360
  ], !prof !144

if.end345.err_out_crit_edge:                      ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.then360:                                       ; preds = %if.end345
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end362:                                        ; preds = %if.end345
  %attr364 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call334, i32 0, i32 1
  %106 = ptrtoint ptr %attr364 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %attr364, align 4
  %non_resident366 = getelementptr inbounds %struct.ATTR_RECORD, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %non_resident366 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %non_resident366, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool367.not = icmp eq i8 %109, 0
  br i1 %tobool367.not, label %do.body377, label %do.end385, !prof !120

do.body377:                                       ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #8, !srcloc !187
  unreachable

do.end385:                                        ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %call334 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call334, align 4
  %112 = tail call i64 @llvm.bswap.i64(i64 %new_init_size) #8
  %initialized_size388 = getelementptr inbounds %struct.ATTR_RECORD, ptr %107, i32 0, i32 7, i32 0, i32 7
  %113 = ptrtoint ptr %initialized_size388 to i32
  call void @__asan_storeN_noabort(i32 %113, i32 8)
  store i64 %112, ptr %initialized_size388, align 1
  br label %done

done:                                             ; preds = %do.end385, %do.end120
  %ctx.1 = phi ptr [ %call334, %do.end385 ], [ %call56, %do.end120 ]
  %m.1 = phi ptr [ %111, %do.end385 ], [ %26, %do.end120 ]
  %ntfs_ino389 = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %ctx.1, i32 0, i32 3
  %114 = ptrtoint ptr %ntfs_ino389 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ntfs_ino389, align 4
  %page.i581 = getelementptr inbounds %struct._ntfs_inode, ptr %115, i32 0, i32 13
  %116 = ptrtoint ptr %page.i581 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %page.i581, align 8
  tail call void @flush_dcache_page(ptr noundef %117) #8
  %118 = ptrtoint ptr %ntfs_ino389 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ntfs_ino389, align 4
  %state.i.i582 = getelementptr inbounds %struct._ntfs_inode, ptr %119, i32 0, i32 3
  %call.i.i583 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i582) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i583)
  %tobool.not.i584 = icmp eq i32 %call.i.i583, 0
  br i1 %tobool.not.i584, label %if.then.i585, label %done.mark_mft_record_dirty.exit586_crit_edge

done.mark_mft_record_dirty.exit586_crit_edge:     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_mft_record_dirty.exit586

if.then.i585:                                     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_mft_record_dirty(ptr noundef %119) #8
  br label %mark_mft_record_dirty.exit586

mark_mft_record_dirty.exit586:                    ; preds = %if.then.i585, %done.mark_mft_record_dirty.exit586_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.1) #8
  %tobool394.not = icmp eq ptr %m.1, null
  br i1 %tobool394.not, label %mark_mft_record_dirty.exit586.if.end396_crit_edge, label %if.then395

mark_mft_record_dirty.exit586.if.end396_crit_edge: ; preds = %mark_mft_record_dirty.exit586
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end396

if.then395:                                       ; preds = %mark_mft_record_dirty.exit586
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #8
  br label %if.end396

if.end396:                                        ; preds = %if.then395, %mark_mft_record_dirty.exit586.if.end396_crit_edge
  %call397 = tail call fastcc i64 @i_size_read(ptr noundef %vfs_inode.i)
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 303, ptr noundef nonnull @__func__.ntfs_attr_extend_initialized, ptr noundef nonnull @.str.10, i64 noundef %new_init_size, i64 noundef %call397) #8
  br label %cleanup

err_out:                                          ; preds = %if.then360, %if.end345.err_out_crit_edge, %if.end333.err_out_crit_edge, %if.then331, %if.then253, %if.then242
  %err.0 = phi i32 [ %69, %if.then242 ], [ -5, %if.then253 ], [ %98, %if.then331 ], [ -5, %if.then360 ], [ -12, %if.end333.err_out_crit_edge ], [ %call349, %if.end345.err_out_crit_edge ]
  %ctx.2 = phi ptr [ null, %if.then242 ], [ null, %if.then253 ], [ null, %if.then331 ], [ %call334, %if.then360 ], [ null, %if.end333.err_out_crit_edge ], [ %call334, %if.end345.err_out_crit_edge ]
  %m.2 = phi ptr [ null, %if.then242 ], [ null, %if.then253 ], [ null, %if.then331 ], [ %call329, %if.then360 ], [ %call329, %if.end333.err_out_crit_edge ], [ %call329, %if.end345.err_out_crit_edge ]
  %call405 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %ni) #8
  %120 = ptrtoint ptr %initialized_size to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %1, ptr %initialized_size, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %ni, i32 noundef %call405) #8
  %tobool418.not = icmp eq ptr %ctx.2, null
  br i1 %tobool418.not, label %err_out.if.end420_crit_edge, label %err_out.if.then419_crit_edge

err_out.if.then419_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then419

err_out.if.end420_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end420

if.then419:                                       ; preds = %err_out.if.then419_crit_edge, %if.then183, %if.end168.if.then419_crit_edge, %if.then80, %if.end67.if.then419_crit_edge
  %m.3603 = phi ptr [ %m.2, %err_out.if.then419_crit_edge ], [ %call152, %if.end168.if.then419_crit_edge ], [ %call51, %if.end67.if.then419_crit_edge ], [ %call51, %if.then80 ], [ %call152, %if.then183 ]
  %ctx.3602 = phi ptr [ %ctx.2, %err_out.if.then419_crit_edge ], [ %call157, %if.end168.if.then419_crit_edge ], [ %call56, %if.end67.if.then419_crit_edge ], [ %call56, %if.then80 ], [ %call157, %if.then183 ]
  %err.1601 = phi i32 [ %err.0, %err_out.if.then419_crit_edge ], [ %call172, %if.end168.if.then419_crit_edge ], [ %call69, %if.end67.if.then419_crit_edge ], [ -5, %if.then80 ], [ -5, %if.then183 ]
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.3602) #8
  br label %if.end420

if.end420:                                        ; preds = %if.then419, %err_out.if.end420_crit_edge, %if.end156.if.end420_crit_edge, %if.end55.if.end420_crit_edge
  %m.3592 = phi ptr [ %m.3603, %if.then419 ], [ %m.2, %err_out.if.end420_crit_edge ], [ %call152, %if.end156.if.end420_crit_edge ], [ %call51, %if.end55.if.end420_crit_edge ]
  %err.1591 = phi i32 [ %err.1601, %if.then419 ], [ %err.0, %err_out.if.end420_crit_edge ], [ -12, %if.end156.if.end420_crit_edge ], [ -12, %if.end55.if.end420_crit_edge ]
  %tobool421.not = icmp eq ptr %m.3592, null
  br i1 %tobool421.not, label %if.end420.if.end423_crit_edge, label %if.then422

if.end420.if.end423_crit_edge:                    ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end423

if.then422:                                       ; preds = %if.end420
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #8
  br label %if.end423

if.end423:                                        ; preds = %if.then422, %if.end420.if.end423_crit_edge, %if.then154, %if.then53
  %err.1591607 = phi i32 [ %err.1591, %if.then422 ], [ %err.1591, %if.end420.if.end423_crit_edge ], [ %42, %if.then154 ], [ %17, %if.then53 ]
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 314, ptr noundef nonnull @__func__.ntfs_attr_extend_initialized, ptr noundef nonnull @.str.11, i32 noundef %err.1591607) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end423, %if.end396
  %retval.0 = phi i32 [ %err.1591607, %if.end423 ], [ 0, %if.end396 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !188
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #8
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !189
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !120

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !190
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !192
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !193
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !194
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !195
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !196
  %9 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !197
  %18 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !198
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !199
  %37 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !121

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !200
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #8
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #8
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !201
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !202
  %48 = tail call i32 @llvm.read_register.i32(metadata !110) #8
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mark_mft_record_dirty(ptr noundef %ni) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %state.i = getelementptr inbounds %struct._ntfs_inode, ptr %ni, i32 0, i32 3
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_mft_record_dirty(ptr noundef %ni) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !121

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit

_compound_head.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %3, %if.end.i ]
  %4 = inttoptr i32 %retval.0.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %do.end5.i.i.i, !prof !120

if.then.i.i.i:                                    ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !156
  unreachable

do.end5.i.i.i:                                    ; preds = %_compound_head.exit
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@put_page, %if.then.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i], !srcloc !160

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %4, i32 noundef -1, i32 noundef %conv.i.i.i.i) #8
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i4, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_put.exit

if.then.i4:                                       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %4) #8
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i4, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_mft_record_dirty(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_truncate(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_attr_vcn_to_lcn_nolock(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_iov_iter_readable(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ntfs_grab_cache_pages(ptr noundef %mapping, i32 noundef %index, i32 noundef %nr_pages, ptr nocapture noundef %pages, ptr nocapture noundef %cached_page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %tobool.not = icmp eq i32 %nr_pages, 0
  br i1 %tobool.not, label %do.body4, label %do.body10.preheader, !prof !120

do.body10.preheader:                              ; preds = %entry
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  br label %do.body10

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #8, !srcloc !203
  unreachable

do.body10:                                        ; preds = %do.cond45.do.body10_crit_edge, %do.body10.preheader
  %index.addr.0 = phi i32 [ %index.addr.1, %do.cond45.do.body10_crit_edge ], [ %index, %do.body10.preheader ]
  %err.0 = phi i32 [ %err.2, %do.cond45.do.body10_crit_edge ], [ 0, %do.body10.preheader ]
  %nr.0 = phi i32 [ %nr.1, %do.cond45.do.body10_crit_edge ], [ 0, %do.body10.preheader ]
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index.addr.0, i32 noundef 3, i32 noundef 0) #8
  %arrayidx = getelementptr ptr, ptr %pages, i32 %nr.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.then13, label %do.body10.if.end43_crit_edge

do.body10.if.end43_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then13:                                        ; preds = %do.body10
  %1 = ptrtoint ptr %cached_page to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cached_page, align 4
  %tobool14.not = icmp eq ptr %2, null
  br i1 %tobool14.not, label %if.then15, label %if.then13.if.end28_crit_edge

if.then13.if.end28_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then15:                                        ; preds = %if.then13
  %3 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gfp_mask.i.i, align 4
  %call38.i.i.i.i.i = tail call ptr @__folio_alloc(i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %5 = ptrtoint ptr %cached_page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call38.i.i.i.i.i, ptr %cached_page, align 4
  %tobool17.not = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool17.not, label %if.then15.err_out_crit_edge, label %if.then15.if.end28_crit_edge, !prof !120

if.then15.if.end28_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then15.err_out_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end28:                                         ; preds = %if.then15.if.end28_crit_edge, %if.then13.if.end28_crit_edge
  %6 = ptrtoint ptr %cached_page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cached_page, align 4
  %8 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gfp_mask.i.i, align 4
  %and.i = and i32 %9, 3264
  %call30 = tail call i32 @add_to_page_cache_lru(ptr noundef %7, ptr noundef %mapping, i32 noundef %index.addr.0, i32 noundef %and.i) #8
  %10 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call30, label %if.end28.err_out_crit_edge [
    i32 0, label %if.end41
    i32 -17, label %if.end28.do.cond45_crit_edge
  ], !prof !144

if.end28.do.cond45_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond45

if.end28.err_out_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %cached_page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cached_page, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %arrayidx, align 4
  store ptr null, ptr %cached_page, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %do.body10.if.end43_crit_edge
  %err.1 = phi i32 [ %err.0, %do.body10.if.end43_crit_edge ], [ 0, %if.end41 ]
  %inc = add i32 %index.addr.0, 1
  %inc44 = add i32 %nr.0, 1
  br label %do.cond45

do.cond45:                                        ; preds = %if.end43, %if.end28.do.cond45_crit_edge
  %index.addr.1 = phi i32 [ %inc, %if.end43 ], [ %index.addr.0, %if.end28.do.cond45_crit_edge ]
  %err.2 = phi i32 [ %err.1, %if.end43 ], [ %call30, %if.end28.do.cond45_crit_edge ]
  %nr.1 = phi i32 [ %inc44, %if.end43 ], [ %nr.0, %if.end28.do.cond45_crit_edge ]
  %cmp46 = icmp ult i32 %nr.1, %nr_pages
  br i1 %cmp46, label %do.cond45.do.body10_crit_edge, label %do.cond45.out_crit_edge

do.cond45.out_crit_edge:                          ; preds = %do.cond45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.cond45.do.body10_crit_edge:                    ; preds = %do.cond45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body10

out:                                              ; preds = %put_page.exit.out_crit_edge, %err_out.out_crit_edge, %do.cond45.out_crit_edge
  %err.3 = phi i32 [ %err.4, %err_out.out_crit_edge ], [ %err.4, %put_page.exit.out_crit_edge ], [ %err.2, %do.cond45.out_crit_edge ]
  ret i32 %err.3

err_out:                                          ; preds = %if.end28.err_out_crit_edge, %if.then15.err_out_crit_edge
  %err.4 = phi i32 [ -12, %if.then15.err_out_crit_edge ], [ %call30, %if.end28.err_out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0)
  %cmp4878 = icmp sgt i32 %nr.0, 0
  br i1 %cmp4878, label %err_out.while.body_crit_edge, label %err_out.out_crit_edge

err_out.out_crit_edge:                            ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

err_out.while.body_crit_edge:                     ; preds = %err_out
  br label %while.body

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %err_out.while.body_crit_edge
  %nr.279 = phi i32 [ %dec, %put_page.exit.while.body_crit_edge ], [ %nr.0, %err_out.while.body_crit_edge ]
  %dec = add nsw i32 %nr.279, -1
  %arrayidx49 = getelementptr ptr, ptr %pages, i32 %dec
  %14 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx49, align 4
  tail call void @unlock_page(ptr noundef %15) #8
  %16 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx49, align 4
  %18 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %18, align 4
  %and.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !121

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %20, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %17 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %21, %if.end.i.i ]
  %22 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %23 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !120

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !156
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !158
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__ntfs_grab_cache_pages, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !160

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %22, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %22) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %cmp48 = icmp ugt i32 %nr.279, 1
  br i1 %cmp48, label %put_page.exit.while.body_crit_edge, label %put_page.exit.out_crit_edge

put_page.exit.out_crit_edge:                      ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_to_page_cache_lru(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__folio_alloc(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @PageUptodate(ptr noundef %page) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !121

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !121

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.38) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

folio_flags.exit.i:                               ; preds = %_compound_head.exit
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge, label %do.end.i

folio_flags.exit.i.folio_test_uptodate.exit_crit_edge: ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_test_uptodate.exit

do.end.i:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %do.end.i, %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge
  %.lobit = lshr exact i32 %10, 2
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_rl_vcn_to_lcn(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_map_runlist_nolock(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_cluster_alloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_runlists_merge(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_cluster_free_from_rl(ptr noundef %vol, ptr noundef %rl) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %lcnbmp_lock = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 41
  tail call void @down_write(ptr noundef %lcnbmp_lock) #8
  %call = tail call i32 @ntfs_cluster_free_from_rl_nolock(ptr noundef %vol, ptr noundef %rl) #8
  tail call void @up_write(ptr noundef %lcnbmp_lock) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_rl_find_vcn_nolock(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_get_size_for_mapping_pairs(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_record_resize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_mapping_pairs_build(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_reinit_search_ctx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_rl_punch_nolock(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_cluster_free_from_rl_nolock(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ntfs_bitmap_set_bits_in_run(ptr noundef, i64 noundef, i64 noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter_atomic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ntfs_write_inode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !36, !38, !40, !42, !43, !45, !47, !49, !50, !51, !53, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @ntfs_file_ops, !1, !"ntfs_file_ops", i1 false, i1 false}
!1 = !{!"../fs/ntfs/file.c", i32 1991, i32 30}
!2 = !{ptr @ntfs_file_inode_ops, !3, !"ntfs_file_inode_ops", i1 false, i1 false}
!3 = !{!"../fs/ntfs/file.c", i32 2003, i32 31}
!4 = !{ptr @ntfs_empty_file_ops, !5, !"ntfs_empty_file_ops", i1 false, i1 false}
!5 = !{!"../fs/ntfs/file.c", i32 2009, i32 30}
!6 = !{ptr @ntfs_empty_inode_ops, !7, !"ntfs_empty_inode_ops", i1 false, i1 false}
!7 = !{!"../fs/ntfs/file.c", i32 2011, i32 31}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs/file.c", i32 330, i32 2}
!10 = !{ptr @__func__.ntfs_prepare_file_for_write, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs/file.c", i32 351, i32 3}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs/file.c", i32 364, i32 3}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs/file.c", i32 401, i32 5}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ntfs/file.c", i32 416, i32 5}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ntfs/file.c", i32 426, i32 6}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ntfs/file.c", i32 437, i32 6}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ntfs/file.c", i32 466, i32 4}
!26 = !{ptr @__func__.ntfs_attr_extend_initialized, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../fs/ntfs/file.c", i32 118, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ntfs/file.c", i32 302, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ntfs/file.c", i32 314, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/mm.h", i32 717, i32 2}
!40 = !{ptr @__func__.ntfs_perform_write, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/ntfs/file.c", i32 1740, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ntfs/file.c", i32 1757, i32 4}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/ntfs/file.c", i32 1801, i32 7}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/ntfs/file.c", i32 1895, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/gfp.h", i32 579, i32 2}
!53 = !{ptr @__func__.ntfs_prepare_pages_for_non_resident_write, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ntfs/file.c", i32 603, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/ntfs/file.c", i32 907, i32 4}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/ntfs/file.c", i32 983, i32 4}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/ntfs/file.c", i32 994, i32 5}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/ntfs/file.c", i32 1005, i32 3}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ntfs/file.c", i32 1063, i32 4}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ntfs/file.c", i32 1088, i32 4}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ntfs/file.c", i32 1104, i32 4}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ntfs/file.c", i32 1221, i32 3}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/ntfs/file.c", i32 1229, i32 4}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ntfs/file.c", i32 1261, i32 4}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ntfs/file.c", i32 1292, i32 4}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ntfs/file.c", i32 1303, i32 5}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!90 = !{ptr @__func__.ntfs_commit_pages_after_write, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/ntfs/file.c", i32 1559, i32 2}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/ntfs/file.c", i32 1651, i32 3}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../fs/ntfs/file.c", i32 1654, i32 4}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/ntfs/file.c", i32 1664, i32 4}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/ntfs/file.c", i32 1667, i32 3}
!100 = !{ptr @__func__.ntfs_commit_pages_after_non_resident_write, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/ntfs/file.c", i32 1438, i32 3}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ntfs/file.c", i32 1494, i32 2}
!104 = !{ptr @__func__.ntfs_file_fsync, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ntfs/file.c", i32 1961, i32 2}
!106 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/ntfs/file.c", i32 1983, i32 3}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2155273603, i64 2155274082, i64 2155273640, i64 2155273696, i64 2155273730, i64 2155273754, i64 2155273795, i64 2155273816, i64 2155273844, i64 2155273878}
!123 = !{i64 2155275182, i64 2155275661, i64 2155275219, i64 2155275275, i64 2155275309, i64 2155275333, i64 2155275374, i64 2155275395, i64 2155275423, i64 2155275457}
!124 = !{i64 2155276864, i64 2155277343, i64 2155276901, i64 2155276957, i64 2155276991, i64 2155277015, i64 2155277056, i64 2155277077, i64 2155277105, i64 2155277139}
!125 = !{i64 2155283148, i64 2155283627, i64 2155283185, i64 2155283241, i64 2155283275, i64 2155283299, i64 2155283340, i64 2155283361, i64 2155283389, i64 2155283423}
!126 = !{i64 2155364521, i64 2155365001, i64 2155364558, i64 2155364614, i64 2155364648, i64 2155364672, i64 2155364713, i64 2155364734, i64 2155364762, i64 2155364796}
!127 = !{!"auto-init"}
!128 = !{i64 2155289949, i64 2155290428, i64 2155289986, i64 2155290042, i64 2155290076, i64 2155290100, i64 2155290141, i64 2155290162, i64 2155290190, i64 2155290224}
!129 = !{i64 2155293057, i64 2155293536, i64 2155293094, i64 2155293150, i64 2155293184, i64 2155293208, i64 2155293249, i64 2155293270, i64 2155293298, i64 2155293332}
!130 = !{i64 2155294869, i64 2155295348, i64 2155294906, i64 2155294962, i64 2155294996, i64 2155295020, i64 2155295061, i64 2155295082, i64 2155295110, i64 2155295144}
!131 = !{i64 2151521053, i64 2151521544, i64 2151521090, i64 2151521146, i64 2151521180, i64 2151521204, i64 2151521245, i64 2151521266, i64 2151521294, i64 2151521328}
!132 = !{i64 2155296670, i64 2155297149, i64 2155296707, i64 2155296763, i64 2155296797, i64 2155296821, i64 2155296862, i64 2155296883, i64 2155296911, i64 2155296945}
!133 = !{i64 2151058286, i64 2151058777, i64 2151058323, i64 2151058379, i64 2151058413, i64 2151058437, i64 2151058478, i64 2151058499, i64 2151058527, i64 2151058561}
!134 = !{i64 2151808178}
!135 = !{i64 2148526958, i64 2148526990, i64 2148527019, i64 2148527053, i64 2148527084, i64 2148527107}
!136 = !{i64 2148616039}
!137 = !{i64 2148518100, i64 2148518126, i64 2148518155, i64 2148518189, i64 2148518220, i64 2148518243}
!138 = !{i64 2155298877, i64 2155299356, i64 2155298914, i64 2155298970, i64 2155299004, i64 2155299028, i64 2155299069, i64 2155299090, i64 2155299118, i64 2155299152}
!139 = !{i64 2153764354}
!140 = !{i64 2152313665}
!141 = !{i64 2152313872}
!142 = !{i64 2153767125}
!143 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!144 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!145 = !{i64 2155304413, i64 2155304892, i64 2155304450, i64 2155304506, i64 2155304540, i64 2155304564, i64 2155304605, i64 2155304626, i64 2155304654, i64 2155304688}
!146 = !{i64 2155305960, i64 2155306439, i64 2155305997, i64 2155306053, i64 2155306087, i64 2155306111, i64 2155306152, i64 2155306173, i64 2155306201, i64 2155306235}
!147 = !{i64 2155307539, i64 2155308018, i64 2155307576, i64 2155307632, i64 2155307666, i64 2155307690, i64 2155307731, i64 2155307752, i64 2155307780, i64 2155307814}
!148 = !{i64 2155309597, i64 2155310077, i64 2155309634, i64 2155309690, i64 2155309724, i64 2155309748, i64 2155309789, i64 2155309810, i64 2155309838, i64 2155309872}
!149 = !{i64 2155311165, i64 2155311645, i64 2155311202, i64 2155311258, i64 2155311292, i64 2155311316, i64 2155311357, i64 2155311378, i64 2155311406, i64 2155311440}
!150 = !{i64 2155312747, i64 2155313227, i64 2155312784, i64 2155312840, i64 2155312874, i64 2155312898, i64 2155312939, i64 2155312960, i64 2155312988, i64 2155313022}
!151 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!152 = !{i64 2155314869, i64 2155315349, i64 2155314906, i64 2155314962, i64 2155314996, i64 2155315020, i64 2155315061, i64 2155315082, i64 2155315110, i64 2155315144}
!153 = !{i64 2155319082, i64 2155319562, i64 2155319119, i64 2155319175, i64 2155319209, i64 2155319233, i64 2155319274, i64 2155319295, i64 2155319323, i64 2155319357}
!154 = !{i64 2155321427, i64 2155321907, i64 2155321464, i64 2155321520, i64 2155321554, i64 2155321578, i64 2155321619, i64 2155321640, i64 2155321668, i64 2155321702}
!155 = !{i64 2155324189, i64 2155324669, i64 2155324226, i64 2155324282, i64 2155324316, i64 2155324340, i64 2155324381, i64 2155324402, i64 2155324430, i64 2155324464}
!156 = !{i64 2153268344, i64 2153268827, i64 2153268381, i64 2153268437, i64 2153268471, i64 2153268495, i64 2153268536, i64 2153268557, i64 2153268585, i64 2153268619}
!157 = !{i64 2148606552}
!158 = !{i64 2148521285, i64 2148521317, i64 2148521346, i64 2148521380, i64 2148521411, i64 2148521434}
!159 = !{i64 2148606781}
!160 = !{i64 2148331493, i64 2148331498, i64 2148331511, i64 2148331555, i64 2148331589, i64 2148331610}
!161 = distinct !{!161, !162}
!162 = !{!"llvm.loop.peeled.count", i32 1}
!163 = !{i64 2155330242, i64 2155330722, i64 2155330279, i64 2155330335, i64 2155330369, i64 2155330393, i64 2155330434, i64 2155330455, i64 2155330483, i64 2155330517}
!164 = !{i64 2155339788, i64 2155340268, i64 2155339825, i64 2155339881, i64 2155339915, i64 2155339939, i64 2155339980, i64 2155340001, i64 2155340029, i64 2155340063}
!165 = !{i64 2155342898, i64 2155343378, i64 2155342935, i64 2155342991, i64 2155343025, i64 2155343049, i64 2155343090, i64 2155343111, i64 2155343139, i64 2155343173}
!166 = !{i64 2155332105, i64 2155332585, i64 2155332142, i64 2155332198, i64 2155332232, i64 2155332256, i64 2155332297, i64 2155332318, i64 2155332346, i64 2155332380}
!167 = !{i64 2155334299, i64 2155334779, i64 2155334336, i64 2155334392, i64 2155334426, i64 2155334450, i64 2155334491, i64 2155334512, i64 2155334540, i64 2155334574}
!168 = !{i64 2155335957, i64 2155336437, i64 2155335994, i64 2155336050, i64 2155336084, i64 2155336108, i64 2155336149, i64 2155336170, i64 2155336198, i64 2155336232}
!169 = !{i64 2155337788, i64 2155338268, i64 2155337825, i64 2155337881, i64 2155337915, i64 2155337939, i64 2155337980, i64 2155338001, i64 2155338029, i64 2155338063}
!170 = !{i64 2155344724, i64 2155345204, i64 2155344761, i64 2155344817, i64 2155344851, i64 2155344875, i64 2155344916, i64 2155344937, i64 2155344965, i64 2155344999}
!171 = !{i64 2155346306, i64 2155346786, i64 2155346343, i64 2155346399, i64 2155346433, i64 2155346457, i64 2155346498, i64 2155346519, i64 2155346547, i64 2155346581}
!172 = !{i64 2155347986, i64 2155348466, i64 2155348023, i64 2155348079, i64 2155348113, i64 2155348137, i64 2155348178, i64 2155348199, i64 2155348227, i64 2155348261}
!173 = !{i64 2155349741, i64 2155350221, i64 2155349778, i64 2155349834, i64 2155349868, i64 2155349892, i64 2155349933, i64 2155349954, i64 2155349982, i64 2155350016}
!174 = !{i64 2155351313, i64 2155351793, i64 2155351350, i64 2155351406, i64 2155351440, i64 2155351464, i64 2155351505, i64 2155351526, i64 2155351554, i64 2155351588}
!175 = !{i64 2155353517, i64 2155353997, i64 2155353554, i64 2155353610, i64 2155353644, i64 2155353668, i64 2155353709, i64 2155353730, i64 2155353758, i64 2155353792}
!176 = !{i64 2151809249}
!177 = !{i64 2155357401, i64 2155357881, i64 2155357438, i64 2155357494, i64 2155357528, i64 2155357552, i64 2155357593, i64 2155357614, i64 2155357642, i64 2155357676}
!178 = !{i64 2155359241, i64 2155359721, i64 2155359278, i64 2155359334, i64 2155359368, i64 2155359392, i64 2155359433, i64 2155359454, i64 2155359482, i64 2155359516}
!179 = !{i64 2155256460, i64 2155256939, i64 2155256497, i64 2155256553, i64 2155256587, i64 2155256611, i64 2155256652, i64 2155256673, i64 2155256701, i64 2155256735}
!180 = !{i64 2155258766, i64 2155259245, i64 2155258803, i64 2155258859, i64 2155258893, i64 2155258917, i64 2155258958, i64 2155258979, i64 2155259007, i64 2155259041}
!181 = !{i64 2155260431, i64 2155260910, i64 2155260468, i64 2155260524, i64 2155260558, i64 2155260582, i64 2155260623, i64 2155260644, i64 2155260672, i64 2155260706}
!182 = !{i64 2155262207, i64 2155262686, i64 2155262244, i64 2155262300, i64 2155262334, i64 2155262358, i64 2155262399, i64 2155262420, i64 2155262448, i64 2155262482}
!183 = !{i64 2155264656, i64 2155265135, i64 2155264693, i64 2155264749, i64 2155264783, i64 2155264807, i64 2155264848, i64 2155264869, i64 2155264897, i64 2155264931}
!184 = !{i64 2155266339, i64 2155266818, i64 2155266376, i64 2155266432, i64 2155266466, i64 2155266490, i64 2155266531, i64 2155266552, i64 2155266580, i64 2155266614}
!185 = !{i64 2151115379, i64 2151115870, i64 2151115416, i64 2151115472, i64 2151115506, i64 2151115530, i64 2151115571, i64 2151115592, i64 2151115620, i64 2151115654}
!186 = !{i64 2155268920, i64 2155269399, i64 2155268957, i64 2155269013, i64 2155269047, i64 2155269071, i64 2155269112, i64 2155269133, i64 2155269161, i64 2155269195}
!187 = !{i64 2155270831, i64 2155271310, i64 2155270868, i64 2155270924, i64 2155270958, i64 2155270982, i64 2155271023, i64 2155271044, i64 2155271072, i64 2155271106}
!188 = !{i64 912358, i64 912419}
!189 = !{i64 915090}
!190 = !{i64 915375}
!191 = !{i64 2152635889}
!192 = !{i64 2152635731}
!193 = !{i64 2152636059}
!194 = !{i64 2150273145}
!195 = !{i64 2152637820}
!196 = !{i64 2150165397}
!197 = !{i64 2150170331}
!198 = !{i64 2150192049}
!199 = !{i64 2150196943}
!200 = !{i64 2150273470}
!201 = !{i64 2150273795}
!202 = !{i64 2152649682}
!203 = !{i64 2155287880, i64 2155288359, i64 2155287917, i64 2155287973, i64 2155288007, i64 2155288031, i64 2155288072, i64 2155288093, i64 2155288121, i64 2155288155}
