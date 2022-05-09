; ModuleID = '/llk/IR_all_yes/fs/ntfs3/inode.c_pt.bc'
source_filename = "../fs/ntfs3/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.REPARSE_DATA_BUFFER = type { i32, i16, i16, %union.anon.95 }
%union.anon.95 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32, i32, i32 }
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
%struct.ntfs_sb_info = type { ptr, i32, i64, i32, i32, i64, i32, i32, i32, i32, i8, i8, i64, i64, i32, i32, i16, i16, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %struct.anon.87, %struct.anon.88, ptr, %struct.ratelimit_state }
%struct.anon.82 = type { i64, i64, ptr, %struct.wnd_bitmap, i32, i32, i32, i32, i8, i8 }
%struct.wnd_bitmap = type { ptr, %struct.rw_semaphore, %struct.runs_tree, i32, i32, ptr, i32, i32, %struct.rb_root, %struct.rb_root, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.runs_tree = type { ptr, i32, i32 }
%struct.anon.83 = type { %struct.wnd_bitmap, i32 }
%struct.anon.84 = type { i64, i64, i64, ptr, i16, i8, i8, [65 x i8], i8 }
%struct.anon.85 = type { %struct.ntfs_index, %struct.ntfs_index, ptr, i32, i64, i32 }
%struct.ntfs_index = type { %struct.runs_tree, %struct.runs_tree, %struct.rw_semaphore, ptr, i8, i8, i8, i8 }
%struct.anon.86 = type { %struct.ntfs_index, ptr, i64 }
%struct.anon.87 = type { %struct.ntfs_index, ptr }
%struct.anon.88 = type { %struct.mutex, ptr, %struct.mutex, ptr, %struct.mutex, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.ntfs_mount_options = type { ptr, ptr, %struct.kuid_t, %struct.kgid_t, i16, i16, i16 }
%struct.MFT_REF = type { i32, i16, i16 }
%struct.MFT_REC = type { %struct.NTFS_RECORD_HEADER, i16, i16, i16, i16, i32, i32, %struct.MFT_REF, i16, i16, i32, [0 x i16] }
%struct.NTFS_RECORD_HEADER = type { i32, i16, i16, i64 }
%struct.anon.97 = type { i16, i16, i16, i16, i32, [0 x i16] }
%struct.ATTR_LIST_ENTRY = type { i32, i16, i8, i8, i64, %struct.MFT_REF, i16, [3 x i16] }
%struct.ATTRIB = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.92 }
%union.anon.92 = type { %struct.ATTR_NONRESIDENT }
%struct.ATTR_NONRESIDENT = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.ATTR_RESIDENT = type { i32, i16, i8, i8 }
%struct.ATTR_STD_INFO5 = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.ATTR_FILE_NAME = type { %struct.MFT_REF, %struct.NTFS_DUP_INFO, i8, i8, [0 x i16] }
%struct.NTFS_DUP_INFO = type { i64, i64, i64, i64, i64, i64, i32, i16, i16 }
%struct.INDEX_ROOT = type { i32, i32, i32, i8, [3 x i8], %struct.INDEX_HDR }
%struct.INDEX_HDR = type { i32, i32, i32, i8, [3 x i8] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.ntfs_inode = type { %struct.mft_inode, i64, %struct.timespec64, %struct.mutex, i32, i32, %struct.rb_root, i8, %union.anon.89, %struct.anon.91, i32, %struct.inode }
%struct.mft_inode = type { %struct.rb_node, ptr, ptr, %struct.ntfs_buffers, i32, i8 }
%struct.ntfs_buffers = type { [8 x ptr], i32, i32, i32 }
%union.anon.89 = type { %struct.ntfs_index }
%struct.anon.91 = type { %struct.runs_tree, ptr, i32, i8 }
%struct.NTFS_DE = type { %union.anon.93, i16, i16, i16, i16 }
%union.anon.93 = type { %struct.MFT_REF }
%struct.delayed_call = type { ptr, ptr }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.anon.96 = type { i16, i16, i16, i16, [0 x i16] }

@__func__.ntfs3_write_inode = private unnamed_addr constant [18 x i8] c"ntfs3_write_inode\00", align 1
@__func__.ntfs_sync_inode = private unnamed_addr constant [16 x i8] c"ntfs_sync_inode\00", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/ntfs3/inode.c\00", [47 x i8] zeroinitializer }, align 32
@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@s_default_security = external dso_local constant [80 x i8], align 1
@I30_NAME = external dso_local constant [4 x i16], align 2
@ntfs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ntfs_dir_operations = external dso_local constant %struct.file_operations, align 4
@ntfs_link_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr @ntfs_get_link, ptr @ntfs_permission, ptr @ntfs_get_acl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ntfs3_setattr, ptr null, ptr @ntfs_listxattr, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_set_acl, ptr null, ptr null, [36 x i8] undef }, align 128
@ntfs_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ntfs_writepage, ptr @ntfs_readpage, ptr @ntfs_writepages, ptr @__set_page_dirty_buffers, ptr null, ptr @ntfs_readahead, ptr @ntfs_write_begin, ptr @ntfs_write_end, ptr @ntfs_bmap, ptr null, ptr null, ptr null, ptr @ntfs_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ntfs_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@ntfs_file_operations = external dso_local constant %struct.file_operations, align 4
@ntfs_aops_cmpr = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @ntfs_readpage, ptr null, ptr null, ptr null, ptr @ntfs_readahead, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ntfs_create_inode.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ni->file.run_lock\00", [45 x i8] zeroinitializer }, align 32
@ntfs_special_inode_operations = external dso_local constant %struct.inode_operations, align 128
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013failed to undo unlink\00", [40 x i8] zeroinitializer }, align 32
@__func__.ntfs_evict_inode = private unnamed_addr constant [17 x i8] c"ntfs_evict_inode\00", align 1
@ntfs_read_mft.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013MFT: r=%lx, expect seq=%x instead of %x!\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Inode r=%x is not in use!\00", [36 x i8] zeroinitializer }, align 32
@BAD_NAME = external dso_local constant [4 x i16], align 2
@SDS_NAME = external dso_local constant [4 x i16], align 2
@ntfs_read_mft.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.17 = internal global [9 x i64] [i64 7, i64 4, i64 0, i64 2, i64 4, i64 9, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 40960]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.24 = internal global [20 x i64] [i64 18, i64 32, i64 50331808, i64 201326752, i64 436207760, i64 437256336, i64 438304912, i64 439353488, i64 440402064, i64 441450640, i64 442499216, i64 443547792, i64 444596368, i64 445644944, i64 446693520, i64 447742096, i64 448790672, i64 449839248, i64 450887824, i64 451936400]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1066, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [10 x i8] c"ntfs_aops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1944, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"ntfs_aops_cmpr\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1956, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1574, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1734, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 61, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 80, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 85, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private constant [20 x i8] c"../fs/ntfs3/inode.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 425, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 354, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 44, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 416, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 788, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 260, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 678, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 717, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 452, i32 1 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @ntfs_aops, ptr @ntfs_aops_cmpr, ptr @ntfs_create_inode.__key, ptr @.str.1, ptr @.str.2, ptr @ntfs_read_mft.__key, ptr @.str.3, ptr @.str.4, ptr @ntfs_read_mft.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_aops_cmpr to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_create_inode.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_read_mft.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_read_mft.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_iget5(ptr noundef %sb, ptr noundef %ref, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %le.i = alloca ptr, align 4
  %rp.i = alloca %struct.REPARSE_DATA_BUFFER, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #15
  %call1 = tail call ptr @iget5_locked(ptr noundef %sb, i32 noundef %2, ptr noundef nonnull @ntfs_test_inode, ptr noundef nonnull @ntfs_set_inode, ptr noundef %ref) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !57

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  %3 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_state, align 8
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %call1, i32 -360
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %le.i) #15
  %9 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %le.i, align 4, !annotation !58
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rp.i) #15
  %12 = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.i, i32 0, i32 3
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %13 = call ptr @memset(ptr %rp.i, i32 255, i32 24)
  %14 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %i_op.i, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %options.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 34
  %15 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %options.i, align 4
  %fs_uid.i = getelementptr inbounds %struct.ntfs_mount_options, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %fs_uid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fs_uid.i, align 4
  %19 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %20 = load ptr, ptr %options.i, align 4
  %fs_gid.i = getelementptr inbounds %struct.ntfs_mount_options, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %fs_gid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fs_gid.i, align 4
  %23 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %i_gid.i, align 8
  %call2.i = tail call i32 @mi_init(ptr noundef %add.ptr.i.i, ptr noundef %8, i32 noundef %11) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.out.i_crit_edge

if.then7.out.i_crit_edge:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end.i:                                         ; preds = %if.then7
  %mft.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 27
  %ni3.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 27, i32 2
  %24 = ptrtoint ptr %ni3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ni3.i, align 8
  %tobool4.not.i = icmp eq ptr %25, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %or.cond.i = and i1 %cmp.i, %tobool4.not.i
  br i1 %or.cond.i, label %land.lhs.true5.i, label %if.end.i.if.end18.i_crit_edge

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

land.lhs.true5.i:                                 ; preds = %if.end.i
  %s_root.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 13
  %26 = ptrtoint ptr %s_root.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_root.i, align 64
  %tobool6.not.i = icmp eq ptr %27, null
  br i1 %tobool6.not.i, label %if.then7.i, label %land.lhs.true5.i.if.end18.i_crit_edge

land.lhs.true5.i.if.end18.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  %28 = ptrtoint ptr %mft.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %mft.i, align 8
  %cluster_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 10
  %30 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cluster_bits.i, align 8
  %sh_prom.i = zext i8 %31 to i64
  %shr.i = lshr i64 %29, %sh_prom.i
  %record_size.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 8
  %32 = ptrtoint ptr %record_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %record_size.i, align 8
  %mul.i = mul i32 %33, 3
  %conv9.i = zext i32 %mul.i to i64
  %cluster_mask.i.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 4
  %34 = ptrtoint ptr %cluster_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cluster_mask.i.i, align 4
  %conv.i.i = zext i32 %35 to i64
  %add.i.i = add nuw nsw i64 %conv.i.i, %conv9.i
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %36 = ptrtoint ptr %ni3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i.i, ptr %ni3.i, align 8
  %37 = getelementptr i8, ptr %call1, i32 -156
  tail call void @__init_rwsem(ptr noundef %37, ptr noundef nonnull @.str.1, ptr noundef nonnull @ntfs_read_mft.__key) #15
  %run13.i = getelementptr i8, ptr %call1, i32 -60
  %conv14.i = trunc i64 %shr.i to i32
  %call15.i = tail call zeroext i1 @run_add_entry(ptr noundef %run13.i, i32 noundef 0, i32 noundef %conv14.i, i32 noundef %conv2.i.i, i1 noundef zeroext true) #15
  br i1 %call15.i, label %if.then7.i.if.end18.i_crit_edge, label %if.then7.i.land.lhs.true568.i_crit_edge

if.then7.i.land.lhs.true568.i_crit_edge:          ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true568.i

if.then7.i.if.end18.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then7.i.if.end18.i_crit_edge, %land.lhs.true5.i.if.end18.i_crit_edge, %if.end.i.if.end18.i_crit_edge
  %call22.i = tail call i32 @mi_read(ptr noundef %add.ptr.i.i, i1 noundef zeroext %cmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end18.i.out.i_crit_edge

if.end18.i.out.i_crit_edge:                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end25.i:                                       ; preds = %if.end18.i
  %mrec.i = getelementptr i8, ptr %call1, i32 -344
  %38 = ptrtoint ptr %mrec.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mrec.i, align 8
  %flags.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 14
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool27.not.i, label %if.else.i, label %if.end25.i.if.end44.i_crit_edge

if.end25.i.if.end44.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i

if.else.i:                                        ; preds = %if.end25.i
  %seq.i = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %42 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %seq.i, align 2
  %seq30.i = getelementptr inbounds %struct.MFT_REC, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %seq30.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %seq30.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %45)
  %cmp32.not.i = icmp eq i16 %43, %45
  br i1 %cmp32.not.i, label %if.else39.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %46 = tail call i16 @llvm.bswap.i16(i16 %43) #15
  %conv36.i = zext i16 %46 to i32
  %47 = tail call i16 @llvm.bswap.i16(i16 %45) #15
  %conv38.i = zext i16 %47 to i32
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %6, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %conv36.i, i32 noundef %conv38.i) #15
  br label %out.i

if.else39.i:                                      ; preds = %if.else.i
  %flags.i.i = getelementptr inbounds %struct.MFT_REC, ptr %39, i32 0, i32 4
  %48 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags.i.i, align 2
  %50 = and i16 %49, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.i.not.i = icmp eq i16 %50, 0
  br i1 %tobool.i.not.i, label %if.then41.i, label %if.else39.i.if.end44.i_crit_edge

if.else39.i.if.end44.i_crit_edge:                 ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @ntfs_printk(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %11) #15
  br label %out.i

if.end44.i:                                       ; preds = %if.else39.i.if.end44.i_crit_edge, %if.end25.i.if.end44.i_crit_edge
  %total.i = getelementptr inbounds %struct.MFT_REC, ptr %39, i32 0, i32 6
  %51 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %total.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #15
  %record_size45.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 8
  %54 = ptrtoint ptr %record_size45.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %record_size45.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp46.not.i = icmp eq i32 %53, %55
  br i1 %cmp46.not.i, label %if.end49.i, label %if.end44.i.out.i_crit_edge

if.end44.i.out.i_crit_edge:                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end49.i:                                       ; preds = %if.end44.i
  %parent_ref.i.i = getelementptr inbounds %struct.MFT_REC, ptr %39, i32 0, i32 7
  %56 = ptrtoint ptr %parent_ref.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %parent_ref.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end49.i.Ok.i_crit_edge

if.end49.i.Ok.i_crit_edge:                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %Ok.i

land.lhs.true.i.i:                                ; preds = %if.end49.i
  %high.i.i = getelementptr inbounds %struct.MFT_REC, ptr %39, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %high.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %high.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool1.not.i.i = icmp eq i16 %59, 0
  br i1 %tobool1.not.i.i, label %is_rec_base.exit.i, label %land.lhs.true.i.i.Ok.i_crit_edge

land.lhs.true.i.i.Ok.i_crit_edge:                 ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %Ok.i

is_rec_base.exit.i:                               ; preds = %land.lhs.true.i.i
  %seq.i.i = getelementptr inbounds %struct.MFT_REC, ptr %39, i32 0, i32 7, i32 2
  %60 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %seq.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool2.not.i.i = icmp eq i16 %61, 0
  br i1 %tobool2.not.i.i, label %if.end52.i, label %is_rec_base.exit.i.Ok.i_crit_edge

is_rec_base.exit.i.Ok.i_crit_edge:                ; preds = %is_rec_base.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %Ok.i

if.end52.i:                                       ; preds = %is_rec_base.exit.i
  %flags53.i = getelementptr inbounds %struct.MFT_REC, ptr %39, i32 0, i32 4
  %62 = ptrtoint ptr %flags53.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags53.i, align 2
  %seq57.i = getelementptr inbounds %struct.MFT_REC, ptr %39, i32 0, i32 1
  %64 = ptrtoint ptr %seq57.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %seq57.i, align 8
  %66 = tail call i16 @llvm.bswap.i16(i16 %65) #15
  %conv58.i = zext i16 %66 to i32
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 49
  %67 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv58.i, ptr %i_generation.i, align 8
  %68 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %le.i, align 4
  %call59949.i = call ptr @ni_enum_attr_ex(ptr noundef %add.ptr.i.i, ptr noundef null, ptr noundef nonnull %le.i, ptr noundef null) #15
  %tobool60.not950.i = icmp eq ptr %call59949.i, null
  br i1 %tobool60.not950.i, label %if.end52.i.out.i_crit_edge, label %if.end62.lr.ph.i

if.end52.i.out.i_crit_edge:                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end62.lr.ph.i:                                 ; preds = %if.end52.i
  %69 = and i16 %63, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %70 = icmp ne i16 %69, 0
  %run73.i = getelementptr i8, ptr %call1, i32 -60
  %ni_flags400.i = getelementptr i8, ptr %call1, i32 -4
  %PrintNameLength.i = getelementptr inbounds %struct.anon.97, ptr %12, i32 0, i32 3
  %i_size376.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %i_valid378.i = getelementptr i8, ptr %call1, i32 -288
  %71 = getelementptr i8, ptr %call1, i32 -156
  %run347.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 27, i32 3, i32 2
  %alloc_run.i = getelementptr i8, ptr %call1, i32 -144
  %s_root303.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp173.i = icmp ne i32 %11, 8
  %std_fa217.i = getelementptr i8, ptr %call1, i32 -172
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp261.i = icmp eq i32 %11, 6
  %run264.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 28, i32 0, i32 2
  %cond268.i = select i1 %cmp261.i, ptr %run264.i, ptr %run73.i
  %tobool156.not.i = icmp eq ptr %name, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp122.i = icmp eq i32 %11, 2
  %i_crtime.i = getelementptr i8, ptr %call1, i32 -280
  %tv_nsec.i.i = getelementptr i8, ptr %call1, i32 -272
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %tv_nsec.i878.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15, i32 1
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  %tv_nsec.i887.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17, i32 1
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %tv_nsec.i896.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16, i32 1
  %std_security_id.i = getelementptr i8, ptr %call1, i32 -168
  br label %if.end62.i

if.end62.i:                                       ; preds = %next_attr.backedge.i.if.end62.i_crit_edge, %if.end62.lr.ph.i
  %call59993.i = phi ptr [ %call59949.i, %if.end62.lr.ph.i ], [ %call59.i, %next_attr.backedge.i.if.end62.i_crit_edge ]
  %fname.0985.i = phi ptr [ null, %if.end62.lr.ph.i ], [ %fname.0.be.i, %next_attr.backedge.i.if.end62.i_crit_edge ]
  %names.0977.i = phi i16 [ 0, %if.end62.lr.ph.i ], [ %names.0.be.i, %next_attr.backedge.i.if.end62.i_crit_edge ]
  %is_dir.0.off0976.i = phi i1 [ %70, %if.end62.lr.ph.i ], [ %is_dir.0.off0.be.i, %next_attr.backedge.i.if.end62.i_crit_edge ]
  %is_root.0.off0969.i = phi i1 [ false, %if.end62.lr.ph.i ], [ %is_root.0.off0.be.i, %next_attr.backedge.i.if.end62.i_crit_edge ]
  %is_match.0.off0961.i = phi i1 [ false, %if.end62.lr.ph.i ], [ %is_match.0.off0.be.i, %next_attr.backedge.i.if.end62.i_crit_edge ]
  %std5.0953.i = phi ptr [ null, %if.end62.lr.ph.i ], [ %std5.0.be.i, %next_attr.backedge.i.if.end62.i_crit_edge ]
  %mode.0951.i = phi i16 [ 0, %if.end62.lr.ph.i ], [ %mode.0.be.i, %next_attr.backedge.i.if.end62.i_crit_edge ]
  %72 = ptrtoint ptr %le.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %le.i, align 4
  %tobool63.not.i = icmp eq ptr %73, null
  br i1 %tobool63.not.i, label %if.end62.i.if.end74.i_crit_edge, label %land.lhs.true64.i

if.end62.i.if.end74.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.i

land.lhs.true64.i:                                ; preds = %if.end62.i
  %vcn.i = getelementptr inbounds %struct.ATTR_LIST_ENTRY, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %vcn.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %vcn.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %tobool65.not.i = icmp eq i64 %75, 0
  br i1 %tobool65.not.i, label %land.lhs.true64.i.if.end74.i_crit_edge, label %if.then66.i

land.lhs.true64.i.if.end74.i_crit_edge:           ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.i

if.then66.i:                                      ; preds = %land.lhs.true64.i
  br i1 %cmp.i, label %lor.lhs.false.i, label %if.then66.i.next_attr.backedge.i_crit_edge

if.then66.i.next_attr.backedge.i_crit_edge:       ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

lor.lhs.false.i:                                  ; preds = %if.then66.i
  %76 = ptrtoint ptr %call59993.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %call59993.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %77)
  %cmp69.not.i = icmp eq i32 %77, -2147483648
  br i1 %cmp69.not.i, label %if.end72.i, label %lor.lhs.false.i.next_attr.backedge.i_crit_edge

lor.lhs.false.i.next_attr.backedge.i_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

next_attr.backedge.i:                             ; preds = %attr_unpack_run.i.next_attr.backedge.i_crit_edge, %if.then399.i, %if.end3.i.i.next_attr.backedge.i_crit_edge, %if.end.i.i.next_attr.backedge.i_crit_edge, %sw.bb393.i.next_attr.backedge.i_crit_edge, %if.end387.i.next_attr.backedge.i_crit_edge, %if.end371.i.next_attr.backedge.i_crit_edge, %sw.bb367.i.next_attr.backedge.i_crit_edge, %land.lhs.true356.i.next_attr.backedge.i_crit_edge, %land.lhs.true351.i.next_attr.backedge.i_crit_edge, %if.else348.i.next_attr.backedge.i_crit_edge, %lor.lhs.false321.i.next_attr.backedge.i_crit_edge, %lor.lhs.false316.i.next_attr.backedge.i_crit_edge, %sw.bb314.i.next_attr.backedge.i_crit_edge, %cond.true305.i, %if.end302.i.next_attr.backedge.i_crit_edge, %if.end293.i.next_attr.backedge.i_crit_edge, %lor.lhs.false280.i.next_attr.backedge.i_crit_edge, %if.end273.i.next_attr.backedge.i_crit_edge, %if.end253.i.next_attr.backedge.i_crit_edge, %if.then251.i, %lor.lhs.false209.i.next_attr.backedge.i_crit_edge, %lor.lhs.false201.i.next_attr.backedge.i_crit_edge, %lor.lhs.false194.i.next_attr.backedge.i_crit_edge, %lor.lhs.false186.i.next_attr.backedge.i_crit_edge, %land.lhs.true183.i.next_attr.backedge.i_crit_edge, %if.end172.i.next_attr.backedge.i_crit_edge, %sw.bb169.i.next_attr.backedge.i_crit_edge, %land.lhs.true163.i, %land.lhs.true157.i.next_attr.backedge.i_crit_edge, %if.end152.i.next_attr.backedge.i_crit_edge, %if.end144.i.next_attr.backedge.i_crit_edge, %if.end129.i, %if.then114.i, %if.end104.i.next_attr.backedge.i_crit_edge, %if.end101.i.next_attr.backedge.i_crit_edge, %cond.end84.i.next_attr.backedge.i_crit_edge, %lor.lhs.false.i.next_attr.backedge.i_crit_edge, %if.then66.i.next_attr.backedge.i_crit_edge
  %mode.0.be.i = phi i16 [ %mode.0951.i, %cond.end84.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %sw.bb367.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %if.end293.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %sw.bb169.i.next_attr.backedge.i_crit_edge ], [ %184, %if.end253.i.next_attr.backedge.i_crit_edge ], [ %181, %if.then251.i ], [ %mode.0951.i, %if.end144.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %if.end129.i ], [ %mode.0951.i, %if.end101.i.next_attr.backedge.i_crit_edge ], [ %mode.3.i, %attr_unpack_run.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %if.end172.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %lor.lhs.false.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %if.then66.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %if.then114.i ], [ %mode.0951.i, %if.end104.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %land.lhs.true163.i ], [ %mode.0951.i, %land.lhs.true157.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %if.end152.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %lor.lhs.false186.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %lor.lhs.false194.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %land.lhs.true183.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %lor.lhs.false209.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %lor.lhs.false201.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %lor.lhs.false280.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %if.end273.i.next_attr.backedge.i_crit_edge ], [ %or309.i, %cond.true305.i ], [ 16895, %if.end302.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %lor.lhs.false321.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %lor.lhs.false316.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %sw.bb314.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %land.lhs.true356.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %if.else348.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %land.lhs.true351.i.next_attr.backedge.i_crit_edge ], [ -24065, %if.end387.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %if.end371.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %sw.bb393.i.next_attr.backedge.i_crit_edge ], [ %267, %if.then399.i ], [ %mode.0951.i, %if.end.i.i.next_attr.backedge.i_crit_edge ], [ %mode.0951.i, %if.end3.i.i.next_attr.backedge.i_crit_edge ]
  %std5.0.be.i = phi ptr [ %std5.0953.i, %cond.end84.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %sw.bb367.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.end293.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %sw.bb169.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.end253.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.then251.i ], [ %std5.0953.i, %if.end144.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.end129.i ], [ %std5.0953.i, %if.end101.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %attr_unpack_run.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.end172.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %lor.lhs.false.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.then66.i.next_attr.backedge.i_crit_edge ], [ %add.ptr.i, %if.then114.i ], [ %add.ptr.i, %if.end104.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %land.lhs.true163.i ], [ %std5.0953.i, %land.lhs.true157.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.end152.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %lor.lhs.false186.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %lor.lhs.false194.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %land.lhs.true183.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %lor.lhs.false209.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %lor.lhs.false201.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %lor.lhs.false280.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.end273.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %cond.true305.i ], [ %std5.0953.i, %if.end302.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %lor.lhs.false321.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %lor.lhs.false316.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %sw.bb314.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %land.lhs.true356.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.else348.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %land.lhs.true351.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.end387.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.end371.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %sw.bb393.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.then399.i ], [ %std5.0953.i, %if.end.i.i.next_attr.backedge.i_crit_edge ], [ %std5.0953.i, %if.end3.i.i.next_attr.backedge.i_crit_edge ]
  %attr.0.be.i = phi ptr [ %call59993.i, %cond.end84.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %sw.bb367.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.end293.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %sw.bb169.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.end253.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.then251.i ], [ %call59993.i, %if.end144.i.next_attr.backedge.i_crit_edge ], [ null, %if.end129.i ], [ %call59993.i, %if.end101.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %attr_unpack_run.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.end172.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %lor.lhs.false.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.then66.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.then114.i ], [ %call59993.i, %if.end104.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %land.lhs.true163.i ], [ %call59993.i, %land.lhs.true157.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.end152.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %lor.lhs.false186.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %lor.lhs.false194.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %land.lhs.true183.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %lor.lhs.false209.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %lor.lhs.false201.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %lor.lhs.false280.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.end273.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %cond.true305.i ], [ %call59993.i, %if.end302.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %lor.lhs.false321.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %lor.lhs.false316.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %sw.bb314.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %land.lhs.true356.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.else348.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %land.lhs.true351.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.end387.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.end371.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %sw.bb393.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.then399.i ], [ %call59993.i, %if.end.i.i.next_attr.backedge.i_crit_edge ], [ %call59993.i, %if.end3.i.i.next_attr.backedge.i_crit_edge ]
  %is_match.0.off0.be.i = phi i1 [ %is_match.0.off0961.i, %cond.end84.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %sw.bb367.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.end293.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %sw.bb169.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.end253.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.then251.i ], [ %is_match.0.off0961.i, %if.end144.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.end129.i ], [ %is_match.0.off0961.i, %if.end101.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %attr_unpack_run.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.end172.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %lor.lhs.false.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.then66.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.then114.i ], [ %is_match.0.off0961.i, %if.end104.i.next_attr.backedge.i_crit_edge ], [ %spec.select.i, %land.lhs.true163.i ], [ %is_match.0.off0961.i, %land.lhs.true157.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.end152.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %lor.lhs.false186.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %lor.lhs.false194.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %land.lhs.true183.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %lor.lhs.false209.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %lor.lhs.false201.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %lor.lhs.false280.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.end273.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %cond.true305.i ], [ %is_match.0.off0961.i, %if.end302.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %lor.lhs.false321.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %lor.lhs.false316.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %sw.bb314.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %land.lhs.true356.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.else348.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %land.lhs.true351.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.end387.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.end371.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %sw.bb393.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.then399.i ], [ %is_match.0.off0961.i, %if.end.i.i.next_attr.backedge.i_crit_edge ], [ %is_match.0.off0961.i, %if.end3.i.i.next_attr.backedge.i_crit_edge ]
  %is_root.0.off0.be.i = phi i1 [ %is_root.0.off0969.i, %cond.end84.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %sw.bb367.i.next_attr.backedge.i_crit_edge ], [ true, %if.end293.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %sw.bb169.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.end253.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.then251.i ], [ %is_root.0.off0969.i, %if.end144.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.end129.i ], [ %is_root.0.off0969.i, %if.end101.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %attr_unpack_run.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.end172.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %lor.lhs.false.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.then66.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.then114.i ], [ %is_root.0.off0969.i, %if.end104.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %land.lhs.true163.i ], [ %is_root.0.off0969.i, %land.lhs.true157.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.end152.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %lor.lhs.false186.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %lor.lhs.false194.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %land.lhs.true183.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %lor.lhs.false209.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %lor.lhs.false201.i.next_attr.backedge.i_crit_edge ], [ true, %lor.lhs.false280.i.next_attr.backedge.i_crit_edge ], [ true, %if.end273.i.next_attr.backedge.i_crit_edge ], [ true, %cond.true305.i ], [ true, %if.end302.i.next_attr.backedge.i_crit_edge ], [ true, %lor.lhs.false321.i.next_attr.backedge.i_crit_edge ], [ true, %lor.lhs.false316.i.next_attr.backedge.i_crit_edge ], [ false, %sw.bb314.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %land.lhs.true356.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.else348.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %land.lhs.true351.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.end387.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.end371.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %sw.bb393.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.then399.i ], [ %is_root.0.off0969.i, %if.end.i.i.next_attr.backedge.i_crit_edge ], [ %is_root.0.off0969.i, %if.end3.i.i.next_attr.backedge.i_crit_edge ]
  %is_dir.0.off0.be.i = phi i1 [ %is_dir.0.off0976.i, %cond.end84.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %sw.bb367.i.next_attr.backedge.i_crit_edge ], [ false, %if.end293.i.next_attr.backedge.i_crit_edge ], [ true, %sw.bb169.i.next_attr.backedge.i_crit_edge ], [ false, %if.end253.i.next_attr.backedge.i_crit_edge ], [ false, %if.then251.i ], [ %is_dir.0.off0976.i, %if.end144.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %if.end129.i ], [ %is_dir.0.off0976.i, %if.end101.i.next_attr.backedge.i_crit_edge ], [ %is_dir.2.off0.i, %attr_unpack_run.i.next_attr.backedge.i_crit_edge ], [ false, %if.end172.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %lor.lhs.false.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %if.then66.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %if.then114.i ], [ %is_dir.0.off0976.i, %if.end104.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %land.lhs.true163.i ], [ %is_dir.0.off0976.i, %land.lhs.true157.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %if.end152.i.next_attr.backedge.i_crit_edge ], [ false, %lor.lhs.false186.i.next_attr.backedge.i_crit_edge ], [ false, %lor.lhs.false194.i.next_attr.backedge.i_crit_edge ], [ false, %land.lhs.true183.i.next_attr.backedge.i_crit_edge ], [ false, %lor.lhs.false209.i.next_attr.backedge.i_crit_edge ], [ false, %lor.lhs.false201.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %lor.lhs.false280.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %if.end273.i.next_attr.backedge.i_crit_edge ], [ true, %cond.true305.i ], [ true, %if.end302.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %lor.lhs.false321.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %lor.lhs.false316.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %sw.bb314.i.next_attr.backedge.i_crit_edge ], [ true, %land.lhs.true356.i.next_attr.backedge.i_crit_edge ], [ false, %if.else348.i.next_attr.backedge.i_crit_edge ], [ true, %land.lhs.true351.i.next_attr.backedge.i_crit_edge ], [ false, %if.end387.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %if.end371.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %sw.bb393.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %if.then399.i ], [ %is_dir.0.off0976.i, %if.end.i.i.next_attr.backedge.i_crit_edge ], [ %is_dir.0.off0976.i, %if.end3.i.i.next_attr.backedge.i_crit_edge ]
  %names.0.be.i = phi i16 [ %names.0977.i, %cond.end84.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %sw.bb367.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.end293.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %sw.bb169.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.end253.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.then251.i ], [ %names.0977.i, %if.end144.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.end129.i ], [ %names.0977.i, %if.end101.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %attr_unpack_run.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.end172.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %lor.lhs.false.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.then66.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.then114.i ], [ %names.0977.i, %if.end104.i.next_attr.backedge.i_crit_edge ], [ %add154.i, %land.lhs.true163.i ], [ %add154.i, %land.lhs.true157.i.next_attr.backedge.i_crit_edge ], [ %add154.i, %if.end152.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %lor.lhs.false186.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %lor.lhs.false194.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %land.lhs.true183.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %lor.lhs.false209.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %lor.lhs.false201.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %lor.lhs.false280.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.end273.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %cond.true305.i ], [ %names.0977.i, %if.end302.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %lor.lhs.false321.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %lor.lhs.false316.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %sw.bb314.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %land.lhs.true356.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.else348.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %land.lhs.true351.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.end387.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.end371.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %sw.bb393.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.then399.i ], [ %names.0977.i, %if.end.i.i.next_attr.backedge.i_crit_edge ], [ %names.0977.i, %if.end3.i.i.next_attr.backedge.i_crit_edge ]
  %fname.0.be.i = phi ptr [ %fname.0985.i, %cond.end84.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %sw.bb367.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.end293.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %sw.bb169.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.end253.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.then251.i ], [ %add.ptr146.i, %if.end144.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.end129.i ], [ %fname.0985.i, %if.end101.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %attr_unpack_run.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.end172.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %lor.lhs.false.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.then66.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.then114.i ], [ %fname.0985.i, %if.end104.i.next_attr.backedge.i_crit_edge ], [ %add.ptr146.i, %land.lhs.true163.i ], [ %add.ptr146.i, %land.lhs.true157.i.next_attr.backedge.i_crit_edge ], [ %add.ptr146.i, %if.end152.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %lor.lhs.false186.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %lor.lhs.false194.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %land.lhs.true183.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %lor.lhs.false209.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %lor.lhs.false201.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %lor.lhs.false280.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.end273.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %cond.true305.i ], [ %fname.0985.i, %if.end302.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %lor.lhs.false321.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %lor.lhs.false316.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %sw.bb314.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %land.lhs.true356.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.else348.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %land.lhs.true351.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.end387.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.end371.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %sw.bb393.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.then399.i ], [ %fname.0985.i, %if.end.i.i.next_attr.backedge.i_crit_edge ], [ %fname.0985.i, %if.end3.i.i.next_attr.backedge.i_crit_edge ]
  %call59.i = call ptr @ni_enum_attr_ex(ptr noundef %add.ptr.i.i, ptr noundef %attr.0.be.i, ptr noundef nonnull %le.i, ptr noundef null) #15
  %tobool60.not.i = icmp eq ptr %call59.i, null
  br i1 %tobool60.not.i, label %end_enum.i, label %next_attr.backedge.i.if.end62.i_crit_edge

next_attr.backedge.i.if.end62.i_crit_edge:        ; preds = %next_attr.backedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62.i

if.end72.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 1
  %78 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size.i, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #15
  br label %attr_unpack_run.i

if.end74.i:                                       ; preds = %land.lhs.true64.i.if.end74.i_crit_edge, %if.end62.i.if.end74.i_crit_edge
  %non_res.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 2
  %81 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool76.not.i = icmp eq i8 %82, 0
  br i1 %tobool76.not.i, label %cond.false83.i, label %if.end74.i.cond.end84.i_crit_edge

if.end74.i.cond.end84.i_crit_edge:                ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end84.i

cond.false83.i:                                   ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #17
  %83 = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %data_off.i, align 4
  %86 = call i16 @llvm.bswap.i16(i16 %85) #15
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %83, align 8
  %89 = call i32 @llvm.bswap.i32(i32 %88) #15
  br label %cond.end84.i

cond.end84.i:                                     ; preds = %cond.false83.i, %if.end74.i.cond.end84.i_crit_edge
  %cond923.i = phi i16 [ %86, %cond.false83.i ], [ 0, %if.end74.i.cond.end84.i_crit_edge ]
  %cond85.i = phi i32 [ %89, %cond.false83.i ], [ 0, %if.end74.i.cond.end84.i_crit_edge ]
  %size87.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 1
  %90 = ptrtoint ptr %size87.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %size87.i, align 4
  %92 = call i32 @llvm.bswap.i32(i32 %91) #15
  %93 = ptrtoint ptr %call59993.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %call59993.i, align 8
  %95 = xor i32 %94, -2147483648
  %96 = call i32 @llvm.fshl.i32(i32 %94, i32 %95, i32 4) #15
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values)
  switch i32 %96, label %cond.end84.i.next_attr.backedge.i_crit_edge [
    i32 9, label %sw.bb.i
    i32 10, label %sw.bb116.i
    i32 11, label %sw.bb130.i
    i32 0, label %sw.bb169.i
    i32 1, label %sw.bb269.i
    i32 2, label %sw.bb314.i
    i32 3, label %sw.bb332.i
    i32 4, label %sw.bb367.i
    i32 5, label %sw.bb393.i
  ]

cond.end84.i.next_attr.backedge.i_crit_edge:      ; preds = %cond.end84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

sw.bb.i:                                          ; preds = %cond.end84.i
  br i1 %tobool76.not.i, label %lor.lhs.false92.i, label %sw.bb.i.out.i_crit_edge

sw.bb.i.out.i_crit_edge:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

lor.lhs.false92.i:                                ; preds = %sw.bb.i
  %conv93.i = zext i16 %cond923.i to i32
  %add.i = add nuw nsw i32 %conv93.i, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %add.i)
  %cmp94.i = icmp ult i32 %92, %add.i
  br i1 %cmp94.i, label %lor.lhs.false92.i.out.i_crit_edge, label %lor.lhs.false96.i

lor.lhs.false92.i.out.i_crit_edge:                ; preds = %lor.lhs.false92.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

lor.lhs.false96.i:                                ; preds = %lor.lhs.false92.i
  %conv97.i = and i32 %cond85.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %conv97.i)
  %cmp98.i = icmp ult i32 %conv97.i, 48
  br i1 %cmp98.i, label %lor.lhs.false96.i.out.i_crit_edge, label %if.end101.i

lor.lhs.false96.i.out.i_crit_edge:                ; preds = %lor.lhs.false96.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end101.i:                                      ; preds = %lor.lhs.false96.i
  %tobool102.not.i = icmp eq ptr %std5.0953.i, null
  br i1 %tobool102.not.i, label %if.end104.i, label %if.end101.i.next_attr.backedge.i_crit_edge

if.end101.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.end104.i:                                      ; preds = %if.end101.i
  %add.ptr.i = getelementptr i8, ptr %call59993.i, i32 %conv93.i
  %98 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %add.ptr.i, align 8
  %100 = call i64 @llvm.bswap.i64(i64 %99) #15
  %sub.i.i = add i64 %100, -116444736000000000
  %101 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i.i) #18, !srcloc !59
  %102 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i.i, i64 %101, i32 0) #18, !srcloc !60
  %asmresult10.i.i.i = extractvalue { i64, i32 } %102, 0
  %conv15.i.i = trunc i64 %sub.i.i to i32
  %div159262.i.i = lshr i64 %asmresult10.i.i.i, 23
  %conv160.i.i = trunc i64 %div159262.i.i to i32
  %mul161.neg.i.i = mul i32 %conv160.i.i, -10000000
  %sub162.i.i = add i32 %mul161.neg.i.i, %conv15.i.i
  %mul181.i.i = mul i32 %sub162.i.i, 100
  %103 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %mul181.i.i, ptr %tv_nsec.i.i, align 8
  %104 = ptrtoint ptr %i_crtime.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %div159262.i.i, ptr %i_crtime.i, align 8
  %a_time.i = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %add.ptr.i, i32 0, i32 3
  %105 = ptrtoint ptr %a_time.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %a_time.i, align 8
  %107 = call i64 @llvm.bswap.i64(i64 %106) #15
  %sub.i870.i = add i64 %107, -116444736000000000
  %108 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i870.i) #18, !srcloc !59
  %109 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i870.i, i64 %108, i32 0) #18, !srcloc !60
  %asmresult10.i.i871.i = extractvalue { i64, i32 } %109, 0
  %conv15.i872.i = trunc i64 %sub.i870.i to i32
  %div159262.i873.i = lshr i64 %asmresult10.i.i871.i, 23
  %conv160.i874.i = trunc i64 %div159262.i873.i to i32
  %mul161.neg.i875.i = mul i32 %conv160.i874.i, -10000000
  %sub162.i876.i = add i32 %mul161.neg.i875.i, %conv15.i872.i
  %mul181.i877.i = mul i32 %sub162.i876.i, 100
  %110 = ptrtoint ptr %tv_nsec.i878.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %mul181.i877.i, ptr %tv_nsec.i878.i, align 8
  %111 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %div159262.i873.i, ptr %i_atime.i, align 8
  %c_time.i = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %add.ptr.i, i32 0, i32 2
  %112 = ptrtoint ptr %c_time.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %c_time.i, align 8
  %114 = call i64 @llvm.bswap.i64(i64 %113) #15
  %sub.i879.i = add i64 %114, -116444736000000000
  %115 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i879.i) #18, !srcloc !59
  %116 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i879.i, i64 %115, i32 0) #18, !srcloc !60
  %asmresult10.i.i880.i = extractvalue { i64, i32 } %116, 0
  %conv15.i881.i = trunc i64 %sub.i879.i to i32
  %div159262.i882.i = lshr i64 %asmresult10.i.i880.i, 23
  %conv160.i883.i = trunc i64 %div159262.i882.i to i32
  %mul161.neg.i884.i = mul i32 %conv160.i883.i, -10000000
  %sub162.i885.i = add i32 %mul161.neg.i884.i, %conv15.i881.i
  %mul181.i886.i = mul i32 %sub162.i885.i, 100
  %117 = ptrtoint ptr %tv_nsec.i887.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %mul181.i886.i, ptr %tv_nsec.i887.i, align 8
  %118 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %div159262.i882.i, ptr %i_ctime.i, align 8
  %m_time.i = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %add.ptr.i, i32 0, i32 1
  %119 = ptrtoint ptr %m_time.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %m_time.i, align 8
  %121 = call i64 @llvm.bswap.i64(i64 %120) #15
  %sub.i888.i = add i64 %121, -116444736000000000
  %122 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i888.i) #18, !srcloc !59
  %123 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i888.i, i64 %122, i32 0) #18, !srcloc !60
  %asmresult10.i.i889.i = extractvalue { i64, i32 } %123, 0
  %conv15.i890.i = trunc i64 %sub.i888.i to i32
  %div159262.i891.i = lshr i64 %asmresult10.i.i889.i, 23
  %conv160.i892.i = trunc i64 %div159262.i891.i to i32
  %mul161.neg.i893.i = mul i32 %conv160.i892.i, -10000000
  %sub162.i894.i = add i32 %mul161.neg.i893.i, %conv15.i890.i
  %mul181.i895.i = mul i32 %sub162.i894.i, 100
  %124 = ptrtoint ptr %tv_nsec.i896.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %mul181.i895.i, ptr %tv_nsec.i896.i, align 8
  %125 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %div159262.i891.i, ptr %i_mtime.i, align 8
  %fa.i = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %add.ptr.i, i32 0, i32 4
  %126 = ptrtoint ptr %fa.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fa.i, align 8
  %128 = ptrtoint ptr %std_fa217.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %std_fa217.i, align 4
  %add107.i = add nuw nsw i32 %conv93.i, 72
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %add107.i)
  %cmp108.not.i = icmp uge i32 %92, %add107.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %conv97.i)
  %cmp112.i = icmp ugt i32 %conv97.i, 71
  %or.cond861.i = select i1 %cmp108.not.i, i1 %cmp112.i, i1 false
  br i1 %or.cond861.i, label %if.then114.i, label %if.end104.i.next_attr.backedge.i_crit_edge

if.end104.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.then114.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #17
  %security_id.i = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %add.ptr.i, i32 0, i32 9
  %129 = ptrtoint ptr %security_id.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %security_id.i, align 4
  %131 = ptrtoint ptr %std_security_id.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %std_security_id.i, align 8
  br label %next_attr.backedge.i

sw.bb116.i:                                       ; preds = %cond.end84.i
  %name_len.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 3
  %132 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %name_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool118.not.i = icmp ne i8 %133, 0
  %tobool120.not.i = icmp ne ptr %73, null
  %or.cond862.i = or i1 %cmp122.i, %tobool120.not.i
  %or.cond1005.i = select i1 %tobool118.not.i, i1 true, i1 %or.cond862.i
  br i1 %or.cond1005.i, label %sw.bb116.i.out.i_crit_edge, label %if.end125.i

sw.bb116.i.out.i_crit_edge:                       ; preds = %sw.bb116.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end125.i:                                      ; preds = %sw.bb116.i
  %call126.i = call i32 @ntfs_load_attr_list(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call59993.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %tobool127.not.i = icmp eq i32 %call126.i, 0
  br i1 %tobool127.not.i, label %if.end129.i, label %if.end125.i.out.i_crit_edge

if.end125.i.out.i_crit_edge:                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end129.i:                                      ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #17
  %134 = ptrtoint ptr %le.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr null, ptr %le.i, align 4
  br label %next_attr.backedge.i

sw.bb130.i:                                       ; preds = %cond.end84.i
  br i1 %tobool76.not.i, label %lor.lhs.false134.i, label %sw.bb130.i.out.i_crit_edge

sw.bb130.i.out.i_crit_edge:                       ; preds = %sw.bb130.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

lor.lhs.false134.i:                               ; preds = %sw.bb130.i
  %conv135.i = zext i16 %cond923.i to i32
  %add136.i = add nuw nsw i32 %conv135.i, 68
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %add136.i)
  %cmp137.i = icmp ult i32 %92, %add136.i
  %conv140.i = and i32 %cond85.i, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %conv140.i)
  %cmp141.i = icmp ult i32 %conv140.i, 68
  %or.cond863.i = select i1 %cmp137.i, i1 true, i1 %cmp141.i
  br i1 %or.cond863.i, label %lor.lhs.false134.i.out.i_crit_edge, label %if.end144.i

lor.lhs.false134.i.out.i_crit_edge:               ; preds = %lor.lhs.false134.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end144.i:                                      ; preds = %lor.lhs.false134.i
  %add.ptr146.i = getelementptr i8, ptr %call59993.i, i32 %conv135.i
  %type147.i = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr146.i, i32 0, i32 3
  %135 = ptrtoint ptr %type147.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %type147.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %136)
  %cmp149.i = icmp eq i8 %136, 2
  br i1 %cmp149.i, label %if.end144.i.next_attr.backedge.i_crit_edge, label %if.end152.i

if.end144.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.end152.i:                                      ; preds = %if.end144.i
  %add154.i = add i16 %names.0977.i, 1
  br i1 %tobool156.not.i, label %if.end152.i.next_attr.backedge.i_crit_edge, label %land.lhs.true157.i

if.end152.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

land.lhs.true157.i:                               ; preds = %if.end152.i
  %137 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %name, align 2
  %name_len159.i = getelementptr inbounds %struct.ATTR_FILE_NAME, ptr %add.ptr146.i, i32 0, i32 2
  %139 = ptrtoint ptr %name_len159.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %name_len159.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %138, i8 %140)
  %cmp161.i = icmp eq i8 %138, %140
  br i1 %cmp161.i, label %land.lhs.true163.i, label %land.lhs.true157.i.next_attr.backedge.i_crit_edge

land.lhs.true157.i.next_attr.backedge.i_crit_edge: ; preds = %land.lhs.true157.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

land.lhs.true163.i:                               ; preds = %land.lhs.true157.i
  call void @__sanitizer_cov_trace_pc() #17
  %call165.i = call i32 @ntfs_cmp_names_cpu(ptr noundef nonnull %name, ptr noundef %name_len159.i, ptr noundef null, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165.i)
  %tobool166.not.i = icmp eq i32 %call165.i, 0
  %spec.select.i = select i1 %tobool166.not.i, i1 true, i1 %is_match.0.off0961.i
  br label %next_attr.backedge.i

sw.bb169.i:                                       ; preds = %cond.end84.i
  br i1 %is_dir.0.off0976.i, label %sw.bb169.i.next_attr.backedge.i_crit_edge, label %if.end172.i

sw.bb169.i.next_attr.backedge.i_crit_edge:        ; preds = %sw.bb169.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.end172.i:                                      ; preds = %sw.bb169.i
  %tobool76.not.not.i = xor i1 %tobool76.not.i, true
  %brmerge.i = select i1 %cmp173.i, i1 true, i1 %tobool76.not.not.i
  br i1 %brmerge.i, label %if.end179.i, label %if.end172.i.next_attr.backedge.i_crit_edge

if.end172.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.end179.i:                                      ; preds = %if.end172.i
  %name_len180.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 3
  %141 = ptrtoint ptr %name_len180.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %name_len180.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool182.not.i = icmp eq i8 %142, 0
  br i1 %tobool182.not.i, label %if.end179.i.if.end214.i_crit_edge, label %land.lhs.true183.i

if.end179.i.if.end214.i_crit_edge:                ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214.i

land.lhs.true183.i:                               ; preds = %if.end179.i
  %143 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %11, label %land.lhs.true183.i.next_attr.backedge.i_crit_edge [
    i32 8, label %lor.lhs.false186.i
    i32 9, label %lor.lhs.false201.i
  ]

land.lhs.true183.i.next_attr.backedge.i_crit_edge: ; preds = %land.lhs.true183.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

lor.lhs.false186.i:                               ; preds = %land.lhs.true183.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool188.not.i = icmp ne i8 %82, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %142)
  %cmp192.not.i = icmp eq i8 %142, 4
  %or.cond864.i = select i1 %tobool188.not.i, i1 %cmp192.not.i, i1 false
  br i1 %or.cond864.i, label %lor.lhs.false194.i, label %lor.lhs.false186.i.next_attr.backedge.i_crit_edge

lor.lhs.false186.i.next_attr.backedge.i_crit_edge: ; preds = %lor.lhs.false186.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

lor.lhs.false194.i:                               ; preds = %lor.lhs.false186.i
  %name_off.i.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 4
  %144 = ptrtoint ptr %name_off.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %name_off.i.i, align 2
  %146 = call i16 @llvm.bswap.i16(i16 %145) #15
  %conv.i897.i = zext i16 %146 to i32
  %add.ptr.i898.i = getelementptr i8, ptr %call59993.i, i32 %conv.i897.i
  %bcmp860.i = call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr.i898.i, ptr noundef nonnull dereferenceable(8) @BAD_NAME, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp860.i)
  %tobool197.not.i = icmp eq i32 %bcmp860.i, 0
  br i1 %tobool197.not.i, label %lor.lhs.false194.i.if.end214.i_crit_edge, label %lor.lhs.false194.i.next_attr.backedge.i_crit_edge

lor.lhs.false194.i.next_attr.backedge.i_crit_edge: ; preds = %lor.lhs.false194.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

lor.lhs.false194.i.if.end214.i_crit_edge:         ; preds = %lor.lhs.false194.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214.i

lor.lhs.false201.i:                               ; preds = %land.lhs.true183.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %142)
  %cmp207.not.i = icmp eq i8 %142, 4
  %or.cond934.i = select i1 %tobool76.not.not.i, i1 %cmp207.not.i, i1 false
  br i1 %or.cond934.i, label %lor.lhs.false209.i, label %lor.lhs.false201.i.next_attr.backedge.i_crit_edge

lor.lhs.false201.i.next_attr.backedge.i_crit_edge: ; preds = %lor.lhs.false201.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

lor.lhs.false209.i:                               ; preds = %lor.lhs.false201.i
  %name_off.i899.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 4
  %147 = ptrtoint ptr %name_off.i899.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %name_off.i899.i, align 2
  %149 = call i16 @llvm.bswap.i16(i16 %148) #15
  %conv.i900.i = zext i16 %149 to i32
  %add.ptr.i901.i = getelementptr i8, ptr %call59993.i, i32 %conv.i900.i
  %bcmp859.i = call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr.i901.i, ptr noundef nonnull dereferenceable(8) @SDS_NAME, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp859.i)
  %tobool212.not.i = icmp eq i32 %bcmp859.i, 0
  br i1 %tobool212.not.i, label %lor.lhs.false209.i.if.end214.i_crit_edge, label %lor.lhs.false209.i.next_attr.backedge.i_crit_edge

lor.lhs.false209.i.next_attr.backedge.i_crit_edge: ; preds = %lor.lhs.false209.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

lor.lhs.false209.i.if.end214.i_crit_edge:         ; preds = %lor.lhs.false209.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214.i

if.end214.i:                                      ; preds = %lor.lhs.false209.i.if.end214.i_crit_edge, %lor.lhs.false194.i.if.end214.i_crit_edge, %if.end179.i.if.end214.i_crit_edge
  %flags.i902.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 5
  %150 = ptrtoint ptr %flags.i902.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %flags.i902.i, align 4
  %152 = and i16 %151, 128
  %153 = ptrtoint ptr %std_fa217.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %std_fa217.i, align 4
  %and220.i = and i32 %154, -131073
  %155 = zext i16 %152 to i32
  %156 = shl nuw nsw i32 %155, 10
  %storemerge.i = or i32 %156, %and220.i
  store i32 %storemerge.i, ptr %std_fa217.i, align 4
  %157 = load i16, ptr %flags.i902.i, align 4
  %158 = and i16 %157, 256
  %and228.i = and i32 %storemerge.i, -524289
  %159 = zext i16 %158 to i32
  %160 = shl nuw nsw i32 %159, 11
  %storemerge1006.i = or i32 %160, %and228.i
  store i32 %storemerge1006.i, ptr %std_fa217.i, align 4
  %161 = load i16, ptr %flags.i902.i, align 4
  %162 = and i16 %161, 64
  %and236.i = and i32 %storemerge1006.i, -4194305
  %163 = zext i16 %162 to i32
  %164 = shl nuw nsw i32 %163, 16
  %storemerge1007.i = or i32 %and236.i, %164
  store i32 %storemerge1007.i, ptr %std_fa217.i, align 4
  %165 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool239.not.i = icmp eq i8 %166, 0
  br i1 %tobool239.not.i, label %if.end243.i, label %if.end243.thread.i

if.end243.thread.i:                               ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #17
  %167 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %options.i, align 4
  %fs_fmask_inv925.i = getelementptr inbounds %struct.ntfs_mount_options, ptr %168, i32 0, i32 4
  %169 = ptrtoint ptr %fs_fmask_inv925.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %fs_fmask_inv925.i, align 4
  %171 = and i16 %170, 511
  %172 = or i16 %171, -32768
  br label %if.end253.i

if.end243.i:                                      ; preds = %if.end214.i
  %conv86.mask.i = and i32 %cond85.i, 65535
  %conv241.i = zext i32 %conv86.mask.i to i64
  %173 = ptrtoint ptr %i_size376.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %conv241.i, ptr %i_size376.i, align 8
  %174 = ptrtoint ptr %i_valid378.i to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %conv241.i, ptr %i_valid378.i, align 8
  call void @inode_set_bytes(ptr noundef %call1, i64 noundef %conv241.i) #15
  %175 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %.pr.i = load i8, ptr %non_res.i, align 8
  %176 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %options.i, align 4
  %fs_fmask_inv.i = getelementptr inbounds %struct.ntfs_mount_options, ptr %177, i32 0, i32 4
  %178 = ptrtoint ptr %fs_fmask_inv.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %fs_fmask_inv.i, align 4
  %180 = and i16 %179, 511
  %181 = or i16 %180, -32768
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool250.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool250.not.i, label %if.then251.i, label %if.end243.i.if.end253.i_crit_edge

if.end243.i.if.end253.i_crit_edge:                ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end253.i

if.then251.i:                                     ; preds = %if.end243.i
  call void @__sanitizer_cov_trace_pc() #17
  %182 = ptrtoint ptr %ni_flags400.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %ni_flags400.i, align 4
  %or252.i = or i32 %183, 128
  store i32 %or252.i, ptr %ni_flags400.i, align 4
  br label %next_attr.backedge.i

if.end253.i:                                      ; preds = %if.end243.i.if.end253.i_crit_edge, %if.end243.thread.i
  %184 = phi i16 [ %172, %if.end243.thread.i ], [ %181, %if.end243.i.if.end253.i_crit_edge ]
  %call254.i = call fastcc i64 @attr_ondisk_size(ptr noundef nonnull %call59993.i) #15
  call void @inode_set_bytes(ptr noundef %call1, i64 noundef %call254.i) #15
  %valid_size.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7, i32 0, i32 7
  %185 = ptrtoint ptr %valid_size.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %valid_size.i, align 8
  %187 = call i64 @llvm.bswap.i64(i64 %186) #15
  %188 = ptrtoint ptr %i_valid378.i to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %187, ptr %i_valid378.i, align 8
  %data_size256.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7, i32 0, i32 6
  %189 = ptrtoint ptr %data_size256.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %data_size256.i, align 8
  %191 = call i64 @llvm.bswap.i64(i64 %190) #15
  %192 = ptrtoint ptr %i_size376.i to i32
  call void @__asan_store8_noabort(i32 %192)
  store i64 %191, ptr %i_size376.i, align 8
  %alloc_size.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7, i32 0, i32 5
  %193 = ptrtoint ptr %alloc_size.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %alloc_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %194)
  %tobool258.not.i = icmp eq i64 %194, 0
  br i1 %tobool258.not.i, label %if.end253.i.next_attr.backedge.i_crit_edge, label %if.end253.i.attr_unpack_run.i_crit_edge

if.end253.i.attr_unpack_run.i_crit_edge:          ; preds = %if.end253.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %attr_unpack_run.i

if.end253.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end253.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

sw.bb269.i:                                       ; preds = %cond.end84.i
  br i1 %tobool76.not.i, label %if.end273.i, label %sw.bb269.i.out.i_crit_edge

sw.bb269.i.out.i_crit_edge:                       ; preds = %sw.bb269.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end273.i:                                      ; preds = %sw.bb269.i
  %conv274.i = zext i16 %cond923.i to i32
  %add.ptr275.i = getelementptr i8, ptr %call59993.i, i32 %conv274.i
  %name_len276.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 3
  %195 = ptrtoint ptr %name_len276.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %name_len276.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %196)
  %cmp278.not.i = icmp eq i8 %196, 4
  br i1 %cmp278.not.i, label %lor.lhs.false280.i, label %if.end273.i.next_attr.backedge.i_crit_edge

if.end273.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end273.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

lor.lhs.false280.i:                               ; preds = %if.end273.i
  %name_off.i908.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 4
  %197 = ptrtoint ptr %name_off.i908.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %name_off.i908.i, align 2
  %199 = call i16 @llvm.bswap.i16(i16 %198) #15
  %conv.i909.i = zext i16 %199 to i32
  %add.ptr.i910.i = getelementptr i8, ptr %call59993.i, i32 %conv.i909.i
  %bcmp858.i = call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr.i910.i, ptr noundef nonnull dereferenceable(8) @I30_NAME, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp858.i)
  %tobool283.not.i = icmp eq i32 %bcmp858.i, 0
  br i1 %tobool283.not.i, label %if.end285.i, label %lor.lhs.false280.i.next_attr.backedge.i_crit_edge

lor.lhs.false280.i.next_attr.backedge.i_crit_edge: ; preds = %lor.lhs.false280.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.end285.i:                                      ; preds = %lor.lhs.false280.i
  %200 = ptrtoint ptr %add.ptr275.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %add.ptr275.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %201)
  %cmp287.not.i = icmp eq i32 %201, 805306368
  br i1 %cmp287.not.i, label %lor.lhs.false289.i, label %if.end285.i.out.i_crit_edge

if.end285.i.out.i_crit_edge:                      ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

lor.lhs.false289.i:                               ; preds = %if.end285.i
  %rule.i = getelementptr inbounds %struct.INDEX_ROOT, ptr %add.ptr275.i, i32 0, i32 1
  %202 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %rule.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %203)
  %cmp290.not.i = icmp eq i32 %203, 16777216
  br i1 %cmp290.not.i, label %if.end293.i, label %lor.lhs.false289.i.out.i_crit_edge

lor.lhs.false289.i.out.i_crit_edge:               ; preds = %lor.lhs.false289.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end293.i:                                      ; preds = %lor.lhs.false289.i
  br i1 %is_dir.0.off0976.i, label %if.end296.i, label %if.end293.i.next_attr.backedge.i_crit_edge

if.end293.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end293.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.end296.i:                                      ; preds = %if.end293.i
  %204 = ptrtoint ptr %ni_flags400.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %ni_flags400.i, align 4
  %or298.i = or i32 %205, 64
  store i32 %or298.i, ptr %ni_flags400.i, align 4
  %call299.i = call i32 @indx_init(ptr noundef %71, ptr noundef %8, ptr noundef nonnull %call59993.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299.i)
  %tobool300.not.i = icmp eq i32 %call299.i, 0
  br i1 %tobool300.not.i, label %if.end302.i, label %if.end296.i.out.i_crit_edge

if.end296.i.out.i_crit_edge:                      ; preds = %if.end296.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end302.i:                                      ; preds = %if.end296.i
  %206 = ptrtoint ptr %s_root303.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %s_root303.i, align 64
  %tobool304.not.i = icmp eq ptr %207, null
  br i1 %tobool304.not.i, label %if.end302.i.next_attr.backedge.i_crit_edge, label %cond.true305.i

if.end302.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end302.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

cond.true305.i:                                   ; preds = %if.end302.i
  call void @__sanitizer_cov_trace_pc() #17
  %208 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %options.i, align 4
  %fs_dmask_inv.i = getelementptr inbounds %struct.ntfs_mount_options, ptr %209, i32 0, i32 5
  %210 = ptrtoint ptr %fs_dmask_inv.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %fs_dmask_inv.i, align 2
  %and308.i = and i16 %211, 511
  %or309.i = or i16 %and308.i, 16384
  br label %next_attr.backedge.i

sw.bb314.i:                                       ; preds = %cond.end84.i
  br i1 %is_root.0.off0969.i, label %lor.lhs.false316.i, label %sw.bb314.i.next_attr.backedge.i_crit_edge

sw.bb314.i.next_attr.backedge.i_crit_edge:        ; preds = %sw.bb314.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

lor.lhs.false316.i:                               ; preds = %sw.bb314.i
  %name_len317.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 3
  %212 = ptrtoint ptr %name_len317.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %name_len317.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %213)
  %cmp319.not.i = icmp eq i8 %213, 4
  br i1 %cmp319.not.i, label %lor.lhs.false321.i, label %lor.lhs.false316.i.next_attr.backedge.i_crit_edge

lor.lhs.false316.i.next_attr.backedge.i_crit_edge: ; preds = %lor.lhs.false316.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

lor.lhs.false321.i:                               ; preds = %lor.lhs.false316.i
  %name_off.i911.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 4
  %214 = ptrtoint ptr %name_off.i911.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %name_off.i911.i, align 2
  %216 = call i16 @llvm.bswap.i16(i16 %215) #15
  %conv.i912.i = zext i16 %216 to i32
  %add.ptr.i913.i = getelementptr i8, ptr %call59993.i, i32 %conv.i912.i
  %bcmp857.i = call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr.i913.i, ptr noundef nonnull dereferenceable(8) @I30_NAME, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp857.i)
  %tobool324.not.i = icmp eq i32 %bcmp857.i, 0
  br i1 %tobool324.not.i, label %if.end326.i, label %lor.lhs.false321.i.next_attr.backedge.i_crit_edge

lor.lhs.false321.i.next_attr.backedge.i_crit_edge: ; preds = %lor.lhs.false321.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.end326.i:                                      ; preds = %lor.lhs.false321.i
  call void @__sanitizer_cov_trace_pc() #17
  %data_size327.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7, i32 0, i32 6
  %217 = ptrtoint ptr %data_size327.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %data_size327.i, align 8
  %219 = call i64 @llvm.bswap.i64(i64 %218) #15
  %220 = ptrtoint ptr %i_size376.i to i32
  call void @__asan_store8_noabort(i32 %220)
  store i64 %219, ptr %i_size376.i, align 8
  %valid_size329.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7, i32 0, i32 7
  %221 = ptrtoint ptr %valid_size329.i to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %valid_size329.i, align 8
  %223 = call i64 @llvm.bswap.i64(i64 %222) #15
  %224 = ptrtoint ptr %i_valid378.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %223, ptr %i_valid378.i, align 8
  %alloc_size331.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7, i32 0, i32 5
  %225 = ptrtoint ptr %alloc_size331.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %alloc_size331.i, align 8
  %227 = call i64 @llvm.bswap.i64(i64 %226) #15
  call void @inode_set_bytes(ptr noundef %call1, i64 noundef %227) #15
  br label %attr_unpack_run.i

sw.bb332.i:                                       ; preds = %cond.end84.i
  br i1 %cmp.i, label %if.then335.i, label %if.else348.i

if.then335.i:                                     ; preds = %sw.bb332.i
  br i1 %tobool76.not.i, label %if.then335.i.land.lhs.true568.i_crit_edge, label %if.end339.i

if.then335.i.land.lhs.true568.i_crit_edge:        ; preds = %if.then335.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true568.i

if.end339.i:                                      ; preds = %if.then335.i
  %alloc_size340.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7, i32 0, i32 5
  %228 = ptrtoint ptr %alloc_size340.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %alloc_size340.i, align 8
  %230 = call i64 @llvm.bswap.i64(i64 %229) #15
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870911, i64 %230)
  %cmp341.i = icmp ugt i64 %230, 536870911
  br i1 %cmp341.i, label %if.end339.i.land.lhs.true568.i_crit_edge, label %if.end339.i.attr_unpack_run.i_crit_edge

if.end339.i.attr_unpack_run.i_crit_edge:          ; preds = %if.end339.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %attr_unpack_run.i

if.end339.i.land.lhs.true568.i_crit_edge:         ; preds = %if.end339.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true568.i

if.else348.i:                                     ; preds = %sw.bb332.i
  br i1 %is_dir.0.off0976.i, label %land.lhs.true351.i, label %if.else348.i.next_attr.backedge.i_crit_edge

if.else348.i.next_attr.backedge.i_crit_edge:      ; preds = %if.else348.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

land.lhs.true351.i:                               ; preds = %if.else348.i
  %name_len352.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 3
  %231 = ptrtoint ptr %name_len352.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %name_len352.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %232)
  %cmp354.i = icmp eq i8 %232, 4
  br i1 %cmp354.i, label %land.lhs.true356.i, label %land.lhs.true351.i.next_attr.backedge.i_crit_edge

land.lhs.true351.i.next_attr.backedge.i_crit_edge: ; preds = %land.lhs.true351.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

land.lhs.true356.i:                               ; preds = %land.lhs.true351.i
  %name_off.i914.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 4
  %233 = ptrtoint ptr %name_off.i914.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %name_off.i914.i, align 2
  %235 = call i16 @llvm.bswap.i16(i16 %234) #15
  %conv.i915.i = zext i16 %235 to i32
  %add.ptr.i916.i = getelementptr i8, ptr %call59993.i, i32 %conv.i915.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(8) %add.ptr.i916.i, ptr noundef nonnull dereferenceable(8) @I30_NAME, i32 8) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool359.not.i = icmp ne i32 %bcmp.i, 0
  %brmerge935.i = select i1 %tobool359.not.i, i1 true, i1 %tobool76.not.i
  br i1 %brmerge935.i, label %land.lhs.true356.i.next_attr.backedge.i_crit_edge, label %land.lhs.true356.i.attr_unpack_run.i_crit_edge

land.lhs.true356.i.attr_unpack_run.i_crit_edge:   ; preds = %land.lhs.true356.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %attr_unpack_run.i

land.lhs.true356.i.next_attr.backedge.i_crit_edge: ; preds = %land.lhs.true356.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

sw.bb367.i:                                       ; preds = %cond.end84.i
  %name_len368.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 3
  %236 = ptrtoint ptr %name_len368.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %name_len368.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool369.not.i = icmp eq i8 %237, 0
  br i1 %tobool369.not.i, label %if.end371.i, label %sw.bb367.i.next_attr.backedge.i_crit_edge

sw.bb367.i.next_attr.backedge.i_crit_edge:        ; preds = %sw.bb367.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.end371.i:                                      ; preds = %sw.bb367.i
  %call372.i = call i32 @ni_parse_reparse(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call59993.i, ptr noundef nonnull %rp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call372.i)
  %cond599.i = icmp eq i32 %call372.i, 3
  br i1 %cond599.i, label %sw.bb373.i, label %if.end371.i.next_attr.backedge.i_crit_edge

if.end371.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end371.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

sw.bb373.i:                                       ; preds = %if.end371.i
  %238 = ptrtoint ptr %PrintNameLength.i to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %PrintNameLength.i, align 2
  %240 = call i16 @llvm.bswap.i16(i16 %239) #15
  %241 = lshr i16 %240, 1
  %conv375.i = zext i16 %241 to i64
  %242 = ptrtoint ptr %i_size376.i to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %conv375.i, ptr %i_size376.i, align 8
  %243 = ptrtoint ptr %i_valid378.i to i32
  call void @__asan_store8_noabort(i32 %243)
  store i64 %conv375.i, ptr %i_valid378.i, align 8
  %244 = ptrtoint ptr %ni_flags400.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %ni_flags400.i, align 4
  %and380.i = and i32 %245, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and380.i)
  %tobool381.not.i = icmp eq i32 %and380.i, 0
  br i1 %tobool381.not.i, label %if.else385.i, label %if.then382.i

if.then382.i:                                     ; preds = %sw.bb373.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @indx_clear(ptr noundef %71) #15
  %246 = call ptr @memset(ptr %71, i32 0, i32 128)
  %247 = ptrtoint ptr %ni_flags400.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %ni_flags400.i, align 4
  %and384.i = and i32 %248, -65
  store i32 %and384.i, ptr %ni_flags400.i, align 4
  br label %if.end387.i

if.else385.i:                                     ; preds = %sw.bb373.i
  call void @__sanitizer_cov_trace_pc() #17
  %249 = ptrtoint ptr %run73.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %run73.i, align 4
  call void @kvfree(ptr noundef %250) #15
  %251 = call ptr @memset(ptr %run73.i, i32 0, i32 12)
  br label %if.end387.i

if.end387.i:                                      ; preds = %if.else385.i, %if.then382.i
  %252 = ptrtoint ptr %non_res.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %non_res.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool389.not.i = icmp eq i8 %253, 0
  br i1 %tobool389.not.i, label %if.end387.i.next_attr.backedge.i_crit_edge, label %if.end387.i.attr_unpack_run.i_crit_edge

if.end387.i.attr_unpack_run.i_crit_edge:          ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %attr_unpack_run.i

if.end387.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end387.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

sw.bb393.i:                                       ; preds = %cond.end84.i
  %name_len394.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 3
  %254 = ptrtoint ptr %name_len394.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %name_len394.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool395.not.i = icmp ne i8 %255, 0
  %tobool76.not.not936.i = xor i1 %tobool76.not.i, true
  %brmerge937.i = select i1 %tobool395.not.i, i1 true, i1 %tobool76.not.not936.i
  br i1 %brmerge937.i, label %sw.bb393.i.next_attr.backedge.i_crit_edge, label %if.end.i.i

sw.bb393.i.next_attr.backedge.i_crit_edge:        ; preds = %sw.bb393.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.end.i.i:                                       ; preds = %sw.bb393.i
  %256 = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7
  %data_off.i.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %data_off.i.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %data_off.i.i, align 4
  %259 = call i16 @llvm.bswap.i16(i16 %258) #15
  %conv.i918.i = zext i16 %259 to i32
  %add.i919.i = add nuw nsw i32 %conv.i918.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %add.i919.i)
  %cmp.i.i = icmp ult i32 %92, %add.i919.i
  br i1 %cmp.i.i, label %if.end.i.i.next_attr.backedge.i_crit_edge, label %if.end3.i.i

if.end.i.i.next_attr.backedge.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %260 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %256, align 8
  %262 = call i32 @llvm.bswap.i32(i32 %261) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %262)
  %cmp4.i.i = icmp ult i32 %262, 8
  %add.ptr.i920.i = getelementptr i8, ptr %call59993.i, i32 %conv.i918.i
  %tobool398.not.i = icmp eq ptr %add.ptr.i920.i, null
  %or.cond938.i = select i1 %cmp4.i.i, i1 true, i1 %tobool398.not.i
  br i1 %or.cond938.i, label %if.end3.i.i.next_attr.backedge.i_crit_edge, label %if.then399.i

if.end3.i.i.next_attr.backedge.i_crit_edge:       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

if.then399.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %263 = ptrtoint ptr %ni_flags400.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %ni_flags400.i, align 4
  %or401.i = or i32 %264, 32
  store i32 %or401.i, ptr %ni_flags400.i, align 4
  %265 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %mode.0951.i, ptr %call1, align 8
  call void @ntfs_get_wsl_perm(ptr noundef %call1) #15
  %266 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %call1, align 8
  br label %next_attr.backedge.i

attr_unpack_run.i:                                ; preds = %if.end387.i.attr_unpack_run.i_crit_edge, %land.lhs.true356.i.attr_unpack_run.i_crit_edge, %if.end339.i.attr_unpack_run.i_crit_edge, %if.end326.i, %if.end253.i.attr_unpack_run.i_crit_edge, %if.end72.i
  %mode.3.i = phi i16 [ %mode.0951.i, %if.end72.i ], [ %mode.0951.i, %if.end326.i ], [ %184, %if.end253.i.attr_unpack_run.i_crit_edge ], [ %mode.0951.i, %if.end339.i.attr_unpack_run.i_crit_edge ], [ %mode.0951.i, %land.lhs.true356.i.attr_unpack_run.i_crit_edge ], [ -24065, %if.end387.i.attr_unpack_run.i_crit_edge ]
  %is_dir.2.off0.i = phi i1 [ %is_dir.0.off0976.i, %if.end72.i ], [ %is_dir.0.off0976.i, %if.end326.i ], [ false, %if.end253.i.attr_unpack_run.i_crit_edge ], [ %is_dir.0.off0976.i, %if.end339.i.attr_unpack_run.i_crit_edge ], [ true, %land.lhs.true356.i.attr_unpack_run.i_crit_edge ], [ false, %if.end387.i.attr_unpack_run.i_crit_edge ]
  %asize.0.i = phi i32 [ %80, %if.end72.i ], [ %92, %if.end326.i ], [ %92, %if.end253.i.attr_unpack_run.i_crit_edge ], [ %92, %if.end339.i.attr_unpack_run.i_crit_edge ], [ %92, %land.lhs.true356.i.attr_unpack_run.i_crit_edge ], [ %92, %if.end387.i.attr_unpack_run.i_crit_edge ]
  %run.0.i = phi ptr [ %run73.i, %if.end72.i ], [ %alloc_run.i, %if.end326.i ], [ %cond268.i, %if.end253.i.attr_unpack_run.i_crit_edge ], [ %run347.i, %if.end339.i.attr_unpack_run.i_crit_edge ], [ %71, %land.lhs.true356.i.attr_unpack_run.i_crit_edge ], [ %run73.i, %if.end387.i.attr_unpack_run.i_crit_edge ]
  %268 = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7
  %run_off.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7, i32 0, i32 2
  %269 = ptrtoint ptr %run_off.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %run_off.i, align 8
  %271 = call i16 @llvm.bswap.i16(i16 %270) #15
  %272 = ptrtoint ptr %268 to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %268, align 8
  %274 = call i64 @llvm.bswap.i64(i64 %273) #15
  %conv405.i = trunc i64 %274 to i32
  %evcn.i = getelementptr inbounds %struct.ATTRIB, ptr %call59993.i, i32 0, i32 7, i32 0, i32 1
  %275 = ptrtoint ptr %evcn.i to i32
  call void @__asan_load8_noabort(i32 %275)
  %276 = load i64, ptr %evcn.i, align 8
  %277 = call i64 @llvm.bswap.i64(i64 %276) #15
  %conv406.i = trunc i64 %277 to i32
  %conv408.i = zext i16 %271 to i32
  %add.ptr409.i = getelementptr i8, ptr %call59993.i, i32 %conv408.i
  %sub.i = sub i32 %asize.0.i, %conv408.i
  %call411.i = call i32 @run_unpack_ex(ptr noundef %run.0.i, ptr noundef %8, i32 noundef %11, i32 noundef %conv405.i, i32 noundef %conv406.i, i32 noundef %conv405.i, ptr noundef %add.ptr409.i, i32 noundef %sub.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call411.i)
  %cmp412.i = icmp slt i32 %call411.i, 0
  br i1 %cmp412.i, label %attr_unpack_run.i.out.i_crit_edge, label %attr_unpack_run.i.next_attr.backedge.i_crit_edge

attr_unpack_run.i.next_attr.backedge.i_crit_edge: ; preds = %attr_unpack_run.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_attr.backedge.i

attr_unpack_run.i.out.i_crit_edge:                ; preds = %attr_unpack_run.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

end_enum.i:                                       ; preds = %next_attr.backedge.i
  %tobool416.not.i = icmp eq ptr %std5.0.be.i, null
  br i1 %tobool416.not.i, label %end_enum.i.out.i_crit_edge, label %if.end418.i

end_enum.i.out.i_crit_edge:                       ; preds = %end_enum.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end418.i:                                      ; preds = %end_enum.i
  %or.cond865.i = or i1 %tobool156.not.i, %is_match.0.off0.be.i
  br i1 %or.cond865.i, label %if.end423.i, label %if.end418.i.out.i_crit_edge

if.end418.i.out.i_crit_edge:                      ; preds = %if.end418.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end423.i:                                      ; preds = %if.end418.i
  %fa424.i = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %std5.0.be.i, i32 0, i32 4
  %278 = ptrtoint ptr %fa424.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %fa424.i, align 8
  %and425.i = and i32 %279, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and425.i)
  %tobool426.not.i = icmp eq i32 %and425.i, 0
  %280 = and i16 %mode.0.be.i, -147
  %spec.select866.i = select i1 %tobool426.not.i, i16 %mode.0.be.i, i16 %280
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %names.0.be.i)
  %tobool432.not.i = icmp eq i16 %names.0.be.i, 0
  br i1 %tobool432.not.i, label %if.end423.i.out.i_crit_edge, label %if.end434.i

if.end423.i.out.i_crit_edge:                      ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

if.end434.i:                                      ; preds = %if.end423.i
  %conv435.i = zext i16 %names.0.be.i to i32
  %hard_links.i = getelementptr inbounds %struct.MFT_REC, ptr %39, i32 0, i32 2
  %281 = ptrtoint ptr %hard_links.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %hard_links.i, align 2
  %283 = call i16 @llvm.bswap.i16(i16 %282) #15
  call void @__sanitizer_cov_trace_cmp2(i16 %names.0.be.i, i16 %283)
  %cmp437.not.i = icmp eq i16 %names.0.be.i, %283
  br i1 %cmp437.not.i, label %if.end434.i.if.end442.i_crit_edge, label %if.then439.i

if.end434.i.if.end442.i_crit_edge:                ; preds = %if.end434.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end442.i

if.then439.i:                                     ; preds = %if.end434.i
  call void @__sanitizer_cov_trace_pc() #17
  %284 = call i16 @llvm.bswap.i16(i16 %names.0.be.i) #15
  %285 = ptrtoint ptr %hard_links.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %284, ptr %hard_links.i, align 2
  %dirty.i = getelementptr i8, ptr %call1, i32 -292
  %286 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 1, ptr %dirty.i, align 4
  br label %if.end442.i

if.end442.i:                                      ; preds = %if.then439.i, %if.end434.i.if.end442.i_crit_edge
  call void @set_nlink(ptr noundef %call1, i32 noundef %conv435.i) #15
  %287 = and i16 %spec.select866.i, -4096
  %288 = lshr i16 %spec.select866.i, 12
  %289 = trunc i16 %288 to i4
  %trunc.i = xor i4 %289, -8
  %290 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %290, ptr @__sancov_gen_cov_switch_values.17)
  switch i4 %trunc.i, label %if.else504.i [
    i4 -4, label %if.then448.i
    i4 2, label %if.then458.i
    i4 0, label %if.then467.i
    i4 -6, label %if.end442.i.if.then502.i_crit_edge
    i4 -2, label %if.end442.i.if.then502.i_crit_edge25
    i4 -7, label %if.end442.i.if.then502.i_crit_edge26
    i4 4, label %if.end442.i.if.then502.i_crit_edge27
  ]

if.end442.i.if.then502.i_crit_edge27:             ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then502.i

if.end442.i.if.then502.i_crit_edge26:             ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then502.i

if.end442.i.if.then502.i_crit_edge25:             ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then502.i

if.end442.i.if.then502.i_crit_edge:               ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then502.i

if.then448.i:                                     ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #17
  %291 = ptrtoint ptr %std_fa217.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %std_fa217.i, align 4
  %or450.i = or i32 %292, 16
  store i32 %or450.i, ptr %std_fa217.i, align 4
  %293 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr @ntfs_dir_inode_operations, ptr %i_op.i, align 8
  %294 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr @ntfs_dir_operations, ptr %294, align 8
  %296 = ptrtoint ptr %i_valid378.i to i32
  call void @__asan_store8_noabort(i32 %296)
  store i64 0, ptr %i_valid378.i, align 8
  br label %if.end521.i

if.then458.i:                                     ; preds = %if.end442.i
  call void @__sanitizer_cov_trace_pc() #17
  %297 = ptrtoint ptr %std_fa217.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %std_fa217.i, align 4
  %and460.i = and i32 %298, -17
  store i32 %and460.i, ptr %std_fa217.i, align 4
  %299 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr @ntfs_link_inode_operations, ptr %i_op.i, align 8
  %300 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr null, ptr %300, align 8
  call void @inode_nohighmem(ptr noundef %call1) #15
  br label %if.end521.i

if.then467.i:                                     ; preds = %if.end442.i
  %302 = ptrtoint ptr %std_fa217.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %std_fa217.i, align 4
  %and469.i = and i32 %303, -17
  store i32 %and469.i, ptr %std_fa217.i, align 4
  %304 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr @ntfs_file_inode_operations, ptr %i_op.i, align 8
  %305 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr @ntfs_file_operations, ptr %305, align 8
  %and.i.i = and i32 %303, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i921.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i921.i, label %is_compressed.exit.i, label %if.then467.i.is_compressed.exit.thread.i_crit_edge

if.then467.i.is_compressed.exit.thread.i_crit_edge: ; preds = %if.then467.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_compressed.exit.thread.i

is_compressed.exit.i:                             ; preds = %if.then467.i
  %307 = ptrtoint ptr %ni_flags400.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %ni_flags400.i, align 4
  %and1.i.i = and i32 %308, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.i.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %is_compressed.exit.i._crit_edge, label %is_compressed.exit.i.is_compressed.exit.thread.i_crit_edge

is_compressed.exit.i.is_compressed.exit.thread.i_crit_edge: ; preds = %is_compressed.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_compressed.exit.thread.i

is_compressed.exit.i._crit_edge:                  ; preds = %is_compressed.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %309

is_compressed.exit.thread.i:                      ; preds = %is_compressed.exit.i.is_compressed.exit.thread.i_crit_edge, %if.then467.i.is_compressed.exit.thread.i_crit_edge
  br label %309

309:                                              ; preds = %is_compressed.exit.thread.i, %is_compressed.exit.i._crit_edge
  %310 = phi ptr [ @ntfs_aops_cmpr, %is_compressed.exit.thread.i ], [ @ntfs_aops, %is_compressed.exit.i._crit_edge ]
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %311 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %312, i32 0, i32 9
  %313 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %310, ptr %a_ops.i, align 4
  br i1 %cmp.i, label %.if.end521.i_crit_edge, label %do.body477.i

.if.end521.i_crit_edge:                           ; preds = %309
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end521.i

do.body477.i:                                     ; preds = %309
  call void @__sanitizer_cov_trace_pc() #17
  call void @__init_rwsem(ptr noundef %71, ptr noundef nonnull @.str.1, ptr noundef nonnull @ntfs_read_mft.__key.5) #15
  br label %if.end521.i

if.then502.i:                                     ; preds = %if.end442.i.if.then502.i_crit_edge, %if.end442.i.if.then502.i_crit_edge25, %if.end442.i.if.then502.i_crit_edge26, %if.end442.i.if.then502.i_crit_edge27
  %314 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr @ntfs_special_inode_operations, ptr %i_op.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 13
  %315 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %i_rdev.i, align 8
  call void @init_special_inode(ptr noundef %call1, i16 noundef zeroext %spec.select866.i, i32 noundef %316) #15
  br label %if.end521.i

if.else504.i:                                     ; preds = %if.end442.i
  %tobool505.not.i = icmp eq ptr %fname.0.be.i, null
  br i1 %tobool505.not.i, label %if.else504.i.out.i_crit_edge, label %land.lhs.true506.i

if.else504.i.out.i_crit_edge:                     ; preds = %if.else504.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

land.lhs.true506.i:                               ; preds = %if.else504.i
  %317 = ptrtoint ptr %fname.0.be.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %fname.0.be.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 184549376, i32 %318)
  %cmp507.i = icmp eq i32 %318, 184549376
  br i1 %cmp507.i, label %land.lhs.true509.i, label %land.lhs.true506.i.out.i_crit_edge

land.lhs.true506.i.out.i_crit_edge:               ; preds = %land.lhs.true506.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

land.lhs.true509.i:                               ; preds = %land.lhs.true506.i
  %seq511.i = getelementptr inbounds %struct.MFT_REF, ptr %fname.0.be.i, i32 0, i32 2
  %319 = ptrtoint ptr %seq511.i to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %seq511.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2816, i16 %320)
  %cmp513.i = icmp eq i16 %320, 2816
  br i1 %cmp513.i, label %land.lhs.true509.i.if.end521.i_crit_edge, label %land.lhs.true509.i.out.i_crit_edge

land.lhs.true509.i.out.i_crit_edge:               ; preds = %land.lhs.true509.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.i

land.lhs.true509.i.if.end521.i_crit_edge:         ; preds = %land.lhs.true509.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end521.i

if.end521.i:                                      ; preds = %land.lhs.true509.i.if.end521.i_crit_edge, %if.then502.i, %do.body477.i, %.if.end521.i_crit_edge, %if.then458.i, %if.then448.i
  %321 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %options.i, align 4
  %sys_immutable.i = getelementptr inbounds %struct.ntfs_mount_options, ptr %322, i32 0, i32 6
  %323 = ptrtoint ptr %sys_immutable.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %bf.load.i = load i16, ptr %sys_immutable.i, align 4
  %324 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %324)
  %tobool523.not.i = icmp eq i16 %324, 0
  br i1 %tobool523.not.i, label %if.end521.i.if.else545.i_crit_edge, label %land.lhs.true524.i

if.end521.i.if.else545.i_crit_edge:               ; preds = %if.end521.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else545.i

land.lhs.true524.i:                               ; preds = %if.end521.i
  %325 = ptrtoint ptr %fa424.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %fa424.i, align 8
  %and526.i = and i32 %326, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and526.i)
  %tobool527.not.i = icmp eq i32 %and526.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %287)
  %cmp531.i = icmp eq i16 %287, 4096
  %or.cond867.i = select i1 %tobool527.not.i, i1 true, i1 %cmp531.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %287)
  %cmp536.i = icmp eq i16 %287, -16384
  %or.cond868.i = select i1 %or.cond867.i, i1 true, i1 %cmp536.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %287)
  %cmp541.i = icmp eq i16 %287, -24576
  %or.cond869.i = select i1 %or.cond868.i, i1 true, i1 %cmp541.i
  br i1 %or.cond869.i, label %land.lhs.true524.i.if.else545.i_crit_edge, label %if.then543.i

land.lhs.true524.i.if.else545.i_crit_edge:        ; preds = %land.lhs.true524.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else545.i

if.then543.i:                                     ; preds = %land.lhs.true524.i
  call void @__sanitizer_cov_trace_pc() #17
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 4
  %327 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %i_flags.i, align 4
  %or544.i = or i32 %328, 8
  store i32 %or544.i, ptr %i_flags.i, align 4
  br label %if.end548.i

if.else545.i:                                     ; preds = %land.lhs.true524.i.if.else545.i_crit_edge, %if.end521.i.if.else545.i_crit_edge
  %i_flags546.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 4
  %329 = ptrtoint ptr %i_flags546.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %i_flags546.i, align 4
  %and547.i = and i32 %330, -9
  store i32 %and547.i, ptr %i_flags546.i, align 4
  br label %if.end548.i

if.end548.i:                                      ; preds = %if.else545.i, %if.then543.i
  %331 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %spec.select866.i, ptr %call1, align 8
  %332 = ptrtoint ptr %ni_flags400.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %ni_flags400.i, align 4
  %and551.i = and i32 %333, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and551.i)
  %tobool552.not.i = icmp eq i32 %and551.i, 0
  br i1 %tobool552.not.i, label %if.then553.i, label %if.end548.i.Ok.i_crit_edge

if.end548.i.Ok.i_crit_edge:                       ; preds = %if.end548.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %Ok.i

if.then553.i:                                     ; preds = %if.end548.i
  call void @__sanitizer_cov_trace_pc() #17
  %i_flags554.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 4
  %334 = ptrtoint ptr %i_flags554.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %i_flags554.i, align 4
  %or555.i = or i32 %335, 4096
  store i32 %or555.i, ptr %i_flags554.i, align 4
  br label %Ok.i

Ok.i:                                             ; preds = %if.then553.i, %if.end548.i.Ok.i_crit_edge, %is_rec_base.exit.i.Ok.i_crit_edge, %land.lhs.true.i.i.Ok.i_crit_edge, %if.end49.i.Ok.i_crit_edge
  br i1 %cmp.i, label %land.lhs.true559.i, label %Ok.i.if.end565.i_crit_edge

Ok.i.if.end565.i_crit_edge:                       ; preds = %Ok.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end565.i

land.lhs.true559.i:                               ; preds = %Ok.i
  %s_root560.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 13
  %336 = ptrtoint ptr %s_root560.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %s_root560.i, align 64
  %tobool561.not.i = icmp eq ptr %337, null
  br i1 %tobool561.not.i, label %if.then562.i, label %land.lhs.true559.i.if.end565.i_crit_edge

land.lhs.true559.i.if.end565.i_crit_edge:         ; preds = %land.lhs.true559.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end565.i

if.then562.i:                                     ; preds = %land.lhs.true559.i
  call void @__sanitizer_cov_trace_pc() #17
  %338 = ptrtoint ptr %ni3.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr null, ptr %ni3.i, align 8
  br label %if.end565.i

if.end565.i:                                      ; preds = %if.then562.i, %land.lhs.true559.i.if.end565.i_crit_edge, %Ok.i.if.end565.i_crit_edge
  call void @unlock_new_inode(ptr noundef %call1) #15
  br label %ntfs_read_mft.exit

out.i:                                            ; preds = %land.lhs.true509.i.out.i_crit_edge, %land.lhs.true506.i.out.i_crit_edge, %if.else504.i.out.i_crit_edge, %if.end423.i.out.i_crit_edge, %if.end418.i.out.i_crit_edge, %end_enum.i.out.i_crit_edge, %attr_unpack_run.i.out.i_crit_edge, %if.end296.i.out.i_crit_edge, %lor.lhs.false289.i.out.i_crit_edge, %if.end285.i.out.i_crit_edge, %sw.bb269.i.out.i_crit_edge, %lor.lhs.false134.i.out.i_crit_edge, %sw.bb130.i.out.i_crit_edge, %if.end125.i.out.i_crit_edge, %sw.bb116.i.out.i_crit_edge, %lor.lhs.false96.i.out.i_crit_edge, %lor.lhs.false92.i.out.i_crit_edge, %sw.bb.i.out.i_crit_edge, %if.end52.i.out.i_crit_edge, %if.end44.i.out.i_crit_edge, %if.then41.i, %if.then34.i, %if.end18.i.out.i_crit_edge, %if.then7.out.i_crit_edge
  %err.0.i = phi i32 [ %call2.i, %if.then7.out.i_crit_edge ], [ %call22.i, %if.end18.i.out.i_crit_edge ], [ -22, %end_enum.i.out.i_crit_edge ], [ -22, %if.then34.i ], [ -22, %if.then41.i ], [ -22, %if.end44.i.out.i_crit_edge ], [ -2, %if.end418.i.out.i_crit_edge ], [ -22, %if.end423.i.out.i_crit_edge ], [ -22, %land.lhs.true509.i.out.i_crit_edge ], [ -22, %land.lhs.true506.i.out.i_crit_edge ], [ -22, %if.else504.i.out.i_crit_edge ], [ -22, %if.end52.i.out.i_crit_edge ], [ %call411.i, %attr_unpack_run.i.out.i_crit_edge ], [ -22, %sw.bb269.i.out.i_crit_edge ], [ -22, %if.end285.i.out.i_crit_edge ], [ -22, %lor.lhs.false289.i.out.i_crit_edge ], [ %call299.i, %if.end296.i.out.i_crit_edge ], [ -22, %sw.bb130.i.out.i_crit_edge ], [ -22, %lor.lhs.false134.i.out.i_crit_edge ], [ -22, %sw.bb116.i.out.i_crit_edge ], [ %call126.i, %if.end125.i.out.i_crit_edge ], [ -22, %sw.bb.i.out.i_crit_edge ], [ -22, %lor.lhs.false92.i.out.i_crit_edge ], [ -22, %lor.lhs.false96.i.out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp566.i = icmp eq i32 %11, 0
  br i1 %cmp566.i, label %out.i.land.lhs.true568.i_crit_edge, label %out.i.if.end574.i_crit_edge

out.i.if.end574.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end574.i

out.i.land.lhs.true568.i_crit_edge:               ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true568.i

land.lhs.true568.i:                               ; preds = %out.i.land.lhs.true568.i_crit_edge, %if.end339.i.land.lhs.true568.i_crit_edge, %if.then335.i.land.lhs.true568.i_crit_edge, %if.then7.i.land.lhs.true568.i_crit_edge
  %err.0932.i = phi i32 [ %err.0.i, %out.i.land.lhs.true568.i_crit_edge ], [ -12, %if.then7.i.land.lhs.true568.i_crit_edge ], [ -22, %if.then335.i.land.lhs.true568.i_crit_edge ], [ -22, %if.end339.i.land.lhs.true568.i_crit_edge ]
  %s_root569.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 13
  %339 = ptrtoint ptr %s_root569.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %s_root569.i, align 64
  %tobool570.not.i = icmp eq ptr %340, null
  br i1 %tobool570.not.i, label %if.then571.i, label %land.lhs.true568.i.if.end574.i_crit_edge

land.lhs.true568.i.if.end574.i_crit_edge:         ; preds = %land.lhs.true568.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end574.i

if.then571.i:                                     ; preds = %land.lhs.true568.i
  call void @__sanitizer_cov_trace_pc() #17
  %ni573.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %8, i32 0, i32 27, i32 2
  %341 = ptrtoint ptr %ni573.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr null, ptr %ni573.i, align 8
  br label %if.end574.i

if.end574.i:                                      ; preds = %if.then571.i, %land.lhs.true568.i.if.end574.i_crit_edge, %out.i.if.end574.i_crit_edge
  %err.0931.i = phi i32 [ %err.0932.i, %if.then571.i ], [ %err.0932.i, %land.lhs.true568.i.if.end574.i_crit_edge ], [ %err.0.i, %out.i.if.end574.i_crit_edge ]
  call void @iget_failed(ptr noundef %call1) #15
  %342 = inttoptr i32 %err.0931.i to ptr
  br label %ntfs_read_mft.exit

ntfs_read_mft.exit:                               ; preds = %if.end574.i, %if.end565.i
  %retval.0.i = phi ptr [ %342, %if.end574.i ], [ %call1, %if.end565.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rp.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %le.i) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  %seq = getelementptr inbounds %struct.MFT_REF, ptr %ref, i32 0, i32 2
  %343 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %343)
  %344 = load i16, ptr %seq, align 2
  %mrec = getelementptr i8, ptr %call1, i32 -344
  %345 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %mrec, align 8
  %seq10 = getelementptr inbounds %struct.MFT_REC, ptr %346, i32 0, i32 1
  %347 = ptrtoint ptr %seq10 to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %seq10, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %344, i16 %348)
  %cmp.not = icmp eq i16 %344, %348
  br i1 %cmp.not, label %if.else.cleanup_crit_edge, label %if.then13

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @make_bad_inode(ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.else.cleanup_crit_edge, %ntfs_read_mft.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %ntfs_read_mft.exit ], [ %call1, %if.then13 ], [ %call1, %if.else.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget5_locked(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntfs_test_inode(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp eq i32 %2, %4
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ntfs_set_inode(ptr nocapture noundef writeonly %inode, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #15
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %3 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %i_ino, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_get_block(ptr noundef %inode, i64 noundef %vbn, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %vbn, %sh_prom
  %call = tail call fastcc i32 @ntfs_get_block_vbo(ptr noundef %inode, i64 noundef %shl, ptr noundef %bh_result, i32 noundef %create, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_get_block_vbo(ptr noundef %inode, i64 noundef %vbo, ptr noundef %bh, i32 noundef %create, i32 noundef %ctx) unnamed_addr #5 align 64 {
entry:
  %bh.addr = alloca ptr, align 4
  %lcn = alloca i32, align 4
  %len = alloca i32, align 4
  %new = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bh.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bh, ptr %bh.addr, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %1 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s_fs_info, align 16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %5 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_page, align 8
  %cluster_bits1 = getelementptr inbounds %struct.ntfs_sb_info, ptr %4, i32 0, i32 10
  %7 = ptrtoint ptr %cluster_bits1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cluster_bits1, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_blocksize, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lcn) #15
  %11 = ptrtoint ptr %lcn to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %lcn, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #15
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %len, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %new) #15
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bh) #15
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %bh) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_valid = getelementptr i8, ptr %inode, i32 -288
  %13 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_valid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %vbo)
  %cmp.not = icmp ugt i64 %14, %vbo
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup162_crit_edge

land.lhs.true.cleanup162_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup162

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %vbo)
  %cmp2.not = icmp ugt i64 %16, %vbo
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup162_crit_edge

if.end.cleanup162_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup162

if.end4:                                          ; preds = %if.end
  %ni_flags.i = getelementptr i8, ptr %inode, i32 -4
  %17 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ni_flags.i, align 4
  %and.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp eq i32 %and.i, 0
  br i1 %tobool6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end4
  %ni_lock.i = getelementptr i8, ptr %inode, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #15
  %call8 = tail call i32 @attr_data_read_resident(ptr noundef %add.ptr.i, ptr noundef %6) #15
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end11_crit_edge

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then10:                                        ; preds = %if.then7
  %19 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh.addr, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then10.if.end11_crit_edge

if.then10.if.end11_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %20) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.then10.if.end11_crit_edge, %if.then7.if.end11_crit_edge
  %23 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bh.addr, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %10, ptr %b_size, align 8
  br label %cleanup162

if.end12:                                         ; preds = %if.end4
  %conv = zext i8 %8 to i32
  %sh_prom = zext i8 %8 to i64
  %shr = lshr i64 %vbo, %sh_prom
  %conv13 = trunc i64 %shr to i32
  %cluster_mask = getelementptr inbounds %struct.ntfs_sb_info, ptr %4, i32 0, i32 4
  %26 = ptrtoint ptr %cluster_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cluster_mask, align 4
  %28 = trunc i64 %vbo to i32
  %conv15 = and i32 %27, %28
  %29 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %new, align 1
  %new. = select i1 %tobool.not, ptr null, ptr %new
  %call17 = call i32 @attr_data_get_block(ptr noundef %add.ptr.i, i32 noundef %conv13, i32 noundef 1, ptr noundef nonnull %lcn, ptr noundef nonnull %len, ptr noundef %new.) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end12.cleanup162_crit_edge

if.end12.cleanup162_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup162

if.end20:                                         ; preds = %if.end12
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool21.not = icmp eq i32 %31, 0
  br i1 %tobool21.not, label %if.end20.cleanup162_crit_edge, label %if.end23

if.end20.cleanup162_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup162

if.end23:                                         ; preds = %if.end20
  %conv24 = zext i32 %31 to i64
  %shl = shl i64 %conv24, %sh_prom
  %conv27 = zext i32 %conv15 to i64
  %sub = sub i64 %shl, %conv27
  %32 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lcn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp28 = icmp eq i32 %33, -1
  br i1 %cmp28, label %if.then30, label %if.end23.if.end59_crit_edge

if.end23.if.end59_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then30:                                        ; preds = %if.end23
  br i1 %tobool.not, label %if.then32, label %do.end

if.then32:                                        ; preds = %if.then30
  %34 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bh.addr, align 4
  %b_size33 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %b_size33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %b_size33, align 8
  %conv34 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv34)
  %cmp35 = icmp ult i64 %sub, %conv34
  br i1 %cmp35, label %if.then37, label %if.then32.cleanup162_crit_edge

if.then32.cleanup162_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup162

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #17
  %conv38 = trunc i64 %sub to i32
  %38 = ptrtoint ptr %b_size33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv38, ptr %b_size33, align 8
  br label %cleanup162

do.end:                                           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 578, i32 noundef 9, ptr noundef null) #15
  br label %if.end59

if.end59:                                         ; preds = %do.end, %if.end23.if.end59_crit_edge
  %39 = ptrtoint ptr %new to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %new, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool60.not = icmp eq i8 %40, 0
  br i1 %tobool60.not, label %if.end59.if.end68_crit_edge, label %if.then61

if.end59.if.end68_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

if.then61:                                        ; preds = %if.end59
  %41 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bh.addr, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %45 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i250 = icmp eq i32 %45, 0
  br i1 %tobool.not.i250, label %if.then.i251, label %if.then61.set_buffer_new.exit_crit_edge

if.then61.set_buffer_new.exit_crit_edge:          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_buffer_new.exit

if.then.i251:                                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 5, ptr noundef %42) #15
  br label %set_buffer_new.exit

set_buffer_new.exit:                              ; preds = %if.then.i251, %if.then61.set_buffer_new.exit_crit_edge
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %shl63 = shl i32 %47, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %shl63, i32 %10)
  %cmp64 = icmp ugt i32 %shl63, %10
  br i1 %cmp64, label %if.then66, label %set_buffer_new.exit.if.end68_crit_edge

set_buffer_new.exit.if.end68_crit_edge:           ; preds = %set_buffer_new.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end68

if.then66:                                        ; preds = %set_buffer_new.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @ntfs_sparse_cluster(ptr noundef %inode, ptr noundef %6, i32 noundef %conv13, i32 noundef %47) #15
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %set_buffer_new.exit.if.end68_crit_edge, %if.end59.if.end68_crit_edge
  %48 = ptrtoint ptr %lcn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lcn, align 4
  %conv69 = zext i32 %49 to i64
  %shl72 = shl i64 %conv69, %sh_prom
  %add = add i64 %shl72, %conv27
  %50 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bh.addr, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %54 = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i252 = icmp eq i32 %54, 0
  br i1 %tobool.not.i252, label %if.then.i253, label %if.end68.set_buffer_mapped.exit_crit_edge

if.end68.set_buffer_mapped.exit_crit_edge:        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_buffer_mapped.exit

if.then.i253:                                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 4, ptr noundef %51) #15
  br label %set_buffer_mapped.exit

set_buffer_mapped.exit:                           ; preds = %if.then.i253, %if.end68.set_buffer_mapped.exit_crit_edge
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 26
  %55 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_bdev, align 4
  %57 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bh.addr, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %b_bdev, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 2
  %60 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom75 = zext i8 %61 to i64
  %shr76 = lshr i64 %add, %sh_prom75
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 3
  %62 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %shr76, ptr %b_blocknr, align 8
  %i_valid77 = getelementptr i8, ptr %inode, i32 -288
  %63 = ptrtoint ptr %i_valid77 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_valid77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ctx)
  %cmp78 = icmp eq i32 %ctx, 3
  br i1 %cmp78, label %if.then80, label %if.else

if.then80:                                        ; preds = %set_buffer_mapped.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %vbo)
  %cmp81.not = icmp ugt i64 %64, %vbo
  br i1 %cmp81.not, label %if.then80.if.end142_crit_edge, label %if.then83

if.then80.if.end142_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end142

if.then83:                                        ; preds = %if.then80
  %65 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %58, align 4
  %67 = and i32 %66, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i254 = icmp eq i32 %67, 0
  br i1 %tobool.not.i254, label %if.then.i255, label %if.then83.if.end142_crit_edge

if.then83.if.end142_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end142

if.then.i255:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 5, ptr noundef %58) #15
  br label %if.end142

if.else:                                          ; preds = %set_buffer_mapped.exit
  br i1 %tobool.not, label %if.else106, label %if.then86

if.then86:                                        ; preds = %if.else
  %b_size87 = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 4
  %68 = ptrtoint ptr %b_size87 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %b_size87, align 8
  %conv88 = zext i32 %69 to i64
  %70 = call i64 @llvm.umin.i64(i64 %sub, i64 %conv88)
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %vbo)
  %cmp95.not = icmp ugt i64 %64, %vbo
  br i1 %cmp95.not, label %if.then86.if.end98_crit_edge, label %if.then97

if.then86.if.end98_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98

if.then97:                                        ; preds = %if.then86
  %71 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %58, align 4
  %73 = and i32 %72, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i257 = icmp eq i32 %73, 0
  br i1 %tobool.not.i257, label %if.then.i258, label %if.then97.if.end98_crit_edge

if.then97.if.end98_crit_edge:                     ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98

if.then.i258:                                     ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #17
  call void @_set_bit(i32 noundef 5, ptr noundef %58) #15
  br label %if.end98

if.end98:                                         ; preds = %if.then.i258, %if.then97.if.end98_crit_edge, %if.then86.if.end98_crit_edge
  %add99 = add i64 %70, %vbo
  call void @__sanitizer_cov_trace_cmp8(i64 %add99, i64 %64)
  %cmp100 = icmp ugt i64 %add99, %64
  br i1 %cmp100, label %if.then102, label %if.end98.if.end142_crit_edge

if.end98.if.end142_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end142

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  %74 = ptrtoint ptr %i_valid77 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %add99, ptr %i_valid77, align 8
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #15
  br label %if.end142

if.else106:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %vbo)
  %cmp107.not = icmp ugt i64 %64, %vbo
  br i1 %cmp107.not, label %if.else110, label %if.then109

if.then109:                                       ; preds = %if.else106
  call void @__sanitizer_cov_trace_pc() #17
  call void @_clear_bit(i32 noundef 4, ptr noundef %58) #15
  br label %if.end142

if.else110:                                       ; preds = %if.else106
  %add111 = add i64 %sub, %vbo
  call void @__sanitizer_cov_trace_cmp8(i64 %add111, i64 %64)
  %cmp112.not = icmp ugt i64 %add111, %64
  br i1 %cmp112.not, label %if.else115, label %if.else110.if.end142_crit_edge

if.else110.if.end142_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end142

if.else115:                                       ; preds = %if.else110
  %conv116 = zext i32 %10 to i64
  %add117 = add i64 %conv116, %vbo
  call void @__sanitizer_cov_trace_cmp8(i64 %add117, i64 %64)
  %cmp118.not = icmp ule i64 %add117, %64
  %tobool124.not = icmp eq ptr %6, null
  %or.cond = select i1 %cmp118.not, i1 true, i1 %tobool124.not
  br i1 %or.cond, label %if.else115.if.end142_crit_edge, label %if.then125

if.else115.if.end142_crit_edge:                   ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end142

if.then125:                                       ; preds = %if.else115
  %b_size128 = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 4
  %75 = ptrtoint ptr %b_size128 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %10, ptr %b_size128, align 8
  %conv130 = and i32 %28, 4095
  call void @set_bh_page(ptr noundef %58, ptr noundef nonnull %6, i32 noundef %conv130) #15
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %bh.addr) #15
  %76 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bh.addr, align 4
  call fastcc void @wait_on_buffer(ptr noundef %77)
  %78 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bh.addr, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %79, align 4
  %and1.i.i260 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i260)
  %tobool132.not = icmp eq i32 %and1.i.i260, 0
  br i1 %tobool132.not, label %if.then125.cleanup162_crit_edge, label %cleanup.thread

if.then125.cleanup162_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup162

cleanup.thread:                                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #17
  %sub126 = sub i64 %64, %vbo
  %conv127 = trunc i64 %sub126 to i32
  %add135 = add i32 %conv130, %conv127
  %add136 = add i32 %10, %conv130
  call void @zero_user_segments(ptr noundef nonnull %6, i32 noundef %add135, i32 noundef %add136, i32 noundef 0, i32 noundef 0) #15
  br label %if.end142

if.end142:                                        ; preds = %cleanup.thread, %if.else115.if.end142_crit_edge, %if.else110.if.end142_crit_edge, %if.then109, %if.then102, %if.end98.if.end142_crit_edge, %if.then.i255, %if.then83.if.end142_crit_edge, %if.then80.if.end142_crit_edge
  %bytes.1 = phi i64 [ %sub, %if.then80.if.end142_crit_edge ], [ %70, %if.then102 ], [ %70, %if.end98.if.end142_crit_edge ], [ %sub, %if.then109 ], [ %sub, %if.else110.if.end142_crit_edge ], [ %conv116, %if.else115.if.end142_crit_edge ], [ %sub, %if.then83.if.end142_crit_edge ], [ %sub, %if.then.i255 ], [ %conv116, %cleanup.thread ]
  %82 = ptrtoint ptr %bh.addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %bh.addr, align 4
  %b_size143 = getelementptr inbounds %struct.buffer_head, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %b_size143 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %b_size143, align 8
  %conv144 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %bytes.1, i64 %conv144)
  %cmp145 = icmp ult i64 %bytes.1, %conv144
  br i1 %cmp145, label %if.then147, label %if.end142.if.end150_crit_edge

if.end142.if.end150_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end150

if.then147:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #17
  %conv148 = trunc i64 %bytes.1 to i32
  %86 = ptrtoint ptr %b_size143 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv148, ptr %b_size143, align 8
  br label %if.end150

if.end150:                                        ; preds = %if.then147, %if.end142.if.end150_crit_edge
  %87 = and i32 %ctx, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %88 = icmp eq i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741824, i64 %bytes.1)
  %cmp156 = icmp ugt i64 %bytes.1, 1073741824
  %or.cond249 = select i1 %88, i1 %cmp156, i1 false
  br i1 %or.cond249, label %if.then158, label %if.end150.cleanup162_crit_edge

if.end150.cleanup162_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup162

if.then158:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %b_size143 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1073741824, ptr %b_size143, align 8
  br label %cleanup162

cleanup162:                                       ; preds = %if.then158, %if.end150.cleanup162_crit_edge, %if.then125.cleanup162_crit_edge, %if.then37, %if.then32.cleanup162_crit_edge, %if.end20.cleanup162_crit_edge, %if.end12.cleanup162_crit_edge, %if.end11, %if.end.cleanup162_crit_edge, %land.lhs.true.cleanup162_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end11 ], [ 0, %land.lhs.true.cleanup162_crit_edge ], [ 0, %if.end.cleanup162_crit_edge ], [ 0, %if.end20.cleanup162_crit_edge ], [ 0, %if.then37 ], [ 0, %if.then32.cleanup162_crit_edge ], [ 0, %if.end150.cleanup162_crit_edge ], [ 0, %if.then158 ], [ %call17, %if.end12.cleanup162_crit_edge ], [ -5, %if.then125.cleanup162_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %new) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lcn) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_set_size(ptr noundef %inode, i64 noundef %new_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %std_fa.i = getelementptr i8, ptr %inode, i32 -172
  %4 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %std_fa.i, align 4
  %6 = and i32 %5, 655360
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %is_compressed.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

is_compressed.exit:                               ; preds = %entry
  %ni_flags.i = getelementptr i8, ptr %inode, i32 -4
  %8 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ni_flags.i, align 4
  %and1.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %if.else, label %is_compressed.exit.if.then_crit_edge

is_compressed.exit.if.then_crit_edge:             ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %is_compressed.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %maxbytes_sparse = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %maxbytes_sparse to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %maxbytes_sparse, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %new_size)
  %cmp = icmp ult i64 %11, %new_size
  br i1 %cmp, label %if.then.out_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.else:                                          ; preds = %is_compressed.exit
  %maxbytes = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %maxbytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %maxbytes, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %new_size)
  %cmp4 = icmp ult i64 %13, %new_size
  br i1 %cmp4, label %if.else.out_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %ni_lock.i = getelementptr i8, ptr %inode, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #15
  %14 = getelementptr i8, ptr %inode, i32 -156
  tail call void @down_write(ptr noundef %14) #15
  %run = getelementptr i8, ptr %inode, i32 -60
  %i_valid = getelementptr i8, ptr %inode, i32 -288
  %call8 = tail call i32 @attr_set_size(ptr noundef %add.ptr.i, i32 noundef -2147483648, ptr noundef null, i8 noundef zeroext 0, ptr noundef %run, i64 noundef %new_size, ptr noundef %i_valid, i1 noundef zeroext true, ptr noundef null) #15
  tail call void @up_write(ptr noundef %14) #15
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #15
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #15
  br label %out

out:                                              ; preds = %if.end7, %if.else.out_crit_edge, %if.then.out_crit_edge
  %err.0 = phi i32 [ %call8, %if.end7 ], [ -27, %if.then.out_crit_edge ], [ -27, %if.else.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_set_size(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reset_log_file(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %conv1 = and i64 %1, 4294967295
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %4 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !58
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %conv1)
  %cmp50 = icmp ult i64 %conv1, 4096
  %extract.t51 = trunc i64 %1 to i32
  %cond.off052 = select i1 %cmp50, i32 %extract.t51, i32 4096
  %call53 = call i32 @block_write_begin(ptr noundef %3, i64 noundef 0, i32 noundef %cond.off052, i32 noundef 0, ptr noundef nonnull %page, ptr noundef nonnull @ntfs_get_block_write_begin) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool.not54 = icmp eq i32 %call53, 0
  br i1 %tobool.not54, label %entry.if.end_crit_edge, label %entry.cleanup23_crit_edge

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %entry.if.end_crit_edge
  %cond.off056 = phi i32 [ %cond.off0, %cleanup.if.end_crit_edge ], [ %cond.off052, %entry.if.end_crit_edge ]
  %pos.055 = phi i64 [ %add15, %cleanup.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %page, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %7 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %7, 512
  %8 = call i32 @llvm.read_register.i32(metadata !47) #15
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !62
  %12 = call i32 @llvm.read_register.i32(metadata !47) #15
  %and.i.i.i1.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 213
  %16 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !63
  %call.i.i = call ptr @__kmap_local_page_prot(ptr noundef %6, i32 noundef %or.i) #15
  %18 = call ptr @memset(ptr %call.i.i, i32 255, i32 %cond.off056)
  call void @kunmap_local_indexed(ptr noundef %call.i.i) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !64
  %19 = call i32 @llvm.read_register.i32(metadata !47) #15
  %and.i.i.i1.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 213
  %23 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %24, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !65
  %25 = call i32 @llvm.read_register.i32(metadata !47) #15
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %29 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page, align 4
  call void @flush_dcache_page(ptr noundef %30) #15
  %31 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %page, align 4
  %call9 = call i32 @block_write_end(ptr noundef null, ptr noundef %3, i64 noundef %pos.055, i32 noundef %cond.off056, i32 noundef %cond.off056, ptr noundef %32, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end.cleanup23_crit_edge, label %if.end13

if.end.cleanup23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

if.end13:                                         ; preds = %if.end
  %conv14 = zext i32 %cond.off056 to i64
  %add15 = add i64 %pos.055, %conv14
  call void @__sanitizer_cov_trace_cmp8(i64 %add15, i64 %conv1)
  %cmp17.not = icmp slt i64 %add15, %conv1
  br i1 %cmp17.not, label %cleanup, label %if.end13.cleanup23_crit_edge

if.end13.cleanup23_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

cleanup:                                          ; preds = %if.end13
  call void @balance_dirty_pages_ratelimited(ptr noundef %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #15
  %33 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !58
  %add = add i64 %add15, 4096
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv1)
  %cmp = icmp sgt i64 %add, %conv1
  %sub = sub i64 %1, %add15
  %extract.t = trunc i64 %sub to i32
  %cond.off0 = select i1 %cmp, i32 %extract.t, i32 4096
  %call = call i32 @block_write_begin(ptr noundef %3, i64 noundef %add15, i32 noundef %cond.off0, i32 noundef 0, ptr noundef nonnull %page, ptr noundef nonnull @ntfs_get_block_write_begin) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cleanup.if.end_crit_edge, label %cleanup.cleanup23_crit_edge

cleanup.cleanup23_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup23

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

cleanup23:                                        ; preds = %cleanup.cleanup23_crit_edge, %if.end13.cleanup23_crit_edge, %if.end.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %err.0.ph = phi i32 [ %call53, %entry.cleanup23_crit_edge ], [ %call9, %if.end13.cleanup23_crit_edge ], [ %call9, %if.end.cleanup23_crit_edge ], [ %call, %cleanup.cleanup23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #15
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #15
  ret i32 %err.0.ph
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_begin(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_get_block_write_begin(ptr noundef %inode, i64 noundef %vbn, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %vbn, %sh_prom
  %call = tail call fastcc i32 @ntfs_get_block_vbo(ptr noundef %inode, i64 noundef %shl, ptr noundef %bh_result, i32 noundef %create, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs3_write_inode(ptr noundef %inode, ptr nocapture noundef readonly %wbc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %0 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %conv = zext i1 %cmp to i32
  %call = tail call i32 @ni_write_inode(ptr noundef %inode, i32 noundef %conv, ptr noundef nonnull @__func__.ntfs3_write_inode) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_write_inode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_sync_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ni_write_inode(ptr noundef %inode, i32 noundef 1, ptr noundef nonnull @__func__.ntfs_sync_inode) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_flush_inodes(ptr nocapture noundef readonly %sb, ptr noundef %i1, ptr noundef %i2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %i1, null
  br i1 %tobool.not, label %entry.land.lhs.true_crit_edge, label %if.then

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @sync_inode_metadata(ptr noundef nonnull %i1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end:                                           ; preds = %if.then
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %i1, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping.i, align 8
  %call1.i = tail call i32 @filemap_fdatawrite(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool1.not = icmp eq i32 %call1.i, 0
  br i1 %tobool1.not, label %if.end.land.lhs.true_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %tobool2.not = icmp eq ptr %i2, null
  br i1 %tobool2.not, label %land.lhs.true.if.then7_crit_edge, label %if.then3

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

if.then3:                                         ; preds = %land.lhs.true
  %call.i14 = tail call i32 @sync_inode_metadata(ptr noundef nonnull %i2, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i15 = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i15, label %if.end5, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end5:                                          ; preds = %if.then3
  %i_mapping.i16 = getelementptr inbounds %struct.inode, ptr %i2, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping.i16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping.i16, align 8
  %call1.i17 = tail call i32 @filemap_fdatawrite(ptr noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool6.not = icmp eq i32 %call1.i17, 0
  br i1 %tobool6.not, label %if.end5.if.then7_crit_edge, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %land.lhs.true.if.then7_crit_edge
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 26
  %4 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_bdev, align 4
  %call8 = tail call i32 @sync_blockdev_nowait(ptr noundef %5) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge, %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %ret.2 = phi i32 [ %call1.i17, %if.end5.if.end9_crit_edge ], [ %call8, %if.then7 ], [ %call.i14, %if.then3.if.end9_crit_edge ], [ %call1.i, %if.end.if.end9_crit_edge ], [ %call.i, %if.then.if.end9_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev_nowait(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inode_write_data(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %data, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool.not107 = icmp eq i32 %bytes, 0
  br i1 %tobool.not107, label %entry.cleanup29_crit_edge, label %for.body.lr.ph

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup29

for.body.lr.ph:                                   ; preds = %entry
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %bytes.addr.0109 = phi i32 [ %bytes, %for.body.lr.ph ], [ %sub, %for.inc.for.body_crit_edge ]
  %data.addr.0108 = phi ptr [ %data, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %0 = tail call i32 @llvm.umin.i32(i32 %bytes.addr.0109, i32 4096)
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %call.i.i = tail call ptr @read_cache_page(ptr noundef %2, i32 noundef %idx.0110, ptr noundef null, ptr noundef null) #15
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.cleanup.thread_crit_edge, label %if.then.i47

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

if.then.i47:                                      ; preds = %for.body
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 44) #15
  %3 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i.i, align 4
  %shr.i.i12.i = lshr i32 %4, 30
  %5 = zext i32 %shr.i.i12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %shr.i.i12.i, label %if.then.i47.if.then.i13.i_crit_edge [
    i32 2, label %if.then.i47.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then.i47.if.else.i.i_crit_edge:                ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

if.then.i47.if.then.i13.i_crit_edge:              ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i13.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then.i47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %6 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp2.i.not.i.i = icmp eq i32 %6, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i13.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i13.i_crit_edge:  ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i13.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

if.then.i13.i:                                    ; preds = %is_highmem_idx.exit.i.i.if.then.i13.i_crit_edge, %if.then.i47.if.then.i13.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %call.i.i) #15
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then.i47.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %call.i.i) #15
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i13.i
  %7 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i48 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i48, label %if.end.i.i.i, label %if.then.i.i.i49, !prof !66

if.then.i.i.i49:                                  ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i.i = add i32 %9, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i49
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i49 ], [ %10, %if.end.i.i.i ]
  %11 = inttoptr i32 %retval.0.i.i.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i.i = icmp eq i32 %13, -1
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %7, align 4
  %and.i16.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i50, label %do.end10.i.i, !prof !57

if.then.i.i50:                                    ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !66

if.then.i19.i.i:                                  ; preds = %if.then.i.i50
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i18.i.i = add i32 %15, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i.i50
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %16, %if.end.i20.i.i ]
  %17 = inttoptr i32 %retval.0.i21.i.i to ptr
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.8) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #15, !srcloc !67
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !66

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i25.i.i = add i32 %15, -1
  br label %PageError.exit.i

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %call.i.i to i32
  br label %PageError.exit.i

PageError.exit.i:                                 ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %18, %if.end.i27.i.i ]
  %19 = inttoptr i32 %retval.0.i28.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i51 = icmp eq i32 %22, 0
  br i1 %tobool.not.i51, label %if.end, label %ntfs_map_page.exit.thread

ntfs_map_page.exit.thread:                        ; preds = %PageError.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i.i) #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %ntfs_map_page.exit.thread, %for.body.cleanup.thread_crit_edge
  %retval.0.i77 = phi ptr [ inttoptr (i32 -5 to ptr), %ntfs_map_page.exit.thread ], [ %call.i.i, %for.body.cleanup.thread_crit_edge ]
  %23 = ptrtoint ptr %retval.0.i77 to i32
  br label %cleanup29

if.end:                                           ; preds = %PageError.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 788) #15
  %24 = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i52 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %and.i.i52, 0
  br i1 %tobool.not.i.i53, label %if.end.i.i56, label %if.then.i.i55, !prof !66

if.then.i.i55:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i54 = add i32 %26, -1
  br label %_compound_head.exit.i60

if.end.i.i56:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i60

_compound_head.exit.i60:                          ; preds = %if.end.i.i56, %if.then.i.i55
  %retval.0.i.i57 = phi i32 [ %sub.i.i54, %if.then.i.i55 ], [ %27, %if.end.i.i56 ]
  %28 = inttoptr i32 %retval.0.i.i57 to ptr
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i.i.i58 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i58)
  %tobool.not.i.i.i59 = icmp eq i32 %and.i.i.i.i58, 0
  br i1 %tobool.not.i.i.i59, label %folio_flags.exit.i.i, label %if.then.i.i.i61, !prof !66

if.then.i.i.i61:                                  ; preds = %_compound_head.exit.i60
  call void @__sanitizer_cov_trace_pc() #17
  %32 = inttoptr i32 %retval.0.i.i57 to ptr
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.10) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !68
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i60
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %28, i32 noundef 4) #15
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %28, align 4
  %and.i.i4.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i62_crit_edge

folio_flags.exit.i.i.if.then.i62_crit_edge:       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i62

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %28, i32 1, i32 3, i32 1) #15
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #15, !srcloc !69
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !70
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i62_crit_edge

folio_trylock.exit.i.if.then.i62_crit_edge:       ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i62

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lock_page.exit

if.then.i62:                                      ; preds = %folio_trylock.exit.i.if.then.i62_crit_edge, %folio_flags.exit.i.i.if.then.i62_crit_edge
  tail call void @__folio_lock(ptr noundef %28) #15
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i62, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %24, align 4
  %and.i.i64 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64)
  %tobool.not.i.i65 = icmp eq i32 %and.i.i64, 0
  br i1 %tobool.not.i.i65, label %if.end.i.i68, label %if.then.i.i67, !prof !66

if.then.i.i67:                                    ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i66 = add i32 %37, -1
  br label %_compound_head.exit.i72

if.end.i.i68:                                     ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i72

_compound_head.exit.i72:                          ; preds = %if.end.i.i68, %if.then.i.i67
  %retval.0.i.i69 = phi i32 [ %sub.i.i66, %if.then.i.i67 ], [ %38, %if.end.i.i68 ]
  %39 = inttoptr i32 %retval.0.i.i69 to ptr
  %40 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  %and.i.i.i.i70 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i70)
  %tobool.not.i.i.i71 = icmp eq i32 %and.i.i.i.i70, 0
  br i1 %tobool.not.i.i.i71, label %folio_flags.exit.i.i74, label %if.then.i.i.i73, !prof !66

if.then.i.i.i73:                                  ; preds = %_compound_head.exit.i72
  call void @__sanitizer_cov_trace_pc() #17
  %43 = inttoptr i32 %retval.0.i.i69 to ptr
  tail call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.10) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !68
  unreachable

folio_flags.exit.i.i74:                           ; preds = %_compound_head.exit.i72
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %39, align 4
  %46 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i = icmp eq i32 %46, 0
  br i1 %tobool.i.not.i, label %do.end, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i74
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !71
  br label %if.end20

do.end:                                           ; preds = %folio_flags.exit.i.i74
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1066, i32 noundef 9, ptr noundef null) #15
  br label %if.end20

if.end20:                                         ; preds = %do.end, %PageUptodate.exit
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %24, align 4
  %and.i.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !66

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.12) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #15, !srcloc !72
  unreachable

do.body7.i:                                       ; preds = %if.end20
  %49 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %24, align 4
  %and.i31.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %50, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %51, %if.end.i.i ]
  %52 = inttoptr i32 %retval.0.i.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp.i.not.i = icmp eq i32 %54, -1
  %55 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %24, align 4
  %and.i32.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !57

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !66

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i34.i = add i32 %56, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #17
  %57 = ptrtoint ptr %call.i.i to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %57, %if.end.i36.i ]
  %58 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %58, ptr noundef nonnull @.str.8) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #15, !srcloc !73
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !66

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i41.i = add i32 %56, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %call.i.i to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %59, %if.end.i43.i ]
  %60 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %60) #15
  %call27 = tail call ptr @page_address(ptr noundef %call.i.i) #15
  %61 = call ptr @memcpy(ptr %call27, ptr %data.addr.0108, i32 %0)
  tail call void @flush_dcache_page(ptr noundef %call.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !74
  %62 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %24, align 4
  %and.i.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.inc, label %if.then.i.i.i, !prof !66

if.then.i.i.i:                                    ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %call.i.i, ptr noundef nonnull @.str.10) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !68
  unreachable

for.inc:                                          ; preds = %ClearPageUptodate.exit
  tail call void @_set_bit(i32 noundef 2, ptr noundef %call.i.i) #15
  tail call void @unlock_page(ptr noundef %call.i.i) #15
  tail call fastcc void @ntfs_unmap_page(ptr noundef %call.i.i)
  %sub = sub i32 %bytes.addr.0109, %0
  %add.ptr = getelementptr i8, ptr %data.addr.0108, i32 4096
  %inc = add i32 %idx.0110, 1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %for.inc.cleanup29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup29

cleanup29:                                        ; preds = %for.inc.cleanup29_crit_edge, %cleanup.thread, %entry.cleanup29_crit_edge
  %retval.2 = phi i32 [ %23, %cleanup.thread ], [ 0, %entry.cleanup29_crit_edge ], [ 0, %for.inc.cleanup29_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_unmap_page(ptr noundef %page) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 55) #15
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %shr.i.i, label %entry.kunmap.exit_crit_edge [
    i32 2, label %entry.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

entry.kunmap.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.end.i_crit_edge, label %is_highmem_idx.exit.i.kunmap.exit_crit_edge

is_highmem_idx.exit.i.kunmap.exit_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit

is_highmem_idx.exit.i.if.end.i_crit_edge:         ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #15
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i.kunmap.exit_crit_edge, %entry.kunmap.exit_crit_edge
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.13) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_unmap_page, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %8) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ntfs_create_inode(ptr noundef %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %uni, i16 noundef zeroext %mode, i32 noundef %dev, ptr noundef %symname, i32 noundef %size, ptr noundef %fnd) local_unnamed_addr #0 align 64 {
entry:
  %ino = alloca i32, align 4
  %security_id = alloca i32, align 4
  %vcn = alloca i32, align 4
  %nsize = alloca i16, align 2
  %tmp = alloca %struct.timespec64, align 8
  %alen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ino) #15
  %4 = ptrtoint ptr %ino to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ino, align 4
  %add.ptr.i = getelementptr i8, ptr %dir, i32 -360
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %security_id) #15
  %5 = ptrtoint ptr %security_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %security_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vcn) #15
  %6 = ptrtoint ptr %vcn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %vcn, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %nsize) #15
  %7 = ptrtoint ptr %nsize to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %nsize, align 2
  %ni_lock.i = getelementptr i8, ptr %dir, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 5) #15
  %8 = getelementptr i8, ptr %dir, i32 -156
  %call1 = tail call ptr @indx_get_root(ptr noundef %8, ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.then395_crit_edge, label %if.end

entry.if.then395_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then395

if.end:                                           ; preds = %entry
  %and = and i16 %mode, -4096
  %9 = zext i16 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %and, label %if.else31 [
    i16 16384, label %if.then3
    i16 -24576, label %if.end.if.end34_crit_edge
    i16 -32768, label %if.then20
  ]

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %std_fa = getelementptr i8, ptr %dir, i32 -172
  %10 = ptrtoint ptr %std_fa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %std_fa, align 4
  %or4 = or i32 %11, 536870928
  %i_ino = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp5 = icmp eq i32 %13, 5
  %and8 = and i32 %or4, -100663297
  %spec.select = select i1 %cmp5, i32 %and8, i32 %or4
  br label %if.end34

if.then20:                                        ; preds = %if.end
  %options = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 34
  %14 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %options, align 4
  %sparse = getelementptr inbounds %struct.ntfs_mount_options, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %sparse to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %sparse, align 4
  %17 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool21.not = icmp eq i16 %17, 0
  br i1 %tobool21.not, label %if.else23, label %if.then20.if.end34_crit_edge

if.then20.if.end34_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.else23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #17
  %std_fa24 = getelementptr i8, ptr %dir, i32 -172
  %18 = ptrtoint ptr %std_fa24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %std_fa24, align 4
  %and25 = and i32 %19, 524288
  %20 = or i32 %and25, 536870912
  br label %if.end34

if.else31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.else23, %if.then20.if.end34_crit_edge, %if.then3, %if.end.if.end34_crit_edge
  %fa.0 = phi i32 [ 536870912, %if.else31 ], [ %spec.select, %if.then3 ], [ 262144, %if.end.if.end34_crit_edge ], [ 537001984, %if.then20.if.end34_crit_edge ], [ %20, %if.else23 ]
  %21 = and i16 %mode, 146
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool37.not = icmp eq i16 %21, 0
  %or39 = or i32 %fa.0, 16777216
  %spec.select708 = select i1 %tobool37.not, i32 %or39, i32 %fa.0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %22 = load ptr, ptr @names_cachep, align 4
  %call41 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %22, i32 noundef 3264) #15
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end34.if.then395_crit_edge, label %if.end44

if.end34.if.then395_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then395

if.end44:                                         ; preds = %if.end34
  %call45 = tail call i32 @ntfs_set_state(ptr noundef %3, i32 noundef 1) #15
  %call46 = call i32 @ntfs_look_free_mft(ptr noundef %3, ptr noundef nonnull %ino, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.out1_crit_edge

if.end44.out1_crit_edge:                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %out1

if.end49:                                         ; preds = %if.end44
  %23 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ino, align 4
  %and50 = and i32 %spec.select708, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51 = icmp ne i32 %and50, 0
  %call52 = call ptr @ntfs_new_inode(ptr noundef %3, i32 noundef %24, i1 noundef zeroext %tobool51) #15
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %call52 to i32
  br label %out3

if.end56:                                         ; preds = %if.end49
  %vfs_inode = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11
  call void @inode_init_owner(ptr noundef %mnt_userns, ptr noundef %vfs_inode, ptr noundef %dir, i16 noundef zeroext %mode) #15
  %26 = ptrtoint ptr %vfs_inode to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vfs_inode, align 8
  %i_atime = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 15
  %i_mtime = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 16
  %i_ctime = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 17
  %i_crtime = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %vfs_inode) #15
  %28 = call ptr @memcpy(ptr %i_crtime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %29 = call ptr @memcpy(ptr %i_ctime, ptr %i_crtime, i32 16)
  %30 = call ptr @memcpy(ptr %i_mtime, ptr %i_crtime, i32 16)
  %31 = call ptr @memcpy(ptr %i_atime, ptr %i_crtime, i32 16)
  %mrec = getelementptr inbounds %struct.mft_inode, ptr %call52, i32 0, i32 2
  %32 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mrec, align 8
  %hard_links = getelementptr inbounds %struct.MFT_REC, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %hard_links to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 256, ptr %hard_links, align 2
  %attr_off = getelementptr inbounds %struct.MFT_REC, ptr %33, i32 0, i32 3
  %35 = ptrtoint ptr %attr_off to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %attr_off, align 4
  %37 = call i16 @llvm.bswap.i16(i16 %36)
  %conv57 = zext i16 %37 to i32
  %add.ptr = getelementptr i8, ptr %33, i32 %conv57
  %major_ver.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 29, i32 5
  %38 = ptrtoint ptr %major_ver.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %major_ver.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp.i709 = icmp ugt i8 %39, 2
  br i1 %cmp.i709, label %if.then59, label %if.end56.if.end72thread-pre-split_crit_edge

if.end56.if.end72thread-pre-split_crit_edge:      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72thread-pre-split

if.then59:                                        ; preds = %if.end56
  %std_security_id = getelementptr i8, ptr %dir, i32 -168
  %40 = ptrtoint ptr %std_security_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %std_security_id, align 8
  %42 = ptrtoint ptr %security_id to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %security_id, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %43)
  %cmp60 = icmp ult i32 %43, 256
  br i1 %cmp60, label %if.then62, label %if.then59.if.end72_crit_edge

if.then59.if.end72_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

if.then62:                                        ; preds = %if.then59
  %def_security_id = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 30, i32 5
  %44 = ptrtoint ptr %def_security_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %def_security_id, align 8
  %46 = ptrtoint ptr %security_id to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %security_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp63 = icmp eq i32 %45, 0
  br i1 %cmp63, label %land.lhs.true, label %if.end72.thread

if.end72.thread:                                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr73725 = getelementptr i8, ptr %add.ptr, i32 24
  br label %if.else77

land.lhs.true:                                    ; preds = %if.then62
  %call65 = call i32 @ntfs_insert_security(ptr noundef %3, ptr noundef nonnull @s_default_security, i32 noundef 80, ptr noundef nonnull %security_id, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then67, label %land.lhs.true.if.end72thread-pre-split_crit_edge

land.lhs.true.if.end72thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72thread-pre-split

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %47 = ptrtoint ptr %security_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %security_id, align 4
  %49 = ptrtoint ptr %def_security_id to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %def_security_id, align 8
  br label %if.end72

if.end72thread-pre-split:                         ; preds = %land.lhs.true.if.end72thread-pre-split_crit_edge, %if.end56.if.end72thread-pre-split_crit_edge
  %50 = ptrtoint ptr %security_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr = load i32, ptr %security_id, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.end72thread-pre-split, %if.then67, %if.then59.if.end72_crit_edge
  %51 = phi i32 [ %.pr, %if.end72thread-pre-split ], [ %41, %if.then59.if.end72_crit_edge ], [ %48, %if.then67 ]
  %add.ptr73 = getelementptr i8, ptr %add.ptr, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp74 = icmp eq i32 %51, 0
  br i1 %cmp74, label %if.end72.if.end80_crit_edge, label %if.end72.if.else77_crit_edge

if.end72.if.else77_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else77

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.else77:                                        ; preds = %if.end72.if.else77_crit_edge, %if.end72.thread
  %add.ptr73727 = phi ptr [ %add.ptr73725, %if.end72.thread ], [ %add.ptr73, %if.end72.if.else77_crit_edge ]
  %52 = phi i32 [ %45, %if.end72.thread ], [ %51, %if.end72.if.else77_crit_edge ]
  %53 = getelementptr i8, ptr %add.ptr, i32 24
  %security_id78 = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %security_id78 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %security_id78, align 4
  %55 = ptrtoint ptr %security_id to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %security_id, align 4
  %std_security_id79 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 5
  %57 = ptrtoint ptr %std_security_id79 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %std_security_id79, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.else77, %if.end72.if.end80_crit_edge
  %add.ptr73728 = phi ptr [ %add.ptr73727, %if.else77 ], [ %add.ptr73, %if.end72.if.end80_crit_edge ]
  %dsize.0 = phi i32 [ 72, %if.else77 ], [ 48, %if.end72.if.end80_crit_edge ]
  %add = add nuw nsw i32 %dsize.0, 24
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 268435456, ptr %add.ptr, align 8
  %59 = shl nuw nsw i32 %add, 24
  %size81 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr, i32 0, i32 1
  %60 = ptrtoint ptr %size81 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %size81, align 4
  %id = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr, i32 0, i32 6
  %61 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %id, align 2
  %62 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr, i32 0, i32 7
  %data_off = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %data_off to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 6144, ptr %data_off, align 4
  %64 = shl nuw nsw i32 %dsize.0, 24
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %62, align 8
  %66 = ptrtoint ptr %i_atime to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %i_atime, align 8
  %68 = mul i64 %67, 10000000
  %mul.i = add i64 %68, 116444736000000000
  %tv_nsec.i = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 15, i32 1
  %69 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %70, 100
  %conv.i = sext i32 %div.i to i64
  %add1.i = add i64 %mul.i, %conv.i
  %71 = call i64 @llvm.bswap.i64(i64 %add1.i) #15
  %a_time = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %add.ptr73728, i32 0, i32 3
  %72 = ptrtoint ptr %a_time to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %a_time, align 8
  %c_time = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %add.ptr73728, i32 0, i32 2
  %73 = ptrtoint ptr %c_time to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %71, ptr %c_time, align 8
  %m_time = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %add.ptr73728, i32 0, i32 1
  %74 = ptrtoint ptr %m_time to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %71, ptr %m_time, align 8
  %75 = ptrtoint ptr %add.ptr73728 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %71, ptr %add.ptr73728, align 8
  %std_fa84 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 4
  %76 = ptrtoint ptr %std_fa84 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %spec.select708, ptr %std_fa84, align 4
  %fa85 = getelementptr inbounds %struct.ATTR_STD_INFO5, ptr %add.ptr73728, i32 0, i32 4
  %77 = ptrtoint ptr %fa85 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %spec.select708, ptr %fa85, align 8
  %call87 = call i32 @fill_name_de(ptr noundef %3, ptr noundef nonnull %call41, ptr noundef %d_name, ptr noundef %uni) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end80.out4_crit_edge

if.end80.out4_crit_edge:                          ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %out4

if.end90:                                         ; preds = %if.end80
  %add.ptr86 = getelementptr i8, ptr %add.ptr, i32 %add
  %rno.i = getelementptr inbounds %struct.mft_inode, ptr %call52, i32 0, i32 4
  %78 = ptrtoint ptr %rno.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rno.i, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #15
  %81 = ptrtoint ptr %call41 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %call41, align 8
  %high.i = getelementptr inbounds %struct.MFT_REF, ptr %call41, i32 0, i32 1
  %82 = ptrtoint ptr %high.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %high.i, align 4
  %83 = ptrtoint ptr %mrec to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mrec, align 4
  %seq.i = getelementptr inbounds %struct.MFT_REC, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %seq.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %seq.i, align 8
  %seq1.i = getelementptr inbounds %struct.MFT_REF, ptr %call41, i32 0, i32 2
  %87 = ptrtoint ptr %seq1.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %seq1.i, align 2
  %add.ptr92 = getelementptr %struct.NTFS_DE, ptr %call41, i32 1
  %rno.i710 = getelementptr i8, ptr %dir, i32 -296
  %88 = ptrtoint ptr %rno.i710 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rno.i710, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #15
  %91 = ptrtoint ptr %add.ptr92 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %add.ptr92, align 8
  %high.i711 = getelementptr %struct.NTFS_DE, ptr %call41, i32 1, i32 0, i32 0, i32 1
  %92 = ptrtoint ptr %high.i711 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %high.i711, align 4
  %mrec.i712 = getelementptr i8, ptr %dir, i32 -344
  %93 = ptrtoint ptr %mrec.i712 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mrec.i712, align 4
  %seq.i713 = getelementptr inbounds %struct.MFT_REC, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %seq.i713 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %seq.i713, align 8
  %seq1.i714 = getelementptr %struct.NTFS_DE, ptr %call41, i32 1, i32 0, i32 0, i32 2
  %97 = ptrtoint ptr %seq1.i714 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %seq1.i714, align 2
  %98 = ptrtoint ptr %add.ptr73728 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %add.ptr73728, align 8
  %dup = getelementptr %struct.NTFS_DE, ptr %call41, i32 1, i32 1
  %a_time95 = getelementptr %struct.NTFS_DE, ptr %call41, i32 3
  %100 = ptrtoint ptr %a_time95 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %99, ptr %a_time95, align 8
  %c_time97 = getelementptr %struct.NTFS_DE, ptr %call41, i32 2, i32 1
  %101 = ptrtoint ptr %c_time97 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %99, ptr %c_time97, align 8
  %m_time99 = getelementptr %struct.NTFS_DE, ptr %call41, i32 2
  %102 = ptrtoint ptr %m_time99 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %99, ptr %m_time99, align 8
  %103 = ptrtoint ptr %dup to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %99, ptr %dup, align 8
  %alloc_size = getelementptr %struct.NTFS_DE, ptr %call41, i32 3, i32 1
  %104 = call ptr @memset(ptr %alloc_size, i32 0, i32 16)
  %105 = ptrtoint ptr %fa85 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %fa85, align 8
  %fa107 = getelementptr %struct.NTFS_DE, ptr %call41, i32 4, i32 1
  %107 = ptrtoint ptr %fa107 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %fa107, align 8
  %reparse = getelementptr %struct.NTFS_DE, ptr %call41, i32 4, i32 4
  %108 = ptrtoint ptr %reparse to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %reparse, align 2
  %ea_size = getelementptr %struct.NTFS_DE, ptr %call41, i32 4, i32 3
  %109 = ptrtoint ptr %ea_size to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %ea_size, align 4
  %key_size = getelementptr inbounds %struct.NTFS_DE, ptr %call41, i32 0, i32 2
  %110 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %key_size, align 2
  %112 = call i16 @llvm.bswap.i16(i16 %111)
  %conv110 = zext i16 %112 to i32
  %add112 = add nuw nsw i32 %conv110, 31
  %and113 = and i32 %add112, 131064
  %113 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 805306368, ptr %add.ptr86, align 8
  %114 = call i32 @llvm.bswap.i32(i32 %and113)
  %size115 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr86, i32 0, i32 1
  %115 = ptrtoint ptr %size115 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %size115, align 4
  %116 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr86, i32 0, i32 7
  %data_off116 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %data_off116 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 6144, ptr %data_off116, align 4
  %flags = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %116, i32 0, i32 2
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %flags, align 2
  %id118 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr86, i32 0, i32 6
  %119 = ptrtoint ptr %id118 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 256, ptr %id118, align 2
  %120 = call i32 @llvm.bswap.i32(i32 %conv110)
  %121 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %116, align 8
  %add.ptr120 = getelementptr i8, ptr %add.ptr86, i32 24
  %122 = call ptr @memcpy(ptr %add.ptr120, ptr %add.ptr92, i32 %conv110)
  %add.ptr121 = getelementptr i8, ptr %add.ptr86, i32 %and113
  %123 = ptrtoint ptr %security_id to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %security_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp122 = icmp eq i32 %124, 0
  br i1 %cmp122, label %if.then124, label %if.end90.if.end136_crit_edge

if.end90.if.end136_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136

if.then124:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  %125 = ptrtoint ptr %add.ptr121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1342177280, ptr %add.ptr121, align 8
  %size129 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr121, i32 0, i32 1
  %126 = ptrtoint ptr %size129 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1744830464, ptr %size129, align 4
  %id131 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr121, i32 0, i32 6
  %127 = ptrtoint ptr %id131 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 512, ptr %id131, align 2
  %128 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr121, i32 0, i32 7
  %data_off132 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %data_off132 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 6144, ptr %data_off132, align 4
  %130 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1342177280, ptr %128, align 8
  %add.ptr134 = getelementptr i8, ptr %add.ptr121, i32 24
  %131 = call ptr @memcpy(ptr %add.ptr134, ptr @s_default_security, i32 80)
  %add.ptr135 = getelementptr i8, ptr %add.ptr121, i32 104
  br label %if.end136

if.end136:                                        ; preds = %if.then124, %if.end90.if.end136_crit_edge
  %attr.0 = phi ptr [ %add.ptr135, %if.then124 ], [ %add.ptr121, %if.end90.if.end136_crit_edge ]
  %aid.0 = phi i16 [ 3, %if.then124 ], [ 2, %if.end90.if.end136_crit_edge ]
  %inc137 = add nuw nsw i16 %aid.0, 1
  %132 = shl nuw nsw i16 %aid.0, 8
  %id138 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 6
  %133 = ptrtoint ptr %id138 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %132, ptr %id138, align 2
  br i1 %tobool51, label %if.then141, label %if.else156

if.then141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #17
  %134 = ptrtoint ptr %attr.0 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 -1879048192, ptr %attr.0, align 8
  %size144 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 1
  %135 = ptrtoint ptr %size144 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1342177280, ptr %size144, align 4
  %name_len = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 3
  %136 = ptrtoint ptr %name_len to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 4, ptr %name_len, align 1
  %name_off = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 4
  %137 = ptrtoint ptr %name_off to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 6144, ptr %name_off, align 2
  %138 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 7
  %data_off145 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %data_off145 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 8192, ptr %data_off145, align 4
  %140 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 805306368, ptr %138, align 8
  %add.ptr147 = getelementptr i8, ptr %attr.0, i32 24
  call void @__asan_loadN_noabort(i32 ptrtoint (ptr @I30_NAME to i32), i32 8)
  %141 = load i64, ptr @I30_NAME, align 2
  %142 = ptrtoint ptr %add.ptr147 to i32
  call void @__asan_storeN_noabort(i32 %142, i32 8)
  store i64 %141, ptr %add.ptr147, align 1
  %add.ptr148 = getelementptr i8, ptr %attr.0, i32 32
  %143 = call ptr @memcpy(ptr %add.ptr148, ptr %call1, i32 16)
  %ihdr = getelementptr i8, ptr %attr.0, i32 48
  %144 = ptrtoint ptr %ihdr to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 268435456, ptr %ihdr, align 4
  %used = getelementptr i8, ptr %attr.0, i32 52
  %145 = ptrtoint ptr %used to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 536870912, ptr %used, align 4
  %total = getelementptr i8, ptr %attr.0, i32 56
  %146 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 536870912, ptr %total, align 4
  %size154 = getelementptr i8, ptr %attr.0, i32 72
  %147 = ptrtoint ptr %size154 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 4096, ptr %size154, align 4
  %flags155 = getelementptr i8, ptr %attr.0, i32 76
  %148 = ptrtoint ptr %flags155 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 512, ptr %flags155, align 4
  %.pre = and i16 %27, -4096
  br label %if.end211

if.else156:                                       ; preds = %if.end136
  %149 = and i16 %27, -4096
  %150 = zext i16 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %149, label %if.else192 [
    i16 -24576, label %if.else223.thread
    i16 -32768, label %if.then171
  ]

if.else223.thread:                                ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #17
  %151 = ptrtoint ptr %attr.0 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -2147483648, ptr %attr.0, align 8
  %size163 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 1
  %152 = ptrtoint ptr %size163 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 402653184, ptr %size163, align 4
  %name_off164 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 4
  %153 = ptrtoint ptr %name_off164 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 6144, ptr %name_off164, align 2
  %154 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 7
  %data_off165 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %data_off165 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 6144, ptr %data_off165, align 4
  br label %if.then228

if.then171:                                       ; preds = %if.else156
  %156 = ptrtoint ptr %attr.0 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -2147483648, ptr %attr.0, align 8
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 2
  %157 = ptrtoint ptr %non_res to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %non_res, align 8
  %evcn = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 7, i32 0, i32 1
  %158 = ptrtoint ptr %evcn to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 -1, ptr %evcn, align 8
  %and173 = and i32 %spec.select708, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.else179, label %if.then175

if.then175:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #17
  %size176 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 1
  %159 = ptrtoint ptr %size176 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1342177280, ptr %size176, align 4
  %name_off177 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 4
  %160 = ptrtoint ptr %name_off177 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 18432, ptr %name_off177, align 2
  %flags178 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 5
  %161 = ptrtoint ptr %flags178 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 128, ptr %flags178, align 4
  br label %if.else223.thread758

if.else179:                                       ; preds = %if.then171
  %and180 = and i32 %spec.select708, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  %size187 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 1
  br i1 %tobool181.not, label %if.else186, label %if.then182

if.then182:                                       ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #17
  %162 = ptrtoint ptr %size187 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1342177280, ptr %size187, align 4
  %name_off184 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 4
  %163 = ptrtoint ptr %name_off184 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 18432, ptr %name_off184, align 2
  %flags185 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 5
  %164 = ptrtoint ptr %flags185 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 256, ptr %flags185, align 4
  %c_unit = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 7, i32 0, i32 3
  %165 = ptrtoint ptr %c_unit to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 4, ptr %c_unit, align 2
  br label %if.else223.thread758

if.else186:                                       ; preds = %if.else179
  call void @__sanitizer_cov_trace_pc() #17
  %166 = ptrtoint ptr %size187 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1207959552, ptr %size187, align 4
  %name_off188 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 4
  %167 = ptrtoint ptr %name_off188 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 16384, ptr %name_off188, align 2
  br label %if.else223.thread758

if.else223.thread758:                             ; preds = %if.else186, %if.then182, %if.then175
  %asize.0 = phi i32 [ 80, %if.then175 ], [ 80, %if.then182 ], [ 72, %if.else186 ]
  %name_off191 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 4
  %168 = ptrtoint ptr %name_off191 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %name_off191, align 2
  %run_off = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 7, i32 0, i32 2
  %170 = ptrtoint ptr %run_off to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %169, ptr %run_off, align 8
  br label %if.end304

if.else192:                                       ; preds = %if.else156
  %171 = ptrtoint ptr %attr.0 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 -2147483648, ptr %attr.0, align 8
  %size194 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 1
  %172 = ptrtoint ptr %size194 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 402653184, ptr %size194, align 4
  %name_off195 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 4
  %173 = ptrtoint ptr %name_off195 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 6144, ptr %name_off195, align 2
  %and196 = and i32 %spec.select708, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.else200, label %if.else192.if.end206.sink.split_crit_edge

if.else192.if.end206.sink.split_crit_edge:        ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end206.sink.split

if.else200:                                       ; preds = %if.else192
  %and201 = and i32 %spec.select708, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.else200.if.end206_crit_edge, label %if.else200.if.end206.sink.split_crit_edge

if.else200.if.end206.sink.split_crit_edge:        ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end206.sink.split

if.else200.if.end206_crit_edge:                   ; preds = %if.else200
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end206

if.end206.sink.split:                             ; preds = %if.else200.if.end206.sink.split_crit_edge, %if.else192.if.end206.sink.split_crit_edge
  %.sink = phi i16 [ 128, %if.else192.if.end206.sink.split_crit_edge ], [ 256, %if.else200.if.end206.sink.split_crit_edge ]
  %flags204 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 5
  %174 = ptrtoint ptr %flags204 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %.sink, ptr %flags204, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.end206.sink.split, %if.else200.if.end206_crit_edge
  %175 = getelementptr inbounds %struct.ATTRIB, ptr %attr.0, i32 0, i32 7
  %data_off207 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %data_off207 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 6144, ptr %data_off207, align 4
  %ni_flags = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 10
  %177 = ptrtoint ptr %ni_flags to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ni_flags, align 4
  %or208 = or i32 %178, 128
  store i32 %or208, ptr %ni_flags, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.end206, %if.then141
  %.pre-phi = phi i16 [ %149, %if.end206 ], [ %.pre, %if.then141 ]
  %asize.1 = phi i32 [ 24, %if.end206 ], [ 80, %if.then141 ]
  %179 = zext i16 %.pre-phi to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %.pre-phi, label %if.end211.if.end304_crit_edge [
    i16 16384, label %if.then216
    i16 -24576, label %if.end211.if.then228_crit_edge
  ]

if.end211.if.then228_crit_edge:                   ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then228

if.end211.if.end304_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end304

if.then216:                                       ; preds = %if.end211
  %ni_flags217 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 10
  %180 = ptrtoint ptr %ni_flags217 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %ni_flags217, align 4
  %or218 = or i32 %181, 64
  store i32 %or218, ptr %ni_flags217, align 4
  %182 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 8
  %call219 = call i32 @indx_init(ptr noundef %182, ptr noundef %3, ptr noundef %attr.0, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.then216.if.end304_crit_edge, label %if.then216.out4_crit_edge

if.then216.out4_crit_edge:                        ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #17
  br label %out4

if.then216.if.end304_crit_edge:                   ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end304

if.then228:                                       ; preds = %if.end211.if.then228_crit_edge, %if.else223.thread
  %asize.1748756 = phi i32 [ 24, %if.else223.thread ], [ %asize.1, %if.end211.if.then228_crit_edge ]
  %call229 = call fastcc ptr @ntfs_create_reparse_buffer(ptr noundef %3, ptr noundef %symname, i32 noundef %size, ptr noundef nonnull %nsize)
  %cmp.i715 = icmp ugt ptr %call229, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i715, label %if.then231, label %if.end233

if.then231:                                       ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #17
  %183 = ptrtoint ptr %call229 to i32
  br label %out4

if.end233:                                        ; preds = %if.then228
  %add.ptr234 = getelementptr i8, ptr %attr.0, i32 %asize.1748756
  %184 = ptrtoint ptr %add.ptr234 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1073741824, ptr %add.ptr234, align 8
  %inc236 = add nuw nsw i16 %aid.0, 2
  %185 = shl nuw nsw i16 %inc137, 8
  %id237 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr234, i32 0, i32 6
  %186 = ptrtoint ptr %id237 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %185, ptr %id237, align 2
  %187 = ptrtoint ptr %nsize to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %nsize, align 2
  %conv238 = zext i16 %188 to i32
  %add240 = add nuw nsw i32 %conv238, 31
  %and241 = and i32 %add240, 131064
  %189 = ptrtoint ptr %add.ptr234 to i32
  %190 = ptrtoint ptr %33 to i32
  %sub = sub i32 %189, %190
  %conv243 = and i32 %sub, 65535
  %add244 = add nuw nsw i32 %conv243, 128
  %add246 = add nuw nsw i32 %add244, %and241
  %record_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 8
  %191 = ptrtoint ptr %record_size to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %record_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add246, i32 %192)
  %cmp247 = icmp ugt i32 %add246, %192
  br i1 %cmp247, label %if.then249, label %if.else290

if.then249:                                       ; preds = %if.end233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alen) #15
  %193 = ptrtoint ptr %alen to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 -1, ptr %alen, align 4, !annotation !58
  %conv250 = zext i16 %188 to i64
  %cluster_mask.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 4
  %194 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %cluster_mask.i, align 4
  %conv.i716 = zext i32 %195 to i64
  %add.i = add nuw nsw i64 %conv.i716, %conv250
  %cluster_bits.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 10
  %196 = ptrtoint ptr %cluster_bits.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %cluster_bits.i, align 8
  %sh_prom.i = zext i8 %197 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %non_res257 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr234, i32 0, i32 2
  %198 = ptrtoint ptr %non_res257 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 1, ptr %non_res257, align 8
  %sub258 = add i32 %conv2.i, -1
  %conv259 = zext i32 %sub258 to i64
  %199 = call i64 @llvm.bswap.i64(i64 %conv259)
  %200 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr234, i32 0, i32 7
  %evcn260 = getelementptr inbounds %struct.ATTR_NONRESIDENT, ptr %200, i32 0, i32 1
  %201 = ptrtoint ptr %evcn260 to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %199, ptr %evcn260, align 8
  %name_off261 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr234, i32 0, i32 4
  %202 = ptrtoint ptr %name_off261 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 16384, ptr %name_off261, align 2
  %run_off263 = getelementptr inbounds %struct.ATTR_NONRESIDENT, ptr %200, i32 0, i32 2
  %203 = ptrtoint ptr %run_off263 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 16384, ptr %run_off263, align 8
  %204 = call i64 @llvm.bswap.i64(i64 %conv250)
  %data_size265 = getelementptr inbounds %struct.ATTR_NONRESIDENT, ptr %200, i32 0, i32 6
  %205 = ptrtoint ptr %data_size265 to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %204, ptr %data_size265, align 8
  %valid_size = getelementptr inbounds %struct.ATTR_NONRESIDENT, ptr %200, i32 0, i32 7
  %206 = ptrtoint ptr %valid_size to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %204, ptr %valid_size, align 8
  %207 = ptrtoint ptr %cluster_mask.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cluster_mask.i, align 4
  %conv.i718 = zext i32 %208 to i64
  %add.i719 = add nuw nsw i64 %conv.i718, %conv250
  %cluster_mask_inv.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 5
  %209 = ptrtoint ptr %cluster_mask_inv.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %cluster_mask_inv.i, align 8
  %and.i = and i64 %add.i719, %210
  %211 = call i64 @llvm.bswap.i64(i64 %and.i)
  %alloc_size269 = getelementptr inbounds %struct.ATTR_NONRESIDENT, ptr %200, i32 0, i32 5
  %212 = ptrtoint ptr %alloc_size269 to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %211, ptr %alloc_size269, align 8
  %run = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %call270 = call i32 @attr_allocate_clusters(ptr noundef %3, ptr noundef %run, i32 noundef 0, i32 noundef 0, i32 noundef %conv2.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull %alen, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %if.end273, label %if.then249.cleanup.thread_crit_edge

if.then249.cleanup.thread_crit_edge:              ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

if.end273:                                        ; preds = %if.then249
  %sub254 = sub i32 65472, %sub
  %conv256 = add i32 %sub254, %192
  %add.ptr275 = getelementptr i8, ptr %add.ptr234, i32 64
  %conv276 = and i32 %conv256, 65535
  %call277 = call i32 @run_pack(ptr noundef %run, i32 noundef 0, i32 noundef %conv2.i, ptr noundef %add.ptr275, i32 noundef %conv276, ptr noundef nonnull %vcn) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %cmp278 = icmp slt i32 %call277, 0
  br i1 %cmp278, label %if.end273.cleanup.thread_crit_edge, label %if.end281

if.end273.cleanup.thread_crit_edge:               ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

if.end281:                                        ; preds = %if.end273
  %213 = ptrtoint ptr %vcn to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %vcn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %conv2.i)
  %cmp282.not = icmp eq i32 %214, %conv2.i
  br i1 %cmp282.not, label %cleanup, label %if.end281.cleanup.thread_crit_edge

if.end281.cleanup.thread_crit_edge:               ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end281.cleanup.thread_crit_edge, %if.end273.cleanup.thread_crit_edge, %if.then249.cleanup.thread_crit_edge
  %err.0.ph = phi i32 [ -22, %if.end281.cleanup.thread_crit_edge ], [ %call277, %if.end273.cleanup.thread_crit_edge ], [ %call270, %if.then249.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #15
  br label %lor.lhs.false

cleanup:                                          ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #17
  %215 = add nuw i32 %call277, 71
  %add288 = and i32 %215, -8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alen) #15
  br label %if.end296

if.else290:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #17
  %216 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr234, i32 0, i32 7
  %data_off291 = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %data_off291 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 6144, ptr %data_off291, align 4
  %218 = call i32 @llvm.bswap.i32(i32 %conv238)
  %219 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %216, align 8
  %add.ptr294 = getelementptr i8, ptr %add.ptr234, i32 24
  %220 = call ptr @memcpy(ptr %add.ptr294, ptr %call229, i32 %conv238)
  %221 = ptrtoint ptr %nsize to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %nsize, align 2
  br label %if.end296

if.end296:                                        ; preds = %if.else290, %cleanup
  %asize.3 = phi i32 [ %add288, %cleanup ], [ %and241, %if.else290 ]
  %conv297 = zext i32 %size to i64
  %i_size = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 14
  %222 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %222)
  store i64 %conv297, ptr %i_size, align 8
  %223 = call i32 @llvm.bswap.i32(i32 %asize.3)
  %size298 = getelementptr inbounds %struct.ATTRIB, ptr %add.ptr234, i32 0, i32 1
  %224 = ptrtoint ptr %size298 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %size298, align 4
  %call299 = call i32 @ntfs_insert_reparse(ptr noundef %3, i32 noundef 201326752, ptr noundef nonnull %call41) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %if.end296.if.end304_crit_edge, label %if.end296.lor.lhs.false_crit_edge

if.end296.lor.lhs.false_crit_edge:                ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

if.end296.if.end304_crit_edge:                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end304

if.end304:                                        ; preds = %if.end296.if.end304_crit_edge, %if.then216.if.end304_crit_edge, %if.end211.if.end304_crit_edge, %if.else223.thread758
  %cmp214749 = phi i1 [ true, %if.then216.if.end304_crit_edge ], [ false, %if.end296.if.end304_crit_edge ], [ false, %if.else223.thread758 ], [ false, %if.end211.if.end304_crit_edge ]
  %.pre-phi746 = phi i16 [ 16384, %if.then216.if.end304_crit_edge ], [ -24576, %if.end296.if.end304_crit_edge ], [ -32768, %if.else223.thread758 ], [ %.pre-phi, %if.end211.if.end304_crit_edge ]
  %attr.1 = phi ptr [ %attr.0, %if.then216.if.end304_crit_edge ], [ %add.ptr234, %if.end296.if.end304_crit_edge ], [ %attr.0, %if.else223.thread758 ], [ %attr.0, %if.end211.if.end304_crit_edge ]
  %asize.4 = phi i32 [ %asize.1, %if.then216.if.end304_crit_edge ], [ %asize.3, %if.end296.if.end304_crit_edge ], [ %asize.0, %if.else223.thread758 ], [ %asize.1, %if.end211.if.end304_crit_edge ]
  %aid.1 = phi i16 [ %inc137, %if.then216.if.end304_crit_edge ], [ %inc236, %if.end296.if.end304_crit_edge ], [ %inc137, %if.else223.thread758 ], [ %inc137, %if.end211.if.end304_crit_edge ]
  %rp.0 = phi ptr [ null, %if.then216.if.end304_crit_edge ], [ %call229, %if.end296.if.end304_crit_edge ], [ null, %if.else223.thread758 ], [ null, %if.end211.if.end304_crit_edge ]
  %rp_inserted.0.off0 = phi i1 [ false, %if.then216.if.end304_crit_edge ], [ true, %if.end296.if.end304_crit_edge ], [ false, %if.else223.thread758 ], [ false, %if.end211.if.end304_crit_edge ]
  %add.ptr305 = getelementptr i8, ptr %attr.1, i32 %asize.4
  %225 = ptrtoint ptr %add.ptr305 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 -1, ptr %add.ptr305, align 8
  %226 = ptrtoint ptr %add.ptr305 to i32
  %227 = ptrtoint ptr %33 to i32
  %sub307 = sub i32 8, %227
  %add308 = add i32 %sub307, %226
  %228 = call i32 @llvm.bswap.i32(i32 %add308)
  %used309 = getelementptr inbounds %struct.MFT_REC, ptr %33, i32 0, i32 5
  %229 = ptrtoint ptr %used309 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %used309, align 8
  %230 = call i16 @llvm.bswap.i16(i16 %aid.1)
  %next_attr_id = getelementptr inbounds %struct.MFT_REC, ptr %33, i32 0, i32 8
  %231 = ptrtoint ptr %next_attr_id to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %230, ptr %next_attr_id, align 8
  %call310 = call i32 @indx_insert_entry(ptr noundef %8, ptr noundef %add.ptr.i, ptr noundef nonnull %call41, ptr noundef %3, ptr noundef %fnd, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %if.end313, label %if.end304.out6_crit_edge

if.end304.out6_crit_edge:                         ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #17
  br label %out6

if.end313:                                        ; preds = %if.end304
  call void @mutex_unlock(ptr noundef %ni_lock.i) #15
  %seq = getelementptr inbounds %struct.MFT_REC, ptr %33, i32 0, i32 1
  %232 = ptrtoint ptr %seq to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %seq, align 8
  %234 = call i16 @llvm.bswap.i16(i16 %233)
  %conv314 = zext i16 %234 to i32
  %i_generation = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 49
  %235 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %conv314, ptr %i_generation, align 8
  %i_mtime315 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime316 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %236 = call ptr @memcpy(ptr %i_ctime316, ptr %i_atime, i32 16)
  %237 = call ptr @memmove(ptr %i_mtime315, ptr %i_atime, i32 16)
  br i1 %cmp214749, label %if.then322, label %if.else323

if.then322:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #17
  %i_op = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 7
  %238 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @ntfs_dir_inode_operations, ptr %i_op, align 8
  %239 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 44
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr @ntfs_dir_operations, ptr %239, align 8
  br label %land.lhs.true352

if.else323:                                       ; preds = %if.end313
  %241 = zext i16 %.pre-phi746 to i64
  call void @__sanitizer_cov_trace_switch(i64 %241, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %.pre-phi746, label %if.end347 [
    i16 -24576, label %if.end347.thread733
    i16 -32768, label %if.then337
  ]

if.end347.thread733:                              ; preds = %if.else323
  call void @__sanitizer_cov_trace_pc() #17
  %i_op329 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 7
  %242 = ptrtoint ptr %i_op329 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr @ntfs_link_inode_operations, ptr %i_op329, align 8
  %243 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 44
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr null, ptr %243, align 8
  %i_mapping = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 9
  %245 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %246, i32 0, i32 9
  %247 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr @ntfs_aops, ptr %a_ops, align 4
  %conv330 = zext i32 %size to i64
  %i_size331 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 14
  %248 = ptrtoint ptr %i_size331 to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 %conv330, ptr %i_size331, align 8
  call void @inode_nohighmem(ptr noundef %vfs_inode) #15
  br label %if.else360

if.then337:                                       ; preds = %if.else323
  %i_op338 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 7
  %249 = ptrtoint ptr %i_op338 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr @ntfs_file_inode_operations, ptr %i_op338, align 8
  %250 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 44
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr @ntfs_file_operations, ptr %250, align 8
  %252 = ptrtoint ptr %std_fa84 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %std_fa84, align 4
  %and.i721 = and i32 %253, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i721)
  %tobool.not.i = icmp eq i32 %and.i721, 0
  br i1 %tobool.not.i, label %is_compressed.exit, label %if.then337.is_compressed.exit.thread_crit_edge

if.then337.is_compressed.exit.thread_crit_edge:   ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_compressed.exit.thread

is_compressed.exit:                               ; preds = %if.then337
  %ni_flags.i = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 10
  %254 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %ni_flags.i, align 4
  %and1.i = and i32 %255, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %is_compressed.exit._crit_edge, label %is_compressed.exit.is_compressed.exit.thread_crit_edge

is_compressed.exit.is_compressed.exit.thread_crit_edge: ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %is_compressed.exit.thread

is_compressed.exit._crit_edge:                    ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %256

is_compressed.exit.thread:                        ; preds = %is_compressed.exit.is_compressed.exit.thread_crit_edge, %if.then337.is_compressed.exit.thread_crit_edge
  br label %256

256:                                              ; preds = %is_compressed.exit.thread, %is_compressed.exit._crit_edge
  %257 = phi ptr [ @ntfs_aops_cmpr, %is_compressed.exit.thread ], [ @ntfs_aops, %is_compressed.exit._crit_edge ]
  %i_mapping341 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 9
  %258 = ptrtoint ptr %i_mapping341 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %i_mapping341, align 8
  %a_ops342 = getelementptr inbounds %struct.address_space, ptr %259, i32 0, i32 9
  %260 = ptrtoint ptr %a_ops342 to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %257, ptr %a_ops342, align 4
  %261 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 8
  call void @__init_rwsem(ptr noundef %261, ptr noundef nonnull @.str.1, ptr noundef nonnull @ntfs_create_inode.__key) #15
  br label %land.lhs.true352

if.end347:                                        ; preds = %if.else323
  call void @__sanitizer_cov_trace_pc() #17
  %i_op344 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 7
  %262 = ptrtoint ptr %i_op344 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr @ntfs_special_inode_operations, ptr %i_op344, align 8
  call void @init_special_inode(ptr noundef %vfs_inode, i16 noundef zeroext %27, i32 noundef %dev) #15
  br label %land.lhs.true352

land.lhs.true352:                                 ; preds = %if.end347, %256, %if.then322
  %s_flags = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 10
  %263 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %s_flags, align 4
  %and353 = and i32 %264, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and353)
  %tobool354.not = icmp eq i32 %and353, 0
  br i1 %tobool354.not, label %land.lhs.true352.if.else360_crit_edge, label %if.then355

land.lhs.true352.if.else360_crit_edge:            ; preds = %land.lhs.true352
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else360

if.then355:                                       ; preds = %land.lhs.true352
  %call356 = call i32 @ntfs_init_acl(ptr noundef %mnt_userns, ptr noundef %vfs_inode, ptr noundef %dir) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call356)
  %tobool357.not = icmp eq i32 %call356, 0
  br i1 %tobool357.not, label %if.then355.if.end362_crit_edge, label %if.then355.out7_crit_edge

if.then355.out7_crit_edge:                        ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #17
  br label %out7

if.then355.if.end362_crit_edge:                   ; preds = %if.then355
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end362

if.else360:                                       ; preds = %land.lhs.true352.if.else360_crit_edge, %if.end347.thread733
  %i_flags = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 11, i32 4
  %265 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %i_flags, align 4
  %or361 = or i32 %266, 4096
  store i32 %or361, ptr %i_flags, align 4
  br label %if.end362

if.end362:                                        ; preds = %if.else360, %if.then355.if.end362_crit_edge
  %267 = ptrtoint ptr %nsize to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %nsize, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %268)
  %tobool363.not = icmp eq i16 %268, 0
  br i1 %tobool363.not, label %if.end362.if.end371_crit_edge, label %if.then364

if.end362.if.end371_crit_edge:                    ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end371

if.then364:                                       ; preds = %if.end362
  %run365 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %conv366 = zext i16 %268 to i32
  %call367 = call i32 @ntfs_sb_write_run(ptr noundef %3, ptr noundef %run365, i64 noundef 0, ptr noundef %rp.0, i32 noundef %conv366, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %tobool368.not = icmp eq i32 %call367, 0
  br i1 %tobool368.not, label %if.then364.if.end371_crit_edge, label %if.then364.out7_crit_edge

if.then364.out7_crit_edge:                        ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #17
  br label %out7

if.then364.if.end371_crit_edge:                   ; preds = %if.then364
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end371

if.end371:                                        ; preds = %if.then364.if.end371_crit_edge, %if.end362.if.end371_crit_edge
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %vfs_inode) #15
  %call372 = call i32 @ntfs_save_wsl_perm(ptr noundef %vfs_inode) #15
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #15
  call void @__mark_inode_dirty(ptr noundef %vfs_inode, i32 noundef 7) #15
  br label %out1

out7:                                             ; preds = %if.then364.out7_crit_edge, %if.then355.out7_crit_edge
  %err.3 = phi i32 [ %call367, %if.then364.out7_crit_edge ], [ %call356, %if.then355.out7_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 5) #15
  %269 = ptrtoint ptr %key_size to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %key_size, align 2
  %271 = call i16 @llvm.bswap.i16(i16 %270)
  %conv375 = zext i16 %271 to i32
  %call376 = call i32 @indx_delete_entry(ptr noundef %8, ptr noundef %add.ptr.i, ptr noundef %add.ptr92, i32 noundef %conv375, ptr noundef %3) #15
  br label %out6

out6:                                             ; preds = %out7, %if.end304.out6_crit_edge
  %err.4 = phi i32 [ %call310, %if.end304.out6_crit_edge ], [ %err.3, %out7 ]
  br i1 %rp_inserted.0.off0, label %if.then378, label %out6.out5_crit_edge

out6.out5_crit_edge:                              ; preds = %out6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out5

if.then378:                                       ; preds = %out6
  call void @__sanitizer_cov_trace_pc() #17
  %call379 = call i32 @ntfs_remove_reparse(ptr noundef %3, i32 noundef 201326752, ptr noundef nonnull %call41) #15
  br label %out5

out5:                                             ; preds = %if.then378, %out6.out5_crit_edge
  br i1 %cmp214749, label %out5.out4_crit_edge, label %out5.lor.lhs.false_crit_edge

out5.lor.lhs.false_crit_edge:                     ; preds = %out5
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

out5.out4_crit_edge:                              ; preds = %out5
  call void @__sanitizer_cov_trace_pc() #17
  br label %out4

lor.lhs.false:                                    ; preds = %out5.lor.lhs.false_crit_edge, %if.end296.lor.lhs.false_crit_edge, %cleanup.thread
  %rp.1738 = phi ptr [ %rp.0, %out5.lor.lhs.false_crit_edge ], [ %call229, %cleanup.thread ], [ %call229, %if.end296.lor.lhs.false_crit_edge ]
  %err.5737 = phi i32 [ %err.4, %out5.lor.lhs.false_crit_edge ], [ %err.0.ph, %cleanup.thread ], [ %call299, %if.end296.lor.lhs.false_crit_edge ]
  %count.i = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1, i32 1
  %272 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool.not.i723 = icmp eq i32 %273, 0
  br i1 %tobool.not.i723, label %lor.lhs.false.out4_crit_edge, label %if.end389

lor.lhs.false.out4_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %out4

if.end389:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %run385 = getelementptr inbounds %struct.ntfs_inode, ptr %call52, i32 0, i32 8, i32 0, i32 2, i32 6, i32 1
  %call391 = call i32 @run_deallocate(ptr noundef %3, ptr noundef %run385, i1 noundef zeroext false) #15
  br label %out4

out4:                                             ; preds = %if.end389, %lor.lhs.false.out4_crit_edge, %out5.out4_crit_edge, %if.then231, %if.then216.out4_crit_edge, %if.end80.out4_crit_edge
  %err.6 = phi i32 [ %call87, %if.end80.out4_crit_edge ], [ %call219, %if.then216.out4_crit_edge ], [ %err.4, %out5.out4_crit_edge ], [ %err.5737, %lor.lhs.false.out4_crit_edge ], [ %err.5737, %if.end389 ], [ %183, %if.then231 ]
  %rp.2 = phi ptr [ null, %if.end80.out4_crit_edge ], [ null, %if.then216.out4_crit_edge ], [ %rp.0, %out5.out4_crit_edge ], [ %rp.1738, %lor.lhs.false.out4_crit_edge ], [ %rp.1738, %if.end389 ], [ null, %if.then231 ]
  %flags.i = getelementptr inbounds %struct.MFT_REC, ptr %33, i32 0, i32 4
  %274 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %flags.i, align 2
  %276 = and i16 %275, -257
  store i16 %276, ptr %flags.i, align 2
  call void @clear_nlink(ptr noundef %vfs_inode) #15
  %dirty = getelementptr inbounds %struct.mft_inode, ptr %call52, i32 0, i32 5
  %277 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 0, ptr %dirty, align 4
  call void @discard_new_inode(ptr noundef %vfs_inode) #15
  br label %out3

out3:                                             ; preds = %out4, %if.then54
  %err.7 = phi i32 [ %25, %if.then54 ], [ %err.6, %out4 ]
  %inode.0 = phi ptr [ null, %if.then54 ], [ %vfs_inode, %out4 ]
  %rp.3 = phi ptr [ null, %if.then54 ], [ %rp.2, %out4 ]
  %278 = ptrtoint ptr %ino to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %ino, align 4
  call void @ntfs_mark_rec_free(ptr noundef %3, i32 noundef %279) #15
  br label %out1

out1:                                             ; preds = %out3, %if.end371, %if.end44.out1_crit_edge
  %err.8 = phi i32 [ %call46, %if.end44.out1_crit_edge ], [ %err.7, %out3 ], [ 0, %if.end371 ]
  %inode.1 = phi ptr [ null, %if.end44.out1_crit_edge ], [ %inode.0, %out3 ], [ %vfs_inode, %if.end371 ]
  %rp.4 = phi ptr [ null, %if.end44.out1_crit_edge ], [ %rp.3, %out3 ], [ %rp.0, %if.end371 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %280 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %280, ptr noundef nonnull %call41) #15
  call void @kfree(ptr noundef %rp.4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.8)
  %tobool394.not = icmp eq i32 %err.8, 0
  br i1 %tobool394.not, label %if.end397, label %out1.if.then395_crit_edge

out1.if.then395_crit_edge:                        ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then395

if.then395:                                       ; preds = %out1.if.then395_crit_edge, %if.end34.if.then395_crit_edge, %entry.if.then395_crit_edge
  %err.9742 = phi i32 [ %err.8, %out1.if.then395_crit_edge ], [ -12, %if.end34.if.then395_crit_edge ], [ -22, %entry.if.then395_crit_edge ]
  call void @mutex_unlock(ptr noundef %ni_lock.i) #15
  %281 = inttoptr i32 %err.9742 to ptr
  br label %cleanup398

if.end397:                                        ; preds = %out1
  call void @__sanitizer_cov_trace_pc() #17
  call void @unlock_new_inode(ptr noundef %inode.1) #15
  br label %cleanup398

cleanup398:                                       ; preds = %if.end397, %if.then395
  %retval.0 = phi ptr [ %281, %if.then395 ], [ %inode.1, %if.end397 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %nsize) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vcn) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %security_id) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ino) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @indx_get_root(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_look_free_mft(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_new_inode(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_insert_security(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fill_name_de(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ntfs_create_reparse_buffer(ptr noundef %sbi, ptr noundef %symname, i32 noundef %size, ptr nocapture noundef %nsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add = shl i32 %size, 3
  %add2.i = add i32 %add, 36
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i, i32 noundef 3392) #20
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %size, 1
  %0 = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %call9.i.i, i32 0, i32 3
  %PathBuffer = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 3
  %add.ptr = getelementptr i16, ptr %PathBuffer, i32 -1
  %call4 = tail call i32 @ntfs_nls_to_utf16(ptr noundef %sbi, ptr noundef %symname, i32 noundef %size, ptr noundef %add.ptr, i32 noundef %mul, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end6:                                          ; preds = %if.end
  %mul.i77 = shl i32 %call4, 2
  %add2.i78 = add i32 %mul.i77, 28
  %conv = trunc i32 %add2.i78 to i16
  %1 = ptrtoint ptr %nsize to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %nsize, align 2
  %conv.mask = and i32 %add2.i78, 65532
  %conv8 = zext i32 %conv.mask to i64
  %max_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %sbi, i32 0, i32 31, i32 2
  %2 = ptrtoint ptr %max_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %max_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv8)
  %cmp9 = icmp ult i64 %3, %conv8
  br i1 %cmp9, label %if.end6.out_crit_edge, label %for.cond.preheader

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.cond.preheader:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp1379.not = icmp eq i32 %call4, 0
  br i1 %cmp1379.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.080 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %PathBuffer, i32 %i.080
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12032, i16 %5)
  %cmp16 = icmp eq i16 %5, 12032
  br i1 %cmp16, label %if.then18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 23552, ptr %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.080, 1
  %exitcond.not = icmp eq i32 %inc, %call4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 201326752, ptr %call9.i.i, align 128
  %sub = add i16 %conv, -8
  %8 = tail call i16 @llvm.bswap.i16(i16 %sub)
  %ReparseDataLength = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %call9.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %ReparseDataLength to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %ReparseDataLength, align 4
  %mul23 = shl i32 %call4, 1
  %conv24 = trunc i32 %mul23 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv24)
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %0, align 8
  %conv27 = add i16 %conv24, 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv27)
  %SubstituteNameLength = getelementptr inbounds %struct.anon.97, ptr %0, i32 0, i32 1
  %13 = ptrtoint ptr %SubstituteNameLength to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %SubstituteNameLength, align 2
  %PrintNameLength = getelementptr inbounds %struct.anon.97, ptr %0, i32 0, i32 3
  %14 = ptrtoint ptr %PrintNameLength to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %10, ptr %PrintNameLength, align 2
  %Flags = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %call9.i.i, i32 0, i32 3, i32 0, i32 2
  %15 = ptrtoint ptr %Flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %Flags, align 16
  %add.ptr29 = getelementptr i16, ptr %PathBuffer, i32 %call4
  %add.ptr30 = getelementptr i16, ptr %add.ptr29, i32 4
  %16 = call ptr @memmove(ptr %add.ptr30, ptr %PathBuffer, i32 %mul23)
  %17 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 23552, ptr %add.ptr29, align 2
  %arrayidx34 = getelementptr i16, ptr %add.ptr29, i32 1
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 16128, ptr %arrayidx34, align 2
  %arrayidx35 = getelementptr i16, ptr %add.ptr29, i32 2
  %19 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 16128, ptr %arrayidx35, align 2
  %arrayidx36 = getelementptr i16, ptr %add.ptr29, i32 3
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 23552, ptr %arrayidx36, align 2
  br label %cleanup

out:                                              ; preds = %if.end6.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.end.out_crit_edge ], [ -27, %if.end6.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #15
  %21 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %21, %out ], [ %call9.i.i, %for.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_allocate_clusters(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_pack(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_insert_reparse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_insert_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_init_acl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_sb_write_run(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_save_wsl_perm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @indx_delete_entry(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_remove_reparse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_deallocate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @discard_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_mark_rec_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_link_inode(ptr noundef %inode, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %4 = load ptr, ptr @names_cachep, align 4
  %call1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ntfs_set_state(ptr noundef %3, i32 noundef 1) #15
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call3 = tail call i32 @fill_name_de(ptr noundef %3, ptr noundef nonnull %call1, ptr noundef %d_name, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %i_ctime = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %5 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_ctime, align 8
  %7 = mul i64 %6, 10000000
  %mul.i = add i64 %7, 116444736000000000
  %tv_nsec.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %9, 100
  %conv.i = sext i32 %div.i to i64
  %add1.i = add i64 %mul.i, %conv.i
  %10 = tail call i64 @llvm.bswap.i64(i64 %add1.i) #15
  %dup = getelementptr %struct.NTFS_DE, ptr %call1, i32 1, i32 1
  %a_time = getelementptr %struct.NTFS_DE, ptr %call1, i32 3
  %11 = ptrtoint ptr %a_time to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %a_time, align 8
  %c_time = getelementptr %struct.NTFS_DE, ptr %call1, i32 2, i32 1
  %12 = ptrtoint ptr %c_time to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %10, ptr %c_time, align 8
  %m_time = getelementptr %struct.NTFS_DE, ptr %call1, i32 2
  %13 = ptrtoint ptr %m_time to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %10, ptr %m_time, align 8
  %14 = ptrtoint ptr %dup to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %10, ptr %dup, align 8
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %15 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_size, align 8
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %data_size = getelementptr %struct.NTFS_DE, ptr %call1, i32 4
  %18 = ptrtoint ptr %data_size to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %data_size, align 8
  %alloc_size = getelementptr %struct.NTFS_DE, ptr %call1, i32 3, i32 1
  %19 = ptrtoint ptr %alloc_size to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %17, ptr %alloc_size, align 8
  %std_fa = getelementptr i8, ptr %inode, i32 -172
  %20 = ptrtoint ptr %std_fa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %std_fa, align 4
  %fa = getelementptr %struct.NTFS_DE, ptr %call1, i32 4, i32 1
  %22 = ptrtoint ptr %fa to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %fa, align 8
  %reparse = getelementptr %struct.NTFS_DE, ptr %call1, i32 4, i32 4
  %23 = ptrtoint ptr %reparse to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %reparse, align 2
  %ea_size = getelementptr %struct.NTFS_DE, ptr %call1, i32 4, i32 3
  %24 = ptrtoint ptr %ea_size to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %ea_size, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %25 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %28, i32 -360
  %call18 = tail call i32 @ni_add_name(ptr noundef %add.ptr.i42, ptr noundef %add.ptr.i, ptr noundef nonnull %call1) #15
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call3, %if.end.out_crit_edge ], [ %call18, %if.end6 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %29 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_add_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ntfs_unlink_inode(ptr noundef %dir, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  %de2 = alloca ptr, align 4
  %undo_remove = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -360
  %add.ptr.i75 = getelementptr i8, ptr %dir, i32 -360
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %de2) #15
  %6 = ptrtoint ptr %de2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %de2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %undo_remove) #15
  %7 = ptrtoint ptr %undo_remove to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %undo_remove, align 4, !annotation !58
  %rno = getelementptr i8, ptr %5, i32 -296
  %8 = ptrtoint ptr %rno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rno, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp.i = icmp ult i32 %9, 16
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %objid_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %objid_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %objid_no.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp1.i = icmp eq i32 %11, %9
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %quota_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %quota_no.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quota_no.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp3.i = icmp eq i32 %13, %9
  br i1 %cmp3.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %lor.lhs.false4.i

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false2.i
  %reparse_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 20
  %14 = ptrtoint ptr %reparse_no.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reparse_no.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp5.i = icmp eq i32 %15, %9
  br i1 %cmp5.i, label %lor.lhs.false4.i.cleanup_crit_edge, label %ntfs_is_meta_file.exit

lor.lhs.false4.i.cleanup_crit_edge:               ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

ntfs_is_meta_file.exit:                           ; preds = %lor.lhs.false4.i
  %usn_jrnl_no.i = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 21
  %16 = ptrtoint ptr %usn_jrnl_no.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usn_jrnl_no.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp6.i = icmp eq i32 %17, %9
  br i1 %cmp6.i, label %ntfs_is_meta_file.exit.cleanup_crit_edge, label %if.end

ntfs_is_meta_file.exit.cleanup_crit_edge:         ; preds = %ntfs_is_meta_file.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %ntfs_is_meta_file.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %18 = load ptr, ptr @names_cachep, align 4
  %call4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %18, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ni_lock.i = getelementptr i8, ptr %5, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #15
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %5, align 8
  %21 = and i16 %20, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %21)
  %cmp = icmp eq i16 %21, 16384
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end6
  %call8 = tail call zeroext i1 @dir_is_empty(ptr noundef %5) #15
  br i1 %call8, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end6.if.end10_crit_edge
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call11 = tail call i32 @fill_name_de(ptr noundef %3, ptr noundef nonnull %call4, ptr noundef %d_name, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.out_crit_edge, label %if.end15

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end15:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %undo_remove to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %undo_remove, align 4
  %call16 = call i32 @ni_remove_name(ptr noundef %add.ptr.i75, ptr noundef %add.ptr.i, ptr noundef nonnull %call4, ptr noundef nonnull %de2, ptr noundef nonnull %undo_remove) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  call void @drop_nlink(ptr noundef %5) #15
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %dir) #15
  %23 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %24 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #15
  %i_ctime19 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  %25 = call ptr @memcpy(ptr %i_ctime19, ptr %i_ctime, i32 16)
  %26 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 12
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool21.not = icmp eq i32 %28, 0
  br i1 %tobool21.not, label %if.then18.out_crit_edge, label %if.then22

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then22:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #15
  br label %out

if.else:                                          ; preds = %if.end15
  %29 = ptrtoint ptr %de2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %de2, align 4
  %31 = ptrtoint ptr %undo_remove to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %undo_remove, align 4
  %call24 = call zeroext i1 @ni_remove_name_undo(ptr noundef %add.ptr.i75, ptr noundef %add.ptr.i, ptr noundef nonnull %call4, ptr noundef %30, i32 noundef %32) #15
  br i1 %call24, label %if.else27, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void @make_bad_inode(ptr noundef %5) #15
  call void (ptr, ptr, ...) @ntfs_inode_printk(ptr noundef %5, ptr noundef nonnull @.str.2) #15
  %call26 = call i32 @ntfs_set_state(ptr noundef %3, i32 noundef 2) #15
  br label %out

if.else27:                                        ; preds = %if.else
  %call28 = call zeroext i1 @ni_is_dirty(ptr noundef %dir) #15
  br i1 %call28, label %if.then29, label %if.else27.if.end30_crit_edge

if.else27.if.end30_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then29:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #15
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.else27.if.end30_crit_edge
  %call31 = call zeroext i1 @ni_is_dirty(ptr noundef %5) #15
  br i1 %call31, label %if.then32, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #15
  br label %out

out:                                              ; preds = %if.then32, %if.end30.out_crit_edge, %if.then25, %if.then22, %if.then18.out_crit_edge, %if.end10.out_crit_edge, %land.lhs.true.out_crit_edge
  %err.0 = phi i32 [ %call11, %if.end10.out_crit_edge ], [ %call16, %if.then32 ], [ %call16, %if.end30.out_crit_edge ], [ %call16, %if.then25 ], [ 0, %if.then22 ], [ 0, %if.then18.out_crit_edge ], [ -39, %land.lhs.true.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %ni_lock.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @names_cachep to i32))
  %33 = load ptr, ptr @names_cachep, align 4
  call void @kmem_cache_free(ptr noundef %33, ptr noundef nonnull %call4) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %ntfs_is_meta_file.exit.cleanup_crit_edge, %lor.lhs.false4.i.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %ntfs_is_meta_file.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false4.i.cleanup_crit_edge ], [ -22, %lor.lhs.false2.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %undo_remove) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %de2) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dir_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_remove_name(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ni_remove_name_undo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_inode_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ni_is_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntfs_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #15
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @inode_needs_sync(ptr noundef %inode) #15
  %call1 = tail call i32 @ni_write_inode(ptr noundef %inode, i32 noundef %call, ptr noundef nonnull @__func__.ntfs_evict_inode) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @invalidate_inode_buffers(ptr noundef %inode) #15
  tail call void @clear_inode(ptr noundef %inode) #15
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  tail call void @ni_clear(ptr noundef %add.ptr.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_needs_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_inode_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ntfs_get_link(ptr noundef readnone %de, ptr noundef %inode, ptr nocapture noundef writeonly %done) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %de, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3136, i32 noundef 4096) #21
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @ntfs_readlink_hlp(ptr noundef %inode, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  %1 = inttoptr i32 %call6 to ptr
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @kfree_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %3 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %arg2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.then7 ], [ %call7.i, %if.end9 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_permission(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_get_acl(ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs3_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_set_acl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ni_flags.i = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ni_flags.i, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -360
  %ni_lock.i = getelementptr i8, ptr %3, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #15
  %call3 = tail call i32 @attr_data_write_resident(ptr noundef %add.ptr.i, ptr noundef %page) #15
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 556, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 556
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unlock_page(ptr noundef %page) #15
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @ntfs_get_block, ptr noundef %wbc) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4
  %retval.0 = phi i32 [ %call3, %if.then4 ], [ %call6, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -360
  %ni_flags.i = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ni_flags.i, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then:                                          ; preds = %entry
  %ni_lock.i = getelementptr i8, ptr %3, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #15
  %call3 = tail call i32 @attr_data_read_resident(ptr noundef %add.ptr.i, ptr noundef %page) #15
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 556, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 556
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @unlock_page(ptr noundef %page) #15
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %std_fa.i = getelementptr i8, ptr %3, i32 -172
  %6 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %std_fa.i, align 4
  %and.i28 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i = icmp eq i32 %and.i28, 0
  br i1 %tobool.not.i, label %is_compressed.exit, label %if.end5.if.then7_crit_edge

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

is_compressed.exit:                               ; preds = %if.end5
  %8 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ni_flags.i, align 4
  %and1.i = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.i.not, label %if.end9, label %is_compressed.exit.if.then7_crit_edge

is_compressed.exit.if.then7_crit_edge:            ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then7

if.then7:                                         ; preds = %is_compressed.exit.if.then7_crit_edge, %if.end5.if.then7_crit_edge
  %ni_lock.i30 = getelementptr i8, ptr %3, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i30, i32 noundef 4) #15
  %call8 = tail call i32 @ni_readpage_cmpr(ptr noundef %add.ptr.i, ptr noundef %page) #15
  tail call void @mutex_unlock(ptr noundef %ni_lock.i30) #15
  br label %cleanup

if.end9:                                          ; preds = %is_compressed.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @ntfs_get_block) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then4
  %retval.0 = phi i32 [ %call3, %if.then4 ], [ %call8, %if.then7 ], [ %call10, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %ni_flags.i = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ni_flags.i, align 4
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool.not, ptr @ntfs_get_block, ptr null
  %call2 = tail call i32 @mpage_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef %cond) #15
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntfs_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ni_flags.i = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ni_flags.i, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %std_fa.i = getelementptr i8, ptr %3, i32 -172
  %6 = ptrtoint ptr %std_fa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %std_fa.i, align 4
  %and.i28 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool.not.i = icmp ne i32 %and.i28, 0
  %and1.i = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i = icmp ne i32 %and1.i, 0
  %or.cond33 = select i1 %tobool.not.i, i1 true, i1 %tobool2.i
  br i1 %or.cond33, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_valid = getelementptr i8, ptr %3, i32 -288
  %8 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_valid, align 8
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %10 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %_index.i, align 4
  %conv.i = zext i32 %11 to i64
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end5
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !80
  %and.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  %13 = tail call ptr @llvm.returnaddress(i32 0) #15
  %14 = ptrtoint ptr %13 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %14) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %14) #15
  tail call void @trace_hardirqs_on() #15
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %15 = tail call ptr @llvm.returnaddress(i32 0) #15
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %16) #15
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %16) #15
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !81
  %and.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !57

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #15, !srcloc !82
  %18 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !83
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !84
  %20 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i30 = and i32 %21, 1
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %19, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %21, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !85
  %22 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !86
  %24 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %25, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  %mul.i = shl nuw nsw i64 %conv.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %23)
  %cmp = icmp uge i64 %9, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %9)
  %cmp8.not = icmp ugt i64 %mul.i, %9
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %i_size_read.exit.if.end14_crit_edge, label %land.lhs.true9

i_size_read.exit.if.end14_crit_edge:              ; preds = %i_size_read.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true9:                                   ; preds = %i_size_read.exit
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 4
  %26 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %_nr_pages.i, align 4
  %mul.i32 = shl i32 %27, 12
  %conv = zext i32 %mul.i32 to i64
  %add = add nuw nsw i64 %mul.i, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %add)
  %cmp11 = icmp ult i64 %9, %add
  br i1 %cmp11, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end14_crit_edge

land.lhs.true9.if.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true9.if.end14_crit_edge, %i_size_read.exit.if.end14_crit_edge
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @ntfs_get_block) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %land.lhs.true9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef readnone %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -360
  %2 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pagep, align 4
  %ni_flags.i = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ni_flags.i, align 4
  %and.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then:                                          ; preds = %entry
  %5 = lshr i64 %pos, 12
  %conv = trunc i64 %5 to i32
  %call2 = tail call ptr @grab_cache_page_write_begin(ptr noundef %mapping, i32 noundef %conv, i32 noundef %flags) #15
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.cleanup14_crit_edge, label %if.end

if.then.cleanup14_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup14

if.end:                                           ; preds = %if.then
  %ni_lock.i = getelementptr i8, ptr %1, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #15
  %call5 = tail call i32 @attr_data_read_resident(ptr noundef %add.ptr.i, ptr noundef nonnull %call2) #15
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %pagep, align 4
  br label %cleanup14

if.end8:                                          ; preds = %if.end
  tail call void @unlock_page(ptr noundef nonnull %call2) #15
  %7 = getelementptr inbounds %struct.page, ptr %call2, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %9, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %call2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %10, %if.end.i.i ]
  %11 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %12 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.13) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_write_begin, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %11, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %11) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 556, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 556
  br i1 %cmp.not, label %put_page.exit.if.end12_crit_edge, label %put_page.exit.cleanup14_crit_edge

put_page.exit.cleanup14_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup14

put_page.exit.if.end12_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.end12:                                         ; preds = %put_page.exit.if.end12_crit_edge, %entry.if.end12_crit_edge
  %call13 = tail call i32 @block_write_begin(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr noundef nonnull @ntfs_get_block_write_begin) #15
  br label %cleanup14

cleanup14:                                        ; preds = %if.end12, %put_page.exit.cleanup14_crit_edge, %if.then7, %if.then.cleanup14_crit_edge
  %err.1 = phi i32 [ %call13, %if.end12 ], [ %call5, %put_page.exit.cleanup14_crit_edge ], [ -12, %if.then.cleanup14_crit_edge ], [ 0, %if.then7 ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #0 align 64 {
entry:
  %tmp31 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_valid = getelementptr i8, ptr %1, i32 -288
  %2 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_valid, align 8
  %ni_flags.i = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ni_flags.i, align 4
  %and.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -360
  %ni_lock.i = getelementptr i8, ptr %1, i32 -264
  tail call void @mutex_lock_nested(ptr noundef %ni_lock.i, i32 noundef 4) #15
  %call2 = tail call i32 @attr_data_write_resident(ptr noundef %add.ptr.i, ptr noundef %page) #15
  tail call void @mutex_unlock(ptr noundef %ni_lock.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end24_crit_edge

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then4:                                         ; preds = %if.then
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !57

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #15, !srcloc !87
  unreachable

PagePrivate.exit:                                 ; preds = %if.then4
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  %10 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %PagePrivate.exit.if.end23_crit_edge, label %if.then7

PagePrivate.exit.if.end23_crit_edge:              ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then7:                                         ; preds = %PagePrivate.exit
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i69 = icmp eq i32 %12, -1
  br i1 %cmp.i.not.i69, label %if.then.i70, label %PagePrivate.exit73, !prof !57

if.then.i70:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.15) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #15, !srcloc !87
  unreachable

PagePrivate.exit73:                               ; preds = %if.then7
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  %15 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  br i1 %tobool9.not, label %do.body14, label %do.end19, !prof !57

do.body14:                                        ; preds = %PagePrivate.exit73
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs3/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 928, 0\0A.popsection", ""() #15, !srcloc !88
  unreachable

do.end19:                                         ; preds = %PagePrivate.exit73
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %private, align 4
  %18 = inttoptr i32 %17 to ptr
  br label %do.body20

do.body20:                                        ; preds = %set_buffer_uptodate.exit.do.body20_crit_edge, %do.end19
  %bh.0 = phi ptr [ %18, %do.end19 ], [ %22, %set_buffer_uptodate.exit.do.body20_crit_edge ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %bh.0) #15
  %19 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i74 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i74)
  %tobool.not.i = icmp eq i32 %and1.i.i74, 0
  br i1 %tobool.not.i, label %if.then.i75, label %do.body20.set_buffer_uptodate.exit_crit_edge

do.body20.set_buffer_uptodate.exit_crit_edge:     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_buffer_uptodate.exit

if.then.i75:                                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #15
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i75, %do.body20.set_buffer_uptodate.exit_crit_edge
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %21 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp eq ptr %22, %18
  br i1 %cmp.not, label %set_buffer_uptodate.exit.if.end23_crit_edge, label %set_buffer_uptodate.exit.do.body20_crit_edge

set_buffer_uptodate.exit.do.body20_crit_edge:     ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body20

set_buffer_uptodate.exit.if.end23_crit_edge:      ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end23:                                         ; preds = %set_buffer_uptodate.exit.if.end23_crit_edge, %PagePrivate.exit.if.end23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !74
  %23 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !66

if.then.i.i.i:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.10) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #15, !srcloc !68
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #15
  br label %if.end24

if.end24:                                         ; preds = %SetPageUptodate.exit, %if.then.if.end24_crit_edge
  %err.0 = phi i32 [ %call2, %if.then.if.end24_crit_edge ], [ %copied, %SetPageUptodate.exit ]
  tail call void @unlock_page(ptr noundef %page) #15
  %26 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %28, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %29, %if.end.i.i ]
  %30 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %31 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %30, ptr noundef nonnull @.str.13) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !75
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !77
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ntfs_write_end, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !79

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %30, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end26_crit_edge

folio_put_testzero.exit.i.i.if.end26_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %30) #15
  br label %if.end26

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call25 = tail call i32 @generic_write_end(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %page, ptr noundef %fsdata) #15
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end26_crit_edge
  %dirty.1.off0 = phi i1 [ false, %if.else ], [ %tobool3.not, %folio_put_testzero.exit.i.i.if.end26_crit_edge ], [ %tobool3.not, %if.then.i4.i ]
  %err.1 = phi i32 [ %call25, %if.else ], [ %err.0, %folio_put_testzero.exit.i.i.if.end26_crit_edge ], [ %err.0, %if.then.i4.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %err.1)
  %cmp27 = icmp sgt i32 %err.1, -1
  br i1 %cmp27, label %if.then28, label %if.end26.if.end41_crit_edge

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then28:                                        ; preds = %if.end26
  %std_fa = getelementptr i8, ptr %1, i32 -172
  %34 = ptrtoint ptr %std_fa to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %std_fa, align 4
  %and = and i32 %35, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end33.thread, label %if.end33

if.end33.thread:                                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp31) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp31, ptr noundef %1) #15
  %36 = call ptr @memcpy(ptr %i_mtime, ptr %tmp31, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp31) #15
  %37 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  %38 = ptrtoint ptr %std_fa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %std_fa, align 4
  %or = or i32 %39, 536870912
  store i32 %or, ptr %std_fa, align 4
  br label %if.then39

if.end33:                                         ; preds = %if.then28
  %40 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_valid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %41)
  %cmp35.not = icmp ne i64 %3, %41
  %spec.select = select i1 %cmp35.not, i1 true, i1 %dirty.1.off0
  br i1 %spec.select, label %if.end33.if.then39_crit_edge, label %if.end33.if.end41_crit_edge

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.end33.if.then39_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then39

if.then39:                                        ; preds = %if.end33.if.then39_crit_edge, %if.end33.thread
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #15
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end33.if.end41_crit_edge, %if.end26.if.end41_crit_edge
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ntfs_bmap(ptr noundef %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @generic_block_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @ntfs_get_block_bmap) #15
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %6 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ki_pos, align 8
  %ni_flags.i = getelementptr i8, ptr %5, i32 -4
  %8 = ptrtoint ptr %ni_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ni_flags.i, align 4
  %and.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %10 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_source.i, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool3.not, ptr @ntfs_get_block_direct_IO_R, ptr @ntfs_get_block_direct_IO_W
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_bdev.i, align 4
  %call.i = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %15, ptr noundef %iter, ptr noundef nonnull %cond, ptr noundef null, ptr noundef null, i32 noundef 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end7:                                          ; preds = %if.end
  %conv854 = zext i32 %call.i to i64
  %add = add i64 %7, %conv854
  %i_valid = getelementptr i8, ptr %5, i32 -288
  %16 = ptrtoint ptr %i_valid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_valid, align 8
  br i1 %tobool3.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %17)
  %cmp11 = icmp sgt i64 %add, %17
  br i1 %cmp11, label %land.lhs.true, label %if.then10.out_crit_edge

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true:                                    ; preds = %if.then10
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %5, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %20)
  %cmp15 = icmp eq i16 %20, 24576
  br i1 %cmp15, label %land.lhs.true.out_crit_edge, label %if.then17

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %i_valid to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add, ptr %i_valid, align 8
  tail call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #15
  br label %out

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %17)
  %cmp20 = icmp slt i64 %7, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %17)
  %cmp23 = icmp sgt i64 %add, %17
  %or.cond = select i1 %cmp20, i1 %cmp23, i1 false
  br i1 %or.cond, label %if.then25, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub i64 %add, %17
  %conv26 = trunc i64 %sub to i32
  tail call void @iov_iter_revert(ptr noundef %iter, i32 noundef %conv26) #15
  %call29 = tail call i32 @iov_iter_zero(i32 noundef %conv26, ptr noundef %iter) #15
  br label %out

out:                                              ; preds = %if.then25, %if.else.out_crit_edge, %if.then17, %land.lhs.true.out_crit_edge, %if.then10.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %call.i, %land.lhs.true.out_crit_edge ], [ %call.i, %if.then17 ], [ %call.i, %if.then10.out_crit_edge ], [ %call.i, %if.then25 ], [ %call.i, %if.else.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @run_add_entry(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mi_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_printk(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_enum_attr_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_load_attr_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_cmp_names_cpu(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_bytes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i64 @attr_ondisk_size(ptr nocapture noundef readonly %attr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cond.false4, label %cond.true

cond.true:                                        ; preds = %entry
  %flags = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 4
  %4 = and i16 %3, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool2.not = icmp eq i16 %4, 0
  br i1 %tobool2.not, label %cond.false, label %cond.true3

cond.true3:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #17
  %total_size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 8
  %5 = ptrtoint ptr %total_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %total_size, align 8
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  br label %cond.end7

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #17
  %alloc_size = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7, i32 0, i32 5
  %8 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %alloc_size, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  br label %cond.end7

cond.false4:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %11 = getelementptr inbounds %struct.ATTRIB, ptr %attr, i32 0, i32 7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %add = add i32 %14, 7
  %and5 = and i32 %add, -8
  %conv6 = zext i32 %and5 to i64
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false4, %cond.false, %cond.true3
  %cond8 = phi i64 [ %conv6, %cond.false4 ], [ %7, %cond.true3 ], [ %10, %cond.false ]
  ret i64 %cond8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_parse_reparse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @indx_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_get_wsl_perm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_unpack_ex(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iget_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_data_read_resident(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_data_get_block(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_sparse_cluster(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_bh_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_on_buffer(ptr noundef %bh) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 354) #15
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__wait_on_buffer(ptr noundef %bh) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_nls_to_utf16(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_readlink_hlp(ptr noundef %inode, ptr noundef %buffer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -360
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buffer, align 1
  %call1 = tail call ptr @ni_find_attr(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null, i32 noundef -1073741824, ptr noundef null, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %non_res = getelementptr inbounds %struct.ATTRIB, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %non_res to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %non_res, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.i4, label %if.end9.thread

if.end.i4:                                        ; preds = %if.end
  %size.i = getelementptr inbounds %struct.ATTRIB, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  %10 = getelementptr inbounds %struct.ATTRIB, ptr %call1, i32 0, i32 7
  %data_off.i = getelementptr inbounds %struct.ATTR_RESIDENT, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %data_off.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data_off.i, align 4
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #15
  %conv.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add.i)
  %cmp.i3 = icmp ult i32 %9, %add.i
  br i1 %cmp.i3, label %if.end.i4.out_crit_edge, label %if.end3.i

if.end.i4.out_crit_edge:                          ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end3.i:                                        ; preds = %if.end.i4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %16)
  %cmp4.i = icmp ult i32 %16, 24
  %add.ptr.i5 = getelementptr i8, ptr %call1, i32 %conv.i
  %tobool5.not = icmp eq ptr %add.ptr.i5, null
  %or.cond25 = select i1 %cmp4.i, i1 true, i1 %tobool5.not
  br i1 %or.cond25, label %if.end3.i.out_crit_edge, label %if.end9

if.end3.i.out_crit_edge:                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end9:                                          ; preds = %if.end3.i
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %10, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %conv = zext i32 %19 to i64
  %max_size = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 31, i32 2
  %20 = ptrtoint ptr %max_size to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %max_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %conv)
  %cmp = icmp ult i64 %21, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp11 = icmp ult i32 %19, 5
  %or.cond = or i1 %cmp11, %cmp
  br i1 %or.cond, label %if.end9.out_crit_edge, label %if.end9.if.end27_crit_edge

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end9.thread:                                   ; preds = %if.end
  %data_size8 = getelementptr inbounds %struct.ATTRIB, ptr %call1, i32 0, i32 7, i32 0, i32 6
  %22 = ptrtoint ptr %data_size8 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %data_size8, align 8
  %24 = tail call i64 @llvm.bswap.i64(i64 %23)
  %max_size10 = getelementptr inbounds %struct.ntfs_sb_info, ptr %3, i32 0, i32 31, i32 2
  %25 = ptrtoint ptr %max_size10 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %max_size10, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp12 = icmp ugt i64 %24, %26
  call void @__sanitizer_cov_trace_const_cmp8(i64 5, i64 %24)
  %cmp1113 = icmp ult i64 %24, 5
  %or.cond14 = or i1 %cmp12, %cmp1113
  br i1 %or.cond14, label %if.end9.thread.out_crit_edge, label %if.then16

if.end9.thread.out_crit_edge:                     ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then16:                                        ; preds = %if.end9.thread
  %conv17 = trunc i64 %24 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv17, i32 noundef 3136) #20
  %tobool19.not = icmp eq ptr %call9.i, null
  br i1 %tobool19.not, label %if.then16.out_crit_edge, label %if.end21

if.then16.out_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end21:                                         ; preds = %if.then16
  %run = getelementptr i8, ptr %inode, i32 -60
  %call23 = tail call i32 @ntfs_read_run_nb(ptr noundef %3, ptr noundef %run, i64 noundef 0, ptr noundef nonnull %call9.i, i32 noundef %conv17, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end21.if.end27_crit_edge, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27

if.end27:                                         ; preds = %if.end21.if.end27_crit_edge, %if.end9.if.end27_crit_edge
  %size.016 = phi i64 [ %24, %if.end21.if.end27_crit_edge ], [ %conv, %if.end9.if.end27_crit_edge ]
  %err.0 = phi i32 [ 0, %if.end21.if.end27_crit_edge ], [ -22, %if.end9.if.end27_crit_edge ]
  %to_free.0 = phi ptr [ %call9.i, %if.end21.if.end27_crit_edge ], [ null, %if.end9.if.end27_crit_edge ]
  %rp.1 = phi ptr [ %call9.i, %if.end21.if.end27_crit_edge ], [ %add.ptr.i5, %if.end9.if.end27_crit_edge ]
  %27 = ptrtoint ptr %rp.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rp.1, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %28, label %sw.default [
    i32 50331808, label %sw.bb
    i32 201326752, label %sw.bb33
    i32 436207760, label %if.end27.if.end47_crit_edge
    i32 437256336, label %if.end27.if.end47_crit_edge28
    i32 438304912, label %if.end27.if.end47_crit_edge29
    i32 439353488, label %if.end27.if.end47_crit_edge30
    i32 440402064, label %if.end27.if.end47_crit_edge31
    i32 441450640, label %if.end27.if.end47_crit_edge32
    i32 442499216, label %if.end27.if.end47_crit_edge33
    i32 443547792, label %if.end27.if.end47_crit_edge34
    i32 444596368, label %if.end27.if.end47_crit_edge35
    i32 445644944, label %if.end27.if.end47_crit_edge36
    i32 446693520, label %if.end27.if.end47_crit_edge37
    i32 447742096, label %if.end27.if.end47_crit_edge38
    i32 448790672, label %if.end27.if.end47_crit_edge39
    i32 449839248, label %if.end27.if.end47_crit_edge40
    i32 450887824, label %if.end27.if.end47_crit_edge41
    i32 451936400, label %if.end27.if.end47_crit_edge42
  ]

if.end27.if.end47_crit_edge42:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge41:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge40:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge39:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge38:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge37:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge36:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge35:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge34:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge33:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge32:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge31:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge30:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge29:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge28:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

if.end27.if.end47_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47

sw.bb:                                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp8(i64 17, i64 %size.016)
  %cmp28 = icmp ult i64 %size.016, 17
  br i1 %cmp28, label %sw.bb.out_crit_edge, label %if.end31

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end31:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %30 = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.1, i32 0, i32 3
  %PrintNameOffset = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.1, i32 0, i32 3, i32 0, i32 1
  %31 = ptrtoint ptr %PrintNameOffset to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %PrintNameOffset, align 4
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv32 = zext i16 %33 to i32
  %add = add nuw nsw i32 %conv32, 16
  %add.ptr = getelementptr i8, ptr %rp.1, i32 %add
  %PrintNameLength = getelementptr inbounds %struct.anon.96, ptr %30, i32 0, i32 3
  %34 = ptrtoint ptr %PrintNameLength to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %PrintNameLength, align 2
  %36 = tail call i16 @llvm.bswap.i16(i16 %35)
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp8(i64 21, i64 %size.016)
  %cmp34 = icmp ult i64 %size.016, 21
  br i1 %cmp34, label %sw.bb33.out_crit_edge, label %if.end37

sw.bb33.out_crit_edge:                            ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end37:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #17
  %37 = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.1, i32 0, i32 3
  %PrintNameOffset38 = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.1, i32 0, i32 3, i32 0, i32 1
  %38 = ptrtoint ptr %PrintNameOffset38 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %PrintNameOffset38, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv39 = zext i16 %40 to i32
  %add40 = add nuw nsw i32 %conv39, 20
  %add.ptr41 = getelementptr i8, ptr %rp.1, i32 %add40
  %PrintNameLength42 = getelementptr inbounds %struct.anon.97, ptr %37, i32 0, i32 3
  %41 = ptrtoint ptr %PrintNameLength42 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %PrintNameLength42, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  br label %sw.epilog

if.end47:                                         ; preds = %if.end27.if.end47_crit_edge, %if.end27.if.end47_crit_edge28, %if.end27.if.end47_crit_edge29, %if.end27.if.end47_crit_edge30, %if.end27.if.end47_crit_edge31, %if.end27.if.end47_crit_edge32, %if.end27.if.end47_crit_edge33, %if.end27.if.end47_crit_edge34, %if.end27.if.end47_crit_edge35, %if.end27.if.end47_crit_edge36, %if.end27.if.end47_crit_edge37, %if.end27.if.end47_crit_edge38, %if.end27.if.end47_crit_edge39, %if.end27.if.end47_crit_edge40, %if.end27.if.end47_crit_edge41, %if.end27.if.end47_crit_edge42
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 5723623521086174821, ptr %buffer, align 1
  br label %out

sw.default:                                       ; preds = %if.end27
  %45 = and i32 %28, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %45)
  %46 = icmp ne i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 25, i64 %size.016)
  %cmp56 = icmp ult i64 %size.016, 25
  %or.cond2 = select i1 %46, i1 true, i1 %cmp56
  br i1 %or.cond2, label %sw.default.out_crit_edge, label %if.end59

sw.default.out_crit_edge:                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end59:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr60 = getelementptr i8, ptr %rp.1, i32 24
  %ReparseDataLength = getelementptr inbounds %struct.REPARSE_DATA_BUFFER, ptr %rp.1, i32 0, i32 1
  %47 = ptrtoint ptr %ReparseDataLength to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ReparseDataLength, align 4
  %49 = tail call i16 @llvm.bswap.i16(i16 %48)
  %sub = add i16 %49, -24
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end59, %if.end37, %if.end31
  %ulen.0 = phi i16 [ %sub, %if.end59 ], [ %43, %if.end37 ], [ %36, %if.end31 ]
  %uname.0 = phi ptr [ %add.ptr60, %if.end59 ], [ %add.ptr41, %if.end37 ], [ %add.ptr, %if.end31 ]
  %50 = lshr i16 %ulen.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %ulen.0)
  %tobool65.not = icmp ult i16 %ulen.0, 2
  br i1 %tobool65.not, label %sw.epilog.out_crit_edge, label %lor.lhs.false66

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

lor.lhs.false66:                                  ; preds = %sw.epilog
  %conv67 = zext i16 %50 to i32
  %add.ptr68 = getelementptr i16, ptr %uname.0, i32 %conv67
  %idx.ext = trunc i64 %size.016 to i32
  %add.ptr69 = getelementptr i8, ptr %rp.1, i32 %idx.ext
  %cmp70 = icmp ugt ptr %add.ptr68, %add.ptr69
  br i1 %cmp70, label %lor.lhs.false66.out_crit_edge, label %if.end73

lor.lhs.false66.out_crit_edge:                    ; preds = %lor.lhs.false66
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end73:                                         ; preds = %lor.lhs.false66
  %sub75 = add nsw i32 %conv67, -1
  %arrayidx = getelementptr i16, ptr %uname.0, i32 %sub75
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool76.not = icmp eq i16 %52, 0
  %conv80 = trunc i32 %sub75 to i16
  %spec.select = select i1 %tobool76.not, i16 %conv80, i16 %50
  %conv82 = zext i16 %spec.select to i32
  %call83 = tail call i32 @ntfs_utf16_to_nls(ptr noundef %3, ptr noundef %uname.0, i32 noundef %conv82, ptr noundef %buffer, i32 noundef 4096) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end73.out_crit_edge, label %for.cond.preheader

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.cond.preheader:                               ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp8826.not = icmp eq i32 %call83, 0
  br i1 %cmp8826.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx90 = getelementptr i8, ptr %buffer, i32 %i.027
  %53 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx90, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %54)
  %cmp92 = icmp eq i8 %54, 92
  br i1 %cmp92, label %if.then94, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then94:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 47, ptr %arrayidx90, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then94, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %call83
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %arrayidx97 = getelementptr i8, ptr %buffer, i32 %call83
  %56 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx97, align 1
  br label %out

out:                                              ; preds = %for.end, %if.end73.out_crit_edge, %lor.lhs.false66.out_crit_edge, %sw.epilog.out_crit_edge, %sw.default.out_crit_edge, %if.end47, %sw.bb33.out_crit_edge, %sw.bb.out_crit_edge, %if.end21.out_crit_edge, %if.then16.out_crit_edge, %if.end9.thread.out_crit_edge, %if.end9.out_crit_edge, %if.end3.i.out_crit_edge, %if.end.i4.out_crit_edge, %entry.out_crit_edge
  %err.2 = phi i32 [ -22, %if.end9.out_crit_edge ], [ %err.0, %sw.default.out_crit_edge ], [ %err.0, %lor.lhs.false66.out_crit_edge ], [ %call83, %if.end73.out_crit_edge ], [ %call83, %for.end ], [ %err.0, %sw.epilog.out_crit_edge ], [ 8, %if.end47 ], [ %err.0, %sw.bb33.out_crit_edge ], [ %err.0, %sw.bb.out_crit_edge ], [ %call23, %if.end21.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -12, %if.then16.out_crit_edge ], [ -22, %if.end9.thread.out_crit_edge ], [ -22, %if.end.i4.out_crit_edge ], [ -22, %if.end3.i.out_crit_edge ]
  %to_free.1 = phi ptr [ null, %if.end9.out_crit_edge ], [ %to_free.0, %sw.default.out_crit_edge ], [ %to_free.0, %lor.lhs.false66.out_crit_edge ], [ %to_free.0, %if.end73.out_crit_edge ], [ %to_free.0, %for.end ], [ %to_free.0, %sw.epilog.out_crit_edge ], [ %to_free.0, %if.end47 ], [ %to_free.0, %sw.bb33.out_crit_edge ], [ %to_free.0, %sw.bb.out_crit_edge ], [ %call9.i, %if.end21.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %if.then16.out_crit_edge ], [ null, %if.end9.thread.out_crit_edge ], [ null, %if.end.i4.out_crit_edge ], [ null, %if.end3.i.out_crit_edge ]
  tail call void @kfree(ptr noundef %to_free.1) #15
  ret i32 %err.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ni_find_attr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_run_nb(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_utf16_to_nls(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attr_data_write_resident(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_readpage_cmpr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepages(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_block_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_get_block_bmap(ptr noundef %inode, i64 noundef %vsn, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %3 to i64
  %shl = shl i64 %vsn, %sh_prom
  %call = tail call fastcc i32 @ntfs_get_block_vbo(ptr noundef %inode, i64 noundef %shl, ptr noundef %bh_result, i32 noundef %create, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_get_block_direct_IO_W(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %iblock, %sh_prom
  %call = tail call fastcc i32 @ntfs_get_block_vbo(ptr noundef %inode, i64 noundef %shl, ptr noundef %bh_result, i32 noundef %create, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_get_block_direct_IO_R(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %iblock, %sh_prom
  %call = tail call fastcc i32 @ntfs_get_block_vbo(ptr noundef %inode, i64 noundef %shl, ptr noundef %bh_result, i32 noundef %create, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_zero(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__func__.ntfs3_write_inode, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs3/inode.c", i32 1005, i32 9}
!2 = !{ptr @__func__.ntfs_sync_inode, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/ntfs3/inode.c", i32 1010, i32 9}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs3/inode.c", i32 1066, i32 3}
!6 = !{ptr @ntfs_create_inode.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../fs/ntfs3/inode.c", i32 1574, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ntfs3/inode.c", i32 1734, i32 3}
!11 = !{ptr @__func__.ntfs_evict_inode, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/ntfs3/inode.c", i32 1754, i32 3}
!13 = !{ptr @ntfs_link_inode_operations, !14, !"ntfs_link_inode_operations", i1 false, i1 false}
!14 = !{!"../fs/ntfs3/inode.c", i32 1935, i32 31}
!15 = !{ptr @ntfs_aops, !16, !"ntfs_aops", i1 false, i1 false}
!16 = !{!"../fs/ntfs3/inode.c", i32 1944, i32 39}
!17 = !{ptr @ntfs_aops_cmpr, !18, !"ntfs_aops_cmpr", i1 false, i1 false}
!18 = !{!"../fs/ntfs3/inode.c", i32 1956, i32 39}
!19 = !{ptr @ntfs_read_mft.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../fs/ntfs3/inode.c", i32 61, i32 3}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ntfs3/inode.c", i32 80, i32 3}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/ntfs3/inode.c", i32 85, i32 3}
!25 = !{ptr @ntfs_read_mft.__key.5, !26, !"__key", i1 false, i1 false}
!26 = !{!"../fs/ntfs3/inode.c", i32 425, i32 4}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/mm.h", i32 717, i32 2}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/ntfs3/inode.c", i32 1862, i32 18}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{!"auto-init"}
!59 = !{i64 1075086, i64 1075113}
!60 = !{i64 1075781, i64 1075808, i64 1075841, i64 1075862, i64 1075889, i64 1075915}
!61 = !{i8 0, i8 2}
!62 = !{i64 2153732884}
!63 = !{i64 2152226428}
!64 = !{i64 2152226635}
!65 = !{i64 2153735655}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2150672909, i64 2150673400, i64 2150672946, i64 2150673002, i64 2150673036, i64 2150673060, i64 2150673101, i64 2150673122, i64 2150673150, i64 2150673184}
!68 = !{i64 2150619877, i64 2150620368, i64 2150619914, i64 2150619970, i64 2150620004, i64 2150620028, i64 2150620069, i64 2150620090, i64 2150620118, i64 2150620152}
!69 = !{i64 2148719990, i64 2148720022, i64 2148720051, i64 2148720085, i64 2148720116, i64 2148720139}
!70 = !{i64 2148809095}
!71 = !{i64 2151369769}
!72 = !{i64 2151378753, i64 2151378926, i64 2151378941, i64 2151378993, i64 2151379052, i64 2151379076, i64 2151379117, i64 2151379138, i64 2151379166, i64 2151379198}
!73 = !{i64 2151379628, i64 2151379801, i64 2151379816, i64 2151379868, i64 2151379927, i64 2151379951, i64 2151379992, i64 2151380013, i64 2151380041, i64 2151380073}
!74 = !{i64 2151370840}
!75 = !{i64 2153208948, i64 2153209431, i64 2153208985, i64 2153209041, i64 2153209075, i64 2153209099, i64 2153209140, i64 2153209161, i64 2153209189, i64 2153209223}
!76 = !{i64 2148799608}
!77 = !{i64 2148714317, i64 2148714349, i64 2148714378, i64 2148714412, i64 2148714443, i64 2148714466}
!78 = !{i64 2148799837}
!79 = !{i64 2148535730, i64 2148535735, i64 2148535748, i64 2148535792, i64 2148535826, i64 2148535847}
!80 = !{i64 1115812, i64 1115873}
!81 = !{i64 1118544}
!82 = !{i64 1118829}
!83 = !{i64 2152553963}
!84 = !{i64 2152553805}
!85 = !{i64 2152554133}
!86 = !{i64 2150139947}
!87 = !{i64 2151078583, i64 2151079074, i64 2151078620, i64 2151078676, i64 2151078710, i64 2151078734, i64 2151078775, i64 2151078796, i64 2151078824, i64 2151078858}
!88 = !{i64 2154951365, i64 2154951846, i64 2154951402, i64 2154951458, i64 2154951492, i64 2154951516, i64 2154951557, i64 2154951578, i64 2154951606, i64 2154951640}
