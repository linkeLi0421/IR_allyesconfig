; ModuleID = '/llk/IR_all_yes/fs/ntfs3/file.c_pt.bc'
source_filename = "../fs/ntfs3/file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%struct.atomic_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.79, %struct.list_head, %struct.list_head, %union.anon.80 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.79 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.80 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %struct.anon.87, %struct.anon.88, ptr, %struct.ratelimit_state }
%struct.anon.82 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.83 = type { %struct.wnd_bitmap, i32 }
%struct.anon.84 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.85 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.86 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.87 = type { %struct.ntfs_index, ptr }
%struct.anon.88 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.71 = type { i32 }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.76 = type { ptr }
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
%struct.page = type { i32, %union.anon.16, %union.anon.62, %struct.atomic_t, i32 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.62 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.ntfs_mount_options = type { ptr, ptr, %struct.kuid_t, %struct.kgid_t, i16, i16, i16 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.file = type { %union.anon.81, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.81 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.25, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.25 = type { %struct.anon.26 }
%struct.anon.26 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.ntfs_inode = type { %struct.mft_inode, i64, %struct.timespec64, %struct.mutex, i32, i32, %struct.rb_root, i8, %union.anon.89, %struct.anon.91, i32, %struct.inode }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%union.anon.89 = type { %struct.ntfs_index }
%struct.anon.91 = type { %struct.runs_tree, ptr, i32, i8 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.65, %union.anon.66 }
%union.anon.65 = type { ptr }
%union.anon.66 = type { i64 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.56, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.56 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ntfs3/file.c\00", [16 x i8] zeroinitializer }, align 32
@ntfs_file_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr null, ptr @ntfs_permission, ptr @ntfs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntfs3_setattr, ptr @ntfs_getattr, ptr @ntfs_listxattr, ptr @ntfs_fiemap, ptr null, ptr null, ptr null, ptr @ntfs_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@ntfs_file_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr null, ptr @ntfs_file_read_iter, ptr @ntfs_file_write_iter, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_ioctl, ptr null, ptr @ntfs_file_mmap, i32 0, ptr @ntfs_file_open, ptr null, ptr @ntfs_file_release, ptr @generic_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr null, ptr @ntfs_fallocate, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014failed to extend initialized size to %llx.\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014encrypted i/o not supported\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014direct i/o + compressed not supported\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014read deduplicated not supported\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014write into deduplicated not supported\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014page size is bigger than frame size\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014mmap encrypted not supported\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014mmap deduplicated not supported\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014mmap(write) compressed not supported\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014fallocate(0x%x) is not supported\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967269]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 345, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"ntfs_file_operations\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1238, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 452, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 260, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 717, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 186, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 804, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 809, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 823, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 1114, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 898, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 420, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 156, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 363, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 368, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 373, i32 3 }
@___asan_gen_.69 = private constant [19 x i8] c"../fs/ntfs3/file.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 551, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 366, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @ntfs_file_operations, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_file_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_getattr(ptr noundef %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 %request_mask, i32 %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %std_fa.i = getelementptr i8, ptr %3, i32 -172
  %4 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %std_fa.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %is_compressed.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

is_compressed.exit:                               ; preds = %entry
  %ni_flags.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ni_flags.i, align 4
  %and1.i = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %is_compressed.exit.if.end_crit_edge, label %is_compressed.exit.if.then_crit_edge

is_compressed.exit.if.then_crit_edge:             ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

is_compressed.exit.if.end_crit_edge:              ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %is_compressed.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %attributes = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %8 = ptrtoint ptr %attributes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %attributes, align 8
  %or = or i64 %9, 4
  store i64 %or, ptr %attributes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %is_compressed.exit.if.end_crit_edge
  %10 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %std_fa.i, align 4
  %and.i21 = and i32 %11, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.i.not = icmp eq i32 %and.i21, 0
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %attributes5 = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 4
  %12 = ptrtoint ptr %attributes5 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %attributes5, align 8
  %or6 = or i64 %13, 2048
  store i64 %or6, ptr %attributes5, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %attributes_mask = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 5
  %14 = ptrtoint ptr %attributes_mask to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %attributes_mask, align 8
  %or8 = or i64 %15, 2052
  store i64 %or8, ptr %attributes_mask, align 8
  tail call void @generic_fillattr(ptr noundef %mnt_userns, ptr noundef %3, ptr noundef %stat) #8
  %16 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stat, align 8
  %or9 = or i32 %17, 2048
  store i32 %or9, ptr %stat, align 8
  %btime = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 15
  %i_crtime = getelementptr i8, ptr %3, i32 -280
  %18 = call ptr @memcpy(ptr %btime, ptr %i_crtime, i32 16)
  %sbi = getelementptr i8, ptr %3, i32 -348
  %19 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sbi, align 4
  %cluster_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cluster_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cluster_size, align 8
  %blksize = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 3
  %23 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %blksize, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_sparse_cluster(ptr noundef %inode, ptr noundef %page0, i32 noundef %vcn, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %conv = zext i32 %vcn to i64
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %7 to i64
  %shl = shl i64 %conv, %sh_prom
  %conv2 = zext i32 %len to i64
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %8 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i_blkbits, align 2
  %conv7 = zext i8 %9 to i32
  %shl8 = shl nuw i32 1, %conv7
  %tobool.not = icmp eq ptr %page0, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.page, ptr %page0, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %11, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %cluster_mask_inv = getelementptr inbounds %struct.ntfs_sb_info, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %cluster_mask_inv to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %cluster_mask_inv, align 8
  %and = and i64 %13, %shl
  %14 = add nuw nsw i64 %conv2, %conv
  %add = shl i64 %14, %sh_prom
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cluster_mask.i, align 4
  %conv.i = zext i32 %16 to i64
  %add.i = add i64 %add, %conv.i
  %and.i = and i64 %add.i, %13
  %17 = lshr i64 %and, 12
  %conv9 = trunc i64 %17 to i32
  %sub = add i64 %and.i, 4095
  %18 = lshr i64 %sub, 12
  %conv14 = trunc i64 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %conv14)
  %cmp174 = icmp ult i32 %conv9, %conv14
  br i1 %cmp174, label %for.body.lr.ph, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end
  %19 = trunc i64 %and to i32
  %conv11 = and i32 %19, 4095
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %from.0178 = phi i32 [ %conv11, %for.body.lr.ph ], [ 0, %for.inc.for.body_crit_edge ]
  %idx.0175 = phi i32 [ %conv9, %for.body.lr.ph ], [ %add98, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0175, i32 %cond)
  %cmp16 = icmp eq i32 %idx.0175, %cond
  br i1 %cmp16, label %for.body.cond.end21_crit_edge, label %cond.false19

for.body.cond.end21_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end21

cond.false19:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %idx.0175, i32 noundef 7, i32 noundef %21) #8
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false19, %for.body.cond.end21_crit_edge
  %cond22 = phi ptr [ %call.i.i, %cond.false19 ], [ %page0, %for.body.cond.end21_crit_edge ]
  %tobool23.not = icmp eq ptr %cond22, null
  br i1 %tobool23.not, label %cond.end21.for.inc_crit_edge, label %if.end

cond.end21.for.inc_crit_edge:                     ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %cond.end21
  %conv24 = zext i32 %idx.0175 to i64
  %shl25 = shl nuw nsw i64 %conv24, 12
  %add26 = add nuw nsw i64 %shl25, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add26, i64 %and.i)
  %cmp27 = icmp sgt i64 %add26, %and.i
  %sub30 = sub i64 %and.i, %shl25
  %extract.t = trunc i64 %sub30 to i32
  %cond33.off0 = select i1 %cmp27, i32 %extract.t, i32 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %from.0178)
  %tobool35.not = icmp eq i32 %from.0178, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %cond33.off0)
  %cmp36.not = icmp eq i32 %cond33.off0, 4096
  %or.cond = select i1 %tobool35.not, i1 %cmp36.not, i1 false
  br i1 %or.cond, label %if.end.if.end44_crit_edge, label %land.lhs.true

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end
  %22 = ptrtoint ptr %cond22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %cond22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i = icmp eq i32 %23, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !55

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %cond22, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

PagePrivate.exit:                                 ; preds = %land.lhs.true
  %24 = ptrtoint ptr %cond22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %cond22, align 4
  %26 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool39.not = icmp eq i32 %26, 0
  br i1 %tobool39.not, label %if.then43, label %PagePrivate.exit.if.end44_crit_edge, !prof !57

PagePrivate.exit.if.end44_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then43:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @create_empty_buffers(ptr noundef nonnull %cond22, i32 noundef %shl8, i32 noundef 0) #8
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %PagePrivate.exit.if.end44_crit_edge, %if.end.if.end44_crit_edge
  %27 = ptrtoint ptr %cond22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %cond22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i.not.i141 = icmp eq i32 %28, -1
  br i1 %cmp.i.not.i141, label %if.then.i142, label %PagePrivate.exit145, !prof !55

if.then.i142:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %cond22, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

PagePrivate.exit145:                              ; preds = %if.end44
  %29 = ptrtoint ptr %cond22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %cond22, align 4
  %31 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool46.not = icmp eq i32 %31, 0
  br i1 %tobool46.not, label %if.then85.critedge, label %if.then47

if.then47:                                        ; preds = %PagePrivate.exit145
  %32 = ptrtoint ptr %cond22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %cond22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp.i.not.i146 = icmp eq i32 %33, -1
  br i1 %cmp.i.not.i146, label %if.then.i147, label %PagePrivate.exit150, !prof !55

if.then.i147:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %cond22, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

PagePrivate.exit150:                              ; preds = %if.then47
  %34 = ptrtoint ptr %cond22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %cond22, align 4
  %36 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool49.not = icmp eq i32 %36, 0
  br i1 %tobool49.not, label %do.body59, label %do.end65, !prof !55

do.body59:                                        ; preds = %PagePrivate.exit150
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs3/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 319, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end65:                                         ; preds = %PagePrivate.exit150
  %private = getelementptr inbounds %struct.page, ptr %cond22, i32 0, i32 1, i32 0, i32 3
  %37 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %private, align 4
  %39 = inttoptr i32 %38 to ptr
  br label %do.body66

do.body66:                                        ; preds = %if.end78.do.body66_crit_edge, %do.end65
  %partial.0 = phi i8 [ 0, %do.end65 ], [ %partial.1, %if.end78.do.body66_crit_edge ]
  %bh.0 = phi ptr [ %39, %do.end65 ], [ %43, %if.end78.do.body66_crit_edge ]
  %bh_off.0 = phi i32 [ 0, %do.end65 ], [ %add67, %if.end78.do.body66_crit_edge ]
  %add67 = add i32 %bh_off.0, %shl8
  call void @__sanitizer_cov_trace_cmp4(i32 %from.0178, i32 %bh_off.0)
  %cmp68.not = icmp ugt i32 %from.0178, %bh_off.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add67, i32 %cond33.off0)
  %cmp71.not = icmp ugt i32 %add67, %cond33.off0
  %or.cond140 = select i1 %cmp68.not, i1 true, i1 %cmp71.not
  %40 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i153 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i153)
  %tobool75.not = icmp eq i32 %and1.i.i153, 0
  br i1 %or.cond140, label %if.else, label %if.then73

if.then73:                                        ; preds = %do.body66
  br i1 %tobool75.not, label %if.then.i152, label %if.then73.set_buffer_uptodate.exit_crit_edge

if.then73.set_buffer_uptodate.exit_crit_edge:     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i152:                                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i152, %if.then73.set_buffer_uptodate.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %bh.0) #8
  br label %if.end78

if.else:                                          ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select = select i1 %tobool75.not, i8 1, i8 %partial.0
  br label %if.end78

if.end78:                                         ; preds = %if.else, %set_buffer_uptodate.exit
  %partial.1 = phi i8 [ %partial.0, %set_buffer_uptodate.exit ], [ %spec.select, %if.else ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %42 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_this_page, align 4
  %cmp80.not = icmp eq ptr %43, %39
  br i1 %cmp80.not, label %do.end82, label %if.end78.do.body66_crit_edge

if.end78.do.body66_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body66

do.end82:                                         ; preds = %if.end78
  %44 = and i8 %partial.1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %extract.t139.not = icmp eq i8 %44, 0
  tail call void @zero_user_segments(ptr noundef %cond22, i32 noundef %from.0178, i32 noundef %cond33.off0, i32 noundef 0, i32 noundef 0) #8
  br i1 %extract.t139.not, label %do.end82.if.then85_crit_edge, label %do.end82.if.end91_crit_edge

do.end82.if.end91_crit_edge:                      ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.end82.if.then85_crit_edge:                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then85

if.then85.critedge:                               ; preds = %PagePrivate.exit145
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @zero_user_segments(ptr noundef nonnull %cond22, i32 noundef %from.0178, i32 noundef %cond33.off0, i32 noundef 0, i32 noundef 0) #8
  br label %if.then85

if.then85:                                        ; preds = %if.then85.critedge, %do.end82.if.then85_crit_edge
  %45 = getelementptr inbounds %struct.page, ptr %cond22, i32 0, i32 1
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  %and.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %47, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %cond22 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %48, %if.end.i.i ]
  %49 = inttoptr i32 %retval.0.i.i to ptr
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  %and.i.i.i.i154 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i154)
  %tobool.not.i.i.i155 = icmp eq i32 %and.i.i.i.i154, 0
  br i1 %tobool.not.i.i.i155, label %folio_flags.exit.i.i, label %if.then.i.i.i156, !prof !57

if.then.i.i.i156:                                 ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %53, ptr noundef nonnull @.str.2) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %54 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %49, align 4
  %56 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.i.not.i = icmp eq i32 %56, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8
  br i1 %tobool.i.not.i, label %if.then88, label %folio_flags.exit.i.i.if.end89_crit_edge

folio_flags.exit.i.i.if.end89_crit_edge:          ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then88:                                        ; preds = %folio_flags.exit.i.i
  %57 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %45, align 4
  %and.i.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !57

if.then.i.i.i:                                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %cond22, ptr noundef nonnull @.str.2) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cond22) #8
  br label %if.end89

if.end89:                                         ; preds = %SetPageUptodate.exit, %folio_flags.exit.i.i.if.end89_crit_edge
  %call90 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %cond22) #8
  br label %if.end91

if.end91:                                         ; preds = %if.end89, %do.end82.if.end91_crit_edge
  br i1 %cmp16, label %if.end91.if.end95_crit_edge, label %if.then94

if.end91.if.end95_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then94:                                        ; preds = %if.end91
  tail call void @unlock_page(ptr noundef nonnull %cond22) #8
  %59 = getelementptr inbounds %struct.page, ptr %cond22, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and.i.i157 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i157)
  %tobool.not.i.i158 = icmp eq i32 %and.i.i157, 0
  br i1 %tobool.not.i.i158, label %if.end.i.i161, label %if.then.i.i160, !prof !57

if.then.i.i160:                                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i159 = add i32 %61, -1
  br label %_compound_head.exit.i163

if.end.i.i161:                                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %cond22 to i32
  br label %_compound_head.exit.i163

_compound_head.exit.i163:                         ; preds = %if.end.i.i161, %if.then.i.i160
  %retval.0.i.i162 = phi i32 [ %sub.i.i159, %if.then.i.i160 ], [ %62, %if.end.i.i161 ]
  %63 = inttoptr i32 %retval.0.i.i162 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %64 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i.i.i = icmp eq i32 %65, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !55

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i163
  call void @__sanitizer_cov_trace_pc() #10
  %66 = inttoptr i32 %retval.0.i.i162 to ptr
  tail call void @dump_page(ptr noundef %66, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i163
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_sparse_cluster, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !64

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %63, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end95_crit_edge

folio_put_testzero.exit.i.i.if.end95_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %63) #8
  br label %if.end95

if.end95:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end95_crit_edge, %if.end91.if.end95_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 345, i32 noundef 0) #8
  %call.i = tail call i32 @__cond_resched() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end95, %cond.end21.for.inc_crit_edge
  %add98 = add nuw i32 %idx.0175, 1
  %exitcond.not = icmp eq i32 %add98, %conv14
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cond.end.for.end_crit_edge
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs3_setattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #0 align 64 {
entry:
  %new_valid.i = alloca i64, align 8
  %tmp25.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -360
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attr, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 8
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 34
  %10 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %options, align 4
  %noacsrules = getelementptr inbounds %struct.ntfs_mount_options, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %noacsrules to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %noacsrules, align 4
  %13 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = and i32 %7, -520
  %and = or i32 %or, 512
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %attr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ia_valid.0 = phi i32 [ %and, %if.then ], [ %7, %entry.if.end_crit_edge ]
  %call6 = tail call i32 @setattr_prepare(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup80_crit_edge

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.end9:                                          ; preds = %if.end
  %and10 = and i32 %ia_valid.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end54_crit_edge, label %if.then12

if.end9.if.end54_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then12:                                        ; preds = %if.end9
  %i_size = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size, align 8
  %ni_flags = getelementptr i8, ptr %5, i32 -4
  %17 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ni_flags, align 4
  %and13 = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end38, label %do.end, !prof !57

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 758, i32 noundef 9, ptr noundef null) #8
  br label %cleanup80

if.end38:                                         ; preds = %if.then12
  tail call void @inode_dio_wait(ptr noundef %5) #8
  %ia_size = getelementptr inbounds %struct.iattr, ptr %attr, i32 0, i32 4
  %19 = ptrtoint ptr %ia_size to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ia_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %16)
  %cmp = icmp slt i64 %20, %16
  br i1 %cmp, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end38
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_valid.i) #8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %5, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %25)
  %cmp.i = icmp eq i16 %25, -32768
  br i1 %cmp.i, label %if.end.i, label %if.then39.ntfs_truncate.exit_crit_edge

if.then39.ntfs_truncate.exit_crit_edge:           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_truncate.exit

if.end.i:                                         ; preds = %if.then39
  %std_fa.i.i = getelementptr i8, ptr %5, i32 -172
  %26 = ptrtoint ptr %std_fa.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %std_fa.i.i, align 4
  %and.i.i = and i32 %27, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %is_compressed.exit.i, label %if.end.i.if.then3.i_crit_edge

if.end.i.if.then3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

is_compressed.exit.i:                             ; preds = %if.end.i
  %28 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ni_flags, align 4
  %and1.i.i = and i32 %29, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %if.else.i, label %is_compressed.exit.i.if.then3.i_crit_edge

is_compressed.exit.i.if.then3.i_crit_edge:        ; preds = %is_compressed.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %is_compressed.exit.i.if.then3.i_crit_edge, %if.end.i.if.then3.i_crit_edge
  %i_valid.i = getelementptr i8, ptr %5, i32 -288
  %30 = ptrtoint ptr %i_valid.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_valid.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %20)
  %cmp4.i = icmp ugt i64 %31, %20
  br i1 %cmp4.i, label %if.then6.i, label %if.then3.i.if.end12.i_crit_edge

if.then3.i.if.end12.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %i_valid.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %20, ptr %i_valid.i, align 8
  br label %if.end12.i

if.else.i:                                        ; preds = %is_compressed.exit.i
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %33 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_mapping.i, align 8
  %call9.i = tail call i32 @block_truncate_page(ptr noundef %34, i64 noundef %20, ptr noundef nonnull @ntfs_get_block) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %if.else.i.if.end12.i_crit_edge, label %if.else.i.ntfs_truncate.exit_crit_edge

if.else.i.ntfs_truncate.exit_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_truncate.exit

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i.if.end12.i_crit_edge, %if.then6.i, %if.then3.i.if.end12.i_crit_edge
  %i_valid13.i = getelementptr i8, ptr %5, i32 -288
  %35 = ptrtoint ptr %i_valid13.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_valid13.i, align 8
  %37 = tail call i64 @llvm.umin.i64(i64 %36, i64 %20) #8
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 3
  %38 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_blocksize.i.i, align 16
  %conv.i.i = zext i32 %39 to i64
  %add.i.i = add i64 %37, -1
  %sub.i.i = add i64 %add.i.i, %conv.i.i
  %sub2.i.i = add i32 %39, -1
  %conv3.i.i = zext i32 %sub2.i.i to i64
  %neg.i.i = xor i64 %conv3.i.i, -1
  %and.i79.i = and i64 %sub.i.i, %neg.i.i
  %40 = ptrtoint ptr %new_valid.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %and.i79.i, ptr %new_valid.i, align 8
  %ni_lock.i.i = getelementptr i8, ptr %5, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i.i, i32 noundef 4) #8
  tail call void @truncate_setsize(ptr noundef %5, i64 noundef %20) #8
  %41 = getelementptr i8, ptr %5, i32 -156
  tail call void @down_write(ptr noundef %41) #8
  %run.i = getelementptr i8, ptr %5, i32 -60
  %call17.i = call i32 @attr_set_size(ptr noundef %add.ptr.i, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run.i, i64 noundef %20, ptr noundef nonnull %new_valid.i, i1 noundef zeroext true, ptr noundef null) #8
  call void @up_write(ptr noundef %41) #8
  %42 = ptrtoint ptr %new_valid.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %new_valid.i, align 8
  %44 = ptrtoint ptr %i_valid13.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %i_valid13.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %45)
  %cmp20.i = icmp ult i64 %43, %45
  br i1 %cmp20.i, label %if.then22.i, label %if.end12.i.if.end24.i_crit_edge

if.end12.i.if.end24.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

if.then22.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %i_valid13.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %43, ptr %i_valid13.i, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end12.i.if.end24.i_crit_edge
  call void @mutex_unlock(ptr noundef %ni_lock.i.i) #8
  %47 = ptrtoint ptr %std_fa.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %std_fa.i.i, align 4
  %or.i = or i32 %48, 536870912
  store i32 %or.i, ptr %std_fa.i.i, align 4
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp25.i) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp25.i, ptr noundef %5) #8
  %49 = call ptr @memcpy(ptr %i_mtime.i, ptr %tmp25.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp25.i) #8
  %50 = call ptr @memcpy(ptr %i_ctime.i, ptr %i_mtime.i, i32 16)
  %51 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %52, i32 0, i32 10
  %53 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %s_flags.i, align 4
  %and27.i = and i32 %54, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %lor.lhs.false.i, label %if.end24.i.if.else32.i_crit_edge

if.end24.i.if.else32.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else32.i

lor.lhs.false.i:                                  ; preds = %if.end24.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %55 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i_flags.i, align 4
  %and29.i = and i32 %56, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.then39.i, label %lor.lhs.false.i.if.else32.i_crit_edge

lor.lhs.false.i.if.else32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else32.i

if.else32.i:                                      ; preds = %lor.lhs.false.i.if.else32.i_crit_edge, %if.end24.i.if.else32.i_crit_edge
  %call33.i = call i32 @ntfs_sync_inode(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.else32.i.if.end40.i_crit_edge, label %if.else32.i.ntfs_truncate.exit_crit_edge

if.else32.i.ntfs_truncate.exit_crit_edge:         ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_truncate.exit

if.else32.i.if.end40.i_crit_edge:                 ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then39.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then39.i, %if.else32.i.if.end40.i_crit_edge
  br label %ntfs_truncate.exit

ntfs_truncate.exit:                               ; preds = %if.end40.i, %if.else32.i.ntfs_truncate.exit_crit_edge, %if.else.i.ntfs_truncate.exit_crit_edge, %if.then39.ntfs_truncate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end40.i ], [ 0, %if.then39.ntfs_truncate.exit_crit_edge ], [ %call9.i, %if.else.i.ntfs_truncate.exit_crit_edge ], [ %call33.i, %if.else32.i.ntfs_truncate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_valid.i) #8
  br label %if.end48

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %16)
  %cmp43 = icmp sgt i64 %20, %16
  br i1 %cmp43, label %if.then44, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call fastcc i32 @ntfs_extend(ptr noundef %5, i64 noundef %20, i32 noundef 0, ptr noundef null)
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %ntfs_truncate.exit
  %err.0 = phi i32 [ %retval.0.i, %ntfs_truncate.exit ], [ %call46, %if.then44 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool49.not = icmp eq i32 %err.0, 0
  br i1 %tobool49.not, label %if.end48.cleanup_crit_edge, label %if.end48.cleanup80_crit_edge

if.end48.cleanup80_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end48.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %57 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ni_flags, align 4
  %or53 = or i32 %58, 256
  store i32 %or53, ptr %ni_flags, align 4
  br label %if.end54

if.end54:                                         ; preds = %cleanup, %if.end9.if.end54_crit_edge
  call void @setattr_copy(ptr noundef %mnt_userns, ptr noundef %5, ptr noundef %attr) #8
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %5, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %60)
  %cmp57.not = icmp eq i16 %9, %60
  br i1 %cmp57.not, label %if.end54.if.end74_crit_edge, label %if.then59

if.end54.if.end74_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then59:                                        ; preds = %if.end54
  %call60 = call i32 @ntfs_acl_chmod(ptr noundef %mnt_userns, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.then59.cleanup80_crit_edge

if.then59.cleanup80_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup80

if.end63:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %5, align 8
  %63 = and i16 %62, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool67.not = icmp eq i16 %63, 0
  %std_fa71 = getelementptr i8, ptr %5, i32 -172
  %64 = ptrtoint ptr %std_fa71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %std_fa71, align 4
  %and69 = and i32 %65, -16777217
  %masksel = select i1 %tobool67.not, i32 16777216, i32 0
  %and69.sink = or i32 %and69, %masksel
  store i32 %and69.sink, ptr %std_fa71, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.end63, %if.end54.if.end74_crit_edge
  %and75 = and i32 %ia_valid.0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end79_crit_edge, label %if.then77

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = call i32 @ntfs_save_wsl_perm(ptr noundef %5) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end74.if.end79_crit_edge
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #8
  br label %cleanup80

cleanup80:                                        ; preds = %if.end79, %if.then59.cleanup80_crit_edge, %if.end48.cleanup80_crit_edge, %do.end, %if.end.cleanup80_crit_edge
  %err.4 = phi i32 [ %call6, %if.end.cleanup80_crit_edge ], [ %call60, %if.then59.cleanup80_crit_edge ], [ 0, %if.end79 ], [ %err.0, %if.end48.cleanup80_crit_edge ], [ -95, %do.end ]
  ret i32 %err.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_extend(ptr noundef %inode, i64 noundef %pos, i32 noundef %count, ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %conv = zext i32 %count to i64
  %add = add i64 %conv, %pos
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_valid = getelementptr i8, ptr %inode, i32 -288
  %2 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_valid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %pos)
  %cmp = icmp ult i64 %3, %pos
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %5 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %6)
  %cmp2.not = icmp sgt i64 %add, %6
  %brmerge = select i1 %cmp2.not, i1 true, i1 %4
  br i1 %brmerge, label %if.end, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.end
  %sbi = getelementptr i8, ptr %inode, i32 -348
  %7 = ptrtoint ptr %sbi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sbi, align 4
  %call5 = tail call i32 @ntfs_set_state(ptr noundef %8, i32 noundef 1) #8
  %9 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %10)
  %cmp7 = icmp sgt i64 %add, %10
  br i1 %cmp7, label %if.then9, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then9:                                         ; preds = %if.end
  %call10 = tail call i32 @ntfs_set_size(ptr noundef %inode, i64 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add, ptr %i_size, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.end.if.end15_crit_edge
  br i1 %4, label %land.lhs.true18, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true18:                                  ; preds = %if.end15
  %std_fa.i = getelementptr i8, ptr %inode, i32 -172
  %12 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %std_fa.i, align 4
  %and.i = and i32 %13, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %is_compressed.exit, label %land.lhs.true18.if.end26_crit_edge

land.lhs.true18.if.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

is_compressed.exit:                               ; preds = %land.lhs.true18
  %ni_flags.i = getelementptr i8, ptr %inode, i32 -4
  %14 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ni_flags.i, align 4
  %and1.i = and i32 %15, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %if.then20, label %is_compressed.exit.if.end26_crit_edge

is_compressed.exit.if.end26_crit_edge:            ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then20:                                        ; preds = %is_compressed.exit
  %i_valid21 = getelementptr i8, ptr %inode, i32 -288
  %16 = ptrtoint ptr %i_valid21 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_valid21, align 8
  %call22 = tail call fastcc i32 @ntfs_extend_initialized_size(ptr noundef %file, ptr noundef %add.ptr.i, i64 noundef %17, i64 noundef %pos)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.if.end26_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26:                                         ; preds = %if.then20.if.end26_crit_edge, %is_compressed.exit.if.end26_crit_edge, %land.lhs.true18.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %inode) #8
  %18 = call ptr @memcpy(ptr %i_mtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  %19 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_flags = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_flags, align 4
  %and = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %lor.lhs.false, label %if.end26.if.then30_crit_edge

if.end26.if.then30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end26
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %24 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_flags, align 4
  %and28 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.end26.if.then30_crit_edge
  %sub = add i64 %add, -1
  %call31 = call i32 @filemap_fdatawrite_range(ptr noundef %1, i64 noundef %pos, i64 noundef %sub) #8
  %call32 = call i32 @sync_mapping_buffers(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool33.not = icmp eq i32 %call31, 0
  %spec.select = select i1 %tobool33.not, i32 %call32, i32 %call31
  %call36 = call i32 @write_inode_now(ptr noundef %inode, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool37.not = icmp eq i32 %spec.select, 0
  %err.2 = select i1 %tobool37.not, i32 %call36, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool40.not = icmp eq i32 %err.2, 0
  br i1 %tobool40.not, label %if.then41, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = call i32 @filemap_fdatawait_range(ptr noundef %1, i64 noundef %pos, i64 noundef %sub) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.then30.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.end.cleanup_crit_edge ], [ %call10, %if.then9.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call22, %if.then20.cleanup_crit_edge ], [ %err.2, %if.then30.cleanup_crit_edge ], [ %call43, %if.then41 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_acl_chmod(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_save_wsl_perm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_file_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %std_fa.i = getelementptr i8, ptr %inode, i32 -172
  %0 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %std_fa.i, align 4
  %and.i = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %is_compressed.exit, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

is_compressed.exit:                               ; preds = %entry
  %ni_flags.i = getelementptr i8, ptr %inode, i32 -4
  %2 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ni_flags.i, align 4
  %and1.i = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i = icmp ne i32 %and1.i, 0
  %and.i26 = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.i = icmp ne i32 %and.i26, 0
  %or.cond = select i1 %tobool2.i, i1 true, i1 %tobool.i
  br i1 %or.cond, label %is_compressed.exit.land.rhs_crit_edge, label %is_compressed.exit.if.end_crit_edge

is_compressed.exit.if.end_crit_edge:              ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

is_compressed.exit.land.rhs_crit_edge:            ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %is_compressed.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.if.end_crit_edge, label %land.rhs.cleanup17_crit_edge, !prof !57

land.rhs.cleanup17_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %is_compressed.exit.if.end_crit_edge
  %ni_flags = getelementptr i8, ptr %inode, i32 -4
  %6 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ni_flags, align 4
  %and5 = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %f_flags7 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %8 = ptrtoint ptr %f_flags7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags7, align 4
  %and8 = and i32 %9, 515
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end15_crit_edge, label %if.then10

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %land.lhs.true
  %call11 = tail call i32 @ni_decompress_file(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.cleanup17_crit_edge

if.then10.cleanup17_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup17

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %call16 = tail call i32 @generic_file_open(ptr noundef %inode, ptr noundef %file) #8
  br label %cleanup17

cleanup17:                                        ; preds = %if.end15, %if.then10.cleanup17_crit_edge, %land.rhs.cleanup17_crit_edge
  %retval.1 = phi i32 [ %call16, %if.end15 ], [ %call11, %if.then10.cleanup17_crit_edge ], [ -95, %land.rhs.cleanup17_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_decompress_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_fiemap(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %len) #0 align 64 {
entry:
  %len.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %len, ptr %len.addr, align 8
  %call1 = call i32 @fiemap_prep(ptr noundef %inode, ptr noundef %fieinfo, i64 noundef %start, ptr noundef nonnull %len.addr, i32 noundef -3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %ni_lock.i = getelementptr i8, ptr %inode, i32 -264
  call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #8
  %1 = ptrtoint ptr %len.addr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %len.addr, align 8
  %call2 = call i32 @ni_fiemap(ptr noundef %add.ptr.i, ptr noundef %fieinfo, i64 noundef %start, i64 noundef %2) #8
  call void @mutex_unlock(ptr noundef %ni_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fiemap_prep(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_fiemap(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_permission(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_file_read_iter(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %std_fa.i = getelementptr i8, ptr %5, i32 -172
  %6 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %std_fa.i, align 4
  %and.i = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %5, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i19 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %tobool.not.i = icmp eq i32 %and.i19, 0
  br i1 %tobool.not.i, label %is_compressed.exit, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

is_compressed.exit:                               ; preds = %if.end
  %ni_flags.i = getelementptr i8, ptr %5, i32 -4
  %8 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ni_flags.i, align 4
  %and1.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %is_compressed.exit.if.end4_crit_edge, label %is_compressed.exit.land.lhs.true_crit_edge

is_compressed.exit.land.lhs.true_crit_edge:       ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

is_compressed.exit.if.end4_crit_edge:             ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.lhs.true:                                    ; preds = %is_compressed.exit.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %10 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ki_flags, align 8
  %and = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end4_crit_edge, label %if.then3

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %5, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %is_compressed.exit.if.end4_crit_edge
  %ni_flags.i20 = getelementptr i8, ptr %5, i32 -4
  %12 = ptrtoint ptr %ni_flags.i20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ni_flags.i20, align 4
  %and.i21 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.i22.not = icmp eq i32 %and.i21, 0
  br i1 %tobool.i22.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %5, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @generic_file_read_iter(ptr noundef %iocb, ptr noundef %iter) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then3, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %if.then3 ], [ -95, %if.then6 ], [ %call8, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_file_write_iter(ptr noundef %iocb, ptr noundef %from) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_mapping = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %std_fa.i = getelementptr i8, ptr %5, i32 -172
  %6 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %std_fa.i, align 4
  %and.i = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %5, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i89 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool.not.i = icmp eq i32 %and.i89, 0
  br i1 %tobool.not.i, label %is_compressed.exit, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

is_compressed.exit:                               ; preds = %if.end
  %ni_flags.i = getelementptr i8, ptr %5, i32 -4
  %8 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ni_flags.i, align 4
  %and1.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %is_compressed.exit.if.end4_crit_edge, label %is_compressed.exit.land.lhs.true_crit_edge

is_compressed.exit.land.lhs.true_crit_edge:       ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

is_compressed.exit.if.end4_crit_edge:             ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.lhs.true:                                    ; preds = %is_compressed.exit.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %ki_flags = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %10 = ptrtoint ptr %ki_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ki_flags, align 8
  %and = and i32 %11, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end4_crit_edge, label %if.then3

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %5, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %is_compressed.exit.if.end4_crit_edge
  %ni_flags.i90 = getelementptr i8, ptr %5, i32 -4
  %12 = ptrtoint ptr %ni_flags.i90 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ni_flags.i90, align 4
  %and.i91 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool.i92.not = icmp eq i32 %and.i91, 0
  br i1 %tobool.i92.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %5, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 25
  %call.i = tail call i32 @down_write_trylock(ptr noundef %i_rwsem.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then10:                                        ; preds = %if.end7
  %ki_flags11 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %14 = ptrtoint ptr %ki_flags11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ki_flags11, align 8
  %and12 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end7.if.end16_crit_edge
  %call17 = tail call i32 @generic_write_checks(ptr noundef %iocb, ptr noundef %from) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call17)
  %cmp = icmp slt i32 %call17, 1
  br i1 %cmp, label %if.end16.out.thread_crit_edge, label %if.end19

if.end16.out.thread_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end19:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %ni_flags.i90 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ni_flags.i90, align 4
  %and20 = and i32 %17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end45, label %do.end, !prof !57

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1128, i32 noundef 9, ptr noundef null) #8
  br label %out.thread

if.end45:                                         ; preds = %if.end19
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %18 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ki_pos, align 8
  %call46 = tail call fastcc i32 @ntfs_extend(ptr noundef %5, i64 noundef %19, i32 noundef %call17, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end49:                                         ; preds = %if.end45
  %20 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %std_fa.i, align 4
  %and.i95 = and i32 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i96 = icmp eq i32 %and.i95, 0
  br i1 %tobool.not.i96, label %is_compressed.exit101, label %if.end49.cond.true_crit_edge

if.end49.cond.true_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true

is_compressed.exit101:                            ; preds = %if.end49
  %22 = ptrtoint ptr %ni_flags.i90 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ni_flags.i90, align 4
  %and1.i98 = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i98)
  %tobool2.i99.not = icmp eq i32 %and1.i98, 0
  br i1 %tobool2.i99.not, label %cond.false, label %is_compressed.exit101.cond.true_crit_edge

is_compressed.exit101.cond.true_crit_edge:        ; preds = %is_compressed.exit101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.true

cond.true:                                        ; preds = %is_compressed.exit101.cond.true_crit_edge, %if.end49.cond.true_crit_edge
  %call51 = tail call fastcc i32 @ntfs_compress_write(ptr noundef %iocb, ptr noundef %from)
  br label %out

cond.false:                                       ; preds = %is_compressed.exit101
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = tail call i32 @__generic_file_write_iter(ptr noundef %iocb, ptr noundef %from) #8
  br label %out

out.thread:                                       ; preds = %do.end, %if.end16.out.thread_crit_edge
  %ret.0.ph = phi i32 [ -95, %do.end ], [ %call17, %if.end16.out.thread_crit_edge ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  br label %cleanup

out:                                              ; preds = %cond.false, %cond.true, %if.end45.out_crit_edge
  %ret.0 = phi i32 [ %call46, %if.end45.out_crit_edge ], [ %call51, %cond.true ], [ %call52, %cond.false ]
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp53 = icmp sgt i32 %ret.0, 0
  br i1 %cmp53, label %if.then54, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then54:                                        ; preds = %out
  %ki_flags.i = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 4
  %24 = ptrtoint ptr %ki_flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ki_flags.i, align 8
  %and.i103 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %tobool.not.i104 = icmp eq i32 %and.i103, 0
  br i1 %tobool.not.i104, label %if.then54.if.end8.i_crit_edge, label %if.then.i

if.then54.if.end8.i_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then54
  %26 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iocb, align 8
  %28 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ki_pos, align 8
  %conv.i109 = zext i32 %ret.0 to i64
  %sub.i = sub i64 %29, %conv.i109
  %sub2.i = add i64 %29, -1
  %and4.i = lshr i32 %25, 2
  %and4.lobit.i = and i32 %and4.i, 1
  %30 = xor i32 %and4.lobit.i, 1
  %call.i105 = tail call i32 @vfs_fsync_range(ptr noundef %27, i64 noundef %sub.i, i64 noundef %sub2.i, i32 noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool6.not.i = icmp eq i32 %call.i105, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end8.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i.if.end8.i_crit_edge, %if.then54.if.end8.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %if.then.i.cleanup_crit_edge, %out.cleanup_crit_edge, %out.thread, %if.then10.cleanup_crit_edge, %if.then6, %if.then3, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %if.then3 ], [ -95, %if.then6 ], [ -11, %if.then10.cleanup_crit_edge ], [ %ret.0, %out.cleanup_crit_edge ], [ %ret.0.ph, %out.thread ], [ %call.i105, %if.then.i.cleanup_crit_edge ], [ %ret.0, %if.end8.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %range.i = alloca %struct.fstrim_range, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1072146311, i32 %cmd)
  %cond = icmp eq i32 %cmd, -1072146311
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %range.i) #8
  %6 = getelementptr inbounds %struct.fstrim_range, ptr %range.i, i32 0, i32 2
  %7 = call ptr @memset(ptr %range.i, i32 255, i32 24)
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_queue.i.i, align 4
  %call1.i = tail call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %call1.i, label %if.end.i, label %sw.bb.ntfs_ioctl_fitrim.exit_crit_edge

sw.bb.ntfs_ioctl_fitrim.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_ioctl_fitrim.exit

if.end.i:                                         ; preds = %sw.bb
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %queue_flags.i, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end.i.ntfs_ioctl_fitrim.exit_crit_edge, label %if.end4.i

if.end.i.ntfs_ioctl_fitrim.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_ioctl_fitrim.exit

if.end4.i:                                        ; preds = %if.end.i
  %17 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end4.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end4.i.if.then11.i.i.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end4.i
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 24, i32 -1226833920) #11
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !57

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %range.i, i32 noundef 24) #8
  %19 = call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !65
  %and.i.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %range.i, ptr noundef %17, i32 noundef 24) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #8, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end8.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !57

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end4.i.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 24, %if.end4.i.if.then11.i.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 24, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %range.i, i32 %sub.i.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %ntfs_ioctl_fitrim.exit

if.end8.i:                                        ; preds = %if.end.i.i.i
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %6, align 8
  %conv.i = trunc i64 %24 to i32
  %discard_granularity.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 37, i32 18
  %25 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %discard_granularity.i, align 4
  %27 = call i32 @llvm.umax.i32(i32 %26, i32 %conv.i) #8
  %conv10.i = zext i32 %27 to i64
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv10.i, ptr %6, align 8
  %call12.i = call i32 @ntfs_trim_fs(ptr noundef %5, ptr noundef nonnull %range.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end8.i.ntfs_ioctl_fitrim.exit_crit_edge, label %if.then.i33.i

if.end8.i.ntfs_ioctl_fitrim.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_ioctl_fitrim.exit

if.then.i33.i:                                    ; preds = %if.end8.i
  call void @__might_fault(ptr noundef nonnull @.str.14, i32 noundef 174) #8
  %call.i.i32.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i32.i, label %if.then.i33.i.ntfs_ioctl_fitrim.exit_crit_edge, label %copy_to_user.exit.i

if.then.i33.i.ntfs_ioctl_fitrim.exit_crit_edge:   ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_ioctl_fitrim.exit

copy_to_user.exit.i:                              ; preds = %if.then.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i37.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %range.i, i32 noundef 24) #8
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %range.i, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool18.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool18.not.i, i32 0, i32 -14
  br label %ntfs_ioctl_fitrim.exit

ntfs_ioctl_fitrim.exit:                           ; preds = %copy_to_user.exit.i, %if.then.i33.i.ntfs_ioctl_fitrim.exit_crit_edge, %if.end8.i.ntfs_ioctl_fitrim.exit_crit_edge, %if.then11.i.i.i, %if.end.i.ntfs_ioctl_fitrim.exit_crit_edge, %sw.bb.ntfs_ioctl_fitrim.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %sw.bb.ntfs_ioctl_fitrim.exit_crit_edge ], [ -95, %if.end.i.ntfs_ioctl_fitrim.exit_crit_edge ], [ %call12.i, %if.end8.i.ntfs_ioctl_fitrim.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i33.i.ntfs_ioctl_fitrim.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %range.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ntfs_ioctl_fitrim.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ntfs_ioctl_fitrim.exit ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_file_mmap(ptr noundef %file, ptr noundef %vma) #0 align 64 {
entry:
  %lcn = alloca i32, align 4
  %len = alloca i32, align 4
  %new = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -360
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %4 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_pgoff, align 4
  %conv = zext i32 %5 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %6 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %std_fa.i = getelementptr i8, ptr %3, i32 -172
  %8 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %std_fa.i, align 4
  %and.i = and i32 %9, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %3, ptr noundef nonnull @.str.15) #8
  br label %cleanup56

if.end:                                           ; preds = %entry
  %ni_flags.i = getelementptr i8, ptr %3, i32 -4
  %10 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ni_flags.i, align 4
  %and.i97 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97)
  %tobool.i98.not = icmp eq i32 %and.i97, 0
  br i1 %tobool.i98.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %3, ptr noundef nonnull @.str.16) #8
  br label %cleanup56

if.end4:                                          ; preds = %if.end
  %and.i100 = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100)
  %tobool.not.i = icmp eq i32 %and.i100, 0
  %and1.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i = icmp eq i32 %and1.i, 0
  %12 = select i1 %tobool.not.i, i1 %tobool2.i, i1 false
  %brmerge = select i1 %12, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %3, ptr noundef nonnull @.str.17) #8
  br label %cleanup56

if.end10:                                         ; preds = %if.end4
  br i1 %tobool.not, label %if.end10.if.end54_crit_edge, label %if.then12

if.end10.if.end54_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then12:                                        ; preds = %if.end10
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.then12
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !68
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %14 = tail call ptr @llvm.returnaddress(i32 0) #8
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %15) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %15) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call ptr @llvm.returnaddress(i32 0) #8
  %17 = ptrtoint ptr %16 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %17) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %17) #8
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !69
  %and.i.i.i.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !55

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #8, !srcloc !70
  %19 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !72
  %21 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i102 = and i32 %22, 1
  %tobool.not.i103 = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i103, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %20, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %22, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !73
  %23 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  %25 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %26, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %27 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_end, align 4
  %conv14 = zext i32 %28 to i64
  %add = add nuw nsw i64 %shl, %conv14
  %29 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vma, align 4
  %conv15 = zext i32 %30 to i64
  %sub = sub nsw i64 %add, %conv15
  %31 = tail call i64 @llvm.smin.i64(i64 %24, i64 %sub)
  %32 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %std_fa.i, align 4
  %and.i105 = and i32 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %tobool.i106.not = icmp eq i32 %and.i105, 0
  br i1 %tobool.i106.not, label %i_size_read.exit.if.end37_crit_edge, label %if.then18

i_size_read.exit.if.end37_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then18:                                        ; preds = %i_size_read.exit
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 33
  %36 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %38 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %lcn, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #8
  %39 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %len, align 4, !annotation !75
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %37, i32 0, i32 10
  %40 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %41 to i64
  %shr = lshr i64 %shl, %sh_prom
  %conv20 = trunc i64 %shr to i32
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %37, i32 0, i32 4
  %42 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cluster_mask.i, align 4
  %conv.i = zext i32 %43 to i64
  %add.i = add i64 %31, %conv.i
  %shr.i = lshr i64 %add.i, %sh_prom
  %conv2.i = trunc i64 %shr.i to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new) #8
  %44 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %new, align 1, !annotation !75
  call void @__sanitizer_cov_trace_cmp4(i32 %conv20, i32 %conv2.i)
  %cmp22114 = icmp ult i32 %conv20, %conv2.i
  br i1 %cmp22114, label %if.then18.for.body_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18.for.body_crit_edge:                     ; preds = %if.then18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then18.for.body_crit_edge
  %vcn.0115 = phi i32 [ %add31, %for.inc.for.body_crit_edge ], [ %conv20, %if.then18.for.body_crit_edge ]
  %call24 = call i32 @attr_data_get_block(ptr noundef %add.ptr.i, i32 noundef %vcn.0115, i32 noundef 1, ptr noundef nonnull %lcn, ptr noundef nonnull %len, ptr noundef nonnull %new) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  br label %cleanup56

if.end27:                                         ; preds = %for.body
  %45 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %new, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool28.not = icmp eq i8 %46, 0
  br i1 %tobool28.not, label %if.end27.for.inc_crit_edge, label %if.end30

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void @ntfs_sparse_cluster(ptr noundef %3, ptr noundef null, i32 noundef %vcn.0115, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end30, %if.end27.for.inc_crit_edge
  %47 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len, align 4
  %add31 = add i32 %48, %vcn.0115
  %cmp22 = icmp ult i32 %add31, %conv2.i
  br i1 %cmp22, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then18.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  br label %if.end37

if.end37:                                         ; preds = %cleanup, %i_size_read.exit.if.end37_crit_edge
  %i_valid = getelementptr i8, ptr %3, i32 -288
  %49 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_valid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %31)
  %cmp38 = icmp ult i64 %50, %31
  br i1 %cmp38, label %if.then40, label %if.end37.if.end54_crit_edge

if.end37.if.end54_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then40:                                        ; preds = %if.end37
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  %call.i = call i32 @down_write_trylock(ptr noundef %i_rwsem.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool42.not = icmp eq i32 %call.i, 0
  br i1 %tobool42.not, label %if.then40.cleanup56_crit_edge, label %if.end44

if.then40.cleanup56_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup56

if.end44:                                         ; preds = %if.then40
  %51 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %i_valid, align 8
  %call46 = call fastcc i32 @ntfs_extend_initialized_size(ptr noundef %file, ptr noundef %add.ptr.i, i64 noundef %52, i64 noundef %31)
  call void @up_write(ptr noundef %i_rwsem.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end44.if.end54_crit_edge, label %if.end44.cleanup56_crit_edge

if.end44.cleanup56_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup56

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end54:                                         ; preds = %if.end44.if.end54_crit_edge, %if.end37.if.end54_crit_edge, %if.end10.if.end54_crit_edge
  %call55 = call i32 @generic_file_mmap(ptr noundef %file, ptr noundef %vma) #8
  br label %cleanup56

cleanup56:                                        ; preds = %if.end54, %if.end44.cleanup56_crit_edge, %if.then40.cleanup56_crit_edge, %cleanup.thread, %if.then9, %if.then3, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %if.then3 ], [ -95, %if.then9 ], [ %call55, %if.end54 ], [ %call24, %cleanup.thread ], [ %call46, %if.end44.cleanup56_crit_edge ], [ -11, %if.then40.cleanup56_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_file_release(ptr noundef %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %sbi1 = getelementptr i8, ptr %inode, i32 -348
  %0 = ptrtoint ptr %sbi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sbi1, align 4
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %options, align 4
  %prealloc = getelementptr inbounds %struct.ntfs_mount_options, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %prealloc to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %prealloc, align 4
  %5 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 8
  %6 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_mode, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %i_writecount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_writecount, i32 noundef 4) #8
  %8 = ptrtoint ptr %i_writecount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_writecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  %ni_lock.i = getelementptr i8, ptr %inode, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #8
  %10 = getelementptr i8, ptr %inode, i32 -156
  tail call void @down_write(ptr noundef %10) #8
  %run = getelementptr i8, ptr %inode, i32 -60
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %11 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size, align 8
  %i_valid = getelementptr i8, ptr %inode, i32 -288
  %call5 = tail call i32 @attr_set_size(ptr noundef %add.ptr.i, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run, i64 noundef %12, ptr noundef %i_valid, i1 noundef zeroext false, ptr noundef null) #8
  tail call void @up_write(ptr noundef %10) #8
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call5, %if.then ], [ 0, %land.lhs.true3.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_fallocate(ptr nocapture noundef readonly %file, i32 noundef %mode, i64 noundef %vbo, i64 noundef %len) #0 align 64 {
entry:
  %frame_size = alloca i32, align 4
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  %new = alloca i8, align 1
  %tmp186 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_mapping = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 18
  %0 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %add.ptr.i = getelementptr i8, ptr %3, i32 -360
  %add = add i64 %len, %vbo
  %and = and i64 %vbo, -4096
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %3, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %10)
  %cmp = icmp eq i16 %10, -32768
  br i1 %cmp, label %if.end, label %entry.cleanup188_crit_edge

entry.cleanup188_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup188

if.end:                                           ; preds = %entry
  %and3 = and i32 %mode, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %mode) #8
  br label %cleanup188

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @ntfs_set_state(ptr noundef %7, i32 noundef 1) #8
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  %i_size7 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %11 = ptrtoint ptr %i_size7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size7, align 8
  %ni_flags = getelementptr i8, ptr %3, i32 -4
  %13 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ni_flags, align 4
  %and8 = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end33, label %do.end, !prof !57

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 561, i32 noundef 9, ptr noundef null) #8
  br label %if.end187

if.end33:                                         ; preds = %if.end5
  %and34 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frame_size) #8
  %15 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %frame_size, align 4, !annotation !75
  %and38 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then36.cleanup_crit_edge, label %if.end41

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.then36
  %i_mapping = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping, align 8
  %sub = add i64 %add, -1
  %call42 = tail call i32 @filemap_write_and_wait_range(ptr noundef %17, i64 noundef %vbo, i64 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %18 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping, align 8
  %call47 = tail call i32 @filemap_write_and_wait_range(ptr noundef %19, i64 noundef %add, i64 noundef 9223372036854775807) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  tail call void @inode_dio_wait(ptr noundef %3) #8
  tail call void @truncate_pagecache(ptr noundef %3, i64 noundef %and) #8
  %std_fa.i = getelementptr i8, ptr %3, i32 -172
  %20 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %std_fa.i, align 4
  %22 = and i32 %21, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %is_compressed.exit, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

is_compressed.exit:                               ; preds = %if.end50
  %24 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ni_flags, align 4
  %and1.i = and i32 %25, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %is_compressed.exit.cleanup_crit_edge, label %is_compressed.exit.if.end54_crit_edge

is_compressed.exit.if.end54_crit_edge:            ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

is_compressed.exit.cleanup_crit_edge:             ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end54:                                         ; preds = %is_compressed.exit.if.end54_crit_edge, %if.end50.if.end54_crit_edge
  %ni_lock.i = getelementptr i8, ptr %3, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #8
  %call55 = call i32 @attr_punch_hole(ptr noundef %add.ptr.i, i64 noundef %vbo, i64 noundef %len, ptr noundef nonnull %frame_size) #8
  call void @mutex_unlock(ptr noundef %ni_lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 557, i32 %call55)
  %cmp56.not = icmp eq i32 %call55, 557
  br i1 %cmp56.not, label %if.end59, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  %26 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frame_size, align 4
  %sub60 = add i32 %27, -1
  %conv61 = zext i32 %sub60 to i64
  %add62 = add i64 %conv61, %vbo
  %neg = xor i64 %conv61, -1
  %and63 = and i64 %add62, %neg
  %and65 = and i64 %add, %neg
  %28 = call i64 @llvm.smin.i64(i64 %and63, i64 %add)
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %vbo)
  %cmp69 = icmp sgt i64 %28, %vbo
  br i1 %cmp69, label %if.then71, label %if.end59.if.end76_crit_edge

if.end59.if.end76_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then71:                                        ; preds = %if.end59
  %call72 = call fastcc i32 @ntfs_zero_range(ptr noundef %3, i64 noundef %vbo, i64 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then71.if.end76_crit_edge, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then71.if.end76_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.end76:                                         ; preds = %if.then71.if.end76_crit_edge, %if.end59.if.end76_crit_edge
  %err.0 = phi i32 [ 0, %if.then71.if.end76_crit_edge ], [ 557, %if.end59.if.end76_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %and65, i64 %vbo)
  %cmp77 = icmp sgt i64 %and65, %vbo
  call void @__sanitizer_cov_trace_cmp8(i64 %and65, i64 %add)
  %cmp80 = icmp slt i64 %and65, %add
  %or.cond = and i1 %cmp77, %cmp80
  br i1 %or.cond, label %if.then82, label %if.end76.if.end87_crit_edge

if.end76.if.end87_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then82:                                        ; preds = %if.end76
  %call83 = call fastcc i32 @ntfs_zero_range(ptr noundef %3, i64 noundef %and65, i64 noundef %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then82.if.end87_crit_edge, label %if.then82.cleanup_crit_edge

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then82.if.end87_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end87:                                         ; preds = %if.then82.if.end87_crit_edge, %if.end76.if.end87_crit_edge
  %err.1 = phi i32 [ 0, %if.then82.if.end87_crit_edge ], [ %err.0, %if.end76.if.end87_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %and65, i64 %and63)
  %cmp88 = icmp sgt i64 %and65, %and63
  br i1 %cmp88, label %if.then90, label %if.end87.cleanup_crit_edge

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #8
  %sub91 = sub i64 %and65, %and63
  %call92 = call i32 @attr_punch_hole(ptr noundef %add.ptr.i, i64 noundef %and63, i64 noundef %sub91, ptr noundef null) #8
  call void @mutex_unlock(ptr noundef %ni_lock.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %if.end87.cleanup_crit_edge, %if.then82.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %is_compressed.exit.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then36.cleanup_crit_edge
  %err.3 = phi i32 [ -22, %if.then36.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call47, %if.end45.cleanup_crit_edge ], [ -95, %is_compressed.exit.cleanup_crit_edge ], [ %call55, %if.end54.cleanup_crit_edge ], [ %call72, %if.then71.cleanup_crit_edge ], [ %call83, %if.then82.cleanup_crit_edge ], [ %call92, %if.then90 ], [ %err.1, %if.end87.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frame_size) #8
  br label %out

if.else:                                          ; preds = %if.end33
  %and98 = and i32 %mode, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else116, label %if.then100

if.then100:                                       ; preds = %if.else
  %and101 = and i32 %mode, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end104, label %if.then100.if.end187_crit_edge

if.then100.if.end187_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.end104:                                        ; preds = %if.then100
  %i_mapping105 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %i_mapping105 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i_mapping105, align 8
  %call106 = tail call i32 @filemap_write_and_wait_range(ptr noundef %30, i64 noundef %and, i64 noundef %vbo) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end104.out_crit_edge

if.end104.out_crit_edge:                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end109:                                        ; preds = %if.end104
  %31 = ptrtoint ptr %i_mapping105 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_mapping105, align 8
  %call111 = tail call i32 @filemap_write_and_wait_range(ptr noundef %32, i64 noundef %add, i64 noundef 9223372036854775807) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end109.out_crit_edge

if.end109.out_crit_edge:                          ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end114:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @inode_dio_wait(ptr noundef %3) #8
  tail call void @truncate_pagecache(ptr noundef %3, i64 noundef %and) #8
  %ni_lock.i315 = getelementptr i8, ptr %3, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i315, i32 noundef 4) #8
  %call115 = tail call i32 @attr_collapse_range(ptr noundef %add.ptr.i, i64 noundef %vbo, i64 noundef %len) #8
  tail call void @mutex_unlock(ptr noundef %ni_lock.i315) #8
  br label %out

if.else116:                                       ; preds = %if.else
  %33 = tail call i64 @llvm.smax.i64(i64 %add, i64 %12)
  %call124 = tail call i32 @ntfs_set_size(ptr noundef %3, i64 noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.else116.out_crit_edge

if.else116.out_crit_edge:                         ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end127:                                        ; preds = %if.else116
  %std_fa.i317 = getelementptr i8, ptr %3, i32 -172
  %34 = ptrtoint ptr %std_fa.i317 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %std_fa.i317, align 4
  %36 = and i32 %35, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %is_compressed.exit327, label %if.end127.if.then132_crit_edge

if.end127.if.then132_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then132

is_compressed.exit327:                            ; preds = %if.end127
  %38 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ni_flags, align 4
  %and1.i324 = and i32 %39, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i324)
  %tobool2.i325.not = icmp eq i32 %and1.i324, 0
  br i1 %tobool2.i325.not, label %is_compressed.exit327.if.end171_crit_edge, label %is_compressed.exit327.if.then132_crit_edge

is_compressed.exit327.if.then132_crit_edge:       ; preds = %is_compressed.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then132

is_compressed.exit327.if.end171_crit_edge:        ; preds = %is_compressed.exit327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end171

if.then132:                                       ; preds = %is_compressed.exit327.if.then132_crit_edge, %if.end127.if.then132_crit_edge
  %i_valid = getelementptr i8, ptr %3, i32 -288
  %40 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_valid, align 8
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %7, i32 0, i32 10
  %42 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %43 to i64
  %shr = lshr i64 %41, %sh_prom
  %conv134 = trunc i64 %shr to i32
  %shr138 = ashr i64 %vbo, %sh_prom
  %conv139 = trunc i64 %shr138 to i32
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %7, i32 0, i32 4
  %44 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cluster_mask.i, align 4
  %conv.i = zext i32 %45 to i64
  %add.i = add i64 %add, %conv.i
  %shr.i = lshr i64 %add.i, %sh_prom
  %conv2.i = trunc i64 %shr.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %46 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %lcn, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #8
  %47 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %clen, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new) #8
  %48 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -1, ptr %new, align 1, !annotation !75
  call void @__sanitizer_cov_trace_cmp4(i32 %conv139, i32 %conv2.i)
  %cmp141342 = icmp ult i32 %conv139, %conv2.i
  br i1 %cmp141342, label %if.then132.for.body_crit_edge, label %if.then132.cleanup163.thread_crit_edge

if.then132.cleanup163.thread_crit_edge:           ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup163.thread

if.then132.for.body_crit_edge:                    ; preds = %if.then132
  br label %for.body

cleanup163.thread:                                ; preds = %for.inc.cleanup163.thread_crit_edge, %if.then132.cleanup163.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  br label %if.end171

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then132.for.body_crit_edge
  %vcn.0343 = phi i32 [ %add162, %for.inc.for.body_crit_edge ], [ %conv139, %if.then132.for.body_crit_edge ]
  %sub143 = sub i32 %conv2.i, %vcn.0343
  %call144 = call i32 @attr_data_get_block(ptr noundef %add.ptr.i, i32 noundef %vcn.0343, i32 noundef %sub143, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef nonnull %new) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %cleanup163

if.end147:                                        ; preds = %for.body
  %49 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %new, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool148.not = icmp ne i8 %50, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %vcn.0343, i32 %conv134)
  %cmp150.not = icmp ult i32 %vcn.0343, %conv134
  %or.cond308 = select i1 %tobool148.not, i1 %cmp150.not, i1 false
  br i1 %or.cond308, label %if.end153, label %if.end147.for.inc_crit_edge

if.end147.for.inc_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end153:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  %sub154 = sub i32 %conv134, %vcn.0343
  %51 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %clen, align 4
  %53 = call i32 @llvm.umin.i32(i32 %sub154, i32 %52)
  call void @ntfs_sparse_cluster(ptr noundef %3, ptr noundef null, i32 noundef %vcn.0343, i32 noundef %53)
  br label %for.inc

for.inc:                                          ; preds = %if.end153, %if.end147.for.inc_crit_edge
  %54 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %clen, align 4
  %add162 = add i32 %55, %vcn.0343
  %cmp141 = icmp ult i32 %add162, %conv2.i
  br i1 %cmp141, label %for.inc.for.body_crit_edge, label %for.inc.cleanup163.thread_crit_edge

for.inc.cleanup163.thread_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup163.thread

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup163:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  br label %out

if.end171:                                        ; preds = %cleanup163.thread, %is_compressed.exit327.if.end171_crit_edge
  %and172 = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.end171.if.then185_crit_edge, label %if.then174

if.end171.if.then185_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185

if.then174:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  %ni_lock.i328 = getelementptr i8, ptr %3, i32 -264
  call void @mutex_lock_nested(ptr noundef %ni_lock.i328, i32 noundef 4) #8
  %run = getelementptr i8, ptr %3, i32 -60
  %i_valid175 = getelementptr i8, ptr %3, i32 -288
  %call176 = call i32 @attr_set_size(ptr noundef %add.ptr.i, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run, i64 noundef %12, ptr noundef %i_valid175, i1 noundef zeroext true, ptr noundef null) #8
  call void @mutex_unlock(ptr noundef %ni_lock.i328) #8
  br label %out

out:                                              ; preds = %if.then174, %cleanup163, %if.else116.out_crit_edge, %if.end114, %if.end109.out_crit_edge, %if.end104.out_crit_edge, %cleanup
  %err.7 = phi i32 [ %err.3, %cleanup ], [ %call106, %if.end104.out_crit_edge ], [ %call111, %if.end109.out_crit_edge ], [ %call115, %if.end114 ], [ %call124, %if.else116.out_crit_edge ], [ %call144, %cleanup163 ], [ %call176, %if.then174 ]
  %56 = zext i32 %err.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.7, label %if.end187.fold.split [
    i32 -27, label %out.if.end187_crit_edge
    i32 0, label %out.if.then185_crit_edge
  ]

out.if.then185_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then185

out.if.end187_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then185:                                       ; preds = %out.if.then185_crit_edge, %if.end171.if.then185_crit_edge
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp186) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp186, ptr noundef %3) #8
  %57 = call ptr @memcpy(ptr %i_mtime, ptr %tmp186, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp186) #8
  %58 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #8
  br label %if.end187

if.end187.fold.split:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.end187:                                        ; preds = %if.end187.fold.split, %if.then185, %out.if.end187_crit_edge, %if.then100.if.end187_crit_edge, %do.end
  %59 = phi i32 [ 0, %if.then185 ], [ -28, %out.if.end187_crit_edge ], [ -95, %do.end ], [ -22, %if.then100.if.end187_crit_edge ], [ %err.7, %if.end187.fold.split ]
  call void @up_write(ptr noundef %i_rwsem.i) #8
  br label %cleanup188

cleanup188:                                       ; preds = %if.end187, %if.then4, %entry.cleanup188_crit_edge
  %retval.0 = phi i32 [ -95, %if.then4 ], [ %59, %if.end187 ], [ -95, %entry.cleanup188_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_truncate_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_get_block(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_set_size(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_sync_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_extend_initialized_size(ptr noundef %file, ptr noundef %ni, i64 noundef %valid, i64 noundef %new_valid) unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  %fsdata = alloca ptr, align 4
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11
  %i_mapping = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %i_sb = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 11, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  %ni_flags.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 10
  %6 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ni_flags.i, align 4
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_valid = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 1
  %8 = ptrtoint ptr %i_valid to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %new_valid, ptr %i_valid, align 8
  br label %cleanup130

if.end:                                           ; preds = %entry
  %std_fa.i = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 4
  %9 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %std_fa.i, align 4
  %and.i189 = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool.not.i = icmp ne i32 %and.i189, 0
  %and1.i = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i = icmp ne i32 %and1.i, 0
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool2.i
  br i1 %or.cond, label %do.end, label %if.end.if.end16_crit_edge, !prof !77

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef null) #8
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %valid, i64 %new_valid)
  %cmp.not = icmp slt i64 %valid, %new_valid
  br i1 %cmp.not, label %if.end16.if.end45_crit_edge, label %do.end39, !prof !57

if.end16.if.end45_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

do.end39:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #8
  br label %if.end45

if.end45:                                         ; preds = %do.end39, %if.end16.if.end45_crit_edge
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %5, i32 0, i32 10
  %i_valid73 = getelementptr inbounds %struct.ntfs_inode, ptr %ni, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %cleanup119, %if.end45
  %pos.0 = phi i64 [ %valid, %if.end45 ], [ %pos.4, %cleanup119 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #8
  %11 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsdata) #8
  %12 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %fsdata, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %13 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %lcn, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #8
  %14 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %clen, align 4, !annotation !75
  %15 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %std_fa.i, align 4
  %and.i192 = and i32 %16, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i192)
  %tobool.i.not = icmp eq i32 %and.i192, 0
  br i1 %tobool.i.not, label %for.cond.if.end92_crit_edge, label %if.then54

for.cond.if.end92_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then54:                                        ; preds = %for.cond
  %17 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cluster_bits, align 8
  %sh_prom = zext i8 %18 to i64
  %shr = ashr i64 %pos.0, %sh_prom
  %conv55 = trunc i64 %shr to i32
  %call56 = call i32 @attr_data_get_block(ptr noundef %ni, i32 noundef %conv55, i32 noundef 0, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then54.out_crit_edge

if.then54.out_crit_edge:                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end59:                                         ; preds = %if.then54
  %19 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp60 = icmp eq i32 %20, -1
  br i1 %cmp60, label %if.then62, label %if.end59.if.end92_crit_edge

if.end59.if.end92_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then62:                                        ; preds = %if.end59
  %conv63 = and i64 %shr, 4294967295
  %21 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clen, align 4
  %conv66 = zext i32 %22 to i64
  %23 = add nuw nsw i64 %conv63, %conv66
  %add = shl i64 %23, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %new_valid)
  %cmp70.not = icmp sgt i64 %add, %new_valid
  br i1 %cmp70.not, label %if.end74, label %if.then72

if.then72:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %i_valid73 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add, ptr %i_valid73, align 8
  br label %next

if.end74:                                         ; preds = %if.then62
  %shl = shl i64 %conv63, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %pos.0)
  %cmp75 = icmp slt i64 %shl, %pos.0
  br i1 %cmp75, label %if.end74.if.end92_crit_edge, label %if.else

if.end74.if.end92_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.else:                                          ; preds = %if.end74
  %25 = shl nsw i64 -1, %sh_prom
  %shl83 = and i64 %25, %new_valid
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.0, i64 %shl83)
  %cmp84 = icmp slt i64 %pos.0, %shl83
  br i1 %cmp84, label %if.then86, label %if.else.if.end92_crit_edge

if.else.if.end92_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then86:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %i_valid73 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %shl83, ptr %i_valid73, align 8
  br label %next

if.end92:                                         ; preds = %if.else.if.end92_crit_edge, %if.end74.if.end92_crit_edge, %if.end59.if.end92_crit_edge, %for.cond.if.end92_crit_edge
  %pos.3 = phi i64 [ %pos.0, %if.end59.if.end92_crit_edge ], [ %pos.0, %for.cond.if.end92_crit_edge ], [ %shl, %if.end74.if.end92_crit_edge ], [ %pos.0, %if.else.if.end92_crit_edge ]
  %27 = trunc i64 %pos.3 to i32
  %conv93 = and i32 %27, 4095
  %sub = sub nuw nsw i32 4096, %conv93
  %conv94 = zext i32 %sub to i64
  %add95 = add i64 %pos.3, %conv94
  call void @__sanitizer_cov_trace_cmp8(i64 %add95, i64 %new_valid)
  %cmp96 = icmp sgt i64 %add95, %new_valid
  %sub99 = sub i64 %new_valid, %pos.3
  %conv100 = trunc i64 %sub99 to i32
  %len.0 = select i1 %cmp96, i32 %conv100, i32 %sub
  %call102 = call i32 @pagecache_write_begin(ptr noundef %file, ptr noundef %1, i64 noundef %pos.3, i32 noundef %len.0, i32 noundef 0, ptr noundef nonnull %page, ptr noundef nonnull %fsdata) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end92.out_crit_edge

if.end92.out_crit_edge:                           ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end105:                                        ; preds = %if.end92
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page, align 4
  call void @zero_user_segments(ptr noundef %29, i32 noundef %conv93, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  %30 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %page, align 4
  %32 = ptrtoint ptr %fsdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fsdata, align 4
  %call106 = call i32 @pagecache_write_end(ptr noundef %file, ptr noundef %1, i64 noundef %pos.3, i32 noundef %len.0, i32 noundef %len.0, ptr noundef %31, ptr noundef %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.end105.out_crit_edge, label %if.end110

if.end105.out_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end110:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %conv111 = zext i32 %len.0 to i64
  %add112 = add i64 %pos.3, %conv111
  br label %next

next:                                             ; preds = %if.end110, %if.then86, %if.then72
  %pos.4 = phi i64 [ %add112, %if.end110 ], [ %add, %if.then72 ], [ %shl83, %if.then86 ]
  %cmp113.not = icmp slt i64 %pos.4, %new_valid
  br i1 %cmp113.not, label %cleanup119, label %cleanup119.thread199

cleanup119.thread199:                             ; preds = %next
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #8
  br label %cleanup130

cleanup119:                                       ; preds = %next
  call void @__sanitizer_cov_trace_pc() #10
  call void @balance_dirty_pages_ratelimited(ptr noundef %1) #8
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #8
  br label %for.cond

out:                                              ; preds = %if.end105.out_crit_edge, %if.end92.out_crit_edge, %if.then54.out_crit_edge
  %err.1.ph = phi i32 [ %call106, %if.end105.out_crit_edge ], [ %call102, %if.end92.out_crit_edge ], [ %call56, %if.then54.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #8
  %34 = ptrtoint ptr %i_valid73 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %valid, ptr %i_valid73, align 8
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %vfs_inode, ptr noundef nonnull @.str.5, i64 noundef %new_valid) #8
  br label %cleanup130

cleanup130:                                       ; preds = %out, %cleanup119.thread199, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.1.ph, %out ], [ 0, %cleanup119.thread199 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_mapping_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_data_get_block(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_inode_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_read_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_compress_write(ptr nocapture noundef %iocb, ptr noundef %from) unnamed_addr #0 align 64 {
entry:
  %frame_uptodate = alloca i8, align 1
  %lcn = alloca i32, align 4
  %clen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 8
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %4 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ki_pos, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %i_size2 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %i_size2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size2, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_mapping, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -360
  %i_valid = getelementptr i8, ptr %7, i32 -288
  %12 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_valid, align 8
  %sbi4 = getelementptr i8, ptr %7, i32 -348
  %14 = ptrtoint ptr %sbi4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sbi4, align 4
  %cluster_bits = getelementptr inbounds %struct.ntfs_sb_info, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cluster_bits, align 8
  %add = add i8 %17, 4
  %conv6 = zext i8 %add to i32
  %shl = shl nuw i32 1, %conv6
  %shr = lshr i32 %shl, 12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %frame_uptodate) #8
  %18 = ptrtoint ptr %frame_uptodate to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %frame_uptodate, align 1, !annotation !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %add)
  %cmp = icmp ult i8 %add, 12
  br i1 %cmp, label %if.then, label %if.end7.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %7, ptr noundef nonnull @.str.10) #8
  br label %cleanup249

if.end7.i:                                        ; preds = %entry
  %19 = shl nuw nsw i32 %shr, 2
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3136) #12
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup249_crit_edge, label %if.end10

if.end7.i.cleanup249_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

if.end10:                                         ; preds = %if.end7.i
  %call11 = tail call ptr @inode_to_bdi(ptr noundef %7) #8
  %20 = tail call i32 @llvm.read_register.i32(metadata !45) #8
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %backing_dev_info = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 150
  %24 = ptrtoint ptr %backing_dev_info to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call11, ptr %backing_dev_info, align 4
  %call13 = tail call i32 @file_remove_privs(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %if.end10
  %call17 = tail call i32 @file_update_time(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %while.cond.preheader, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.cond.preheader:                             ; preds = %if.end16
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %5)
  %cmp21554 = icmp ult i64 %13, %5
  br i1 %cmp21554, label %while.body.lr.ph, label %while.cond.preheader.while.cond90.preheader_crit_edge

while.cond.preheader.while.cond90.preheader_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond90.preheader

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sh_prom = zext i8 %add to i64
  %sub = add i32 %shl, -1
  %neg = sub i32 0, %shl
  %conv26 = zext i32 %neg to i64
  %ni_lock.i = getelementptr i8, ptr %7, i32 -264
  %conv86 = zext i32 %shl to i64
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %while.body

while.cond90.preheader:                           ; preds = %cleanup.while.cond90.preheader_crit_edge, %while.cond.preheader.while.cond90.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool91.not558 = icmp eq i32 %3, 0
  br i1 %tobool91.not558, label %while.cond90.preheader.out_crit_edge, label %while.body92.lr.ph

while.cond90.preheader.out_crit_edge:             ; preds = %while.cond90.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.body92.lr.ph:                               ; preds = %while.cond90.preheader
  %sub93 = add i32 %shl, -1
  %conv94 = zext i32 %sub93 to i64
  %neg107 = sub i32 0, %shl
  %conv108 = zext i32 %neg107 to i64
  %ni_lock.i484 = getelementptr i8, ptr %7, i32 -264
  %umax606 = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %while.body92

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %valid.0555 = phi i64 [ %13, %while.body.lr.ph ], [ %storemerge, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #8
  %25 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %lcn, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clen) #8
  %26 = ptrtoint ptr %clen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %clen, align 4, !annotation !75
  %shr24 = lshr i64 %valid.0555, %sh_prom
  %conv25 = trunc i64 %shr24 to i32
  %and = and i64 %valid.0555, %conv26
  %27 = trunc i64 %valid.0555 to i32
  %conv30 = and i32 %sub, %27
  %shl31 = shl i32 %conv25, 4
  %call32 = call i32 @attr_data_get_block(ptr noundef %add.ptr.i, i32 noundef %shl31, i32 noundef 0, ptr noundef nonnull %lcn, ptr noundef nonnull %clen, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %while.body.cleanup.thread_crit_edge

while.body.cleanup.thread_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end35:                                         ; preds = %while.body
  %28 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp36 = icmp eq i32 %29, -1
  br i1 %cmp36, label %if.then38, label %if.end46

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %clen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clen, align 4
  %conv39 = zext i32 %31 to i64
  %32 = ptrtoint ptr %cluster_bits to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cluster_bits, align 8
  %sh_prom42 = zext i8 %33 to i64
  %shl43 = shl i64 %conv39, %sh_prom42
  br label %cleanup

if.end46:                                         ; preds = %if.end35
  %shr47 = lshr i64 %and, 12
  %conv48 = trunc i64 %shr47 to i32
  %call49 = call fastcc i32 @ntfs_get_frame_pages(ptr noundef %11, i32 noundef %conv48, ptr noundef nonnull %call8.i, i32 noundef %shr, ptr noundef nonnull %frame_uptodate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end46.cleanup.thread_crit_edge

if.end46.cleanup.thread_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end52:                                         ; preds = %if.end46
  %34 = ptrtoint ptr %frame_uptodate to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %frame_uptodate, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool53.not = icmp ne i8 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv30)
  %tobool54.not = icmp eq i32 %conv30, 0
  %or.cond = select i1 %tobool53.not, i1 true, i1 %tobool54.not
  br i1 %or.cond, label %if.end52.if.end62_crit_edge, label %if.then55

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then55:                                        ; preds = %if.end52
  %call56 = call i32 @ni_read_frame(ptr noundef %add.ptr.i, i64 noundef %and, ptr noundef nonnull %call8.i, i32 noundef %shr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.if.end62_crit_edge, label %if.then55.for.body_crit_edge

if.then55.for.body_crit_edge:                     ; preds = %if.then55
  br label %for.body

if.then55.if.end62_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %if.then55.for.body_crit_edge
  %ip.0574 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %if.then55.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %call8.i, i32 %ip.0574
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  call void @unlock_page(ptr noundef %37) #8
  %38 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i436 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i436)
  %tobool.not.i.i437 = icmp eq i32 %and.i.i436, 0
  br i1 %tobool.not.i.i437, label %if.end.i.i440, label %if.then.i.i439, !prof !57

if.then.i.i439:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i438 = add i32 %40, -1
  br label %_compound_head.exit.i442

if.end.i.i440:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %37 to i32
  br label %_compound_head.exit.i442

_compound_head.exit.i442:                         ; preds = %if.end.i.i440, %if.then.i.i439
  %retval.0.i.i441 = phi i32 [ %sub.i.i438, %if.then.i.i439 ], [ %41, %if.end.i.i440 ]
  %42 = inttoptr i32 %retval.0.i.i441 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %42, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %43 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i.i.i.i = icmp eq i32 %44, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !55

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i442
  call void @__sanitizer_cov_trace_pc() #10
  %45 = inttoptr i32 %retval.0.i.i441 to ptr
  call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.4) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i442
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %46 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_compress_write, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !64

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %42, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %42) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw nsw i32 %ip.0574, 1
  %exitcond605.not = icmp eq i32 %inc, %umax
  br i1 %exitcond605.not, label %put_page.exit.cleanup.thread_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

put_page.exit.cleanup.thread_crit_edge:           ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end62:                                         ; preds = %if.then55.if.end62_crit_edge, %if.end52.if.end62_crit_edge
  %shr63 = lshr i32 %conv30, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr63, i32 %shr)
  %cmp67549 = icmp ult i32 %shr63, %shr
  br i1 %cmp67549, label %for.body69.preheader, label %if.end62.for.body78.preheader_crit_edge

if.end62.for.body78.preheader_crit_edge:          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78.preheader

for.body69.preheader:                             ; preds = %if.end62
  %and65 = and i32 %27, 4095
  %arrayidx70.peel = getelementptr ptr, ptr %call8.i, i32 %shr63
  %47 = ptrtoint ptr %arrayidx70.peel to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx70.peel, align 4
  call void @zero_user_segments(ptr noundef %48, i32 noundef %and65, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  call void @flush_dcache_page(ptr noundef %48) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  %49 = getelementptr inbounds %struct.page, ptr %48, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %49, align 4
  %and.i.i.i.i.peel = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.peel)
  %tobool.not.i.i.i.peel = icmp eq i32 %and.i.i.i.i.peel, 0
  br i1 %tobool.not.i.i.i.peel, label %SetPageUptodate.exit.peel, label %for.body69.preheader.if.then.i.i.i_crit_edge, !prof !57

for.body69.preheader.if.then.i.i.i_crit_edge:     ; preds = %for.body69.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

SetPageUptodate.exit.peel:                        ; preds = %for.body69.preheader
  call void @_set_bit(i32 noundef 2, ptr noundef %48) #8
  %inc72.peel = add nuw nsw i32 %shr63, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc72.peel, i32 %shr)
  %exitcond.peel.not = icmp eq i32 %inc72.peel, %shr
  br i1 %exitcond.peel.not, label %SetPageUptodate.exit.peel.for.body78.preheader_crit_edge, label %SetPageUptodate.exit.peel.for.body69_crit_edge

SetPageUptodate.exit.peel.for.body69_crit_edge:   ; preds = %SetPageUptodate.exit.peel
  br label %for.body69

SetPageUptodate.exit.peel.for.body78.preheader_crit_edge: ; preds = %SetPageUptodate.exit.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78.preheader

for.body69:                                       ; preds = %SetPageUptodate.exit.for.body69_crit_edge, %SetPageUptodate.exit.peel.for.body69_crit_edge
  %ip.1550 = phi i32 [ %inc72, %SetPageUptodate.exit.for.body69_crit_edge ], [ %inc72.peel, %SetPageUptodate.exit.peel.for.body69_crit_edge ]
  %arrayidx70 = getelementptr ptr, ptr %call8.i, i32 %ip.1550
  %52 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx70, align 4
  call void @zero_user_segments(ptr noundef %53, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  call void @flush_dcache_page(ptr noundef %53) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  %54 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %and.i.i.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %for.body69.if.then.i.i.i_crit_edge, !prof !57

for.body69.if.then.i.i.i_crit_edge:               ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body69.if.then.i.i.i_crit_edge, %for.body69.preheader.if.then.i.i.i_crit_edge
  %.lcssa594 = phi ptr [ %53, %for.body69.if.then.i.i.i_crit_edge ], [ %48, %for.body69.preheader.if.then.i.i.i_crit_edge ]
  call void @dump_page(ptr noundef %.lcssa594, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

SetPageUptodate.exit:                             ; preds = %for.body69
  call void @_set_bit(i32 noundef 2, ptr noundef %53) #8
  %inc72 = add nuw nsw i32 %ip.1550, 1
  %exitcond.not = icmp eq i32 %inc72, %shr
  br i1 %exitcond.not, label %SetPageUptodate.exit.for.body78.preheader_crit_edge, label %SetPageUptodate.exit.for.body69_crit_edge, !llvm.loop !79

SetPageUptodate.exit.for.body69_crit_edge:        ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body69

SetPageUptodate.exit.for.body78.preheader_crit_edge: ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78.preheader

for.body78.preheader:                             ; preds = %SetPageUptodate.exit.for.body78.preheader_crit_edge, %SetPageUptodate.exit.peel.for.body78.preheader_crit_edge, %if.end62.for.body78.preheader_crit_edge
  call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #8
  %call74 = call i32 @ni_write_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %call8.i, i32 noundef %shr) #8
  call void @mutex_unlock(ptr noundef %ni_lock.i) #8
  br label %for.body78

for.body78:                                       ; preds = %put_page.exit463.for.body78_crit_edge, %for.body78.preheader
  %ip.2553 = phi i32 [ %inc81, %put_page.exit463.for.body78_crit_edge ], [ 0, %for.body78.preheader ]
  %arrayidx79 = getelementptr ptr, ptr %call8.i, i32 %ip.2553
  %57 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx79, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  %59 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and.i.i.i.i425 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i425)
  %tobool.not.i.i.i426 = icmp eq i32 %and.i.i.i.i425, 0
  br i1 %tobool.not.i.i.i426, label %SetPageUptodate.exit428, label %if.then.i.i.i427, !prof !57

if.then.i.i.i427:                                 ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

SetPageUptodate.exit428:                          ; preds = %for.body78
  call void @_set_bit(i32 noundef 2, ptr noundef %58) #8
  call void @unlock_page(ptr noundef %58) #8
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %59, align 4
  %and.i.i444 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i444)
  %tobool.not.i.i445 = icmp eq i32 %and.i.i444, 0
  br i1 %tobool.not.i.i445, label %if.end.i.i448, label %if.then.i.i447, !prof !57

if.then.i.i447:                                   ; preds = %SetPageUptodate.exit428
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i446 = add i32 %63, -1
  br label %_compound_head.exit.i453

if.end.i.i448:                                    ; preds = %SetPageUptodate.exit428
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %58 to i32
  br label %_compound_head.exit.i453

_compound_head.exit.i453:                         ; preds = %if.end.i.i448, %if.then.i.i447
  %retval.0.i.i449 = phi i32 [ %sub.i.i446, %if.then.i.i447 ], [ %64, %if.end.i.i448 ]
  %65 = inttoptr i32 %retval.0.i.i449 to ptr
  %_refcount.i.i.i.i.i450 = getelementptr inbounds %struct.page, ptr %65, i32 0, i32 3
  %call.i.i.i.i.i.i.i451 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i450, i32 noundef 4) #8
  %66 = ptrtoint ptr %_refcount.i.i.i.i.i450 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %_refcount.i.i.i.i.i450, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.i.i.i452 = icmp eq i32 %67, 0
  br i1 %cmp.i.i.i.i452, label %if.then.i.i.i.i454, label %do.end5.i.i.i.i458, !prof !55

if.then.i.i.i.i454:                               ; preds = %_compound_head.exit.i453
  call void @__sanitizer_cov_trace_pc() #10
  %68 = inttoptr i32 %retval.0.i.i449 to ptr
  call void @dump_page(ptr noundef %68, ptr noundef nonnull @.str.4) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end5.i.i.i.i458:                               ; preds = %_compound_head.exit.i453
  %call.i.i.i10.i.i.i.i455 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i450, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i450, i32 1, i32 3, i32 1) #8
  %69 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i450, ptr %_refcount.i.i.i.i.i450, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i450) #8, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i.i456 = extractvalue { i32, i32 } %69, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i456)
  %cmp.i.i.i.i.i.i.i457 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i456, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_compress_write, %if.then.i.i.i.i.i460)) #8
          to label %folio_put_testzero.exit.i.i461 [label %if.then.i.i.i.i.i460], !srcloc !64

if.then.i.i.i.i.i460:                             ; preds = %do.end5.i.i.i.i458
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i459 = zext i1 %cmp.i.i.i.i.i.i.i457 to i32
  call void @__page_ref_mod_and_test(ptr noundef %65, i32 noundef -1, i32 noundef %conv.i.i.i.i.i459) #8
  br label %folio_put_testzero.exit.i.i461

folio_put_testzero.exit.i.i461:                   ; preds = %if.then.i.i.i.i.i460, %do.end5.i.i.i.i458
  br i1 %cmp.i.i.i.i.i.i.i457, label %if.then.i4.i462, label %folio_put_testzero.exit.i.i461.put_page.exit463_crit_edge

folio_put_testzero.exit.i.i461.put_page.exit463_crit_edge: ; preds = %folio_put_testzero.exit.i.i461
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit463

if.then.i4.i462:                                  ; preds = %folio_put_testzero.exit.i.i461
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %65) #8
  br label %put_page.exit463

put_page.exit463:                                 ; preds = %if.then.i4.i462, %folio_put_testzero.exit.i.i461.put_page.exit463_crit_edge
  %inc81 = add nuw nsw i32 %ip.2553, 1
  %exitcond603.not = icmp eq i32 %inc81, %umax
  br i1 %exitcond603.not, label %for.end82, label %put_page.exit463.for.body78_crit_edge

put_page.exit463.for.body78_crit_edge:            ; preds = %put_page.exit463
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body78

for.end82:                                        ; preds = %put_page.exit463
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool83.not = icmp eq i32 %call74, 0
  br i1 %tobool83.not, label %for.end82.cleanup_crit_edge, label %for.end82.cleanup.thread_crit_edge

for.end82.cleanup.thread_crit_edge:               ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

for.end82.cleanup_crit_edge:                      ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.thread:                                   ; preds = %for.end82.cleanup.thread_crit_edge, %put_page.exit.cleanup.thread_crit_edge, %if.end46.cleanup.thread_crit_edge, %while.body.cleanup.thread_crit_edge
  %err.1.ph = phi i32 [ %call56, %put_page.exit.cleanup.thread_crit_edge ], [ %call32, %while.body.cleanup.thread_crit_edge ], [ %call49, %if.end46.cleanup.thread_crit_edge ], [ %call74, %for.end82.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  br label %out

cleanup:                                          ; preds = %for.end82.cleanup_crit_edge, %if.then38
  %conv86.pn = phi i64 [ %shl43, %if.then38 ], [ %conv86, %for.end82.cleanup_crit_edge ]
  %storemerge = add i64 %conv86.pn, %and
  %70 = ptrtoint ptr %i_valid to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %storemerge, ptr %i_valid, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clen) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #8
  %cmp21 = icmp ult i64 %storemerge, %5
  br i1 %cmp21, label %cleanup.while.body_crit_edge, label %cleanup.while.cond90.preheader_crit_edge

cleanup.while.cond90.preheader_crit_edge:         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond90.preheader

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body92:                                     ; preds = %cleanup226.while.body92_crit_edge, %while.body92.lr.ph
  %written.0563 = phi i32 [ 0, %while.body92.lr.ph ], [ %add224, %cleanup226.while.body92_crit_edge ]
  %pos.0560 = phi i64 [ %5, %while.body92.lr.ph ], [ %add223, %cleanup226.while.body92_crit_edge ]
  %count.0559 = phi i32 [ %3, %while.body92.lr.ph ], [ %115, %cleanup226.while.body92_crit_edge ]
  %71 = trunc i64 %pos.0560 to i32
  %conv96 = and i32 %sub93, %71
  %sub97 = sub i32 %shl, %conv96
  %72 = call i32 @llvm.umin.i32(i32 %sub97, i32 %count.0559)
  %and109 = and i64 %pos.0560, %conv108
  %call112 = call i32 @fault_in_iov_iter_readable(ptr noundef %from, i32 noundef %72) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end117, label %while.body92.out_crit_edge, !prof !57

while.body92.out_crit_edge:                       ; preds = %while.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end117:                                        ; preds = %while.body92
  %shr110 = lshr i64 %and109, 12
  %conv111 = trunc i64 %shr110 to i32
  %call118 = call fastcc i32 @ntfs_get_frame_pages(ptr noundef %11, i32 noundef %conv111, ptr noundef nonnull %call8.i, i32 noundef %shr, ptr noundef nonnull %frame_uptodate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end117.out_crit_edge

if.end117.out_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end121:                                        ; preds = %if.end117
  %73 = ptrtoint ptr %frame_uptodate to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %frame_uptodate, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool122.not = icmp eq i8 %74, 0
  br i1 %tobool122.not, label %if.then123, label %if.end121.if.end151_crit_edge

if.end121.if.end151_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.then123:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv96)
  %tobool126.not = icmp eq i32 %conv96, 0
  br i1 %tobool126.not, label %lor.lhs.false, label %if.then123.if.then134_crit_edge

if.then123.if.then134_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then134

lor.lhs.false:                                    ; preds = %if.then123
  %conv124 = zext i32 %72 to i64
  %add125 = add i64 %pos.0560, %conv124
  call void @__sanitizer_cov_trace_cmp8(i64 %add125, i64 %9)
  %cmp127 = icmp sge i64 %add125, %9
  %and132 = and i64 %add125, %conv94
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and132)
  %tobool133.not = icmp eq i64 %and132, 0
  %or.cond423 = select i1 %cmp127, i1 true, i1 %tobool133.not
  br i1 %or.cond423, label %lor.lhs.false.if.end151_crit_edge, label %lor.lhs.false.if.then134_crit_edge

lor.lhs.false.if.then134_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then134

lor.lhs.false.if.end151_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

if.then134:                                       ; preds = %lor.lhs.false.if.then134_crit_edge, %if.then123.if.then134_crit_edge
  %call135 = call i32 @ni_read_frame(ptr noundef %add.ptr.i, i64 noundef %and109, ptr noundef nonnull %call8.i, i32 noundef %shr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.then134.if.end151_crit_edge, label %if.then134.for.body141_crit_edge

if.then134.for.body141_crit_edge:                 ; preds = %if.then134
  br label %for.body141

if.then134.if.end151_crit_edge:                   ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151

for.body141:                                      ; preds = %put_page.exit483.for.body141_crit_edge, %if.then134.for.body141_crit_edge
  %ip.3572 = phi i32 [ %inc144, %put_page.exit483.for.body141_crit_edge ], [ 0, %if.then134.for.body141_crit_edge ]
  %arrayidx142 = getelementptr ptr, ptr %call8.i, i32 %ip.3572
  %75 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx142, align 4
  call void @unlock_page(ptr noundef %76) #8
  %77 = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %77, align 4
  %and.i.i464 = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i464)
  %tobool.not.i.i465 = icmp eq i32 %and.i.i464, 0
  br i1 %tobool.not.i.i465, label %if.end.i.i468, label %if.then.i.i467, !prof !57

if.then.i.i467:                                   ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i466 = add i32 %79, -1
  br label %_compound_head.exit.i473

if.end.i.i468:                                    ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %76 to i32
  br label %_compound_head.exit.i473

_compound_head.exit.i473:                         ; preds = %if.end.i.i468, %if.then.i.i467
  %retval.0.i.i469 = phi i32 [ %sub.i.i466, %if.then.i.i467 ], [ %80, %if.end.i.i468 ]
  %81 = inttoptr i32 %retval.0.i.i469 to ptr
  %_refcount.i.i.i.i.i470 = getelementptr inbounds %struct.page, ptr %81, i32 0, i32 3
  %call.i.i.i.i.i.i.i471 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i470, i32 noundef 4) #8
  %82 = ptrtoint ptr %_refcount.i.i.i.i.i470 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %_refcount.i.i.i.i.i470, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i.i.i.i472 = icmp eq i32 %83, 0
  br i1 %cmp.i.i.i.i472, label %if.then.i.i.i.i474, label %do.end5.i.i.i.i478, !prof !55

if.then.i.i.i.i474:                               ; preds = %_compound_head.exit.i473
  call void @__sanitizer_cov_trace_pc() #10
  %84 = inttoptr i32 %retval.0.i.i469 to ptr
  call void @dump_page(ptr noundef %84, ptr noundef nonnull @.str.4) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end5.i.i.i.i478:                               ; preds = %_compound_head.exit.i473
  %call.i.i.i10.i.i.i.i475 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i470, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i470, i32 1, i32 3, i32 1) #8
  %85 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i470, ptr %_refcount.i.i.i.i.i470, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i470) #8, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i.i476 = extractvalue { i32, i32 } %85, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i476)
  %cmp.i.i.i.i.i.i.i477 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i476, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_compress_write, %if.then.i.i.i.i.i480)) #8
          to label %folio_put_testzero.exit.i.i481 [label %if.then.i.i.i.i.i480], !srcloc !64

if.then.i.i.i.i.i480:                             ; preds = %do.end5.i.i.i.i478
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i479 = zext i1 %cmp.i.i.i.i.i.i.i477 to i32
  call void @__page_ref_mod_and_test(ptr noundef %81, i32 noundef -1, i32 noundef %conv.i.i.i.i.i479) #8
  br label %folio_put_testzero.exit.i.i481

folio_put_testzero.exit.i.i481:                   ; preds = %if.then.i.i.i.i.i480, %do.end5.i.i.i.i478
  br i1 %cmp.i.i.i.i.i.i.i477, label %if.then.i4.i482, label %folio_put_testzero.exit.i.i481.put_page.exit483_crit_edge

folio_put_testzero.exit.i.i481.put_page.exit483_crit_edge: ; preds = %folio_put_testzero.exit.i.i481
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit483

if.then.i4.i482:                                  ; preds = %folio_put_testzero.exit.i.i481
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %81) #8
  br label %put_page.exit483

put_page.exit483:                                 ; preds = %if.then.i4.i482, %folio_put_testzero.exit.i.i481.put_page.exit483_crit_edge
  %inc144 = add nuw nsw i32 %ip.3572, 1
  %exitcond609.not = icmp eq i32 %inc144, %umax606
  br i1 %exitcond609.not, label %put_page.exit483.out_crit_edge, label %put_page.exit483.for.body141_crit_edge

put_page.exit483.for.body141_crit_edge:           ; preds = %put_page.exit483
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body141

put_page.exit483.out_crit_edge:                   ; preds = %put_page.exit483
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end151:                                        ; preds = %if.then134.if.end151_crit_edge, %lor.lhs.false.if.end151_crit_edge, %if.end121.if.end151_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool152.not = icmp eq i32 %72, 0
  br i1 %tobool152.not, label %do.end, label %if.end151.if.end173_crit_edge, !prof !55

if.end151.if.end173_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end173

do.end:                                           ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1022, i32 noundef 9, ptr noundef null) #8
  br label %if.end173

if.end173:                                        ; preds = %do.end, %if.end151.if.end173_crit_edge
  %shr180 = lshr i32 %conv96, 12
  %and182 = and i32 %71, 4095
  br label %for.cond183

for.cond183:                                      ; preds = %cleanup203, %if.end173
  %ip.4 = phi i32 [ %shr180, %if.end173 ], [ %ip.5, %cleanup203 ]
  %off.1 = phi i32 [ %and182, %if.end173 ], [ %off.2, %cleanup203 ]
  %copied.0 = phi i32 [ 0, %if.end173 ], [ %add190, %cleanup203 ]
  %bytes.1 = phi i32 [ %72, %if.end173 ], [ %sub191, %cleanup203 ]
  %sub184 = sub i32 4096, %off.1
  %arrayidx185 = getelementptr ptr, ptr %call8.i, i32 %ip.4
  %86 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx185, align 4
  %88 = call i32 @llvm.umin.i32(i32 %sub184, i32 %bytes.1)
  %call189 = call i32 @copy_page_from_iter_atomic(ptr noundef %87, i32 noundef %off.1, i32 noundef %88, ptr noundef %from) #8
  call void @flush_dcache_page(ptr noundef %87) #8
  %add190 = add i32 %call189, %copied.0
  %sub191 = sub i32 %bytes.1, %call189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub191)
  %tobool192.not = icmp eq i32 %sub191, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool194.not = icmp eq i32 %call189, 0
  %or.cond424 = or i1 %tobool194.not, %tobool192.not
  br i1 %or.cond424, label %for.body212.preheader, label %cleanup203

cleanup203:                                       ; preds = %for.cond183
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call189, i32 %sub184)
  %cmp197 = icmp ult i32 %call189, %sub184
  %add200 = add i32 %call189, %off.1
  %not.cmp197 = xor i1 %cmp197, true
  %inc201 = zext i1 %not.cmp197 to i32
  %ip.5 = add i32 %ip.4, %inc201
  %off.2 = select i1 %cmp197, i32 %add200, i32 0
  br label %for.cond183

for.body212.preheader:                            ; preds = %for.cond183
  call void @mutex_lock_nested(ptr noundef %ni_lock.i484, i32 noundef 4) #8
  %call208 = call i32 @ni_write_frame(ptr noundef %add.ptr.i, ptr noundef nonnull %call8.i, i32 noundef %shr) #8
  call void @mutex_unlock(ptr noundef %ni_lock.i484) #8
  br label %for.body212

for.body212:                                      ; preds = %put_page.exit505.for.body212_crit_edge, %for.body212.preheader
  %ip.7557 = phi i32 [ %inc215, %put_page.exit505.for.body212_crit_edge ], [ 0, %for.body212.preheader ]
  %arrayidx213 = getelementptr ptr, ptr %call8.i, i32 %ip.7557
  %89 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx213, align 4
  %91 = getelementptr inbounds %struct.page, ptr %90, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %91, align 4
  %and.i.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %93, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %90 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %94, %if.end.i.i ]
  %95 = inttoptr i32 %retval.0.i.i to ptr
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %cmp.i.not.i = icmp eq i32 %97, -1
  %98 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %91, align 4
  %and.i12.i = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end8.i, !prof !55

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i16.i, label %if.then.i15.i, !prof !57

if.then.i15.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i14.i = add i32 %99, -1
  br label %_compound_head.exit18.i

if.end.i16.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %90 to i32
  br label %_compound_head.exit18.i

_compound_head.exit18.i:                          ; preds = %if.end.i16.i, %if.then.i15.i
  %retval.0.i17.i = phi i32 [ %sub.i14.i, %if.then.i15.i ], [ %100, %if.end.i16.i ]
  %101 = inttoptr i32 %retval.0.i17.i to ptr
  call void @dump_page(ptr noundef %101, ptr noundef nonnull @.str.11) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #8, !srcloc !81
  unreachable

do.end8.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i13.i, label %if.end.i23.i, label %if.then.i22.i, !prof !57

if.then.i22.i:                                    ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i21.i = add i32 %99, -1
  br label %ClearPageDirty.exit

if.end.i23.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %90 to i32
  br label %ClearPageDirty.exit

ClearPageDirty.exit:                              ; preds = %if.end.i23.i, %if.then.i22.i
  %retval.0.i24.i = phi i32 [ %sub.i21.i, %if.then.i22.i ], [ %102, %if.end.i23.i ]
  %103 = inttoptr i32 %retval.0.i24.i to ptr
  call void @_clear_bit(i32 noundef 3, ptr noundef %103) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !78
  %104 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %91, align 4
  %and.i.i.i.i429 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i429)
  %tobool.not.i.i.i430 = icmp eq i32 %and.i.i.i.i429, 0
  br i1 %tobool.not.i.i.i430, label %SetPageUptodate.exit432, label %if.then.i.i.i431, !prof !57

if.then.i.i.i431:                                 ; preds = %ClearPageDirty.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %90, ptr noundef nonnull @.str.2) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

SetPageUptodate.exit432:                          ; preds = %ClearPageDirty.exit
  call void @_set_bit(i32 noundef 2, ptr noundef %90) #8
  call void @unlock_page(ptr noundef %90) #8
  %106 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %91, align 4
  %and.i.i486 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i486)
  %tobool.not.i.i487 = icmp eq i32 %and.i.i486, 0
  br i1 %tobool.not.i.i487, label %if.end.i.i490, label %if.then.i.i489, !prof !57

if.then.i.i489:                                   ; preds = %SetPageUptodate.exit432
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i488 = add i32 %107, -1
  br label %_compound_head.exit.i495

if.end.i.i490:                                    ; preds = %SetPageUptodate.exit432
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %90 to i32
  br label %_compound_head.exit.i495

_compound_head.exit.i495:                         ; preds = %if.end.i.i490, %if.then.i.i489
  %retval.0.i.i491 = phi i32 [ %sub.i.i488, %if.then.i.i489 ], [ %108, %if.end.i.i490 ]
  %109 = inttoptr i32 %retval.0.i.i491 to ptr
  %_refcount.i.i.i.i.i492 = getelementptr inbounds %struct.page, ptr %109, i32 0, i32 3
  %call.i.i.i.i.i.i.i493 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i492, i32 noundef 4) #8
  %110 = ptrtoint ptr %_refcount.i.i.i.i.i492 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %_refcount.i.i.i.i.i492, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i.i.i.i494 = icmp eq i32 %111, 0
  br i1 %cmp.i.i.i.i494, label %if.then.i.i.i.i496, label %do.end5.i.i.i.i500, !prof !55

if.then.i.i.i.i496:                               ; preds = %_compound_head.exit.i495
  call void @__sanitizer_cov_trace_pc() #10
  %112 = inttoptr i32 %retval.0.i.i491 to ptr
  call void @dump_page(ptr noundef %112, ptr noundef nonnull @.str.4) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end5.i.i.i.i500:                               ; preds = %_compound_head.exit.i495
  %call.i.i.i10.i.i.i.i497 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i492, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i492, i32 1, i32 3, i32 1) #8
  %113 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i492, ptr %_refcount.i.i.i.i.i492, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i492) #8, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i.i498 = extractvalue { i32, i32 } %113, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i498)
  %cmp.i.i.i.i.i.i.i499 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i498, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_compress_write, %if.then.i.i.i.i.i502)) #8
          to label %folio_put_testzero.exit.i.i503 [label %if.then.i.i.i.i.i502], !srcloc !64

if.then.i.i.i.i.i502:                             ; preds = %do.end5.i.i.i.i500
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i501 = zext i1 %cmp.i.i.i.i.i.i.i499 to i32
  call void @__page_ref_mod_and_test(ptr noundef %109, i32 noundef -1, i32 noundef %conv.i.i.i.i.i501) #8
  br label %folio_put_testzero.exit.i.i503

folio_put_testzero.exit.i.i503:                   ; preds = %if.then.i.i.i.i.i502, %do.end5.i.i.i.i500
  br i1 %cmp.i.i.i.i.i.i.i499, label %if.then.i4.i504, label %folio_put_testzero.exit.i.i503.put_page.exit505_crit_edge

folio_put_testzero.exit.i.i503.put_page.exit505_crit_edge: ; preds = %folio_put_testzero.exit.i.i503
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit505

if.then.i4.i504:                                  ; preds = %folio_put_testzero.exit.i.i503
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %109) #8
  br label %put_page.exit505

put_page.exit505:                                 ; preds = %if.then.i4.i504, %folio_put_testzero.exit.i.i503.put_page.exit505_crit_edge
  %inc215 = add nuw nsw i32 %ip.7557, 1
  %exitcond607.not = icmp eq i32 %inc215, %umax606
  br i1 %exitcond607.not, label %for.end216, label %put_page.exit505.for.body212_crit_edge

put_page.exit505.for.body212_crit_edge:           ; preds = %put_page.exit505
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body212

for.end216:                                       ; preds = %put_page.exit505
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %tobool217.not = icmp eq i32 %call208, 0
  br i1 %tobool217.not, label %cleanup226, label %for.end216.out_crit_edge

for.end216.out_crit_edge:                         ; preds = %for.end216
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup226:                                       ; preds = %for.end216
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1069, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  %conv222 = zext i32 %add190 to i64
  %add223 = add i64 %pos.0560, %conv222
  %add224 = add i32 %add190, %written.0563
  %114 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %count.i, align 8
  %tobool91.not = icmp eq i32 %115, 0
  br i1 %tobool91.not, label %cleanup226.out_crit_edge, label %cleanup226.while.body92_crit_edge

cleanup226.while.body92_crit_edge:                ; preds = %cleanup226
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body92

cleanup226.out_crit_edge:                         ; preds = %cleanup226
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %cleanup226.out_crit_edge, %for.end216.out_crit_edge, %put_page.exit483.out_crit_edge, %if.end117.out_crit_edge, %while.body92.out_crit_edge, %cleanup.thread, %while.cond90.preheader.out_crit_edge, %if.end16.out_crit_edge, %if.end10.out_crit_edge
  %written.2 = phi i32 [ 0, %if.end10.out_crit_edge ], [ 0, %if.end16.out_crit_edge ], [ 0, %cleanup.thread ], [ 0, %while.cond90.preheader.out_crit_edge ], [ %written.0563, %put_page.exit483.out_crit_edge ], [ %add224, %cleanup226.out_crit_edge ], [ %written.0563, %while.body92.out_crit_edge ], [ %written.0563, %if.end117.out_crit_edge ], [ %written.0563, %for.end216.out_crit_edge ]
  %err.6 = phi i32 [ %call13, %if.end10.out_crit_edge ], [ %call17, %if.end16.out_crit_edge ], [ %err.1.ph, %cleanup.thread ], [ 0, %while.cond90.preheader.out_crit_edge ], [ %call135, %put_page.exit483.out_crit_edge ], [ 0, %cleanup226.out_crit_edge ], [ -14, %while.body92.out_crit_edge ], [ %call118, %if.end117.out_crit_edge ], [ %call208, %for.end216.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i) #8
  %116 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %task, align 8
  %backing_dev_info233 = getelementptr inbounds %struct.task_struct, ptr %117, i32 0, i32 150
  %118 = ptrtoint ptr %backing_dev_info233 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %backing_dev_info233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.6)
  %cmp234 = icmp slt i32 %err.6, 0
  br i1 %cmp234, label %out.cleanup249_crit_edge, label %if.end237

out.cleanup249_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

if.end237:                                        ; preds = %out
  %conv238 = zext i32 %written.2 to i64
  %119 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %ki_pos, align 8
  %add240 = add i64 %120, %conv238
  store i64 %add240, ptr %ki_pos, align 8
  %121 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %i_valid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add240, i64 %122)
  %cmp243 = icmp ugt i64 %add240, %122
  br i1 %cmp243, label %if.then245, label %if.end237.cleanup249_crit_edge

if.end237.cleanup249_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup249

if.then245:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %i_valid to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %add240, ptr %i_valid, align 8
  br label %cleanup249

cleanup249:                                       ; preds = %if.then245, %if.end237.cleanup249_crit_edge, %out.cleanup249_crit_edge, %if.end7.i.cleanup249_crit_edge, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -12, %if.end7.i.cleanup249_crit_edge ], [ %err.6, %out.cleanup249_crit_edge ], [ %written.2, %if.then245 ], [ %written.2, %if.end237.cleanup249_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %frame_uptodate) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__generic_file_write_iter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_remove_privs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_get_frame_pages(ptr noundef %mapping, i32 noundef %index, ptr nocapture noundef %pages, i32 noundef %pages_per_frame, ptr nocapture noundef writeonly %frame_uptodate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %0 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gfp_mask.i, align 4
  %2 = ptrtoint ptr %frame_uptodate to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %frame_uptodate, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pages_per_frame)
  %cmp38.not = icmp eq i32 %pages_per_frame, 0
  br i1 %cmp38.not, label %entry.cleanup9_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %npages.040 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %index.addr.039 = phi i32 [ %inc8, %for.inc.for.body_crit_edge ], [ %index, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %index.addr.039, i32 noundef 7, i32 noundef %1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %while.cond.preheader, label %if.end

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %npages.040)
  %tobool2.not36 = icmp eq i32 %npages.040, 0
  br i1 %tobool2.not36, label %while.cond.preheader.cleanup9_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup9_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec37.in = phi i32 [ %dec37, %put_page.exit.while.body_crit_edge ], [ %npages.040, %while.cond.preheader.while.body_crit_edge ]
  %dec37 = add i32 %dec37.in, -1
  %arrayidx = getelementptr ptr, ptr %pages, i32 %dec37
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @unlock_page(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %4 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !55

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %12, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_get_frame_pages, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !64

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %9, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %9) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %tobool2.not = icmp eq i32 %dec37, 0
  br i1 %tobool2.not, label %put_page.exit.cleanup9_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

put_page.exit.cleanup9_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

if.end:                                           ; preds = %for.body
  %14 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i23 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i23)
  %tobool.not.i.i24 = icmp eq i32 %and.i.i23, 0
  br i1 %tobool.not.i.i24, label %if.end.i.i27, label %if.then.i.i26, !prof !57

if.then.i.i26:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i25 = add i32 %16, -1
  br label %_compound_head.exit.i29

if.end.i.i27:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i29

_compound_head.exit.i29:                          ; preds = %if.end.i.i27, %if.then.i.i26
  %retval.0.i.i28 = phi i32 [ %sub.i.i25, %if.then.i.i26 ], [ %17, %if.end.i.i27 ]
  %18 = inttoptr i32 %retval.0.i.i28 to ptr
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !57

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i29
  call void @__sanitizer_cov_trace_pc() #10
  %22 = inttoptr i32 %retval.0.i.i28 to ptr
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.2) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i29
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %18, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %if.then5, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !82
  br label %for.inc

if.then5:                                         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %frame_uptodate to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %frame_uptodate, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %PageUptodate.exit
  %arrayidx7 = getelementptr ptr, ptr %pages, i32 %npages.040
  %27 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %arrayidx7, align 4
  %inc = add i32 %npages.040, 1
  %inc8 = add i32 %index.addr.039, 1
  %cmp = icmp ult i32 %inc, %pages_per_frame
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup9_crit_edge

for.inc.cleanup9_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup9

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup9:                                         ; preds = %for.inc.cleanup9_crit_edge, %put_page.exit.cleanup9_crit_edge, %while.cond.preheader.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup9_crit_edge ], [ -12, %while.cond.preheader.cleanup9_crit_edge ], [ -12, %put_page.exit.cleanup9_crit_edge ], [ 0, %for.inc.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_read_frame(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_write_frame(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_iov_iter_readable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter_atomic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_trim_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_punch_hole(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_zero_range(ptr noundef %inode, i64 noundef %vbo, i64 noundef %vbo_to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %shr = lshr i64 %vbo, 12
  %conv1 = trunc i64 %shr to i32
  %sub = add i64 %vbo_to, 4095
  %shr3 = lshr i64 %sub, 12
  %conv4 = trunc i64 %shr3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %conv4)
  %cmp182 = icmp ult i32 %conv1, %conv4
  br i1 %cmp182, label %for.body.lr.ph, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %4 = trunc i64 %vbo to i32
  %conv2 = and i32 %4, 4095
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %put_page.exit169.for.body_crit_edge, %for.body.lr.ph
  %z_start.0184 = phi i32 [ %conv2, %for.body.lr.ph ], [ 0, %put_page.exit169.for.body_crit_edge ]
  %idx.0183 = phi i32 [ %conv1, %for.body.lr.ph ], [ %add71, %put_page.exit169.for.body_crit_edge ]
  %conv6 = zext i32 %idx.0183 to i64
  %shl7 = shl nuw nsw i64 %conv6, 12
  %add8 = add nuw nsw i64 %shl7, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add8, i64 %vbo_to)
  %cmp9 = icmp ugt i64 %add8, %vbo_to
  %sub11 = sub i64 %vbo_to, %shl7
  %extract.t = trunc i64 %sub11 to i32
  %cond.off0 = select i1 %cmp9, i32 %extract.t, i32 4096
  %5 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %6 to i64
  %shr15 = lshr i64 %shl7, %sh_prom
  %7 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gfp_mask.i.i, align 4
  %and.i = and i32 %8, -129
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %idx.0183, i32 noundef 7, i32 noundef %and.i) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !55

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %call.i, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  br i1 %tobool18.not, label %if.then19, label %PagePrivate.exit.do.body_crit_edge

PagePrivate.exit.do.body_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then19:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @create_empty_buffers(ptr noundef nonnull %call.i, i32 noundef %shl, i32 noundef 0) #8
  br label %do.body

do.body:                                          ; preds = %if.then19, %PagePrivate.exit.do.body_crit_edge
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i126 = icmp eq i32 %15, -1
  br i1 %cmp.i.not.i126, label %if.then.i127, label %PagePrivate.exit130, !prof !55

if.then.i127:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable

PagePrivate.exit130:                              ; preds = %do.body
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %call.i, align 4
  %18 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool22.not = icmp eq i32 %18, 0
  br i1 %tobool22.not, label %do.body27, label %do.end33, !prof !55

do.body27:                                        ; preds = %PagePrivate.exit130
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs3/file.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 225, 0\0A.popsection", ""() #8, !srcloc !83
  unreachable

do.end33:                                         ; preds = %PagePrivate.exit130
  %private = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %private, align 4
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %call.i to i32
  br label %do.body34

do.body34:                                        ; preds = %do.cond64.do.body34_crit_edge, %do.end33
  %bh.0 = phi ptr [ %21, %do.end33 ], [ %63, %do.cond64.do.body34_crit_edge ]
  %bh_off.0 = phi i32 [ 0, %do.end33 ], [ %add35, %do.cond64.do.body34_crit_edge ]
  %iblock.0 = phi i64 [ %shr15, %do.end33 ], [ %add65, %do.cond64.do.body34_crit_edge ]
  %add35 = add i32 %bh_off.0, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %z_start.0184)
  %cmp36.not = icmp ugt i32 %add35, %z_start.0184
  call void @__sanitizer_cov_trace_cmp4(i32 %bh_off.0, i32 %cond.off0)
  %cmp38.not = icmp ult i32 %bh_off.0, %cond.off0
  %or.cond = select i1 %cmp36.not, i1 %cmp38.not, i1 false
  br i1 %or.cond, label %if.end41, label %do.body34.do.cond64_crit_edge

do.body34.do.cond64_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond64

if.end41:                                         ; preds = %do.body34
  %24 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %bh.0, align 4
  %26 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool43.not = icmp eq i32 %26, 0
  br i1 %tobool43.not, label %if.then44, label %if.end41.if.end50_crit_edge

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then44:                                        ; preds = %if.end41
  %call45 = tail call i32 @ntfs_get_block(ptr noundef %inode, i64 noundef %iblock.0, ptr noundef %bh.0, i32 noundef 0) #8
  %27 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %bh.0, align 4
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool47.not = icmp eq i32 %29, 0
  br i1 %tobool47.not, label %if.then44.do.cond64_crit_edge, label %if.then44.if.end50_crit_edge

if.then44.if.end50_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then44.do.cond64_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond64

if.end50:                                         ; preds = %if.then44.if.end50_crit_edge, %if.end41.if.end50_crit_edge
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end50._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !57

if.end50._compound_head.exit.i_crit_edge:         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %31, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.end50._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %23, %if.end50._compound_head.exit.i_crit_edge ]
  %32 = inttoptr i32 %retval.0.i.i to ptr
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !57

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.2) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !59
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %32, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.if.end54_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.if.end54_crit_edge:          ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !82
  %40 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i135 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i135)
  %tobool.not.i = icmp eq i32 %and1.i.i135, 0
  br i1 %tobool.not.i, label %if.then.i136, label %PageUptodate.exit.if.end54_crit_edge

PageUptodate.exit.if.end54_crit_edge:             ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then.i136:                                     ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then.i136, %PageUptodate.exit.if.end54_crit_edge, %folio_flags.exit.i.i.if.end54_crit_edge
  %42 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i137 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i137)
  %tobool56.not = icmp eq i32 %and1.i.i137, 0
  br i1 %tobool56.not, label %if.then57, label %if.end54.if.end63_crit_edge

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then57:                                        ; preds = %if.end54
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.0, i32 noundef 4) #8
  %44 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i.i139 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i139)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i139, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.then57.if.then.i140_crit_edge

if.then57.if.then.i140_crit_edge:                 ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i140

trylock_buffer.exit.i:                            ; preds = %if.then57
  tail call void @llvm.prefetch.p0(ptr %bh.0, i32 1, i32 3, i32 1) #8
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0, ptr %bh.0, i32 4, ptr elementtype(i32) %bh.0) #8, !srcloc !84
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %47 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i140_crit_edge

trylock_buffer.exit.i.if.then.i140_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i140

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i140:                                     ; preds = %trylock_buffer.exit.i.if.then.i140_crit_edge, %if.then57.if.then.i140_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh.0) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i140, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 7
  %48 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @end_buffer_read_sync, ptr %b_end_io, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !86
  %call58 = tail call i32 @submit_bh(i32 noundef 0, i32 noundef 0, ptr noundef %bh.0) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.19, i32 noundef 354) #8
  %50 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %bh.0, align 4
  %52 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i141 = icmp eq i32 %52, 0
  br i1 %tobool.not.i141, label %lock_buffer.exit.wait_on_buffer.exit_crit_edge, label %if.then.i142

lock_buffer.exit.wait_on_buffer.exit_crit_edge:   ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit

if.then.i142:                                     ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__wait_on_buffer(ptr noundef %bh.0) #8
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i142, %lock_buffer.exit.wait_on_buffer.exit_crit_edge
  %53 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i138 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i138)
  %tobool60.not = icmp eq i32 %and1.i.i138, 0
  br i1 %tobool60.not, label %if.then61, label %wait_on_buffer.exit.if.end63_crit_edge

wait_on_buffer.exit.if.end63_crit_edge:           ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then61:                                        ; preds = %wait_on_buffer.exit
  %55 = ptrtoint ptr %call.i to i32
  tail call void @unlock_page(ptr noundef nonnull %call.i) #8
  %56 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %22, align 4
  %and.i.i143 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i143)
  %tobool.not.i.i144 = icmp eq i32 %and.i.i143, 0
  br i1 %tobool.not.i.i144, label %if.then61._compound_head.exit.i149_crit_edge, label %if.then.i.i146, !prof !57

if.then61._compound_head.exit.i149_crit_edge:     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i149

if.then.i.i146:                                   ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i145 = add i32 %57, -1
  br label %_compound_head.exit.i149

_compound_head.exit.i149:                         ; preds = %if.then.i.i146, %if.then61._compound_head.exit.i149_crit_edge
  %retval.0.i.i148 = phi i32 [ %sub.i.i145, %if.then.i.i146 ], [ %55, %if.then61._compound_head.exit.i149_crit_edge ]
  %58 = inttoptr i32 %retval.0.i.i148 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %59 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i.i.i.i = icmp eq i32 %60, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !55

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i149
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i149
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_zero_range, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !64

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %58, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_crit_edge

folio_put_testzero.exit.i.i.out_crit_edge:        ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %58) #8
  br label %out

if.end63:                                         ; preds = %wait_on_buffer.exit.if.end63_crit_edge, %if.end54.if.end63_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %bh.0) #8
  br label %do.cond64

do.cond64:                                        ; preds = %if.end63, %if.then44.do.cond64_crit_edge, %do.body34.do.cond64_crit_edge
  %add65 = add i64 %iblock.0, 1
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %62 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_this_page, align 4
  %cmp66.not = icmp eq ptr %63, %21
  br i1 %cmp66.not, label %do.end68, label %do.cond64.do.body34_crit_edge

do.cond64.do.body34_crit_edge:                    ; preds = %do.cond64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

do.end68:                                         ; preds = %do.cond64
  tail call void @zero_user_segments(ptr noundef nonnull %call.i, i32 noundef %z_start.0184, i32 noundef %cond.off0, i32 noundef 0, i32 noundef 0) #8
  tail call void @unlock_page(ptr noundef nonnull %call.i) #8
  %64 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %22, align 4
  %and.i.i150 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i150)
  %tobool.not.i.i151 = icmp eq i32 %and.i.i150, 0
  br i1 %tobool.not.i.i151, label %do.end68._compound_head.exit.i159_crit_edge, label %if.then.i.i153, !prof !57

do.end68._compound_head.exit.i159_crit_edge:      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i159

if.then.i.i153:                                   ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i152 = add i32 %65, -1
  br label %_compound_head.exit.i159

_compound_head.exit.i159:                         ; preds = %if.then.i.i153, %do.end68._compound_head.exit.i159_crit_edge
  %retval.0.i.i155 = phi i32 [ %sub.i.i152, %if.then.i.i153 ], [ %23, %do.end68._compound_head.exit.i159_crit_edge ]
  %66 = inttoptr i32 %retval.0.i.i155 to ptr
  %_refcount.i.i.i.i.i156 = getelementptr inbounds %struct.page, ptr %66, i32 0, i32 3
  %call.i.i.i.i.i.i.i157 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i156, i32 noundef 4) #8
  %67 = ptrtoint ptr %_refcount.i.i.i.i.i156 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %_refcount.i.i.i.i.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i.i.i.i158 = icmp eq i32 %68, 0
  br i1 %cmp.i.i.i.i158, label %if.then.i.i.i.i160, label %do.end5.i.i.i.i164, !prof !55

if.then.i.i.i.i160:                               ; preds = %_compound_head.exit.i159
  call void @__sanitizer_cov_trace_pc() #10
  %69 = inttoptr i32 %retval.0.i.i155 to ptr
  tail call void @dump_page(ptr noundef %69, ptr noundef nonnull @.str.4) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !60
  unreachable

do.end5.i.i.i.i164:                               ; preds = %_compound_head.exit.i159
  %call.i.i.i10.i.i.i.i161 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i156, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i156, i32 1, i32 3, i32 1) #8
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i156, ptr %_refcount.i.i.i.i.i156, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i156) #8, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i.i162 = extractvalue { i32, i32 } %70, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i162)
  %cmp.i.i.i.i.i.i.i163 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i162, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_zero_range, %if.then.i.i.i.i.i166)) #8
          to label %folio_put_testzero.exit.i.i167 [label %if.then.i.i.i.i.i166], !srcloc !64

if.then.i.i.i.i.i166:                             ; preds = %do.end5.i.i.i.i164
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i165 = zext i1 %cmp.i.i.i.i.i.i.i163 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %66, i32 noundef -1, i32 noundef %conv.i.i.i.i.i165) #8
  br label %folio_put_testzero.exit.i.i167

folio_put_testzero.exit.i.i167:                   ; preds = %if.then.i.i.i.i.i166, %do.end5.i.i.i.i164
  br i1 %cmp.i.i.i.i.i.i.i163, label %if.then.i4.i168, label %folio_put_testzero.exit.i.i167.put_page.exit169_crit_edge

folio_put_testzero.exit.i.i167.put_page.exit169_crit_edge: ; preds = %folio_put_testzero.exit.i.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit169

if.then.i4.i168:                                  ; preds = %folio_put_testzero.exit.i.i167
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %66) #8
  br label %put_page.exit169

put_page.exit169:                                 ; preds = %if.then.i4.i168, %folio_put_testzero.exit.i.i167.put_page.exit169_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 268, i32 noundef 0) #8
  %call.i170 = tail call i32 @__cond_resched() #8
  %add71 = add nuw i32 %idx.0183, 1
  %exitcond.not = icmp eq i32 %add71, %conv4
  br i1 %exitcond.not, label %put_page.exit169.out_crit_edge, label %put_page.exit169.for.body_crit_edge

put_page.exit169.for.body_crit_edge:              ; preds = %put_page.exit169
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

put_page.exit169.out_crit_edge:                   ; preds = %put_page.exit169
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %put_page.exit169.out_crit_edge, %if.then.i4.i, %folio_put_testzero.exit.i.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -5, %folio_put_testzero.exit.i.i.out_crit_edge ], [ -5, %if.then.i4.i ], [ 0, %entry.out_crit_edge ], [ 0, %put_page.exit169.out_crit_edge ]
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_collapse_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/file.c", i32 345, i32 3}
!2 = !{ptr @ntfs_file_inode_operations, !3, !"ntfs_file_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/file.c", i32 1228, i32 31}
!4 = !{ptr @ntfs_file_operations, !5, !"ntfs_file_operations", i1 false, i1 false}
!5 = !{!"../fs/ntfs3/file.c", i32 1238, i32 30}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/mm.h", i32 717, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs3/file.c", i32 186, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs3/file.c", i32 804, i32 3}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ntfs3/file.c", i32 809, i32 3}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ntfs3/file.c", i32 823, i32 3}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/ntfs3/file.c", i32 1114, i32 3}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ntfs3/file.c", i32 898, i32 3}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!30 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/ntfs3/file.c", i32 363, i32 3}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ntfs3/file.c", i32 368, i32 3}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ntfs3/file.c", i32 373, i32 3}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/ntfs3/file.c", i32 551, i32 3}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2151057693, i64 2151058184, i64 2151057730, i64 2151057786, i64 2151057820, i64 2151057844, i64 2151057885, i64 2151057906, i64 2151057934, i64 2151057968}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2155047187, i64 2155051728, i64 2155047224, i64 2155047280, i64 2155047314, i64 2155047338, i64 2155047379, i64 2155047400, i64 2155047428, i64 2155047462}
!59 = !{i64 2150598987, i64 2150599478, i64 2150599024, i64 2150599080, i64 2150599114, i64 2150599138, i64 2150599179, i64 2150599200, i64 2150599228, i64 2150599262}
!60 = !{i64 2153641310, i64 2153641793, i64 2153641347, i64 2153641403, i64 2153641437, i64 2153641461, i64 2153641502, i64 2153641523, i64 2153641551, i64 2153641585}
!61 = !{i64 2148336159}
!62 = !{i64 2148250892, i64 2148250924, i64 2148250953, i64 2148250987, i64 2148251018, i64 2148251041}
!63 = !{i64 2148336388}
!64 = !{i64 2148729522, i64 2148729527, i64 2148729540, i64 2148729584, i64 2148729618, i64 2148729639}
!65 = !{i64 4698276}
!66 = !{i64 4698473}
!67 = !{i64 2152183706}
!68 = !{i64 640188, i64 640249}
!69 = !{i64 642920}
!70 = !{i64 643205}
!71 = !{i64 2152533073}
!72 = !{i64 2152532915}
!73 = !{i64 2152533243}
!74 = !{i64 2150119057}
!75 = !{!"auto-init"}
!76 = !{i8 0, i8 2}
!77 = !{!"branch_weights", i32 4193255, i32 -102759400}
!78 = !{i64 2151349950}
!79 = distinct !{!79, !80}
!80 = !{!"llvm.loop.peeled.count", i32 1}
!81 = !{i64 2150720116, i64 2150720289, i64 2150720304, i64 2150720356, i64 2150720415, i64 2150720439, i64 2150720480, i64 2150720501, i64 2150720529, i64 2150720561}
!82 = !{i64 2151348879}
!83 = !{i64 2155044928, i64 2155045408, i64 2155044965, i64 2155045021, i64 2155045055, i64 2155045079, i64 2155045120, i64 2155045141, i64 2155045169, i64 2155045203}
!84 = !{i64 2148256565, i64 2148256597, i64 2148256626, i64 2148256660, i64 2148256691, i64 2148256714}
!85 = !{i64 2148345646}
!86 = !{i64 2148247707, i64 2148247733, i64 2148247762, i64 2148247796, i64 2148247827, i64 2148247850}
