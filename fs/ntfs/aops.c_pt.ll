; ModuleID = '/llk/IR_all_yes/fs/ntfs/aops.c_pt.bc'
source_filename = "../fs/ntfs/aops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.60 }
%struct.atomic_t = type { i32 }
%union.anon.60 = type { i32 }
%struct.page = type { i32, %union.anon, %union.anon.77, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.77 = type { %struct.atomic_t }
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
%union.anon.81 = type { ptr }
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ATTR_RECORD = type { i32, i32, i8, i8, i16, i16, i16, %union.anon.88 }
%union.anon.88 = type { %struct.anon.90 }
%struct.anon.90 = type { i64, i64, i16, i8, [5 x i8], i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.89 = type { i32, i16, i8, i8 }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.84, %struct.mutex, i32, %union.anon.87 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%union.anon.84 = type { %struct.anon.86 }
%struct.anon.86 = type { i64, i32, i8, i8 }
%union.anon.87 = type { ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.runlist_element = type { i64, i64, i64 }
%struct.anon.83 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.big_ntfs_inode = type { %struct._ntfs_inode, %struct.inode }

@ntfs_normal_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ntfs_writepage, ptr @ntfs_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr null, ptr null, ptr @ntfs_bmap, ptr null, ptr null, ptr null, ptr null, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ntfs_compressed_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ntfs_writepage, ptr @ntfs_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ntfs_mst_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ntfs_writepage, ptr @ntfs_readpage, ptr null, ptr @__set_page_dirty_nobuffers, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/ntfs/aops.c\00", [17 x i8] zeroinitializer }, align 32
@__func__.ntfs_writepage = private unnamed_addr constant [15 x i8] c"ntfs_writepage\00", align 1
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Write outside i_size - truncated?\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Denying write access to encrypted file.\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Writing to compressed files is not supported yet.  Sorry.\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Writing to sparse files is not supported yet.  Sorry.\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"BUG()! page->index (0x%lx) > 0.  Aborting write.\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Error allocating memory. Redirtying page so we try again later.\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Resident attribute write failed with error %i.\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__func__.ntfs_write_mst_block = private unnamed_addr constant [21 x i8] c"ntfs_write_mst_block\00", align 1
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Entering for inode 0x%lx, attribute type 0x%x, page index 0x%lx.\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [139 x i8], [53 x i8] } { [139 x i8] c"Cannot write ntfs record 0x%llx (inode 0x%lx, attribute type 0x%x) because its location on disk could not be determined (error code %lli).\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"Failed to apply mst fixups (inode 0x%lx, attribute type 0x%x, page index 0x%lx, page offset 0x%x)!  Unmount and run chkdsk.\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [141 x i8], [51 x i8] } { [141 x i8] c"I/O error while writing ntfs record buffer (inode 0x%lx, attribute type 0x%x, page index 0x%lx, page offset 0x%lx)!  Unmount and run chkdsk.\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unlocking %s inode 0x%lx.\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"base\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extent\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"Page still contains one or more dirty ntfs records.  Redirtying the page starting at record 0x%lx.\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__func__.ntfs_write_block = private unnamed_addr constant [17 x i8] c"ntfs_write_block\00", align 1
@.str.23 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Error allocating page buffers.  Redirtying page so we try again later.\00", [57 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Writing beyond initialized size is not supported yet. Sorry.\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Writing into sparse regions is not supported yet. Sorry.\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [149 x i8], [43 x i8] } { [149 x i8] c"Failed to write to inode 0x%lx, attribute type 0x%x, vcn 0x%llx, offset 0x%x because its location on disk could not be determined%s (error code %i).\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" even after retrying\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__func__.ntfs_readpage = private unnamed_addr constant [14 x i8] c"ntfs_readpage\00", align 1
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Read outside i_size - truncated?\00", [63 x i8] zeroinitializer }, align 32
@__func__.ntfs_read_block = private unnamed_addr constant [16 x i8] c"ntfs_read_block\00", align 1
@.str.30 = internal constant { [150 x i8], [42 x i8] } { [150 x i8] c"Failed to read from inode 0x%lx, attribute type 0x%x, vcn 0x%llx, offset 0x%x because its location on disk could not be determined%s (error code %i).\00", [42 x i8] zeroinitializer }, align 32
@__func__.ntfs_end_buffer_async_read = private unnamed_addr constant [27 x i8] c"ntfs_end_buffer_async_read\00", align 1
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Buffer I/O error, logical block 0x%llx.\00", [56 x i8] zeroinitializer }, align 32
@__func__.ntfs_bmap = private unnamed_addr constant [10 x i8] c"ntfs_bmap\00", align 1
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Entering for mft_no 0x%lx, logical block 0x%llx.\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"BMAP does not make sense for %s attributes, returning 0.\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"non-data\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"resident\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"encrypted\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Not enough memory to complete mapping for inode 0x%lx.  Returning 0.\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Failed to complete mapping for inode 0x%lx.  Run chkdsk.  Returning 0.\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Done (returning hole).\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Done (returning block 0x%llx).\00", [33 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967292, i64 4294967293]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967284]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967201, i64 4294967284]
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"ntfs_normal_aops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1652, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"ntfs_compressed_aops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1667, i32 39 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"ntfs_mst_aops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1682, i32 39 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1359, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1375, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1385, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1392, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1422, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1499, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1508, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 414, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 920, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1059, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1154, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1201, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1271, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1291, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1309, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 44, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 678, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 354, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 260, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 564, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 681, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 748, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 784, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 398, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 303, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 91, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1557, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1560, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1606, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1611, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1621, i32 3 }
@___asan_gen_.181 = private constant [18 x i8] c"../fs/ntfs/aops.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 1642, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 452, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 1160, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @ntfs_normal_aops, ptr @ntfs_compressed_aops, ptr @ntfs_mst_aops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_normal_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_compressed_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntfs_mst_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 139, i32 192, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 149, i32 192, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 150, i32 192, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -528
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %page to i32
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %type = getelementptr i8, ptr %3, i32 -444
  %state.i = getelementptr i8, ptr %3, i32 -464
  %ext = getelementptr i8, ptr %3, i32 -8
  br label %retry_writepage

retry_writepage:                                  ; preds = %if.then209, %entry
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %retry_writepage._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !102

retry_writepage._compound_head.exit.i_crit_edge:  ; preds = %retry_writepage
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %retry_writepage
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %retry_writepage._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %retry_writepage._compound_head.exit.i_crit_edge ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %4, align 4
  %and.i16.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !103

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.then.i._compound_head.exit22.i_crit_edge, label %if.then.i19.i, !prof !102

if.then.i._compound_head.exit22.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit22.i

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %12, -1
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.then.i19.i, %if.then.i._compound_head.exit22.i_crit_edge
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %5, %if.then.i._compound_head.exit22.i_crit_edge ]
  %13 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #8, !srcloc !104
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %do.end10.i.PageLocked.exit_crit_edge, label %if.then.i26.i, !prof !102

do.end10.i.PageLocked.exit_crit_edge:             ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PageLocked.exit

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %12, -1
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.then.i26.i, %do.end10.i.PageLocked.exit_crit_edge
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %5, %do.end10.i.PageLocked.exit_crit_edge ]
  %14 = inttoptr i32 %retval.0.i28.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !103

do.body5:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1348, 0\0A.popsection", ""() #8, !srcloc !105
  unreachable

do.end10:                                         ; preds = %PageLocked.exit
  %call11 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %conv = zext i32 %18 to i64
  %sub = add i64 %call11, 4095
  %shr = ashr i64 %sub, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv)
  %cmp.not = icmp sgt i64 %shr, %conv
  br i1 %cmp.not, label %if.end20, label %if.then19, !prof !102

if.then19:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @block_invalidatepage(ptr noundef %page, i32 noundef 0, i32 noundef 4096) #8
  tail call void @unlock_page(ptr noundef %page) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1359, ptr noundef nonnull @__func__.ntfs_writepage, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end20:                                         ; preds = %do.end10
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %20)
  %cmp21.not = icmp eq i32 %20, -1610612736
  br i1 %cmp21.not, label %if.end20.if.end100_crit_edge, label %if.then23

if.end20.if.end100_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then23:                                        ; preds = %if.end20
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state.i, align 4
  %23 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool25.not = icmp eq i32 %23, 0
  br i1 %tobool25.not, label %if.end47, label %if.then26

if.then26:                                        ; preds = %if.then23
  tail call void @unlock_page(ptr noundef %page) #8
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %25)
  %cmp29.not = icmp eq i32 %25, -2147483648
  br i1 %cmp29.not, label %do.end46, label %do.body38, !prof !102

do.body38:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1374, 0\0A.popsection", ""() #8, !srcloc !106
  unreachable

do.end46:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1375, ptr noundef nonnull @__func__.ntfs_writepage, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end47:                                         ; preds = %if.then23
  %26 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state.i, align 4
  %28 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool49.not = icmp eq i32 %28, 0
  br i1 %tobool49.not, label %if.end47.if.end91_crit_edge, label %land.lhs.true

if.end47.if.end91_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

land.lhs.true:                                    ; preds = %if.end47
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i, align 4
  %31 = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool51.not = icmp eq i32 %31, 0
  br i1 %tobool51.not, label %land.lhs.true.if.end91_crit_edge, label %do.body53

land.lhs.true.if.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.body53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %20)
  %cmp55.not = icmp eq i32 %20, -2147483648
  br i1 %cmp55.not, label %do.body73, label %do.body64, !prof !102

do.body64:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1380, 0\0A.popsection", ""() #8, !srcloc !107
  unreachable

do.body73:                                        ; preds = %do.body53
  %name_len = getelementptr i8, ptr %3, i32 -436
  %32 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool74.not = icmp eq i32 %33, 0
  br i1 %tobool74.not, label %do.end90, label %do.body82, !prof !102

do.body82:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1381, 0\0A.popsection", ""() #8, !srcloc !108
  unreachable

do.end90:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_page(ptr noundef %page) #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_writepage, ptr noundef %35, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end91:                                         ; preds = %land.lhs.true.if.end91_crit_edge, %if.end47.if.end91_crit_edge
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i, align 4
  %38 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool93.not = icmp eq i32 %38, 0
  br i1 %tobool93.not, label %if.end91.if.end100_crit_edge, label %land.lhs.true94

if.end91.if.end100_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

land.lhs.true94:                                  ; preds = %if.end91
  %39 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i, align 4
  %41 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool96.not = icmp eq i32 %41, 0
  br i1 %tobool96.not, label %land.lhs.true94.if.end100_crit_edge, label %if.then97

land.lhs.true94.if.end100_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then97:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_page(ptr noundef %page) #8
  %i_sb98 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %42 = ptrtoint ptr %i_sb98 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb98, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_writepage, ptr noundef %43, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end100:                                        ; preds = %land.lhs.true94.if.end100_crit_edge, %if.end91.if.end100_crit_edge, %if.end20.if.end100_crit_edge
  %44 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i, align 4
  %46 = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool102.not = icmp eq i32 %46, 0
  br i1 %tobool102.not, label %do.body119, label %if.then103

if.then103:                                       ; preds = %if.end100
  %shr106 = ashr i64 %call11, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr106, i64 %conv)
  %cmp107.not = icmp sgt i64 %shr106, %conv
  br i1 %cmp107.not, label %if.then103.if.end111_crit_edge, label %if.then109

if.then103.if.end111_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end111

if.then109:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  %47 = trunc i64 %call11 to i32
  %conv110 = and i32 %47, 4095
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %conv110, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.then103.if.end111_crit_edge
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %state.i, align 4
  %50 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool113.not = icmp eq i32 %50, 0
  br i1 %tobool113.not, label %if.end116, label %if.then114

if.then114:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %call115 = tail call fastcc i32 @ntfs_write_mst_block(ptr noundef %page, ptr noundef %wbc)
  br label %cleanup

if.end116:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %call117 = tail call fastcc i32 @ntfs_write_block(ptr noundef %page, ptr noundef %wbc)
  br label %cleanup

do.body119:                                       ; preds = %if.end100
  %51 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp.i.not.i411 = icmp eq i32 %52, -1
  br i1 %cmp.i.not.i411, label %if.then.i412, label %PagePrivate.exit, !prof !103

if.then.i412:                                     ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit:                                 ; preds = %do.body119
  %53 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %page, align 4
  %55 = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool121.not = icmp eq i32 %55, 0
  br i1 %tobool121.not, label %do.body138, label %do.body129, !prof !102

do.body129:                                       ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1419, 0\0A.popsection", ""() #8, !srcloc !110
  unreachable

do.body138:                                       ; preds = %PagePrivate.exit
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %4, align 4
  %and.i.i490 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i490)
  %tobool.not.i.i491 = icmp eq i32 %and.i.i490, 0
  br i1 %tobool.not.i.i491, label %do.body138._compound_head.exit.i496_crit_edge, label %if.then.i.i493, !prof !102

do.body138._compound_head.exit.i496_crit_edge:    ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i496

if.then.i.i493:                                   ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i492 = add i32 %57, -1
  br label %_compound_head.exit.i496

_compound_head.exit.i496:                         ; preds = %if.then.i.i493, %do.body138._compound_head.exit.i496_crit_edge
  %retval.0.i.i495 = phi i32 [ %sub.i.i492, %if.then.i.i493 ], [ %5, %do.body138._compound_head.exit.i496_crit_edge ]
  %58 = inttoptr i32 %retval.0.i.i495 to ptr
  %59 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !102

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i496
  call void @__sanitizer_cov_trace_pc() #10
  %62 = inttoptr i32 %retval.0.i.i495 to ptr
  tail call void @dump_page(ptr noundef %62, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i496
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %58, align 4
  %65 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.i.not.i = icmp eq i32 %65, 0
  br i1 %tobool.i.not.i, label %do.body150, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  %66 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp160.not = icmp eq i32 %67, 0
  br i1 %cmp160.not, label %if.end191, label %if.then168, !prof !102

do.body150:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1420, 0\0A.popsection", ""() #8, !srcloc !113
  unreachable

if.then168:                                       ; preds = %PageUptodate.exit
  %i_sb169 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %68 = ptrtoint ptr %i_sb169 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb169, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_writepage, ptr noundef %69, ptr noundef nonnull @.str.5, i32 noundef %67) #8
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %4, align 4
  %and.i.i414 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i414)
  %tobool.not.i.i415 = icmp eq i32 %and.i.i414, 0
  br i1 %tobool.not.i.i415, label %if.then168._compound_head.exit.i423_crit_edge, label %if.then.i.i417, !prof !102

if.then168._compound_head.exit.i423_crit_edge:    ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i423

if.then.i.i417:                                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i416 = add i32 %71, -1
  br label %_compound_head.exit.i423

_compound_head.exit.i423:                         ; preds = %if.then.i.i417, %if.then168._compound_head.exit.i423_crit_edge
  %retval.0.i.i419 = phi i32 [ %sub.i.i416, %if.then.i.i417 ], [ %5, %if.then168._compound_head.exit.i423_crit_edge ]
  %72 = inttoptr i32 %retval.0.i.i419 to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp.i.not.i420 = icmp eq i32 %74, -1
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %4, align 4
  %and.i16.i421 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i421)
  %tobool.not.i17.i422 = icmp eq i32 %and.i16.i421, 0
  br i1 %cmp.i.not.i420, label %if.then.i424, label %do.end10.i430, !prof !103

if.then.i424:                                     ; preds = %_compound_head.exit.i423
  br i1 %tobool.not.i17.i422, label %if.then.i424._compound_head.exit22.i429_crit_edge, label %if.then.i19.i426, !prof !102

if.then.i424._compound_head.exit22.i429_crit_edge: ; preds = %if.then.i424
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit22.i429

if.then.i19.i426:                                 ; preds = %if.then.i424
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i425 = add i32 %76, -1
  br label %_compound_head.exit22.i429

_compound_head.exit22.i429:                       ; preds = %if.then.i19.i426, %if.then.i424._compound_head.exit22.i429_crit_edge
  %retval.0.i21.i428 = phi i32 [ %sub.i18.i425, %if.then.i19.i426 ], [ %5, %if.then.i424._compound_head.exit22.i429_crit_edge ]
  %77 = inttoptr i32 %retval.0.i21.i428 to ptr
  tail call void @dump_page(ptr noundef %77, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !114
  unreachable

do.end10.i430:                                    ; preds = %_compound_head.exit.i423
  br i1 %tobool.not.i17.i422, label %do.end10.i430.PageWriteback.exit_crit_edge, label %if.then.i26.i432, !prof !102

do.end10.i430.PageWriteback.exit_crit_edge:       ; preds = %do.end10.i430
  call void @__sanitizer_cov_trace_pc() #10
  br label %PageWriteback.exit

if.then.i26.i432:                                 ; preds = %do.end10.i430
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i431 = add i32 %76, -1
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.then.i26.i432, %do.end10.i430.PageWriteback.exit_crit_edge
  %retval.0.i28.i434 = phi i32 [ %sub.i25.i431, %if.then.i26.i432 ], [ %5, %do.end10.i430.PageWriteback.exit_crit_edge ]
  %78 = inttoptr i32 %retval.0.i28.i434 to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %81 = and i32 %80, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool173.not = icmp eq i32 %81, 0
  br i1 %tobool173.not, label %do.end189, label %do.body181, !prof !102

do.body181:                                       ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1424, 0\0A.popsection", ""() #8, !srcloc !115
  unreachable

do.end189:                                        ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call190 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #8
  tail call void @unlock_page(ptr noundef %page) #8
  tail call void @end_page_writeback(ptr noundef %page) #8
  br label %cleanup

if.end191:                                        ; preds = %PageUptodate.exit
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %state.i, align 4
  %84 = and i32 %83, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool193.not = icmp eq i32 %84, 0
  br i1 %tobool193.not, label %if.end191.if.end195_crit_edge, label %if.else

if.end191.if.end195_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195

if.else:                                          ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ext, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.else, %if.end191.if.end195_crit_edge
  %base_ni.0 = phi ptr [ %86, %if.else ], [ %add.ptr.i, %if.end191.if.end195_crit_edge ]
  %call196 = tail call ptr @map_mft_record(ptr noundef %base_ni.0) #8
  %cmp.i = icmp ugt ptr %call196, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then198, label %if.end200

if.then198:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %call196 to i32
  br label %err_out

if.end200:                                        ; preds = %if.end195
  %88 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %state.i, align 4
  %90 = and i32 %89, 32
  %tobool202.not = icmp eq i32 %90, 0
  br i1 %tobool202.not, label %if.end210, label %if.then209, !prof !102

if.then209:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #8
  br label %retry_writepage

if.end210:                                        ; preds = %if.end200
  %call211 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %base_ni.0, ptr noundef %call196) #8
  %tobool212.not = icmp eq ptr %call211, null
  br i1 %tobool212.not, label %if.end210.if.then304_crit_edge, label %if.end222, !prof !103

if.end210.if.then304_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then304

if.end222:                                        ; preds = %if.end210
  %91 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %type, align 4
  %name = getelementptr i8, ptr %3, i32 -440
  %93 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %name, align 8
  %name_len224 = getelementptr i8, ptr %3, i32 -436
  %95 = ptrtoint ptr %name_len224 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %name_len224, align 4
  %call225 = tail call i32 @ntfs_attr_lookup(i32 noundef %92, ptr noundef %94, i32 noundef %96, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call211) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %do.body235, label %if.end222.err_out_crit_edge, !prof !102

if.end222.err_out_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

do.body235:                                       ; preds = %if.end222
  %97 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %4, align 4
  %and.i.i437 = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i437)
  %tobool.not.i.i438 = icmp eq i32 %and.i.i437, 0
  br i1 %tobool.not.i.i438, label %do.body235._compound_head.exit.i446_crit_edge, label %if.then.i.i440, !prof !102

do.body235._compound_head.exit.i446_crit_edge:    ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i446

if.then.i.i440:                                   ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i439 = add i32 %98, -1
  br label %_compound_head.exit.i446

_compound_head.exit.i446:                         ; preds = %if.then.i.i440, %do.body235._compound_head.exit.i446_crit_edge
  %retval.0.i.i442 = phi i32 [ %sub.i.i439, %if.then.i.i440 ], [ %5, %do.body235._compound_head.exit.i446_crit_edge ]
  %99 = inttoptr i32 %retval.0.i.i442 to ptr
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %cmp.i.not.i443 = icmp eq i32 %101, -1
  %102 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %4, align 4
  %and.i16.i444 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i444)
  %tobool.not.i17.i445 = icmp eq i32 %and.i16.i444, 0
  br i1 %cmp.i.not.i443, label %if.then.i447, label %do.end10.i453, !prof !103

if.then.i447:                                     ; preds = %_compound_head.exit.i446
  br i1 %tobool.not.i17.i445, label %if.then.i447._compound_head.exit22.i452_crit_edge, label %if.then.i19.i449, !prof !102

if.then.i447._compound_head.exit22.i452_crit_edge: ; preds = %if.then.i447
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit22.i452

if.then.i19.i449:                                 ; preds = %if.then.i447
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i448 = add i32 %103, -1
  br label %_compound_head.exit22.i452

_compound_head.exit22.i452:                       ; preds = %if.then.i19.i449, %if.then.i447._compound_head.exit22.i452_crit_edge
  %retval.0.i21.i451 = phi i32 [ %sub.i18.i448, %if.then.i19.i449 ], [ %5, %if.then.i447._compound_head.exit22.i452_crit_edge ]
  %104 = inttoptr i32 %retval.0.i21.i451 to ptr
  tail call void @dump_page(ptr noundef %104, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !114
  unreachable

do.end10.i453:                                    ; preds = %_compound_head.exit.i446
  br i1 %tobool.not.i17.i445, label %do.end10.i453.PageWriteback.exit460_crit_edge, label %if.then.i26.i455, !prof !102

do.end10.i453.PageWriteback.exit460_crit_edge:    ; preds = %do.end10.i453
  call void @__sanitizer_cov_trace_pc() #10
  br label %PageWriteback.exit460

if.then.i26.i455:                                 ; preds = %do.end10.i453
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i454 = add i32 %103, -1
  br label %PageWriteback.exit460

PageWriteback.exit460:                            ; preds = %if.then.i26.i455, %do.end10.i453.PageWriteback.exit460_crit_edge
  %retval.0.i28.i457 = phi i32 [ %sub.i25.i454, %if.then.i26.i455 ], [ %5, %do.end10.i453.PageWriteback.exit460_crit_edge ]
  %105 = inttoptr i32 %retval.0.i28.i457 to ptr
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %105, align 4
  %108 = and i32 %107, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool237.not = icmp eq i32 %108, 0
  br i1 %tobool237.not, label %do.end253, label %do.body245, !prof !102

do.body245:                                       ; preds = %PageWriteback.exit460
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1463, 0\0A.popsection", ""() #8, !srcloc !116
  unreachable

do.end253:                                        ; preds = %PageWriteback.exit460
  %call254 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #8
  tail call void @unlock_page(ptr noundef %page) #8
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call211, i32 0, i32 1
  %109 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %attr, align 4
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %110, i32 0, i32 7
  %111 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %111, i32 4)
  %112 = load i32, ptr %data, align 1
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  %call255 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %conv256 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call255, i64 %conv256)
  %cmp257 = icmp slt i64 %call255, %conv256
  br i1 %cmp257, label %if.then265, label %do.end253.if.end287_crit_edge, !prof !103

do.end253.if.end287_crit_edge:                    ; preds = %do.end253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end287

if.then265:                                       ; preds = %do.end253
  %conv266 = trunc i64 %call255 to i32
  %114 = ptrtoint ptr %call211 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call211, align 4
  %116 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %attr, align 4
  %call268 = tail call i32 @ntfs_resident_attr_value_resize(ptr noundef %115, ptr noundef %117, i32 noundef %conv266) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %tobool270.not = icmp eq i32 %call268, 0
  br i1 %tobool270.not, label %if.then265.if.end287_crit_edge, label %do.body278, !prof !102

if.then265.if.end287_crit_edge:                   ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end287

do.body278:                                       ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1478, 0\0A.popsection", ""() #8, !srcloc !117
  unreachable

if.end287:                                        ; preds = %if.then265.if.end287_crit_edge, %do.end253.if.end287_crit_edge
  %attr_len.0 = phi i32 [ %conv266, %if.then265.if.end287_crit_edge ], [ %113, %do.end253.if.end287_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %118 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %118, 512
  %119 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %122, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %123 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i1.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 213
  %127 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %128, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #8
  %129 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %attr, align 4
  %data291 = getelementptr inbounds %struct.ATTR_RECORD, ptr %130, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.89, ptr %data291, i32 0, i32 1
  %131 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %131, i32 2)
  %132 = load i16, ptr %value_offset, align 1
  %133 = tail call i16 @llvm.bswap.i16(i16 %132)
  %conv292 = zext i16 %133 to i32
  %add.ptr = getelementptr i8, ptr %130, i32 %conv292
  %134 = call ptr @memcpy(ptr %add.ptr, ptr %call.i.i, i32 %attr_len.0)
  %add.ptr293 = getelementptr i8, ptr %call.i.i, i32 %attr_len.0
  %sub294 = sub i32 4096, %attr_len.0
  %135 = call ptr @memset(ptr %add.ptr293, i32 0, i32 %sub294)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %136 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i1.i = and i32 %136, -16384
  %137 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 213
  %140 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %141, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %142 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i503 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i.i.i503 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i504 = add i32 %145, -1
  store volatile i32 %sub.i.i504, ptr %preempt_count.i.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef %page) #8
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call211, i32 0, i32 3
  %146 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ntfs_ino, align 4
  %page.i = getelementptr inbounds %struct._ntfs_inode, ptr %147, i32 0, i32 13
  %148 = ptrtoint ptr %page.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %page.i, align 8
  tail call void @flush_dcache_page(ptr noundef %149) #8
  tail call void @end_page_writeback(ptr noundef %page) #8
  %150 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ntfs_ino, align 4
  %state.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %151, i32 0, i32 3
  %call.i.i505 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i505)
  %tobool.not.i506 = icmp eq i32 %call.i.i505, 0
  br i1 %tobool.not.i506, label %if.then.i507, label %if.end287.mark_mft_record_dirty.exit_crit_edge

if.end287.mark_mft_record_dirty.exit_crit_edge:   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %mark_mft_record_dirty.exit

if.then.i507:                                     ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__mark_mft_record_dirty(ptr noundef %151) #8
  br label %mark_mft_record_dirty.exit

mark_mft_record_dirty.exit:                       ; preds = %if.then.i507, %if.end287.mark_mft_record_dirty.exit_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call211) #8
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #8
  br label %cleanup

err_out:                                          ; preds = %if.end222.err_out_crit_edge, %if.then198
  %ctx.0 = phi ptr [ null, %if.then198 ], [ %call211, %if.end222.err_out_crit_edge ]
  %m.0 = phi ptr [ null, %if.then198 ], [ %call196, %if.end222.err_out_crit_edge ]
  %err.0 = phi i32 [ %87, %if.then198 ], [ %call225, %if.end222.err_out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err.0)
  %cmp302 = icmp eq i32 %err.0, -12
  br i1 %cmp302, label %err_out.if.then304_crit_edge, label %if.else307

err_out.if.then304_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then304

if.then304:                                       ; preds = %err_out.if.then304_crit_edge, %if.end210.if.then304_crit_edge
  %m.0517 = phi ptr [ %m.0, %err_out.if.then304_crit_edge ], [ %call196, %if.end210.if.then304_crit_edge ]
  %ctx.0515 = phi ptr [ %ctx.0, %err_out.if.then304_crit_edge ], [ null, %if.end210.if.then304_crit_edge ]
  %i_sb305 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %152 = ptrtoint ptr %i_sb305 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %i_sb305, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_writepage, ptr noundef %153, ptr noundef nonnull @.str.6) #8
  %call306 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #8
  br label %if.end309

if.else307:                                       ; preds = %err_out
  %i_sb308 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %154 = ptrtoint ptr %i_sb308 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i_sb308, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_writepage, ptr noundef %155, ptr noundef nonnull @.str.7, i32 noundef %err.0) #8
  %156 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %4, align 4
  %and.i.i461 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i461)
  %tobool.not.i = icmp eq i32 %and.i.i461, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i462, !prof !102

if.then.i462:                                     ; preds = %if.else307
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !122
  unreachable

do.body7.i:                                       ; preds = %if.else307
  %158 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %4, align 4
  %and.i31.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i463 = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i463, label %do.body7.i._compound_head.exit.i469_crit_edge, label %if.then.i.i465, !prof !102

do.body7.i._compound_head.exit.i469_crit_edge:    ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i469

if.then.i.i465:                                   ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i464 = add i32 %159, -1
  br label %_compound_head.exit.i469

_compound_head.exit.i469:                         ; preds = %if.then.i.i465, %do.body7.i._compound_head.exit.i469_crit_edge
  %retval.0.i.i467 = phi i32 [ %sub.i.i464, %if.then.i.i465 ], [ %5, %do.body7.i._compound_head.exit.i469_crit_edge ]
  %160 = inttoptr i32 %retval.0.i.i467 to ptr
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %162)
  %cmp.i.not.i468 = icmp eq i32 %162, -1
  %163 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load volatile i32, ptr %4, align 4
  %and.i32.i = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i468, label %if.then17.i, label %do.end24.i, !prof !103

if.then17.i:                                      ; preds = %_compound_head.exit.i469
  br i1 %tobool.not.i33.i, label %if.then17.i._compound_head.exit38.i_crit_edge, label %if.then.i35.i, !prof !102

if.then17.i._compound_head.exit38.i_crit_edge:    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit38.i

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %164, -1
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.then.i35.i, %if.then17.i._compound_head.exit38.i_crit_edge
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %5, %if.then17.i._compound_head.exit38.i_crit_edge ]
  %165 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %165, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !123
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i469
  br i1 %tobool.not.i33.i, label %do.end24.i.SetPageError.exit_crit_edge, label %if.then.i42.i, !prof !102

do.end24.i.SetPageError.exit_crit_edge:           ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %SetPageError.exit

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %164, -1
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.then.i42.i, %do.end24.i.SetPageError.exit_crit_edge
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %5, %do.end24.i.SetPageError.exit_crit_edge ]
  %166 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %166) #8
  %vol = getelementptr i8, ptr %3, i32 -448
  %167 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %vol, align 8
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %168, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  br label %if.end309

if.end309:                                        ; preds = %SetPageError.exit, %if.then304
  %m.0516 = phi ptr [ %m.0517, %if.then304 ], [ %m.0, %SetPageError.exit ]
  %ctx.0514 = phi ptr [ %ctx.0515, %if.then304 ], [ %ctx.0, %SetPageError.exit ]
  %err.1 = phi i32 [ 0, %if.then304 ], [ %err.0, %SetPageError.exit ]
  tail call void @unlock_page(ptr noundef %page) #8
  %tobool310.not = icmp eq ptr %ctx.0514, null
  br i1 %tobool310.not, label %if.end309.if.end312_crit_edge, label %if.then311

if.end309.if.end312_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end312

if.then311:                                       ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %ctx.0514) #8
  br label %if.end312

if.end312:                                        ; preds = %if.then311, %if.end309.if.end312_crit_edge
  %tobool313.not = icmp eq ptr %m.0516, null
  br i1 %tobool313.not, label %if.end312.cleanup_crit_edge, label %if.then314

if.end312.cleanup_crit_edge:                      ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then314:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then314, %if.end312.cleanup_crit_edge, %mark_mft_record_dirty.exit, %do.end189, %if.end116, %if.then114, %if.then97, %do.end90, %do.end46, %if.then19
  %retval.0 = phi i32 [ 0, %if.then19 ], [ -13, %do.end46 ], [ -95, %do.end90 ], [ -95, %if.then97 ], [ %call115, %if.then114 ], [ %call117, %if.end116 ], [ -5, %do.end189 ], [ 0, %mark_mft_record_dirty.exit ], [ %err.1, %if.then314 ], [ %err.1, %if.end312.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ntfs_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  %arr.i = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %page to i32
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  br label %retry_readpage

retry_readpage:                                   ; preds = %if.then131, %entry
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %retry_readpage._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !102

retry_readpage._compound_head.exit.i_crit_edge:   ; preds = %retry_readpage
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %retry_readpage
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %3, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %retry_readpage._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %1, %retry_readpage._compound_head.exit.i_crit_edge ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %0, align 4
  %and.i16.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !103

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.then.i._compound_head.exit22.i_crit_edge, label %if.then.i19.i, !prof !102

if.then.i._compound_head.exit22.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit22.i

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.then.i19.i, %if.then.i._compound_head.exit22.i_crit_edge
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %1, %if.then.i._compound_head.exit22.i_crit_edge ]
  %9 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #8, !srcloc !104
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %do.end10.i.PageLocked.exit_crit_edge, label %if.then.i26.i, !prof !102

do.end10.i.PageLocked.exit_crit_edge:             ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PageLocked.exit

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.then.i26.i, %do.end10.i.PageLocked.exit_crit_edge
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %1, %do.end10.i.PageLocked.exit_crit_edge ]
  %10 = inttoptr i32 %retval.0.i28.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !103

do.body4:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 391, 0\0A.popsection", ""() #8, !srcloc !124
  unreachable

do.end9:                                          ; preds = %PageLocked.exit
  %13 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapping, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call10 = tail call fastcc i64 @i_size_read(ptr noundef %16)
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  %conv = zext i32 %18 to i64
  %sub = add i64 %call10, 4095
  %shr = ashr i64 %sub, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv)
  %cmp.not = icmp sgt i64 %shr, %conv
  br i1 %cmp.not, label %if.end19, label %if.then18, !prof !102

if.then18:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 398, ptr noundef nonnull @__func__.ntfs_readpage, ptr noundef nonnull @.str.29) #8
  br label %done

if.end19:                                         ; preds = %do.end9
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %0, align 4
  %and.i.i272 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i272)
  %tobool.not.i.i273 = icmp eq i32 %and.i.i272, 0
  br i1 %tobool.not.i.i273, label %if.end19._compound_head.exit.i280_crit_edge, label %if.then.i.i275, !prof !102

if.end19._compound_head.exit.i280_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i280

if.then.i.i275:                                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i274 = add i32 %20, -1
  br label %_compound_head.exit.i280

_compound_head.exit.i280:                         ; preds = %if.then.i.i275, %if.end19._compound_head.exit.i280_crit_edge
  %retval.0.i.i277 = phi i32 [ %sub.i.i274, %if.then.i.i275 ], [ %1, %if.end19._compound_head.exit.i280_crit_edge ]
  %21 = inttoptr i32 %retval.0.i.i277 to ptr
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i.i278 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i278)
  %tobool.not.i.i.i279 = icmp eq i32 %and.i.i.i.i278, 0
  br i1 %tobool.not.i.i.i279, label %folio_flags.exit.i.i, label %if.then.i.i.i281, !prof !102

if.then.i.i.i281:                                 ; preds = %_compound_head.exit.i280
  call void @__sanitizer_cov_trace_pc() #10
  %25 = inttoptr i32 %retval.0.i.i277 to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i280
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %21, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %if.end23, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @unlock_page(ptr noundef %page) #8
  br label %cleanup

if.end23:                                         ; preds = %folio_flags.exit.i.i
  %add.ptr.i = getelementptr i8, ptr %16, i32 -528
  %type = getelementptr i8, ptr %16, i32 -444
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %30)
  %cmp25.not = icmp eq i32 %30, -1610612736
  br i1 %cmp25.not, label %if.end23.if.end97_crit_edge, label %if.then27

if.end23.if.end97_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then27:                                        ; preds = %if.end23
  %state.i = getelementptr i8, ptr %16, i32 -464
  %31 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i, align 4
  %33 = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool29.not = icmp eq i32 %33, 0
  br i1 %tobool29.not, label %if.end51, label %do.body31

do.body31:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %30)
  %cmp33.not = icmp eq i32 %30, -2147483648
  br i1 %cmp33.not, label %do.body31.err_out_crit_edge, label %do.body42, !prof !102

do.body31.err_out_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

do.body42:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 421, 0\0A.popsection", ""() #8, !srcloc !125
  unreachable

if.end51:                                         ; preds = %if.then27
  %34 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i, align 4
  %36 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool53.not = icmp eq i32 %36, 0
  br i1 %tobool53.not, label %if.end51.if.end97_crit_edge, label %land.lhs.true

if.end51.if.end97_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

land.lhs.true:                                    ; preds = %if.end51
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i, align 4
  %39 = and i32 %38, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool55.not = icmp eq i32 %39, 0
  br i1 %tobool55.not, label %land.lhs.true.if.end97_crit_edge, label %do.body57

land.lhs.true.if.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

do.body57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %30)
  %cmp59.not = icmp eq i32 %30, -2147483648
  br i1 %cmp59.not, label %do.body77, label %do.body68, !prof !102

do.body68:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 427, 0\0A.popsection", ""() #8, !srcloc !126
  unreachable

do.body77:                                        ; preds = %do.body57
  %name_len = getelementptr i8, ptr %16, i32 -436
  %40 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %name_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool78.not = icmp eq i32 %41, 0
  br i1 %tobool78.not, label %do.end94, label %do.body86, !prof !102

do.body86:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #8, !srcloc !127
  unreachable

do.end94:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %call95 = tail call i32 @ntfs_read_compressed_block(ptr noundef %page) #8
  br label %cleanup

if.end97:                                         ; preds = %land.lhs.true.if.end97_crit_edge, %if.end51.if.end97_crit_edge, %if.end23.if.end97_crit_edge
  %state.i289 = getelementptr i8, ptr %16, i32 -464
  %42 = ptrtoint ptr %state.i289 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i289, align 4
  %44 = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool99.not = icmp eq i32 %44, 0
  br i1 %tobool99.not, label %if.end102, label %if.then100

if.then100:                                       ; preds = %if.end97
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arr.i) #8
  %45 = call ptr @memset(ptr %arr.i, i32 255, i32 32)
  %46 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mapping, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 -528
  %vol1.i = getelementptr i8, ptr %49, i32 -448
  %50 = ptrtoint ptr %vol1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vol1.i, align 8
  %runlist.i = getelementptr i8, ptr %49, i32 -432
  %52 = ptrtoint ptr %runlist.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %runlist.i, align 8
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then100.do.end14.i_crit_edge

if.then100.do.end14.i_crit_edge:                  ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

land.lhs.true.i:                                  ; preds = %if.then100
  %mft_no.i = getelementptr i8, ptr %49, i32 -460
  %54 = ptrtoint ptr %mft_no.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mft_no.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool3.not.i = icmp eq i32 %55, 0
  br i1 %tobool3.not.i, label %land.rhs.i, label %land.lhs.true.i.do.end14.i_crit_edge

land.lhs.true.i.do.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %state.i.i = getelementptr i8, ptr %49, i32 -464
  %56 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %state.i.i, align 4
  %58 = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool5.not.i = icmp eq i32 %58, 0
  br i1 %tobool5.not.i, label %do.body9.i, label %land.rhs.i.do.end14.i_crit_edge, !prof !103

land.rhs.i.do.end14.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i

do.body9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 186, 0\0A.popsection", ""() #8, !srcloc !128
  unreachable

do.end14.i:                                       ; preds = %land.rhs.i.do.end14.i_crit_edge, %land.lhs.true.i.do.end14.i_crit_edge, %if.then100.do.end14.i_crit_edge
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %51, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %s_blocksize.i, align 16
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 2
  %63 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %s_blocksize_bits.i, align 4
  %65 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp.i.not.i.i = icmp eq i32 %66, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i292, label %PagePrivate.exit.i, !prof !103

if.then.i.i292:                                   ; preds = %do.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit.i:                               ; preds = %do.end14.i
  %67 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %page, align 4
  %69 = and i32 %68, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool17.not.i = icmp eq i32 %69, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %PagePrivate.exit.i.do.body32.i_crit_edge

PagePrivate.exit.i.do.body32.i_crit_edge:         ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.i

if.then18.i:                                      ; preds = %PagePrivate.exit.i
  tail call void @create_empty_buffers(ptr noundef %page, i32 noundef %62, i32 noundef 0) #8
  %70 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp.i.not.i426.i = icmp eq i32 %71, -1
  br i1 %cmp.i.not.i426.i, label %if.then.i427.i, label %PagePrivate.exit430.i, !prof !103

if.then.i427.i:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit430.i:                            ; preds = %if.then18.i
  %72 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %page, align 4
  %74 = and i32 %73, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool20.not.i = icmp eq i32 %74, 0
  br i1 %tobool20.not.i, label %PagePrivate.exit430.i.cleanup303.sink.split.i_crit_edge, label %PagePrivate.exit430.i.do.body32.i_crit_edge, !prof !103

PagePrivate.exit430.i.do.body32.i_crit_edge:      ; preds = %PagePrivate.exit430.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.i

PagePrivate.exit430.i.cleanup303.sink.split.i_crit_edge: ; preds = %PagePrivate.exit430.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup303.sink.split.i

do.body32.i:                                      ; preds = %PagePrivate.exit430.i.do.body32.i_crit_edge, %PagePrivate.exit.i.do.body32.i_crit_edge
  %75 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp.i.not.i431.i = icmp eq i32 %76, -1
  br i1 %cmp.i.not.i431.i, label %if.then.i432.i, label %PagePrivate.exit435.i, !prof !103

if.then.i432.i:                                   ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit435.i:                            ; preds = %do.body32.i
  %77 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %page, align 4
  %79 = and i32 %78, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool34.not.i = icmp eq i32 %79, 0
  br i1 %tobool34.not.i, label %do.body44.i, label %do.end52.i, !prof !103

do.body44.i:                                      ; preds = %PagePrivate.exit435.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #8, !srcloc !129
  unreachable

do.end52.i:                                       ; preds = %PagePrivate.exit435.i
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %80 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %private.i, align 4
  %82 = inttoptr i32 %81 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool54.not.i = icmp eq i32 %81, 0
  br i1 %tobool54.not.i, label %do.body64.i, label %do.end72.i, !prof !103

do.body64.i:                                      ; preds = %do.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 199, 0\0A.popsection", ""() #8, !srcloc !130
  unreachable

do.end72.i:                                       ; preds = %do.end52.i
  %83 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %index, align 4
  %conv.i = zext i32 %84 to i64
  %conv73.i = zext i8 %64 to i32
  %sub.i = sub nsw i32 12, %conv73.i
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %call77.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i.i) #8
  %allocated_size.i = getelementptr i8, ptr %49, i32 -472
  %85 = ptrtoint ptr %allocated_size.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %allocated_size.i, align 8
  %conv80.i = zext i32 %62 to i64
  %add.i = add nsw i64 %conv80.i, -1
  %sub81.i = add i64 %86, %add.i
  %sh_prom83.i = zext i8 %64 to i64
  %shr.i = ashr i64 %sub81.i, %sh_prom83.i
  %initialized_size.i = getelementptr i8, ptr %49, i32 -480
  %87 = ptrtoint ptr %initialized_size.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %initialized_size.i, align 8
  %call84.i = tail call fastcc i64 @i_size_read(ptr noundef %49) #8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i.i, i32 noundef %call77.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %call84.i)
  %cmp94.i = icmp sgt i64 %88, %call84.i
  br i1 %cmp94.i, label %if.then102.i, label %do.end72.i.if.end103.i_crit_edge, !prof !103

do.end72.i.if.end103.i_crit_edge:                 ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.then102.i:                                     ; preds = %do.end72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then102.i, %do.end72.i.if.end103.i_crit_edge
  %init_size.0.i = phi i64 [ %call84.i, %if.then102.i ], [ %88, %do.end72.i.if.end103.i_crit_edge ]
  %sub106.i = add i64 %init_size.0.i, %add.i
  %shr109.i = ashr i64 %sub106.i, %sh_prom83.i
  %cluster_size_bits.i = getelementptr inbounds %struct.ntfs_volume, ptr %51, i32 0, i32 13
  %cluster_size_mask.i = getelementptr inbounds %struct.ntfs_volume, ptr %51, i32 0, i32 12
  %lock.i = getelementptr i8, ptr %49, i32 -428
  %mft_no230.i = getelementptr i8, ptr %49, i32 -460
  %type.i = getelementptr i8, ptr %49, i32 -444
  br label %do.body110.i

do.body110.i:                                     ; preds = %cleanup246.i.do.body110.i_crit_edge, %if.end103.i
  %rl.0.i = phi ptr [ null, %if.end103.i ], [ %rl.8.i, %cleanup246.i.do.body110.i_crit_edge ]
  %bh.0.i = phi ptr [ %82, %if.end103.i ], [ %140, %cleanup246.i.do.body110.i_crit_edge ]
  %iblock.0.i = phi i64 [ %shl.i, %if.end103.i ], [ %inc251.i, %cleanup246.i.do.body110.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %if.end103.i ], [ %inc250.i, %cleanup246.i.do.body110.i_crit_edge ]
  %nr.0.i = phi i32 [ 0, %if.end103.i ], [ %nr.4.i, %cleanup246.i.do.body110.i_crit_edge ]
  %89 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i436.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i436.i)
  %tobool112.not.i = icmp eq i32 %and1.i.i436.i, 0
  br i1 %tobool112.not.i, label %if.end120.i, label %do.body110.i.cleanup246.i_crit_edge, !prof !102

do.body110.i.cleanup246.i_crit_edge:              ; preds = %do.body110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246.i

if.end120.i:                                      ; preds = %do.body110.i
  %91 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %bh.0.i, align 4
  %93 = and i32 %92, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool122.not.i = icmp eq i32 %93, 0
  br i1 %tobool122.not.i, label %if.end130.i, label %if.then129.i, !prof !102

if.then129.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i32 %nr.0.i, 1
  %arrayidx.i = getelementptr [8 x ptr], ptr %arr.i, i32 0, i32 %nr.0.i
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %bh.0.i, ptr %arrayidx.i, align 4
  br label %cleanup246.i

if.end130.i:                                      ; preds = %if.end120.i
  %95 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %51, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 26
  %97 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 6
  %99 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %b_bdev.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %iblock.0.i, i64 %shr.i)
  %cmp132.i = icmp ult i64 %iblock.0.i, %shr.i
  br i1 %cmp132.i, label %if.then134.i, label %if.end130.i.handle_hole.i_crit_edge

if.end130.i.handle_hole.i_crit_edge:              ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_hole.i

if.then134.i:                                     ; preds = %if.end130.i
  %shl137.i = shl i64 %iblock.0.i, %sh_prom83.i
  %100 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %cluster_size_bits.i, align 8
  %sh_prom139.i = zext i8 %101 to i64
  %shr140.i = ashr i64 %shl137.i, %sh_prom139.i
  %102 = ptrtoint ptr %cluster_size_mask.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cluster_size_mask.i, align 4
  %104 = trunc i64 %shl137.i to i32
  %conv145.i = and i32 %103, %104
  %tobool146.not.i = icmp eq ptr %rl.0.i, null
  br i1 %tobool146.not.i, label %if.then134.i.if.end151.i_crit_edge, label %if.then134.i.while.cond.preheader.i_crit_edge

if.then134.i.while.cond.preheader.i_crit_edge:    ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader.i

if.then134.i.if.end151.i_crit_edge:               ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.then197.i.if.end151.i_crit_edge, %if.then134.i.if.end151.i_crit_edge
  %is_retry.0.off0.i = phi i1 [ true, %if.then197.i.if.end151.i_crit_edge ], [ false, %if.then134.i.if.end151.i_crit_edge ]
  tail call void @down_read(ptr noundef %lock.i) #8
  %105 = ptrtoint ptr %runlist.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %runlist.i, align 8
  %cmp152.not.i = icmp eq ptr %106, null
  br i1 %cmp152.not.i, label %if.end192.thread.i, label %if.end151.i.while.cond.preheader.i_crit_edge, !prof !103

if.end151.i.while.cond.preheader.i_crit_edge:     ; preds = %if.end151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end151.i.while.cond.preheader.i_crit_edge, %if.then134.i.while.cond.preheader.i_crit_edge
  %is_retry.1.off0505.i = phi i1 [ %is_retry.0.off0.i, %if.end151.i.while.cond.preheader.i_crit_edge ], [ false, %if.then134.i.while.cond.preheader.i_crit_edge ]
  %rl.1504.i = phi ptr [ %106, %if.end151.i.while.cond.preheader.i_crit_edge ], [ %rl.0.i, %if.then134.i.while.cond.preheader.i_crit_edge ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %land.rhs162.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %rl.2.i = phi ptr [ %arrayidx163.i, %land.rhs162.i.while.cond.i_crit_edge ], [ %rl.1504.i, %while.cond.preheader.i ]
  %length.i = getelementptr inbounds %struct.runlist_element, ptr %rl.2.i, i32 0, i32 2
  %107 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %108)
  %tobool161.not.i = icmp eq i64 %108, 0
  br i1 %tobool161.not.i, label %while.cond.i.if.end169.i_crit_edge, label %land.rhs162.i

while.cond.i.if.end169.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169.i

land.rhs162.i:                                    ; preds = %while.cond.i
  %arrayidx163.i = getelementptr %struct.runlist_element, ptr %rl.2.i, i32 1
  %109 = ptrtoint ptr %arrayidx163.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx163.i, align 8
  %cmp165.not.i = icmp sgt i64 %110, %shr140.i
  br i1 %cmp165.not.i, label %land.rhs162.i.if.end169.i_crit_edge, label %land.rhs162.i.while.cond.i_crit_edge

land.rhs162.i.while.cond.i_crit_edge:             ; preds = %land.rhs162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

land.rhs162.i.if.end169.i_crit_edge:              ; preds = %land.rhs162.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169.i

if.end169.i:                                      ; preds = %land.rhs162.i.if.end169.i_crit_edge, %while.cond.i.if.end169.i_crit_edge
  %call168.i = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %rl.2.i, i64 noundef %shr140.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call168.i)
  %cmp170.i = icmp sgt i64 %call168.i, -1
  br i1 %cmp170.i, label %if.then172.i, label %if.end188.i

if.then172.i:                                     ; preds = %if.end169.i
  %111 = ptrtoint ptr %cluster_size_bits.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %cluster_size_bits.i, align 8
  %sh_prom175.i = zext i8 %112 to i64
  %shl176.i = shl i64 %call168.i, %sh_prom175.i
  %conv177.i = zext i32 %conv145.i to i64
  %add178.i = add i64 %shl176.i, %conv177.i
  %shr181.i = ashr i64 %add178.i, %sh_prom83.i
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %113 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %shr181.i, ptr %b_blocknr.i, align 8
  %114 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %bh.0.i, align 4
  %116 = and i32 %115, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i.i293 = icmp eq i32 %116, 0
  br i1 %tobool.not.i.i293, label %if.then.i439.i, label %if.then172.i.set_buffer_mapped.exit.i_crit_edge

if.then172.i.set_buffer_mapped.exit.i_crit_edge:  ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_mapped.exit.i

if.then.i439.i:                                   ; preds = %if.then172.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh.0.i) #8
  br label %set_buffer_mapped.exit.i

set_buffer_mapped.exit.i:                         ; preds = %if.then.i439.i, %if.then172.i.set_buffer_mapped.exit.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %iblock.0.i, i64 %shr109.i)
  %cmp182.i = icmp ult i64 %iblock.0.i, %shr109.i
  br i1 %cmp182.i, label %cleanup.thread491.i, label %set_buffer_mapped.exit.i.handle_zblock.i_crit_edge

set_buffer_mapped.exit.i.handle_zblock.i_crit_edge: ; preds = %set_buffer_mapped.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_zblock.i

cleanup.thread491.i:                              ; preds = %set_buffer_mapped.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc185.i = add i32 %nr.0.i, 1
  %arrayidx186.i = getelementptr [8 x ptr], ptr %arr.i, i32 0, i32 %nr.0.i
  %117 = ptrtoint ptr %arrayidx186.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %bh.0.i, ptr %arrayidx186.i, align 4
  br label %cleanup246.i

if.end188.i:                                      ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call168.i)
  %cmp189.i = icmp eq i64 %call168.i, -1
  br i1 %cmp189.i, label %if.end188.i.handle_hole.i_crit_edge, label %if.end192.i

if.end188.i.handle_hole.i_crit_edge:              ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_hole.i

if.end192.i:                                      ; preds = %if.end188.i
  %is_retry.1.off0.not.i = xor i1 %is_retry.1.off0505.i, true
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %call168.i)
  %cmp195.i = icmp eq i64 %call168.i, -2
  %or.cond.i = select i1 %is_retry.1.off0.not.i, i1 %cmp195.i, i1 false
  br i1 %or.cond.i, label %if.end192.i.if.then197.i_crit_edge, label %if.else212.i

if.end192.i.if.then197.i_crit_edge:               ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then197.i

if.end192.thread.i:                               ; preds = %if.end151.i
  br i1 %is_retry.0.off0.i, label %if.end192.thread.i.if.then214.i_crit_edge, label %if.end192.thread.i.if.then197.i_crit_edge

if.end192.thread.i.if.then197.i_crit_edge:        ; preds = %if.end192.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then197.i

if.end192.thread.i.if.then214.i_crit_edge:        ; preds = %if.end192.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then214.i

if.then197.i:                                     ; preds = %if.end192.thread.i.if.then197.i_crit_edge, %if.end192.i.if.then197.i_crit_edge
  tail call void @up_read(ptr noundef %lock.i) #8
  %call200.i = tail call i32 @ntfs_map_runlist(ptr noundef %add.ptr.i.i, i64 noundef %shr140.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200.i)
  %tobool201.not.i = icmp eq i32 %call200.i, 0
  br i1 %tobool201.not.i, label %if.then197.i.if.end151.i_crit_edge, label %if.then197.i.if.end218.i_crit_edge, !prof !102

if.then197.i.if.end218.i_crit_edge:               ; preds = %if.then197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end218.i

if.then197.i.if.end151.i_crit_edge:               ; preds = %if.then197.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end151.i

if.else212.i:                                     ; preds = %if.end192.i
  %tobool213.not.i = icmp eq ptr %rl.2.i, null
  br i1 %tobool213.not.i, label %if.else212.i.if.then214.i_crit_edge, label %if.else212.i.if.end218.i_crit_edge

if.else212.i.if.end218.i_crit_edge:               ; preds = %if.else212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end218.i

if.else212.i.if.then214.i_crit_edge:              ; preds = %if.else212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then214.i

if.then214.i:                                     ; preds = %if.else212.i.if.then214.i_crit_edge, %if.end192.thread.i.if.then214.i_crit_edge
  %is_retry.1.off0506.i = phi i1 [ %is_retry.1.off0505.i, %if.else212.i.if.then214.i_crit_edge ], [ true, %if.end192.thread.i.if.then214.i_crit_edge ]
  %lcn.0467473480486.i = phi i64 [ %call168.i, %if.else212.i.if.then214.i_crit_edge ], [ -2, %if.end192.thread.i.if.then214.i_crit_edge ]
  tail call void @up_read(ptr noundef %lock.i) #8
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.then214.i, %if.else212.i.if.end218.i_crit_edge, %if.then197.i.if.end218.i_crit_edge
  %lcn.0467473479.i = phi i64 [ %call168.i, %if.else212.i.if.end218.i_crit_edge ], [ %lcn.0467473480486.i, %if.then214.i ], [ -2, %if.then197.i.if.end218.i_crit_edge ]
  %rl.4.i = phi ptr [ %rl.2.i, %if.else212.i.if.end218.i_crit_edge ], [ null, %if.then214.i ], [ null, %if.then197.i.if.end218.i_crit_edge ]
  %err.2.i = phi i32 [ 0, %if.else212.i.if.end218.i_crit_edge ], [ 0, %if.then214.i ], [ %call200.i, %if.then197.i.if.end218.i_crit_edge ]
  %is_retry.2.off0.i = phi i1 [ %is_retry.1.off0505.i, %if.else212.i.if.end218.i_crit_edge ], [ %is_retry.1.off0506.i, %if.then214.i ], [ true, %if.then197.i.if.end218.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %err.2.i)
  %cmp219.i = icmp eq i32 %err.2.i, -2
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %lcn.0467473479.i)
  %cmp221.i = icmp eq i64 %lcn.0467473479.i, -3
  %or.cond425.i = select i1 %cmp219.i, i1 true, i1 %cmp221.i
  br i1 %or.cond425.i, label %if.end218.i.handle_hole.i_crit_edge, label %if.end224.i

if.end218.i.handle_hole.i_crit_edge:              ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %handle_hole.i

if.end224.i:                                      ; preds = %if.end218.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i)
  %tobool225.not.i = icmp eq i32 %err.2.i, 0
  %spec.store.select.i = select i1 %tobool225.not.i, i32 -5, i32 %err.2.i
  %b_blocknr228.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %118 = ptrtoint ptr %b_blocknr228.i to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 -1, ptr %b_blocknr228.i, align 8
  %119 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i440.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i440.i, label %do.body7.i.i, label %if.then.i441.i, !prof !102

if.then.i441.i:                                   ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !122
  unreachable

do.body7.i.i:                                     ; preds = %if.end224.i
  %121 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %0, align 4
  %and.i31.i.i = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i.i)
  %tobool.not.i.i.i294 = icmp eq i32 %and.i31.i.i, 0
  br i1 %tobool.not.i.i.i294, label %do.body7.i.i._compound_head.exit.i.i_crit_edge, label %if.then.i.i.i295, !prof !102

do.body7.i.i._compound_head.exit.i.i_crit_edge:   ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i.i

if.then.i.i.i295:                                 ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add i32 %122, -1
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.then.i.i.i295, %do.body7.i.i._compound_head.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i295 ], [ %1, %do.body7.i.i._compound_head.exit.i.i_crit_edge ]
  %123 = inttoptr i32 %retval.0.i.i.i to ptr
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %125)
  %cmp.i.not.i442.i = icmp eq i32 %125, -1
  %126 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %0, align 4
  %and.i32.i.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i.i)
  %tobool.not.i33.i.i = icmp eq i32 %and.i32.i.i, 0
  br i1 %cmp.i.not.i442.i, label %if.then17.i.i, label %do.end24.i.i, !prof !103

if.then17.i.i:                                    ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i33.i.i, label %if.then17.i.i._compound_head.exit38.i.i_crit_edge, label %if.then.i35.i.i, !prof !102

if.then17.i.i._compound_head.exit38.i.i_crit_edge: ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit38.i.i

if.then.i35.i.i:                                  ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i.i = add i32 %127, -1
  br label %_compound_head.exit38.i.i

_compound_head.exit38.i.i:                        ; preds = %if.then.i35.i.i, %if.then17.i.i._compound_head.exit38.i.i_crit_edge
  %retval.0.i37.i.i = phi i32 [ %sub.i34.i.i, %if.then.i35.i.i ], [ %1, %if.then17.i.i._compound_head.exit38.i.i_crit_edge ]
  %128 = inttoptr i32 %retval.0.i37.i.i to ptr
  tail call void @dump_page(ptr noundef %128, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !123
  unreachable

do.end24.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i33.i.i, label %do.end24.i.i.SetPageError.exit.i_crit_edge, label %if.then.i42.i.i, !prof !102

do.end24.i.i.SetPageError.exit.i_crit_edge:       ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %SetPageError.exit.i

if.then.i42.i.i:                                  ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i.i = add i32 %127, -1
  br label %SetPageError.exit.i

SetPageError.exit.i:                              ; preds = %if.then.i42.i.i, %do.end24.i.i.SetPageError.exit.i_crit_edge
  %retval.0.i44.i.i = phi i32 [ %sub.i41.i.i, %if.then.i42.i.i ], [ %1, %do.end24.i.i.SetPageError.exit.i_crit_edge ]
  %129 = inttoptr i32 %retval.0.i44.i.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %129) #8
  %130 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %51, align 8
  %132 = ptrtoint ptr %mft_no230.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mft_no230.i, align 4
  %134 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %type.i, align 4
  %cond.i = select i1 %is_retry.2.off0.i, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_read_block, ptr noundef %131, ptr noundef nonnull @.str.30, i32 noundef %133, i32 noundef %135, i64 noundef %shr140.i, i32 noundef %conv145.i, ptr noundef nonnull %cond.i, i32 noundef %spec.store.select.i) #8
  br label %handle_hole.i

handle_hole.i:                                    ; preds = %SetPageError.exit.i, %if.end218.i.handle_hole.i_crit_edge, %if.end188.i.handle_hole.i_crit_edge, %if.end130.i.handle_hole.i_crit_edge
  %rl.6.i = phi ptr [ %rl.0.i, %if.end130.i.handle_hole.i_crit_edge ], [ %rl.4.i, %if.end218.i.handle_hole.i_crit_edge ], [ %rl.2.i, %if.end188.i.handle_hole.i_crit_edge ], [ %rl.4.i, %SetPageError.exit.i ]
  %err.4.i = phi i32 [ 0, %if.end130.i.handle_hole.i_crit_edge ], [ 0, %if.end218.i.handle_hole.i_crit_edge ], [ 0, %if.end188.i.handle_hole.i_crit_edge ], [ %spec.store.select.i, %SetPageError.exit.i ]
  %b_blocknr234.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 3
  %136 = ptrtoint ptr %b_blocknr234.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 4294967295, ptr %b_blocknr234.i, align 8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %bh.0.i) #8
  br label %handle_zblock.i

handle_zblock.i:                                  ; preds = %handle_hole.i, %set_buffer_mapped.exit.i.handle_zblock.i_crit_edge
  %rl.7.i = phi ptr [ %rl.6.i, %handle_hole.i ], [ %rl.2.i, %set_buffer_mapped.exit.i.handle_zblock.i_crit_edge ]
  %err.5.i = phi i32 [ %err.4.i, %handle_hole.i ], [ 0, %set_buffer_mapped.exit.i.handle_zblock.i_crit_edge ]
  %mul.i = mul i32 %i.0.i, %62
  %add.i.i = add i32 %mul.i, %62
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %mul.i, i32 noundef %add.i.i, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5.i)
  %tobool235.not.i = icmp eq i32 %err.5.i, 0
  br i1 %tobool235.not.i, label %if.then244.i, label %handle_zblock.i.cleanup246.i_crit_edge, !prof !102

handle_zblock.i.cleanup246.i_crit_edge:           ; preds = %handle_zblock.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246.i

if.then244.i:                                     ; preds = %handle_zblock.i
  %137 = ptrtoint ptr %bh.0.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %bh.0.i, align 4
  %and1.i.i443.i = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i443.i)
  %tobool.not.i444.i = icmp eq i32 %and1.i.i443.i, 0
  br i1 %tobool.not.i444.i, label %if.then.i445.i, label %if.then244.i.cleanup246.i_crit_edge

if.then244.i.cleanup246.i_crit_edge:              ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup246.i

if.then.i445.i:                                   ; preds = %if.then244.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0.i) #8
  br label %cleanup246.i

cleanup246.i:                                     ; preds = %if.then.i445.i, %if.then244.i.cleanup246.i_crit_edge, %handle_zblock.i.cleanup246.i_crit_edge, %cleanup.thread491.i, %if.then129.i, %do.body110.i.cleanup246.i_crit_edge
  %rl.8.i = phi ptr [ %rl.0.i, %if.then129.i ], [ %rl.0.i, %do.body110.i.cleanup246.i_crit_edge ], [ %rl.7.i, %handle_zblock.i.cleanup246.i_crit_edge ], [ %rl.2.i, %cleanup.thread491.i ], [ %rl.7.i, %if.then244.i.cleanup246.i_crit_edge ], [ %rl.7.i, %if.then.i445.i ]
  %nr.4.i = phi i32 [ %inc.i, %if.then129.i ], [ %nr.0.i, %do.body110.i.cleanup246.i_crit_edge ], [ %nr.0.i, %handle_zblock.i.cleanup246.i_crit_edge ], [ %inc185.i, %cleanup.thread491.i ], [ %nr.0.i, %if.then244.i.cleanup246.i_crit_edge ], [ %nr.0.i, %if.then.i445.i ]
  %inc250.i = add i32 %i.0.i, 1
  %inc251.i = add i64 %iblock.0.i, 1
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.i, i32 0, i32 1
  %139 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %b_this_page.i, align 4
  %cmp252.not.i = icmp eq ptr %140, %82
  br i1 %cmp252.not.i, label %do.end254.i, label %cleanup246.i.do.body110.i_crit_edge

cleanup246.i.do.body110.i_crit_edge:              ; preds = %cleanup246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body110.i

do.end254.i:                                      ; preds = %cleanup246.i
  %tobool255.not.i = icmp eq ptr %rl.8.i, null
  br i1 %tobool255.not.i, label %do.end254.i.if.end259.i_crit_edge, label %if.then256.i

do.end254.i.if.end259.i_crit_edge:                ; preds = %do.end254.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259.i

if.then256.i:                                     ; preds = %do.end254.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %lock.i) #8
  br label %if.end259.i

if.end259.i:                                      ; preds = %if.then256.i, %do.end254.i.if.end259.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.4.i)
  %tobool260.not.i = icmp eq i32 %nr.4.i, 0
  br i1 %tobool260.not.i, label %if.end289.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.4.i)
  %cmp262496.i = icmp sgt i32 %nr.4.i, 0
  br i1 %cmp262496.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.ntfs_read_block.exit_crit_edge

for.cond.preheader.i.ntfs_read_block.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_read_block.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %set_buffer_async_read.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.1497.i = phi i32 [ %inc265.i, %set_buffer_async_read.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx264.i = getelementptr [8 x ptr], ptr %arr.i, i32 0, i32 %i.1497.i
  %141 = ptrtoint ptr %arrayidx264.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx264.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 366) #8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %142, i32 noundef 4) #8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %142, align 4
  %and.i.i.i.i462.i = and i32 %144, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i462.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i462.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %for.body.i.if.then.i463.i_crit_edge

for.body.i.if.then.i463.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i463.i

trylock_buffer.exit.i.i:                          ; preds = %for.body.i
  tail call void @llvm.prefetch.p0(ptr %142, i32 1, i32 3, i32 1) #8
  %145 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %142, ptr %142, i32 4, ptr elementtype(i32) %142) #8, !srcloc !131
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %145, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  %146 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.not.i.i = icmp eq i32 %146, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i463.i_crit_edge

trylock_buffer.exit.i.i.if.then.i463.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i463.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit.i

if.then.i463.i:                                   ; preds = %trylock_buffer.exit.i.i.if.then.i463.i_crit_edge, %for.body.i.if.then.i463.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %142) #8
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i463.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  %b_end_io.i = getelementptr inbounds %struct.buffer_head, ptr %142, i32 0, i32 7
  %147 = ptrtoint ptr %b_end_io.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @ntfs_end_buffer_async_read, ptr %b_end_io.i, align 4
  %148 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %142, align 4
  %150 = and i32 %149, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i446.i = icmp eq i32 %150, 0
  br i1 %tobool.not.i446.i, label %if.then.i447.i, label %lock_buffer.exit.i.set_buffer_async_read.exit.i_crit_edge

lock_buffer.exit.i.set_buffer_async_read.exit.i_crit_edge: ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_async_read.exit.i

if.then.i447.i:                                   ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 6, ptr noundef %142) #8
  br label %set_buffer_async_read.exit.i

set_buffer_async_read.exit.i:                     ; preds = %if.then.i447.i, %lock_buffer.exit.i.set_buffer_async_read.exit.i_crit_edge
  %inc265.i = add nuw nsw i32 %i.1497.i, 1
  %exitcond.not.i = icmp eq i32 %inc265.i, %nr.4.i
  br i1 %exitcond.not.i, label %set_buffer_async_read.exit.i.for.body269.i_crit_edge, label %set_buffer_async_read.exit.i.for.body.i_crit_edge

set_buffer_async_read.exit.i.for.body.i_crit_edge: ; preds = %set_buffer_async_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

set_buffer_async_read.exit.i.for.body269.i_crit_edge: ; preds = %set_buffer_async_read.exit.i
  br label %for.body269.i

for.body269.i:                                    ; preds = %for.inc285.i.for.body269.i_crit_edge, %set_buffer_async_read.exit.i.for.body269.i_crit_edge
  %i.2499.i = phi i32 [ %inc286.i, %for.inc285.i.for.body269.i_crit_edge ], [ 0, %set_buffer_async_read.exit.i.for.body269.i_crit_edge ]
  %arrayidx270.i = getelementptr [8 x ptr], ptr %arr.i, i32 0, i32 %i.2499.i
  %151 = ptrtoint ptr %arrayidx270.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx270.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %152, align 4
  %and1.i.i448.i = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i448.i)
  %tobool272.not.i = icmp eq i32 %and1.i.i448.i, 0
  br i1 %tobool272.not.i, label %if.then281.i, label %if.else283.i, !prof !102

if.then281.i:                                     ; preds = %for.body269.i
  call void @__sanitizer_cov_trace_pc() #10
  %call282.i = tail call i32 @submit_bh(i32 noundef 0, i32 noundef 0, ptr noundef %152) #8
  br label %for.inc285.i

if.else283.i:                                     ; preds = %for.body269.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ntfs_end_buffer_async_read(ptr noundef %152, i32 noundef 1) #8
  br label %for.inc285.i

for.inc285.i:                                     ; preds = %if.else283.i, %if.then281.i
  %inc286.i = add nuw nsw i32 %i.2499.i, 1
  %exitcond500.not.i = icmp eq i32 %inc286.i, %nr.4.i
  br i1 %exitcond500.not.i, label %for.inc285.i.ntfs_read_block.exit_crit_edge, label %for.inc285.i.for.body269.i_crit_edge

for.inc285.i.for.body269.i_crit_edge:             ; preds = %for.inc285.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body269.i

for.inc285.i.ntfs_read_block.exit_crit_edge:      ; preds = %for.inc285.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ntfs_read_block.exit

if.end289.i:                                      ; preds = %if.end259.i
  %155 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %0, align 4
  %and.i.i449.i = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i449.i)
  %tobool.not.i.i450.i = icmp eq i32 %and.i.i449.i, 0
  br i1 %tobool.not.i.i450.i, label %if.end289.i._compound_head.exit.i456.i_crit_edge, label %if.then.i.i452.i, !prof !102

if.end289.i._compound_head.exit.i456.i_crit_edge: ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit.i456.i

if.then.i.i452.i:                                 ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i451.i = add i32 %156, -1
  br label %_compound_head.exit.i456.i

_compound_head.exit.i456.i:                       ; preds = %if.then.i.i452.i, %if.end289.i._compound_head.exit.i456.i_crit_edge
  %retval.0.i.i454.i = phi i32 [ %sub.i.i451.i, %if.then.i.i452.i ], [ %1, %if.end289.i._compound_head.exit.i456.i_crit_edge ]
  %157 = inttoptr i32 %retval.0.i.i454.i to ptr
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %159)
  %cmp.i.not.i455.i = icmp eq i32 %159, -1
  %160 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %0, align 4
  %and.i16.i.i = and i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i455.i, label %if.then.i457.i, label %do.end10.i.i, !prof !103

if.then.i457.i:                                   ; preds = %_compound_head.exit.i456.i
  br i1 %tobool.not.i17.i.i, label %if.then.i457.i._compound_head.exit22.i.i_crit_edge, label %if.then.i19.i.i, !prof !102

if.then.i457.i._compound_head.exit22.i.i_crit_edge: ; preds = %if.then.i457.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_compound_head.exit22.i.i

if.then.i19.i.i:                                  ; preds = %if.then.i457.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i.i = add i32 %161, -1
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.then.i19.i.i, %if.then.i457.i._compound_head.exit22.i.i_crit_edge
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %1, %if.then.i457.i._compound_head.exit22.i.i_crit_edge ]
  %162 = inttoptr i32 %retval.0.i21.i.i to ptr
  tail call void @dump_page(ptr noundef %162, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i456.i
  br i1 %tobool.not.i17.i.i, label %do.end10.i.i.PageError.exit.i_crit_edge, label %if.then.i26.i.i, !prof !102

do.end10.i.i.PageError.exit.i_crit_edge:          ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %PageError.exit.i

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i.i = add i32 %161, -1
  br label %PageError.exit.i

PageError.exit.i:                                 ; preds = %if.then.i26.i.i, %do.end10.i.i.PageError.exit.i_crit_edge
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %1, %do.end10.i.i.PageError.exit.i_crit_edge ]
  %163 = inttoptr i32 %retval.0.i28.i.i to ptr
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %163, align 4
  %166 = and i32 %165, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool291.not.i = icmp eq i32 %166, 0
  br i1 %tobool291.not.i, label %if.then300.i, label %PageError.exit.i.cleanup303.sink.split.i_crit_edge, !prof !102

PageError.exit.i.cleanup303.sink.split.i_crit_edge: ; preds = %PageError.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup303.sink.split.i

if.then300.i:                                     ; preds = %PageError.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %167 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i.i = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %SetPageUptodate.exit.i, label %if.then.i.i.i.i, !prof !102

if.then.i.i.i.i:                                  ; preds = %if.then300.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

SetPageUptodate.exit.i:                           ; preds = %if.then300.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  br label %cleanup303.sink.split.i

cleanup303.sink.split.i:                          ; preds = %SetPageUptodate.exit.i, %PageError.exit.i.cleanup303.sink.split.i_crit_edge, %PagePrivate.exit430.i.cleanup303.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -12, %PagePrivate.exit430.i.cleanup303.sink.split.i_crit_edge ], [ 0, %SetPageUptodate.exit.i ], [ -5, %PageError.exit.i.cleanup303.sink.split.i_crit_edge ]
  tail call void @unlock_page(ptr noundef %page) #8
  br label %ntfs_read_block.exit

ntfs_read_block.exit:                             ; preds = %cleanup303.sink.split.i, %for.inc285.i.ntfs_read_block.exit_crit_edge, %for.cond.preheader.i.ntfs_read_block.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.cond.preheader.i.ntfs_read_block.exit_crit_edge ], [ %retval.0.ph.i, %cleanup303.sink.split.i ], [ 0, %for.inc285.i.ntfs_read_block.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arr.i) #8
  br label %cleanup

if.end102:                                        ; preds = %if.end97
  %169 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp104.not = icmp eq i32 %170, 0
  br i1 %cmp104.not, label %if.end113, label %if.then112, !prof !102

if.then112:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #8
  br label %done

if.end113:                                        ; preds = %if.end102
  %171 = ptrtoint ptr %state.i289 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %state.i289, align 4
  %173 = and i32 %172, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool115.not = icmp eq i32 %173, 0
  br i1 %tobool115.not, label %if.end113.if.end117_crit_edge, label %if.else

if.end113.if.end117_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end117

if.else:                                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %ext = getelementptr i8, ptr %16, i32 -8
  %174 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ext, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.else, %if.end113.if.end117_crit_edge
  %base_ni.0 = phi ptr [ %175, %if.else ], [ %add.ptr.i, %if.end113.if.end117_crit_edge ]
  %call118 = tail call ptr @map_mft_record(ptr noundef %base_ni.0) #8
  %cmp.i = icmp ugt ptr %call118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then120, label %if.end122

if.then120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  %176 = ptrtoint ptr %call118 to i32
  br label %err_out

if.end122:                                        ; preds = %if.end117
  %177 = ptrtoint ptr %state.i289 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %state.i289, align 4
  %179 = and i32 %178, 32
  %tobool124.not = icmp eq i32 %179, 0
  br i1 %tobool124.not, label %if.end132, label %if.then131, !prof !102

if.then131:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #8
  br label %retry_readpage

if.end132:                                        ; preds = %if.end122
  %call133 = tail call ptr @ntfs_attr_get_search_ctx(ptr noundef %base_ni.0, ptr noundef %call118) #8
  %tobool134.not = icmp eq ptr %call133, null
  br i1 %tobool134.not, label %if.end132.unm_err_out_crit_edge, label %if.end144, !prof !103

if.end132.unm_err_out_crit_edge:                  ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %unm_err_out

if.end144:                                        ; preds = %if.end132
  %type.le = getelementptr i8, ptr %16, i32 -444
  %180 = ptrtoint ptr %type.le to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %type.le, align 4
  %name = getelementptr i8, ptr %16, i32 -440
  %182 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %name, align 8
  %name_len146 = getelementptr i8, ptr %16, i32 -436
  %184 = ptrtoint ptr %name_len146 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %name_len146, align 4
  %call147 = tail call i32 @ntfs_attr_lookup(i32 noundef %181, ptr noundef %183, i32 noundef %185, i32 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call133) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end156, label %if.end144.put_unm_err_out_crit_edge, !prof !102

if.end144.put_unm_err_out_crit_edge:              ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_unm_err_out

if.end156:                                        ; preds = %if.end144
  %attr = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %call133, i32 0, i32 1
  %186 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %attr, align 4
  %data = getelementptr inbounds %struct.ATTR_RECORD, ptr %187, i32 0, i32 7
  %188 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %188, i32 4)
  %189 = load i32, ptr %data, align 1
  %190 = tail call i32 @llvm.bswap.i32(i32 %189)
  %call160 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #8
  %conv163 = zext i32 %190 to i64
  %initialized_size = getelementptr i8, ptr %16, i32 -480
  %191 = ptrtoint ptr %initialized_size to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %initialized_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %192, i64 %conv163)
  %cmp164 = icmp slt i64 %192, %conv163
  br i1 %cmp164, label %if.then172, label %if.end156.if.end175_crit_edge, !prof !103

if.end156.if.end175_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end175

if.then172:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  %conv174 = trunc i64 %192 to i32
  %.pre = and i64 %192, 4294967295
  br label %if.end175

if.end175:                                        ; preds = %if.then172, %if.end156.if.end175_crit_edge
  %conv186.pre-phi = phi i64 [ %.pre, %if.then172 ], [ %conv163, %if.end156.if.end175_crit_edge ]
  %attr_len.0 = phi i32 [ %conv174, %if.then172 ], [ %190, %if.end156.if.end175_crit_edge ]
  %call176 = tail call fastcc i64 @i_size_read(ptr noundef %16)
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call160) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call176, i64 %conv186.pre-phi)
  %cmp187 = icmp slt i64 %call176, %conv186.pre-phi
  br i1 %cmp187, label %if.then195, label %if.end175.if.end197_crit_edge, !prof !103

if.end175.if.end197_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end197

if.then195:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  %conv196 = trunc i64 %call176 to i32
  br label %if.end197

if.end197:                                        ; preds = %if.then195, %if.end175.if.end197_crit_edge
  %attr_len.1 = phi i32 [ %conv196, %if.then195 ], [ %attr_len.0, %if.end175.if.end197_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %193 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %193, 512
  %194 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i302 = and i32 %194, -16384
  %195 = inttoptr i32 %and.i.i.i.i.i302 to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %197, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %198 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i1.i.i = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %201, i32 0, i32 213
  %202 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %203, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #8
  %204 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %attr, align 4
  %data201 = getelementptr inbounds %struct.ATTR_RECORD, ptr %205, i32 0, i32 7
  %value_offset = getelementptr inbounds %struct.anon.89, ptr %data201, i32 0, i32 1
  %206 = ptrtoint ptr %value_offset to i32
  call void @__asan_loadN_noabort(i32 %206, i32 2)
  %207 = load i16, ptr %value_offset, align 1
  %208 = tail call i16 @llvm.bswap.i16(i16 %207)
  %conv202 = zext i16 %208 to i32
  %add.ptr = getelementptr i8, ptr %205, i32 %conv202
  %209 = call ptr @memcpy(ptr %call.i.i, ptr %add.ptr, i32 %attr_len.1)
  %add.ptr203 = getelementptr i8, ptr %call.i.i, i32 %attr_len.1
  %sub204 = sub i32 4096, %attr_len.1
  %210 = call ptr @memset(ptr %add.ptr203, i32 0, i32 %sub204)
  tail call void @flush_dcache_page(ptr noundef %page) #8
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %211 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i1.i = and i32 %211, -16384
  %212 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %214, i32 0, i32 213
  %215 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %216, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %217 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i303 = and i32 %217, -16384
  %218 = inttoptr i32 %and.i.i.i.i303 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i304 = add i32 %220, -1
  store volatile i32 %sub.i.i304, ptr %preempt_count.i.i.i, align 4
  br label %put_unm_err_out

put_unm_err_out:                                  ; preds = %if.end197, %if.end144.put_unm_err_out_crit_edge
  tail call void @ntfs_attr_put_search_ctx(ptr noundef nonnull %call133) #8
  br label %unm_err_out

unm_err_out:                                      ; preds = %put_unm_err_out, %if.end132.unm_err_out_crit_edge
  %err.0 = phi i32 [ %call147, %put_unm_err_out ], [ -12, %if.end132.unm_err_out_crit_edge ]
  tail call void @unmap_mft_record(ptr noundef %base_ni.0) #8
  br label %done

done:                                             ; preds = %unm_err_out, %if.then112, %if.then18
  %err.1 = phi i32 [ 0, %if.then18 ], [ 0, %if.then112 ], [ %err.0, %unm_err_out ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %221 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load volatile i32, ptr %0, align 4
  %and.i.i.i.i = and i32 %222, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !102

if.then.i.i.i:                                    ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

SetPageUptodate.exit:                             ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  br label %err_out

err_out:                                          ; preds = %SetPageUptodate.exit, %if.then120, %do.body31.err_out_crit_edge
  %err.2 = phi i32 [ %err.1, %SetPageUptodate.exit ], [ %176, %if.then120 ], [ -13, %do.body31.err_out_crit_edge ]
  tail call void @unlock_page(ptr noundef %page) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out, %ntfs_read_block.exit, %do.end94, %PageUptodate.exit
  %retval.0 = phi i32 [ %err.2, %err_out ], [ 0, %PageUptodate.exit ], [ %call95, %do.end94 ], [ %retval.0.i, %ntfs_read_block.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ntfs_bmap(ptr nocapture noundef readonly %mapping, i64 noundef %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -528
  %vol1 = getelementptr i8, ptr %1, i32 -448
  %2 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vol1, align 8
  %mft_no = getelementptr i8, ptr %1, i32 -460
  %4 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mft_no, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1558, ptr noundef nonnull @__func__.ntfs_bmap, ptr noundef nonnull @.str.32, i32 noundef %5, i64 noundef %block) #8
  %type = getelementptr i8, ptr %1, i32 -444
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %7)
  %cmp.not = icmp eq i32 %7, -2147483648
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %state.i = getelementptr i8, ptr %1, i32 -464
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %lor.lhs.false.cond.false_crit_edge, label %lor.lhs.false3

lor.lhs.false.cond.false_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %do.body, label %lor.lhs.false3.cond.false_crit_edge

lor.lhs.false3.cond.false_crit_edge:              ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false3.cond.false_crit_edge, %lor.lhs.false.cond.false_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 8
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp eq i32 %20, 0
  %cond = select i1 %tobool9.not, ptr @.str.35, ptr @.str.36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then
  %21 = phi ptr [ %17, %cond.false ], [ %15, %if.then ]
  %cond10 = phi ptr [ %cond, %cond.false ], [ @.str.34, %if.then ]
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_bmap, ptr noundef %21, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond10) #8
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false3
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %24 = and i32 %23, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not = icmp eq i32 %24, 0
  br i1 %tobool12.not, label %do.body24, label %do.body17, !prof !102

do.body17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1568, 0\0A.popsection", ""() #8, !srcloc !135
  unreachable

do.body24:                                        ; preds = %do.body
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i, align 4
  %27 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not = icmp eq i32 %27, 0
  br i1 %tobool26.not, label %do.end42, label %do.body34, !prof !102

do.body34:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1569, 0\0A.popsection", ""() #8, !srcloc !136
  unreachable

do.end42:                                         ; preds = %do.body24
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %33 to i64
  %shl = shl i64 %block, %sh_prom
  %call48 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #8
  %initialized_size = getelementptr i8, ptr %1, i32 -480
  %34 = ptrtoint ptr %initialized_size to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %initialized_size, align 8
  %call52 = tail call fastcc i64 @i_size_read(ptr noundef %1)
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call48) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %35)
  %cmp62.not = icmp slt i64 %shl, %35
  br i1 %cmp62.not, label %lor.rhs, label %do.end42.hole_crit_edge, !prof !102

do.end42.hole_crit_edge:                          ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %hole

lor.rhs:                                          ; preds = %do.end42
  %conv64 = zext i32 %31 to i64
  %add = add i64 %shl, %conv64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %35)
  %cmp65 = icmp sgt i64 %add, %35
  call void @__sanitizer_cov_trace_cmp8(i64 %35, i64 %call52)
  %cmp67 = icmp slt i64 %35, %call52
  %spec.select = select i1 %cmp65, i1 %cmp67, i1 false
  br i1 %spec.select, label %lor.rhs.hole_crit_edge, label %if.end76, !prof !103

lor.rhs.hole_crit_edge:                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %hole

if.end76:                                         ; preds = %lor.rhs
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 13
  %36 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cluster_size_bits, align 8
  %lock = getelementptr i8, ptr %1, i32 -428
  tail call void @down_read(ptr noundef %lock) #8
  %sh_prom78 = zext i8 %37 to i64
  %shr = ashr i64 %shl, %sh_prom78
  %call79 = tail call i64 @ntfs_attr_vcn_to_lcn_nolock(ptr noundef %add.ptr.i, i64 noundef %shr, i1 noundef zeroext false) #8
  tail call void @up_read(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call79)
  %cmp82 = icmp slt i64 %call79, -1
  br i1 %cmp82, label %if.then90, label %if.end97, !prof !103

if.then90:                                        ; preds = %if.end76
  %conv91 = trunc i64 %call79 to i32
  %38 = zext i32 %conv91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv91, label %sw.default [
    i32 -3, label %if.then90.hole_crit_edge
    i32 -4, label %sw.bb92
  ]

if.then90.hole_crit_edge:                         ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  br label %hole

sw.bb92:                                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  %41 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mft_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_bmap, ptr noundef %40, ptr noundef nonnull @.str.37, i32 noundef %42) #8
  br label %cleanup

sw.default:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 8
  %45 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mft_no, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_bmap, ptr noundef %44, ptr noundef nonnull @.str.38, i32 noundef %46) #8
  br label %cleanup

if.end97:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call79)
  %cmp98 = icmp slt i64 %call79, 0
  br i1 %cmp98, label %if.end97.hole_crit_edge, label %if.end101

if.end97.hole_crit_edge:                          ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %hole

hole:                                             ; preds = %if.end97.hole_crit_edge, %if.then90.hole_crit_edge, %lor.rhs.hole_crit_edge, %do.end42.hole_crit_edge
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1621, ptr noundef nonnull @__func__.ntfs_bmap, ptr noundef nonnull @.str.39) #8
  br label %cleanup

if.end101:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %cluster_size_mask = getelementptr inbounds %struct.ntfs_volume, ptr %3, i32 0, i32 12
  %47 = ptrtoint ptr %cluster_size_mask to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cluster_size_mask, align 4
  %49 = trunc i64 %shl to i32
  %conv103 = and i32 %48, %49
  %shl106 = shl i64 %call79, %sh_prom78
  %conv107 = zext i32 %conv103 to i64
  %add108 = add i64 %shl106, %conv107
  %shr111 = ashr i64 %add108, %sh_prom
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1642, ptr noundef nonnull @__func__.ntfs_bmap, ptr noundef nonnull @.str.40, i64 noundef %call79) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end101, %hole, %sw.default, %sw.bb92, %cond.end
  %retval.0 = phi i64 [ 0, %cond.end ], [ 0, %hole ], [ %shr111, %if.end101 ], [ 0, %sw.default ], [ 0, %sw.bb92 ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @buffer_migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_is_partially_uptodate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mark_ntfs_record_dirty(ptr noundef %page, i32 noundef %ofs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping1 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !102

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %do.body6, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  %itype = getelementptr i8, ptr %3, i32 -120
  %15 = ptrtoint ptr %itype to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %itype, align 8
  %add = add i32 %16, %ofs
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize, align 16
  %private_lock = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %private_lock) #8
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i = icmp eq i32 %22, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !103

do.body6:                                         ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1718, 0\0A.popsection", ""() #8, !srcloc !137
  unreachable

if.then.i:                                        ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit:                                 ; preds = %PageUptodate.exit
  %23 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %page, align 4
  %25 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool14.not = icmp eq i32 %25, 0
  br i1 %tobool14.not, label %if.then23, label %PagePrivate.exit.do.body45_crit_edge, !prof !103

PagePrivate.exit.do.body45_crit_edge:             ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45

if.then23:                                        ; preds = %PagePrivate.exit
  tail call void @_raw_spin_unlock(ptr noundef %private_lock) #8
  %call25 = tail call ptr @alloc_page_buffers(ptr noundef %page, i32 noundef %20, i1 noundef zeroext true) #8
  tail call void @_raw_spin_lock(ptr noundef %private_lock) #8
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp.i.not.i149 = icmp eq i32 %27, -1
  br i1 %cmp.i.not.i149, label %if.then.i150, label %PagePrivate.exit153, !prof !103

if.then.i150:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit153:                              ; preds = %if.then23
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %page, align 4
  %30 = and i32 %29, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool28.not = icmp eq i32 %30, 0
  br i1 %tobool28.not, label %PagePrivate.exit153.do.body38_crit_edge, label %PagePrivate.exit153.do.body45_crit_edge, !prof !102

PagePrivate.exit153.do.body45_crit_edge:          ; preds = %PagePrivate.exit153
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45

PagePrivate.exit153.do.body38_crit_edge:          ; preds = %PagePrivate.exit153
  br label %do.body38

do.body38:                                        ; preds = %set_buffer_uptodate.exit.do.body38_crit_edge, %PagePrivate.exit153.do.body38_crit_edge
  %bh.0 = phi ptr [ %34, %set_buffer_uptodate.exit.do.body38_crit_edge ], [ %call25, %PagePrivate.exit153.do.body38_crit_edge ]
  %31 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i154 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i154)
  %tobool.not.i = icmp eq i32 %and1.i.i154, 0
  br i1 %tobool.not.i, label %if.then.i155, label %do.body38.set_buffer_uptodate.exit_crit_edge

do.body38.set_buffer_uptodate.exit_crit_edge:     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i155:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i155, %do.body38.set_buffer_uptodate.exit_crit_edge
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %33 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_this_page, align 4
  %tobool40.not = icmp eq ptr %34, null
  br i1 %tobool40.not, label %do.end41, label %set_buffer_uptodate.exit.do.body38_crit_edge

set_buffer_uptodate.exit.do.body38_crit_edge:     ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body38

do.end41:                                         ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  %b_this_page.le = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %35 = ptrtoint ptr %b_this_page.le to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call25, ptr %b_this_page.le, align 4
  tail call fastcc void @attach_page_private(ptr noundef %page, ptr noundef %call25)
  br label %do.body45

do.body45:                                        ; preds = %do.end41, %PagePrivate.exit153.do.body45_crit_edge, %PagePrivate.exit.do.body45_crit_edge
  %buffers_to_free.0 = phi ptr [ null, %do.end41 ], [ null, %PagePrivate.exit.do.body45_crit_edge ], [ %call25, %PagePrivate.exit153.do.body45_crit_edge ]
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i.not.i156 = icmp eq i32 %37, -1
  br i1 %cmp.i.not.i156, label %if.then.i157, label %PagePrivate.exit160, !prof !103

if.then.i157:                                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit160:                              ; preds = %do.body45
  %38 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %page, align 4
  %40 = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool47.not = icmp eq i32 %40, 0
  br i1 %tobool47.not, label %do.body57, label %do.end65, !prof !103

do.body57:                                        ; preds = %PagePrivate.exit160
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1739, 0\0A.popsection", ""() #8, !srcloc !138
  unreachable

do.end65:                                         ; preds = %PagePrivate.exit160
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %41 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %private, align 4
  %43 = inttoptr i32 %42 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool67.not = icmp eq i32 %42, 0
  br i1 %tobool67.not, label %do.body77, label %do.end65.do.body86_crit_edge, !prof !103

do.end65.do.body86_crit_edge:                     ; preds = %do.end65
  br label %do.body86

do.body77:                                        ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1740, 0\0A.popsection", ""() #8, !srcloc !139
  unreachable

do.body86:                                        ; preds = %do.cond99.do.body86_crit_edge, %do.end65.do.body86_crit_edge
  %bh.1 = phi ptr [ %51, %do.cond99.do.body86_crit_edge ], [ %43, %do.end65.do.body86_crit_edge ]
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 5
  %44 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_data, align 4
  %46 = ptrtoint ptr %45 to i32
  %and = and i32 %46, 4095
  %add87 = add i32 %and, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %add87, i32 %ofs)
  %cmp.not = icmp ugt i32 %add87, %ofs
  br i1 %cmp.not, label %if.end89, label %do.body86.do.cond99_crit_edge

do.body86.do.cond99_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond99

if.end89:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add)
  %cmp90.not = icmp ult i32 %and, %add
  br i1 %cmp90.not, label %if.end98, label %if.end89.do.end102_crit_edge, !prof !102

if.end89.do.end102_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end102

if.end98:                                         ; preds = %if.end89
  %47 = ptrtoint ptr %bh.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %bh.1, align 4
  %49 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i161 = icmp eq i32 %49, 0
  br i1 %tobool.not.i161, label %if.then.i162, label %if.end98.do.cond99_crit_edge

if.end98.do.cond99_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond99

if.then.i162:                                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %bh.1) #8
  br label %do.cond99

do.cond99:                                        ; preds = %if.then.i162, %if.end98.do.cond99_crit_edge, %do.body86.do.cond99_crit_edge
  %b_this_page100 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 1
  %50 = ptrtoint ptr %b_this_page100 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_this_page100, align 4
  %cmp101.not = icmp eq ptr %51, %43
  br i1 %cmp101.not, label %do.cond99.do.end102_crit_edge, label %do.cond99.do.body86_crit_edge

do.cond99.do.body86_crit_edge:                    ; preds = %do.cond99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body86

do.cond99.do.end102_crit_edge:                    ; preds = %do.cond99
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end102

do.end102:                                        ; preds = %do.cond99.do.end102_crit_edge, %if.end89.do.end102_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %private_lock) #8
  %call104 = tail call i32 @__set_page_dirty_nobuffers(ptr noundef %page) #8
  %tobool105.not = icmp eq ptr %buffers_to_free.0, null
  br i1 %tobool105.not, label %do.end102.if.end118_crit_edge, label %do.end102.do.body113_crit_edge, !prof !102

do.end102.do.body113_crit_edge:                   ; preds = %do.end102
  br label %do.body113

do.end102.if.end118_crit_edge:                    ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

do.body113:                                       ; preds = %do.body113.do.body113_crit_edge, %do.end102.do.body113_crit_edge
  %buffers_to_free.1 = phi ptr [ %53, %do.body113.do.body113_crit_edge ], [ %buffers_to_free.0, %do.end102.do.body113_crit_edge ]
  %b_this_page114 = getelementptr inbounds %struct.buffer_head, ptr %buffers_to_free.1, i32 0, i32 1
  %52 = ptrtoint ptr %b_this_page114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_this_page114, align 4
  tail call void @free_buffer_head(ptr noundef nonnull %buffers_to_free.1) #8
  %tobool116.not = icmp eq ptr %53, null
  br i1 %tobool116.not, label %do.body113.if.end118_crit_edge, label %do.body113.do.body113_crit_edge

do.body113.do.body113_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body113

do.body113.if.end118_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.end118:                                        ; preds = %do.body113.if.end118_crit_edge, %do.end102.if.end118_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @PageUptodate(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !102

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
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %do.end.i, %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge
  %.lobit = lshr exact i32 %10, 2
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_page_buffers(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @attach_page_private(ptr noundef %page, ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !102

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
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i.i, label %do.end5.i.i, !prof !103

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.42) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !140
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@attach_page_private, %if.then.i.i.i.i)) #8
          to label %folio_get.exit.i [label %if.then.i.i.i.i], !srcloc !142

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #8
  br label %folio_get.exit.i

folio_get.exit.i:                                 ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %private.i = getelementptr inbounds %struct.anon.83, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %private.i, align 4
  %9 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_attach_private.exit, label %if.then.i.i.i, !prof !102

if.then.i.i.i:                                    ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

folio_attach_private.exit:                        ; preds = %folio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef %4) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_buffer_head(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !143
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !144
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !103

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !145
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !146
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !147
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !148
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !149
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
declare dso_local void @block_invalidatepage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_write_mst_block(ptr noundef %page, ptr noundef %wbc) unnamed_addr #0 align 64 {
entry:
  %locked_nis = alloca [8 x ptr], align 4
  %bhs = alloca [8 x ptr], align 4
  %tni = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -528
  %vol1 = getelementptr i8, ptr %3, i32 -448
  %4 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vol1, align 8
  %itype = getelementptr i8, ptr %3, i32 -120
  %6 = ptrtoint ptr %itype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %itype, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %locked_nis) #8
  %8 = call ptr @memset(ptr %locked_nis, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %bhs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp = icmp ult i32 %7, 512
  %9 = call ptr @memset(ptr %bhs, i32 255, i32 32)
  br i1 %cmp, label %do.end, label %if.end22, !prof !103

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 917, i32 noundef 9, ptr noundef null) #8
  br label %cleanup876

if.end22:                                         ; preds = %entry
  %i_ino = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_ino, align 8
  %type = getelementptr i8, ptr %3, i32 -444
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 921, ptr noundef nonnull @__func__.ntfs_write_mst_block, ptr noundef nonnull @.str.9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #8
  %state.i = getelementptr i8, ptr %3, i32 -464
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i, align 4
  %18 = and i32 %17, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool25.not = icmp eq i32 %18, 0
  br i1 %tobool25.not, label %do.body35, label %do.body44, !prof !103

do.body35:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 922, 0\0A.popsection", ""() #8, !srcloc !150
  unreachable

do.body44:                                        ; preds = %if.end22
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i, align 4
  %21 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool46.not = icmp eq i32 %21, 0
  br i1 %tobool46.not, label %do.body56, label %do.end64, !prof !103

do.body56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 923, 0\0A.popsection", ""() #8, !srcloc !151
  unreachable

do.end64:                                         ; preds = %do.body44
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %3, align 8
  %24 = and i16 %23, -4096
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.43)
  switch i16 %24, label %do.end64.lor.rhs_crit_edge [
    i16 -32768, label %land.end
    i16 16384, label %do.end64.do.end103_crit_edge
  ]

do.end64.do.end103_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103

do.end64.lor.rhs_crit_edge:                       ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.end:                                         ; preds = %do.end64
  %26 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool68.not = icmp eq i32 %27, 0
  br i1 %tobool68.not, label %land.end.do.end103_crit_edge, label %land.end.lor.rhs_crit_edge

land.end.lor.rhs_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.end.do.end103_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103

lor.rhs:                                          ; preds = %land.end.lor.rhs_crit_edge, %do.end64.lor.rhs_crit_edge
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i, align 4
  %30 = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool80.not = icmp eq i32 %30, 0
  br i1 %tobool80.not, label %lor.rhs.do.body95_crit_edge, label %land.rhs81

lor.rhs.do.body95_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body95

land.rhs81:                                       ; preds = %lor.rhs
  %31 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612736, i32 %32)
  %cmp83 = icmp eq i32 %32, -1610612736
  br i1 %cmp83, label %land.rhs81.do.end103_crit_edge, label %land.rhs81.do.body95_crit_edge, !prof !102

land.rhs81.do.body95_crit_edge:                   ; preds = %land.rhs81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body95

land.rhs81.do.end103_crit_edge:                   ; preds = %land.rhs81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end103

do.body95:                                        ; preds = %land.rhs81.do.body95_crit_edge, %lor.rhs.do.body95_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 932, 0\0A.popsection", ""() #8, !srcloc !152
  unreachable

do.end103:                                        ; preds = %land.rhs81.do.end103_crit_edge, %land.end.do.end103_crit_edge, %do.end64.do.end103_crit_edge
  %33 = phi i1 [ true, %land.end.do.end103_crit_edge ], [ false, %land.rhs81.do.end103_crit_edge ], [ false, %do.end64.do.end103_crit_edge ]
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %s_blocksize_bits, align 4
  %div = udiv i32 4096, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %37)
  %tobool106.not = icmp ugt i32 %37, 4096
  br i1 %tobool106.not, label %do.body116, label %do.body125, !prof !103

do.body116:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 936, 0\0A.popsection", ""() #8, !srcloc !153
  unreachable

do.body125:                                       ; preds = %do.end103
  call void @__sanitizer_cov_trace_const_cmp4(i32 456, i32 %37)
  %cmp126 = icmp ult i32 %37, 456
  br i1 %cmp126, label %do.body135, label %do.end143, !prof !103

do.body135:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 937, 0\0A.popsection", ""() #8, !srcloc !154
  unreachable

do.end143:                                        ; preds = %do.body125
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %40 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp144 = icmp eq i32 %41, 1
  %42 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp.i.not.i = icmp eq i32 %43, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !103

if.then.i:                                        ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit:                                 ; preds = %do.end143
  %44 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %page, align 4
  %46 = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool149.not = icmp eq i32 %46, 0
  br i1 %tobool149.not, label %do.body159, label %do.end167, !prof !103

do.body159:                                       ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 943, 0\0A.popsection", ""() #8, !srcloc !155
  unreachable

do.end167:                                        ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %47 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %private, align 4
  %49 = inttoptr i32 %48 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool170.not = icmp eq i32 %48, 0
  br i1 %tobool170.not, label %do.body180, label %do.end188, !prof !103

do.body180:                                       ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 944, 0\0A.popsection", ""() #8, !srcloc !156
  unreachable

do.end188:                                        ; preds = %do.end167
  %block_size_bits = getelementptr i8, ptr %3, i32 -108
  %50 = ptrtoint ptr %block_size_bits to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %block_size_bits, align 4
  %conv190 = zext i8 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %51)
  %tobool192.not = icmp ugt i8 %51, 12
  br i1 %tobool192.not, label %do.body202, label %do.end210, !prof !103

do.body202:                                       ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 947, 0\0A.popsection", ""() #8, !srcloc !157
  unreachable

do.end210:                                        ; preds = %do.end188
  %conv211 = zext i8 %39 to i32
  %shr212 = lshr i32 %7, %conv211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr212)
  %tobool214.not = icmp eq i32 %shr212, 0
  br i1 %tobool214.not, label %do.body224, label %do.end232, !prof !103

do.body224:                                       ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 949, 0\0A.popsection", ""() #8, !srcloc !158
  unreachable

do.end232:                                        ; preds = %do.end210
  %52 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index, align 4
  %conv234 = zext i32 %53 to i64
  %sub = sub nsw i32 12, %conv211
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %conv234, %sh_prom
  %call236 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %conv237 = zext i32 %37 to i64
  %add = add nsw i64 %conv237, -1
  %sub238 = add i64 %add, %call236
  %sh_prom240 = zext i8 %39 to i64
  %shr241 = ashr i64 %sub238, %sh_prom240
  %conv297 = sext i32 %shr212 to i64
  %cluster_size_mask = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 12
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 13
  %runlist = getelementptr i8, ptr %3, i32 -432
  %lock = getelementptr i8, ptr %3, i32 -428
  %mft_record_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 16
  %mft_no = getelementptr i8, ptr %3, i32 -460
  br label %do.body242

do.body242:                                       ; preds = %cleanup488.do.body242_crit_edge, %do.end232
  %rec_block.0 = phi i64 [ %shl, %do.end232 ], [ %rec_block.2, %cleanup488.do.body242_crit_edge ]
  %bh.0 = phi ptr [ %49, %do.end232 ], [ %104, %cleanup488.do.body242_crit_edge ]
  %rec_start_bh.0 = phi ptr [ null, %do.end232 ], [ %rec_start_bh.6, %cleanup488.do.body242_crit_edge ]
  %rl.0 = phi ptr [ null, %do.end232 ], [ %rl.5, %cleanup488.do.body242_crit_edge ]
  %nr_bhs.0 = phi i32 [ 0, %do.end232 ], [ %nr_bhs.5, %cleanup488.do.body242_crit_edge ]
  %err.0 = phi i32 [ 0, %do.end232 ], [ %err.4, %cleanup488.do.body242_crit_edge ]
  %err2.0 = phi i32 [ 0, %do.end232 ], [ %err2.7, %cleanup488.do.body242_crit_edge ]
  %page_is_dirty.0.off0 = phi i1 [ false, %do.end232 ], [ %page_is_dirty.5.off0, %cleanup488.do.body242_crit_edge ]
  %rec_is_dirty.0.off0 = phi i1 [ false, %do.end232 ], [ %rec_is_dirty.2.off0, %cleanup488.do.body242_crit_edge ]
  %block.0 = phi i64 [ %shl, %do.end232 ], [ %inc492, %cleanup488.do.body242_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %block.0, i64 %rec_block.0)
  %cmp243 = icmp ult i64 %block.0, %rec_block.0
  br i1 %cmp243, label %if.then251, label %do.body278, !prof !102

if.then251:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_cmp8(i64 %block.0, i64 %shr241)
  %cmp252.not = icmp ult i64 %block.0, %shr241
  br i1 %cmp252.not, label %if.end261, label %if.then260, !prof !102

if.then260:                                       ; preds = %if.then251
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #8
  %54 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i1168 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1168)
  %tobool.not.i = icmp eq i32 %and1.i.i1168, 0
  br i1 %tobool.not.i, label %if.then.i1169, label %if.then260.cleanup488_crit_edge

if.then260.cleanup488_crit_edge:                  ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup488

if.then.i1169:                                    ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #8
  br label %cleanup488

if.end261:                                        ; preds = %if.then251
  br i1 %rec_is_dirty.0.off0, label %if.end264, label %if.end261.cleanup488_crit_edge

if.end261.cleanup488_crit_edge:                   ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup488

if.end264:                                        ; preds = %if.end261
  %56 = zext i32 %err2.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %err2.0, label %if.then275 [
    i32 0, label %if.end264.if.end313_crit_edge
    i32 -12, label %if.end264.cleanup488_crit_edge
  ], !prof !159

if.end264.cleanup488_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup488

if.end264.if.end313_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end313

if.then275:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #8
  br label %cleanup488

do.body278:                                       ; preds = %do.body242
  call void @__sanitizer_cov_trace_cmp8(i64 %block.0, i64 %rec_block.0)
  %cmp279 = icmp ugt i64 %block.0, %rec_block.0
  br i1 %cmp279, label %do.body288, label %do.end296, !prof !103

do.body288:                                       ; preds = %do.body278
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 984, 0\0A.popsection", ""() #8, !srcloc !160
  unreachable

do.end296:                                        ; preds = %do.body278
  %add298 = add i64 %rec_block.0, %conv297
  call void @__sanitizer_cov_trace_cmp8(i64 %block.0, i64 %shr241)
  %cmp299.not = icmp ult i64 %block.0, %shr241
  br i1 %cmp299.not, label %if.end308, label %if.then307, !prof !102

if.then307:                                       ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #8
  br label %cleanup488

if.end308:                                        ; preds = %do.end296
  %57 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %bh.0, align 4
  %59 = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool310.not = icmp eq i32 %59, 0
  br i1 %tobool310.not, label %if.end308.cleanup488_crit_edge, label %if.end308.if.end313_crit_edge

if.end308.if.end313_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end313

if.end308.cleanup488_crit_edge:                   ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup488

if.end313:                                        ; preds = %if.end308.if.end313_crit_edge, %if.end264.if.end313_crit_edge
  %rec_block.1 = phi i64 [ %rec_block.0, %if.end264.if.end313_crit_edge ], [ %add298, %if.end308.if.end313_crit_edge ]
  %rec_start_bh.1 = phi ptr [ %rec_start_bh.0, %if.end264.if.end313_crit_edge ], [ %bh.0, %if.end308.if.end313_crit_edge ]
  %60 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %bh.0, align 4
  %62 = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool315.not = icmp eq i32 %62, 0
  br i1 %tobool315.not, label %if.then324, label %if.end313.do.body447_crit_edge, !prof !103

if.end313.do.body447_crit_edge:                   ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body447

if.then324:                                       ; preds = %if.end313
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 26
  %65 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %s_bdev, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 6
  %67 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %b_bdev, align 8
  %shl328 = shl i64 %block.0, %sh_prom240
  %68 = ptrtoint ptr %cluster_size_mask to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cluster_size_mask, align 4
  %70 = trunc i64 %shl328 to i32
  %conv331 = and i32 %69, %70
  %71 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom333 = zext i8 %72 to i64
  %shr334 = ashr i64 %shl328, %sh_prom333
  %tobool335.not = icmp eq ptr %rl.0, null
  br i1 %tobool335.not, label %if.then324.if.end339_crit_edge, label %if.then324.while.cond.preheader_crit_edge

if.then324.while.cond.preheader_crit_edge:        ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.then324.if.end339_crit_edge:                   ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end339

if.end339:                                        ; preds = %if.then382.if.end339_crit_edge, %if.then324.if.end339_crit_edge
  %is_retry.0.off0 = phi i1 [ true, %if.then382.if.end339_crit_edge ], [ false, %if.then324.if.end339_crit_edge ]
  tail call void @down_read(ptr noundef %lock) #8
  %73 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %runlist, align 8
  %cmp340.not = icmp eq ptr %74, null
  br i1 %cmp340.not, label %if.else376.thread, label %if.end339.while.cond.preheader_crit_edge, !prof !103

if.end339.while.cond.preheader_crit_edge:         ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end339.while.cond.preheader_crit_edge, %if.then324.while.cond.preheader_crit_edge
  %is_retry.1.off01334 = phi i1 [ %is_retry.0.off0, %if.end339.while.cond.preheader_crit_edge ], [ false, %if.then324.while.cond.preheader_crit_edge ]
  %rl.11333 = phi ptr [ %74, %if.end339.while.cond.preheader_crit_edge ], [ %rl.0, %if.then324.while.cond.preheader_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %land.rhs350.while.cond_crit_edge, %while.cond.preheader
  %rl.2 = phi ptr [ %arrayidx, %land.rhs350.while.cond_crit_edge ], [ %rl.11333, %while.cond.preheader ]
  %length = getelementptr inbounds %struct.runlist_element, ptr %rl.2, i32 0, i32 2
  %75 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %76)
  %tobool349.not = icmp eq i64 %76, 0
  br i1 %tobool349.not, label %while.cond.if.end357_crit_edge, label %land.rhs350

while.cond.if.end357_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end357

land.rhs350:                                      ; preds = %while.cond
  %arrayidx = getelementptr %struct.runlist_element, ptr %rl.2, i32 1
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx, align 8
  %cmp352.not = icmp sgt i64 %78, %shr334
  br i1 %cmp352.not, label %land.rhs350.if.end357_crit_edge, label %land.rhs350.while.cond_crit_edge

land.rhs350.while.cond_crit_edge:                 ; preds = %land.rhs350
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

land.rhs350.if.end357_crit_edge:                  ; preds = %land.rhs350
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end357

if.end357:                                        ; preds = %land.rhs350.if.end357_crit_edge, %while.cond.if.end357_crit_edge
  %call355 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %rl.2, i64 noundef %shr334) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call355)
  %cmp358 = icmp sgt i64 %call355, -1
  br i1 %cmp358, label %if.then366, label %if.else376, !prof !102

if.then366:                                       ; preds = %if.end357
  %79 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom369 = zext i8 %80 to i64
  %shl370 = shl i64 %call355, %sh_prom369
  %conv371 = zext i32 %conv331 to i64
  %add372 = add i64 %shl370, %conv371
  %shr375 = ashr i64 %add372, %sh_prom240
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %81 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %shr375, ptr %b_blocknr, align 8
  %82 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %bh.0, align 4
  %84 = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i1174 = icmp eq i32 %84, 0
  br i1 %tobool.not.i1174, label %if.then.i1175, label %if.then366.do.body447_crit_edge

if.then366.do.body447_crit_edge:                  ; preds = %if.then366
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body447

if.then.i1175:                                    ; preds = %if.then366
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh.0) #8
  br label %do.body447

if.else376:                                       ; preds = %if.end357
  %brmerge = or i1 %33, %is_retry.1.off01334
  %brmerge.not = xor i1 %brmerge, true
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %call355)
  %cmp380 = icmp eq i64 %call355, -2
  %or.cond = select i1 %brmerge.not, i1 %cmp380, i1 false
  br i1 %or.cond, label %if.else376.if.then382_crit_edge, label %if.else402

if.else376.if.then382_crit_edge:                  ; preds = %if.else376
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then382

if.else376.thread:                                ; preds = %if.end339
  %brmerge1264 = or i1 %33, %is_retry.0.off0
  br i1 %brmerge1264, label %if.else376.thread.if.then404_crit_edge, label %if.else376.thread.if.then382_crit_edge

if.else376.thread.if.then382_crit_edge:           ; preds = %if.else376.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then382

if.else376.thread.if.then404_crit_edge:           ; preds = %if.else376.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then404

if.then382:                                       ; preds = %if.else376.thread.if.then382_crit_edge, %if.else376.if.then382_crit_edge
  %rl.312571274 = phi ptr [ null, %if.else376.thread.if.then382_crit_edge ], [ %rl.2, %if.else376.if.then382_crit_edge ]
  tail call void @up_read(ptr noundef %lock) #8
  %call385 = tail call i32 @ntfs_map_runlist(ptr noundef %add.ptr.i, i64 noundef %shr334) #8
  %85 = zext i32 %call385 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call385, label %if.then382.if.end400_crit_edge [
    i32 0, label %if.then382.if.end339_crit_edge
    i32 -12, label %if.then399
  ], !prof !159

if.then382.if.end339_crit_edge:                   ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end339

if.then382.if.end400_crit_edge:                   ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end400

if.then399:                                       ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end400

if.end400:                                        ; preds = %if.then399, %if.then382.if.end400_crit_edge
  %page_is_dirty.1.off0 = phi i1 [ true, %if.then399 ], [ %page_is_dirty.0.off0, %if.then382.if.end400_crit_edge ]
  %conv401 = sext i32 %call385 to i64
  br label %if.end408

if.else402:                                       ; preds = %if.else376
  %tobool403.not = icmp eq ptr %rl.2, null
  br i1 %tobool403.not, label %if.else402.if.then404_crit_edge, label %if.else402.if.end408_crit_edge

if.else402.if.end408_crit_edge:                   ; preds = %if.else402
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end408

if.else402.if.then404_crit_edge:                  ; preds = %if.else402
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then404

if.then404:                                       ; preds = %if.else402.if.then404_crit_edge, %if.else376.thread.if.then404_crit_edge
  %lcn.0125812711280 = phi i64 [ %call355, %if.else402.if.then404_crit_edge ], [ -2, %if.else376.thread.if.then404_crit_edge ]
  tail call void @up_read(ptr noundef %lock) #8
  br label %if.end408

if.end408:                                        ; preds = %if.then404, %if.else402.if.end408_crit_edge, %if.end400
  %rl.312571273 = phi ptr [ %rl.2, %if.else402.if.end408_crit_edge ], [ null, %if.then404 ], [ %rl.312571274, %if.end400 ]
  %err2.4 = phi i32 [ -5, %if.else402.if.end408_crit_edge ], [ -5, %if.then404 ], [ %call385, %if.end400 ]
  %page_is_dirty.2.off0 = phi i1 [ %page_is_dirty.0.off0, %if.else402.if.end408_crit_edge ], [ %page_is_dirty.0.off0, %if.then404 ], [ %page_is_dirty.1.off0, %if.end400 ]
  %lcn.1 = phi i64 [ %call355, %if.else402.if.end408_crit_edge ], [ %lcn.0125812711280, %if.then404 ], [ %conv401, %if.end400 ]
  %86 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %err.0, label %if.end408.if.end414_crit_edge [
    i32 0, label %if.end408.if.then413_crit_edge
    i32 -12, label %if.end408.if.then413_crit_edge1349
  ]

if.end408.if.then413_crit_edge1349:               ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then413

if.end408.if.then413_crit_edge:                   ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then413

if.end408.if.end414_crit_edge:                    ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end414

if.then413:                                       ; preds = %if.end408.if.then413_crit_edge, %if.end408.if.then413_crit_edge1349
  br label %if.end414

if.end414:                                        ; preds = %if.then413, %if.end408.if.end414_crit_edge
  %err.1 = phi i32 [ %err2.4, %if.then413 ], [ %err.0, %if.end408.if.end414_crit_edge ]
  %b_blocknr415 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %87 = ptrtoint ptr %b_blocknr415 to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 -1, ptr %b_blocknr415, align 8
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %5, align 8
  %90 = ptrtoint ptr %mft_record_size_bits to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mft_record_size_bits, align 4
  %sh_prom421 = zext i8 %91 to i64
  %shr422 = ashr i64 %shl328, %sh_prom421
  %92 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mft_no, align 4
  %94 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %type, align 4
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_write_mst_block, ptr noundef %89, ptr noundef nonnull @.str.10, i64 noundef %shr422, i32 noundef %93, i32 noundef %95, i64 noundef %lcn.1) #8
  %cmp424.not = icmp eq ptr %rec_start_bh.1, %bh.0
  br i1 %cmp424.not, label %if.end414.cleanup488_crit_edge, label %if.end414.while.cond427_crit_edge

if.end414.while.cond427_crit_edge:                ; preds = %if.end414
  br label %while.cond427

if.end414.cleanup488_crit_edge:                   ; preds = %if.end414
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup488

while.cond427:                                    ; preds = %while.cond427.while.cond427_crit_edge, %if.end414.while.cond427_crit_edge
  %nr_bhs.1 = phi i32 [ %dec, %while.cond427.while.cond427_crit_edge ], [ %nr_bhs.0, %if.end414.while.cond427_crit_edge ]
  %dec = add i32 %nr_bhs.1, -1
  %arrayidx428 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %dec
  %96 = ptrtoint ptr %arrayidx428 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx428, align 4
  %cmp429.not = icmp eq ptr %97, %rec_start_bh.1
  br i1 %cmp429.not, label %while.end432, label %while.cond427.while.cond427_crit_edge

while.cond427.while.cond427_crit_edge:            ; preds = %while.cond427
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond427

while.end432:                                     ; preds = %while.cond427
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %err2.4)
  %cmp433.not = icmp eq i32 %err2.4, -12
  br i1 %cmp433.not, label %while.end432.cleanup488_crit_edge, label %while.end432.do.body436_crit_edge

while.end432.do.body436_crit_edge:                ; preds = %while.end432
  br label %do.body436

while.end432.cleanup488_crit_edge:                ; preds = %while.end432
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup488

do.body436:                                       ; preds = %do.body436.do.body436_crit_edge, %while.end432.do.body436_crit_edge
  %rec_start_bh.2 = phi ptr [ %99, %do.body436.do.body436_crit_edge ], [ %rec_start_bh.1, %while.end432.do.body436_crit_edge ]
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %rec_start_bh.2) #8
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %rec_start_bh.2, i32 0, i32 1
  %98 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %b_this_page, align 4
  %cmp438.not = icmp eq ptr %99, %bh.0
  br i1 %cmp438.not, label %do.body436.cleanup488_crit_edge, label %do.body436.do.body436_crit_edge

do.body436.do.body436_crit_edge:                  ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body436

do.body436.cleanup488_crit_edge:                  ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup488

do.body447:                                       ; preds = %if.then.i1175, %if.then366.do.body447_crit_edge, %if.end313.do.body447_crit_edge
  %rl.4 = phi ptr [ %rl.0, %if.end313.do.body447_crit_edge ], [ %rl.2, %if.then366.do.body447_crit_edge ], [ %rl.2, %if.then.i1175 ]
  %100 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i1176 = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1176)
  %tobool449.not = icmp eq i32 %and1.i.i1176, 0
  br i1 %tobool449.not, label %do.body459, label %do.body468, !prof !103

do.body459:                                       ; preds = %do.body447
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1092, 0\0A.popsection", ""() #8, !srcloc !161
  unreachable

do.body468:                                       ; preds = %do.body447
  call void @__sanitizer_cov_trace_cmp4(i32 %nr_bhs.0, i32 %div)
  %cmp469.not = icmp slt i32 %nr_bhs.0, %div
  br i1 %cmp469.not, label %do.end486, label %do.body478, !prof !102

do.body478:                                       ; preds = %do.body468
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1093, 0\0A.popsection", ""() #8, !srcloc !162
  unreachable

do.end486:                                        ; preds = %do.body468
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nsw i32 %nr_bhs.0, 1
  %arrayidx487 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %nr_bhs.0
  %102 = ptrtoint ptr %arrayidx487 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %bh.0, ptr %arrayidx487, align 4
  br label %cleanup488

cleanup488:                                       ; preds = %do.end486, %do.body436.cleanup488_crit_edge, %while.end432.cleanup488_crit_edge, %if.end414.cleanup488_crit_edge, %if.end308.cleanup488_crit_edge, %if.then307, %if.then275, %if.end264.cleanup488_crit_edge, %if.end261.cleanup488_crit_edge, %if.then.i1169, %if.then260.cleanup488_crit_edge
  %rec_block.2 = phi i64 [ %rec_block.1, %do.end486 ], [ %add298, %if.then307 ], [ %rec_block.0, %if.end261.cleanup488_crit_edge ], [ %rec_block.0, %if.end264.cleanup488_crit_edge ], [ %rec_block.0, %if.then275 ], [ %add298, %if.end308.cleanup488_crit_edge ], [ %rec_block.0, %if.then260.cleanup488_crit_edge ], [ %rec_block.0, %if.then.i1169 ], [ %rec_block.1, %if.end414.cleanup488_crit_edge ], [ %rec_block.1, %while.end432.cleanup488_crit_edge ], [ %rec_block.1, %do.body436.cleanup488_crit_edge ]
  %rec_start_bh.6 = phi ptr [ %rec_start_bh.1, %do.end486 ], [ %rec_start_bh.0, %if.then307 ], [ %rec_start_bh.0, %if.end261.cleanup488_crit_edge ], [ %rec_start_bh.0, %if.end264.cleanup488_crit_edge ], [ %rec_start_bh.0, %if.then275 ], [ %rec_start_bh.0, %if.end308.cleanup488_crit_edge ], [ %rec_start_bh.0, %if.then260.cleanup488_crit_edge ], [ %rec_start_bh.0, %if.then.i1169 ], [ %bh.0, %if.end414.cleanup488_crit_edge ], [ %rec_start_bh.1, %while.end432.cleanup488_crit_edge ], [ %bh.0, %do.body436.cleanup488_crit_edge ]
  %rl.5 = phi ptr [ %rl.4, %do.end486 ], [ %rl.0, %if.then307 ], [ %rl.0, %if.end261.cleanup488_crit_edge ], [ %rl.0, %if.end264.cleanup488_crit_edge ], [ %rl.0, %if.then275 ], [ %rl.0, %if.end308.cleanup488_crit_edge ], [ %rl.0, %if.then260.cleanup488_crit_edge ], [ %rl.0, %if.then.i1169 ], [ %rl.312571273, %if.end414.cleanup488_crit_edge ], [ %rl.312571273, %while.end432.cleanup488_crit_edge ], [ %rl.312571273, %do.body436.cleanup488_crit_edge ]
  %nr_bhs.5 = phi i32 [ %inc, %do.end486 ], [ %nr_bhs.0, %if.then307 ], [ %nr_bhs.0, %if.end261.cleanup488_crit_edge ], [ %nr_bhs.0, %if.end264.cleanup488_crit_edge ], [ %nr_bhs.0, %if.then275 ], [ %nr_bhs.0, %if.end308.cleanup488_crit_edge ], [ %nr_bhs.0, %if.then260.cleanup488_crit_edge ], [ %nr_bhs.0, %if.then.i1169 ], [ %nr_bhs.0, %if.end414.cleanup488_crit_edge ], [ %dec, %while.end432.cleanup488_crit_edge ], [ %dec, %do.body436.cleanup488_crit_edge ]
  %err.4 = phi i32 [ %err.0, %do.end486 ], [ %err.0, %if.then307 ], [ %err.0, %if.end261.cleanup488_crit_edge ], [ %err.0, %if.end264.cleanup488_crit_edge ], [ %err.0, %if.then275 ], [ %err.0, %if.end308.cleanup488_crit_edge ], [ %err.0, %if.then260.cleanup488_crit_edge ], [ %err.0, %if.then.i1169 ], [ %err.1, %if.end414.cleanup488_crit_edge ], [ %err.1, %while.end432.cleanup488_crit_edge ], [ %err.1, %do.body436.cleanup488_crit_edge ]
  %err2.7 = phi i32 [ 0, %do.end486 ], [ 0, %if.then307 ], [ %err2.0, %if.end261.cleanup488_crit_edge ], [ %err2.0, %if.end264.cleanup488_crit_edge ], [ %err2.0, %if.then275 ], [ 0, %if.end308.cleanup488_crit_edge ], [ %err2.0, %if.then260.cleanup488_crit_edge ], [ %err2.0, %if.then.i1169 ], [ %err2.4, %if.end414.cleanup488_crit_edge ], [ -12, %while.end432.cleanup488_crit_edge ], [ %err2.4, %do.body436.cleanup488_crit_edge ]
  %page_is_dirty.5.off0 = phi i1 [ %page_is_dirty.0.off0, %do.end486 ], [ %page_is_dirty.0.off0, %if.then307 ], [ %page_is_dirty.0.off0, %if.end261.cleanup488_crit_edge ], [ %page_is_dirty.0.off0, %if.end264.cleanup488_crit_edge ], [ %page_is_dirty.0.off0, %if.then275 ], [ %page_is_dirty.0.off0, %if.end308.cleanup488_crit_edge ], [ %page_is_dirty.0.off0, %if.then260.cleanup488_crit_edge ], [ %page_is_dirty.0.off0, %if.then.i1169 ], [ %page_is_dirty.2.off0, %if.end414.cleanup488_crit_edge ], [ %page_is_dirty.2.off0, %while.end432.cleanup488_crit_edge ], [ %page_is_dirty.2.off0, %do.body436.cleanup488_crit_edge ]
  %rec_is_dirty.2.off0 = phi i1 [ true, %do.end486 ], [ %rec_is_dirty.0.off0, %if.then307 ], [ false, %if.end261.cleanup488_crit_edge ], [ true, %if.end264.cleanup488_crit_edge ], [ true, %if.then275 ], [ false, %if.end308.cleanup488_crit_edge ], [ %rec_is_dirty.0.off0, %if.then260.cleanup488_crit_edge ], [ %rec_is_dirty.0.off0, %if.then.i1169 ], [ true, %if.end414.cleanup488_crit_edge ], [ true, %while.end432.cleanup488_crit_edge ], [ true, %do.body436.cleanup488_crit_edge ]
  %inc492 = add i64 %block.0, 1
  %b_this_page493 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %103 = ptrtoint ptr %b_this_page493 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %b_this_page493, align 4
  %cmp494.not = icmp eq ptr %104, %49
  br i1 %cmp494.not, label %do.end496, label %cleanup488.do.body242_crit_edge

cleanup488.do.body242_crit_edge:                  ; preds = %cleanup488
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body242

do.end496:                                        ; preds = %cleanup488
  %tobool497.not = icmp eq ptr %rl.5, null
  br i1 %tobool497.not, label %do.end496.if.end507_crit_edge, label %if.then504, !prof !102

do.end496.if.end507_crit_edge:                    ; preds = %do.end496
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end507

if.then504:                                       ; preds = %do.end496
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %lock) #8
  br label %if.end507

if.end507:                                        ; preds = %if.then504, %do.end496.if.end507_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.5)
  %tobool508.not = icmp eq i32 %nr_bhs.5, 0
  br i1 %tobool508.not, label %if.end507.done_crit_edge, label %if.end510

if.end507.done_crit_edge:                         ; preds = %if.end507
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end510:                                        ; preds = %if.end507
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 44) #8
  %105 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %page, align 4
  %shr.i.i1232 = lshr i32 %106, 30
  %107 = zext i32 %shr.i.i1232 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %shr.i.i1232, label %if.end510.if.then.i1233_crit_edge [
    i32 2, label %if.end510.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.end510.if.else.i_crit_edge:                    ; preds = %if.end510
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.end510.if.then.i1233_crit_edge:                ; preds = %if.end510
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i1233

is_highmem_idx.exit.i:                            ; preds = %if.end510
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %108 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp2.i.not.i = icmp eq i32 %108, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i1233_crit_edge

is_highmem_idx.exit.i.if.then.i1233_crit_edge:    ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i1233

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i1233:                                    ; preds = %is_highmem_idx.exit.i.if.then.i1233_crit_edge, %if.end510.if.then.i1233_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page) #8
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.end510.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page) #8
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i1233
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i1233 ]
  %109 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %109, align 4
  %and.i.i1234 = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1234)
  %tobool.not.i.i1235 = icmp eq i32 %and.i.i1234, 0
  br i1 %tobool.not.i.i1235, label %if.end.i.i1238, label %if.then.i.i1237, !prof !102

if.then.i.i1237:                                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i1236 = add i32 %111, -1
  br label %_compound_head.exit.i1242

if.end.i.i1238:                                   ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i1242

_compound_head.exit.i1242:                        ; preds = %if.end.i.i1238, %if.then.i.i1237
  %retval.0.i.i1239 = phi i32 [ %sub.i.i1236, %if.then.i.i1237 ], [ %112, %if.end.i.i1238 ]
  %113 = inttoptr i32 %retval.0.i.i1239 to ptr
  %114 = getelementptr inbounds %struct.page, ptr %113, i32 0, i32 1
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %114, align 4
  %and.i.i.i.i1240 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i1240)
  %tobool.not.i.i.i1241 = icmp eq i32 %and.i.i.i.i1240, 0
  br i1 %tobool.not.i.i.i1241, label %folio_flags.exit.i.i, label %if.then.i.i.i1243, !prof !102

if.then.i.i.i1243:                                ; preds = %_compound_head.exit.i1242
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %113, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i1242
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %113, align 4
  %119 = and i32 %118, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.i.not.i = icmp eq i32 %119, 0
  br i1 %tobool.i.not.i, label %do.body524, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  %120 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %109, align 4
  %and.i.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1177 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1177, label %do.body7.i, label %if.then.i1178, !prof !102

do.body524:                                       ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1104, 0\0A.popsection", ""() #8, !srcloc !163
  unreachable

if.then.i1178:                                    ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !164
  unreachable

do.body7.i:                                       ; preds = %PageUptodate.exit
  %122 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %109, align 4
  %and.i31.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %123, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %124, %if.end.i.i ]
  %125 = inttoptr i32 %retval.0.i.i to ptr
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %127)
  %cmp.i.not.i1179 = icmp eq i32 %127, -1
  %128 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %109, align 4
  %and.i32.i = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i1179, label %if.then17.i, label %do.end24.i, !prof !103

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !102

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %129, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %130, %if.end.i36.i ]
  %131 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %131, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #8, !srcloc !165
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !102

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %129, -1
  br label %ClearPageUptodate.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %page to i32
  br label %ClearPageUptodate.exit

ClearPageUptodate.exit:                           ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %132, %if.end.i43.i ]
  %133 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %133) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_bhs.5)
  %cmp5331304 = icmp sgt i32 %nr_bhs.5, 0
  br i1 %cmp5331304, label %for.body.lr.ph, label %ClearPageUptodate.exit.while.end817_crit_edge

ClearPageUptodate.exit.while.end817_crit_edge:    ; preds = %ClearPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end817

for.body.lr.ph:                                   ; preds = %ClearPageUptodate.exit
  %sh_prom548 = zext i8 %51 to i64
  br label %for.body

for.body:                                         ; preds = %cleanup601.for.body_crit_edge, %for.body.lr.ph
  %page_is_dirty.6.off01310 = phi i1 [ %page_is_dirty.5.off0, %for.body.lr.ph ], [ %page_is_dirty.9.off0, %cleanup601.for.body_crit_edge ]
  %err.51308 = phi i32 [ %err.4, %for.body.lr.ph ], [ %err.7, %cleanup601.for.body_crit_edge ]
  %nr_recs.01307 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_recs.1, %cleanup601.for.body_crit_edge ]
  %nr_locked_nis.01306 = phi i32 [ 0, %for.body.lr.ph ], [ %nr_locked_nis.4, %cleanup601.for.body_crit_edge ]
  %i.01305 = phi i32 [ 0, %for.body.lr.ph ], [ %inc604, %cleanup601.for.body_crit_edge ]
  %rem = srem i32 %i.01305, %shr212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool535.not = icmp eq i32 %rem, 0
  br i1 %tobool535.not, label %if.end537, label %for.body.cleanup601_crit_edge

for.body.cleanup601_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup601

if.end537:                                        ; preds = %for.body
  %arrayidx538 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i.01305
  %134 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx538, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %135, i32 0, i32 5
  %136 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %b_data, align 4
  %138 = ptrtoint ptr %137 to i32
  %and539 = and i32 %138, 4095
  br i1 %33, label %if.then541, label %if.end537.if.end570_crit_edge

if.end537.if.end570_crit_edge:                    ; preds = %if.end537
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end570

if.then541:                                       ; preds = %if.end537
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tni) #8
  %139 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %index, align 4
  %conv544 = zext i32 %140 to i64
  %shl545 = shl nuw nsw i64 %conv544, 12
  %conv546 = zext i32 %and539 to i64
  %add547 = or i64 %shl545, %conv546
  %shr549 = lshr i64 %add547, %sh_prom548
  %conv550 = trunc i64 %shr549 to i32
  %141 = ptrtoint ptr %tni to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %tni, align 4
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %and539
  %call551 = call zeroext i1 @ntfs_may_write_mft_record(ptr noundef %5, i32 noundef %conv550, ptr noundef %add.ptr, ptr noundef nonnull %tni) #8
  br i1 %call551, label %if.end560, label %if.then541.do.body553_crit_edge

if.then541.do.body553_crit_edge:                  ; preds = %if.then541
  br label %do.body553

do.body553:                                       ; preds = %do.body553.do.body553_crit_edge, %if.then541.do.body553_crit_edge
  %i.1 = phi i32 [ %inc556, %do.body553.do.body553_crit_edge ], [ %i.01305, %if.then541.do.body553_crit_edge ]
  %arrayidx554 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i.1
  %142 = ptrtoint ptr %arrayidx554 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %arrayidx554, align 4
  %inc556 = add i32 %i.1, 1
  %rem557 = srem i32 %inc556, %shr212
  %tobool558.not = icmp eq i32 %rem557, 0
  br i1 %tobool558.not, label %cleanup566, label %do.body553.do.body553_crit_edge

do.body553.do.body553_crit_edge:                  ; preds = %do.body553
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body553

if.end560:                                        ; preds = %if.then541
  %143 = ptrtoint ptr %tni to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %tni, align 4
  %tobool561.not = icmp eq ptr %144, null
  br i1 %tobool561.not, label %if.end560.cleanup566.thread_crit_edge, label %if.then562

if.end560.cleanup566.thread_crit_edge:            ; preds = %if.end560
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup566.thread

if.then562:                                       ; preds = %if.end560
  call void @__sanitizer_cov_trace_pc() #10
  %inc563 = add i32 %nr_locked_nis.01306, 1
  %arrayidx564 = getelementptr [8 x ptr], ptr %locked_nis, i32 0, i32 %nr_locked_nis.01306
  %145 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %arrayidx564, align 4
  br label %cleanup566.thread

cleanup566.thread:                                ; preds = %if.then562, %if.end560.cleanup566.thread_crit_edge
  %nr_locked_nis.2.ph = phi i32 [ %nr_locked_nis.01306, %if.end560.cleanup566.thread_crit_edge ], [ %inc563, %if.then562 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tni) #8
  br label %if.end570

cleanup566:                                       ; preds = %do.body553
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tni) #8
  br label %cleanup601

if.end570:                                        ; preds = %cleanup566.thread, %if.end537.if.end570_crit_edge
  %nr_locked_nis.3 = phi i32 [ %nr_locked_nis.01306, %if.end537.if.end570_crit_edge ], [ %nr_locked_nis.2.ph, %cleanup566.thread ]
  %add.ptr571 = getelementptr i8, ptr %addr.0.i, i32 %and539
  %call572 = call i32 @pre_write_mst_fixup(ptr noundef %add.ptr571, i32 noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call572)
  %tobool573.not = icmp eq i32 %call572, 0
  br i1 %tobool573.not, label %if.end599, label %if.then580, !prof !102

if.then580:                                       ; preds = %if.end570
  %146 = zext i32 %err.51308 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %err.51308, label %if.then580.if.end586_crit_edge [
    i32 0, label %if.then580.if.then585_crit_edge
    i32 -12, label %if.then580.if.then585_crit_edge1350
  ]

if.then580.if.then585_crit_edge1350:              ; preds = %if.then580
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then585

if.then580.if.then585_crit_edge:                  ; preds = %if.then580
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then585

if.then580.if.end586_crit_edge:                   ; preds = %if.then580
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end586

if.then585:                                       ; preds = %if.then580.if.then585_crit_edge, %if.then580.if.then585_crit_edge1350
  br label %if.end586

if.end586:                                        ; preds = %if.then585, %if.then580.if.end586_crit_edge
  %err.6 = phi i32 [ -5, %if.then585 ], [ %err.51308, %if.then580.if.end586_crit_edge ]
  %147 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %5, align 8
  %149 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %i_ino, align 8
  %151 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %type, align 4
  %153 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %index, align 4
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_write_mst_block, ptr noundef %148, ptr noundef nonnull @.str.11, i32 noundef %150, i32 noundef %152, i32 noundef %154, i32 noundef %and539) #8
  br label %do.body591

do.body591:                                       ; preds = %do.body591.do.body591_crit_edge, %if.end586
  %i.4 = phi i32 [ %i.01305, %if.end586 ], [ %inc595, %do.body591.do.body591_crit_edge ]
  %arrayidx592 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i.4
  %155 = ptrtoint ptr %arrayidx592 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx592, align 4
  call void @_clear_bit(i32 noundef 1, ptr noundef %156) #8
  %157 = ptrtoint ptr %arrayidx592 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr null, ptr %arrayidx592, align 4
  %inc595 = add i32 %i.4, 1
  %rem596 = srem i32 %inc595, %shr212
  %tobool597.not = icmp eq i32 %rem596, 0
  br i1 %tobool597.not, label %do.body591.cleanup601_crit_edge, label %do.body591.do.body591_crit_edge

do.body591.do.body591_crit_edge:                  ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body591

do.body591.cleanup601_crit_edge:                  ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup601

if.end599:                                        ; preds = %if.end570
  call void @__sanitizer_cov_trace_pc() #10
  %inc600 = add i32 %nr_recs.01307, 1
  br label %cleanup601

cleanup601:                                       ; preds = %if.end599, %do.body591.cleanup601_crit_edge, %cleanup566, %for.body.cleanup601_crit_edge
  %i.5 = phi i32 [ %i.01305, %if.end599 ], [ %inc556, %cleanup566 ], [ %i.01305, %for.body.cleanup601_crit_edge ], [ %inc595, %do.body591.cleanup601_crit_edge ]
  %nr_locked_nis.4 = phi i32 [ %nr_locked_nis.3, %if.end599 ], [ %nr_locked_nis.01306, %cleanup566 ], [ %nr_locked_nis.01306, %for.body.cleanup601_crit_edge ], [ %nr_locked_nis.3, %do.body591.cleanup601_crit_edge ]
  %nr_recs.1 = phi i32 [ %inc600, %if.end599 ], [ %nr_recs.01307, %cleanup566 ], [ %nr_recs.01307, %for.body.cleanup601_crit_edge ], [ %nr_recs.01307, %do.body591.cleanup601_crit_edge ]
  %err.7 = phi i32 [ %err.51308, %if.end599 ], [ %err.51308, %cleanup566 ], [ %err.51308, %for.body.cleanup601_crit_edge ], [ %err.6, %do.body591.cleanup601_crit_edge ]
  %page_is_dirty.9.off0 = phi i1 [ %page_is_dirty.6.off01310, %if.end599 ], [ true, %cleanup566 ], [ %page_is_dirty.6.off01310, %for.body.cleanup601_crit_edge ], [ %page_is_dirty.6.off01310, %do.body591.cleanup601_crit_edge ]
  %inc604 = add i32 %i.5, 1
  %cmp533 = icmp slt i32 %inc604, %nr_bhs.5
  br i1 %cmp533, label %cleanup601.for.body_crit_edge, label %for.end

cleanup601.for.body_crit_edge:                    ; preds = %cleanup601
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup601
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_recs.1)
  %tobool605.not = icmp eq i32 %nr_recs.1, 0
  br i1 %tobool605.not, label %for.end.unm_done_crit_edge, label %if.end607

for.end.unm_done_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unm_done

if.end607:                                        ; preds = %for.end
  call void @flush_dcache_page(ptr noundef %page) #8
  br i1 %cmp5331304, label %if.end607.for.body611_crit_edge, label %if.end607.for.end671_crit_edge

if.end607.for.end671_crit_edge:                   ; preds = %if.end607
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end671

if.end607.for.body611_crit_edge:                  ; preds = %if.end607
  br label %for.body611

for.body611:                                      ; preds = %for.inc669.for.body611_crit_edge, %if.end607.for.body611_crit_edge
  %i.61315 = phi i32 [ %inc670, %for.inc669.for.body611_crit_edge ], [ 0, %if.end607.for.body611_crit_edge ]
  %arrayidx612 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i.61315
  %158 = ptrtoint ptr %arrayidx612 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx612, align 4
  %tobool613.not = icmp eq ptr %159, null
  br i1 %tobool613.not, label %for.body611.for.inc669_crit_edge, label %if.end615

for.body611.for.inc669_crit_edge:                 ; preds = %for.body611
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc669

if.end615:                                        ; preds = %for.body611
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %159, i32 noundef 4) #8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %159, align 4
  %and.i.i.i = and i32 %161, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i1244 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i1244, label %trylock_buffer.exit, label %if.end615.do.body619_crit_edge

if.end615.do.body619_crit_edge:                   ; preds = %if.end615
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body619

trylock_buffer.exit:                              ; preds = %if.end615
  call void @llvm.prefetch.p0(ptr nonnull %159, i32 1, i32 3, i32 1) #8
  %162 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %159, ptr nonnull %159, i32 4, ptr nonnull elementtype(i32) %159) #8, !srcloc !131
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %162, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  %163 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool617.not.not = icmp eq i32 %163, 0
  br i1 %tobool617.not.not, label %if.end625, label %trylock_buffer.exit.do.body619_crit_edge

trylock_buffer.exit.do.body619_crit_edge:         ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body619

do.body619:                                       ; preds = %trylock_buffer.exit.do.body619_crit_edge, %if.end615.do.body619_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1181, 0\0A.popsection", ""() #8, !srcloc !166
  unreachable

if.end625:                                        ; preds = %trylock_buffer.exit
  call void @_clear_bit(i32 noundef 1, ptr noundef nonnull %159) #8
  %164 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %159, align 4
  %and1.i.i1180 = and i32 %165, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1180)
  %tobool628.not = icmp eq i32 %and1.i.i1180, 0
  br i1 %tobool628.not, label %do.body638, label %do.body647, !prof !103

do.body638:                                       ; preds = %if.end625
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1184, 0\0A.popsection", ""() #8, !srcloc !167
  unreachable

do.body647:                                       ; preds = %if.end625
  %166 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %159, align 4
  %168 = and i32 %167, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool649.not = icmp eq i32 %168, 0
  br i1 %tobool649.not, label %do.body659, label %do.end667, !prof !103

do.body659:                                       ; preds = %do.body647
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1185, 0\0A.popsection", ""() #8, !srcloc !168
  unreachable

do.end667:                                        ; preds = %do.body647
  call void @__sanitizer_cov_trace_pc() #10
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %159, i32 0, i32 11
  %call.i.i.i1246 = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #8
  %169 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #8, !srcloc !141
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %159, i32 0, i32 7
  %170 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @end_buffer_write_sync, ptr %b_end_io, align 4
  %call668 = call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef nonnull %159) #8
  br label %for.inc669

for.inc669:                                       ; preds = %do.end667, %for.body611.for.inc669_crit_edge
  %inc670 = add nuw nsw i32 %i.61315, 1
  %exitcond.not = icmp eq i32 %inc670, %nr_bhs.5
  br i1 %exitcond.not, label %for.inc669.for.end671_crit_edge, label %for.inc669.for.body611_crit_edge

for.inc669.for.body611_crit_edge:                 ; preds = %for.inc669
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body611

for.inc669.for.end671_crit_edge:                  ; preds = %for.inc669
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end671

for.end671:                                       ; preds = %for.inc669.for.end671_crit_edge, %if.end607.for.end671_crit_edge
  %.not = xor i1 %33, true
  %brmerge1165 = select i1 %.not, i1 true, i1 %cmp144
  br i1 %brmerge1165, label %for.end671.do_wait_crit_edge, label %for.end671.do_mirror_crit_edge

for.end671.do_mirror_crit_edge:                   ; preds = %for.end671
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_mirror

for.end671.do_wait_crit_edge:                     ; preds = %for.end671
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_wait

do_wait:                                          ; preds = %for.end757.do_wait_crit_edge, %for.end671.do_wait_crit_edge
  %err.8 = phi i32 [ %err.12, %for.end757.do_wait_crit_edge ], [ %err.7, %for.end671.do_wait_crit_edge ]
  br i1 %cmp5331304, label %do_wait.for.body681_crit_edge, label %do_wait.for.end712_crit_edge

do_wait.for.end712_crit_edge:                     ; preds = %do_wait
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end712

do_wait.for.body681_crit_edge:                    ; preds = %do_wait
  br label %for.body681

for.body681:                                      ; preds = %for.inc710.for.body681_crit_edge, %do_wait.for.body681_crit_edge
  %err.91318 = phi i32 [ %err.11, %for.inc710.for.body681_crit_edge ], [ %err.8, %do_wait.for.body681_crit_edge ]
  %i.71317 = phi i32 [ %inc711, %for.inc710.for.body681_crit_edge ], [ 0, %do_wait.for.body681_crit_edge ]
  %arrayidx682 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i.71317
  %171 = ptrtoint ptr %arrayidx682 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx682, align 4
  %tobool683.not = icmp eq ptr %172, null
  br i1 %tobool683.not, label %for.body681.for.inc710_crit_edge, label %if.end685

for.body681.for.inc710_crit_edge:                 ; preds = %for.body681
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc710

if.end685:                                        ; preds = %for.body681
  call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 354) #8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %172, align 4
  %175 = and i32 %174, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not.i1247 = icmp eq i32 %175, 0
  br i1 %tobool.not.i1247, label %if.end685.wait_on_buffer.exit_crit_edge, label %if.then.i1248

if.end685.wait_on_buffer.exit_crit_edge:          ; preds = %if.end685
  call void @__sanitizer_cov_trace_pc() #10
  br label %wait_on_buffer.exit

if.then.i1248:                                    ; preds = %if.end685
  call void @__sanitizer_cov_trace_pc() #10
  call void @__wait_on_buffer(ptr noundef nonnull %172) #8
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i1248, %if.end685.wait_on_buffer.exit_crit_edge
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %172, align 4
  %and1.i.i1183 = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1183)
  %tobool687.not = icmp eq i32 %and1.i.i1183, 0
  br i1 %tobool687.not, label %if.then696, label %wait_on_buffer.exit.for.inc710_crit_edge, !prof !103

wait_on_buffer.exit.for.inc710_crit_edge:         ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc710

if.then696:                                       ; preds = %wait_on_buffer.exit
  %178 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %5, align 8
  %180 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %i_ino, align 8
  %182 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %type, align 4
  %184 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %index, align 4
  %b_data701 = getelementptr inbounds %struct.buffer_head, ptr %172, i32 0, i32 5
  %186 = ptrtoint ptr %b_data701 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %b_data701, align 4
  %188 = ptrtoint ptr %187 to i32
  %and702 = and i32 %188, 4095
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_write_mst_block, ptr noundef %179, ptr noundef nonnull @.str.12, i32 noundef %181, i32 noundef %183, i32 noundef %185, i32 noundef %and702) #8
  %189 = zext i32 %err.91318 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %err.91318, label %if.then696.if.end708_crit_edge [
    i32 0, label %if.then696.if.then707_crit_edge
    i32 -12, label %if.then696.if.then707_crit_edge1351
  ]

if.then696.if.then707_crit_edge1351:              ; preds = %if.then696
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then707

if.then696.if.then707_crit_edge:                  ; preds = %if.then696
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then707

if.then696.if.end708_crit_edge:                   ; preds = %if.then696
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end708

if.then707:                                       ; preds = %if.then696.if.then707_crit_edge, %if.then696.if.then707_crit_edge1351
  br label %if.end708

if.end708:                                        ; preds = %if.then707, %if.then696.if.end708_crit_edge
  %err.10 = phi i32 [ -5, %if.then707 ], [ %err.91318, %if.then696.if.end708_crit_edge ]
  %190 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %172, align 4
  %and1.i.i1184 = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i1184)
  %tobool.not.i1185 = icmp eq i32 %and1.i.i1184, 0
  br i1 %tobool.not.i1185, label %if.then.i1186, label %if.end708.for.inc710_crit_edge

if.end708.for.inc710_crit_edge:                   ; preds = %if.end708
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc710

if.then.i1186:                                    ; preds = %if.end708
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %172) #8
  br label %for.inc710

for.inc710:                                       ; preds = %if.then.i1186, %if.end708.for.inc710_crit_edge, %wait_on_buffer.exit.for.inc710_crit_edge, %for.body681.for.inc710_crit_edge
  %err.11 = phi i32 [ %err.91318, %wait_on_buffer.exit.for.inc710_crit_edge ], [ %err.91318, %for.body681.for.inc710_crit_edge ], [ %err.10, %if.end708.for.inc710_crit_edge ], [ %err.10, %if.then.i1186 ]
  %inc711 = add nuw nsw i32 %i.71317, 1
  %exitcond1327.not = icmp eq i32 %inc711, %nr_bhs.5
  br i1 %exitcond1327.not, label %for.inc710.for.end712_crit_edge, label %for.inc710.for.body681_crit_edge

for.inc710.for.body681_crit_edge:                 ; preds = %for.inc710
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body681

for.inc710.for.end712_crit_edge:                  ; preds = %for.inc710
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end712

for.end712:                                       ; preds = %for.inc710.for.end712_crit_edge, %do_wait.for.end712_crit_edge
  %err.9.lcssa = phi i32 [ %err.8, %do_wait.for.end712_crit_edge ], [ %err.11, %for.inc710.for.end712_crit_edge ]
  %192 = select i1 %33, i1 %cmp144, i1 false
  br i1 %192, label %for.end712.do_mirror_crit_edge, label %for.end712.if.end761_crit_edge

for.end712.if.end761_crit_edge:                   ; preds = %for.end712
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end761

for.end712.do_mirror_crit_edge:                   ; preds = %for.end712
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_mirror

do_mirror:                                        ; preds = %for.end712.do_mirror_crit_edge, %for.end671.do_mirror_crit_edge
  %err.12 = phi i32 [ %err.7, %for.end671.do_mirror_crit_edge ], [ %err.9.lcssa, %for.end712.do_mirror_crit_edge ]
  br i1 %cmp5331304, label %for.body722.lr.ph, label %do_mirror.for.end757_crit_edge

do_mirror.for.end757_crit_edge:                   ; preds = %do_mirror
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end757

for.body722.lr.ph:                                ; preds = %do_mirror
  %sh_prom740 = zext i8 %51 to i64
  %mftmirr_size = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 38
  %conv748 = zext i1 %cmp144 to i32
  br label %for.body722

for.body722:                                      ; preds = %cleanup751.for.body722_crit_edge, %for.body722.lr.ph
  %i.81321 = phi i32 [ 0, %for.body722.lr.ph ], [ %inc756, %cleanup751.for.body722_crit_edge ]
  %rem725 = srem i32 %i.81321, %shr212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem725)
  %tobool726.not = icmp eq i32 %rem725, 0
  br i1 %tobool726.not, label %if.end728, label %for.body722.cleanup751_crit_edge

for.body722.cleanup751_crit_edge:                 ; preds = %for.body722
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup751

if.end728:                                        ; preds = %for.body722
  %arrayidx729 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i.81321
  %193 = ptrtoint ptr %arrayidx729 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx729, align 4
  %tobool730.not = icmp eq ptr %194, null
  br i1 %tobool730.not, label %if.end728.cleanup751_crit_edge, label %if.end732

if.end728.cleanup751_crit_edge:                   ; preds = %if.end728
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup751

if.end732:                                        ; preds = %if.end728
  %b_data733 = getelementptr inbounds %struct.buffer_head, ptr %194, i32 0, i32 5
  %195 = ptrtoint ptr %b_data733 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %b_data733, align 4
  %197 = ptrtoint ptr %196 to i32
  %and734 = and i32 %197, 4095
  %198 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %index, align 4
  %conv736 = zext i32 %199 to i64
  %shl737 = shl nuw nsw i64 %conv736, 12
  %conv738 = zext i32 %and734 to i64
  %add739 = or i64 %shl737, %conv738
  %shr741 = lshr i64 %add739, %sh_prom740
  %conv742 = trunc i64 %shr741 to i32
  %200 = ptrtoint ptr %mftmirr_size to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %mftmirr_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %201, i32 %conv742)
  %cmp743 = icmp ugt i32 %201, %conv742
  br i1 %cmp743, label %if.then745, label %if.end732.cleanup751_crit_edge

if.end732.cleanup751_crit_edge:                   ; preds = %if.end732
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup751

if.then745:                                       ; preds = %if.end732
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr746 = getelementptr i8, ptr %addr.0.i, i32 %and734
  %call749 = call i32 @ntfs_sync_mft_mirror(ptr noundef %5, i32 noundef %conv742, ptr noundef %add.ptr746, i32 noundef %conv748) #8
  br label %cleanup751

cleanup751:                                       ; preds = %if.then745, %if.end732.cleanup751_crit_edge, %if.end728.cleanup751_crit_edge, %for.body722.cleanup751_crit_edge
  %inc756 = add nuw nsw i32 %i.81321, 1
  %exitcond1328.not = icmp eq i32 %inc756, %nr_bhs.5
  br i1 %exitcond1328.not, label %cleanup751.for.end757_crit_edge, label %cleanup751.for.body722_crit_edge

cleanup751.for.body722_crit_edge:                 ; preds = %cleanup751
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body722

cleanup751.for.end757_crit_edge:                  ; preds = %cleanup751
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end757

for.end757:                                       ; preds = %cleanup751.for.end757_crit_edge, %do_mirror.for.end757_crit_edge
  br i1 %cmp144, label %for.end757.if.end761_crit_edge, label %for.end757.do_wait_crit_edge

for.end757.do_wait_crit_edge:                     ; preds = %for.end757
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_wait

for.end757.if.end761_crit_edge:                   ; preds = %for.end757
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end761

if.end761:                                        ; preds = %for.end757.if.end761_crit_edge, %for.end712.if.end761_crit_edge
  %err.13 = phi i32 [ %err.12, %for.end757.if.end761_crit_edge ], [ %err.9.lcssa, %for.end712.if.end761_crit_edge ]
  br i1 %cmp5331304, label %if.end761.for.body765_crit_edge, label %if.end761.for.end779_crit_edge

if.end761.for.end779_crit_edge:                   ; preds = %if.end761
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end779

if.end761.for.body765_crit_edge:                  ; preds = %if.end761
  br label %for.body765

for.body765:                                      ; preds = %for.inc777.for.body765_crit_edge, %if.end761.for.body765_crit_edge
  %i.91323 = phi i32 [ %inc778, %for.inc777.for.body765_crit_edge ], [ 0, %if.end761.for.body765_crit_edge ]
  %rem766 = srem i32 %i.91323, %shr212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem766)
  %tobool767.not = icmp eq i32 %rem766, 0
  br i1 %tobool767.not, label %if.then768, label %for.body765.for.inc777_crit_edge

for.body765.for.inc777_crit_edge:                 ; preds = %for.body765
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc777

if.then768:                                       ; preds = %for.body765
  %arrayidx769 = getelementptr [8 x ptr], ptr %bhs, i32 0, i32 %i.91323
  %202 = ptrtoint ptr %arrayidx769 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx769, align 4
  %tobool770.not = icmp eq ptr %203, null
  br i1 %tobool770.not, label %if.then768.for.inc777_crit_edge, label %if.end772

if.then768.for.inc777_crit_edge:                  ; preds = %if.then768
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc777

if.end772:                                        ; preds = %if.then768
  call void @__sanitizer_cov_trace_pc() #10
  %b_data773 = getelementptr inbounds %struct.buffer_head, ptr %203, i32 0, i32 5
  %204 = ptrtoint ptr %b_data773 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %b_data773, align 4
  %206 = ptrtoint ptr %205 to i32
  %and774 = and i32 %206, 4095
  %add.ptr775 = getelementptr i8, ptr %addr.0.i, i32 %and774
  call void @post_write_mst_fixup(ptr noundef %add.ptr775) #8
  br label %for.inc777

for.inc777:                                       ; preds = %if.end772, %if.then768.for.inc777_crit_edge, %for.body765.for.inc777_crit_edge
  %inc778 = add nuw nsw i32 %i.91323, 1
  %exitcond1329.not = icmp eq i32 %inc778, %nr_bhs.5
  br i1 %exitcond1329.not, label %for.inc777.for.end779_crit_edge, label %for.inc777.for.body765_crit_edge

for.inc777.for.body765_crit_edge:                 ; preds = %for.inc777
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body765

for.inc777.for.end779_crit_edge:                  ; preds = %for.inc777
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end779

for.end779:                                       ; preds = %for.inc777.for.end779_crit_edge, %if.end761.for.end779_crit_edge
  call void @flush_dcache_page(ptr noundef %page) #8
  br label %unm_done

unm_done:                                         ; preds = %for.end779, %for.end.unm_done_crit_edge
  %err.14 = phi i32 [ %err.13, %for.end779 ], [ %err.7, %for.end.unm_done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_locked_nis.4)
  %cmp7821325 = icmp sgt i32 %nr_locked_nis.4, 0
  br i1 %cmp7821325, label %unm_done.while.body784_crit_edge, label %unm_done.while.end817_crit_edge

unm_done.while.end817_crit_edge:                  ; preds = %unm_done
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end817

unm_done.while.body784_crit_edge:                 ; preds = %unm_done
  br label %while.body784

while.body784:                                    ; preds = %if.end811.while.body784_crit_edge, %unm_done.while.body784_crit_edge
  %dec7811326.in = phi i32 [ %dec7811326, %if.end811.while.body784_crit_edge ], [ %nr_locked_nis.4, %unm_done.while.body784_crit_edge ]
  %dec7811326 = add nsw i32 %dec7811326.in, -1
  %arrayidx786 = getelementptr [8 x ptr], ptr %locked_nis, i32 0, i32 %dec7811326
  %207 = ptrtoint ptr %arrayidx786 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx786, align 4
  %extent_lock = getelementptr inbounds %struct._ntfs_inode, ptr %208, i32 0, i32 19
  call void @mutex_lock_nested(ptr noundef %extent_lock, i32 noundef 0) #8
  %nr_extents = getelementptr inbounds %struct._ntfs_inode, ptr %208, i32 0, i32 20
  %209 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %nr_extents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %210)
  %cmp787 = icmp sgt i32 %210, -1
  br i1 %cmp787, label %while.body784.if.end811_crit_edge, label %if.else790

while.body784.if.end811_crit_edge:                ; preds = %while.body784
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end811

if.else790:                                       ; preds = %while.body784
  %ext = getelementptr inbounds %struct._ntfs_inode, ptr %208, i32 0, i32 21
  %211 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ext, align 8
  %tobool792.not = icmp eq ptr %212, null
  br i1 %tobool792.not, label %do.body802, label %if.else790.if.end811_crit_edge, !prof !103

if.else790.if.end811_crit_edge:                   ; preds = %if.else790
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end811

do.body802:                                       ; preds = %if.else790
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1268, 0\0A.popsection", ""() #8, !srcloc !169
  unreachable

if.end811:                                        ; preds = %if.else790.if.end811_crit_edge, %while.body784.if.end811_crit_edge
  %base_tni.0 = phi ptr [ %212, %if.else790.if.end811_crit_edge ], [ %208, %while.body784.if.end811_crit_edge ]
  call void @mutex_unlock(ptr noundef %extent_lock) #8
  %cmp813 = icmp eq ptr %208, %base_tni.0
  %cond = select i1 %cmp813, ptr @.str.14, ptr @.str.15
  %mft_no815 = getelementptr inbounds %struct._ntfs_inode, ptr %208, i32 0, i32 4
  %213 = ptrtoint ptr %mft_no815 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %mft_no815, align 4
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1273, ptr noundef nonnull @__func__.ntfs_write_mst_block, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond, i32 noundef %214) #8
  %mrec_lock = getelementptr inbounds %struct._ntfs_inode, ptr %208, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %mrec_lock) #8
  %count = getelementptr inbounds %struct._ntfs_inode, ptr %208, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #8
  %215 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #8, !srcloc !170
  %vfs_inode.i = getelementptr inbounds %struct.big_ntfs_inode, ptr %base_tni.0, i32 0, i32 1
  call void @iput(ptr noundef %vfs_inode.i) #8
  %cmp782 = icmp ugt i32 %dec7811326.in, 1
  br i1 %cmp782, label %if.end811.while.body784_crit_edge, label %if.end811.while.end817_crit_edge

if.end811.while.end817_crit_edge:                 ; preds = %if.end811
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end817

if.end811.while.body784_crit_edge:                ; preds = %if.end811
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body784

while.end817:                                     ; preds = %if.end811.while.end817_crit_edge, %unm_done.while.end817_crit_edge, %ClearPageUptodate.exit.while.end817_crit_edge
  %err.141347 = phi i32 [ %err.14, %unm_done.while.end817_crit_edge ], [ %err.4, %ClearPageUptodate.exit.while.end817_crit_edge ], [ %err.14, %if.end811.while.end817_crit_edge ]
  %page_is_dirty.6.off0.lcssa13411346 = phi i1 [ %page_is_dirty.9.off0, %unm_done.while.end817_crit_edge ], [ %page_is_dirty.5.off0, %ClearPageUptodate.exit.while.end817_crit_edge ], [ %page_is_dirty.9.off0, %if.end811.while.end817_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %216 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile i32, ptr %109, align 4
  %and.i.i.i.i = and i32 %217, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !102

if.then.i.i.i:                                    ; preds = %while.end817
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

SetPageUptodate.exit:                             ; preds = %while.end817
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 55) #8
  %218 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %page, align 4
  %shr.i.i1249 = lshr i32 %219, 30
  %220 = zext i32 %shr.i.i1249 to i64
  call void @__sanitizer_cov_trace_switch(i64 %220, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %shr.i.i1249, label %SetPageUptodate.exit.done_crit_edge [
    i32 2, label %SetPageUptodate.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i1251
  ]

SetPageUptodate.exit.if.end.i_crit_edge:          ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

SetPageUptodate.exit.done_crit_edge:              ; preds = %SetPageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

is_highmem_idx.exit.i1251:                        ; preds = %SetPageUptodate.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %221 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %221)
  %cmp2.i.not.i1250 = icmp eq i32 %221, 2
  br i1 %cmp2.i.not.i1250, label %is_highmem_idx.exit.i1251.if.end.i_crit_edge, label %is_highmem_idx.exit.i1251.done_crit_edge

is_highmem_idx.exit.i1251.done_crit_edge:         ; preds = %is_highmem_idx.exit.i1251
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

is_highmem_idx.exit.i1251.if.end.i_crit_edge:     ; preds = %is_highmem_idx.exit.i1251
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i1251.if.end.i_crit_edge, %SetPageUptodate.exit.if.end.i_crit_edge
  call void @kunmap_high(ptr noundef %page) #8
  br label %done

done:                                             ; preds = %if.end.i, %is_highmem_idx.exit.i1251.done_crit_edge, %SetPageUptodate.exit.done_crit_edge, %if.end507.done_crit_edge
  %err.15 = phi i32 [ %err.4, %if.end507.done_crit_edge ], [ %err.141347, %SetPageUptodate.exit.done_crit_edge ], [ %err.141347, %is_highmem_idx.exit.i1251.done_crit_edge ], [ %err.141347, %if.end.i ]
  %page_is_dirty.10.off0 = phi i1 [ %page_is_dirty.5.off0, %if.end507.done_crit_edge ], [ %page_is_dirty.6.off0.lcssa13411346, %SetPageUptodate.exit.done_crit_edge ], [ %page_is_dirty.6.off0.lcssa13411346, %is_highmem_idx.exit.i1251.done_crit_edge ], [ %page_is_dirty.6.off0.lcssa13411346, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.15)
  %tobool818.not.not = icmp eq i32 %err.15, 0
  %222 = zext i32 %err.15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %err.15, label %if.then829 [
    i32 -12, label %done.if.end836_crit_edge
    i32 0, label %done.if.end836_crit_edge1352
  ]

done.if.end836_crit_edge1352:                     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end836

done.if.end836_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end836

if.then829:                                       ; preds = %done
  %223 = ptrtoint ptr %itype to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %itype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %224)
  %cmp832 = icmp eq i32 %224, 4096
  br i1 %cmp832, label %if.then834, label %if.then829.if.end835_crit_edge

if.then829.if.end835_crit_edge:                   ; preds = %if.then829
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end835

if.then834:                                       ; preds = %if.then829
  %225 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %225, align 4
  %and.i.i1188 = and i32 %227, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1188)
  %tobool.not.i1189 = icmp eq i32 %and.i.i1188, 0
  br i1 %tobool.not.i1189, label %do.body7.i1193, label %if.then.i1190, !prof !102

if.then.i1190:                                    ; preds = %if.then834
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !122
  unreachable

do.body7.i1193:                                   ; preds = %if.then834
  %228 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load volatile i32, ptr %225, align 4
  %and.i31.i1191 = and i32 %229, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i1191)
  %tobool.not.i.i1192 = icmp eq i32 %and.i31.i1191, 0
  br i1 %tobool.not.i.i1192, label %if.end.i.i1196, label %if.then.i.i1195, !prof !102

if.then.i.i1195:                                  ; preds = %do.body7.i1193
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i1194 = add i32 %229, -1
  br label %_compound_head.exit.i1201

if.end.i.i1196:                                   ; preds = %do.body7.i1193
  call void @__sanitizer_cov_trace_pc() #10
  %230 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i1201

_compound_head.exit.i1201:                        ; preds = %if.end.i.i1196, %if.then.i.i1195
  %retval.0.i.i1197 = phi i32 [ %sub.i.i1194, %if.then.i.i1195 ], [ %230, %if.end.i.i1196 ]
  %231 = inttoptr i32 %retval.0.i.i1197 to ptr
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load volatile i32, ptr %231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %233)
  %cmp.i.not.i1198 = icmp eq i32 %233, -1
  %234 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load volatile i32, ptr %225, align 4
  %and.i32.i1199 = and i32 %235, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i1199)
  %tobool.not.i33.i1200 = icmp eq i32 %and.i32.i1199, 0
  br i1 %cmp.i.not.i1198, label %if.then17.i1202, label %do.end24.i1208, !prof !103

if.then17.i1202:                                  ; preds = %_compound_head.exit.i1201
  br i1 %tobool.not.i33.i1200, label %if.end.i36.i1205, label %if.then.i35.i1204, !prof !102

if.then.i35.i1204:                                ; preds = %if.then17.i1202
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i1203 = add i32 %235, -1
  br label %_compound_head.exit38.i1207

if.end.i36.i1205:                                 ; preds = %if.then17.i1202
  call void @__sanitizer_cov_trace_pc() #10
  %236 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i1207

_compound_head.exit38.i1207:                      ; preds = %if.end.i36.i1205, %if.then.i35.i1204
  %retval.0.i37.i1206 = phi i32 [ %sub.i34.i1203, %if.then.i35.i1204 ], [ %236, %if.end.i36.i1205 ]
  %237 = inttoptr i32 %retval.0.i37.i1206 to ptr
  call void @dump_page(ptr noundef %237, ptr noundef nonnull @.str.8) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !123
  unreachable

do.end24.i1208:                                   ; preds = %_compound_head.exit.i1201
  br i1 %tobool.not.i33.i1200, label %if.end.i43.i1211, label %if.then.i42.i1210, !prof !102

if.then.i42.i1210:                                ; preds = %do.end24.i1208
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i1209 = add i32 %235, -1
  br label %SetPageError.exit

if.end.i43.i1211:                                 ; preds = %do.end24.i1208
  call void @__sanitizer_cov_trace_pc() #10
  %238 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i1211, %if.then.i42.i1210
  %retval.0.i44.i1212 = phi i32 [ %sub.i41.i1209, %if.then.i42.i1210 ], [ %238, %if.end.i43.i1211 ]
  %239 = inttoptr i32 %retval.0.i44.i1212 to ptr
  call void @_set_bit(i32 noundef 8, ptr noundef %239) #8
  br label %if.end835

if.end835:                                        ; preds = %SetPageError.exit, %if.then829.if.end835_crit_edge
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 2
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #8
  br label %if.end836

if.end836:                                        ; preds = %if.end835, %done.if.end836_crit_edge, %done.if.end836_crit_edge1352
  br i1 %page_is_dirty.10.off0, label %if.then838, label %do.body844

if.then838:                                       ; preds = %if.end836
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %index, align 4
  %sub840 = sub nsw i32 12, %conv190
  %shl841 = shl i32 %241, %sub840
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1294, ptr noundef nonnull @__func__.ntfs_write_mst_block, ptr noundef nonnull @.str.16, i32 noundef %shl841) #8
  %call842 = call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #8
  call void @unlock_page(ptr noundef %page) #8
  br label %if.end864

do.body844:                                       ; preds = %if.end836
  %242 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load volatile i32, ptr %242, align 4
  %and.i.i1213 = and i32 %244, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1213)
  %tobool.not.i.i1214 = icmp eq i32 %and.i.i1213, 0
  br i1 %tobool.not.i.i1214, label %if.end.i.i1217, label %if.then.i.i1216, !prof !102

if.then.i.i1216:                                  ; preds = %do.body844
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i1215 = add i32 %244, -1
  br label %_compound_head.exit.i1220

if.end.i.i1217:                                   ; preds = %do.body844
  call void @__sanitizer_cov_trace_pc() #10
  %245 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i1220

_compound_head.exit.i1220:                        ; preds = %if.end.i.i1217, %if.then.i.i1216
  %retval.0.i.i1218 = phi i32 [ %sub.i.i1215, %if.then.i.i1216 ], [ %245, %if.end.i.i1217 ]
  %246 = inttoptr i32 %retval.0.i.i1218 to ptr
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load volatile i32, ptr %246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %248)
  %cmp.i.not.i1219 = icmp eq i32 %248, -1
  %249 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load volatile i32, ptr %242, align 4
  %and.i16.i = and i32 %250, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i1219, label %if.then.i1221, label %do.end10.i, !prof !103

if.then.i1221:                                    ; preds = %_compound_head.exit.i1220
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !102

if.then.i19.i:                                    ; preds = %if.then.i1221
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %250, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i1221
  call void @__sanitizer_cov_trace_pc() #10
  %251 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %251, %if.end.i20.i ]
  %252 = inttoptr i32 %retval.0.i21.i to ptr
  call void @dump_page(ptr noundef %252, ptr noundef nonnull @.str.8) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !114
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i1220
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !102

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %250, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %253 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %253, %if.end.i27.i ]
  %254 = inttoptr i32 %retval.0.i28.i to ptr
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load volatile i32, ptr %254, align 4
  %257 = and i32 %256, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool846.not = icmp eq i32 %257, 0
  br i1 %tobool846.not, label %do.end862, label %do.body854, !prof !102

do.body854:                                       ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1303, 0\0A.popsection", ""() #8, !srcloc !171
  unreachable

do.end862:                                        ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call863 = call zeroext i1 @set_page_writeback(ptr noundef %page) #8
  call void @unlock_page(ptr noundef %page) #8
  call void @end_page_writeback(ptr noundef %page) #8
  br label %if.end864

if.end864:                                        ; preds = %do.end862, %if.then838
  br i1 %tobool818.not.not, label %if.then874, label %if.end864.cleanup876_crit_edge, !prof !102

if.end864.cleanup876_crit_edge:                   ; preds = %if.end864
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup876

if.then874:                                       ; preds = %if.end864
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 1309, ptr noundef nonnull @__func__.ntfs_write_mst_block, ptr noundef nonnull @.str.17) #8
  br label %cleanup876

cleanup876:                                       ; preds = %if.then874, %if.end864.cleanup876_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then874 ], [ %err.15, %if.end864.cleanup876_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %bhs) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %locked_nis) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ntfs_write_block(ptr noundef %page, ptr noundef %wbc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -528
  %vol1 = getelementptr i8, ptr %3, i32 -448
  %4 = ptrtoint ptr %vol1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vol1, align 8
  %mft_no = getelementptr i8, ptr %3, i32 -460
  %6 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mft_no, align 4
  %type = getelementptr i8, ptr %3, i32 -444
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 553, ptr noundef nonnull @__func__.ntfs_write_block, ptr noundef nonnull @.str.9, i32 noundef %7, i32 noundef %9, i32 noundef %11) #8
  %state.i = getelementptr i8, ptr %3, i32 -464
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %do.body6, label %do.body12, !prof !103

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 555, 0\0A.popsection", ""() #8, !srcloc !172
  unreachable

do.body12:                                        ; preds = %entry
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool14.not = icmp eq i32 %17, 0
  br i1 %tobool14.not, label %do.end30, label %do.body22, !prof !102

do.body22:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 556, 0\0A.popsection", ""() #8, !srcloc !173
  unreachable

do.end30:                                         ; preds = %do.body12
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize, align 16
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %s_blocksize_bits, align 4
  %24 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !103

if.then.i:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit:                                 ; preds = %do.end30
  %26 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %page, align 4
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool33.not = icmp eq i32 %28, 0
  br i1 %tobool33.not, label %do.body35, label %PagePrivate.exit.do.body71_crit_edge

PagePrivate.exit.do.body71_crit_edge:             ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

do.body35:                                        ; preds = %PagePrivate.exit
  %29 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i670 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i670)
  %tobool.not.i.i671 = icmp eq i32 %and.i.i670, 0
  br i1 %tobool.not.i.i671, label %if.end.i.i674, label %if.then.i.i673, !prof !102

if.then.i.i673:                                   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i672 = add i32 %31, -1
  br label %_compound_head.exit.i678

if.end.i.i674:                                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i678

_compound_head.exit.i678:                         ; preds = %if.end.i.i674, %if.then.i.i673
  %retval.0.i.i675 = phi i32 [ %sub.i.i672, %if.then.i.i673 ], [ %32, %if.end.i.i674 ]
  %33 = inttoptr i32 %retval.0.i.i675 to ptr
  %34 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i676 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i676)
  %tobool.not.i.i.i677 = icmp eq i32 %and.i.i.i.i676, 0
  br i1 %tobool.not.i.i.i677, label %folio_flags.exit.i.i, label %if.then.i.i.i679, !prof !102

if.then.i.i.i679:                                 ; preds = %_compound_head.exit.i678
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i678
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i, label %do.body47, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @create_empty_buffers(ptr noundef %page, i32 noundef %21, i32 noundef 3) #8
  %40 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp.i.not.i621 = icmp eq i32 %41, -1
  br i1 %cmp.i.not.i621, label %if.then.i622, label %PagePrivate.exit625, !prof !103

do.body47:                                        ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 560, 0\0A.popsection", ""() #8, !srcloc !174
  unreachable

if.then.i622:                                     ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit625:                              ; preds = %PageUptodate.exit
  %42 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %page, align 4
  %44 = and i32 %43, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool57.not = icmp eq i32 %44, 0
  br i1 %tobool57.not, label %if.then66, label %PagePrivate.exit625.do.body71_crit_edge, !prof !103

PagePrivate.exit625.do.body71_crit_edge:          ; preds = %PagePrivate.exit625
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

if.then66:                                        ; preds = %PagePrivate.exit625
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_write_block, ptr noundef %46, ptr noundef nonnull @.str.23) #8
  %call68 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #8
  tail call void @unlock_page(ptr noundef %page) #8
  br label %cleanup462

do.body71:                                        ; preds = %PagePrivate.exit625.do.body71_crit_edge, %PagePrivate.exit.do.body71_crit_edge
  %47 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i.not.i626 = icmp eq i32 %48, -1
  br i1 %cmp.i.not.i626, label %if.then.i627, label %PagePrivate.exit630, !prof !103

if.then.i627:                                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit630:                              ; preds = %do.body71
  %49 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %page, align 4
  %51 = and i32 %50, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool73.not = icmp eq i32 %51, 0
  br i1 %tobool73.not, label %do.body83, label %do.end91, !prof !103

do.body83:                                        ; preds = %PagePrivate.exit630
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 576, 0\0A.popsection", ""() #8, !srcloc !175
  unreachable

do.end91:                                         ; preds = %PagePrivate.exit630
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %52 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %private, align 4
  %54 = inttoptr i32 %53 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool93.not = icmp eq i32 %53, 0
  br i1 %tobool93.not, label %do.body103, label %do.end111, !prof !103

do.body103:                                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 577, 0\0A.popsection", ""() #8, !srcloc !176
  unreachable

do.end111:                                        ; preds = %do.end91
  %55 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %index, align 4
  %conv = zext i32 %56 to i64
  %conv113 = zext i8 %23 to i32
  %sub = sub nsw i32 12, %conv113
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %conv, %sh_prom
  %call117 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #8
  %call120 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  %initialized_size121 = getelementptr i8, ptr %3, i32 -480
  %57 = ptrtoint ptr %initialized_size121 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %initialized_size121, align 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call117) #8
  %conv131 = zext i32 %21 to i64
  %add = add nsw i64 %conv131, -1
  %sub132 = add i64 %add, %call120
  %sh_prom134 = zext i8 %23 to i64
  %shr = ashr i64 %sub132, %sh_prom134
  %shr137 = ashr i64 %58, %sh_prom134
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %call120)
  %cmp155 = icmp slt i64 %58, %call120
  %cluster_size_mask = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 12
  %cluster_size_bits = getelementptr inbounds %struct.ntfs_volume, ptr %5, i32 0, i32 13
  %runlist = getelementptr i8, ptr %3, i32 -432
  %lock = getelementptr i8, ptr %3, i32 -428
  br label %do.body138

do.body138:                                       ; preds = %do.cond308.do.body138_crit_edge, %do.end111
  %block.0 = phi i64 [ %shl, %do.end111 ], [ %inc, %do.cond308.do.body138_crit_edge ]
  %rl.0 = phi ptr [ null, %do.end111 ], [ %rl.5.ph, %do.cond308.do.body138_crit_edge ]
  %bh.0 = phi ptr [ %54, %do.end111 ], [ %134, %do.cond308.do.body138_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %block.0, i64 %shr)
  %cmp139.not = icmp ult i64 %block.0, %shr
  br i1 %cmp139.not, label %if.end148, label %if.then147, !prof !102

if.then147:                                       ; preds = %do.body138
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #8
  %59 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i631 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i631)
  %tobool.not.i = icmp eq i32 %and1.i.i631, 0
  br i1 %tobool.not.i, label %if.then.i632, label %if.then147.do.cond308_crit_edge

if.then147.do.cond308_crit_edge:                  ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond308

if.then.i632:                                     ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #8
  br label %do.cond308

if.end148:                                        ; preds = %do.body138
  %61 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %bh.0, align 4
  %63 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool150.not = icmp eq i32 %63, 0
  br i1 %tobool150.not, label %if.end148.do.cond308_crit_edge, label %if.end152

if.end148.do.cond308_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond308

if.end152:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_cmp8(i64 %block.0, i64 %shr137)
  %cmp153.not = icmp uge i64 %block.0, %shr137
  %spec.select = select i1 %cmp153.not, i1 %cmp155, i1 false
  br i1 %spec.select, label %if.then163, label %if.end173, !prof !103

if.then163:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  %call168 = tail call fastcc i32 @PageUptodate(ptr noundef %page)
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_write_block, ptr noundef %65, ptr noundef nonnull @.str.24) #8
  br label %do.end311

if.end173:                                        ; preds = %if.end152
  %66 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %bh.0, align 4
  %68 = and i32 %67, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool175.not = icmp eq i32 %68, 0
  br i1 %tobool175.not, label %if.end177, label %if.end173.do.cond308_crit_edge

if.end173.do.cond308_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond308

if.end177:                                        ; preds = %if.end173
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %5, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %70, i32 0, i32 26
  %71 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %s_bdev, align 4
  %b_bdev = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 6
  %73 = ptrtoint ptr %b_bdev to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %b_bdev, align 8
  %shl181 = shl i64 %block.0, %sh_prom134
  %74 = ptrtoint ptr %cluster_size_mask to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cluster_size_mask, align 4
  %76 = trunc i64 %shl181 to i32
  %conv183 = and i32 %75, %76
  %77 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom185 = zext i8 %78 to i64
  %shr186 = ashr i64 %shl181, %sh_prom185
  %tobool187.not = icmp eq ptr %rl.0, null
  br i1 %tobool187.not, label %if.end177.if.end191_crit_edge, label %if.end177.while.cond.preheader_crit_edge

if.end177.while.cond.preheader_crit_edge:         ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

if.end177.if.end191_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.end191:                                        ; preds = %if.then267.if.end191_crit_edge, %if.end177.if.end191_crit_edge
  %is_retry.0.off0 = phi i1 [ true, %if.then267.if.end191_crit_edge ], [ false, %if.end177.if.end191_crit_edge ]
  tail call void @down_read(ptr noundef %lock) #8
  %79 = ptrtoint ptr %runlist to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %runlist, align 8
  %cmp192.not = icmp eq ptr %80, null
  br i1 %cmp192.not, label %if.end263.thread, label %if.end191.while.cond.preheader_crit_edge, !prof !103

if.end191.while.cond.preheader_crit_edge:         ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end191.while.cond.preheader_crit_edge, %if.end177.while.cond.preheader_crit_edge
  %is_retry.1.off0769 = phi i1 [ %is_retry.0.off0, %if.end191.while.cond.preheader_crit_edge ], [ false, %if.end177.while.cond.preheader_crit_edge ]
  %rl.1768 = phi ptr [ %80, %if.end191.while.cond.preheader_crit_edge ], [ %rl.0, %if.end177.while.cond.preheader_crit_edge ]
  br label %while.cond

while.cond:                                       ; preds = %land.rhs202.while.cond_crit_edge, %while.cond.preheader
  %rl.2 = phi ptr [ %arrayidx, %land.rhs202.while.cond_crit_edge ], [ %rl.1768, %while.cond.preheader ]
  %length = getelementptr inbounds %struct.runlist_element, ptr %rl.2, i32 0, i32 2
  %81 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %tobool201.not = icmp eq i64 %82, 0
  br i1 %tobool201.not, label %while.cond.if.end208_crit_edge, label %land.rhs202

while.cond.if.end208_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

land.rhs202:                                      ; preds = %while.cond
  %arrayidx = getelementptr %struct.runlist_element, ptr %rl.2, i32 1
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx, align 8
  %cmp204.not = icmp sgt i64 %84, %shr186
  br i1 %cmp204.not, label %land.rhs202.if.end208_crit_edge, label %land.rhs202.while.cond_crit_edge

land.rhs202.while.cond_crit_edge:                 ; preds = %land.rhs202
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

land.rhs202.if.end208_crit_edge:                  ; preds = %land.rhs202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end208

if.end208:                                        ; preds = %land.rhs202.if.end208_crit_edge, %while.cond.if.end208_crit_edge
  %call207 = tail call i64 @ntfs_rl_vcn_to_lcn(ptr noundef %rl.2, i64 noundef %shr186) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call207)
  %cmp209 = icmp sgt i64 %call207, -1
  br i1 %cmp209, label %if.then211, label %if.end221

if.then211:                                       ; preds = %if.end208
  %85 = ptrtoint ptr %cluster_size_bits to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %cluster_size_bits, align 8
  %sh_prom214 = zext i8 %86 to i64
  %shl215 = shl i64 %call207, %sh_prom214
  %conv216 = zext i32 %conv183 to i64
  %add217 = add i64 %shl215, %conv216
  %shr220 = ashr i64 %add217, %sh_prom134
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %87 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %shr220, ptr %b_blocknr, align 8
  %88 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %bh.0, align 4
  %90 = and i32 %89, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i637 = icmp eq i32 %90, 0
  br i1 %tobool.not.i637, label %if.then.i638, label %if.then211.do.cond308_crit_edge

if.then211.do.cond308_crit_edge:                  ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond308

if.then.i638:                                     ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh.0) #8
  br label %do.cond308

if.end221:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call207)
  %cmp222 = icmp eq i64 %call207, -1
  br i1 %cmp222, label %if.then224, label %if.end263

if.then224:                                       ; preds = %if.end221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %91 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %91, 512
  %92 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %95, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %96 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i1.i.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 213
  %100 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %101, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %102 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %b_data, align 4
  %104 = ptrtoint ptr %103 to i32
  %and226 = and i32 %104, 4095
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %and226
  %add.ptr227 = getelementptr i8, ptr %add.ptr, i32 %21
  br label %do.body228

do.body228:                                       ; preds = %do.cond238.do.body228_crit_edge, %if.then224
  %bpos.0 = phi ptr [ %add.ptr, %if.then224 ], [ %incdec.ptr239, %do.cond238.do.body228_crit_edge ]
  %105 = ptrtoint ptr %bpos.0 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bpos.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool229.not = icmp eq i32 %106, 0
  br i1 %tobool229.not, label %do.cond238, label %do.body228.do.end252_crit_edge, !prof !102

do.body228.do.end252_crit_edge:                   ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end252

do.cond238:                                       ; preds = %do.body228
  %incdec.ptr239 = getelementptr i32, ptr %bpos.0, i32 1
  %cmp240 = icmp ult ptr %incdec.ptr239, %add.ptr227
  br i1 %cmp240, label %do.cond238.do.body228_crit_edge, label %do.cond238.do.end252_crit_edge, !prof !102

do.cond238.do.end252_crit_edge:                   ; preds = %do.cond238
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end252

do.cond238.do.body228_crit_edge:                  ; preds = %do.cond238
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body228

do.end252:                                        ; preds = %do.cond238.do.end252_crit_edge, %do.body228.do.end252_crit_edge
  %bpos.1 = phi ptr [ %bpos.0, %do.body228.do.end252_crit_edge ], [ %incdec.ptr239, %do.cond238.do.end252_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %107 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i1.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 213
  %111 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %112, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %113 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i680 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i680 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i681 = add i32 %116, -1
  store volatile i32 %sub.i.i681, ptr %preempt_count.i.i.i, align 4
  %cmp255 = icmp eq ptr %bpos.1, %add.ptr227
  br i1 %cmp255, label %if.then257, label %if.end259

if.then257:                                       ; preds = %do.end252
  call void @__sanitizer_cov_trace_pc() #10
  %b_blocknr258 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %117 = ptrtoint ptr %b_blocknr258 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 -1, ptr %b_blocknr258, align 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #8
  br label %do.cond308

if.end259:                                        ; preds = %do.end252
  call void @__sanitizer_cov_trace_pc() #10
  %118 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_write_block, ptr noundef %119, ptr noundef nonnull @.str.25) #8
  br label %do.end311

if.end263:                                        ; preds = %if.end221
  %is_retry.1.off0.not = xor i1 %is_retry.1.off0769, true
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %call207)
  %cmp265 = icmp eq i64 %call207, -2
  %or.cond = select i1 %is_retry.1.off0.not, i1 %cmp265, i1 false
  br i1 %or.cond, label %if.end263.if.then267_crit_edge, label %if.else282

if.end263.if.then267_crit_edge:                   ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then267

if.end263.thread:                                 ; preds = %if.end191
  br i1 %is_retry.0.off0, label %if.end263.thread.if.then284_crit_edge, label %if.end263.thread.if.then267_crit_edge

if.end263.thread.if.then267_crit_edge:            ; preds = %if.end263.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then267

if.end263.thread.if.then284_crit_edge:            ; preds = %if.end263.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then284

if.then267:                                       ; preds = %if.end263.thread.if.then267_crit_edge, %if.end263.if.then267_crit_edge
  tail call void @up_read(ptr noundef %lock) #8
  %call270 = tail call i32 @ntfs_map_runlist(ptr noundef %add.ptr.i, i64 noundef %shr186) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %if.then267.if.end191_crit_edge, label %if.then267.if.end288_crit_edge, !prof !102

if.then267.if.end288_crit_edge:                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end288

if.then267.if.end191_crit_edge:                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

if.else282:                                       ; preds = %if.end263
  %tobool283.not = icmp eq ptr %rl.2, null
  br i1 %tobool283.not, label %if.else282.if.then284_crit_edge, label %if.else282.if.end288_crit_edge

if.else282.if.end288_crit_edge:                   ; preds = %if.else282
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end288

if.else282.if.then284_crit_edge:                  ; preds = %if.else282
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then284

if.then284:                                       ; preds = %if.else282.if.then284_crit_edge, %if.end263.thread.if.then284_crit_edge
  %is_retry.1.off0770 = phi i1 [ %is_retry.1.off0769, %if.else282.if.then284_crit_edge ], [ true, %if.end263.thread.if.then284_crit_edge ]
  %lcn.0705709718723 = phi i64 [ %call207, %if.else282.if.then284_crit_edge ], [ -2, %if.end263.thread.if.then284_crit_edge ]
  tail call void @up_read(ptr noundef %lock) #8
  br label %if.end288

if.end288:                                        ; preds = %if.then284, %if.else282.if.end288_crit_edge, %if.then267.if.end288_crit_edge
  %lcn.0705709717 = phi i64 [ %call207, %if.else282.if.end288_crit_edge ], [ %lcn.0705709718723, %if.then284 ], [ -2, %if.then267.if.end288_crit_edge ]
  %rl.4 = phi ptr [ %rl.2, %if.else282.if.end288_crit_edge ], [ null, %if.then284 ], [ null, %if.then267.if.end288_crit_edge ]
  %err.4 = phi i32 [ 0, %if.else282.if.end288_crit_edge ], [ 0, %if.then284 ], [ %call270, %if.then267.if.end288_crit_edge ]
  %is_retry.2.off0 = phi i1 [ %is_retry.1.off0769, %if.else282.if.end288_crit_edge ], [ %is_retry.1.off0770, %if.then284 ], [ true, %if.then267.if.end288_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %err.4)
  %cmp289 = icmp eq i32 %err.4, -2
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %lcn.0705709717)
  %cmp291 = icmp eq i64 %lcn.0705709717, -3
  %or.cond619 = select i1 %cmp289, i1 true, i1 %cmp291
  br i1 %or.cond619, label %if.then293, label %if.end297

if.then293:                                       ; preds = %if.end288
  %b_blocknr294 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %120 = ptrtoint ptr %b_blocknr294 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 -1, ptr %b_blocknr294, align 8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #8
  %b_data295 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 5
  %121 = ptrtoint ptr %b_data295 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %b_data295, align 4
  %123 = ptrtoint ptr %122 to i32
  %and296 = and i32 %123, 4095
  %add.i = add i32 %and296, %21
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %and296, i32 noundef %add.i, i32 noundef 0, i32 noundef 0) #8
  %124 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i639 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i639)
  %tobool.not.i640 = icmp eq i32 %and1.i.i639, 0
  br i1 %tobool.not.i640, label %if.then.i641, label %if.then293.do.cond308_crit_edge

if.then293.do.cond308_crit_edge:                  ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond308

if.then.i641:                                     ; preds = %if.then293
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #8
  br label %do.cond308

if.end297:                                        ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool298.not = icmp eq i32 %err.4, 0
  %spec.select620 = select i1 %tobool298.not, i32 -5, i32 %err.4
  %b_blocknr301 = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 3
  %126 = ptrtoint ptr %b_blocknr301 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 -1, ptr %b_blocknr301, align 8
  %127 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %5, align 8
  %129 = ptrtoint ptr %mft_no to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %mft_no, align 4
  %131 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %type, align 4
  %cond = select i1 %is_retry.2.off0, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_write_block, ptr noundef %128, ptr noundef nonnull @.str.26, i32 noundef %130, i32 noundef %132, i64 noundef %shr186, i32 noundef %conv183, ptr noundef nonnull %cond, i32 noundef %spec.select620) #8
  br label %do.end311

do.cond308:                                       ; preds = %if.then.i641, %if.then293.do.cond308_crit_edge, %if.then257, %if.then.i638, %if.then211.do.cond308_crit_edge, %if.end173.do.cond308_crit_edge, %if.end148.do.cond308_crit_edge, %if.then.i632, %if.then147.do.cond308_crit_edge
  %rl.5.ph = phi ptr [ %rl.4, %if.then.i641 ], [ %rl.4, %if.then293.do.cond308_crit_edge ], [ %rl.2, %if.then.i638 ], [ %rl.2, %if.then211.do.cond308_crit_edge ], [ %rl.0, %if.then.i632 ], [ %rl.0, %if.then147.do.cond308_crit_edge ], [ %rl.2, %if.then257 ], [ %rl.0, %if.end173.do.cond308_crit_edge ], [ %rl.0, %if.end148.do.cond308_crit_edge ]
  %inc = add i64 %block.0, 1
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %133 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %b_this_page, align 4
  %cmp309.not = icmp eq ptr %134, %54
  br i1 %cmp309.not, label %do.cond308.do.end311_crit_edge, label %do.cond308.do.body138_crit_edge

do.cond308.do.body138_crit_edge:                  ; preds = %do.cond308
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body138

do.cond308.do.end311_crit_edge:                   ; preds = %do.cond308
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end311

do.end311:                                        ; preds = %do.cond308.do.end311_crit_edge, %if.end297, %if.end259, %if.then163
  %err.6732 = phi i32 [ -95, %if.then163 ], [ %spec.select620, %if.end297 ], [ -95, %if.end259 ], [ 0, %do.cond308.do.end311_crit_edge ]
  %rl.5729 = phi ptr [ %rl.0, %if.then163 ], [ %rl.4, %if.end297 ], [ %rl.2, %if.end259 ], [ %rl.5.ph, %do.cond308.do.end311_crit_edge ]
  %tobool312.not = icmp eq ptr %rl.5729, null
  br i1 %tobool312.not, label %do.end311.if.end316_crit_edge, label %if.then313

do.end311.if.end316_crit_edge:                    ; preds = %do.end311
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end316

if.then313:                                       ; preds = %do.end311
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_read(ptr noundef %lock) #8
  br label %if.end316

if.end316:                                        ; preds = %if.then313, %do.end311.if.end316_crit_edge
  %135 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %135, align 4
  %and.i.i682 = and i32 %137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i682)
  %tobool.not.i.i683 = icmp eq i32 %and.i.i682, 0
  br i1 %tobool.not.i.i683, label %if.end.i.i686, label %if.then.i.i685, !prof !102

if.then.i.i685:                                   ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i684 = add i32 %137, -1
  br label %_compound_head.exit.i690

if.end.i.i686:                                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i690

_compound_head.exit.i690:                         ; preds = %if.end.i.i686, %if.then.i.i685
  %retval.0.i.i687 = phi i32 [ %sub.i.i684, %if.then.i.i685 ], [ %138, %if.end.i.i686 ]
  %139 = inttoptr i32 %retval.0.i.i687 to ptr
  %140 = getelementptr inbounds %struct.page, ptr %139, i32 0, i32 1
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %140, align 4
  %and.i.i.i.i688 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i688)
  %tobool.not.i.i.i689 = icmp eq i32 %and.i.i.i.i688, 0
  br i1 %tobool.not.i.i.i689, label %folio_flags.exit.i.i693, label %if.then.i.i.i691, !prof !102

if.then.i.i.i691:                                 ; preds = %_compound_head.exit.i690
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %139, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

folio_flags.exit.i.i693:                          ; preds = %_compound_head.exit.i690
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %139, align 4
  %145 = and i32 %144, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cond738 = icmp eq i32 %145, 0
  br i1 %cond738, label %folio_flags.exit.i.i693.do.body328_crit_edge, label %do.end.i.i694, !prof !177

folio_flags.exit.i.i693.do.body328_crit_edge:     ; preds = %folio_flags.exit.i.i693
  br label %do.body328

do.end.i.i694:                                    ; preds = %folio_flags.exit.i.i693
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !112
  br label %do.body342.preheader

do.body328:                                       ; preds = %do.cond333.do.body328_crit_edge, %folio_flags.exit.i.i693.do.body328_crit_edge
  %bh.1 = phi ptr [ %149, %do.cond333.do.body328_crit_edge ], [ %54, %folio_flags.exit.i.i693.do.body328_crit_edge ]
  %146 = ptrtoint ptr %bh.1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %bh.1, align 4
  %and1.i.i643 = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i643)
  %tobool330.not = icmp eq i32 %and1.i.i643, 0
  br i1 %tobool330.not, label %do.body328.do.body342.preheader_crit_edge, label %do.cond333

do.body328.do.body342.preheader_crit_edge:        ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body342.preheader

do.cond333:                                       ; preds = %do.body328
  %b_this_page334 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 1
  %148 = ptrtoint ptr %b_this_page334 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %b_this_page334, align 4
  %cmp335.not = icmp eq ptr %149, %54
  br i1 %cmp335.not, label %if.then339, label %do.cond333.do.body328_crit_edge

do.cond333.do.body328_crit_edge:                  ; preds = %do.cond333
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body328

if.then339:                                       ; preds = %do.cond333
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %150 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %135, align 4
  %and.i.i.i.i = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !102

if.then.i.i.i:                                    ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then339
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #8
  br label %do.body342.preheader

do.body342.preheader:                             ; preds = %SetPageUptodate.exit, %do.body328.do.body342.preheader_crit_edge, %do.end.i.i694
  br label %do.body342

do.body342:                                       ; preds = %do.cond390.do.body342_crit_edge, %do.body342.preheader
  %bh.4 = phi ptr [ %166, %do.cond390.do.body342_crit_edge ], [ %54, %do.body342.preheader ]
  %152 = ptrtoint ptr %bh.4 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %bh.4, align 4
  %154 = and i32 %153, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool344.not = icmp eq i32 %154, 0
  br i1 %tobool344.not, label %do.body342.if.else375_crit_edge, label %land.lhs.true345

do.body342.if.else375_crit_edge:                  ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else375

land.lhs.true345:                                 ; preds = %do.body342
  %155 = ptrtoint ptr %bh.4 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile i32, ptr %bh.4, align 4
  %157 = and i32 %156, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool347.not = icmp eq i32 %157, 0
  br i1 %tobool347.not, label %land.lhs.true345.if.else375_crit_edge, label %if.then348

land.lhs.true345.if.else375_crit_edge:            ; preds = %land.lhs.true345
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else375

if.then348:                                       ; preds = %land.lhs.true345
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.4, i32 noundef 4) #8
  %158 = ptrtoint ptr %bh.4 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %bh.4, align 4
  %and.i.i.i.i697 = and i32 %159, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i697)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i697, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.then348.if.then.i698_crit_edge

if.then348.if.then.i698_crit_edge:                ; preds = %if.then348
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i698

trylock_buffer.exit.i:                            ; preds = %if.then348
  tail call void @llvm.prefetch.p0(ptr %bh.4, i32 1, i32 3, i32 1) #8
  %160 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.4, ptr %bh.4, i32 4, ptr elementtype(i32) %bh.4) #8, !srcloc !131
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %160, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !132
  %161 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.not.i = icmp eq i32 %161, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i698_crit_edge

trylock_buffer.exit.i.if.then.i698_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i698

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i698:                                     ; preds = %trylock_buffer.exit.i.if.then.i698_crit_edge, %if.then348.if.then.i698_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh.4) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i698, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %bh.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool350.not = icmp eq i32 %call.i, 0
  br i1 %tobool350.not, label %if.else373, label %do.body352

do.body352:                                       ; preds = %lock_buffer.exit
  %162 = ptrtoint ptr %bh.4 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %bh.4, align 4
  %and1.i.i648 = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i648)
  %tobool354.not = icmp eq i32 %and1.i.i648, 0
  br i1 %tobool354.not, label %do.body364, label %do.end372, !prof !103

do.body364:                                       ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 820, 0\0A.popsection", ""() #8, !srcloc !178
  unreachable

do.end372:                                        ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_async_write(ptr noundef %bh.4) #8
  br label %do.cond390

if.else373:                                       ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_buffer(ptr noundef %bh.4) #8
  br label %do.cond390

if.else375:                                       ; preds = %land.lhs.true345.if.else375_crit_edge, %do.body342.if.else375_crit_edge
  %164 = zext i32 %err.6732 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %err.6732, label %if.then386 [
    i32 0, label %if.else375.do.cond390_crit_edge
    i32 -12, label %if.else375.do.cond390_crit_edge815
  ], !prof !159

if.else375.do.cond390_crit_edge815:               ; preds = %if.else375
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond390

if.else375.do.cond390_crit_edge:                  ; preds = %if.else375
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond390

if.then386:                                       ; preds = %if.else375
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.4) #8
  br label %do.cond390

do.cond390:                                       ; preds = %if.then386, %if.else375.do.cond390_crit_edge, %if.else375.do.cond390_crit_edge815, %if.else373, %do.end372
  %b_this_page391 = getelementptr inbounds %struct.buffer_head, ptr %bh.4, i32 0, i32 1
  %165 = ptrtoint ptr %b_this_page391 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %b_this_page391, align 4
  %cmp392.not = icmp eq ptr %166, %54
  br i1 %cmp392.not, label %do.end394, label %do.cond390.do.body342_crit_edge

do.cond390.do.body342_crit_edge:                  ; preds = %do.cond390
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body342

do.end394:                                        ; preds = %do.cond390
  %167 = zext i32 %err.6732 to i64
  call void @__sanitizer_cov_trace_switch(i64 %167, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %err.6732, label %if.else418 [
    i32 0, label %do.end394.do.body422_crit_edge
    i32 -95, label %do.end394.do.body422_crit_edge816
    i32 -12, label %if.then415
  ], !prof !179

do.end394.do.body422_crit_edge816:                ; preds = %do.end394
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

do.end394.do.body422_crit_edge:                   ; preds = %do.end394
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body422

if.then415:                                       ; preds = %do.end394
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_warning(ptr noundef nonnull @__func__.ntfs_write_block, ptr noundef %169, ptr noundef nonnull @.str.6) #8
  %call417 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #8
  br label %do.body422

if.else418:                                       ; preds = %do.end394
  %170 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %135, align 4
  %and.i.i = and i32 %171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i649 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i649, label %do.body7.i, label %if.then.i650, !prof !102

if.then.i650:                                     ; preds = %if.else418
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !122
  unreachable

do.body7.i:                                       ; preds = %if.else418
  %172 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %135, align 4
  %and.i31.i = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %173, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %174 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %174, %if.end.i.i ]
  %175 = inttoptr i32 %retval.0.i.i to ptr
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %177)
  %cmp.i.not.i651 = icmp eq i32 %177, -1
  %178 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %135, align 4
  %and.i32.i = and i32 %179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i651, label %if.then17.i, label %do.end24.i, !prof !103

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !102

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %179, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %page to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %180, %if.end.i36.i ]
  %181 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %181, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !123
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !102

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %179, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %page to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %182, %if.end.i43.i ]
  %183 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %183) #8
  br label %do.body422

do.body422:                                       ; preds = %SetPageError.exit, %if.then415, %do.end394.do.body422_crit_edge, %do.end394.do.body422_crit_edge816
  %err.7 = phi i32 [ 0, %if.then415 ], [ %err.6732, %SetPageError.exit ], [ 0, %do.end394.do.body422_crit_edge ], [ 0, %do.end394.do.body422_crit_edge816 ]
  %184 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load volatile i32, ptr %135, align 4
  %and.i.i652 = and i32 %185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i652)
  %tobool.not.i.i653 = icmp eq i32 %and.i.i652, 0
  br i1 %tobool.not.i.i653, label %if.end.i.i656, label %if.then.i.i655, !prof !102

if.then.i.i655:                                   ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i654 = add i32 %185, -1
  br label %_compound_head.exit.i659

if.end.i.i656:                                    ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i659

_compound_head.exit.i659:                         ; preds = %if.end.i.i656, %if.then.i.i655
  %retval.0.i.i657 = phi i32 [ %sub.i.i654, %if.then.i.i655 ], [ %186, %if.end.i.i656 ]
  %187 = inttoptr i32 %retval.0.i.i657 to ptr
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %189)
  %cmp.i.not.i658 = icmp eq i32 %189, -1
  %190 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load volatile i32, ptr %135, align 4
  %and.i16.i = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i658, label %if.then.i660, label %do.end10.i, !prof !103

if.then.i660:                                     ; preds = %_compound_head.exit.i659
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !102

if.then.i19.i:                                    ; preds = %if.then.i660
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %191, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i660
  call void @__sanitizer_cov_trace_pc() #10
  %192 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %192, %if.end.i20.i ]
  %193 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %193, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #8, !srcloc !114
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i659
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !102

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %191, -1
  br label %PageWriteback.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %194 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %194, %if.end.i27.i ]
  %195 = inttoptr i32 %retval.0.i28.i to ptr
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %195, align 4
  %198 = and i32 %197, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool424.not = icmp eq i32 %198, 0
  br i1 %tobool424.not, label %do.end440, label %do.body432, !prof !102

do.body432:                                       ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 852, 0\0A.popsection", ""() #8, !srcloc !180
  unreachable

do.end440:                                        ; preds = %PageWriteback.exit
  %call441 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #8
  br label %do.body442.outer

do.body442.outer:                                 ; preds = %if.end448.thread.do.body442.outer_crit_edge, %do.end440
  %bh.5.ph = phi ptr [ %200, %if.end448.thread.do.body442.outer_crit_edge ], [ %54, %do.end440 ]
  %need_end_writeback.0.off0.ph = phi i1 [ false, %if.end448.thread.do.body442.outer_crit_edge ], [ true, %do.end440 ]
  br label %do.body442

do.body442:                                       ; preds = %if.end448.do.body442_crit_edge, %do.body442.outer
  %bh.5 = phi ptr [ %200, %if.end448.do.body442_crit_edge ], [ %bh.5.ph, %do.body442.outer ]
  %b_this_page443 = getelementptr inbounds %struct.buffer_head, ptr %bh.5, i32 0, i32 1
  %199 = ptrtoint ptr %b_this_page443 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %b_this_page443, align 4
  %201 = ptrtoint ptr %bh.5 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %bh.5, align 4
  %203 = and i32 %202, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool445.not = icmp eq i32 %203, 0
  br i1 %tobool445.not, label %if.end448, label %if.end448.thread

if.end448:                                        ; preds = %do.body442
  %cmp450.not = icmp eq ptr %200, %54
  br i1 %cmp450.not, label %do.end452, label %if.end448.do.body442_crit_edge

if.end448.do.body442_crit_edge:                   ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body442

if.end448.thread:                                 ; preds = %do.body442
  %call447 = tail call i32 @submit_bh(i32 noundef 1, i32 noundef 0, ptr noundef %bh.5) #8
  %cmp450.not735 = icmp eq ptr %200, %54
  br i1 %cmp450.not735, label %do.end452.thread, label %if.end448.thread.do.body442.outer_crit_edge

if.end448.thread.do.body442.outer_crit_edge:      ; preds = %if.end448.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body442.outer

do.end452.thread:                                 ; preds = %if.end448.thread
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @unlock_page(ptr noundef %page) #8
  br label %if.end461

do.end452:                                        ; preds = %if.end448
  tail call void @unlock_page(ptr noundef %page) #8
  br i1 %need_end_writeback.0.off0.ph, label %if.then460, label %do.end452.if.end461_crit_edge, !prof !103

do.end452.if.end461_crit_edge:                    ; preds = %do.end452
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end461

if.then460:                                       ; preds = %do.end452
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @end_page_writeback(ptr noundef %page) #8
  br label %if.end461

if.end461:                                        ; preds = %if.then460, %do.end452.if.end461_crit_edge, %do.end452.thread
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 871, ptr noundef nonnull @__func__.ntfs_write_block, ptr noundef nonnull @.str.17) #8
  br label %cleanup462

cleanup462:                                       ; preds = %if.end461, %if.then66
  %retval.0 = phi i32 [ %err.7, %if.end461 ], [ 0, %if.then66 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @map_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mft_record(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_attr_get_search_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_attr_lookup(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_resident_attr_value_resize(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap_atomic(ptr noundef %page) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %5 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i1.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i1.i to ptr
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or) #8
  ret ptr %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kunmap_atomic(ptr noundef %addr) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kunmap_local_indexed(ptr noundef %addr) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i1 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i1 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i.i, align 8
  %pagefault_disabled.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 213
  %4 = ptrtoint ptr %pagefault_disabled.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pagefault_disabled.i.i, align 8
  %dec.i.i = add i32 %5, -1
  store i32 %dec.i.i, ptr %pagefault_disabled.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %6 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_attr_put_search_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_warning(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_rl_vcn_to_lcn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_map_runlist(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ntfs_may_write_mft_record(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pre_write_mst_fixup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_write_sync(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_sync_mft_mirror(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @post_write_mst_fixup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_async_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_mft_record_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_read_compressed_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ntfs_end_buffer_async_read(ptr noundef %bh, i32 noundef %uptodate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  %mapping = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uptodate)
  %tobool.not = icmp eq i32 %uptodate, 0
  br i1 %tobool.not, label %if.else, label %if.then, !prof !103

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.set_buffer_uptodate.exit_crit_edge

if.then.set_buffer_uptodate.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %if.then.set_buffer_uptodate.exit_crit_edge
  %index = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %conv = zext i32 %9 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %10 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data, align 4
  %12 = ptrtoint ptr %11 to i32
  %and = and i32 %12, 4095
  %conv3 = zext i32 %and to i64
  %add = or i64 %shl, %conv3
  %call6 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %add.ptr.i) #8
  %initialized_size = getelementptr i8, ptr %5, i32 -480
  %13 = ptrtoint ptr %initialized_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %initialized_size, align 8
  %call7 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call6) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %call7)
  %cmp17 = icmp sgt i64 %14, %call7
  br i1 %cmp17, label %if.then25, label %set_buffer_uptodate.exit.if.end_crit_edge, !prof !103

set_buffer_uptodate.exit.if.end_crit_edge:        ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then25:                                        ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %if.then25, %set_buffer_uptodate.exit.if.end_crit_edge
  %init_size.0 = phi i64 [ %call7, %if.then25 ], [ %14, %set_buffer_uptodate.exit.if.end_crit_edge ]
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %15 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %b_size, align 8
  %conv26 = zext i32 %16 to i64
  %add27 = add nuw nsw i64 %add, %conv26
  call void @__sanitizer_cov_trace_cmp8(i64 %add27, i64 %init_size.0)
  %cmp28 = icmp sgt i64 %add27, %init_size.0
  br i1 %cmp28, label %if.then36, label %if.end.do.body56_crit_edge, !prof !103

if.end.do.body56_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body56

if.then36:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %init_size.0, i64 %add)
  %cmp37 = icmp sgt i64 %init_size.0, %add
  %sub = sub i64 %init_size.0, %add
  %conv40 = trunc i64 %sub to i32
  %ofs.0 = select i1 %cmp37, i32 %conv40, i32 0
  %call42 = tail call fastcc ptr @kmap_atomic(ptr noundef %1)
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  %19 = ptrtoint ptr %18 to i32
  %and44 = and i32 %19, 4095
  %add.ptr = getelementptr i8, ptr %call42, i32 %and44
  %add.ptr45 = getelementptr i8, ptr %add.ptr, i32 %ofs.0
  %20 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_size, align 8
  %sub47 = sub i32 %21, %ofs.0
  %22 = call ptr @memset(ptr %add.ptr45, i32 0, i32 %sub47)
  tail call void @flush_dcache_page(ptr noundef %1) #8
  tail call fastcc void @__kunmap_atomic(ptr noundef %call42)
  br label %do.body56

if.else:                                          ; preds = %entry
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %bh) #8
  %23 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i247 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i247, label %do.body7.i, label %if.then.i248, !prof !102

if.then.i248:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !122
  unreachable

do.body7.i:                                       ; preds = %if.else
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %23, align 4
  %and.i31.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i = icmp eq i32 %31, -1
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %23, align 4
  %and.i32.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !103

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !102

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i34.i = add i32 %33, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %34, %if.end.i36.i ]
  %35 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !123
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !102

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i41.i = add i32 %33, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %1 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %36, %if.end.i43.i ]
  %37 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %37) #8
  %vol = getelementptr i8, ptr %5, i32 -448
  %38 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vol, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %42 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %b_blocknr, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_end_buffer_async_read, ptr noundef %41, ptr noundef nonnull @.str.31, i64 noundef %43) #8
  br label %do.body56

do.body56:                                        ; preds = %SetPageError.exit, %if.then36, %if.end.do.body56_crit_edge
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i.not.i249 = icmp eq i32 %45, -1
  br i1 %cmp.i.not.i249, label %if.then.i250, label %PagePrivate.exit, !prof !103

if.then.i250:                                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.41) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

PagePrivate.exit:                                 ; preds = %do.body56
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %1, align 4
  %48 = and i32 %47, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool58.not = icmp eq i32 %48, 0
  br i1 %tobool58.not, label %do.body68, label %do.end76, !prof !103

do.body68:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #8, !srcloc !181
  unreachable

do.end76:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %49 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %private, align 4
  %51 = inttoptr i32 %50 to ptr
  %b_uptodate_lock = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 12
  %call86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %b_uptodate_lock) #8
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %bh) #8
  tail call void @unlock_buffer(ptr noundef %bh) #8
  br label %do.body91

do.body91:                                        ; preds = %if.end115.do.body91_crit_edge, %do.end76
  %page_uptodate.0 = phi i32 [ 1, %do.end76 ], [ %spec.select, %if.end115.do.body91_crit_edge ]
  %tmp.0 = phi ptr [ %bh, %do.end76 ], [ %60, %if.end115.do.body91_crit_edge ]
  %52 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %tmp.0, align 4
  %54 = load volatile i32, ptr %tmp.0, align 4
  %55 = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool97.not = icmp eq i32 %55, 0
  br i1 %tobool97.not, label %if.end115, label %if.then98

if.then98:                                        ; preds = %do.body91
  %56 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %tmp.0, align 4
  %58 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool100.not = icmp eq i32 %58, 0
  br i1 %tobool100.not, label %do.body109, label %still_busy, !prof !103

do.body109:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 106, 0\0A.popsection", ""() #8, !srcloc !182
  unreachable

if.end115:                                        ; preds = %do.body91
  %and1.i.i252 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i252)
  %tobool93.not = icmp eq i32 %and1.i.i252, 0
  %spec.select = select i1 %tobool93.not, i32 0, i32 %page_uptodate.0
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %tmp.0, i32 0, i32 1
  %59 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b_this_page, align 4
  %cmp117.not = icmp eq ptr %60, %bh
  br i1 %cmp117.not, label %do.end119, label %if.end115.do.body91_crit_edge

if.end115.do.body91_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body91

do.end119:                                        ; preds = %if.end115
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %b_uptodate_lock, i32 noundef %call86) #8
  %state.i = getelementptr i8, ptr %5, i32 -464
  %61 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %state.i, align 4
  %63 = and i32 %62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool122.not = icmp eq i32 %63, 0
  br i1 %tobool122.not, label %if.then123, label %if.else137

if.then123:                                       ; preds = %do.end119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool124.not = icmp eq i32 %spec.select, 0
  br i1 %tobool124.not, label %if.then123.if.end185_crit_edge, label %land.rhs, !prof !103

if.then123.if.end185_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

land.rhs:                                         ; preds = %if.then123
  %64 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %and.i.i257 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i257)
  %tobool.not.i.i258 = icmp eq i32 %and.i.i257, 0
  br i1 %tobool.not.i.i258, label %if.end.i.i261, label %if.then.i.i260, !prof !102

if.then.i.i260:                                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i259 = add i32 %66, -1
  br label %_compound_head.exit.i264

if.end.i.i261:                                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i264

_compound_head.exit.i264:                         ; preds = %if.end.i.i261, %if.then.i.i260
  %retval.0.i.i262 = phi i32 [ %sub.i.i259, %if.then.i.i260 ], [ %67, %if.end.i.i261 ]
  %68 = inttoptr i32 %retval.0.i.i262 to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i.not.i263 = icmp eq i32 %70, -1
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %64, align 4
  %and.i16.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i263, label %if.then.i265, label %do.end10.i, !prof !103

if.then.i265:                                     ; preds = %_compound_head.exit.i264
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !102

if.then.i19.i:                                    ; preds = %if.then.i265
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i = add i32 %72, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i265
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %73, %if.end.i20.i ]
  %74 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %74, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i264
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !102

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i = add i32 %72, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %1 to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %75, %if.end.i27.i ]
  %76 = inttoptr i32 %retval.0.i28.i to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %76, align 4
  %79 = and i32 %78, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool126.not = icmp eq i32 %79, 0
  br i1 %tobool126.not, label %if.then135, label %PageError.exit.if.end185_crit_edge, !prof !102

PageError.exit.if.end185_crit_edge:               ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.then135:                                       ; preds = %PageError.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %80 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %64, align 4
  %and.i.i.i.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then135.if.end185.sink.split_crit_edge, label %if.then.i.i.i, !prof !102

if.then135.if.end185.sink.split_crit_edge:        ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185.sink.split

if.then.i.i.i:                                    ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

if.else137:                                       ; preds = %do.end119
  %itype = getelementptr i8, ptr %5, i32 -120
  %82 = ptrtoint ptr %itype to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %itype, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %83)
  %tobool140.not = icmp ugt i32 %83, 4096
  br i1 %tobool140.not, label %do.body150, label %for.body.preheader, !prof !103

do.body150:                                       ; preds = %if.else137
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ntfs/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 130, 0\0A.popsection", ""() #8, !srcloc !183
  unreachable

for.body.preheader:                               ; preds = %if.else137
  %div = udiv i32 4096, %83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %84 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %84, 512
  %85 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %88, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !118
  %89 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i1.i.i = and i32 %89, -16384
  %90 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %92, i32 0, i32 213
  %93 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %94, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !119
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %or.i) #8
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0303 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = mul i32 %i.0303, %83
  %add.ptr162 = getelementptr i8, ptr %call.i.i, i32 %mul
  %call163 = tail call i32 @post_read_mst_fixup(ptr noundef %add.ptr162, i32 noundef %83) #8
  %inc = add nuw nsw i32 %i.0303, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.end167, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end167:                                        ; preds = %for.body
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !120
  %95 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i1.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %98, i32 0, i32 213
  %99 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %100, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !121
  %101 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i298 = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i298 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i299 = add i32 %104, -1
  store volatile i32 %sub.i.i299, ptr %preempt_count.i.i.i, align 4
  tail call void @flush_dcache_page(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool170.not = icmp eq i32 %spec.select, 0
  br i1 %tobool170.not, label %do.end167.if.end185_crit_edge, label %land.rhs171, !prof !103

do.end167.if.end185_crit_edge:                    ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

land.rhs171:                                      ; preds = %do.end167
  %105 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %105, align 4
  %and.i.i268 = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i268)
  %tobool.not.i.i269 = icmp eq i32 %and.i.i268, 0
  br i1 %tobool.not.i.i269, label %if.end.i.i272, label %if.then.i.i271, !prof !102

if.then.i.i271:                                   ; preds = %land.rhs171
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i270 = add i32 %107, -1
  br label %_compound_head.exit.i277

if.end.i.i272:                                    ; preds = %land.rhs171
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i277

_compound_head.exit.i277:                         ; preds = %if.end.i.i272, %if.then.i.i271
  %retval.0.i.i273 = phi i32 [ %sub.i.i270, %if.then.i.i271 ], [ %108, %if.end.i.i272 ]
  %109 = inttoptr i32 %retval.0.i.i273 to ptr
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %111)
  %cmp.i.not.i274 = icmp eq i32 %111, -1
  %112 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %105, align 4
  %and.i16.i275 = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i275)
  %tobool.not.i17.i276 = icmp eq i32 %and.i16.i275, 0
  br i1 %cmp.i.not.i274, label %if.then.i278, label %do.end10.i284, !prof !103

if.then.i278:                                     ; preds = %_compound_head.exit.i277
  br i1 %tobool.not.i17.i276, label %if.end.i20.i281, label %if.then.i19.i280, !prof !102

if.then.i19.i280:                                 ; preds = %if.then.i278
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i18.i279 = add i32 %113, -1
  br label %_compound_head.exit22.i283

if.end.i20.i281:                                  ; preds = %if.then.i278
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit22.i283

_compound_head.exit22.i283:                       ; preds = %if.end.i20.i281, %if.then.i19.i280
  %retval.0.i21.i282 = phi i32 [ %sub.i18.i279, %if.then.i19.i280 ], [ %114, %if.end.i20.i281 ]
  %115 = inttoptr i32 %retval.0.i21.i282 to ptr
  tail call void @dump_page(ptr noundef %115, ptr noundef nonnull @.str.8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #8, !srcloc !133
  unreachable

do.end10.i284:                                    ; preds = %_compound_head.exit.i277
  br i1 %tobool.not.i17.i276, label %if.end.i27.i287, label %if.then.i26.i286, !prof !102

if.then.i26.i286:                                 ; preds = %do.end10.i284
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i25.i285 = add i32 %113, -1
  br label %PageError.exit291

if.end.i27.i287:                                  ; preds = %do.end10.i284
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %1 to i32
  br label %PageError.exit291

PageError.exit291:                                ; preds = %if.end.i27.i287, %if.then.i26.i286
  %retval.0.i28.i288 = phi i32 [ %sub.i25.i285, %if.then.i26.i286 ], [ %116, %if.end.i27.i287 ]
  %117 = inttoptr i32 %retval.0.i28.i288 to ptr
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %117, align 4
  %120 = and i32 %119, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool173.not = icmp eq i32 %120, 0
  br i1 %tobool173.not, label %if.then183, label %PageError.exit291.if.end185_crit_edge, !prof !102

PageError.exit291.if.end185_crit_edge:            ; preds = %PageError.exit291
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185

if.then183:                                       ; preds = %PageError.exit291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !134
  %121 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %105, align 4
  %and.i.i.i.i292 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i292)
  %tobool.not.i.i.i293 = icmp eq i32 %and.i.i.i.i292, 0
  br i1 %tobool.not.i.i.i293, label %if.then183.if.end185.sink.split_crit_edge, label %if.then.i.i.i294, !prof !102

if.then183.if.end185.sink.split_crit_edge:        ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185.sink.split

if.then.i.i.i294:                                 ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !111
  unreachable

if.end185.sink.split:                             ; preds = %if.then183.if.end185.sink.split_crit_edge, %if.then135.if.end185.sink.split_crit_edge
  tail call void @_set_bit(i32 noundef 2, ptr noundef %1) #8
  br label %if.end185

if.end185:                                        ; preds = %if.end185.sink.split, %PageError.exit291.if.end185_crit_edge, %do.end167.if.end185_crit_edge, %PageError.exit.if.end185_crit_edge, %if.then123.if.end185_crit_edge
  tail call void @unlock_page(ptr noundef %1) #8
  br label %cleanup

still_busy:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %b_uptodate_lock, i32 noundef %call86) #8
  br label %cleanup

cleanup:                                          ; preds = %still_busy, %if.end185
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @post_read_mst_fixup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntfs_attr_vcn_to_lcn_nolock(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !79, !80, !82, !84, !86, !88, !90}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @ntfs_normal_aops, !1, !"ntfs_normal_aops", i1 false, i1 false}
!1 = !{!"../fs/ntfs/aops.c", i32 1652, i32 39}
!2 = !{ptr @ntfs_compressed_aops, !3, !"ntfs_compressed_aops", i1 false, i1 false}
!3 = !{!"../fs/ntfs/aops.c", i32 1667, i32 39}
!4 = !{ptr @ntfs_mst_aops, !5, !"ntfs_mst_aops", i1 false, i1 false}
!5 = !{!"../fs/ntfs/aops.c", i32 1682, i32 39}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/aops.c", i32 1359, i32 3}
!8 = !{ptr @__func__.ntfs_writepage, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs/aops.c", i32 1375, i32 4}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs/aops.c", i32 1385, i32 4}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs/aops.c", i32 1392, i32 4}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs/aops.c", i32 1422, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ntfs/aops.c", i32 1499, i32 3}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/ntfs/aops.c", i32 1508, i32 3}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!24 = !{ptr @__func__.ntfs_write_mst_block, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/ntfs/aops.c", i32 920, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/ntfs/aops.c", i32 1059, i32 5}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ntfs/aops.c", i32 1154, i32 4}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/ntfs/aops.c", i32 1201, i32 4}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/ntfs/aops.c", i32 1271, i32 3}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/ntfs/aops.c", i32 1291, i32 3}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/ntfs/aops.c", i32 1309, i32 3}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/page-flags.h", i32 678, i32 1}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!49 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!51 = !{ptr @__func__.ntfs_write_block, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/ntfs/aops.c", i32 552, i32 2}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/ntfs/aops.c", i32 564, i32 4}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/ntfs/aops.c", i32 681, i32 4}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/ntfs/aops.c", i32 748, i32 4}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ntfs/aops.c", i32 784, i32 3}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__func__.ntfs_readpage, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ntfs/aops.c", i32 398, i32 3}
!65 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__func__.ntfs_read_block, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/ntfs/aops.c", i32 303, i32 4}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__func__.ntfs_end_buffer_async_read, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/ntfs/aops.c", i32 91, i32 3}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__func__.ntfs_bmap, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/ntfs/aops.c", i32 1557, i32 2}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/ntfs/aops.c", i32 1560, i32 3}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/ntfs/aops.c", i32 1606, i32 4}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ntfs/aops.c", i32 1611, i32 4}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ntfs/aops.c", i32 1621, i32 3}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/ntfs/aops.c", i32 1642, i32 2}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2150619379, i64 2150619870, i64 2150619416, i64 2150619472, i64 2150619506, i64 2150619530, i64 2150619571, i64 2150619592, i64 2150619620, i64 2150619654}
!105 = !{i64 2155158691, i64 2155159171, i64 2155158728, i64 2155158784, i64 2155158818, i64 2155158842, i64 2155158883, i64 2155158904, i64 2155158932, i64 2155158966}
!106 = !{i64 2155160586, i64 2155161066, i64 2155160623, i64 2155160679, i64 2155160713, i64 2155160737, i64 2155160778, i64 2155160799, i64 2155160827, i64 2155160861}
!107 = !{i64 2155162286, i64 2155162766, i64 2155162323, i64 2155162379, i64 2155162413, i64 2155162437, i64 2155162478, i64 2155162499, i64 2155162527, i64 2155162561}
!108 = !{i64 2155163854, i64 2155164334, i64 2155163891, i64 2155163947, i64 2155163981, i64 2155164005, i64 2155164046, i64 2155164067, i64 2155164095, i64 2155164129}
!109 = !{i64 2151070652, i64 2151071143, i64 2151070689, i64 2151070745, i64 2151070779, i64 2151070803, i64 2151070844, i64 2151070865, i64 2151070893, i64 2151070927}
!110 = !{i64 2155165778, i64 2155166258, i64 2155165815, i64 2155165871, i64 2155165905, i64 2155165929, i64 2155165970, i64 2155165991, i64 2155166019, i64 2155166053}
!111 = !{i64 2150611946, i64 2150612437, i64 2150611983, i64 2150612039, i64 2150612073, i64 2150612097, i64 2150612138, i64 2150612159, i64 2150612187, i64 2150612221}
!112 = !{i64 2151361838}
!113 = !{i64 2155167360, i64 2155167840, i64 2155167397, i64 2155167453, i64 2155167487, i64 2155167511, i64 2155167552, i64 2155167573, i64 2155167601, i64 2155167635}
!114 = !{i64 2151127800, i64 2151128291, i64 2151127837, i64 2151127893, i64 2151127927, i64 2151127951, i64 2151127992, i64 2151128013, i64 2151128041, i64 2151128075}
!115 = !{i64 2155169099, i64 2155169579, i64 2155169136, i64 2155169192, i64 2155169226, i64 2155169250, i64 2155169291, i64 2155169312, i64 2155169340, i64 2155169374}
!116 = !{i64 2155170832, i64 2155171312, i64 2155170869, i64 2155170925, i64 2155170959, i64 2155170983, i64 2155171024, i64 2155171045, i64 2155171073, i64 2155171107}
!117 = !{i64 2155172618, i64 2155173098, i64 2155172655, i64 2155172711, i64 2155172745, i64 2155172769, i64 2155172810, i64 2155172831, i64 2155172859, i64 2155172893}
!118 = !{i64 2153724953}
!119 = !{i64 2152218497}
!120 = !{i64 2152218704}
!121 = !{i64 2153727724}
!122 = !{i64 2150673536, i64 2150673709, i64 2150673724, i64 2150673776, i64 2150673835, i64 2150673859, i64 2150673900, i64 2150673921, i64 2150673949, i64 2150673981}
!123 = !{i64 2150674411, i64 2150674584, i64 2150674599, i64 2150674651, i64 2150674710, i64 2150674734, i64 2150674775, i64 2150674796, i64 2150674824, i64 2150674856}
!124 = !{i64 2155093636, i64 2155094115, i64 2155093673, i64 2155093729, i64 2155093763, i64 2155093787, i64 2155093828, i64 2155093849, i64 2155093877, i64 2155093911}
!125 = !{i64 2155095526, i64 2155096005, i64 2155095563, i64 2155095619, i64 2155095653, i64 2155095677, i64 2155095718, i64 2155095739, i64 2155095767, i64 2155095801}
!126 = !{i64 2155097108, i64 2155097587, i64 2155097145, i64 2155097201, i64 2155097235, i64 2155097259, i64 2155097300, i64 2155097321, i64 2155097349, i64 2155097383}
!127 = !{i64 2155098673, i64 2155099152, i64 2155098710, i64 2155098766, i64 2155098800, i64 2155098824, i64 2155098865, i64 2155098886, i64 2155098914, i64 2155098948}
!128 = !{i64 2155087493, i64 2155087972, i64 2155087530, i64 2155087586, i64 2155087620, i64 2155087644, i64 2155087685, i64 2155087706, i64 2155087734, i64 2155087768}
!129 = !{i64 2155089279, i64 2155089758, i64 2155089316, i64 2155089372, i64 2155089406, i64 2155089430, i64 2155089471, i64 2155089492, i64 2155089520, i64 2155089554}
!130 = !{i64 2155090849, i64 2155091328, i64 2155090886, i64 2155090942, i64 2155090976, i64 2155091000, i64 2155091041, i64 2155091062, i64 2155091090, i64 2155091124}
!131 = !{i64 2148713597, i64 2148713629, i64 2148713658, i64 2148713692, i64 2148713723, i64 2148713746}
!132 = !{i64 2148802702}
!133 = !{i64 2150664978, i64 2150665469, i64 2150665015, i64 2150665071, i64 2150665105, i64 2150665129, i64 2150665170, i64 2150665191, i64 2150665219, i64 2150665253}
!134 = !{i64 2151362909}
!135 = !{i64 2155176741, i64 2155177221, i64 2155176778, i64 2155176834, i64 2155176868, i64 2155176892, i64 2155176933, i64 2155176954, i64 2155176982, i64 2155177016}
!136 = !{i64 2155178325, i64 2155178805, i64 2155178362, i64 2155178418, i64 2155178452, i64 2155178476, i64 2155178517, i64 2155178538, i64 2155178566, i64 2155178600}
!137 = !{i64 2155181266, i64 2155181746, i64 2155181303, i64 2155181359, i64 2155181393, i64 2155181417, i64 2155181458, i64 2155181479, i64 2155181507, i64 2155181541}
!138 = !{i64 2155183101, i64 2155183581, i64 2155183138, i64 2155183194, i64 2155183228, i64 2155183252, i64 2155183293, i64 2155183314, i64 2155183342, i64 2155183376}
!139 = !{i64 2155184674, i64 2155185154, i64 2155184711, i64 2155184767, i64 2155184801, i64 2155184825, i64 2155184866, i64 2155184887, i64 2155184915, i64 2155184949}
!140 = !{i64 2153186210, i64 2153186694, i64 2153186247, i64 2153186303, i64 2153186337, i64 2153186361, i64 2153186402, i64 2153186423, i64 2153186451, i64 2153186485}
!141 = !{i64 2148704739, i64 2148704765, i64 2148704794, i64 2148704828, i64 2148704859, i64 2148704882}
!142 = !{i64 2148529337, i64 2148529342, i64 2148529355, i64 2148529399, i64 2148529433, i64 2148529454}
!143 = !{i64 1109419, i64 1109480}
!144 = !{i64 1112151}
!145 = !{i64 1112436}
!146 = !{i64 2152546032}
!147 = !{i64 2152545874}
!148 = !{i64 2152546202}
!149 = !{i64 2150132016}
!150 = !{i64 2155123286, i64 2155123765, i64 2155123323, i64 2155123379, i64 2155123413, i64 2155123437, i64 2155123478, i64 2155123499, i64 2155123527, i64 2155123561}
!151 = !{i64 2155124869, i64 2155125348, i64 2155124906, i64 2155124962, i64 2155124996, i64 2155125020, i64 2155125061, i64 2155125082, i64 2155125110, i64 2155125144}
!152 = !{i64 2155126744, i64 2155127223, i64 2155126781, i64 2155126837, i64 2155126871, i64 2155126895, i64 2155126936, i64 2155126957, i64 2155126985, i64 2155127019}
!153 = !{i64 2155128361, i64 2155128840, i64 2155128398, i64 2155128454, i64 2155128488, i64 2155128512, i64 2155128553, i64 2155128574, i64 2155128602, i64 2155128636}
!154 = !{i64 2155130052, i64 2155130531, i64 2155130089, i64 2155130145, i64 2155130179, i64 2155130203, i64 2155130244, i64 2155130265, i64 2155130293, i64 2155130327}
!155 = !{i64 2155131740, i64 2155132219, i64 2155131777, i64 2155131833, i64 2155131867, i64 2155131891, i64 2155131932, i64 2155131953, i64 2155131981, i64 2155132015}
!156 = !{i64 2155133310, i64 2155133789, i64 2155133347, i64 2155133403, i64 2155133437, i64 2155133461, i64 2155133502, i64 2155133523, i64 2155133551, i64 2155133585}
!157 = !{i64 2155134987, i64 2155135466, i64 2155135024, i64 2155135080, i64 2155135114, i64 2155135138, i64 2155135179, i64 2155135200, i64 2155135228, i64 2155135262}
!158 = !{i64 2155136552, i64 2155137031, i64 2155136589, i64 2155136645, i64 2155136679, i64 2155136703, i64 2155136744, i64 2155136765, i64 2155136793, i64 2155136827}
!159 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!160 = !{i64 2155138277, i64 2155138756, i64 2155138314, i64 2155138370, i64 2155138404, i64 2155138428, i64 2155138469, i64 2155138490, i64 2155138518, i64 2155138552}
!161 = !{i64 2155140439, i64 2155140919, i64 2155140476, i64 2155140532, i64 2155140566, i64 2155140590, i64 2155140631, i64 2155140652, i64 2155140680, i64 2155140714}
!162 = !{i64 2155142017, i64 2155142497, i64 2155142054, i64 2155142110, i64 2155142144, i64 2155142168, i64 2155142209, i64 2155142230, i64 2155142258, i64 2155142292}
!163 = !{i64 2155143629, i64 2155144109, i64 2155143666, i64 2155143722, i64 2155143756, i64 2155143780, i64 2155143821, i64 2155143842, i64 2155143870, i64 2155143904}
!164 = !{i64 2151370822, i64 2151370995, i64 2151371010, i64 2151371062, i64 2151371121, i64 2151371145, i64 2151371186, i64 2151371207, i64 2151371235, i64 2151371267}
!165 = !{i64 2151371697, i64 2151371870, i64 2151371885, i64 2151371937, i64 2151371996, i64 2151372020, i64 2151372061, i64 2151372082, i64 2151372110, i64 2151372142}
!166 = !{i64 2155145484, i64 2155145964, i64 2155145521, i64 2155145577, i64 2155145611, i64 2155145635, i64 2155145676, i64 2155145697, i64 2155145725, i64 2155145759}
!167 = !{i64 2155147070, i64 2155147550, i64 2155147107, i64 2155147163, i64 2155147197, i64 2155147221, i64 2155147262, i64 2155147283, i64 2155147311, i64 2155147345}
!168 = !{i64 2155148652, i64 2155149132, i64 2155148689, i64 2155148745, i64 2155148779, i64 2155148803, i64 2155148844, i64 2155148865, i64 2155148893, i64 2155148927}
!169 = !{i64 2155150819, i64 2155151299, i64 2155150856, i64 2155150912, i64 2155150946, i64 2155150970, i64 2155151011, i64 2155151032, i64 2155151060, i64 2155151094}
!170 = !{i64 2148707204, i64 2148707230, i64 2148707259, i64 2148707293, i64 2148707324, i64 2148707347}
!171 = !{i64 2155156964, i64 2155157444, i64 2155157001, i64 2155157057, i64 2155157091, i64 2155157115, i64 2155157156, i64 2155157177, i64 2155157205, i64 2155157239}
!172 = !{i64 2155103386, i64 2155103865, i64 2155103423, i64 2155103479, i64 2155103513, i64 2155103537, i64 2155103578, i64 2155103599, i64 2155103627, i64 2155103661}
!173 = !{i64 2155104967, i64 2155105446, i64 2155105004, i64 2155105060, i64 2155105094, i64 2155105118, i64 2155105159, i64 2155105180, i64 2155105208, i64 2155105242}
!174 = !{i64 2155106569, i64 2155107048, i64 2155106606, i64 2155106662, i64 2155106696, i64 2155106720, i64 2155106761, i64 2155106782, i64 2155106810, i64 2155106844}
!175 = !{i64 2155108463, i64 2155108942, i64 2155108500, i64 2155108556, i64 2155108590, i64 2155108614, i64 2155108655, i64 2155108676, i64 2155108704, i64 2155108738}
!176 = !{i64 2155110033, i64 2155110512, i64 2155110070, i64 2155110126, i64 2155110160, i64 2155110184, i64 2155110225, i64 2155110246, i64 2155110274, i64 2155110308}
!177 = !{!"branch_weights", i32 1, i32 1}
!178 = !{i64 2155114882, i64 2155115361, i64 2155114919, i64 2155114975, i64 2155115009, i64 2155115033, i64 2155115074, i64 2155115095, i64 2155115123, i64 2155115157}
!179 = !{!"branch_weights", i32 2000, i32 8004000, i32 2, i32 2000}
!180 = !{i64 2155120759, i64 2155121238, i64 2155120796, i64 2155120852, i64 2155120886, i64 2155120910, i64 2155120951, i64 2155120972, i64 2155121000, i64 2155121034}
!181 = !{i64 2155080424, i64 2155080902, i64 2155080461, i64 2155080517, i64 2155080551, i64 2155080575, i64 2155080616, i64 2155080637, i64 2155080665, i64 2155080699}
!182 = !{i64 2155082333, i64 2155082812, i64 2155082370, i64 2155082426, i64 2155082460, i64 2155082484, i64 2155082525, i64 2155082546, i64 2155082574, i64 2155082608}
!183 = !{i64 2155084005, i64 2155084484, i64 2155084042, i64 2155084098, i64 2155084132, i64 2155084156, i64 2155084197, i64 2155084218, i64 2155084246, i64 2155084280}
