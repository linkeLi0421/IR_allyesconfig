; ModuleID = '/llk/IR_all_yes/fs/ocfs2/aops.c_pt.bc'
source_filename = "../fs/ocfs2/aops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
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
%struct.ocfs2_dinode = type { [8 x i8], i32, i16, i16, i16, i16, i32, i32, i32, i64, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i64, %struct.ocfs2_block_check, i64, i64, i64, i16, [3 x i16], [2 x i64], %union.anon.86, %union.anon.90 }
%struct.ocfs2_block_check = type { i32, i16, i16 }
%union.anon.86 = type { i64 }
%union.anon.90 = type { %struct.ocfs2_super_block }
%struct.ocfs2_super_block = type { i16, i16, i16, i16, i16, i16, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i16, i16, i32, i64, [64 x i8], [16 x i8], %struct.ocfs2_cluster_info, i16, i16, [3 x i32], [15 x i64] }
%struct.ocfs2_cluster_info = type { [4 x i8], %union.anon.91, [16 x i8] }
%union.anon.91 = type { i32 }
%struct.ocfs2_super = type { ptr, ptr, ptr, ptr, [7 x ptr], ptr, ptr, ptr, %struct.spinlock, i64, i64, i64, i32, ptr, i32, ptr, i64, i32, i32, i32, i32, %struct.spinlock, i32, i32, i16, i16, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.mutex, ptr, ptr, ptr, i32, %struct.wait_queue_head, ptr, i32, %struct.delayed_work, i32, i32, i32, i32, ptr, i64, %struct.ocfs2_reservation_map, i32, i32, ptr, ptr, %struct.ocfs2_blockcheck_stats, %struct.ocfs2_alloc_stats, [20 x i8], i8, [5 x i8], [17 x i8], ptr, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.ocfs2_lock_res, %struct.rw_semaphore, %struct.ocfs2_lock_res, %struct.mutex, ptr, ptr, %struct.wait_queue_head, %struct.spinlock, ptr, %struct.wait_queue_head, i32, i32, %struct.list_head, i32, %struct.llist_head, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.delayed_work, %struct.atomic_t, i32, %struct.ocfs2_node_map, ptr, %struct.wait_queue_head, %struct.ocfs2_orphan_scan, %struct.spinlock, i32, [4 x i32], i64, %struct.rb_root, ptr, %struct.mutex, ptr, ptr, %struct.ocfs2_filecheck_sysfs_entry }
%struct.ocfs2_reservation_map = type { %struct.rb_root, ptr, ptr, i32, %struct.list_head }
%struct.ocfs2_blockcheck_stats = type { %struct.spinlock, i64, i64, i64, ptr }
%struct.ocfs2_alloc_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ocfs2_lock_res = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, [32 x i8], i32, i32, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.ocfs2_dlm_lksb, %struct.wait_queue_head, %struct.list_head, %struct.ocfs2_lock_stats, i32, i64, %struct.ocfs2_lock_stats, %struct.lockdep_map }
%struct.ocfs2_dlm_lksb = type { %union.anon.95, ptr }
%union.anon.95 = type { %struct.fsdlm_lksb_plus_lvb }
%struct.fsdlm_lksb_plus_lvb = type { %struct.dlm_lksb, [64 x i8] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.ocfs2_lock_stats = type { i64, i32, i32, i32, i64 }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ocfs2_node_map = type { i16, [8 x i32] }
%struct.ocfs2_orphan_scan = type { %struct.mutex, ptr, %struct.ocfs2_lock_res, %struct.delayed_work, i64, i32, i32, %struct.atomic_t }
%struct.ocfs2_filecheck_sysfs_entry = type { %struct.kobject, %struct.completion, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ocfs2_journal = type { i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.spinlock, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.page = type { i32, %union.anon.6, %union.anon.72, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.72 = type { %struct.atomic_t }
%struct.ocfs2_extent_tree = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.ocfs2_write_ctxt = type { i32, i32, i32, i32, [1 x %struct.ocfs2_write_cluster_desc], i32, i32, [256 x ptr], ptr, i8, i32, i32, ptr, ptr, %struct.ocfs2_cached_dealloc_ctxt, %struct.list_head, i32 }
%struct.ocfs2_write_cluster_desc = type { i32, i32, i32, i32, i32 }
%struct.ocfs2_cached_dealloc_ctxt = type { ptr, ptr }
%struct.ocfs2_unwritten_extent = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.ocfs2_alloc_context = type { ptr, ptr, i32, i32, i32, i32, i16, i32, ptr, i64, i64, i32, ptr, ptr }
%struct.jbd2_journal_handle = type { %union.anon.97, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.97 = type { ptr }
%struct.transaction_s = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32, i32, i32, %struct.transaction_chp_stats_s, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, i32, i64, i8, i32, %struct.list_head }
%struct.transaction_chp_stats_s = type { i32, i32, i32, i32 }
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
%struct.ocfs2_dio_write_ctxt = type { %struct.list_head, i32, i32, i32 }

@__func__.ocfs2_get_block = private unnamed_addr constant [16 x i8] c"ocfs2_get_block\00", align 1
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"get_block on system inode 0x%p (%lu)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Error %d from get_blocks(0x%p, %llu, 1, %llu, NULL)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"iblock = %llu p_blkno = %llu blkno=(%llu)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Size %llu, clusters %u\0A\00", [40 x i8] zeroinitializer }, align 32
@__PRETTY_FUNCTION__.ocfs2_read_inline_data = private unnamed_addr constant [80 x i8] c"int ocfs2_read_inline_data(struct inode *, struct page *, struct buffer_head *)\00", align 1
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Inode %llu lost inline data flag\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Inode %llu has with inline data has bad size: %Lu\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.ocfs2_write_begin_nolock = private unnamed_addr constant [25 x i8] c"ocfs2_write_begin_nolock\00", align 1
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.ocfs2_write_end_nolock = private unnamed_addr constant [23 x i8] c"ocfs2_write_end_nolock\00", align 1
@ocfs2_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @ocfs2_writepage, ptr @ocfs2_readpage, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr @ocfs2_readahead, ptr @ocfs2_write_begin, ptr @ocfs2_write_end, ptr @ocfs2_bmap, ptr @block_invalidatepage, ptr @ocfs2_releasepage, ptr null, ptr @ocfs2_direct_IO, ptr @buffer_migrate_page, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_get_block = external dso_local global %struct.tracepoint, align 4
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_get_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_symlink_get_block = private unnamed_addr constant [24 x i8] c"ocfs2_symlink_get_block\00", align 1
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"block offset > PATH_MAX: %llu\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"block offset is outside the allocated size: %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't getblock for symlink!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"couldn't kmap!\0A\00", [16 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_symlink_get_block = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_symlink_get_block.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trans_inc_lock = external dso_local global %struct.spinlock, align 4
@__tracepoint_ocfs2_get_block_end = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_get_block_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.ocfs2_try_to_write_inline_data = private unnamed_addr constant [31 x i8] c"ocfs2_try_to_write_inline_data\00", align 1
@__tracepoint_ocfs2_try_to_write_inline_data = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_try_to_write_inline_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_write_begin_inline = private unnamed_addr constant [25 x i8] c"ocfs2_write_begin_inline\00", align 1
@__func__.ocfs2_expand_nonsparse_inode = private unnamed_addr constant [29 x i8] c"ocfs2_expand_nonsparse_inode\00", align 1
@__func__.ocfs2_populate_write_desc = private unnamed_addr constant [26 x i8] c"ocfs2_populate_write_desc\00", align 1
@__tracepoint_ocfs2_write_begin_nolock = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_write_begin_nolock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ocfs2/aops.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.ocfs2_grab_pages_for_write = private unnamed_addr constant [27 x i8] c"ocfs2_grab_pages_for_write\00", align 1
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__func__.ocfs2_write_cluster_by_desc = private unnamed_addr constant [28 x i8] c"ocfs2_write_cluster_by_desc\00", align 1
@__func__.ocfs2_write_cluster = private unnamed_addr constant [20 x i8] c"ocfs2_write_cluster\00", align 1
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bug expression: ret == -EAGAIN\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Inode %llu: EAGAIN return during allocation.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Get physical blkno failed for inode %llu, at logical cluster %u\00", [32 x i8] zeroinitializer }, align 32
@__func__.ocfs2_prepare_page_for_write = private unnamed_addr constant [29 x i8] c"ocfs2_prepare_page_for_write\00", align 1
@__tracepoint_ocfs2_write_end_inline = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_write_end_inline.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.25 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_writepage = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_writepage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_readpage = private unnamed_addr constant [15 x i8] c"ocfs2_readpage\00", align 1
@__tracepoint_ocfs2_readpage = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_readpage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_readpage_inline = private unnamed_addr constant [22 x i8] c"ocfs2_readpage_inline\00", align 1
@__func__.ocfs2_write_begin = private unnamed_addr constant [18 x i8] c"ocfs2_write_begin\00", align 1
@__func__.ocfs2_bmap = private unnamed_addr constant [11 x i8] c"ocfs2_bmap\00", align 1
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"get_blocks() failed, block = %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_bmap = external dso_local global %struct.tracepoint, align 4
@trace_ocfs2_bmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__func__.ocfs2_dio_wr_get_block = private unnamed_addr constant [23 x i8] c"ocfs2_dio_wr_get_block\00", align 1
@ocfs2_dio_end_io._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ocfs2_dio_end_io = private unnamed_addr constant [17 x i8] c"ocfs2_dio_end_io\00", align 1
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Direct IO failed, bytes = %lld\00", [33 x i8] zeroinitializer }, align 32
@__func__.ocfs2_dio_end_io_write = private unnamed_addr constant [23 x i8] c"ocfs2_dio_end_io_write\00", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.36 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.39 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.43 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.47 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268]
@__sancov_gen_cov_switch_values.53 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.54 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.56 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.57 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.59 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292, i64 4294967294]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.64 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.67 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.68 = internal global [7 x i64] [i64 5, i64 32, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.69 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 147, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 159, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 194, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 199, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 227, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 236, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1667, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"ocfs2_aops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 2455, i32 39 }
@___asan_gen_.100 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 1154, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 108, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 58, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 73, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 86, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 98, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 260, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 452, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 354, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 717, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1078, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 788, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 1160, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1151, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 1176, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 414, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 271, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 488, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private constant [19 x i8] c"../fs/ocfs2/aops.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 2409, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ocfs2_aops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @ocfs2_dio_end_io._rs, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_dio_end_io._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m39.i = alloca i64, align 8
  %_m55.i = alloca i64, align 8
  %_m73.i = alloca i64, align 8
  %_m91.i = alloca i64, align 8
  %ext_flags = alloca i32, align 4
  %p_blkno = alloca i64, align 8
  %count = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m17 = alloca i64, align 8
  %_m55 = alloca i64, align 8
  %_m65 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_flags) #11
  %0 = ptrtoint ptr %ext_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ext_flags, align 4, !annotation !133
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %1 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %b_size, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %3 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %4 to i32
  %shr = lshr i32 %2, %conv
  %conv1 = zext i32 %shr to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_blkno) #11
  %5 = ptrtoint ptr %p_blkno to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %p_blkno, align 8, !annotation !133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %count) #11
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %count, align 8, !annotation !133
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info, align 16
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i, align 8
  tail call fastcc void @trace_ocfs2_get_block(i64 noundef %12, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create)
  %ip_flags = getelementptr i8, ptr %inode, i32 -76
  %13 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ip_flags, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %15 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 2305843009213693952, ptr %_m, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 11
  %16 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_ino, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_get_block, i32 noundef 148, ptr noundef nonnull @.str, ptr noundef %inode, i32 noundef %17) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  br label %if.end6

if.end6:                                          ; preds = %do.body, %entry.if.end6_crit_edge
  %18 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %inode, align 8
  %20 = and i16 %19, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %20)
  %cmp = icmp eq i16 %20, -24576
  br i1 %cmp, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #11
  %21 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bh.i, align 4
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i, align 16
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr.i, align 8
  call fastcc void @trace_ocfs2_symlink_get_block(i64 noundef %27, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #11
  %28 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %inode, align 8
  %30 = and i16 %29, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %30)
  %cmp.i.i = icmp eq i16 %30, -24576
  br i1 %cmp.i.i, label %ocfs2_inode_is_fast_symlink.exit.i, label %if.then10.do.end9.i_crit_edge

if.then10.do.end9.i_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

ocfs2_inode_is_fast_symlink.exit.i:               ; preds = %if.then10
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %31 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_blocks.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp2.i.not.i = icmp eq i64 %32, 0
  br i1 %cmp2.i.not.i, label %do.body4.i, label %ocfs2_inode_is_fast_symlink.exit.i.do.end9.i_crit_edge, !prof !134

ocfs2_inode_is_fast_symlink.exit.i.do.end9.i_crit_edge: ; preds = %ocfs2_inode_is_fast_symlink.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i

do.body4.i:                                       ; preds = %ocfs2_inode_is_fast_symlink.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 55, 0\0A.popsection", ""() #11, !srcloc !135
  unreachable

do.end9.i:                                        ; preds = %ocfs2_inode_is_fast_symlink.exit.i.do.end9.i_crit_edge, %if.then10.do.end9.i_crit_edge
  %33 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %s_blocksize_bits.i, align 4
  %sh_prom.i = zext i8 %36 to i64
  %shl.i = shl i64 %iblock, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4097, i64 %shl.i)
  %cmp.i = icmp ugt i64 %shl.i, 4097
  br i1 %cmp.i, label %do.body13.i, label %if.end19.i

do.body13.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #11
  %37 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_symlink_get_block, i32 noundef 59, ptr noundef nonnull @.str.10, i64 noundef %iblock) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #11
  br label %bail.i

if.end19.i:                                       ; preds = %do.end9.i
  %call20.i = call i32 @ocfs2_read_inode_block(ptr noundef %inode, ptr noundef nonnull %bh.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.end48.i

if.then23.i:                                      ; preds = %if.end19.i
  %38 = zext i32 %call20.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call20.i, label %do.body38.i [
    i32 -512, label %if.then23.i.bail.i_crit_edge
    i32 -4, label %if.then23.i.bail.i_crit_edge150
    i32 -28, label %if.then23.i.bail.i_crit_edge151
    i32 -122, label %if.then23.i.bail.i_crit_edge152
  ]

if.then23.i.bail.i_crit_edge152:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bail.i

if.then23.i.bail.i_crit_edge151:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bail.i

if.then23.i.bail.i_crit_edge150:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bail.i

if.then23.i.bail.i_crit_edge:                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bail.i

do.body38.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m39.i) #11
  %39 = ptrtoint ptr %_m39.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 1152921504606846976, ptr %_m39.i, align 8
  %conv43.i = sext i32 %call20.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m39.i, ptr noundef nonnull @__func__.ocfs2_symlink_get_block, i32 noundef 65, ptr noundef nonnull @.str.6, i64 noundef %conv43.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m39.i) #11
  br label %bail.i

if.end48.i:                                       ; preds = %if.end19.i
  %40 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_data.i, align 4
  %44 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb, align 4
  %i_clusters.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %43, i32 0, i32 6
  %46 = ptrtoint ptr %i_clusters.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_clusters.i, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #11
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %49 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %50, i32 0, i32 36
  %51 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 2
  %53 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i.i = zext i8 %54 to i32
  %sub.i.i = sub i32 %52, %conv.i.i
  %conv1.i.i = zext i32 %48 to i64
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl i64 %conv1.i.i, %sh_prom.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i, i64 %iblock)
  %cmp51.not.i = icmp ugt i64 %shl.i.i, %iblock
  br i1 %cmp51.not.i, label %if.end62.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55.i) #11
  %55 = ptrtoint ptr %_m55.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1152921504606846976, ptr %_m55.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55.i, ptr noundef nonnull @__func__.ocfs2_symlink_get_block, i32 noundef 74, ptr noundef nonnull @.str.11, i64 noundef %iblock) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55.i) #11
  br label %bail.i

if.end62.i:                                       ; preds = %if.end48.i
  %56 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %bh_result, align 4
  %and1.i.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool64.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool64.not.i, label %land.lhs.true65.i, label %if.end62.i.if.end109.i_crit_edge

if.end62.i.if.end109.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109.i

land.lhs.true65.i:                                ; preds = %if.end62.i
  %58 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ip_flags, align 4
  %and.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i160.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i160.i, label %if.end.i.i, label %land.lhs.true65.i.if.end109.i_crit_edge

land.lhs.true65.i.if.end109.i_crit_edge:          ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109.i

if.end.i.i:                                       ; preds = %land.lhs.true65.i
  %ip_metadata_cache.i.i.i = getelementptr i8, ptr %inode, i32 -56
  %call.i.i.i = call ptr @ocfs2_metadata_cache_get_super(ptr noundef %ip_metadata_cache.i.i.i) #11
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %call.i.i.i, i32 0, i32 33
  %60 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %journal1.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %61, i32 0, i32 45
  %62 = ptrtoint ptr %journal1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %journal1.i.i.i, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @trans_inc_lock) #11
  %ci_created_trans.i.i.i = getelementptr i8, ptr %inode, i32 -52
  %64 = ptrtoint ptr %ci_created_trans.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ci_created_trans.i.i.i, align 4
  %j_trans_id.i.i.i = getelementptr inbounds %struct.ocfs2_journal, ptr %63, i32 0, i32 7
  %66 = ptrtoint ptr %j_trans_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %j_trans_id.i.i.i, align 4
  %sub.i.i.i = sub i32 %65, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.then68.i, label %ocfs2_inode_is_new.exit.thread.i

ocfs2_inode_is_new.exit.thread.i:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %ci_created_trans.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %ci_created_trans.i.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #11
  br label %if.end109.i

if.then68.i:                                      ; preds = %if.end.i.i
  call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #11
  %e_blkno.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %43, i32 0, i32 35, i32 0, i32 8
  %69 = ptrtoint ptr %e_blkno.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %e_blkno.i, align 8
  %71 = call i64 @llvm.bswap.i64(i64 %70) #11
  %add.i = add i64 %71, %iblock
  %sb.i = getelementptr inbounds %struct.ocfs2_super, ptr %25, i32 0, i32 1
  %72 = ptrtoint ptr %sb.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sb.i, align 4
  %s_bdev.i.i = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 26
  %74 = ptrtoint ptr %s_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %s_bdev.i.i, align 4
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 3
  %76 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %s_blocksize.i.i, align 16
  %call.i.i = call ptr @__getblk_gfp(ptr noundef %75, i64 noundef %add.i, i32 noundef %77, i32 noundef 8) #11
  %tobool70.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool70.not.i, label %if.then71.i, label %if.end80.i

if.then71.i:                                      ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m73.i) #11
  %78 = ptrtoint ptr %_m73.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 1152921504606846976, ptr %_m73.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m73.i, ptr noundef nonnull @__func__.ocfs2_symlink_get_block, i32 noundef 86, ptr noundef nonnull @.str.12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m73.i) #11
  br label %bail.i

if.end80.i:                                       ; preds = %if.then68.i
  %79 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %call.i.i, align 4
  %81 = and i32 %80, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool82.not.i = icmp eq i32 %81, 0
  br i1 %tobool82.not.i, label %if.end80.i.cleanup.i_crit_edge, label %land.lhs.true83.i

if.end80.i.cleanup.i_crit_edge:                   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

land.lhs.true83.i:                                ; preds = %if.end80.i
  %call84.i = call fastcc i32 @ocfs2_inode_is_new(ptr noundef %inode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %land.lhs.true83.i.cleanup.i_crit_edge, label %if.then86.i

land.lhs.true83.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then86.i:                                      ; preds = %land.lhs.true83.i
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 2
  %82 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %b_page.i, align 8
  %call87.i = call fastcc ptr @kmap_atomic(ptr noundef %83) #11
  %tobool88.not.i = icmp eq ptr %call87.i, null
  br i1 %tobool88.not.i, label %do.body90.i, label %if.end98.i

do.body90.i:                                      ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m91.i) #11
  %84 = ptrtoint ptr %_m91.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 1152921504606846976, ptr %_m91.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m91.i, ptr noundef nonnull @__func__.ocfs2_symlink_get_block, i32 noundef 98, ptr noundef nonnull @.str.13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m91.i) #11
  br label %bail.i

if.end98.i:                                       ; preds = %if.then86.i
  %85 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %b_size, align 8
  %87 = trunc i64 %iblock to i32
  %idx.ext.i = mul i32 %86, %87
  %add.ptr.i130 = getelementptr i8, ptr %call87.i, i32 %idx.ext.i
  %b_data100.i = getelementptr inbounds %struct.buffer_head, ptr %call.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %b_data100.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %b_data100.i, align 4
  %90 = call ptr @memcpy(ptr %add.ptr.i130, ptr %89, i32 %86)
  call fastcc void @__kunmap_atomic(ptr noundef nonnull %call87.i) #11
  %91 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %bh_result, align 4
  %and1.i.i159.i = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i159.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i159.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end98.i.cleanup.i_crit_edge

if.end98.i.cleanup.i_crit_edge:                   ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then.i.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef %bh_result) #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i.i, %if.end98.i.cleanup.i_crit_edge, %land.lhs.true83.i.cleanup.i_crit_edge, %if.end80.i.cleanup.i_crit_edge
  call void @__brelse(ptr noundef nonnull %call.i.i) #11
  br label %if.end109.i

if.end109.i:                                      ; preds = %cleanup.i, %ocfs2_inode_is_new.exit.thread.i, %land.lhs.true65.i.if.end109.i_crit_edge, %if.end62.i.if.end109.i_crit_edge
  %93 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_sb, align 4
  %e_blkno114.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %43, i32 0, i32 35, i32 0, i32 8
  %95 = ptrtoint ptr %e_blkno114.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %e_blkno114.i, align 8
  %97 = call i64 @llvm.bswap.i64(i64 %96) #11
  %add115.i = add i64 %97, %iblock
  %98 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %bh_result, align 4
  %100 = and i32 %99, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i164.i, label %if.end109.i.map_bh.exit.i_crit_edge

if.end109.i.map_bh.exit.i_crit_edge:              ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_bh.exit.i

if.then.i.i164.i:                                 ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #11
  br label %map_bh.exit.i

map_bh.exit.i:                                    ; preds = %if.then.i.i164.i, %if.end109.i.map_bh.exit.i_crit_edge
  %s_bdev.i165.i = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 26
  %101 = ptrtoint ptr %s_bdev.i165.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_bdev.i165.i, align 4
  %b_bdev.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %103 = ptrtoint ptr %b_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %b_bdev.i.i, align 8
  %b_blocknr.i.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %104 = ptrtoint ptr %b_blocknr.i.i to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %add115.i, ptr %b_blocknr.i.i, align 8
  %s_blocksize.i166.i = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 3
  %105 = ptrtoint ptr %s_blocksize.i166.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %s_blocksize.i166.i, align 16
  %107 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %b_size, align 8
  br label %bail.i

bail.i:                                           ; preds = %map_bh.exit.i, %do.body90.i, %if.then71.i, %if.then53.i, %do.body38.i, %if.then23.i.bail.i_crit_edge, %if.then23.i.bail.i_crit_edge150, %if.then23.i.bail.i_crit_edge151, %if.then23.i.bail.i_crit_edge152, %do.body13.i
  %err.1.i = phi i32 [ -5, %do.body13.i ], [ -12, %if.then53.i ], [ 0, %map_bh.exit.i ], [ -5, %if.then23.i.bail.i_crit_edge ], [ -5, %if.then23.i.bail.i_crit_edge150 ], [ -5, %if.then23.i.bail.i_crit_edge151 ], [ -5, %if.then23.i.bail.i_crit_edge152 ], [ -5, %do.body38.i ], [ -12, %if.then71.i ], [ -5, %do.body90.i ]
  %108 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bh.i, align 4
  %tobool.not.i167.i = icmp eq ptr %109, null
  br i1 %tobool.not.i167.i, label %bail.i.ocfs2_symlink_get_block.exit_crit_edge, label %if.then.i168.i

bail.i.ocfs2_symlink_get_block.exit_crit_edge:    ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_symlink_get_block.exit

if.then.i168.i:                                   ; preds = %bail.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %109) #11
  br label %ocfs2_symlink_get_block.exit

ocfs2_symlink_get_block.exit:                     ; preds = %if.then.i168.i, %bail.i.ocfs2_symlink_get_block.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #11
  br label %bail

if.end12:                                         ; preds = %if.end6
  %call13 = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %inode, i64 noundef %iblock, ptr noundef nonnull %p_blkno, ptr noundef nonnull %count, ptr noundef nonnull %ext_flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end24, label %do.body16

do.body16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m17) #11
  %110 = ptrtoint ptr %_m17 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 1152921504606846976, ptr %_m17, align 8
  %111 = ptrtoint ptr %p_blkno to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %p_blkno, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m17, ptr noundef nonnull @__func__.ocfs2_get_block, i32 noundef 161, ptr noundef nonnull @.str.1, i32 noundef %call13, ptr noundef %inode, i64 noundef %iblock, i64 noundef %112) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m17) #11
  br label %bail

if.end24:                                         ; preds = %if.end12
  %113 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %114, i64 %conv1)
  %cmp25 = icmp ugt i64 %114, %conv1
  br i1 %cmp25, label %if.then27, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %conv1, ptr %count, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool29.not = icmp eq i32 %create, 0
  br i1 %tobool29.not, label %if.end28.if.end36_crit_edge, label %land.lhs.true

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end28
  %116 = ptrtoint ptr %p_blkno to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %p_blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %117)
  %cmp30 = icmp eq i64 %117, 0
  br i1 %cmp30, label %land.lhs.true32, label %land.lhs.true.land.lhs.true38_crit_edge

land.lhs.true.land.lhs.true38_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true38

land.lhs.true32:                                  ; preds = %land.lhs.true
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %10, i32 0, i32 19
  %118 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %s_feature_incompat.i, align 8
  %120 = and i32 %119, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool34.not = icmp eq i32 %120, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.end36_crit_edge, label %if.then35

land.lhs.true32.if.end36_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  call void @_clear_bit(i32 noundef 1, ptr noundef %bh_result) #11
  call void @_clear_bit(i32 noundef 0, ptr noundef %bh_result) #11
  br label %bail.thread

if.end36:                                         ; preds = %land.lhs.true32.if.end36_crit_edge, %if.end28.if.end36_crit_edge
  %121 = ptrtoint ptr %p_blkno to i32
  call void @__asan_load8_noabort(i32 %121)
  %.pr = load i64, ptr %p_blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %tobool37.not = icmp eq i64 %.pr, 0
  br i1 %tobool37.not, label %if.end36.if.end43_crit_edge, label %if.end36.land.lhs.true38_crit_edge

if.end36.land.lhs.true38_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true38

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.lhs.true38:                                  ; preds = %if.end36.land.lhs.true38_crit_edge, %land.lhs.true.land.lhs.true38_crit_edge
  %122 = phi i64 [ %.pr, %if.end36.land.lhs.true38_crit_edge ], [ %117, %land.lhs.true.land.lhs.true38_crit_edge ]
  %123 = ptrtoint ptr %ext_flags to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ext_flags, align 4
  %and39 = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true38.if.end43_crit_edge

land.lhs.true38.if.end43_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true38
  %125 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i_sb, align 4
  %127 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %bh_result, align 4
  %129 = and i32 %128, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i.i131 = icmp eq i32 %129, 0
  br i1 %tobool.not.i.i131, label %if.then.i.i132, label %if.then41.map_bh.exit_crit_edge

if.then41.map_bh.exit_crit_edge:                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_bh.exit

if.then.i.i132:                                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #11
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i132, %if.then41.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 26
  %130 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %132 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %133 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %122, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %126, i32 0, i32 3
  %134 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %s_blocksize.i, align 16
  %136 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %b_size, align 8
  br label %if.end43

if.end43:                                         ; preds = %map_bh.exit, %land.lhs.true38.if.end43_crit_edge, %if.end36.if.end43_crit_edge
  %137 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %count, align 8
  %139 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %140 to i64
  %shl = shl i64 %138, %sh_prom
  %conv46 = trunc i64 %shl to i32
  %141 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %conv46, ptr %b_size, align 8
  %s_feature_incompat.i134 = getelementptr inbounds %struct.ocfs2_super, ptr %10, i32 0, i32 19
  %142 = ptrtoint ptr %s_feature_incompat.i134 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %s_feature_incompat.i134, align 8
  %144 = and i32 %143, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool49.not = icmp eq i32 %144, 0
  br i1 %tobool49.not, label %if.then50, label %if.end43.if.end75_crit_edge

if.end43.if.end75_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then50:                                        ; preds = %if.end43
  %145 = ptrtoint ptr %p_blkno to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %p_blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %146)
  %cmp51 = icmp eq i64 %146, 0
  br i1 %cmp51, label %bail.thread147, label %if.then50.if.end75_crit_edge

if.then50.if.end75_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

bail.thread147:                                   ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m55) #11
  %147 = ptrtoint ptr %_m55 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 1152921504606846976, ptr %_m55, align 8
  %148 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %add.ptr.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m55, ptr noundef nonnull @__func__.ocfs2_get_block, i32 noundef 198, ptr noundef nonnull @.str.2, i64 noundef %iblock, i64 noundef 0, i64 noundef %149) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m55) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m65) #11
  %150 = ptrtoint ptr %_m65 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 1152921504606846976, ptr %_m65, align 8
  %call69 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %ip_clusters = getelementptr i8, ptr %inode, i32 -176
  %151 = ptrtoint ptr %ip_clusters to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %ip_clusters, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m65, ptr noundef nonnull @__func__.ocfs2_get_block, i32 noundef 199, ptr noundef nonnull @.str.3, i64 noundef %call69, i32 noundef %152) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m65) #11
  call void @dump_stack() #14
  br label %164

if.end75:                                         ; preds = %if.then50.if.end75_crit_edge, %if.end43.if.end75_crit_edge
  %153 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i_sb, align 4
  %call77 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %s_blocksize.i139 = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %s_blocksize.i139 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %s_blocksize.i139, align 16
  %sub.i = add i32 %156, -1
  %conv.i = zext i32 %sub.i to i64
  %add.i140 = add i64 %call77, %conv.i
  %s_blocksize_bits.i141 = getelementptr inbounds %struct.super_block, ptr %154, i32 0, i32 2
  %157 = ptrtoint ptr %s_blocksize_bits.i141 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %s_blocksize_bits.i141, align 4
  %sh_prom.i142 = zext i8 %158 to i64
  %shr.i = lshr i64 %add.i140, %sh_prom.i142
  %159 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %add.ptr.i, align 8
  call fastcc void @trace_ocfs2_get_block_end(i64 noundef %160, i64 noundef %shr.i)
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %iblock)
  %cmp83.not = icmp ugt i64 %shr.i, %iblock
  %or.cond = or i1 %tobool29.not, %cmp83.not
  br i1 %or.cond, label %if.end75.bail.thread_crit_edge, label %if.then85

if.end75.bail.thread_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %bail.thread

if.then85:                                        ; preds = %if.end75
  %161 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %bh_result, align 4
  %163 = and i32 %162, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i = icmp eq i32 %163, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then85.bail.thread_crit_edge

if.then85.bail.thread_crit_edge:                  ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %bail.thread

if.then.i:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #11
  br label %bail.thread

bail:                                             ; preds = %do.body16, %ocfs2_symlink_get_block.exit
  %err.0 = phi i32 [ %err.1.i, %ocfs2_symlink_get_block.exit ], [ %call13, %do.body16 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp87 = icmp slt i32 %err.0, 0
  br i1 %cmp87, label %bail._crit_edge, label %bail.bail.thread_crit_edge

bail.bail.thread_crit_edge:                       ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #13
  br label %bail.thread

bail._crit_edge:                                  ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #13
  br label %164

164:                                              ; preds = %bail._crit_edge, %bail.thread147
  br label %bail.thread

bail.thread:                                      ; preds = %164, %bail.bail.thread_crit_edge, %if.then.i, %if.then85.bail.thread_crit_edge, %if.end75.bail.thread_crit_edge, %if.then35
  %165 = phi i32 [ -5, %164 ], [ %err.0, %bail.bail.thread_crit_edge ], [ 0, %if.then35 ], [ 0, %if.end75.bail.thread_crit_edge ], [ 0, %if.then85.bail.thread_crit_edge ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %count) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blkno) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_flags) #11
  ret i32 %165
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_get_block(i64 noundef %ino, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_block, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_get_block, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !136

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !138
  %call42 = tail call i32 @__traceiter_ocfs2_get_block(ptr noundef null, i64 noundef %ino, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !139
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_get_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ocfs2_get_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1154, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_extent_map_get_blocks(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !142
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %1 = tail call ptr @llvm.returnaddress(i32 0) #11
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = tail call ptr @llvm.returnaddress(i32 0) #11
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #11
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !143
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !134

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !144
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !146
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !148
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  ret i64 %11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_get_block_end(i64 noundef %val1, i64 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_block_end, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_get_block_end, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !136

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !149
  %call42 = tail call i32 @__traceiter_ocfs2_get_block_end(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !150
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_block_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_get_block_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_get_block_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ocfs2_get_block_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1156, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_read_inline_data(ptr noundef %inode, ptr noundef %page, ptr nocapture noundef readonly %di_bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %i_dyn_features = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %i_dyn_features to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_dyn_features, align 2
  %4 = and i16 %3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb, align 4
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -1608
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i, align 8
  %call1 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %6, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_read_inline_data, ptr noundef nonnull @.str.4, i64 noundef %8) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %call2)
  %cmp = icmp sgt i64 %call2, 4096
  br i1 %cmp, label %if.end.if.then9_crit_edge, label %lor.lhs.false

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %i_sb4 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb4, align 4
  %11 = ptrtoint ptr %i_dyn_features to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %i_dyn_features, align 2
  %13 = and i16 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %i_xattr_inline_size.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %i_xattr_inline_size.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %i_xattr_inline_size.i, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #11
  %conv.i = zext i16 %16 to i32
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_blocksize.i, align 16
  %sub.i = add i32 %18, -200
  %sub2.i = sub i32 %sub.i, %conv.i
  br label %ocfs2_max_inline_data_with_xattr.exit

if.else.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocksize3.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %s_blocksize3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_blocksize3.i, align 16
  %sub4.i = add i32 %20, -200
  br label %ocfs2_max_inline_data_with_xattr.exit

ocfs2_max_inline_data_with_xattr.exit:            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %sub2.i, %if.then.i ], [ %sub4.i, %if.else.i ]
  %conv6 = sext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %conv6)
  %cmp7 = icmp sgt i64 %call2, %conv6
  br i1 %cmp7, label %ocfs2_max_inline_data_with_xattr.exit.if.then9_crit_edge, label %if.end14

ocfs2_max_inline_data_with_xattr.exit.if.then9_crit_edge: ; preds = %ocfs2_max_inline_data_with_xattr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %ocfs2_max_inline_data_with_xattr.exit.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %i_sb10 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb10, align 4
  %add.ptr.i43 = getelementptr i8, ptr %inode, i32 -1608
  %23 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr.i43, align 8
  %call13 = tail call i32 (ptr, ptr, ptr, ...) @__ocfs2_error(ptr noundef %22, ptr noundef nonnull @__PRETTY_FUNCTION__.ocfs2_read_inline_data, ptr noundef nonnull @.str.5, i64 noundef %24, i64 noundef %call2) #11
  br label %cleanup

if.end14:                                         ; preds = %ocfs2_max_inline_data_with_xattr.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %25 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %25, 512
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %29, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !151
  %30 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i1.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 213
  %34 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call2)
  %tobool16.not = icmp eq i64 %call2, 0
  br i1 %tobool16.not, label %if.end14.if.end19_crit_edge, label %if.then17

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %id_data = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 35, i32 0, i32 4
  %conv18 = trunc i64 %call2 to i32
  %36 = call ptr @memcpy(ptr %call.i.i, ptr %id_data, i32 %conv18)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %idx.ext.pre-phi = phi i32 [ %conv18, %if.then17 ], [ 0, %if.end14.if.end19_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call.i.i, i32 %idx.ext.pre-phi
  %conv20 = sub i32 4096, %idx.ext.pre-phi
  %37 = call ptr @memset(ptr %add.ptr, i32 0, i32 %conv20)
  tail call void @flush_dcache_page(ptr noundef %page) #11
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !153
  %38 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i1.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 213
  %42 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %43, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !154
  %44 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i44 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i44 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  %48 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !137

if.then.i.i.i:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !156
  unreachable

SetPageUptodate.exit:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #11
  br label %cleanup

cleanup:                                          ; preds = %SetPageUptodate.exit, %if.then9, %if.then
  %retval.0 = phi i32 [ -30, %if.then9 ], [ 0, %SetPageUptodate.exit ], [ -30, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocfs2_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kmap_atomic(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %0 = load i32, ptr @pgprot_kernel, align 4
  %or = or i32 %0, 512
  %1 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !151
  %5 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  %call.i = tail call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or) #11
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kunmap_atomic(ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kunmap_local_indexed(ptr noundef %addr) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !153
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !154
  %6 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @walk_page_buffers(ptr noundef %handle, ptr noundef %head, i32 noundef %from, i32 noundef %to, ptr noundef writeonly %partial, ptr nocapture noundef readonly %fn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %head, i32 0, i32 4
  %0 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_size, align 8
  %tobool4.not = icmp eq ptr %partial, null
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry
  %block_start.025 = phi i32 [ 0, %entry ], [ %add, %for.inc.land.rhs_crit_edge ]
  %bh.024 = phi ptr [ %head, %entry ], [ %3, %for.inc.land.rhs_crit_edge ]
  %cmp1.not = icmp ne ptr %bh.024, %head
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_start.025)
  %tobool.not = icmp eq i32 %block_start.025, 0
  %or.cond = select i1 %cmp1.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.024, i32 0, i32 1
  %2 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_this_page, align 4
  %add = add i32 %block_start.025, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %from)
  %cmp2.not = icmp ugt i32 %add, %from
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.025, i32 %to)
  %cmp3.not = icmp ult i32 %block_start.025, %to
  %or.cond23 = and i1 %cmp3.not, %cmp2.not
  br i1 %or.cond23, label %if.end7, label %if.then

if.then:                                          ; preds = %for.body
  br i1 %tobool4.not, label %if.then.for.inc_crit_edge, label %land.lhs.true

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then
  %4 = ptrtoint ptr %bh.024 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bh.024, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %partial to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %partial, align 4
  br label %for.inc

if.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 %fn(ptr noundef %handle, ptr noundef %bh.024) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %if.then6, %land.lhs.true.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %ret.1 = phi i32 [ 0, %land.lhs.true.for.inc_crit_edge ], [ 0, %if.then6 ], [ 0, %if.then.for.inc_crit_edge ], [ %call8, %if.end7 ]
  %cmp = icmp eq i32 %ret.1, 0
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %land.rhs.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_map_page_blocks(ptr noundef %page, ptr nocapture noundef %p_blkno, ptr noundef %inode, i32 noundef %from, i32 noundef %to, i32 noundef %new) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %wait = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wait) #11
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %wait, align 4, !annotation !133
  %1 = getelementptr inbounds [2 x ptr], ptr %wait, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !133
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %3 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %5 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !134

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !157
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %7 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %page, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %PagePrivate.exit.do.body_crit_edge

PagePrivate.exit.do.body_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @create_empty_buffers(ptr noundef %page, i32 noundef %shl.i, i32 noundef 0) #11
  br label %do.body

do.body:                                          ; preds = %if.then, %PagePrivate.exit.do.body_crit_edge
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp.i.not.i127 = icmp eq i32 %11, -1
  br i1 %cmp.i.not.i127, label %if.then.i128, label %PagePrivate.exit131, !prof !134

if.then.i128:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !157
  unreachable

PagePrivate.exit131:                              ; preds = %do.body
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %page, align 4
  %14 = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %do.body8, label %do.end14, !prof !134

do.body8:                                         ; preds = %PagePrivate.exit131
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 605, 0\0A.popsection", ""() #11, !srcloc !158
  unreachable

do.end14:                                         ; preds = %PagePrivate.exit131
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %private, align 4
  %17 = inttoptr i32 %16 to ptr
  %18 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %bh, align 4
  %19 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %20 = ptrtoint ptr %page to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new)
  %tobool26.not = icmp eq i32 %new, 0
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %index.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  br label %for.body

while.cond.preheader:                             ; preds = %for.inc
  %cmp56190 = icmp ugt ptr %wait_bh.2, %wait
  br i1 %cmp56190, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end14
  %block_start.0188 = phi i32 [ 0, %do.end14 ], [ %add, %for.inc.for.body_crit_edge ]
  %wait_bh.0187 = phi ptr [ %wait, %do.end14 ], [ %wait_bh.2, %for.inc.for.body_crit_edge ]
  %storemerge186 = phi ptr [ %17, %do.end14 ], [ %106, %for.inc.for.body_crit_edge ]
  %add = add i32 %block_start.0188, %shl.i
  call void @_clear_bit(i32 noundef 5, ptr noundef %storemerge186) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.0188, i32 %to)
  %cmp18.not = icmp ult i32 %block_start.0188, %to
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %from)
  %cmp19.not = icmp ugt i32 %add, %from
  %or.cond124 = select i1 %cmp18.not, i1 %cmp19.not, i1 false
  br i1 %or.cond124, label %if.end25, label %if.then20

if.then20:                                        ; preds = %for.body
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %19, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then20._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !137

if.then20._compound_head.exit.i_crit_edge:        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %22, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.then20._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %20, %if.then20._compound_head.exit.i_crit_edge ]
  %23 = inttoptr i32 %retval.0.i.i to ptr
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 4
  %and.i.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !137

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.14) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !156
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %23, align 4
  %30 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %folio_flags.exit.i.i.for.inc_crit_edge, label %PageUptodate.exit

folio_flags.exit.i.i.for.inc_crit_edge:           ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %31 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bh, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %32, align 4
  %and1.i.i132 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i132)
  %tobool.not.i = icmp eq i32 %and1.i.i132, 0
  br i1 %tobool.not.i, label %if.then.i133, label %PageUptodate.exit.for.inc_crit_edge

PageUptodate.exit.for.inc_crit_edge:              ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i133:                                     ; preds = %PageUptodate.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef %32) #11
  br label %for.inc

if.end25:                                         ; preds = %for.body
  br i1 %tobool26.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  %35 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bh, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %39 = and i32 %38, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i134 = icmp eq i32 %39, 0
  br i1 %tobool.not.i134, label %if.then.i135, label %if.then27.if.end28_crit_edge

if.then27.if.end28_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then.i135:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 5, ptr noundef %36) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then.i135, %if.then27.if.end28_crit_edge, %if.end25.if.end28_crit_edge
  %40 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bh, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %44 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool30.not = icmp eq i32 %44, 0
  br i1 %tobool30.not, label %if.then31, label %if.end28.if.end32_crit_edge

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then31:                                        ; preds = %if.end28
  %45 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i_sb, align 4
  %47 = ptrtoint ptr %p_blkno to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %p_blkno, align 8
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %41, align 4
  %51 = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i152 = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i152, label %if.then.i.i153, label %if.then31.map_bh.exit_crit_edge

if.then31.map_bh.exit_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_bh.exit

if.then.i.i153:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 4, ptr noundef %41) #11
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i153, %if.then31.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 26
  %52 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 6
  %54 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 3
  %55 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %48, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %46, i32 0, i32 3
  %56 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 4
  %58 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %b_size.i, align 8
  %59 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bh, align 4
  %b_bdev.i154 = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %b_bdev.i154 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_bdev.i154, align 8
  %b_blocknr.i155 = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 3
  %63 = ptrtoint ptr %b_blocknr.i155 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %b_blocknr.i155, align 8
  call void @clean_bdev_aliases(ptr noundef %62, i64 noundef %64, i64 noundef 1) #11
  br label %if.end32

if.end32:                                         ; preds = %map_bh.exit, %if.end28.if.end32_crit_edge
  %65 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %19, align 4
  %and.i.i156 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i156)
  %tobool.not.i.i157 = icmp eq i32 %and.i.i156, 0
  br i1 %tobool.not.i.i157, label %if.end32._compound_head.exit.i164_crit_edge, label %if.then.i.i159, !prof !137

if.end32._compound_head.exit.i164_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i164

if.then.i.i159:                                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i158 = add i32 %66, -1
  br label %_compound_head.exit.i164

_compound_head.exit.i164:                         ; preds = %if.then.i.i159, %if.end32._compound_head.exit.i164_crit_edge
  %retval.0.i.i161 = phi i32 [ %sub.i.i158, %if.then.i.i159 ], [ %20, %if.end32._compound_head.exit.i164_crit_edge ]
  %67 = inttoptr i32 %retval.0.i.i161 to ptr
  %68 = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %and.i.i.i.i162 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i162)
  %tobool.not.i.i.i163 = icmp eq i32 %and.i.i.i.i162, 0
  br i1 %tobool.not.i.i.i163, label %folio_flags.exit.i.i167, label %if.then.i.i.i165, !prof !137

if.then.i.i.i165:                                 ; preds = %_compound_head.exit.i164
  call void @__sanitizer_cov_trace_pc() #13
  %71 = inttoptr i32 %retval.0.i.i161 to ptr
  call void @dump_page(ptr noundef %71, ptr noundef nonnull @.str.14) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !156
  unreachable

folio_flags.exit.i.i167:                          ; preds = %_compound_head.exit.i164
  %72 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %67, align 4
  %74 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.not.i166 = icmp eq i32 %74, 0
  br i1 %tobool.i.not.i166, label %if.else, label %PageUptodate.exit170

PageUptodate.exit170:                             ; preds = %folio_flags.exit.i.i167
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  %75 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bh, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %76, align 4
  %and1.i.i138 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i138)
  %tobool.not.i139 = icmp eq i32 %and1.i.i138, 0
  br i1 %tobool.not.i139, label %if.then.i140, label %PageUptodate.exit170.if.end52_crit_edge

PageUptodate.exit170.if.end52_crit_edge:          ; preds = %PageUptodate.exit170
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then.i140:                                     ; preds = %PageUptodate.exit170
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef %76) #11
  br label %if.end52

if.else:                                          ; preds = %folio_flags.exit.i.i167
  %79 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bh, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  %and1.i.i142 = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i142)
  %tobool37.not = icmp eq i32 %and1.i.i142, 0
  br i1 %tobool37.not, label %land.lhs.true, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true:                                    ; preds = %if.else
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %80, align 4
  %85 = and i32 %84, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool39.not = icmp eq i32 %85, 0
  br i1 %tobool39.not, label %land.lhs.true40, label %land.lhs.true.if.end52_crit_edge

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true40:                                  ; preds = %land.lhs.true
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %80, align 4
  %88 = and i32 %87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool42.not = icmp eq i32 %88, 0
  br i1 %tobool42.not, label %land.lhs.true43, label %land.lhs.true40.if.end52_crit_edge

land.lhs.true40.if.end52_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %89 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %90, i32 0, i32 33
  %91 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info.i, align 16
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %92, i32 0, i32 19
  %93 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %s_feature_incompat.i.i, align 8
  %95 = and i32 %94, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i171 = icmp eq i32 %95, 0
  br i1 %tobool.not.i171, label %ocfs2_should_read_blk.exit, label %land.lhs.true43.land.lhs.true46_crit_edge

land.lhs.true43.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true46

ocfs2_should_read_blk.exit:                       ; preds = %land.lhs.true43
  %96 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index.i.i, align 4
  %conv.i.i = zext i32 %97 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %conv.i172 = zext i32 %block_start.0188 to i64
  %add.i = add nuw nsw i64 %shl.i.i, %conv.i172
  %call2.i = call fastcc i64 @i_size_read(ptr noundef %inode) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call2.i, i64 %add.i)
  %cmp.i.not = icmp ugt i64 %call2.i, %add.i
  br i1 %cmp.i.not, label %ocfs2_should_read_blk.exit.land.lhs.true46_crit_edge, label %ocfs2_should_read_blk.exit.if.end52_crit_edge

ocfs2_should_read_blk.exit.if.end52_crit_edge:    ; preds = %ocfs2_should_read_blk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

ocfs2_should_read_blk.exit.land.lhs.true46_crit_edge: ; preds = %ocfs2_should_read_blk.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true46

land.lhs.true46:                                  ; preds = %ocfs2_should_read_blk.exit.land.lhs.true46_crit_edge, %land.lhs.true43.land.lhs.true46_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.0188, i32 %from)
  %cmp47 = icmp ult i32 %block_start.0188, %from
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %to)
  %cmp49 = icmp ugt i32 %add, %to
  %or.cond125 = select i1 %cmp47, i1 true, i1 %cmp49
  br i1 %or.cond125, label %if.then50, label %land.lhs.true46.if.end52_crit_edge

land.lhs.true46.if.end52_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then50:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #13
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %bh) #11
  %98 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bh, align 4
  %incdec.ptr = getelementptr ptr, ptr %wait_bh.0187, i32 1
  %100 = ptrtoint ptr %wait_bh.0187 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %wait_bh.0187, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %land.lhs.true46.if.end52_crit_edge, %ocfs2_should_read_blk.exit.if.end52_crit_edge, %land.lhs.true40.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %if.else.if.end52_crit_edge, %if.then.i140, %PageUptodate.exit170.if.end52_crit_edge
  %wait_bh.1 = phi ptr [ %wait_bh.0187, %if.else.if.end52_crit_edge ], [ %wait_bh.0187, %land.lhs.true.if.end52_crit_edge ], [ %wait_bh.0187, %land.lhs.true40.if.end52_crit_edge ], [ %incdec.ptr, %if.then50 ], [ %wait_bh.0187, %ocfs2_should_read_blk.exit.if.end52_crit_edge ], [ %wait_bh.0187, %land.lhs.true46.if.end52_crit_edge ], [ %wait_bh.0187, %PageUptodate.exit170.if.end52_crit_edge ], [ %wait_bh.0187, %if.then.i140 ]
  %101 = ptrtoint ptr %p_blkno to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %p_blkno, align 8
  %add53 = add i64 %102, 1
  store i64 %add53, ptr %p_blkno, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end52, %if.then.i133, %PageUptodate.exit.for.inc_crit_edge, %folio_flags.exit.i.i.for.inc_crit_edge
  %wait_bh.2 = phi ptr [ %wait_bh.1, %if.end52 ], [ %wait_bh.0187, %PageUptodate.exit.for.inc_crit_edge ], [ %wait_bh.0187, %if.then.i133 ], [ %wait_bh.0187, %folio_flags.exit.i.i.for.inc_crit_edge ]
  %103 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bh, align 4
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %b_this_page, align 4
  store ptr %106, ptr %bh, align 4
  %cmp.not = icmp ne ptr %106, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool15.not = icmp eq i32 %add, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %while.cond.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

while.body:                                       ; preds = %wait_on_buffer.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %wait_bh.3192 = phi ptr [ %incdec.ptr57, %wait_on_buffer.exit.while.body_crit_edge ], [ %wait_bh.2, %while.cond.preheader.while.body_crit_edge ]
  %ret.0191 = phi i32 [ %spec.select, %wait_on_buffer.exit.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %incdec.ptr57 = getelementptr ptr, ptr %wait_bh.3192, i32 -1
  %107 = ptrtoint ptr %incdec.ptr57 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %incdec.ptr57, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 354) #11
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %108, align 4
  %111 = and i32 %110, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i173 = icmp eq i32 %111, 0
  br i1 %tobool.not.i173, label %while.body.wait_on_buffer.exit_crit_edge, label %if.then.i174

while.body.wait_on_buffer.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %wait_on_buffer.exit

if.then.i174:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__wait_on_buffer(ptr noundef %108) #11
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i174, %while.body.wait_on_buffer.exit_crit_edge
  %112 = ptrtoint ptr %incdec.ptr57 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %incdec.ptr57, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %113, align 4
  %and1.i.i147 = and i32 %115, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i147)
  %tobool59.not = icmp eq i32 %and1.i.i147, 0
  %spec.select = select i1 %tobool59.not, i32 -5, i32 %ret.0191
  %cmp56 = icmp ugt ptr %incdec.ptr57, %wait
  br i1 %cmp56, label %wait_on_buffer.exit.while.body_crit_edge, label %while.end

wait_on_buffer.exit.while.body_crit_edge:         ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp62 = icmp eq i32 %spec.select, 0
  %or.cond126 = or i1 %tobool26.not, %cmp62
  br i1 %or.cond126, label %while.end.cleanup_crit_edge, label %if.end66

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end66:                                         ; preds = %while.end
  %116 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %17, ptr %bh, align 4
  br label %do.body67

do.body67:                                        ; preds = %next_bh.do.body67_crit_edge, %if.end66
  %block_start.1 = phi i32 [ 0, %if.end66 ], [ %add68, %next_bh.do.body67_crit_edge ]
  %add68 = add i32 %block_start.1, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add68, i32 %from)
  %cmp69.not = icmp ugt i32 %add68, %from
  br i1 %cmp69.not, label %if.end71, label %do.body67.next_bh_crit_edge

do.body67.next_bh_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #13
  br label %next_bh

if.end71:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.1, i32 %to)
  %cmp72.not = icmp ult i32 %block_start.1, %to
  br i1 %cmp72.not, label %if.end74, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end74:                                         ; preds = %if.end71
  %117 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bh, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %b_size, align 8
  %add.i176 = add i32 %120, %block_start.1
  call void @zero_user_segments(ptr noundef %page, i32 noundef %block_start.1, i32 noundef %add.i176, i32 noundef 0, i32 noundef 0) #11
  %121 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bh, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load volatile i32, ptr %122, align 4
  %and1.i.i148 = and i32 %124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i148)
  %tobool.not.i149 = icmp eq i32 %and1.i.i148, 0
  br i1 %tobool.not.i149, label %if.then.i150, label %if.end74.set_buffer_uptodate.exit151_crit_edge

if.end74.set_buffer_uptodate.exit151_crit_edge:   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_uptodate.exit151

if.then.i150:                                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 0, ptr noundef %122) #11
  br label %set_buffer_uptodate.exit151

set_buffer_uptodate.exit151:                      ; preds = %if.then.i150, %if.end74.set_buffer_uptodate.exit151_crit_edge
  %125 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bh, align 4
  call void @mark_buffer_dirty(ptr noundef %126) #11
  br label %next_bh

next_bh:                                          ; preds = %set_buffer_uptodate.exit151, %do.body67.next_bh_crit_edge
  %127 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bh, align 4
  %b_this_page75 = getelementptr inbounds %struct.buffer_head, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %b_this_page75 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %b_this_page75, align 4
  store ptr %130, ptr %bh, align 4
  %cmp77.not = icmp eq ptr %130, %17
  br i1 %cmp77.not, label %next_bh.cleanup_crit_edge, label %next_bh.do.body67_crit_edge

next_bh.do.body67_crit_edge:                      ; preds = %next_bh
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body67

next_bh.cleanup_crit_edge:                        ; preds = %next_bh
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %next_bh.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %ret.0.lcssa196 = phi i32 [ %spec.select, %while.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %spec.select, %if.end71.cleanup_crit_edge ], [ %spec.select, %next_bh.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wait) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #11
  ret i32 %ret.0.lcssa196
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @PageUptodate(ptr noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !137

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add i32 %2, -1
  br label %_compound_head.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !137

if.then.i.i:                                      ; preds = %_compound_head.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.14) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !156
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %folio_test_uptodate.exit

do.end.i:                                         ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  br label %folio_test_uptodate.exit

folio_test_uptodate.exit:                         ; preds = %do.end.i, %folio_flags.exit.i.folio_test_uptodate.exit_crit_edge
  %.lobit = lshr exact i32 %10, 2
  ret i32 %.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocfs2_unlock_and_free_pages(ptr nocapture noundef readonly %pages, i32 noundef %num_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages)
  %cmp12 = icmp sgt i32 %num_pages, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pages, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  tail call void @unlock_page(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @mark_page_accessed(ptr noundef %3) #11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !137

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %8, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %5 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %9, %if.end.i.i ]
  %10 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %11 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i.i.i.i = icmp eq i32 %12, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !134

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %13, ptr noundef nonnull @.str.18) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !160
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !162
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ocfs2_unlock_and_free_pages, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !136

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %10, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %10) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %num_pages
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocfs2_size_fits_inline_data(ptr nocapture noundef readonly %di_bh, i64 noundef %new_size) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 5
  %0 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data, align 4
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id2, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %new_size)
  %cmp.not = icmp uge i64 %conv, %new_size
  %. = zext i1 %cmp.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_write_begin_nolock(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %type, ptr noundef writeonly %pagep, ptr nocapture noundef writeonly %fsdata, ptr noundef %di_bh, ptr noundef %mmap_page) local_unnamed_addr #0 align 64 {
entry:
  %num_clusters.i = alloca i32, align 4
  %ext_flags.i = alloca i32, align 4
  %phys.i = alloca i32, align 4
  %_m.i676 = alloca i64, align 8
  %_m97.i = alloca i64, align 8
  %_m.i.i = alloca i64, align 8
  %_m35.i.i = alloca i64, align 8
  %_m69.i.i = alloca i64, align 8
  %_m.i = alloca i64, align 8
  %_m71.i = alloca i64, align 8
  %data_ac = alloca ptr, align 4
  %meta_ac = alloca ptr, align 4
  %et = alloca %struct.ocfs2_extent_tree, align 4
  %_m = alloca i64, align 8
  %_m41 = alloca i64, align 8
  %_m81 = alloca i64, align 8
  %_m114 = alloca i64, align 8
  %_m149 = alloca i64, align 8
  %_m182 = alloca i64, align 8
  %_m220 = alloca i64, align 8
  %_m277 = alloca i64, align 8
  %_m318 = alloca i64, align 8
  %_m371 = alloca i64, align 8
  %_m402 = alloca i64, align 8
  %_m468 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_ac) #11
  %6 = ptrtoint ptr %data_ac to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data_ac, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %meta_ac) #11
  %7 = ptrtoint ptr %meta_ac to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %meta_ac, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %et) #11
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 36
  %conv1.i = zext i32 %len to i64
  %add.i = add i64 %pos, -1
  %sub.i = add i64 %add.i, %conv1.i
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %di_bh, i32 0, i32 11
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 19
  %add.i663 = add i64 %conv1.i, %pos
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -1608
  %ip_dyn_features.i = getelementptr i8, ptr %1, i32 -172
  %cmp.i666 = icmp eq ptr %mmap_page, null
  %ip_clusters.i = getelementptr i8, ptr %1, i32 -176
  %ip_metadata_cache.i.i.i = getelementptr i8, ptr %1, i32 -56
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp53.not = icmp eq i32 %type, 1
  %ip_lock.i.i = getelementptr i8, ptr %1, i32 -232
  %ip_unwritten_list.i.i = getelementptr i8, ptr %1, i32 -68
  %prev.i.i.i = getelementptr i8, ptr %1, i32 -64
  %ip_la_data_resv = getelementptr i8, ptr %1, i32 844
  %8 = trunc i64 %pos to i32
  %conv.i695776 = and i32 %8, 4095
  %add.i696778 = add i32 %conv.i695776, %len
  %s_clustersize.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 35
  %sb = getelementptr inbounds %struct.ocfs2_super, ptr %5, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp333 = icmp eq i32 %type, 2
  %9 = call ptr @memset(ptr %et, i32 255, i32 32)
  br label %try_again

try_again:                                        ; preds = %if.then442.try_again_crit_edge, %entry
  %tobool441.not = phi i1 [ true, %if.then442.try_again_crit_edge ], [ false, %entry ]
  %clusters_need.0 = phi i32 [ %clusters_need.2, %if.then442.try_again_crit_edge ], [ 0, %entry ]
  %credits.0 = phi i32 [ %credits.2, %if.then442.try_again_crit_edge ], [ 1, %entry ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3392, i32 noundef 1112) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body, label %if.end12

do.body:                                          ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %11 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1667, ptr noundef nonnull @.str.6, i64 noundef -12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  br label %cleanup

if.end12:                                         ; preds = %try_again
  %12 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_clustersize_bits.i, align 8
  %sh_prom.i = zext i32 %13 to i64
  %shr.i = ashr i64 %pos, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv.i, ptr %call7.i.i.i, align 8
  %w_first_new_cpos.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %w_first_new_cpos.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %w_first_new_cpos.i, align 8
  %shr4.i = ashr i64 %sub.i, %sh_prom.i
  %conv5.i = trunc i64 %shr4.i to i32
  %sub7.i = sub i32 1, %conv.i
  %add8.i = add i32 %sub7.i, %conv5.i
  %w_clen.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %w_clen.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add8.i, ptr %w_clen.i, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #11
  %17 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #11, !srcloc !164
  %w_di_bh.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %di_bh, ptr %w_di_bh.i, align 8
  %w_type.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %w_type.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %type, ptr %w_type.i, align 4
  %20 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_clustersize_bits.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %21)
  %cmp.i = icmp slt i32 %21, 12
  %spec.select.i = zext i1 %cmp.i to i32
  %22 = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select.i, ptr %22, align 4
  %w_dealloc.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 14
  %24 = ptrtoint ptr %w_dealloc.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %w_dealloc.i, align 4
  %c_global_allocator.i.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 14, i32 1
  %25 = ptrtoint ptr %c_global_allocator.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %c_global_allocator.i.i, align 8
  %w_unwritten_list.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 15
  %26 = ptrtoint ptr %w_unwritten_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %w_unwritten_list.i, ptr %w_unwritten_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %w_unwritten_list.i, ptr %prev.i.i, align 8
  %28 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_feature_incompat.i, align 8
  %30 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool14.not = icmp eq i32 %30, 0
  br i1 %tobool14.not, label %if.end12.if.end52_crit_edge, label %if.then15

if.end12.if.end52_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then15:                                        ; preds = %if.end12
  %31 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr.i.i, align 8
  %33 = ptrtoint ptr %ip_dyn_features.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ip_dyn_features.i, align 4
  %conv1.i664 = zext i16 %34 to i32
  call fastcc void @trace_ocfs2_try_to_write_inline_data(i64 noundef %32, i32 noundef %len, i64 noundef %pos, i32 noundef %conv1.i664) #11
  %35 = ptrtoint ptr %ip_dyn_features.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ip_dyn_features.i, align 4
  %37 = and i16 %36, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i665 = icmp eq i16 %37, 0
  br i1 %tobool.not.i665, label %if.end34.i, label %if.then.i

if.then.i:                                        ; preds = %if.then15
  br i1 %cmp.i666, label %land.lhs.true.i, label %if.then.i.if.end.i668_crit_edge

if.then.i.if.end.i668_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i668

land.lhs.true.i:                                  ; preds = %if.then.i
  %38 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %w_di_bh.i, align 8
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data.i.i, align 4
  %id2.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %41, i32 0, i32 35
  %42 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %id2.i.i, align 8
  %44 = call i16 @llvm.bswap.i16(i16 %43) #11
  %conv.i.i = zext i16 %44 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i663, i64 %conv.i.i)
  %cmp.not.i.not.i = icmp ugt i64 %add.i663, %conv.i.i
  br i1 %cmp.not.i.not.i, label %land.lhs.true.i.if.end.i668_crit_edge, label %land.lhs.true.i.do_inline_write.i_crit_edge

land.lhs.true.i.do_inline_write.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_inline_write.i

land.lhs.true.i.if.end.i668_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i668

if.end.i668:                                      ; preds = %land.lhs.true.i.if.end.i668_crit_edge, %if.then.i.if.end.i668_crit_edge
  %45 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %w_di_bh.i, align 8
  %call9.i = call i32 @ocfs2_convert_inline_data_to_extents(ptr noundef %1, ptr noundef %46) #11
  %47 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call9.i, label %do.body.i [
    i32 0, label %if.end.i668.if.end52_crit_edge
    i32 -512, label %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge
    i32 -4, label %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1082
    i32 524289, label %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1083
    i32 -28, label %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1084
    i32 -122, label %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1085
  ]

if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1085: ; preds = %if.end.i668
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_try_to_write_inline_data.exit

if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1084: ; preds = %if.end.i668
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_try_to_write_inline_data.exit

if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1083: ; preds = %if.end.i668
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_try_to_write_inline_data.exit

if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1082: ; preds = %if.end.i668
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_try_to_write_inline_data.exit

if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge: ; preds = %if.end.i668
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_try_to_write_inline_data.exit

if.end.i668.if.end52_crit_edge:                   ; preds = %if.end.i668
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

do.body.i:                                        ; preds = %if.end.i668
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #11
  %48 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv30.i = sext i32 %call9.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_try_to_write_inline_data, i32 noundef 1567, ptr noundef nonnull @.str.6, i64 noundef %conv30.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #11
  br label %ocfs2_try_to_write_inline_data.exit

if.end34.i:                                       ; preds = %if.then15
  %49 = ptrtoint ptr %ip_clusters.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ip_clusters.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp35.not.i = icmp eq i32 %50, 0
  br i1 %cmp35.not.i, label %lor.lhs.false.i, label %if.end34.i.if.end52_crit_edge

if.end34.i.if.end52_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

lor.lhs.false.i:                                  ; preds = %if.end34.i
  %call37.i = call fastcc i64 @i_size_read(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call37.i)
  %cmp38.not.i = icmp eq i64 %call37.i, 0
  %or.cond.i = and i1 %cmp.i666, %cmp38.not.i
  br i1 %or.cond.i, label %lor.lhs.false44.i, label %lor.lhs.false.i.if.end52_crit_edge

lor.lhs.false.i.if.end52_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

lor.lhs.false44.i:                                ; preds = %lor.lhs.false.i
  %51 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %w_di_bh.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data.i, align 4
  %55 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_sb, align 4
  %i_dyn_features.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %54, i32 0, i32 25
  %57 = ptrtoint ptr %i_dyn_features.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %i_dyn_features.i.i, align 2
  %59 = and i16 %58, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool.not.i.i = icmp eq i16 %59, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #13
  %i_xattr_inline_size.i.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %54, i32 0, i32 5
  %60 = ptrtoint ptr %i_xattr_inline_size.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %i_xattr_inline_size.i.i, align 2
  %62 = call i16 @llvm.bswap.i16(i16 %61) #11
  %conv.i118.i = zext i16 %62 to i32
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 3
  %63 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %s_blocksize.i.i, align 16
  %sub.i.i = add i32 %64, -200
  %sub2.i.i = sub i32 %sub.i.i, %conv.i118.i
  br label %ocfs2_max_inline_data_with_xattr.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #13
  %s_blocksize3.i.i = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 3
  %65 = ptrtoint ptr %s_blocksize3.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_blocksize3.i.i, align 16
  %sub4.i.i = add i32 %66, -200
  br label %ocfs2_max_inline_data_with_xattr.exit.i

ocfs2_max_inline_data_with_xattr.exit.i:          ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub2.i.i, %if.then.i.i ], [ %sub4.i.i, %if.else.i.i ]
  %conv46.i = sext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i663, i64 %conv46.i)
  %cmp47.i = icmp sgt i64 %add.i663, %conv46.i
  br i1 %cmp47.i, label %ocfs2_max_inline_data_with_xattr.exit.i.if.end52_crit_edge, label %ocfs2_max_inline_data_with_xattr.exit.i.do_inline_write.i_crit_edge

ocfs2_max_inline_data_with_xattr.exit.i.do_inline_write.i_crit_edge: ; preds = %ocfs2_max_inline_data_with_xattr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do_inline_write.i

ocfs2_max_inline_data_with_xattr.exit.i.if.end52_crit_edge: ; preds = %ocfs2_max_inline_data_with_xattr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

do_inline_write.i:                                ; preds = %ocfs2_max_inline_data_with_xattr.exit.i.do_inline_write.i_crit_edge, %land.lhs.true.i.do_inline_write.i_crit_edge
  %67 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 33
  %69 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_fs_info.i.i, align 16
  %71 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %w_di_bh.i, align 8
  %b_data.i119.i = getelementptr inbounds %struct.buffer_head, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %b_data.i119.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %b_data.i119.i, align 4
  %call.i.i = call ptr @ocfs2_start_trans(ptr noundef %70, i32 noundef 1) #11
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i120.i, label %if.end13.i.i

if.then.i120.i:                                   ; preds = %do_inline_write.i
  %75 = ptrtoint ptr %call.i.i to i32
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %75, label %do.body.i.i [
    i32 -512, label %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge
    i32 -4, label %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1086
    i32 524289, label %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1087
    i32 -28, label %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1088
    i32 -122, label %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1089
  ]

if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1089: ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.i

if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1088: ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.i

if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1087: ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.i

if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1086: ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.i

if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge: ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.i

do.body.i.i:                                      ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #11
  %77 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  %conv.i121.i = sext i32 %75 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_write_begin_inline, i32 noundef 1486, ptr noundef nonnull @.str.6, i64 noundef %conv.i121.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #11
  br label %ocfs2_write_begin_inline.exit.i

if.end13.i.i:                                     ; preds = %do_inline_write.i
  %call.i.i.i = call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef 0, i32 noundef 7, i32 noundef 3136) #11
  %tobool15.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool15.not.i.i, label %ocfs2_write_begin_inline.exit.thread.i, label %if.end45.i.i

ocfs2_write_begin_inline.exit.thread.i:           ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call17.i.i = call i32 @ocfs2_commit_trans(ptr noundef %70, ptr noundef %call.i.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m35.i.i) #11
  %78 = ptrtoint ptr %_m35.i.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 1152921504606846976, ptr %_m35.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m35.i.i, ptr noundef nonnull @__func__.ocfs2_write_begin_inline, i32 noundef 1494, ptr noundef nonnull @.str.6, i64 noundef -12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m35.i.i) #11
  br label %do.body70.i

if.end45.i.i:                                     ; preds = %if.end13.i.i
  %w_target_page.i.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 8
  %79 = ptrtoint ptr %w_target_page.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i.i.i, ptr %w_target_page.i.i, align 4
  %w_pages.i.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 7
  %80 = ptrtoint ptr %w_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i.i.i, ptr %w_pages.i.i, align 4
  %w_num_pages.i.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 6
  %81 = ptrtoint ptr %w_num_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %w_num_pages.i.i, align 8
  %82 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %w_di_bh.i, align 8
  %call48.i.i = call i32 @ocfs2_journal_access_di(ptr noundef %call.i.i, ptr noundef %ip_metadata_cache.i.i.i, ptr noundef %83, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end79.i.i, label %if.then50.i.i

if.then50.i.i:                                    ; preds = %if.end45.i.i
  %call51.i.i = call i32 @ocfs2_commit_trans(ptr noundef %70, ptr noundef %call.i.i) #11
  %84 = zext i32 %call48.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call48.i.i, label %do.body68.i.i [
    i32 -512, label %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge
    i32 -4, label %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1090
    i32 524289, label %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1091
    i32 -28, label %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1092
    i32 -122, label %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1093
  ]

if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1093: ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.i

if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1092: ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.i

if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1091: ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.i

if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1090: ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.i

if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge: ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.i

do.body68.i.i:                                    ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m69.i.i) #11
  %85 = ptrtoint ptr %_m69.i.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 1152921504606846976, ptr %_m69.i.i, align 8
  %conv73.i.i = sext i32 %call48.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m69.i.i, ptr noundef nonnull @__func__.ocfs2_write_begin_inline, i32 noundef 1509, ptr noundef nonnull @.str.6, i64 noundef %conv73.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m69.i.i) #11
  br label %ocfs2_write_begin_inline.exit.i

if.end79.i.i:                                     ; preds = %if.end45.i.i
  %86 = ptrtoint ptr %ip_dyn_features.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %ip_dyn_features.i, align 4
  %88 = and i16 %87, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool83.not.i.i = icmp eq i16 %88, 0
  br i1 %tobool83.not.i.i, label %if.then84.i.i, label %if.end79.i.i.if.end85.i.i_crit_edge

if.end79.i.i.if.end85.i.i_crit_edge:              ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85.i.i

if.then84.i.i:                                    ; preds = %if.end79.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @ocfs2_set_inode_data_inline(ptr noundef %1, ptr noundef %74) #11
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %if.then84.i.i, %if.end79.i.i.if.end85.i.i_crit_edge
  %89 = getelementptr inbounds %struct.page, ptr %call.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %89, align 4
  %and.i.i.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !137

if.then.i.i.i.i:                                  ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i = add i32 %91, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %call.i.i.i to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %92, %if.end.i.i.i.i ]
  %93 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %94 = getelementptr inbounds %struct.page, ptr %93, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %94, align 4
  %and.i.i.i.i.i.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_flags.exit.i.i.i.i, label %if.then.i.i.i.i.i, !prof !137

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %97 = inttoptr i32 %retval.0.i.i.i.i to ptr
  call void @dump_page(ptr noundef %97, ptr noundef nonnull @.str.14) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !156
  unreachable

folio_flags.exit.i.i.i.i:                         ; preds = %_compound_head.exit.i.i.i
  %98 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %93, align 4
  %100 = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.i.not.i.i.i = icmp eq i32 %100, 0
  br i1 %tobool.i.not.i.i.i, label %if.then88.i.i, label %PageUptodate.exit.i.i

PageUptodate.exit.i.i:                            ; preds = %folio_flags.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  br label %ocfs2_write_begin_inline.exit.thread124.i

if.then88.i.i:                                    ; preds = %folio_flags.exit.i.i.i.i
  %101 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %w_di_bh.i, align 8
  %call90.i.i = call i32 @ocfs2_read_inline_data(ptr noundef %1, ptr noundef nonnull %call.i.i.i, ptr noundef %102) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i.i)
  %tobool91.not.i.i = icmp eq i32 %call90.i.i, 0
  br i1 %tobool91.not.i.i, label %if.then88.i.i.ocfs2_write_begin_inline.exit.thread124.i_crit_edge, label %if.then92.i.i

if.then88.i.i.ocfs2_write_begin_inline.exit.thread124.i_crit_edge: ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_begin_inline.exit.thread124.i

if.then92.i.i:                                    ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call93.i.i = call i32 @ocfs2_commit_trans(ptr noundef %70, ptr noundef %call.i.i) #11
  br label %ocfs2_write_begin_inline.exit.i

ocfs2_write_begin_inline.exit.thread124.i:        ; preds = %if.then88.i.i.ocfs2_write_begin_inline.exit.thread124.i_crit_edge, %PageUptodate.exit.i.i
  %w_handle.i.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 12
  %103 = ptrtoint ptr %w_handle.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i.i, ptr %w_handle.i.i, align 4
  br label %success

ocfs2_write_begin_inline.exit.i:                  ; preds = %if.then92.i.i, %do.body68.i.i, %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge, %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1090, %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1091, %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1092, %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1093, %do.body.i.i, %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge, %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1086, %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1087, %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1088, %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1089
  %ret.1.i.i = phi i32 [ %call90.i.i, %if.then92.i.i ], [ %75, %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge ], [ %75, %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1086 ], [ %75, %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1087 ], [ %75, %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1088 ], [ %75, %if.then.i120.i.ocfs2_write_begin_inline.exit.i_crit_edge1089 ], [ %75, %do.body.i.i ], [ %call48.i.i, %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge ], [ %call48.i.i, %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1090 ], [ %call48.i.i, %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1091 ], [ %call48.i.i, %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1092 ], [ %call48.i.i, %if.then50.i.i.ocfs2_write_begin_inline.exit.i_crit_edge1093 ], [ %call48.i.i, %do.body68.i.i ]
  %104 = zext i32 %ret.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %ret.1.i.i, label %ocfs2_write_begin_inline.exit.i.do.body70.i_crit_edge [
    i32 0, label %ocfs2_write_begin_inline.exit.i.success_crit_edge
    i32 -512, label %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge
    i32 -4, label %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1094
    i32 524289, label %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1095
    i32 -28, label %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1096
    i32 -122, label %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1097
  ]

ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1097: ; preds = %ocfs2_write_begin_inline.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_try_to_write_inline_data.exit

ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1096: ; preds = %ocfs2_write_begin_inline.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_try_to_write_inline_data.exit

ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1095: ; preds = %ocfs2_write_begin_inline.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_try_to_write_inline_data.exit

ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1094: ; preds = %ocfs2_write_begin_inline.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_try_to_write_inline_data.exit

ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge: ; preds = %ocfs2_write_begin_inline.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_try_to_write_inline_data.exit

ocfs2_write_begin_inline.exit.i.success_crit_edge: ; preds = %ocfs2_write_begin_inline.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %success

ocfs2_write_begin_inline.exit.i.do.body70.i_crit_edge: ; preds = %ocfs2_write_begin_inline.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body70.i

do.body70.i:                                      ; preds = %ocfs2_write_begin_inline.exit.i.do.body70.i_crit_edge, %ocfs2_write_begin_inline.exit.thread.i
  %ret.1.i123.i = phi i32 [ -12, %ocfs2_write_begin_inline.exit.thread.i ], [ %ret.1.i.i, %ocfs2_write_begin_inline.exit.i.do.body70.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m71.i) #11
  %105 = ptrtoint ptr %_m71.i to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 1152921504606846976, ptr %_m71.i, align 8
  %conv75.i = sext i32 %ret.1.i123.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m71.i, ptr noundef nonnull @__func__.ocfs2_try_to_write_inline_data, i32 noundef 1588, ptr noundef nonnull @.str.6, i64 noundef %conv75.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m71.i) #11
  br label %ocfs2_try_to_write_inline_data.exit

ocfs2_try_to_write_inline_data.exit:              ; preds = %do.body70.i, %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge, %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1094, %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1095, %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1096, %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1097, %do.body.i, %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge, %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1082, %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1083, %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1084, %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1085
  %ret.0.ph.i = phi i32 [ %ret.1.i123.i, %do.body70.i ], [ %ret.1.i.i, %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge ], [ %ret.1.i.i, %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1094 ], [ %ret.1.i.i, %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1095 ], [ %ret.1.i.i, %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1096 ], [ %ret.1.i.i, %ocfs2_write_begin_inline.exit.i.ocfs2_try_to_write_inline_data.exit_crit_edge1097 ], [ %call9.i, %do.body.i ], [ %call9.i, %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge ], [ %call9.i, %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1082 ], [ %call9.i, %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1083 ], [ %call9.i, %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1084 ], [ %call9.i, %if.end.i668.ocfs2_try_to_write_inline_data.exit_crit_edge1085 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.ph.i)
  %cmp17 = icmp eq i32 %ret.0.ph.i, 1
  br i1 %cmp17, label %ocfs2_try_to_write_inline_data.exit.success_crit_edge, label %if.end20

ocfs2_try_to_write_inline_data.exit.success_crit_edge: ; preds = %ocfs2_try_to_write_inline_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %success

if.end20:                                         ; preds = %ocfs2_try_to_write_inline_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph.i)
  %cmp21 = icmp slt i32 %ret.0.ph.i, 0
  br i1 %cmp21, label %if.then23, label %if.end20.if.end52_crit_edge

if.end20.if.end52_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then23:                                        ; preds = %if.end20
  %106 = zext i32 %ret.0.ph.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %ret.0.ph.i, label %do.body40 [
    i32 -512, label %if.then23.out_crit_edge
    i32 -4, label %if.then23.out_crit_edge1098
    i32 -28, label %if.then23.out_crit_edge1099
    i32 -122, label %if.then23.out_crit_edge1100
  ]

if.then23.out_crit_edge1100:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then23.out_crit_edge1099:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then23.out_crit_edge1098:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then23.out_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body40:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m41) #11
  %107 = ptrtoint ptr %_m41 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 1152921504606846976, ptr %_m41, align 8
  %conv45 = sext i32 %ret.0.ph.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m41, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1679, ptr noundef nonnull @.str.6, i64 noundef %conv45) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m41) #11
  br label %out

if.end52:                                         ; preds = %if.end20.if.end52_crit_edge, %ocfs2_max_inline_data_with_xattr.exit.i.if.end52_crit_edge, %lor.lhs.false.i.if.end52_crit_edge, %if.end34.i.if.end52_crit_edge, %if.end.i668.if.end52_crit_edge, %if.end12.if.end52_crit_edge
  br i1 %cmp53.not, label %if.end52.if.end92_crit_edge, label %if.then55

if.end52.if.end92_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then55:                                        ; preds = %if.end52
  %108 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %s_feature_incompat.i, align 8
  %110 = and i32 %109, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool57.not = icmp eq i32 %110, 0
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.then55
  %111 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %112, i32 0, i32 33
  %113 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %s_fs_info.i, align 16
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %114, i32 0, i32 19
  %115 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %s_feature_incompat.i.i, align 8
  %117 = and i32 %116, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i674 = icmp eq i32 %117, 0
  br i1 %tobool.not.i674, label %do.body4.i, label %do.end9.i, !prof !134

do.body4.i:                                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1640, 0\0A.popsection", ""() #11, !srcloc !165
  unreachable

do.end9.i:                                        ; preds = %if.then58
  %call10.i = call fastcc i64 @i_size_read(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call10.i, i64 %pos)
  %cmp.i675 = icmp slt i64 %call10.i, %pos
  br i1 %cmp.i675, label %if.then11.i, label %do.end9.i.if.end92_crit_edge

do.end9.i.if.end92_crit_edge:                     ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = call i32 @ocfs2_zero_extend(ptr noundef %1, ptr noundef %di_bh, i64 noundef %pos) #11
  br label %if.end61

if.else:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %call60 = call fastcc i32 @ocfs2_expand_nonsparse_inode(ptr noundef %1, ptr noundef %di_bh, i64 noundef %pos, i32 noundef %len, ptr noundef nonnull %call7.i.i.i)
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then11.i
  %ret.0 = phi i32 [ %call60, %if.else ], [ %call12.i, %if.then11.i ]
  %118 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %ret.0, label %do.body80 [
    i32 0, label %if.end61.if.end92_crit_edge
    i32 -512, label %if.end61.out_crit_edge
    i32 -4, label %if.end61.out_crit_edge1101
    i32 524289, label %if.end61.out_crit_edge1102
    i32 -28, label %if.end61.out_crit_edge1103
    i32 -122, label %if.end61.out_crit_edge1104
  ]

if.end61.out_crit_edge1104:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end61.out_crit_edge1103:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end61.out_crit_edge1102:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end61.out_crit_edge1101:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end61.if.end92_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

do.body80:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m81) #11
  %119 = ptrtoint ptr %_m81 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 1152921504606846976, ptr %_m81, align 8
  %conv85 = sext i32 %ret.0 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m81, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1692, ptr noundef nonnull @.str.6, i64 noundef %conv85) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m81) #11
  br label %out

if.end92:                                         ; preds = %if.end61.if.end92_crit_edge, %do.end9.i.if.end92_crit_edge, %if.end52.if.end92_crit_edge
  %call93 = call i32 @ocfs2_check_range_for_refcount(ptr noundef %1, i64 noundef %pos, i32 noundef %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.else124

if.then96:                                        ; preds = %if.end92
  %120 = zext i32 %call93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call93, label %do.body113 [
    i32 -512, label %if.then96.out_crit_edge
    i32 -4, label %if.then96.out_crit_edge1105
    i32 -28, label %if.then96.out_crit_edge1106
    i32 -122, label %if.then96.out_crit_edge1107
  ]

if.then96.out_crit_edge1107:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then96.out_crit_edge1106:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then96.out_crit_edge1105:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then96.out_crit_edge:                          ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body113:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m114) #11
  %121 = ptrtoint ptr %_m114 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 1152921504606846976, ptr %_m114, align 8
  %conv118 = sext i32 %call93 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m114, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1699, ptr noundef nonnull @.str.6, i64 noundef %conv118) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m114) #11
  br label %out

if.else124:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call93)
  %cmp125 = icmp eq i32 %call93, 1
  br i1 %cmp125, label %if.then127, label %if.else124.if.end161_crit_edge

if.else124.if.end161_crit_edge:                   ; preds = %if.else124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

if.then127:                                       ; preds = %if.else124
  %122 = ptrtoint ptr %w_clen.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %w_clen.i, align 4
  %124 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %call7.i.i.i, align 8
  %call129 = call i32 @ocfs2_refcount_cow(ptr noundef %1, ptr noundef %di_bh, i32 noundef %125, i32 noundef %123, i32 noundef -1) #11
  %126 = zext i32 %call129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call129, label %do.body148 [
    i32 0, label %if.then127.if.end161_crit_edge
    i32 -512, label %if.then127.out_crit_edge
    i32 -4, label %if.then127.out_crit_edge1108
    i32 524289, label %if.then127.out_crit_edge1109
    i32 -28, label %if.then127.out_crit_edge1110
    i32 -122, label %if.then127.out_crit_edge1111
  ]

if.then127.out_crit_edge1111:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then127.out_crit_edge1110:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then127.out_crit_edge1109:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then127.out_crit_edge1108:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then127.out_crit_edge:                         ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then127.if.end161_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

do.body148:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m149) #11
  %127 = ptrtoint ptr %_m149 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 1152921504606846976, ptr %_m149, align 8
  %conv153 = sext i32 %call129 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m149, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1706, ptr noundef nonnull @.str.6, i64 noundef %conv153) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m149) #11
  br label %out

if.end161:                                        ; preds = %if.then127.if.end161_crit_edge, %if.else124.if.end161_crit_edge
  %clusters_need.1 = phi i32 [ %123, %if.then127.if.end161_crit_edge ], [ %clusters_need.0, %if.else124.if.end161_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_clusters.i) #11
  %128 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %num_clusters.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_flags.i) #11
  %129 = ptrtoint ptr %ext_flags.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %ext_flags.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #11
  %130 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %phys.i, align 4
  %131 = ptrtoint ptr %w_clen.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %w_clen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp159.not.i = icmp eq i32 %132, 0
  br i1 %cmp159.not.i, label %if.end161.ocfs2_populate_write_desc.exit.thread_crit_edge, label %for.body.lr.ph.i

if.end161.ocfs2_populate_write_desc.exit.thread_crit_edge: ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_populate_write_desc.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end161
  %w_unwritten_count.i.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end107.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %clusters_to_alloc.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %clusters_to_alloc.1, %if.end107.i.for.body.i_crit_edge ]
  %extents_to_split.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %extents_to_split.1887, %if.end107.i.for.body.i_crit_edge ]
  %133 = phi i32 [ 0, %for.body.lr.ph.i ], [ %dec.i, %if.end107.i.for.body.i_crit_edge ]
  %i.0160.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc108.i, %if.end107.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i
  %134 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %call7.i.i.i, align 8
  %add.i679 = add i32 %135, %i.0160.i
  %136 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %add.i679, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp1.i = icmp eq i32 %133, 0
  br i1 %cmp1.i, label %if.then.i680, label %if.else.i

if.then.i680:                                     ; preds = %for.body.i
  %call.i = call i32 @ocfs2_get_clusters(ptr noundef %1, i32 noundef %add.i679, ptr noundef nonnull %phys.i, ptr noundef nonnull %num_clusters.i, ptr noundef nonnull %ext_flags.i) #11
  %137 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call.i, label %do.body.i682 [
    i32 0, label %do.body17.i
    i32 -512, label %if.then.i680.ocfs2_populate_write_desc.exit_crit_edge
    i32 -4, label %if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1112
    i32 524289, label %if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1113
    i32 -28, label %if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1114
    i32 -122, label %if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1115
  ]

if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1115: ; preds = %if.then.i680
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_populate_write_desc.exit

if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1114: ; preds = %if.then.i680
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_populate_write_desc.exit

if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1113: ; preds = %if.then.i680
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_populate_write_desc.exit

if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1112: ; preds = %if.then.i680
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_populate_write_desc.exit

if.then.i680.ocfs2_populate_write_desc.exit_crit_edge: ; preds = %if.then.i680
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_populate_write_desc.exit

do.body.i682:                                     ; preds = %if.then.i680
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i676) #11
  %138 = ptrtoint ptr %_m.i676 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 1152921504606846976, ptr %_m.i676, align 8
  %conv.i681 = sext i32 %call.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i676, ptr noundef nonnull @__func__.ocfs2_populate_write_desc, i32 noundef 1409, ptr noundef nonnull @.str.6, i64 noundef %conv.i681) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i676) #11
  br label %ocfs2_populate_write_desc.exit

do.body17.i:                                      ; preds = %if.then.i680
  %139 = ptrtoint ptr %ext_flags.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ext_flags.i, align 4
  %and18.i = and i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %do.end31.i, label %do.body23.i, !prof !137

do.body23.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1414, 0\0A.popsection", ""() #11, !srcloc !166
  unreachable

do.end31.i:                                       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  %and32.i = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %add35.i = add i32 %extents_to_split.0, 2
  %spec.select = select i1 %tobool33.not.i, i32 %extents_to_split.0, i32 %add35.i
  %141 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pr.i.pr = load i32, ptr %phys.i, align 4
  br label %if.end40.i

if.else.i:                                        ; preds = %for.body.i
  %142 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool37.not.i = icmp eq i32 %143, 0
  br i1 %tobool37.not.i, label %if.end40.i.thread, label %if.then38.i

if.then38.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i = add i32 %143, 1
  %144 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %inc.i, ptr %phys.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %do.end31.i
  %.pr.i = phi i32 [ %.pr.i.pr, %do.end31.i ], [ %inc.i, %if.then38.i ]
  %extents_to_split.1 = phi i32 [ %spec.select, %do.end31.i ], [ %extents_to_split.0, %if.then38.i ]
  %145 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i, align 4
  %147 = ptrtoint ptr %w_first_new_cpos.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %w_first_new_cpos.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %148)
  %cmp42.not.i = icmp ult i32 %146, %148
  br i1 %cmp42.not.i, label %if.end64.i, label %do.body45.i

if.end40.i.thread:                                ; preds = %if.else.i
  %149 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.i, align 4
  %151 = ptrtoint ptr %w_first_new_cpos.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %w_first_new_cpos.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %152)
  %cmp42.not.i884 = icmp ult i32 %150, %152
  br i1 %cmp42.not.i884, label %if.end64.i.thread, label %if.end40.i.thread.do.body55.i_crit_edge

if.end40.i.thread.do.body55.i_crit_edge:          ; preds = %if.end40.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55.i

if.end64.i.thread:                                ; preds = %if.end40.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  %c_phys.i895 = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 1
  %153 = ptrtoint ptr %c_phys.i895 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %c_phys.i895, align 4
  br label %if.then67.i

do.body45.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp46.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp46.i, label %do.body45.i.do.body55.i_crit_edge, label %if.end64.thread.i, !prof !134

do.body45.i.do.body55.i_crit_edge:                ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55.i

do.body55.i:                                      ; preds = %do.body45.i.do.body55.i_crit_edge, %if.end40.i.thread.do.body55.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1442, 0\0A.popsection", ""() #11, !srcloc !167
  unreachable

if.end64.thread.i:                                ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #13
  %c_needs_zero.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 4
  %154 = ptrtoint ptr %c_needs_zero.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %c_needs_zero.i, align 4
  %c_phys147.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 1
  %155 = ptrtoint ptr %c_phys147.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %.pr.i, ptr %c_phys147.i, align 4
  br label %if.end70.i

if.end64.i:                                       ; preds = %if.end40.i
  %c_phys.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 1
  %156 = ptrtoint ptr %c_phys.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %.pr.i, ptr %c_phys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp65.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp65.i, label %if.end64.i.if.then67.i_crit_edge, label %if.end64.i.if.end70.i_crit_edge

if.end64.i.if.end70.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.end64.i.if.then67.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then67.i

if.then67.i:                                      ; preds = %if.end64.i.if.then67.i_crit_edge, %if.end64.i.thread
  %extents_to_split.1889897 = phi i32 [ %extents_to_split.0, %if.end64.i.thread ], [ %extents_to_split.1, %if.end64.i.if.then67.i_crit_edge ]
  %c_new.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 2
  %157 = ptrtoint ptr %c_new.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %c_new.i, align 4
  %c_needs_zero68.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 4
  %158 = ptrtoint ptr %c_needs_zero68.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1, ptr %c_needs_zero68.i, align 4
  %c_clear_unwritten.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 3
  %159 = ptrtoint ptr %c_clear_unwritten.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1, ptr %c_clear_unwritten.i, align 4
  %add69.i = add i32 %clusters_to_alloc.0, 1
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then67.i, %if.end64.i.if.end70.i_crit_edge, %if.end64.thread.i
  %extents_to_split.1887 = phi i32 [ %extents_to_split.1889897, %if.then67.i ], [ %extents_to_split.1, %if.end64.i.if.end70.i_crit_edge ], [ %extents_to_split.1, %if.end64.thread.i ]
  %clusters_to_alloc.1 = phi i32 [ %add69.i, %if.then67.i ], [ %clusters_to_alloc.0, %if.end64.i.if.end70.i_crit_edge ], [ %clusters_to_alloc.0, %if.end64.thread.i ]
  %160 = ptrtoint ptr %ext_flags.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %ext_flags.i, align 4
  %and71.i = and i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.end70.i.if.end76.i_crit_edge, label %if.then73.i

if.end70.i.if.end76.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76.i

if.then73.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  %c_clear_unwritten74.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 3
  %162 = ptrtoint ptr %c_clear_unwritten74.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 1, ptr %c_clear_unwritten74.i, align 4
  %c_needs_zero75.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 4
  %163 = ptrtoint ptr %c_needs_zero75.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %c_needs_zero75.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then73.i, %if.end70.i.if.end76.i_crit_edge
  %c_needs_zero.i.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 4
  %164 = ptrtoint ptr %c_needs_zero.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %c_needs_zero.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool.not.i.i683 = icmp eq i32 %165, 0
  br i1 %tobool.not.i.i683, label %if.end76.i.if.end107.i_crit_edge, label %if.end76.i.retry.i.i_crit_edge

if.end76.i.retry.i.i_crit_edge:                   ; preds = %if.end76.i
  br label %retry.i.i

if.end76.i.if.end107.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107.i

retry.i.i:                                        ; preds = %if.then27.i.i.retry.i.i_crit_edge, %if.end76.i.retry.i.i_crit_edge
  %new.0.i.i = phi ptr [ %call7.i.i.i685, %if.then27.i.i.retry.i.i_crit_edge ], [ null, %if.end76.i.retry.i.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef %ip_lock.i.i) #11
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %retry.i.i
  %.pn.in.i.i = phi ptr [ %ip_unwritten_list.i.i, %retry.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %166 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ip_unwritten_list.i.i
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %167 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx.i, align 4
  %ue_cpos.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %169 = ptrtoint ptr %ue_cpos.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %ue_cpos.i.i, align 4
  %cmp2.i.i = icmp eq i32 %168, %170
  br i1 %cmp2.i.i, label %do.body.i.i684, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

do.body.i.i684:                                   ; preds = %for.body.i.i
  %c_new.i.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 2
  %171 = ptrtoint ptr %c_new.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %c_new.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool4.not.i.i = icmp eq i32 %172, 0
  br i1 %tobool4.not.i.i, label %do.end15.i.i, label %do.body9.i.i, !prof !137

do.body9.i.i:                                     ; preds = %do.body.i.i684
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1340, 0\0A.popsection", ""() #11, !srcloc !168
  unreachable

do.end15.i.i:                                     ; preds = %do.body.i.i684
  call void @__sanitizer_cov_trace_pc() #13
  %173 = ptrtoint ptr %c_needs_zero.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %c_needs_zero.i.i, align 4
  %c_clear_unwritten.i.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 3
  %174 = ptrtoint ptr %c_clear_unwritten.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %c_clear_unwritten.i.i, align 4
  br label %ocfs2_unwritten_check.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %175 = ptrtoint ptr %w_type.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %w_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %176)
  %cmp23.not.i.i = icmp eq i32 %176, 1
  br i1 %cmp23.not.i.i, label %if.end25.i.i, label %for.end.i.i.ocfs2_unwritten_check.exit.i_crit_edge

for.end.i.i.ocfs2_unwritten_check.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_unwritten_check.exit.i

if.end25.i.i:                                     ; preds = %for.end.i.i
  %cmp26.i.i = icmp eq ptr %new.0.i.i, null
  br i1 %cmp26.i.i, label %if.then27.i.i, label %if.end33.i.i

if.then27.i.i:                                    ; preds = %if.end25.i.i
  call void @_raw_spin_unlock(ptr noundef %ip_lock.i.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %177 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i685 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %177, i32 noundef 3136, i32 noundef 24) #15
  %cmp30.i.i = icmp eq ptr %call7.i.i.i685, null
  br i1 %cmp30.i.i, label %ocfs2_populate_write_desc.exit.thread770, label %if.then27.i.i.retry.i.i_crit_edge

if.then27.i.i.retry.i.i_crit_edge:                ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %retry.i.i

if.end33.i.i:                                     ; preds = %if.end25.i.i
  %178 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx.i, align 4
  %ue_cpos35.i.i = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %new.0.i.i, i32 0, i32 2
  %180 = ptrtoint ptr %ue_cpos35.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %ue_cpos35.i.i, align 8
  %c_phys.i.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 1
  %181 = ptrtoint ptr %c_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %c_phys.i.i, align 4
  %ue_phys.i.i = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %new.0.i.i, i32 0, i32 3
  %183 = ptrtoint ptr %ue_phys.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %ue_phys.i.i, align 4
  %c_clear_unwritten36.i.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0160.i, i32 3
  %184 = ptrtoint ptr %c_clear_unwritten36.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %c_clear_unwritten36.i.i, align 4
  %ue_ip_node37.i.i = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %new.0.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i686 = call zeroext i1 @__list_add_valid(ptr noundef %ue_ip_node37.i.i, ptr noundef %186, ptr noundef %ip_unwritten_list.i.i) #11
  br i1 %call.i.i.i.i686, label %if.end.i.i.i.i687, label %if.end33.i.i.list_add_tail.exit.i.i_crit_edge

if.end33.i.i.list_add_tail.exit.i.i_crit_edge:    ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i687:                                ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %187 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %ue_ip_node37.i.i, ptr %prev.i.i.i, align 4
  %188 = ptrtoint ptr %ue_ip_node37.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %ip_unwritten_list.i.i, ptr %ue_ip_node37.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %new.0.i.i, i32 0, i32 1, i32 1
  %189 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %186, ptr %prev3.i.i.i.i, align 4
  %190 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile ptr %ue_ip_node37.i.i, ptr %186, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i687, %if.end33.i.i.list_add_tail.exit.i.i_crit_edge
  %191 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %prev.i.i, align 8
  %call.i.i66.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %new.0.i.i, ptr noundef %192, ptr noundef %w_unwritten_list.i) #11
  br i1 %call.i.i66.i.i, label %if.end.i.i68.i.i, label %list_add_tail.exit.i.i.list_add_tail.exit69.i.i_crit_edge

list_add_tail.exit.i.i.list_add_tail.exit69.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit69.i.i

if.end.i.i68.i.i:                                 ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %193 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %new.0.i.i, ptr %prev.i.i, align 8
  %194 = ptrtoint ptr %new.0.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %w_unwritten_list.i, ptr %new.0.i.i, align 8
  %prev3.i.i67.i.i = getelementptr inbounds %struct.list_head, ptr %new.0.i.i, i32 0, i32 1
  %195 = ptrtoint ptr %prev3.i.i67.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %192, ptr %prev3.i.i67.i.i, align 4
  %196 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %new.0.i.i, ptr %192, align 4
  br label %list_add_tail.exit69.i.i

list_add_tail.exit69.i.i:                         ; preds = %if.end.i.i68.i.i, %list_add_tail.exit.i.i.list_add_tail.exit69.i.i_crit_edge
  %197 = ptrtoint ptr %w_unwritten_count.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %w_unwritten_count.i.i, align 4
  %inc.i.i = add i32 %198, 1
  store i32 %inc.i.i, ptr %w_unwritten_count.i.i, align 4
  br label %ocfs2_unwritten_check.exit.i

ocfs2_unwritten_check.exit.i:                     ; preds = %list_add_tail.exit69.i.i, %for.end.i.i.ocfs2_unwritten_check.exit.i_crit_edge, %do.end15.i.i
  %new.1.i.i = phi ptr [ %new.0.i.i, %do.end15.i.i ], [ null, %list_add_tail.exit69.i.i ], [ %new.0.i.i, %for.end.i.i.ocfs2_unwritten_check.exit.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %ip_lock.i.i) #11
  call void @kfree(ptr noundef %new.1.i.i) #11
  br label %if.end107.i

ocfs2_populate_write_desc.exit.thread770:         ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef null) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m97.i) #11
  %199 = ptrtoint ptr %_m97.i to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 1152921504606846976, ptr %_m97.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m97.i, ptr noundef nonnull @__func__.ocfs2_populate_write_desc, i32 noundef 1461, ptr noundef nonnull @.str.6, i64 noundef -12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m97.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_flags.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clusters.i) #11
  br label %do.body181

if.end107.i:                                      ; preds = %ocfs2_unwritten_check.exit.i, %if.end76.i.if.end107.i_crit_edge
  %200 = ptrtoint ptr %num_clusters.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %num_clusters.i, align 4
  %dec.i = add i32 %201, -1
  store i32 %dec.i, ptr %num_clusters.i, align 4
  %inc108.i = add nuw i32 %i.0160.i, 1
  %202 = ptrtoint ptr %w_clen.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %w_clen.i, align 4
  %cmp.i688 = icmp ult i32 %inc108.i, %203
  br i1 %cmp.i688, label %if.end107.i.for.body.i_crit_edge, label %if.end107.i.ocfs2_populate_write_desc.exit.thread_crit_edge

if.end107.i.ocfs2_populate_write_desc.exit.thread_crit_edge: ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_populate_write_desc.exit.thread

if.end107.i.for.body.i_crit_edge:                 ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

ocfs2_populate_write_desc.exit.thread:            ; preds = %if.end107.i.ocfs2_populate_write_desc.exit.thread_crit_edge, %if.end161.ocfs2_populate_write_desc.exit.thread_crit_edge
  %clusters_to_alloc.2.ph = phi i32 [ 0, %if.end161.ocfs2_populate_write_desc.exit.thread_crit_edge ], [ %clusters_to_alloc.1, %if.end107.i.ocfs2_populate_write_desc.exit.thread_crit_edge ]
  %extents_to_split.2.ph = phi i32 [ 0, %if.end161.ocfs2_populate_write_desc.exit.thread_crit_edge ], [ %extents_to_split.1887, %if.end107.i.ocfs2_populate_write_desc.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_flags.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clusters.i) #11
  br label %if.end192

ocfs2_populate_write_desc.exit:                   ; preds = %do.body.i682, %if.then.i680.ocfs2_populate_write_desc.exit_crit_edge, %if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1112, %if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1113, %if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1114, %if.then.i680.ocfs2_populate_write_desc.exit_crit_edge1115
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_flags.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clusters.i) #11
  %204 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call.i, label %ocfs2_populate_write_desc.exit.do.body181_crit_edge [
    i32 0, label %ocfs2_populate_write_desc.exit.if.end192_crit_edge
    i32 -512, label %ocfs2_populate_write_desc.exit.out_crit_edge
    i32 -4, label %ocfs2_populate_write_desc.exit.out_crit_edge1116
    i32 524289, label %ocfs2_populate_write_desc.exit.out_crit_edge1117
    i32 -28, label %ocfs2_populate_write_desc.exit.out_crit_edge1118
    i32 -122, label %ocfs2_populate_write_desc.exit.out_crit_edge1119
  ]

ocfs2_populate_write_desc.exit.out_crit_edge1119: ; preds = %ocfs2_populate_write_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ocfs2_populate_write_desc.exit.out_crit_edge1118: ; preds = %ocfs2_populate_write_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ocfs2_populate_write_desc.exit.out_crit_edge1117: ; preds = %ocfs2_populate_write_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ocfs2_populate_write_desc.exit.out_crit_edge1116: ; preds = %ocfs2_populate_write_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ocfs2_populate_write_desc.exit.out_crit_edge:     ; preds = %ocfs2_populate_write_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ocfs2_populate_write_desc.exit.if.end192_crit_edge: ; preds = %ocfs2_populate_write_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end192

ocfs2_populate_write_desc.exit.do.body181_crit_edge: ; preds = %ocfs2_populate_write_desc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body181

do.body181:                                       ; preds = %ocfs2_populate_write_desc.exit.do.body181_crit_edge, %ocfs2_populate_write_desc.exit.thread770
  %ret.0.i689774 = phi i32 [ -12, %ocfs2_populate_write_desc.exit.thread770 ], [ %call.i, %ocfs2_populate_write_desc.exit.do.body181_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m182) #11
  %205 = ptrtoint ptr %_m182 to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 1152921504606846976, ptr %_m182, align 8
  %conv186 = sext i32 %ret.0.i689774 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m182, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1714, ptr noundef nonnull @.str.6, i64 noundef %conv186) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m182) #11
  br label %out

if.end192:                                        ; preds = %ocfs2_populate_write_desc.exit.if.end192_crit_edge, %ocfs2_populate_write_desc.exit.thread
  %extents_to_split.2768 = phi i32 [ %extents_to_split.2.ph, %ocfs2_populate_write_desc.exit.thread ], [ %extents_to_split.0, %ocfs2_populate_write_desc.exit.if.end192_crit_edge ]
  %clusters_to_alloc.2766 = phi i32 [ %clusters_to_alloc.2.ph, %ocfs2_populate_write_desc.exit.thread ], [ %clusters_to_alloc.0, %ocfs2_populate_write_desc.exit.if.end192_crit_edge ]
  %add = add i32 %clusters_to_alloc.2766, %clusters_need.1
  %206 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %w_di_bh.i, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %207, i32 0, i32 5
  %208 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %b_data, align 4
  %210 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %add.ptr.i.i, align 8
  %call194 = call fastcc i64 @i_size_read(ptr noundef %1)
  %i_clusters = getelementptr inbounds %struct.ocfs2_dinode, ptr %209, i32 0, i32 6
  %212 = ptrtoint ptr %i_clusters to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %i_clusters, align 4
  %214 = call i32 @llvm.bswap.i32(i32 %213)
  call fastcc void @trace_ocfs2_write_begin_nolock(i64 noundef %211, i64 noundef %call194, i32 noundef %214, i64 noundef %pos, i32 noundef %len, i32 noundef %type, ptr noundef %mmap_page, i32 noundef %clusters_to_alloc.2766, i32 noundef %extents_to_split.2768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clusters_to_alloc.2766)
  %tobool195.not = icmp eq i32 %clusters_to_alloc.2766, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extents_to_split.2768)
  %tobool196.not = icmp eq i32 %extents_to_split.2768, 0
  %or.cond785 = select i1 %tobool195.not, i1 %tobool196.not, i1 false
  br i1 %or.cond785, label %if.else237, label %if.then197

if.then197:                                       ; preds = %if.end192
  %215 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %w_di_bh.i, align 8
  call void @ocfs2_init_dinode_extent_tree(ptr noundef nonnull %et, ptr noundef %ip_metadata_cache.i.i.i, ptr noundef %216) #11
  %call200 = call i32 @ocfs2_lock_allocators(ptr noundef %1, ptr noundef nonnull %et, i32 noundef %clusters_to_alloc.2766, i32 noundef %extents_to_split.2768, ptr noundef nonnull %data_ac, ptr noundef nonnull %meta_ac) #11
  %217 = zext i32 %call200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call200, label %do.body219 [
    i32 0, label %if.end230
    i32 -512, label %if.then197.out_crit_edge
    i32 -4, label %if.then197.out_crit_edge1120
    i32 524289, label %if.then197.out_crit_edge1121
    i32 -28, label %if.then197.out_crit_edge1122
    i32 -122, label %if.then197.out_crit_edge1123
  ]

if.then197.out_crit_edge1123:                     ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then197.out_crit_edge1122:                     ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then197.out_crit_edge1121:                     ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then197.out_crit_edge1120:                     ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then197.out_crit_edge:                         ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body219:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m220) #11
  %218 = ptrtoint ptr %_m220 to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 1152921504606846976, ptr %_m220, align 8
  %conv224 = sext i32 %call200 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m220, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1746, ptr noundef nonnull @.str.6, i64 noundef %conv224) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m220) #11
  br label %out

if.end230:                                        ; preds = %if.then197
  %219 = ptrtoint ptr %data_ac to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %data_ac, align 4
  %tobool231.not = icmp eq ptr %220, null
  br i1 %tobool231.not, label %if.end230.if.end234_crit_edge, label %if.then232

if.end230.if.end234_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end234

if.then232:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #13
  %ac_resv = getelementptr inbounds %struct.ocfs2_alloc_context, ptr %220, i32 0, i32 13
  %221 = ptrtoint ptr %ac_resv to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %ip_la_data_resv, ptr %ac_resv, align 8
  br label %if.end234

if.end234:                                        ; preds = %if.then232, %if.end230.if.end234_crit_edge
  %222 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %i_sb, align 4
  %id2 = getelementptr inbounds %struct.ocfs2_dinode, ptr %209, i32 0, i32 35
  %224 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %id2, align 8
  %226 = call i16 @llvm.bswap.i16(i16 %225) #11
  %conv.i.i691 = zext i16 %226 to i32
  %add.i.i = shl nuw nsw i32 %conv.i.i691, 1
  %s_fs_info.i.i692 = getelementptr inbounds %struct.super_block, ptr %223, i32 0, i32 33
  %227 = ptrtoint ptr %s_fs_info.i.i692 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %s_fs_info.i.i692, align 16
  %s_feature_ro_compat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %228, i32 0, i32 20
  %229 = ptrtoint ptr %s_feature_ro_compat.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %s_feature_ro_compat.i.i, align 4
  %and.i.i = and i32 %230, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i693 = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i693, i32 0, i32 3
  %and3.i.i = and i32 %230, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i694 = icmp eq i32 %and3.i.i, 0
  %add6.i.i = add nuw nsw i32 %spec.select.i.i, 3
  %credits.1.i.i = select i1 %tobool4.not.i.i694, i32 %spec.select.i.i, i32 %add6.i.i
  %add1.i = add nuw nsw i32 %conv.i.i691, 10
  %add3.i = add nuw nsw i32 %add1.i, %add.i.i
  %add5.i = add nuw nsw i32 %add3.i, %credits.1.i.i
  br label %if.end242

if.else237:                                       ; preds = %if.end192
  br i1 %cmp53.not, label %if.else237.success_crit_edge, label %if.else237.if.end242_crit_edge

if.else237.if.end242_crit_edge:                   ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end242

if.else237.success_crit_edge:                     ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #13
  br label %success

if.end242:                                        ; preds = %if.else237.if.end242_crit_edge, %if.end234
  %credits.1 = phi i32 [ %add5.i, %if.end234 ], [ %credits.0, %if.else237.if.end242_crit_edge ]
  %231 = ptrtoint ptr %w_clen.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %w_clen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool244.not = icmp eq i32 %232, 0
  br i1 %tobool244.not, label %if.end242.if.end255_crit_edge, label %land.lhs.true245

if.end242.if.end255_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

land.lhs.true245:                                 ; preds = %if.end242
  %c_needs_zero = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 4
  %233 = ptrtoint ptr %c_needs_zero to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %c_needs_zero, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool246.not = icmp eq i32 %234, 0
  br i1 %tobool246.not, label %lor.lhs.false247, label %land.lhs.true245.if.end.i699_crit_edge

land.lhs.true245.if.end.i699_crit_edge:           ; preds = %land.lhs.true245
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i699

lor.lhs.false247:                                 ; preds = %land.lhs.true245
  %sub = add i32 %232, -1
  %c_needs_zero251 = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %sub, i32 4
  %235 = ptrtoint ptr %c_needs_zero251 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %c_needs_zero251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool252.not = icmp eq i32 %236, 0
  br i1 %tobool252.not, label %lor.lhs.false247.if.end255_crit_edge, label %lor.lhs.false247.if.end.i699_crit_edge

lor.lhs.false247.if.end.i699_crit_edge:           ; preds = %lor.lhs.false247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i699

lor.lhs.false247.if.end255_crit_edge:             ; preds = %lor.lhs.false247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

if.end255:                                        ; preds = %lor.lhs.false247.if.end255_crit_edge, %if.end242.if.end255_crit_edge
  %w_target_from.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 10
  %237 = ptrtoint ptr %w_target_from.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %conv.i695776, ptr %w_target_from.i, align 4
  %w_target_to.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 11
  %238 = ptrtoint ptr %w_target_to.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %add.i696778, ptr %w_target_to.i, align 8
  br label %ocfs2_set_target_boundaries.exit

if.end.i699:                                      ; preds = %lor.lhs.false247.if.end.i699_crit_edge, %land.lhs.true245.if.end.i699_crit_edge
  %w_target_from.i777 = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 10
  %239 = ptrtoint ptr %w_target_from.i777 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %conv.i695776, ptr %w_target_from.i777, align 4
  %w_target_to.i779 = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 11
  %240 = ptrtoint ptr %w_target_to.i779 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %add.i696778, ptr %w_target_to.i779, align 8
  %241 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool.not.i698 = icmp eq i32 %242, 0
  br i1 %tobool.not.i698, label %if.else.i704, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i699
  %243 = ptrtoint ptr %c_needs_zero to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %c_needs_zero, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %tobool4.not.i = icmp eq i32 %244, 0
  br i1 %tobool4.not.i, label %if.then3.i.if.end7.i_crit_edge, label %if.then5.i

if.then3.i.if.end7.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then3.i
  %245 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %s_clustersize_bits.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %246)
  %cmp.i.i = icmp slt i32 %246, 12
  br i1 %cmp.i.i, label %do.body20.i.i, label %if.then5.i.do.end37.i.i_crit_edge, !prof !134

if.then5.i.do.end37.i.i_crit_edge:                ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end37.i.i

do.body20.i.i:                                    ; preds = %if.then5.i
  %w_desc.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4
  %247 = ptrtoint ptr %w_desc.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %w_desc.i, align 8
  %249 = shl i32 %248, %246
  %shl4.i.i = and i32 %249, 4095
  %250 = ptrtoint ptr %s_clustersize.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %s_clustersize.i.i, align 4
  %add.i.i701 = add i32 %shl4.i.i, %251
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i701)
  %cmp21.i.i = icmp ugt i32 %add.i.i701, 4096
  br i1 %cmp21.i.i, label %do.body29.i.i, label %do.body20.i.i.do.end37.i.i_crit_edge, !prof !134

do.body20.i.i.do.end37.i.i_crit_edge:             ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end37.i.i

do.body29.i.i:                                    ; preds = %do.body20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #11, !srcloc !169
  unreachable

do.end37.i.i:                                     ; preds = %do.body20.i.i.do.end37.i.i_crit_edge, %if.then5.i.do.end37.i.i_crit_edge
  %cluster_start.057.i.i = phi i32 [ %shl4.i.i, %do.body20.i.i.do.end37.i.i_crit_edge ], [ 0, %if.then5.i.do.end37.i.i_crit_edge ]
  %252 = ptrtoint ptr %w_target_from.i777 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %cluster_start.057.i.i, ptr %w_target_from.i777, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end37.i.i, %if.then3.i.if.end7.i_crit_edge
  %253 = ptrtoint ptr %w_clen.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %w_clen.i, align 4
  %sub.i703 = add i32 %254, -1
  %c_needs_zero10.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %sub.i703, i32 4
  %255 = ptrtoint ptr %c_needs_zero10.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %c_needs_zero10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool11.not.i = icmp eq i32 %256, 0
  br i1 %tobool11.not.i, label %if.end7.i.ocfs2_set_target_boundaries.exit_crit_edge, label %if.then12.i

if.end7.i.ocfs2_set_target_boundaries.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_set_target_boundaries.exit

if.then12.i:                                      ; preds = %if.end7.i
  %257 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %s_clustersize_bits.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %258)
  %cmp.i34.i = icmp slt i32 %258, 12
  br i1 %cmp.i34.i, label %do.body20.i39.i, label %if.then12.i.cleanup.sink.split.i_crit_edge, !prof !134

if.then12.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

do.body20.i39.i:                                  ; preds = %if.then12.i
  %arrayidx9.i = getelementptr %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 4, i32 %sub.i703
  %259 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %arrayidx9.i, align 4
  %261 = shl i32 %260, %258
  %shl4.i35.i = and i32 %261, 4095
  %262 = ptrtoint ptr %s_clustersize.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %s_clustersize.i.i, align 4
  %add.i37.i = add i32 %shl4.i35.i, %263
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i37.i)
  %cmp21.i38.i = icmp ugt i32 %add.i37.i, 4096
  br i1 %cmp21.i38.i, label %do.body29.i40.i, label %do.body20.i39.i.cleanup.sink.split.i_crit_edge, !prof !134

do.body20.i39.i.cleanup.sink.split.i_crit_edge:   ; preds = %do.body20.i39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

do.body29.i40.i:                                  ; preds = %do.body20.i39.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #11, !srcloc !169
  unreachable

if.else.i704:                                     ; preds = %if.end.i699
  call void @__sanitizer_cov_trace_pc() #13
  %264 = ptrtoint ptr %w_target_from.i777 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %w_target_from.i777, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i704, %do.body20.i39.i.cleanup.sink.split.i_crit_edge, %if.then12.i.cleanup.sink.split.i_crit_edge
  %cluster_end.056.i42.sink.i = phi i32 [ 4096, %if.else.i704 ], [ %add.i37.i, %do.body20.i39.i.cleanup.sink.split.i_crit_edge ], [ 4096, %if.then12.i.cleanup.sink.split.i_crit_edge ]
  %265 = ptrtoint ptr %w_target_to.i779 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %cluster_end.056.i42.sink.i, ptr %w_target_to.i779, align 8
  br label %ocfs2_set_target_boundaries.exit

ocfs2_set_target_boundaries.exit:                 ; preds = %cleanup.sink.split.i, %if.end7.i.ocfs2_set_target_boundaries.exit_crit_edge, %if.end255
  %cluster_of_pages.0782 = phi i32 [ 0, %if.end255 ], [ 1, %if.end7.i.ocfs2_set_target_boundaries.exit_crit_edge ], [ 1, %cleanup.sink.split.i ]
  %call256 = call ptr @ocfs2_start_trans(ptr noundef %5, i32 noundef %credits.1) #11
  %cmp.i705 = icmp ugt ptr %call256, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i705, label %if.then258, label %if.end287

if.then258:                                       ; preds = %ocfs2_set_target_boundaries.exit
  %266 = ptrtoint ptr %call256 to i32
  %267 = zext i32 %266 to i64
  call void @__sanitizer_cov_trace_switch(i64 %267, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %266, label %do.body276 [
    i32 -512, label %if.then258.out_crit_edge
    i32 -4, label %if.then258.out_crit_edge1124
    i32 524289, label %if.then258.out_crit_edge1125
    i32 -28, label %if.then258.out_crit_edge1126
    i32 -122, label %if.then258.out_crit_edge1127
  ]

if.then258.out_crit_edge1127:                     ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then258.out_crit_edge1126:                     ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then258.out_crit_edge1125:                     ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then258.out_crit_edge1124:                     ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then258.out_crit_edge:                         ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body276:                                       ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m277) #11
  %268 = ptrtoint ptr %_m277 to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 1152921504606846976, ptr %_m277, align 8
  %conv281 = sext i32 %266 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m277, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1775, ptr noundef nonnull @.str.6, i64 noundef %conv281) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m277) #11
  br label %out

if.end287:                                        ; preds = %ocfs2_set_target_boundaries.exit
  %w_handle = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 12
  %269 = ptrtoint ptr %w_handle to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call256, ptr %w_handle, align 4
  br i1 %tobool195.not, label %if.end287.if.end295_crit_edge, label %if.then289

if.end287.if.end295_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end295

if.then289:                                       ; preds = %if.end287
  %270 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %sb, align 4
  %conv.i706 = zext i32 %clusters_to_alloc.2766 to i64
  %s_fs_info.i707 = getelementptr inbounds %struct.super_block, ptr %271, i32 0, i32 33
  %272 = ptrtoint ptr %s_fs_info.i707 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %s_fs_info.i707, align 16
  %s_clustersize_bits.i708 = getelementptr inbounds %struct.ocfs2_super, ptr %273, i32 0, i32 36
  %274 = ptrtoint ptr %s_clustersize_bits.i708 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %s_clustersize_bits.i708, align 8
  %sh_prom.i709 = zext i32 %275 to i64
  %shl.i = shl i64 %conv.i706, %sh_prom.i709
  %call.i710 = call i32 @__dquot_alloc_space(ptr noundef %1, i64 noundef %shl.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i710)
  %tobool292.not = icmp eq i32 %call.i710, 0
  br i1 %tobool292.not, label %if.then289.if.end295_crit_edge, label %if.then289.out_commit_crit_edge

if.then289.out_commit_crit_edge:                  ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_commit

if.then289.if.end295_crit_edge:                   ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end295

if.end295:                                        ; preds = %if.then289.if.end295_crit_edge, %if.end287.if.end295_crit_edge
  %276 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %w_di_bh.i, align 8
  %call298 = call i32 @ocfs2_journal_access_di(ptr noundef %call256, ptr noundef %ip_metadata_cache.i.i.i, ptr noundef %277, i32 noundef 1) #11
  %278 = zext i32 %call298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %278, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call298, label %do.body317 [
    i32 0, label %if.end328
    i32 -512, label %if.end295.out_quota_crit_edge
    i32 -4, label %if.end295.out_quota_crit_edge1128
    i32 524289, label %if.end295.out_quota_crit_edge1129
    i32 -28, label %if.end295.out_quota_crit_edge1130
    i32 -122, label %if.end295.out_quota_crit_edge1131
  ]

if.end295.out_quota_crit_edge1131:                ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end295.out_quota_crit_edge1130:                ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end295.out_quota_crit_edge1129:                ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end295.out_quota_crit_edge1128:                ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end295.out_quota_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

do.body317:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m318) #11
  %279 = ptrtoint ptr %_m318 to i32
  call void @__asan_store8_noabort(i32 %279)
  store i64 1152921504606846976, ptr %_m318, align 8
  %conv322 = sext i32 %call298 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m318, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1791, ptr noundef nonnull @.str.6, i64 noundef %conv322) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m318) #11
  br label %out_quota

if.end328:                                        ; preds = %if.end295
  %280 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %call7.i.i.i, align 8
  %call330 = call fastcc i32 @ocfs2_grab_pages_for_write(ptr noundef %mapping, ptr noundef %call7.i.i.i, i32 noundef %281, i64 noundef %pos, i32 noundef %len, i32 noundef %cluster_of_pages.0782, ptr noundef %mmap_page)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %if.end381, label %if.then332

if.then332:                                       ; preds = %if.end328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call330)
  %cmp336 = icmp eq i32 %call330, -11
  %or.cond = select i1 %cmp333, i1 %cmp336, i1 false
  br i1 %or.cond, label %do.body339, label %if.end353

do.body339:                                       ; preds = %if.then332
  %w_target_page = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 8
  %282 = ptrtoint ptr %w_target_page to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %w_target_page, align 4
  %tobool340.not = icmp eq ptr %283, null
  br i1 %tobool340.not, label %do.body339.out_quota_crit_edge, label %do.body344, !prof !137

do.body339.out_quota_crit_edge:                   ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

do.body344:                                       ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1810, 0\0A.popsection", ""() #11, !srcloc !170
  unreachable

if.end353:                                        ; preds = %if.then332
  %284 = zext i32 %call330 to i64
  call void @__sanitizer_cov_trace_switch(i64 %284, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call330, label %do.body370 [
    i32 -512, label %if.end353.out_quota_crit_edge
    i32 -4, label %if.end353.out_quota_crit_edge1132
    i32 524289, label %if.end353.out_quota_crit_edge1133
    i32 -28, label %if.end353.out_quota_crit_edge1134
    i32 -122, label %if.end353.out_quota_crit_edge1135
  ]

if.end353.out_quota_crit_edge1135:                ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end353.out_quota_crit_edge1134:                ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end353.out_quota_crit_edge1133:                ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end353.out_quota_crit_edge1132:                ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end353.out_quota_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

do.body370:                                       ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m371) #11
  %285 = ptrtoint ptr %_m371 to i32
  call void @__asan_store8_noabort(i32 %285)
  store i64 1152921504606846976, ptr %_m371, align 8
  %conv375 = sext i32 %call330 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m371, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1815, ptr noundef nonnull @.str.6, i64 noundef %conv375) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m371) #11
  br label %out_quota

if.end381:                                        ; preds = %if.end328
  %286 = ptrtoint ptr %data_ac to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %data_ac, align 4
  %288 = ptrtoint ptr %meta_ac to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %meta_ac, align 4
  %call382 = call fastcc i32 @ocfs2_write_cluster_by_desc(ptr noundef %mapping, ptr noundef %287, ptr noundef %289, ptr noundef %call7.i.i.i, i64 noundef %pos, i32 noundef %len)
  %290 = zext i32 %call382 to i64
  call void @__sanitizer_cov_trace_switch(i64 %290, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call382, label %do.body401 [
    i32 0, label %if.end412
    i32 -512, label %if.end381.out_quota_crit_edge
    i32 -4, label %if.end381.out_quota_crit_edge1136
    i32 524289, label %if.end381.out_quota_crit_edge1137
    i32 -28, label %if.end381.out_quota_crit_edge1138
    i32 -122, label %if.end381.out_quota_crit_edge1139
  ]

if.end381.out_quota_crit_edge1139:                ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end381.out_quota_crit_edge1138:                ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end381.out_quota_crit_edge1137:                ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end381.out_quota_crit_edge1136:                ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

if.end381.out_quota_crit_edge:                    ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_quota

do.body401:                                       ; preds = %if.end381
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m402) #11
  %291 = ptrtoint ptr %_m402 to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 1152921504606846976, ptr %_m402, align 8
  %conv406 = sext i32 %call382 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m402, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1822, ptr noundef nonnull @.str.6, i64 noundef %conv406) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m402) #11
  br label %out_quota

if.end412:                                        ; preds = %if.end381
  %292 = ptrtoint ptr %data_ac to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %data_ac, align 4
  %tobool413.not = icmp eq ptr %293, null
  br i1 %tobool413.not, label %if.end412.if.end415_crit_edge, label %if.then414

if.end412.if.end415_crit_edge:                    ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end415

if.then414:                                       ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #13
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %293) #11
  br label %if.end415

if.end415:                                        ; preds = %if.then414, %if.end412.if.end415_crit_edge
  %294 = ptrtoint ptr %meta_ac to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %meta_ac, align 4
  %tobool416.not = icmp eq ptr %295, null
  br i1 %tobool416.not, label %if.end415.success_crit_edge, label %if.then417

if.end415.success_crit_edge:                      ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #13
  br label %success

if.then417:                                       ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #13
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %295) #11
  br label %success

success:                                          ; preds = %if.then417, %if.end415.success_crit_edge, %if.else237.success_crit_edge, %ocfs2_try_to_write_inline_data.exit.success_crit_edge, %ocfs2_write_begin_inline.exit.i.success_crit_edge, %ocfs2_write_begin_inline.exit.thread124.i
  %tobool419.not = icmp eq ptr %pagep, null
  br i1 %tobool419.not, label %success.if.end422_crit_edge, label %if.then420

success.if.end422_crit_edge:                      ; preds = %success
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end422

if.then420:                                       ; preds = %success
  call void @__sanitizer_cov_trace_pc() #13
  %w_target_page421 = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 8
  %296 = ptrtoint ptr %w_target_page421 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %w_target_page421, align 4
  %298 = ptrtoint ptr %pagep to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %297, ptr %pagep, align 4
  br label %if.end422

if.end422:                                        ; preds = %if.then420, %success.if.end422_crit_edge
  %299 = ptrtoint ptr %fsdata to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %call7.i.i.i, ptr %fsdata, align 4
  br label %cleanup

out_quota:                                        ; preds = %do.body401, %if.end381.out_quota_crit_edge, %if.end381.out_quota_crit_edge1136, %if.end381.out_quota_crit_edge1137, %if.end381.out_quota_crit_edge1138, %if.end381.out_quota_crit_edge1139, %do.body370, %if.end353.out_quota_crit_edge, %if.end353.out_quota_crit_edge1132, %if.end353.out_quota_crit_edge1133, %if.end353.out_quota_crit_edge1134, %if.end353.out_quota_crit_edge1135, %do.body339.out_quota_crit_edge, %do.body317, %if.end295.out_quota_crit_edge, %if.end295.out_quota_crit_edge1128, %if.end295.out_quota_crit_edge1129, %if.end295.out_quota_crit_edge1130, %if.end295.out_quota_crit_edge1131
  %ret.1 = phi i32 [ %call298, %if.end295.out_quota_crit_edge ], [ %call298, %if.end295.out_quota_crit_edge1128 ], [ %call298, %if.end295.out_quota_crit_edge1129 ], [ %call298, %if.end295.out_quota_crit_edge1130 ], [ %call298, %if.end295.out_quota_crit_edge1131 ], [ %call298, %do.body317 ], [ 0, %do.body339.out_quota_crit_edge ], [ %call330, %if.end353.out_quota_crit_edge ], [ %call330, %if.end353.out_quota_crit_edge1132 ], [ %call330, %if.end353.out_quota_crit_edge1133 ], [ %call330, %if.end353.out_quota_crit_edge1134 ], [ %call330, %if.end353.out_quota_crit_edge1135 ], [ %call330, %do.body370 ], [ %call382, %if.end381.out_quota_crit_edge ], [ %call382, %if.end381.out_quota_crit_edge1136 ], [ %call382, %if.end381.out_quota_crit_edge1137 ], [ %call382, %if.end381.out_quota_crit_edge1138 ], [ %call382, %if.end381.out_quota_crit_edge1139 ], [ %call382, %do.body401 ]
  br i1 %tobool195.not, label %out_quota.out_commit_crit_edge, label %if.then424

out_quota.out_commit_crit_edge:                   ; preds = %out_quota
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_commit

if.then424:                                       ; preds = %out_quota
  call void @__sanitizer_cov_trace_pc() #13
  %300 = ptrtoint ptr %sb to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %sb, align 4
  %conv.i712 = zext i32 %clusters_to_alloc.2766 to i64
  %s_fs_info.i713 = getelementptr inbounds %struct.super_block, ptr %301, i32 0, i32 33
  %302 = ptrtoint ptr %s_fs_info.i713 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %s_fs_info.i713, align 16
  %s_clustersize_bits.i714 = getelementptr inbounds %struct.ocfs2_super, ptr %303, i32 0, i32 36
  %304 = ptrtoint ptr %s_clustersize_bits.i714 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %s_clustersize_bits.i714, align 8
  %sh_prom.i715 = zext i32 %305 to i64
  %shl.i716 = shl i64 %conv.i712, %sh_prom.i715
  call fastcc void @dquot_free_space(ptr noundef %1, i64 noundef %shl.i716)
  br label %out_commit

out_commit:                                       ; preds = %if.then424, %out_quota.out_commit_crit_edge, %if.then289.out_commit_crit_edge
  %ret.2 = phi i32 [ %call.i710, %if.then289.out_commit_crit_edge ], [ %ret.1, %if.then424 ], [ %ret.1, %out_quota.out_commit_crit_edge ]
  %call428 = call i32 @ocfs2_commit_trans(ptr noundef %5, ptr noundef %call256) #11
  br label %out

out:                                              ; preds = %out_commit, %do.body276, %if.then258.out_crit_edge, %if.then258.out_crit_edge1124, %if.then258.out_crit_edge1125, %if.then258.out_crit_edge1126, %if.then258.out_crit_edge1127, %do.body219, %if.then197.out_crit_edge, %if.then197.out_crit_edge1120, %if.then197.out_crit_edge1121, %if.then197.out_crit_edge1122, %if.then197.out_crit_edge1123, %do.body181, %ocfs2_populate_write_desc.exit.out_crit_edge, %ocfs2_populate_write_desc.exit.out_crit_edge1116, %ocfs2_populate_write_desc.exit.out_crit_edge1117, %ocfs2_populate_write_desc.exit.out_crit_edge1118, %ocfs2_populate_write_desc.exit.out_crit_edge1119, %do.body148, %if.then127.out_crit_edge, %if.then127.out_crit_edge1108, %if.then127.out_crit_edge1109, %if.then127.out_crit_edge1110, %if.then127.out_crit_edge1111, %do.body113, %if.then96.out_crit_edge, %if.then96.out_crit_edge1105, %if.then96.out_crit_edge1106, %if.then96.out_crit_edge1107, %do.body80, %if.end61.out_crit_edge, %if.end61.out_crit_edge1101, %if.end61.out_crit_edge1102, %if.end61.out_crit_edge1103, %if.end61.out_crit_edge1104, %do.body40, %if.then23.out_crit_edge, %if.then23.out_crit_edge1098, %if.then23.out_crit_edge1099, %if.then23.out_crit_edge1100
  %clusters_need.2 = phi i32 [ %add, %out_commit ], [ %clusters_need.0, %if.then23.out_crit_edge ], [ %clusters_need.0, %if.then23.out_crit_edge1098 ], [ %clusters_need.0, %if.then23.out_crit_edge1099 ], [ %clusters_need.0, %if.then23.out_crit_edge1100 ], [ %clusters_need.0, %do.body40 ], [ %clusters_need.0, %if.end61.out_crit_edge ], [ %clusters_need.0, %if.end61.out_crit_edge1101 ], [ %clusters_need.0, %if.end61.out_crit_edge1102 ], [ %clusters_need.0, %if.end61.out_crit_edge1103 ], [ %clusters_need.0, %if.end61.out_crit_edge1104 ], [ %clusters_need.0, %do.body80 ], [ %clusters_need.0, %if.then96.out_crit_edge ], [ %clusters_need.0, %if.then96.out_crit_edge1105 ], [ %clusters_need.0, %if.then96.out_crit_edge1106 ], [ %clusters_need.0, %if.then96.out_crit_edge1107 ], [ %clusters_need.0, %do.body113 ], [ %123, %if.then127.out_crit_edge ], [ %123, %if.then127.out_crit_edge1108 ], [ %123, %if.then127.out_crit_edge1109 ], [ %123, %if.then127.out_crit_edge1110 ], [ %123, %if.then127.out_crit_edge1111 ], [ %123, %do.body148 ], [ %clusters_need.1, %ocfs2_populate_write_desc.exit.out_crit_edge ], [ %clusters_need.1, %ocfs2_populate_write_desc.exit.out_crit_edge1116 ], [ %clusters_need.1, %ocfs2_populate_write_desc.exit.out_crit_edge1117 ], [ %clusters_need.1, %ocfs2_populate_write_desc.exit.out_crit_edge1118 ], [ %clusters_need.1, %ocfs2_populate_write_desc.exit.out_crit_edge1119 ], [ %clusters_need.1, %do.body181 ], [ %add, %if.then197.out_crit_edge ], [ %add, %if.then197.out_crit_edge1120 ], [ %add, %if.then197.out_crit_edge1121 ], [ %add, %if.then197.out_crit_edge1122 ], [ %add, %if.then197.out_crit_edge1123 ], [ %add, %do.body219 ], [ %add, %if.then258.out_crit_edge ], [ %add, %if.then258.out_crit_edge1124 ], [ %add, %if.then258.out_crit_edge1125 ], [ %add, %if.then258.out_crit_edge1126 ], [ %add, %if.then258.out_crit_edge1127 ], [ %add, %do.body276 ]
  %credits.2 = phi i32 [ %credits.1, %out_commit ], [ %credits.0, %if.then23.out_crit_edge ], [ %credits.0, %if.then23.out_crit_edge1098 ], [ %credits.0, %if.then23.out_crit_edge1099 ], [ %credits.0, %if.then23.out_crit_edge1100 ], [ %credits.0, %do.body40 ], [ %credits.0, %if.end61.out_crit_edge ], [ %credits.0, %if.end61.out_crit_edge1101 ], [ %credits.0, %if.end61.out_crit_edge1102 ], [ %credits.0, %if.end61.out_crit_edge1103 ], [ %credits.0, %if.end61.out_crit_edge1104 ], [ %credits.0, %do.body80 ], [ %credits.0, %if.then96.out_crit_edge ], [ %credits.0, %if.then96.out_crit_edge1105 ], [ %credits.0, %if.then96.out_crit_edge1106 ], [ %credits.0, %if.then96.out_crit_edge1107 ], [ %credits.0, %do.body113 ], [ %credits.0, %if.then127.out_crit_edge ], [ %credits.0, %if.then127.out_crit_edge1108 ], [ %credits.0, %if.then127.out_crit_edge1109 ], [ %credits.0, %if.then127.out_crit_edge1110 ], [ %credits.0, %if.then127.out_crit_edge1111 ], [ %credits.0, %do.body148 ], [ %credits.0, %ocfs2_populate_write_desc.exit.out_crit_edge ], [ %credits.0, %ocfs2_populate_write_desc.exit.out_crit_edge1116 ], [ %credits.0, %ocfs2_populate_write_desc.exit.out_crit_edge1117 ], [ %credits.0, %ocfs2_populate_write_desc.exit.out_crit_edge1118 ], [ %credits.0, %ocfs2_populate_write_desc.exit.out_crit_edge1119 ], [ %credits.0, %do.body181 ], [ %credits.0, %if.then197.out_crit_edge ], [ %credits.0, %if.then197.out_crit_edge1120 ], [ %credits.0, %if.then197.out_crit_edge1121 ], [ %credits.0, %if.then197.out_crit_edge1122 ], [ %credits.0, %if.then197.out_crit_edge1123 ], [ %credits.0, %do.body219 ], [ %credits.1, %if.then258.out_crit_edge ], [ %credits.1, %if.then258.out_crit_edge1124 ], [ %credits.1, %if.then258.out_crit_edge1125 ], [ %credits.1, %if.then258.out_crit_edge1126 ], [ %credits.1, %if.then258.out_crit_edge1127 ], [ %credits.1, %do.body276 ]
  %ret.3 = phi i32 [ %ret.2, %out_commit ], [ %ret.0.ph.i, %if.then23.out_crit_edge ], [ %ret.0.ph.i, %if.then23.out_crit_edge1098 ], [ %ret.0.ph.i, %if.then23.out_crit_edge1099 ], [ %ret.0.ph.i, %if.then23.out_crit_edge1100 ], [ %ret.0.ph.i, %do.body40 ], [ %ret.0, %if.end61.out_crit_edge ], [ %ret.0, %if.end61.out_crit_edge1101 ], [ %ret.0, %if.end61.out_crit_edge1102 ], [ %ret.0, %if.end61.out_crit_edge1103 ], [ %ret.0, %if.end61.out_crit_edge1104 ], [ %ret.0, %do.body80 ], [ %call93, %if.then96.out_crit_edge ], [ %call93, %if.then96.out_crit_edge1105 ], [ %call93, %if.then96.out_crit_edge1106 ], [ %call93, %if.then96.out_crit_edge1107 ], [ %call93, %do.body113 ], [ %call129, %if.then127.out_crit_edge ], [ %call129, %if.then127.out_crit_edge1108 ], [ %call129, %if.then127.out_crit_edge1109 ], [ %call129, %if.then127.out_crit_edge1110 ], [ %call129, %if.then127.out_crit_edge1111 ], [ %call129, %do.body148 ], [ %call.i, %ocfs2_populate_write_desc.exit.out_crit_edge ], [ %call.i, %ocfs2_populate_write_desc.exit.out_crit_edge1116 ], [ %call.i, %ocfs2_populate_write_desc.exit.out_crit_edge1117 ], [ %call.i, %ocfs2_populate_write_desc.exit.out_crit_edge1118 ], [ %call.i, %ocfs2_populate_write_desc.exit.out_crit_edge1119 ], [ %ret.0.i689774, %do.body181 ], [ %call200, %if.then197.out_crit_edge ], [ %call200, %if.then197.out_crit_edge1120 ], [ %call200, %if.then197.out_crit_edge1121 ], [ %call200, %if.then197.out_crit_edge1122 ], [ %call200, %if.then197.out_crit_edge1123 ], [ %call200, %do.body219 ], [ %266, %if.then258.out_crit_edge ], [ %266, %if.then258.out_crit_edge1124 ], [ %266, %if.then258.out_crit_edge1125 ], [ %266, %if.then258.out_crit_edge1126 ], [ %266, %if.then258.out_crit_edge1127 ], [ %266, %do.body276 ]
  %w_target_locked = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %call7.i.i.i, i32 0, i32 9
  %306 = ptrtoint ptr %w_target_locked to i32
  call void @__asan_load1_noabort(i32 %306)
  %bf.load = load i8, ptr %w_target_locked, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool429.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool429.not, label %out.if.end431_crit_edge, label %if.then430

out.if.end431_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end431

if.then430:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void @unlock_page(ptr noundef %mmap_page) #11
  br label %if.end431

if.end431:                                        ; preds = %if.then430, %out.if.end431_crit_edge
  call fastcc void @ocfs2_free_unwritten_list(ptr noundef %1, ptr noundef %w_unwritten_list.i) #11
  call fastcc void @ocfs2_unlock_pages(ptr noundef %call7.i.i.i) #11
  %307 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %w_di_bh.i, align 8
  %tobool.not.i.i719 = icmp eq ptr %308, null
  br i1 %tobool.not.i.i719, label %if.end431.ocfs2_free_write_ctxt.exit_crit_edge, label %if.then.i.i720

if.end431.ocfs2_free_write_ctxt.exit_crit_edge:   ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_free_write_ctxt.exit

if.then.i.i720:                                   ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %308) #11
  br label %ocfs2_free_write_ctxt.exit

ocfs2_free_write_ctxt.exit:                       ; preds = %if.then.i.i720, %if.end431.ocfs2_free_write_ctxt.exit_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i) #11
  %309 = ptrtoint ptr %data_ac to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %data_ac, align 4
  %tobool432.not = icmp eq ptr %310, null
  br i1 %tobool432.not, label %ocfs2_free_write_ctxt.exit.if.end434_crit_edge, label %if.then433

ocfs2_free_write_ctxt.exit.if.end434_crit_edge:   ; preds = %ocfs2_free_write_ctxt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end434

if.then433:                                       ; preds = %ocfs2_free_write_ctxt.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %310) #11
  %311 = ptrtoint ptr %data_ac to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr null, ptr %data_ac, align 4
  br label %if.end434

if.end434:                                        ; preds = %if.then433, %ocfs2_free_write_ctxt.exit.if.end434_crit_edge
  %312 = ptrtoint ptr %meta_ac to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %meta_ac, align 4
  %tobool435.not = icmp eq ptr %313, null
  br i1 %tobool435.not, label %if.end434.if.end437_crit_edge, label %if.then436

if.end434.if.end437_crit_edge:                    ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end437

if.then436:                                       ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #13
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %313) #11
  %314 = ptrtoint ptr %meta_ac to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr null, ptr %meta_ac, align 4
  br label %if.end437

if.end437:                                        ; preds = %if.then436, %if.end434.if.end437_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %ret.3)
  %cmp438 = icmp ne i32 %ret.3, -28
  %brmerge = or i1 %tobool441.not, %cmp438
  br i1 %brmerge, label %if.end437.cleanup_crit_edge, label %if.then442

if.end437.cleanup_crit_edge:                      ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then442:                                       ; preds = %if.end437
  %call443 = call i32 @ocfs2_try_to_free_truncate_log(ptr noundef %5, i32 noundef %clusters_need.2) #11
  %cmp444 = icmp eq i32 %call443, 1
  br i1 %cmp444, label %if.then442.try_again_crit_edge, label %if.end447

if.then442.try_again_crit_edge:                   ; preds = %if.then442
  call void @__sanitizer_cov_trace_pc() #13
  br label %try_again

if.end447:                                        ; preds = %if.then442
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call443)
  %cmp448 = icmp slt i32 %call443, 0
  br i1 %cmp448, label %if.then450, label %if.end447.cleanup_crit_edge

if.end447.cleanup_crit_edge:                      ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then450:                                       ; preds = %if.end447
  %315 = zext i32 %call443 to i64
  call void @__sanitizer_cov_trace_switch(i64 %315, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call443, label %do.body467 [
    i32 -512, label %if.then450.cleanup_crit_edge
    i32 -4, label %if.then450.cleanup_crit_edge1140
    i32 -28, label %if.then450.cleanup_crit_edge1141
    i32 -122, label %if.then450.cleanup_crit_edge1142
  ]

if.then450.cleanup_crit_edge1142:                 ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then450.cleanup_crit_edge1141:                 ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then450.cleanup_crit_edge1140:                 ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then450.cleanup_crit_edge:                     ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body467:                                       ; preds = %if.then450
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m468) #11
  %316 = ptrtoint ptr %_m468 to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 1152921504606846976, ptr %_m468, align 8
  %conv472 = sext i32 %call443 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m468, ptr noundef nonnull @__func__.ocfs2_write_begin_nolock, i32 noundef 1877, ptr noundef nonnull @.str.6, i64 noundef %conv472) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m468) #11
  br label %cleanup

cleanup:                                          ; preds = %do.body467, %if.then450.cleanup_crit_edge, %if.then450.cleanup_crit_edge1140, %if.then450.cleanup_crit_edge1141, %if.then450.cleanup_crit_edge1142, %if.end447.cleanup_crit_edge, %if.end437.cleanup_crit_edge, %if.end422, %do.body
  %retval.0 = phi i32 [ 0, %if.end422 ], [ -12, %do.body ], [ -28, %do.body467 ], [ -28, %if.then450.cleanup_crit_edge ], [ -28, %if.then450.cleanup_crit_edge1140 ], [ -28, %if.then450.cleanup_crit_edge1141 ], [ -28, %if.then450.cleanup_crit_edge1142 ], [ -28, %if.end447.cleanup_crit_edge ], [ %ret.3, %if.end437.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %et) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta_ac) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_ac) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_expand_nonsparse_inode(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %pos, i32 noundef %len, ptr noundef writeonly %wc) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %pos
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s_feature_incompat.i, align 8
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !137

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1618, 0\0A.popsection", ""() #11, !srcloc !171
  unreachable

do.end8:                                          ; preds = %entry
  %call9 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call9)
  %cmp.not = icmp sgt i64 %add, %call9
  br i1 %cmp.not, label %if.end12, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %do.end8
  %call13 = tail call i32 @ocfs2_extend_no_holes(ptr noundef %inode, ptr noundef %di_bh, i64 noundef %add, i64 noundef %pos) #11
  %7 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call13, label %do.body30 [
    i32 0, label %if.end12.if.end38_crit_edge
    i32 -512, label %if.end12.if.end38_crit_edge61
    i32 -4, label %if.end12.if.end38_crit_edge62
    i32 524289, label %if.end12.if.end38_crit_edge63
    i32 -28, label %if.end12.if.end38_crit_edge64
    i32 -122, label %if.end12.if.end38_crit_edge65
  ]

if.end12.if.end38_crit_edge65:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end12.if.end38_crit_edge64:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end12.if.end38_crit_edge63:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end12.if.end38_crit_edge62:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end12.if.end38_crit_edge61:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end12.if.end38_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.body30:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %8 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv33 = sext i32 %call13 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_expand_nonsparse_inode, i32 noundef 1625, ptr noundef nonnull @.str.6, i64 noundef %conv33) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  br label %if.end38

if.end38:                                         ; preds = %do.body30, %if.end12.if.end38_crit_edge, %if.end12.if.end38_crit_edge61, %if.end12.if.end38_crit_edge62, %if.end12.if.end38_crit_edge63, %if.end12.if.end38_crit_edge64, %if.end12.if.end38_crit_edge65
  %tobool39.not = icmp eq ptr %wc, null
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %if.then40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %call42 = call fastcc i64 @i_size_read(ptr noundef %inode)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %12, i32 0, i32 36
  %13 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %12, i32 0, i32 35
  %15 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s_clustersize.i, align 4
  %sub.i = add i32 %16, -1
  %conv.i = sext i32 %sub.i to i64
  %add.i = add i64 %call42, %conv.i
  %sh_prom.i = zext i32 %14 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %w_first_new_cpos = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 2
  %17 = ptrtoint ptr %w_first_new_cpos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv2.i, ptr %w_first_new_cpos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.end38.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end8.cleanup_crit_edge ], [ %call13, %if.then40 ], [ %call13, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_check_range_for_refcount(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_refcount_cow(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_write_begin_nolock(i64 noundef %ino, i64 noundef %i_size, i32 noundef %i_clusters, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %page, i32 noundef %clusters, i32 noundef %extents_to_split) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_begin_nolock, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_write_begin_nolock, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !136

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !172
  %call42 = tail call i32 @__traceiter_ocfs2_write_begin_nolock(ptr noundef null, i64 noundef %ino, i64 noundef %i_size, i32 noundef %i_clusters, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %page, i32 noundef %clusters, i32 noundef %extents_to_split) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !173
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_begin_nolock, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_begin_nolock, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_write_begin_nolock.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ocfs2_write_begin_nolock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1219, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_init_dinode_extent_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_lock_allocators(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_start_trans(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_journal_access_di(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_grab_pages_for_write(ptr noundef %mapping, ptr nocapture noundef %wc, i32 noundef %cpos, i64 noundef %user_pos, i32 noundef %user_len, i32 noundef %new, ptr noundef %mmap_page) unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i64 %user_pos, 12
  %conv = trunc i64 %0 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new)
  %tobool.not = icmp eq i32 %new, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %6, i32 0, i32 36
  %7 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %s_clustersize_bits.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp.i = icmp ugt i32 %8, 12
  %sub.i = add i32 %8, -12
  %shl.i = shl nuw i32 1, %sub.i
  %pages_per_cluster.0.i = select i1 %cmp.i, i32 %shl.i, i32 1
  %w_num_pages = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 6
  %9 = ptrtoint ptr %w_num_pages to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %pages_per_cluster.0.i, ptr %w_num_pages, align 4
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i207 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i207 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i207, align 16
  %s_clustersize_bits.i208 = getelementptr inbounds %struct.ocfs2_super, ptr %13, i32 0, i32 36
  %14 = ptrtoint ptr %s_clustersize_bits.i208 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s_clustersize_bits.i208, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %15)
  %cmp.i209 = icmp ult i32 %15, 12
  br i1 %cmp.i209, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i210 = sub nuw nsw i32 12, %15
  %shr.i = lshr i32 %cpos, %sub.i210
  br label %ocfs2_align_clusters_to_page_index.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %15)
  %cmp1.not.i = icmp eq i32 %15, 12
  br i1 %cmp1.not.i, label %if.else.i.ocfs2_align_clusters_to_page_index.exit_crit_edge, label %if.then2.i

if.else.i.ocfs2_align_clusters_to_page_index.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_align_clusters_to_page_index.exit

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub3.i = add i32 %15, -12
  %shl.i211 = shl i32 %cpos, %sub3.i
  br label %ocfs2_align_clusters_to_page_index.exit

ocfs2_align_clusters_to_page_index.exit:          ; preds = %if.then2.i, %if.else.i.ocfs2_align_clusters_to_page_index.exit_crit_edge, %if.then.i
  %index.0.i = phi i32 [ %shr.i, %if.then.i ], [ %shl.i211, %if.then2.i ], [ %cpos, %if.else.i.ocfs2_align_clusters_to_page_index.exit_crit_edge ]
  %conv3 = zext i32 %user_len to i64
  %add = add i64 %conv3, %user_pos
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %2)
  %16 = tail call i64 @llvm.smax.i64(i64 %add, i64 %call4)
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %16)
  %cmp6 = icmp slt i64 %16, 1
  br i1 %cmp6, label %do.body11, label %do.end16, !prof !134

do.body11:                                        ; preds = %ocfs2_align_clusters_to_page_index.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1054, 0\0A.popsection", ""() #11, !srcloc !174
  unreachable

do.end16:                                         ; preds = %ocfs2_align_clusters_to_page_index.exit
  %sub = add nuw i64 %16, 17592186044415
  %17 = lshr i64 %sub, 12
  %18 = trunc i64 %17 to i32
  %conv19 = add i32 %18, 1
  %19 = ptrtoint ptr %w_num_pages to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %w_num_pages, align 4
  %add21 = add i32 %20, %index.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %conv19)
  %cmp22 = icmp ugt i32 %add21, %conv19
  br i1 %cmp22, label %if.then24, label %do.end16.if.end29_crit_edge

do.end16.if.end29_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then24:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  %sub25 = sub i32 %conv19, %index.0.i
  %21 = ptrtoint ptr %w_num_pages to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub25, ptr %w_num_pages, align 4
  br label %if.end29

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %w_num_pages28 = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 6
  %22 = ptrtoint ptr %w_num_pages28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %w_num_pages28, align 4
  %.pre = zext i32 %user_len to i64
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24, %do.end16.if.end29_crit_edge
  %conv30.pre-phi = phi i64 [ %conv3, %do.end16.if.end29_crit_edge ], [ %conv3, %if.then24 ], [ %.pre, %if.else ]
  %start.0 = phi i32 [ %index.0.i, %do.end16.if.end29_crit_edge ], [ %index.0.i, %if.then24 ], [ %conv, %if.else ]
  %add31 = add i64 %user_pos, 17592186044415
  %sub32 = add i64 %add31, %conv30.pre-phi
  %23 = lshr i64 %sub32, 12
  %conv34 = trunc i64 %23 to i32
  %w_num_pages35 = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 6
  %24 = ptrtoint ptr %w_num_pages35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %w_num_pages35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp36228.not = icmp eq i32 %25, 0
  br i1 %cmp36228.not, label %if.end29.if.end145_crit_edge, label %for.body.lr.ph

if.end29.if.end145_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

for.body.lr.ph:                                   ; preds = %if.end29
  %w_type = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 3
  %26 = getelementptr inbounds %struct.page, ptr %mmap_page, i32 0, i32 1
  %27 = ptrtoint ptr %mmap_page to i32
  %mapping47 = getelementptr inbounds %struct.page, ptr %mmap_page, i32 0, i32 1, i32 0, i32 1
  %w_target_locked = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 9
  %w_target_page = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0229 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add38 = add i32 %i.0229, %start.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %conv)
  %cmp39.not = icmp ult i32 %add38, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %conv34)
  %cmp41.not = icmp ugt i32 %add38, %conv34
  %or.cond = or i1 %cmp39.not, %cmp41.not
  br i1 %or.cond, label %for.body.if.else96_crit_edge, label %land.lhs.true43

for.body.if.else96_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else96

land.lhs.true43:                                  ; preds = %for.body
  %28 = ptrtoint ptr %w_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %w_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp44 = icmp eq i32 %29, 2
  br i1 %cmp44, label %if.then46, label %land.lhs.true89

if.then46:                                        ; preds = %land.lhs.true43
  tail call void @__might_sleep(ptr noundef nonnull @.str.20, i32 noundef 788) #11
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %26, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then46._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !137

if.then46._compound_head.exit.i_crit_edge:        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %31, -1
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %if.then46._compound_head.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %27, %if.then46._compound_head.exit.i_crit_edge ]
  %32 = inttoptr i32 %retval.0.i.i to ptr
  %33 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i.i.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !137

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %36 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.14) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !156
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %32, i32 noundef 4) #11
  %37 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %32, align 4
  %and.i.i4.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i212_crit_edge

folio_flags.exit.i.i.if.then.i212_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i212

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %32, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #11, !srcloc !175
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !176
  %and1.i.i.i.i = and i32 %asmresult.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %phi.cmp.i.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i212_crit_edge

folio_trylock.exit.i.if.then.i212_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i212

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lock_page.exit

if.then.i212:                                     ; preds = %folio_trylock.exit.i.if.then.i212_crit_edge, %folio_flags.exit.i.i.if.then.i212_crit_edge
  tail call void @__folio_lock(ptr noundef %32) #11
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i212, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %40 = ptrtoint ptr %mapping47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mapping47, align 4
  %cmp48.not = icmp eq ptr %41, %mapping
  br i1 %cmp48.not, label %if.end82, label %if.then50

if.then50:                                        ; preds = %lock_page.exit
  %tobool52.not = icmp eq ptr %41, null
  br i1 %tobool52.not, label %if.then50.if.end74_crit_edge, label %do.end68, !prof !137

if.then50.if.end74_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

do.end68:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 1078, i32 noundef 9, ptr noundef null) #11
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.then50.if.end74_crit_edge
  tail call void @unlock_page(ptr noundef %mmap_page) #11
  br label %if.then140

if.end82:                                         ; preds = %lock_page.exit
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %26, align 4
  %and.i.i213 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i213)
  %tobool.not.i.i214 = icmp eq i32 %and.i.i213, 0
  br i1 %tobool.not.i.i214, label %if.end82._compound_head.exit.i219_crit_edge, label %if.then.i.i216, !prof !137

if.end82._compound_head.exit.i219_crit_edge:      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i219

if.then.i.i216:                                   ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i215 = add i32 %43, -1
  br label %_compound_head.exit.i219

_compound_head.exit.i219:                         ; preds = %if.then.i.i216, %if.end82._compound_head.exit.i219_crit_edge
  %retval.0.i.i218 = phi i32 [ %sub.i.i215, %if.then.i.i216 ], [ %27, %if.end82._compound_head.exit.i219_crit_edge ]
  %44 = inttoptr i32 %retval.0.i.i218 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %44, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %45 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %46, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !134

if.then.i1.i:                                     ; preds = %_compound_head.exit.i219
  call void @__sanitizer_cov_trace_pc() #13
  %47 = inttoptr i32 %retval.0.i.i218 to ptr
  tail call void @dump_page(ptr noundef %47, ptr noundef nonnull @.str.21) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !177
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i219
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@ocfs2_grab_pages_for_write, %if.then.i.i.i.i)) #11
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !136

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %44, i32 noundef 1) #11
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %arrayidx = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 7, i32 %i.0229
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %mmap_page, ptr %arrayidx, align 4
  %50 = ptrtoint ptr %w_target_locked to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %w_target_locked, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %w_target_locked, align 4
  br label %if.end130

land.lhs.true89:                                  ; preds = %land.lhs.true43
  %51 = ptrtoint ptr %w_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %w_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp91 = icmp eq i32 %52, 1
  br i1 %cmp91, label %if.then93, label %land.lhs.true89.if.else96_crit_edge

land.lhs.true89.if.else96_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else96

if.then93:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx95 = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 7, i32 %i.0229
  %53 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx95, align 4
  br label %for.inc

if.else96:                                        ; preds = %land.lhs.true89.if.else96_crit_edge, %for.body.if.else96_crit_edge
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %mapping, i32 noundef %add38, i32 noundef 7, i32 noundef 3136) #11
  %arrayidx99 = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 7, i32 %i.0229
  %54 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %arrayidx99, align 4
  %tobool102.not = icmp eq ptr %call.i, null
  br i1 %tobool102.not, label %do.body119, label %if.else96.if.end130_crit_edge

if.else96.if.end130_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

do.body119:                                       ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %55 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1152921504606846976, ptr %_m, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_grab_pages_for_write, i32 noundef 1097, ptr noundef nonnull @.str.6, i64 noundef -12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  br label %if.then140

if.end130:                                        ; preds = %if.else96.if.end130_crit_edge, %get_page.exit
  %arrayidx132 = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 7, i32 %i.0229
  %56 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx132, align 4
  tail call void @wait_for_stable_page(ptr noundef %57) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %add38, i32 %conv)
  %cmp133 = icmp eq i32 %add38, %conv
  br i1 %cmp133, label %if.then135, label %if.end130.for.inc_crit_edge

if.end130.for.inc_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then135:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx132, align 4
  %60 = ptrtoint ptr %w_target_page to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %w_target_page, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then135, %if.end130.for.inc_crit_edge, %if.then93
  %inc = add nuw i32 %i.0229, 1
  %61 = ptrtoint ptr %w_num_pages35 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %w_num_pages35, align 4
  %cmp36 = icmp ult i32 %inc, %62
  br i1 %cmp36, label %for.inc.for.body_crit_edge, label %for.inc.if.end145_crit_edge

for.inc.if.end145_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end145

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then140:                                       ; preds = %do.body119, %if.end74
  %ret.0.ph = phi i32 [ -12, %do.body119 ], [ -11, %if.end74 ]
  %63 = ptrtoint ptr %w_target_locked to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load142 = load i8, ptr %w_target_locked, align 4
  %bf.clear143 = and i8 %bf.load142, 127
  store i8 %bf.clear143, ptr %w_target_locked, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %for.inc.if.end145_crit_edge, %if.end29.if.end145_crit_edge
  %ret.0221 = phi i32 [ %ret.0.ph, %if.then140 ], [ 0, %if.end29.if.end145_crit_edge ], [ 0, %for.inc.if.end145_crit_edge ]
  ret i32 %ret.0221
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_write_cluster_by_desc(ptr nocapture noundef readonly %mapping, ptr noundef %data_ac, ptr noundef %meta_ac, ptr noundef %wc, i64 noundef %pos, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %_m.i.i = alloca i64, align 8
  %_m70.i.i = alloca i64, align 8
  %p_blkno.i = alloca i64, align 8
  %et.i = alloca %struct.ocfs2_extent_tree, align 4
  %tmp_pos.i = alloca i32, align 4
  %_m.i = alloca i64, align 8
  %_m10.i = alloca i64, align 8
  %_m45.i = alloca i64, align 8
  %_m81.i = alloca i64, align 8
  %_m99.i = alloca i64, align 8
  %_m164.i = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %w_clen = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %w_clen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %w_clen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp73.not = icmp eq i32 %1, 0
  br i1 %cmp73.not, label %entry.out_crit_edge, label %for.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info, align 16
  %s_clustersize = getelementptr inbounds %struct.ocfs2_super, ptr %7, i32 0, i32 35
  %w_di_bh.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 13
  %w_handle.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 12
  %w_dealloc.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 14
  %w_num_pages.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 6
  %w_target_page.i.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %for.body.lr.ph
  %pos.addr.076 = phi i64 [ %pos, %for.body.lr.ph ], [ %add34, %if.end31.for.body_crit_edge ]
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end31.for.body_crit_edge ]
  %len.addr.074 = phi i32 [ %len, %for.body.lr.ph ], [ %sub32, %if.end31.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 4, i32 %i.075
  %8 = ptrtoint ptr %s_clustersize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s_clustersize, align 4
  %sub = add i32 %9, -1
  %conv = sext i32 %sub to i64
  %and = and i64 %pos.addr.076, %conv
  %conv1 = zext i32 %len.addr.074 to i64
  %add = add i64 %and, %conv1
  %conv3 = sext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv3)
  %cmp4 = icmp sgt i64 %add, %conv3
  %10 = trunc i64 %and to i32
  %conv9 = sub i32 %9, %10
  %local_len.0 = select i1 %cmp4, i32 %conv9, i32 %len.addr.074
  %c_phys = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 4, i32 %i.075, i32 1
  %c_new = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 4, i32 %i.075, i32 2
  %11 = ptrtoint ptr %c_new to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_new, align 4
  %c_clear_unwritten = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 4, i32 %i.075, i32 3
  %13 = ptrtoint ptr %c_clear_unwritten to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %c_clear_unwritten, align 4
  %c_needs_zero = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 4, i32 %i.075, i32 4
  %15 = ptrtoint ptr %c_needs_zero to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %c_needs_zero, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_blkno.i) #11
  %19 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapping, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %et.i) #11
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 8
  %21 = call ptr @memset(ptr %et.i, i32 255, i32 32)
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 33
  %24 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_clustersize_bits.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %25, i32 0, i32 36
  %26 = ptrtoint ptr %s_clustersize_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s_clustersize_bits.i.i, align 8
  %s_blocksize_bits.i.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %s_blocksize_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %s_blocksize_bits.i.i, align 4
  %conv.i.i = zext i8 %29 to i32
  %sub.i.i = sub i32 %27, %conv.i.i
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl nuw i64 1, %sh_prom.i.i
  %conv.i = trunc i64 %shl.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_pos.i) #11
  %30 = ptrtoint ptr %tmp_pos.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %18, ptr %tmp_pos.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool2.not.i = icmp eq i32 %14, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  %31 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %w_di_bh.i, align 4
  %33 = ptrtoint ptr %w_handle.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %w_handle.i, align 4
  %call3.i = call i32 @ocfs2_add_inode_data(ptr noundef %25, ptr noundef %20, ptr noundef nonnull %tmp_pos.i, i32 noundef 1, i32 noundef %lnot.ext.i, ptr noundef %32, ptr noundef %34, ptr noundef %data_ac, ptr noundef %meta_ac, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, -11
  br i1 %cmp.i, label %do.body6.i, label %do.end26.i

do.body6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #11
  %35 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 1152921504606846976, ptr %_m.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_write_cluster, i32 noundef 1153, ptr noundef nonnull @.str.22) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m10.i) #11
  %36 = ptrtoint ptr %_m10.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m10.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 -1608
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr.i.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m10.i, ptr noundef nonnull @__func__.ocfs2_write_cluster, i32 noundef 1153, ptr noundef nonnull @.str.23, i64 noundef %38) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m10.i) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1153, 0\0A.popsection", ""() #11, !srcloc !178
  unreachable

do.end26.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp27.i = icmp slt i32 %call3.i, 0
  br i1 %cmp27.i, label %if.then29.i, label %cleanup.i

if.then29.i:                                      ; preds = %do.end26.i
  %39 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call3.i, label %do.body44.i [
    i32 -512, label %if.then29.i.cleanup.thread.i_crit_edge
    i32 -4, label %if.then29.i.cleanup.thread.i_crit_edge149
    i32 -122, label %if.then29.i.cleanup.thread.i_crit_edge150
    i32 -28, label %if.then29.i.cleanup.thread.i_crit_edge151
  ]

if.then29.i.cleanup.thread.i_crit_edge151:        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.then29.i.cleanup.thread.i_crit_edge150:        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.then29.i.cleanup.thread.i_crit_edge149:        ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.then29.i.cleanup.thread.i_crit_edge:           ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

do.body44.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m45.i) #11
  %40 = ptrtoint ptr %_m45.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1152921504606846976, ptr %_m45.i, align 8
  %conv49.i = sext i32 %call3.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m45.i, ptr noundef nonnull @__func__.ocfs2_write_cluster, i32 noundef 1155, ptr noundef nonnull @.str.6, i64 noundef %conv49.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m45.i) #11
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.body44.i, %if.then29.i.cleanup.thread.i_crit_edge, %if.then29.i.cleanup.thread.i_crit_edge149, %if.then29.i.cleanup.thread.i_crit_edge150, %if.then29.i.cleanup.thread.i_crit_edge151
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_pos.i) #11
  br label %ocfs2_write_cluster.exit

cleanup.i:                                        ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_pos.i) #11
  br label %if.end93.i

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool55.not.i = icmp eq i32 %14, 0
  br i1 %tobool55.not.i, label %if.else.i.if.end93.i_crit_edge, label %if.then56.i

if.else.i.if.end93.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93.i

if.then56.i:                                      ; preds = %if.else.i
  %ip_metadata_cache.i.i = getelementptr i8, ptr %20, i32 -56
  %41 = ptrtoint ptr %w_di_bh.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %w_di_bh.i, align 4
  call void @ocfs2_init_dinode_extent_tree(ptr noundef nonnull %et.i, ptr noundef %ip_metadata_cache.i.i, ptr noundef %42) #11
  %43 = ptrtoint ptr %w_handle.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %w_handle.i, align 4
  %45 = ptrtoint ptr %c_phys to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %c_phys, align 4
  %call60.i = call i32 @ocfs2_mark_extent_written(ptr noundef %20, ptr noundef nonnull %et.i, ptr noundef %44, i32 noundef %18, i32 noundef 1, i32 noundef %46, ptr noundef %meta_ac, ptr noundef %w_dealloc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %if.then63.i, label %if.then56.i.if.end93.i_crit_edge

if.then56.i.if.end93.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93.i

if.then63.i:                                      ; preds = %if.then56.i
  %47 = zext i32 %call60.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call60.i, label %do.body80.i [
    i32 -512, label %if.then63.i.ocfs2_write_cluster.exit_crit_edge
    i32 -4, label %if.then63.i.ocfs2_write_cluster.exit_crit_edge152
    i32 -28, label %if.then63.i.ocfs2_write_cluster.exit_crit_edge153
    i32 -122, label %if.then63.i.ocfs2_write_cluster.exit_crit_edge154
  ]

if.then63.i.ocfs2_write_cluster.exit_crit_edge154: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_cluster.exit

if.then63.i.ocfs2_write_cluster.exit_crit_edge153: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_cluster.exit

if.then63.i.ocfs2_write_cluster.exit_crit_edge152: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_cluster.exit

if.then63.i.ocfs2_write_cluster.exit_crit_edge:   ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_cluster.exit

do.body80.i:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m81.i) #11
  %48 = ptrtoint ptr %_m81.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 1152921504606846976, ptr %_m81.i, align 8
  %conv85.i = sext i32 %call60.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m81.i, ptr noundef nonnull @__func__.ocfs2_write_cluster, i32 noundef 1165, ptr noundef nonnull @.str.6, i64 noundef %conv85.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m81.i) #11
  br label %ocfs2_write_cluster.exit

if.end93.i:                                       ; preds = %if.then56.i.if.end93.i_crit_edge, %if.else.i.if.end93.i_crit_edge, %cleanup.i
  %call94.i = call i32 @ocfs2_get_clusters(ptr noundef %20, i32 noundef %18, ptr noundef %c_phys, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %cmp95.i = icmp slt i32 %call94.i, 0
  br i1 %cmp95.i, label %do.body98.i, label %do.body109.i

do.body98.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m99.i) #11
  %49 = ptrtoint ptr %_m99.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 1152921504606846976, ptr %_m99.i, align 8
  %add.ptr.i260.i = getelementptr i8, ptr %20, i32 -1608
  %50 = ptrtoint ptr %add.ptr.i260.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr.i260.i, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m99.i, ptr noundef nonnull @__func__.ocfs2_write_cluster, i32 noundef 1178, ptr noundef nonnull @.str.24, i64 noundef %51, i32 noundef %18) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m99.i) #11
  br label %ocfs2_write_cluster.exit

do.body109.i:                                     ; preds = %if.end93.i
  %52 = ptrtoint ptr %c_phys to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %c_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp110.i = icmp eq i32 %53, 0
  br i1 %cmp110.i, label %do.body118.i, label %do.end126.i, !prof !134

do.body118.i:                                     ; preds = %do.body109.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1182, 0\0A.popsection", ""() #11, !srcloc !179
  unreachable

do.end126.i:                                      ; preds = %do.body109.i
  %54 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i261.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 33
  %56 = ptrtoint ptr %s_fs_info.i261.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i261.i, align 16
  %s_clustersize_bits.i262.i = getelementptr inbounds %struct.ocfs2_super, ptr %57, i32 0, i32 36
  %58 = ptrtoint ptr %s_clustersize_bits.i262.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %s_clustersize_bits.i262.i, align 8
  %s_blocksize_bits.i263.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 2
  %60 = ptrtoint ptr %s_blocksize_bits.i263.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %s_blocksize_bits.i263.i, align 4
  %conv.i264.i = zext i8 %61 to i32
  %sub.i265.i = sub i32 %59, %conv.i264.i
  %conv1.i.i = zext i32 %53 to i64
  %sh_prom.i266.i = zext i32 %sub.i265.i to i64
  %shl.i267.i = shl i64 %conv1.i.i, %sh_prom.i266.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool129.not.i = icmp eq i32 %16, 0
  br i1 %tobool129.not.i, label %if.then130.i, label %do.end126.i.if.end135.i_crit_edge

do.end126.i.if.end135.i_crit_edge:                ; preds = %do.end126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135.i

if.then130.i:                                     ; preds = %do.end126.i
  call void @__sanitizer_cov_trace_pc() #13
  %sh_prom.i = zext i8 %61 to i64
  %shr.i = ashr i64 %pos.addr.076, %sh_prom.i
  %sub.i = add i32 %conv.i, -1
  %conv133.i = sext i32 %sub.i to i64
  %and134.i = and i64 %shr.i, %conv133.i
  %add.i = add i64 %shl.i267.i, %and134.i
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.then130.i, %do.end126.i.if.end135.i_crit_edge
  %storemerge.i = phi i64 [ %add.i, %if.then130.i ], [ %shl.i267.i, %do.end126.i.if.end135.i_crit_edge ]
  %62 = ptrtoint ptr %p_blkno.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %storemerge.i, ptr %p_blkno.i, align 8
  %63 = ptrtoint ptr %w_num_pages.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %w_num_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp136295.not.i = icmp eq i32 %64, 0
  br i1 %cmp136295.not.i, label %if.end135.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end135.i.for.end.i_crit_edge:                  ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end135.i
  %65 = trunc i64 %pos.addr.076 to i32
  %conv.i269.i = and i32 %65, 4095
  %add.i.i = add i32 %local_len.0, %conv.i269.i
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup179.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.0297.i = phi i32 [ %call94.i, %for.body.lr.ph.i ], [ %ret.2.i, %cleanup179.i.for.body.i_crit_edge ]
  %i.0296.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc182.i, %cleanup179.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 7, i32 %i.0296.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i, align 4
  %cmp138.i = icmp eq ptr %67, null
  br i1 %cmp138.i, label %if.then140.i, label %if.end141.i

if.then140.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %p_blkno.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %p_blkno.i, align 8
  %inc.i = add i64 %69, 1
  store i64 %inc.i, ptr %p_blkno.i, align 8
  br label %cleanup179.i

if.end141.i:                                      ; preds = %for.body.i
  %70 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i268.i = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 33
  %72 = ptrtoint ptr %s_fs_info.i268.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %s_fs_info.i268.i, align 16
  %s_clustersize_bits.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %73, i32 0, i32 36
  %74 = ptrtoint ptr %s_clustersize_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %s_clustersize_bits.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %75)
  %cmp.i.i.i = icmp slt i32 %75, 12
  br i1 %cmp.i.i.i, label %do.body20.i.i.i, label %if.end141.i.ocfs2_figure_cluster_boundaries.exit.i.i_crit_edge, !prof !134

if.end141.i.ocfs2_figure_cluster_boundaries.exit.i.i_crit_edge: ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_figure_cluster_boundaries.exit.i.i

do.body20.i.i.i:                                  ; preds = %if.end141.i
  %76 = shl i32 %18, %75
  %shl4.i.i.i = and i32 %76, 4095
  %s_clustersize.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %73, i32 0, i32 35
  %77 = ptrtoint ptr %s_clustersize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_clustersize.i.i.i, align 4
  %add.i.i.i = add i32 %78, %shl4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i)
  %cmp21.i.i.i = icmp ugt i32 %add.i.i.i, 4096
  br i1 %cmp21.i.i.i, label %do.body29.i.i.i, label %do.body20.i.i.i.ocfs2_figure_cluster_boundaries.exit.i.i_crit_edge, !prof !134

do.body20.i.i.i.ocfs2_figure_cluster_boundaries.exit.i.i_crit_edge: ; preds = %do.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_figure_cluster_boundaries.exit.i.i

do.body29.i.i.i:                                  ; preds = %do.body20.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #11, !srcloc !169
  unreachable

ocfs2_figure_cluster_boundaries.exit.i.i:         ; preds = %do.body20.i.i.i.ocfs2_figure_cluster_boundaries.exit.i.i_crit_edge, %if.end141.i.ocfs2_figure_cluster_boundaries.exit.i.i_crit_edge
  %cluster_start.057.i.i.i = phi i32 [ %shl4.i.i.i, %do.body20.i.i.i.ocfs2_figure_cluster_boundaries.exit.i.i_crit_edge ], [ 0, %if.end141.i.ocfs2_figure_cluster_boundaries.exit.i.i_crit_edge ]
  %cluster_end.056.i.i.i = phi i32 [ %add.i.i.i, %do.body20.i.i.i.ocfs2_figure_cluster_boundaries.exit.i.i_crit_edge ], [ 4096, %if.end141.i.ocfs2_figure_cluster_boundaries.exit.i.i_crit_edge ]
  %call.i.i = call fastcc i64 @i_size_read(ptr noundef %20) #11
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 1, i32 0, i32 2
  %79 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index.i.i.i, align 4
  %conv.i.i.i = zext i32 %80 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %shl.i.i.i)
  %cmp.not.i.i = icmp sle i64 %call.i.i, %shl.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i.i.i, i64 %pos.addr.076)
  %cmp3.i.i = icmp sle i64 %shl.i.i.i, %pos.addr.076
  %spec.select.i.i = and i1 %cmp.not.i.i, %cmp3.i.i
  %land.ext.i.i = zext i1 %spec.select.i.i to i32
  %or.i.i = or i32 %16, %land.ext.i.i
  %81 = ptrtoint ptr %w_target_page.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %w_target_page.i.i, align 4
  %cmp4.i.i = icmp eq ptr %82, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %tobool.not.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp4.i.i, label %if.then.i.i, label %do.body35.i.i

if.then.i.i:                                      ; preds = %ocfs2_figure_cluster_boundaries.exit.i.i
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i.i = call i32 @ocfs2_map_page_blocks(ptr noundef nonnull %67, ptr noundef nonnull %p_blkno.i, ptr noundef %20, i32 noundef %cluster_start.057.i.i.i, i32 noundef %cluster_end.056.i.i.i, i32 noundef %or.i.i) #11
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i.i = call i32 @ocfs2_map_page_blocks(ptr noundef nonnull %67, ptr noundef nonnull %p_blkno.i, ptr noundef %20, i32 noundef %conv.i269.i, i32 noundef %add.i.i, i32 noundef 0) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then5.i.i
  %ret.0.i.i = phi i32 [ %call6.i.i, %if.then5.i.i ], [ %call7.i.i, %if.else.i.i ]
  %83 = zext i32 %ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %ret.0.i.i, label %do.body.i.i [
    i32 0, label %if.end81.i.i
    i32 -4, label %if.end.i.i.if.end172.i_crit_edge
  ]

if.end.i.i.if.end172.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172.i

do.body.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i.i) #11
  %84 = ptrtoint ptr %_m.i.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 1152921504606846976, ptr %_m.i.i, align 8
  %conv27.i.i = sext i32 %ret.0.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i.i, ptr noundef nonnull @__func__.ocfs2_prepare_page_for_write, i32 noundef 973, ptr noundef nonnull @.str.6, i64 noundef %conv27.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i.i) #11
  br label %ocfs2_prepare_page_for_write.exit.i

do.body35.i.i:                                    ; preds = %ocfs2_figure_cluster_boundaries.exit.i.i
  br i1 %tobool.not.i.i, label %do.body41.i.i, label %do.end49.i.i, !prof !134

do.body41.i.i:                                    ; preds = %do.body35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 989, 0\0A.popsection", ""() #11, !srcloc !180
  unreachable

do.end49.i.i:                                     ; preds = %do.body35.i.i
  %call50.i.i = call i32 @ocfs2_map_page_blocks(ptr noundef nonnull %67, ptr noundef nonnull %p_blkno.i, ptr noundef %20, i32 noundef %cluster_start.057.i.i.i, i32 noundef %cluster_end.056.i.i.i, i32 noundef %or.i.i) #11
  %85 = zext i32 %call50.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call50.i.i, label %do.body69.i.i [
    i32 0, label %do.end49.i.i.land.lhs.true83.i.i_crit_edge
    i32 -4, label %do.end49.i.i.if.end172.i_crit_edge
  ]

do.end49.i.i.if.end172.i_crit_edge:               ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172.i

do.end49.i.i.land.lhs.true83.i.i_crit_edge:       ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true83.i.i

do.body69.i.i:                                    ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m70.i.i) #11
  %86 = ptrtoint ptr %_m70.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 1152921504606846976, ptr %_m70.i.i, align 8
  %conv74.i.i = sext i32 %call50.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m70.i.i, ptr noundef nonnull @__func__.ocfs2_prepare_page_for_write, i32 noundef 997, ptr noundef nonnull @.str.6, i64 noundef %conv74.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m70.i.i) #11
  br label %ocfs2_prepare_page_for_write.exit.i

if.end81.i.i:                                     ; preds = %if.end.i.i
  br i1 %tobool.not.i.i, label %if.end81.i.i.ocfs2_prepare_page_for_write.exit.thread282.i_crit_edge, label %if.end81.i.i.land.lhs.true83.i.i_crit_edge

if.end81.i.i.land.lhs.true83.i.i_crit_edge:       ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true83.i.i

if.end81.i.i.ocfs2_prepare_page_for_write.exit.thread282.i_crit_edge: ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_prepare_page_for_write.exit.thread282.i

land.lhs.true83.i.i:                              ; preds = %if.end81.i.i.land.lhs.true83.i.i_crit_edge, %do.end49.i.i.land.lhs.true83.i.i_crit_edge
  %user_data_to.0143.i.i = phi i32 [ %add.i.i, %if.end81.i.i.land.lhs.true83.i.i_crit_edge ], [ %call50.i.i, %do.end49.i.i.land.lhs.true83.i.i_crit_edge ]
  %user_data_from.0142.i.i = phi i32 [ %conv.i269.i, %if.end81.i.i.land.lhs.true83.i.i_crit_edge ], [ %call50.i.i, %do.end49.i.i.land.lhs.true83.i.i_crit_edge ]
  %87 = getelementptr inbounds %struct.page, ptr %67, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %87, align 4
  %and.i.i.i.i = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !137

if.then.i.i.i.i:                                  ; preds = %land.lhs.true83.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i.i = add i32 %89, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true83.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %67 to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %90, %if.end.i.i.i.i ]
  %91 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %92 = getelementptr inbounds %struct.page, ptr %91, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  %and.i.i.i.i.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_flags.exit.i.i.i.i, label %if.then.i.i.i.i.i, !prof !137

if.then.i.i.i.i.i:                                ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %95 = inttoptr i32 %retval.0.i.i.i.i to ptr
  call void @dump_page(ptr noundef %95, ptr noundef nonnull @.str.14) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !156
  unreachable

folio_flags.exit.i.i.i.i:                         ; preds = %_compound_head.exit.i.i.i
  %96 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %91, align 4
  %98 = and i32 %97, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.i.not.i.i.i = icmp eq i32 %98, 0
  br i1 %tobool.i.not.i.i.i, label %if.then86.i.i, label %PageUptodate.exit.i.i

PageUptodate.exit.i.i:                            ; preds = %folio_flags.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  br label %ocfs2_prepare_page_for_write.exit.thread282.i

if.then86.i.i:                                    ; preds = %folio_flags.exit.i.i.i.i
  %99 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info88.i.i = getelementptr inbounds %struct.super_block, ptr %100, i32 0, i32 33
  %101 = ptrtoint ptr %s_fs_info88.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %s_fs_info88.i.i, align 16
  %s_clustersize_bits.i.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %102, i32 0, i32 36
  %103 = ptrtoint ptr %s_clustersize_bits.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %s_clustersize_bits.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %104)
  %cmp.i.i.i.i = icmp slt i32 %104, 12
  br i1 %cmp.i.i.i.i, label %do.body20.i.i.i.i, label %if.then86.i.i.ocfs2_figure_cluster_boundaries.exit.i.i.i_crit_edge, !prof !134

if.then86.i.i.ocfs2_figure_cluster_boundaries.exit.i.i.i_crit_edge: ; preds = %if.then86.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_figure_cluster_boundaries.exit.i.i.i

do.body20.i.i.i.i:                                ; preds = %if.then86.i.i
  %105 = shl i32 %18, %104
  %shl4.i.i.i.i = and i32 %105, 4095
  %s_clustersize.i.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %102, i32 0, i32 35
  %106 = ptrtoint ptr %s_clustersize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %s_clustersize.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %107, %shl4.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i.i)
  %cmp21.i.i.i.i = icmp ugt i32 %add.i.i.i.i, 4096
  br i1 %cmp21.i.i.i.i, label %do.body29.i.i.i.i, label %do.body20.i.i.i.i.ocfs2_figure_cluster_boundaries.exit.i.i.i_crit_edge, !prof !134

do.body20.i.i.i.i.ocfs2_figure_cluster_boundaries.exit.i.i.i_crit_edge: ; preds = %do.body20.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_figure_cluster_boundaries.exit.i.i.i

do.body29.i.i.i.i:                                ; preds = %do.body20.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #11, !srcloc !169
  unreachable

ocfs2_figure_cluster_boundaries.exit.i.i.i:       ; preds = %do.body20.i.i.i.i.ocfs2_figure_cluster_boundaries.exit.i.i.i_crit_edge, %if.then86.i.i.ocfs2_figure_cluster_boundaries.exit.i.i.i_crit_edge
  %cluster_start.057.i.i.i.i = phi i32 [ %shl4.i.i.i.i, %do.body20.i.i.i.i.ocfs2_figure_cluster_boundaries.exit.i.i.i_crit_edge ], [ 0, %if.then86.i.i.ocfs2_figure_cluster_boundaries.exit.i.i.i_crit_edge ]
  %cluster_end.056.i.i.i.i = phi i32 [ %add.i.i.i.i, %do.body20.i.i.i.i.ocfs2_figure_cluster_boundaries.exit.i.i.i_crit_edge ], [ 4096, %if.then86.i.i.ocfs2_figure_cluster_boundaries.exit.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %108 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i.i.i = or i32 %108, 512
  %109 = call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i.i.i.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %112, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !151
  %113 = call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i1.i.i.i.i.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i1.i.i.i.i.i to ptr
  %task.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %task.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task.i.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 213
  %117 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i.i, align 8
  %inc.i.i.i.i.i.i.i = add i32 %118, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  %call.i.i.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef nonnull %67, i32 noundef %or.i.i.i.i) #11
  %119 = or i32 %user_data_from.0142.i.i, %user_data_to.0143.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %ocfs2_figure_cluster_boundaries.exit.i.i.i.do.end.sink.split.i.i.i_crit_edge, label %if.then.i.i.i

ocfs2_figure_cluster_boundaries.exit.i.i.i.do.end.sink.split.i.i.i_crit_edge: ; preds = %ocfs2_figure_cluster_boundaries.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.sink.split.i.i.i

if.then.i.i.i:                                    ; preds = %ocfs2_figure_cluster_boundaries.exit.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %user_data_from.0142.i.i, i32 %cluster_start.057.i.i.i.i)
  %cmp.i136.i.i = icmp ugt i32 %user_data_from.0142.i.i, %cluster_start.057.i.i.i.i
  br i1 %cmp.i136.i.i, label %if.then2.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then2.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 %cluster_start.057.i.i.i.i
  %sub.i.i.i = sub nsw i32 %user_data_from.0142.i.i, %cluster_start.057.i.i.i.i
  %121 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %sub.i.i.i)
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then2.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cluster_end.056.i.i.i.i, i32 %user_data_to.0143.i.i)
  %cmp3.i.i.i = icmp ugt i32 %cluster_end.056.i.i.i.i, %user_data_to.0143.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.do.end.sink.split.i.i.i_crit_edge, label %if.end.i.i.i.ocfs2_clear_page_regions.exit.i.i_crit_edge

if.end.i.i.i.ocfs2_clear_page_regions.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_clear_page_regions.exit.i.i

if.end.i.i.i.do.end.sink.split.i.i.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.sink.split.i.i.i

do.end.sink.split.i.i.i:                          ; preds = %if.end.i.i.i.do.end.sink.split.i.i.i_crit_edge, %ocfs2_figure_cluster_boundaries.exit.i.i.i.do.end.sink.split.i.i.i_crit_edge
  %to.sink25.i.i.i = phi i32 [ %user_data_to.0143.i.i, %if.end.i.i.i.do.end.sink.split.i.i.i_crit_edge ], [ %cluster_start.057.i.i.i.i, %ocfs2_figure_cluster_boundaries.exit.i.i.i.do.end.sink.split.i.i.i_crit_edge ]
  %add.ptr5.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 %to.sink25.i.i.i
  %sub6.i.i.i = sub i32 %cluster_end.056.i.i.i.i, %to.sink25.i.i.i
  %122 = call ptr @memset(ptr %add.ptr5.i.i.i, i32 0, i32 %sub6.i.i.i)
  br label %ocfs2_clear_page_regions.exit.i.i

ocfs2_clear_page_regions.exit.i.i:                ; preds = %do.end.sink.split.i.i.i, %if.end.i.i.i.ocfs2_clear_page_regions.exit.i.i_crit_edge
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i.i.i) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !153
  %123 = call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i1.i.i.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i1.i.i.i.i to ptr
  %task.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %task.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %task.i.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %126, i32 0, i32 213
  %127 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i.i = add i32 %128, -1
  store i32 %dec.i.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !154
  %129 = call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i.i.i = and i32 %129, -16384
  %130 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %132, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  br label %ocfs2_prepare_page_for_write.exit.thread282.i

ocfs2_prepare_page_for_write.exit.thread282.i:    ; preds = %ocfs2_clear_page_regions.exit.i.i, %PageUptodate.exit.i.i, %if.end81.i.i.ocfs2_prepare_page_for_write.exit.thread282.i_crit_edge
  call void @flush_dcache_page(ptr noundef nonnull %67) #11
  br label %cleanup179.i

ocfs2_prepare_page_for_write.exit.i:              ; preds = %do.body69.i.i, %do.body.i.i
  %ret.2.i.i = phi i32 [ %ret.0.i.i, %do.body.i.i ], [ %call50.i.i, %do.body69.i.i ]
  %133 = zext i32 %ret.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %ret.2.i.i, label %do.body163.i [
    i32 0, label %ocfs2_prepare_page_for_write.exit.i.cleanup179.i_crit_edge
    i32 -512, label %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge
    i32 -122, label %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge155
    i32 524289, label %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge156
    i32 -28, label %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge157
  ]

ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge157: ; preds = %ocfs2_prepare_page_for_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172.i

ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge156: ; preds = %ocfs2_prepare_page_for_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172.i

ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge155: ; preds = %ocfs2_prepare_page_for_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172.i

ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge: ; preds = %ocfs2_prepare_page_for_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172.i

ocfs2_prepare_page_for_write.exit.i.cleanup179.i_crit_edge: ; preds = %ocfs2_prepare_page_for_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup179.i

do.body163.i:                                     ; preds = %ocfs2_prepare_page_for_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m164.i) #11
  %134 = ptrtoint ptr %_m164.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 1152921504606846976, ptr %_m164.i, align 8
  %conv168.i = sext i32 %ret.2.i.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m164.i, ptr noundef nonnull @__func__.ocfs2_write_cluster, i32 noundef 1202, ptr noundef nonnull @.str.6, i64 noundef %conv168.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m164.i) #11
  br label %if.end172.i

if.end172.i:                                      ; preds = %do.body163.i, %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge, %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge155, %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge156, %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge157, %do.end49.i.i.if.end172.i_crit_edge, %if.end.i.i.if.end172.i_crit_edge
  %ret.2.i281.i = phi i32 [ %ret.2.i.i, %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge ], [ %ret.2.i.i, %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge155 ], [ %ret.2.i.i, %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge156 ], [ %ret.2.i.i, %ocfs2_prepare_page_for_write.exit.i.if.end172.i_crit_edge157 ], [ %ret.2.i.i, %do.body163.i ], [ %ret.0.i.i, %if.end.i.i.if.end172.i_crit_edge ], [ %call50.i.i, %do.end49.i.i.if.end172.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0297.i)
  %cmp174.i = icmp eq i32 %ret.0297.i, 0
  %spec.select.i = select i1 %cmp174.i, i32 %ret.2.i281.i, i32 %ret.0297.i
  br label %cleanup179.i

cleanup179.i:                                     ; preds = %if.end172.i, %ocfs2_prepare_page_for_write.exit.i.cleanup179.i_crit_edge, %ocfs2_prepare_page_for_write.exit.thread282.i, %if.then140.i
  %ret.2.i = phi i32 [ %ret.0297.i, %if.then140.i ], [ %ret.0297.i, %ocfs2_prepare_page_for_write.exit.i.cleanup179.i_crit_edge ], [ %spec.select.i, %if.end172.i ], [ %ret.0297.i, %ocfs2_prepare_page_for_write.exit.thread282.i ]
  %inc182.i = add nuw i32 %i.0296.i, 1
  %135 = ptrtoint ptr %w_num_pages.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %w_num_pages.i, align 4
  %cmp136.i = icmp ult i32 %inc182.i, %136
  br i1 %cmp136.i, label %cleanup179.i.for.body.i_crit_edge, label %cleanup179.i.for.end.i_crit_edge

cleanup179.i.for.end.i_crit_edge:                 ; preds = %cleanup179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

cleanup179.i.for.body.i_crit_edge:                ; preds = %cleanup179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup179.i.for.end.i_crit_edge, %if.end135.i.for.end.i_crit_edge
  %ret.0.lcssa.i = phi i32 [ %call94.i, %if.end135.i.for.end.i_crit_edge ], [ %ret.2.i, %cleanup179.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool183.not.i = icmp eq i32 %ret.0.lcssa.i, 0
  %brmerge.i = or i1 %tobool.not.i, %tobool183.not.i
  br i1 %brmerge.i, label %for.end.i.ocfs2_write_cluster.exit_crit_edge, label %if.then186.i

for.end.i.ocfs2_write_cluster.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_cluster.exit

if.then186.i:                                     ; preds = %for.end.i
  %137 = trunc i64 %pos.addr.076 to i32
  %conv.i270.i = and i32 %137, 4095
  %conv1.i271.i = zext i32 %local_len.0 to i64
  %conv2.i.i = add i32 %local_len.0, %137
  %138 = ptrtoint ptr %w_target_page.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %w_target_page.i.i, align 4
  %tobool.not.i273.i = icmp eq ptr %139, null
  br i1 %tobool.not.i273.i, label %if.then186.i.if.end.i275.i_crit_edge, label %if.then.i274.i

if.then186.i.if.end.i275.i_crit_edge:             ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i275.i

if.then.i274.i:                                   ; preds = %if.then186.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ocfs2_zero_new_buffers(ptr noundef nonnull %139, i32 noundef %conv.i270.i, i32 noundef %conv2.i.i) #11
  br label %if.end.i275.i

if.end.i275.i:                                    ; preds = %if.then.i274.i, %if.then186.i.if.end.i275.i_crit_edge
  %140 = ptrtoint ptr %w_num_pages.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %w_num_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp33.not.i.i = icmp eq i32 %141, 0
  br i1 %cmp33.not.i.i, label %if.end.i275.i.ocfs2_write_cluster.exit_crit_edge, label %for.body.lr.ph.i.i

if.end.i275.i.ocfs2_write_cluster.exit_crit_edge: ; preds = %if.end.i275.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_cluster.exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i275.i
  %ip_jinode.i.i.i = getelementptr i8, ptr %20, i32 784
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.034.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 7, i32 %i.034.i.i
  %142 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %143, null
  br i1 %tobool5.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %145)
  %cmp.i.not.i.i.i = icmp eq i32 %145, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i276.i, label %PagePrivate.exit.i.i, !prof !134

if.then.i.i276.i:                                 ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef nonnull %143, ptr noundef nonnull @.str.16) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !157
  unreachable

PagePrivate.exit.i.i:                             ; preds = %land.lhs.true.i.i
  %146 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %143, align 4
  %148 = and i32 %147, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool6.not.i.i = icmp eq i32 %148, 0
  br i1 %tobool6.not.i.i, label %PagePrivate.exit.i.i.for.inc.i.i_crit_edge, label %if.then7.i.i

PagePrivate.exit.i.i.for.inc.i.i_crit_edge:       ; preds = %PagePrivate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %PagePrivate.exit.i.i
  %149 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %20, align 8
  %151 = and i16 %150, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %151)
  %cmp.i.i277.i = icmp eq i16 %151, -32768
  br i1 %cmp.i.i277.i, label %ocfs2_should_order_data.exit.i.i, label %if.then7.i.i.if.end13.i.i_crit_edge

if.then7.i.i.if.end13.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i

ocfs2_should_order_data.exit.i.i:                 ; preds = %if.then7.i.i
  %152 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %153, i32 0, i32 33
  %154 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_mount_opt.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %155, i32 0, i32 28
  %156 = ptrtoint ptr %s_mount_opt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %s_mount_opt.i.i.i, align 8
  %158 = and i32 %157, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool9.not.not.i.i = icmp eq i32 %158, 0
  br i1 %tobool9.not.not.i.i, label %if.then10.i.i, label %ocfs2_should_order_data.exit.i.i.if.end13.i.i_crit_edge

ocfs2_should_order_data.exit.i.i.if.end13.i.i_crit_edge: ; preds = %ocfs2_should_order_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %ocfs2_should_order_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %159 = ptrtoint ptr %w_handle.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %w_handle.i, align 4
  %call1.i.i.i = call i32 @jbd2_journal_inode_ranged_write(ptr noundef %160, ptr noundef %ip_jinode.i.i.i, i64 noundef %pos.addr.076, i64 noundef %conv1.i271.i) #11
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then10.i.i, %ocfs2_should_order_data.exit.i.i.if.end13.i.i_crit_edge, %if.then7.i.i.if.end13.i.i_crit_edge
  %call14.i.i = call i32 @block_commit_write(ptr noundef nonnull %143, i32 noundef %conv.i270.i, i32 noundef %conv2.i.i) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end13.i.i, %PagePrivate.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.034.i.i, 1
  %161 = ptrtoint ptr %w_num_pages.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %w_num_pages.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %162
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.ocfs2_write_cluster.exit_crit_edge

for.inc.i.i.ocfs2_write_cluster.exit_crit_edge:   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_write_cluster.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

ocfs2_write_cluster.exit:                         ; preds = %for.inc.i.i.ocfs2_write_cluster.exit_crit_edge, %if.end.i275.i.ocfs2_write_cluster.exit_crit_edge, %for.end.i.ocfs2_write_cluster.exit_crit_edge, %do.body98.i, %do.body80.i, %if.then63.i.ocfs2_write_cluster.exit_crit_edge, %if.then63.i.ocfs2_write_cluster.exit_crit_edge152, %if.then63.i.ocfs2_write_cluster.exit_crit_edge153, %if.then63.i.ocfs2_write_cluster.exit_crit_edge154, %cleanup.thread.i
  %retval.0.i = phi i32 [ %call94.i, %do.body98.i ], [ %ret.0.lcssa.i, %for.end.i.ocfs2_write_cluster.exit_crit_edge ], [ %call60.i, %if.then63.i.ocfs2_write_cluster.exit_crit_edge ], [ %call60.i, %if.then63.i.ocfs2_write_cluster.exit_crit_edge152 ], [ %call60.i, %if.then63.i.ocfs2_write_cluster.exit_crit_edge153 ], [ %call60.i, %if.then63.i.ocfs2_write_cluster.exit_crit_edge154 ], [ %call60.i, %do.body80.i ], [ %call3.i, %cleanup.thread.i ], [ %ret.0.lcssa.i, %if.end.i275.i.ocfs2_write_cluster.exit_crit_edge ], [ %ret.0.lcssa.i, %for.inc.i.i.ocfs2_write_cluster.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %et.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blkno.i) #11
  %163 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %retval.0.i, label %do.body [
    i32 0, label %if.end31
    i32 -512, label %ocfs2_write_cluster.exit.out_crit_edge
    i32 -4, label %ocfs2_write_cluster.exit.out_crit_edge158
    i32 524289, label %ocfs2_write_cluster.exit.out_crit_edge159
    i32 -28, label %ocfs2_write_cluster.exit.out_crit_edge160
    i32 -122, label %ocfs2_write_cluster.exit.out_crit_edge161
  ]

ocfs2_write_cluster.exit.out_crit_edge161:        ; preds = %ocfs2_write_cluster.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ocfs2_write_cluster.exit.out_crit_edge160:        ; preds = %ocfs2_write_cluster.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ocfs2_write_cluster.exit.out_crit_edge159:        ; preds = %ocfs2_write_cluster.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ocfs2_write_cluster.exit.out_crit_edge158:        ; preds = %ocfs2_write_cluster.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

ocfs2_write_cluster.exit.out_crit_edge:           ; preds = %ocfs2_write_cluster.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body:                                          ; preds = %ocfs2_write_cluster.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %164 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv28 = sext i32 %retval.0.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_write_cluster_by_desc, i32 noundef 1250, ptr noundef nonnull @.str.6, i64 noundef %conv28) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  br label %out

if.end31:                                         ; preds = %ocfs2_write_cluster.exit
  %sub32 = sub i32 %len.addr.074, %local_len.0
  %conv33 = zext i32 %local_len.0 to i64
  %add34 = add i64 %pos.addr.076, %conv33
  %inc = add nuw i32 %i.075, 1
  %165 = ptrtoint ptr %w_clen to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %w_clen, align 4
  %cmp = icmp ult i32 %inc, %166
  br i1 %cmp, label %if.end31.for.body_crit_edge, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

out:                                              ; preds = %if.end31.out_crit_edge, %do.body, %ocfs2_write_cluster.exit.out_crit_edge, %ocfs2_write_cluster.exit.out_crit_edge158, %ocfs2_write_cluster.exit.out_crit_edge159, %ocfs2_write_cluster.exit.out_crit_edge160, %ocfs2_write_cluster.exit.out_crit_edge161, %entry.out_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %do.body ], [ 0, %entry.out_crit_edge ], [ %retval.0.i, %ocfs2_write_cluster.exit.out_crit_edge ], [ %retval.0.i, %ocfs2_write_cluster.exit.out_crit_edge158 ], [ %retval.0.i, %ocfs2_write_cluster.exit.out_crit_edge159 ], [ %retval.0.i, %ocfs2_write_cluster.exit.out_crit_edge160 ], [ %retval.0.i, %ocfs2_write_cluster.exit.out_crit_edge161 ], [ 0, %if.end31.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_free_alloc_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dquot_free_space(ptr noundef %inode, i64 noundef %nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__dquot_free_space(ptr noundef %inode, i64 noundef %nr, i32 noundef 0) #11
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_commit_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_try_to_free_truncate_log(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_write_end_nolock(ptr nocapture noundef readonly %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %fsdata) local_unnamed_addr #0 align 64 {
entry:
  %_m = alloca i64, align 8
  %tmp133 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i64 %pos to i32
  %conv = and i32 %0, 4095
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %i_sb = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  %w_di_bh = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 13
  %7 = ptrtoint ptr %w_di_bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %w_di_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %b_data, align 4
  %w_handle = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 12
  %11 = ptrtoint ptr %w_handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %w_handle, align 4
  %w_unwritten_list = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 15
  %13 = ptrtoint ptr %w_unwritten_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %w_unwritten_list, align 4
  %cmp.i.not = icmp eq ptr %14, %w_unwritten_list
  br i1 %cmp.i.not, label %do.end9, label %do.body4, !prof !137

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1963, 0\0A.popsection", ""() #11, !srcloc !181
  unreachable

do.end9:                                          ; preds = %entry
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %do.end9.if.end40_crit_edge, label %if.then11

do.end9.if.end40_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then11:                                        ; preds = %do.end9
  %ip_metadata_cache.i = getelementptr i8, ptr %2, i32 -56
  %call14 = tail call i32 @ocfs2_journal_access_di(ptr noundef nonnull %12, ptr noundef %ip_metadata_cache.i, ptr noundef %8, i32 noundef 1) #11
  %15 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call14, label %do.body30 [
    i32 0, label %if.then11.if.end40_crit_edge
    i32 -512, label %if.then11.if.then147.critedge237_crit_edge
    i32 -4, label %if.then11.if.then147.critedge237_crit_edge279
    i32 524289, label %if.then11.if.then147.critedge237_crit_edge280
    i32 -28, label %if.then11.if.then147.critedge237_crit_edge281
    i32 -122, label %if.then11.if.then147.critedge237_crit_edge282
  ]

if.then11.if.then147.critedge237_crit_edge282:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then147.critedge237

if.then11.if.then147.critedge237_crit_edge281:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then147.critedge237

if.then11.if.then147.critedge237_crit_edge280:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then147.critedge237

if.then11.if.then147.critedge237_crit_edge279:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then147.critedge237

if.then11.if.then147.critedge237_crit_edge:       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then147.critedge237

if.then11.if.end40_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

do.body30:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %16 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv34 = sext i32 %call14 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_write_end_nolock, i32 noundef 1970, ptr noundef nonnull @.str.6, i64 noundef %conv34) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  call fastcc void @ocfs2_unlock_pages(ptr noundef %fsdata)
  br label %if.then147

if.end40:                                         ; preds = %if.then11.if.end40_crit_edge, %do.end9.if.end40_crit_edge
  %add.ptr.i = getelementptr i8, ptr %2, i32 -1608
  %ip_dyn_features = getelementptr i8, ptr %2, i32 -172
  %17 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ip_dyn_features, align 4
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool44.not = icmp eq i16 %19, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %copied, i32 %len)
  %cmp47 = icmp ult i32 %copied, %len
  br i1 %tobool44.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end40
  br i1 %cmp47, label %if.then.i242, label %if.then45.if.end4.i_crit_edge, !prof !134

if.then45.if.end4.i_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then.i242:                                     ; preds = %if.then45
  %w_target_page.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 8
  %20 = ptrtoint ptr %w_target_page.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %w_target_page.i, align 4
  %call.i = tail call fastcc i32 @PageUptodate(ptr noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i242.out_write_size_crit_edge, label %if.then.i242.if.end4.i_crit_edge

if.then.i242.if.end4.i_crit_edge:                 ; preds = %if.then.i242
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then.i242.out_write_size_crit_edge:            ; preds = %if.then.i242
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_write_size

if.end4.i:                                        ; preds = %if.then.i242.if.end4.i_crit_edge, %if.then45.if.end4.i_crit_edge
  %w_target_page5.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 8
  %22 = ptrtoint ptr %w_target_page5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %w_target_page5.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %24 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %24, 512
  %25 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !151
  %29 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i1.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 213
  %33 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %34, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !152
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %23, i32 noundef %or.i.i) #11
  %id2.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 35
  %id_data.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 35, i32 0, i32 4
  %add.ptr.i243 = getelementptr i8, ptr %id_data.i, i32 %0
  %add.ptr8.i = getelementptr i8, ptr %call.i.i.i, i32 %0
  %35 = call ptr @memcpy(ptr %add.ptr.i243, ptr %add.ptr8.i, i32 %copied)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !153
  %36 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i1.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 213
  %40 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %41, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !154
  %42 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr.i, align 8
  %48 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %id2.i, align 8
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #11
  %conv.i244 = zext i16 %50 to i32
  %i_dyn_features.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 25
  %51 = ptrtoint ptr %i_dyn_features.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %i_dyn_features.i, align 2
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #11
  %conv14.i = zext i16 %53 to i32
  tail call fastcc void @trace_ocfs2_write_end_inline(i64 noundef %47, i64 noundef %pos, i32 noundef %copied, i32 noundef %conv.i244, i32 noundef %conv14.i) #11
  br label %out_write_size

if.end46:                                         ; preds = %if.end40
  br i1 %cmp47, label %land.lhs.true55, label %if.end46.if.end65_crit_edge, !prof !134

if.end46.if.end65_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

land.lhs.true55:                                  ; preds = %if.end46
  %w_target_page = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 8
  %54 = ptrtoint ptr %w_target_page to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %w_target_page, align 4
  %tobool56.not = icmp eq ptr %55, null
  br i1 %tobool56.not, label %land.lhs.true55.if.end65_crit_edge, label %if.then57

land.lhs.true55.if.end65_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = tail call fastcc i32 @PageUptodate(ptr noundef nonnull %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  %spec.select = select i1 %tobool60.not, i32 0, i32 %copied
  %56 = ptrtoint ptr %w_target_page to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %w_target_page, align 4
  %add = add i32 %spec.select, %conv
  %add64 = add i32 %conv, %len
  tail call fastcc void @ocfs2_zero_new_buffers(ptr noundef %57, i32 noundef %add, i32 noundef %add64)
  br label %if.end65

if.end65:                                         ; preds = %if.then57, %land.lhs.true55.if.end65_crit_edge, %if.end46.if.end65_crit_edge
  %copied.addr.2 = phi i32 [ %copied, %land.lhs.true55.if.end65_crit_edge ], [ %spec.select, %if.then57 ], [ %copied, %if.end46.if.end65_crit_edge ]
  %w_target_page66 = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 8
  %58 = ptrtoint ptr %w_target_page66 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %w_target_page66, align 4
  %tobool67.not = icmp eq ptr %59, null
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @flush_dcache_page(ptr noundef nonnull %59) #11
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  %w_num_pages = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 6
  %60 = ptrtoint ptr %w_num_pages to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %w_num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp71267.not = icmp eq i32 %61, 0
  br i1 %cmp71267.not, label %if.end70.out_write_size_crit_edge, label %for.body.lr.ph

if.end70.out_write_size_crit_edge:                ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_write_size

for.body.lr.ph:                                   ; preds = %if.end70
  %w_target_from = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 10
  %w_target_to = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 11
  %ip_jinode.i = getelementptr i8, ptr %2, i32 784
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0268 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 7, i32 %i.0268
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx, align 4
  %cmp73 = icmp eq ptr %63, null
  br i1 %cmp73, label %for.body.for.inc_crit_edge, label %if.end76

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end76:                                         ; preds = %for.body
  %64 = ptrtoint ptr %w_target_page66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %w_target_page66, align 4
  %cmp78 = icmp eq ptr %63, %65
  br i1 %cmp78, label %if.then80, label %if.end76.if.end104_crit_edge

if.end76.if.end104_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

if.then80:                                        ; preds = %if.end76
  %66 = ptrtoint ptr %w_target_from to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %w_target_from, align 4
  %68 = ptrtoint ptr %w_target_to to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %w_target_to, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %67)
  %cmp82 = icmp ugt i32 %67, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %69)
  %cmp84 = icmp ugt i32 %69, 4096
  %or.cond = select i1 %cmp82, i1 true, i1 %cmp84
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %67)
  %cmp86 = icmp ult i32 %69, %67
  %or.cond240 = select i1 %or.cond, i1 true, i1 %cmp86
  br i1 %or.cond240, label %do.body95, label %if.then80.if.end104_crit_edge, !prof !182

if.then80.if.end104_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104

do.body95:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2003, 0\0A.popsection", ""() #11, !srcloc !183
  unreachable

if.end104:                                        ; preds = %if.then80.if.end104_crit_edge, %if.end76.if.end104_crit_edge
  %from.0 = phi i32 [ 0, %if.end76.if.end104_crit_edge ], [ %67, %if.then80.if.end104_crit_edge ]
  %to.0 = phi i32 [ 4096, %if.end76.if.end104_crit_edge ], [ %69, %if.then80.if.end104_crit_edge ]
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %71)
  %cmp.i.not.i = icmp eq i32 %71, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !134

if.then.i:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef nonnull %63, ptr noundef nonnull @.str.16) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !157
  unreachable

PagePrivate.exit:                                 ; preds = %if.end104
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %63, align 4
  %74 = and i32 %73, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool106.not = icmp eq i32 %74, 0
  br i1 %tobool106.not, label %PagePrivate.exit.for.inc_crit_edge, label %if.then107

PagePrivate.exit.for.inc_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then107:                                       ; preds = %PagePrivate.exit
  br i1 %tobool10.not, label %if.then107.if.end118_crit_edge, label %land.lhs.true109

if.then107.if.end118_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

land.lhs.true109:                                 ; preds = %if.then107
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %2, align 8
  %77 = and i16 %76, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %77)
  %cmp.i245 = icmp eq i16 %77, -32768
  br i1 %cmp.i245, label %ocfs2_should_order_data.exit, label %land.lhs.true109.if.end118_crit_edge

land.lhs.true109.if.end118_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

ocfs2_should_order_data.exit:                     ; preds = %land.lhs.true109
  %78 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %79, i32 0, i32 33
  %80 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %s_fs_info.i, align 16
  %s_mount_opt.i = getelementptr inbounds %struct.ocfs2_super, ptr %81, i32 0, i32 28
  %82 = ptrtoint ptr %s_mount_opt.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %s_mount_opt.i, align 8
  %84 = and i32 %83, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool111.not.not = icmp eq i32 %84, 0
  br i1 %tobool111.not.not, label %if.then112, label %ocfs2_should_order_data.exit.if.end118_crit_edge

ocfs2_should_order_data.exit.if.end118_crit_edge: ; preds = %ocfs2_should_order_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end118

if.then112:                                       ; preds = %ocfs2_should_order_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  %index = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 1, i32 0, i32 2
  %85 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %index, align 4
  %conv113 = zext i32 %86 to i64
  %shl = shl nuw nsw i64 %conv113, 12
  %conv114 = zext i32 %from.0 to i64
  %add115 = add nuw nsw i64 %shl, %conv114
  %sub = sub nsw i32 %to.0, %from.0
  %conv116 = zext i32 %sub to i64
  %call1.i = tail call i32 @jbd2_journal_inode_ranged_write(ptr noundef nonnull %12, ptr noundef %ip_jinode.i, i64 noundef %add115, i64 noundef %conv116) #11
  br label %if.end118

if.end118:                                        ; preds = %if.then112, %ocfs2_should_order_data.exit.if.end118_crit_edge, %land.lhs.true109.if.end118_crit_edge, %if.then107.if.end118_crit_edge
  %call119 = tail call i32 @block_commit_write(ptr noundef nonnull %63, i32 noundef %from.0, i32 noundef %to.0) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end118, %PagePrivate.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0268, 1
  %87 = ptrtoint ptr %w_num_pages to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %w_num_pages, align 4
  %cmp71 = icmp ult i32 %inc, %88
  br i1 %cmp71, label %for.inc.for.body_crit_edge, label %for.inc.out_write_size_crit_edge

for.inc.out_write_size_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_write_size

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

out_write_size:                                   ; preds = %for.inc.out_write_size_crit_edge, %if.end70.out_write_size_crit_edge, %if.end4.i, %if.then.i242.out_write_size_crit_edge
  %copied.addr.3 = phi i32 [ %copied, %if.end4.i ], [ 0, %if.then.i242.out_write_size_crit_edge ], [ %copied.addr.2, %if.end70.out_write_size_crit_edge ], [ %copied.addr.2, %for.inc.out_write_size_crit_edge ]
  %w_type = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 3
  %89 = ptrtoint ptr %w_type to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %w_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp121.not = icmp eq i32 %90, 1
  br i1 %cmp121.not, label %if.end141, label %if.then123

if.then123:                                       ; preds = %out_write_size
  %conv124 = zext i32 %copied.addr.3 to i64
  %add125 = add i64 %conv124, %pos
  %call126 = tail call fastcc i64 @i_size_read(ptr noundef %2)
  call void @__sanitizer_cov_trace_cmp8(i64 %add125, i64 %call126)
  %cmp127 = icmp sgt i64 %add125, %call126
  br i1 %cmp127, label %if.then129, label %if.then123.if.end130_crit_edge

if.then123.if.end130_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then129:                                       ; preds = %if.then123
  %91 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %94, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %95 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i.i = icmp eq i32 %95, 0
  br i1 %tobool.not.i.i, label %if.then129.i_size_write.exit_crit_edge, label %land.lhs.true.i.i

if.then129.i_size_write.exit_crit_edge:           ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.lhs.true.i.i:                                ; preds = %if.then129
  %96 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i.i246 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i246 to ptr
  %preempt_count.i.i.i.i247 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i.i247 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i247, align 4
  %add.i.i.i = add i32 %99, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i247, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !185
  %100 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i.i, align 4
  %add.i28.i = add i32 %105, ptrtoint (ptr @lockdep_recursion to i32)
  %106 = inttoptr i32 %add.i28.i to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %106, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !186
  %109 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i7.i.i = and i32 %109, -16384
  %110 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i248 = add i32 %112, -1
  store volatile i32 %sub.i.i.i248, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool20.not.i.i = icmp eq i32 %108, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.i_size_write.exit_crit_edge

land.lhs.true.i.i.i_size_write.exit_crit_edge:    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %113 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i29.i = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i29.i to ptr
  %preempt_count.i.i30.i = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %preempt_count.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %preempt_count.i.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i.i = icmp eq i32 %116, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.i_size_write.exit_crit_edge

land.rhs.i.i.i_size_write.exit_crit_edge:         ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %117 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i9.i.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %120, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !187
  %121 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %122
  %123 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %124, ptrtoint (ptr @hardirqs_enabled to i32)
  %125 = inttoptr i32 %add47.i.i to ptr
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile i32, ptr %125, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !188
  %128 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i12.i.i = and i32 %128, -16384
  %129 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %131, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool54.not.i.i = icmp eq i32 %127, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.i_size_write.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.i_size_write.exit_crit_edge, label %if.then.i.i, !prof !137

land.rhs58.i.i.i_size_write.exit_crit_edge:       ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %i_size_write.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %i_size_write.exit

i_size_write.exit:                                ; preds = %if.then.i.i, %land.rhs58.i.i.i_size_write.exit_crit_edge, %land.rhs22.i.i.i_size_write.exit_crit_edge, %land.rhs.i.i.i_size_write.exit_crit_edge, %land.lhs.true.i.i.i_size_write.exit_crit_edge, %if.then129.i_size_write.exit_crit_edge
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 23
  %132 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i.i = add i32 %133, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !189
  %dep_map.i.i.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 23, i32 1
  %134 = tail call ptr @llvm.returnaddress(i32 0) #11
  %135 = ptrtoint ptr %134 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %135) #11
  %i_size8.i = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 14
  %136 = ptrtoint ptr %i_size8.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %add125, ptr %i_size8.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %135) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !190
  %137 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %i_size_seqcount.i, align 4
  %inc.i.i.i = add i32 %138, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !191
  %139 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i26.i = and i32 %139, -16384
  %140 = inttoptr i32 %and.i.i.i26.i to ptr
  %preempt_count.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %preempt_count.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %preempt_count.i.i27.i, align 4
  %sub.i.i = add i32 %142, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i27.i, align 4
  tail call void @__mark_inode_dirty(ptr noundef %2, i32 noundef 7) #11
  br label %if.end130

if.end130:                                        ; preds = %i_size_write.exit, %if.then123.if.end130_crit_edge
  %143 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i250 = getelementptr inbounds %struct.super_block, ptr %144, i32 0, i32 33
  %145 = ptrtoint ptr %s_fs_info.i250 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %s_fs_info.i250, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %146, i32 0, i32 36
  %147 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %s_clustersize_bits.i, align 8
  %sub.i = add i32 %148, -9
  %ip_clusters.i = getelementptr i8, ptr %2, i32 -176
  %149 = ptrtoint ptr %ip_clusters.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ip_clusters.i, align 8
  %conv.i251 = zext i32 %150 to i64
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %conv.i251, %sh_prom.i
  %i_blocks = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 22
  %151 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %shl.i, ptr %i_blocks, align 8
  %call132 = tail call fastcc i64 @i_size_read(ptr noundef %2)
  %152 = tail call i64 @llvm.bswap.i64(i64 %call132)
  %i_size = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 9
  %153 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %i_size, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp133) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp133, ptr noundef %2) #11
  %154 = call ptr @memcpy(ptr %i_ctime, ptr %tmp133, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp133) #11
  %155 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %156 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %i_mtime, align 8
  %158 = call i64 @llvm.bswap.i64(i64 %157)
  %i_ctime135 = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 14
  %159 = ptrtoint ptr %i_ctime135 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %i_ctime135, align 8
  %i_mtime136 = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 15
  %160 = ptrtoint ptr %i_mtime136 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %158, ptr %i_mtime136, align 8
  %tv_nsec = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 16, i32 1
  %161 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %tv_nsec, align 8
  %163 = call i32 @llvm.bswap.i32(i32 %162)
  %i_ctime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 21
  %164 = ptrtoint ptr %i_ctime_nsec to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %i_ctime_nsec, align 8
  %i_mtime_nsec = getelementptr inbounds %struct.ocfs2_dinode, ptr %10, i32 0, i32 22
  %165 = ptrtoint ptr %i_mtime_nsec to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %163, ptr %i_mtime_nsec, align 4
  br i1 %tobool10.not, label %if.end149.critedge, label %if.then139

if.then139:                                       ; preds = %if.end130
  %h_aborted.i.i = getelementptr inbounds %struct.jbd2_journal_handle, ptr %12, i32 0, i32 7
  %166 = ptrtoint ptr %h_aborted.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %bf.load.i.i = load i32, ptr %h_aborted.i.i, align 4
  %167 = and i32 %bf.load.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool.not.i.i252 = icmp eq i32 %167, 0
  br i1 %tobool.not.i.i252, label %lor.lhs.false.i.i, label %if.then139.if.then143_crit_edge

if.then139.if.then143_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then143

lor.lhs.false.i.i:                                ; preds = %if.then139
  %168 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %12, align 4
  %tobool1.not.i.i = icmp eq ptr %169, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.if.then143_crit_edge, label %is_handle_aborted.exit.i

lor.lhs.false.i.i.if.then143_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then143

is_handle_aborted.exit.i:                         ; preds = %lor.lhs.false.i.i
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 8
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %171, align 8
  %and.i.i.i253 = and i32 %173, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i253)
  %tobool.not.i = icmp eq i32 %and.i.i.i253, 0
  br i1 %tobool.not.i, label %if.then.i254, label %is_handle_aborted.exit.i.if.then143_crit_edge

is_handle_aborted.exit.i.if.then143_crit_edge:    ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then143

if.then.i254:                                     ; preds = %is_handle_aborted.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %t_tid.i = getelementptr inbounds %struct.transaction_s, ptr %169, i32 0, i32 1
  %174 = ptrtoint ptr %t_tid.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %t_tid.i, align 4
  %i_sync_tid.i = getelementptr i8, ptr %2, i32 884
  %176 = ptrtoint ptr %i_sync_tid.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %i_sync_tid.i, align 4
  %177 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %12, align 4
  %t_tid4.i = getelementptr inbounds %struct.transaction_s, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %t_tid4.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %t_tid4.i, align 4
  %i_datasync_tid.i = getelementptr i8, ptr %2, i32 888
  %181 = ptrtoint ptr %i_datasync_tid.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %i_datasync_tid.i, align 8
  br label %if.then143

if.end141:                                        ; preds = %out_write_size
  br i1 %tobool10.not, label %if.end149.critedge238, label %if.end141.if.then143_crit_edge

if.end141.if.then143_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then143

if.then143:                                       ; preds = %if.end141.if.then143_crit_edge, %if.then.i254, %is_handle_aborted.exit.i.if.then143_crit_edge, %lor.lhs.false.i.i.if.then143_crit_edge, %if.then139.if.then143_crit_edge
  %182 = ptrtoint ptr %w_di_bh to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %w_di_bh, align 4
  call void @ocfs2_journal_dirty(ptr noundef nonnull %12, ptr noundef %183) #11
  call fastcc void @ocfs2_unlock_pages(ptr noundef %fsdata)
  br label %if.then147

if.then147.critedge237:                           ; preds = %if.then11.if.then147.critedge237_crit_edge, %if.then11.if.then147.critedge237_crit_edge279, %if.then11.if.then147.critedge237_crit_edge280, %if.then11.if.then147.critedge237_crit_edge281, %if.then11.if.then147.critedge237_crit_edge282
  tail call fastcc void @ocfs2_unlock_pages(ptr noundef %fsdata)
  br label %if.then147

if.then147:                                       ; preds = %if.then147.critedge237, %if.then143, %do.body30
  %copied.addr.4 = phi i32 [ %copied.addr.3, %if.then143 ], [ %call14, %do.body30 ], [ %call14, %if.then147.critedge237 ]
  %call148 = call i32 @ocfs2_commit_trans(ptr noundef %6, ptr noundef nonnull %12) #11
  br label %if.end149

if.end149.critedge:                               ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ocfs2_unlock_pages(ptr noundef %fsdata)
  br label %if.end149

if.end149.critedge238:                            ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ocfs2_unlock_pages(ptr noundef %fsdata)
  br label %if.end149

if.end149:                                        ; preds = %if.end149.critedge238, %if.end149.critedge, %if.then147
  %copied.addr.5 = phi i32 [ %copied.addr.3, %if.end149.critedge238 ], [ %copied.addr.4, %if.then147 ], [ %copied.addr.3, %if.end149.critedge ]
  %w_dealloc = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %fsdata, i32 0, i32 14
  %call150 = call i32 @ocfs2_run_deallocs(ptr noundef %6, ptr noundef %w_dealloc) #11
  %184 = ptrtoint ptr %w_di_bh to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %w_di_bh, align 4
  %tobool.not.i255 = icmp eq ptr %185, null
  br i1 %tobool.not.i255, label %if.end149.brelse.exit_crit_edge, label %if.then.i256

if.end149.brelse.exit_crit_edge:                  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i256:                                     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %185) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i256, %if.end149.brelse.exit_crit_edge
  call void @kfree(ptr noundef %fsdata) #11
  ret i32 %copied.addr.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_zero_new_buffers(ptr noundef %page, i32 noundef %from, i32 noundef %to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !137

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
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
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !134

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !137

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i = add i32 %8, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %9, %if.end.i20.i ]
  %10 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %10, ptr noundef nonnull @.str.25) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #11, !srcloc !192
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !137

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i = add i32 %8, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %11, %if.end.i27.i ]
  %12 = inttoptr i32 %retval.0.i28.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !134

do.body4:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 881, 0\0A.popsection", ""() #11, !srcloc !193
  unreachable

do.end9:                                          ; preds = %PageLocked.exit
  %15 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i83 = icmp eq i32 %16, -1
  br i1 %cmp.i.not.i83, label %if.then.i84, label %PagePrivate.exit, !prof !134

if.then.i84:                                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !157
  unreachable

PagePrivate.exit:                                 ; preds = %do.end9
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %PagePrivate.exit.cleanup_crit_edge, label %do.body14

PagePrivate.exit.cleanup_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body14:                                        ; preds = %PagePrivate.exit
  %20 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i86 = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i86, label %if.then.i87, label %PagePrivate.exit90, !prof !134

if.then.i87:                                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !157
  unreachable

PagePrivate.exit90:                               ; preds = %do.body14
  %22 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %page, align 4
  %24 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool16.not = icmp eq i32 %24, 0
  br i1 %tobool16.not, label %do.body26, label %do.end34, !prof !134

do.body26:                                        ; preds = %PagePrivate.exit90
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 885, 0\0A.popsection", ""() #11, !srcloc !194
  unreachable

do.end34:                                         ; preds = %PagePrivate.exit90
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %private, align 4
  %27 = inttoptr i32 %26 to ptr
  %28 = ptrtoint ptr %page to i32
  br label %do.body35

do.body35:                                        ; preds = %if.end54.do.body35_crit_edge, %do.end34
  %bh.0 = phi ptr [ %27, %do.end34 ], [ %49, %if.end54.do.body35_crit_edge ]
  %block_start.0 = phi i32 [ 0, %do.end34 ], [ %add, %if.end54.do.body35_crit_edge ]
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 4
  %29 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %b_size, align 8
  %add = add i32 %30, %block_start.0
  %31 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %bh.0, align 4
  %33 = and i32 %32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool37.not = icmp ne i32 %33, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %from)
  %cmp = icmp ugt i32 %add, %from
  %or.cond = select i1 %tobool37.not, i1 %cmp, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %block_start.0, i32 %to)
  %cmp39 = icmp ult i32 %block_start.0, %to
  %or.cond82 = select i1 %or.cond, i1 %cmp39, i1 false
  br i1 %or.cond82, label %if.then40, label %do.body35.if.end54_crit_edge

do.body35.if.end54_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then40:                                        ; preds = %do.body35
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %0, align 4
  %and.i.i95 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95)
  %tobool.not.i.i96 = icmp eq i32 %and.i.i95, 0
  br i1 %tobool.not.i.i96, label %if.then40._compound_head.exit.i101_crit_edge, label %if.then.i.i98, !prof !137

if.then40._compound_head.exit.i101_crit_edge:     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i101

if.then.i.i98:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i97 = add i32 %35, -1
  br label %_compound_head.exit.i101

_compound_head.exit.i101:                         ; preds = %if.then.i.i98, %if.then40._compound_head.exit.i101_crit_edge
  %retval.0.i.i100 = phi i32 [ %sub.i.i97, %if.then.i.i98 ], [ %28, %if.then40._compound_head.exit.i101_crit_edge ]
  %36 = inttoptr i32 %retval.0.i.i100 to ptr
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  %and.i.i.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !137

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i101
  call void @__sanitizer_cov_trace_pc() #13
  %40 = inttoptr i32 %retval.0.i.i100 to ptr
  tail call void @dump_page(ptr noundef %40, ptr noundef nonnull @.str.14) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !156
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i101
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %36, align 4
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i, label %if.then43, label %PageUptodate.exit

PageUptodate.exit:                                ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !159
  br label %if.end52

if.then43:                                        ; preds = %folio_flags.exit.i.i
  %44 = tail call i32 @llvm.umax.i32(i32 %block_start.0, i32 %from)
  %45 = tail call i32 @llvm.umin.i32(i32 %add, i32 %to)
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %44, i32 noundef %45, i32 noundef 0, i32 noundef 0) #11
  %46 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %bh.0, align 4
  %and1.i.i93 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i93)
  %tobool.not.i = icmp eq i32 %and1.i.i93, 0
  br i1 %tobool.not.i, label %if.then.i94, label %if.then43.if.end52_crit_edge

if.then43.if.end52_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then.i94:                                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.0) #11
  br label %if.end52

if.end52:                                         ; preds = %if.then.i94, %if.then43.if.end52_crit_edge, %PageUptodate.exit
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bh.0) #11
  tail call void @mark_buffer_dirty(ptr noundef %bh.0) #11
  br label %if.end54

if.end54:                                         ; preds = %if.end52, %do.body35.if.end54_crit_edge
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %48 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_this_page, align 4
  %cmp56.not = icmp eq ptr %49, %27
  br i1 %cmp56.not, label %if.end54.cleanup_crit_edge, label %if.end54.do.body35_crit_edge

if.end54.do.body35_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body35

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end54.cleanup_crit_edge, %PagePrivate.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_commit_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_journal_dirty(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_unlock_pages(ptr nocapture noundef %wc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %w_target_locked = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 9
  %0 = ptrtoint ptr %w_target_locked to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %w_target_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %do.body

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.body:                                          ; preds = %entry
  %w_target_page = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 8
  %1 = ptrtoint ptr %w_target_page to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %w_target_page, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %do.body6, label %for.cond.preheader, !prof !134

for.cond.preheader:                               ; preds = %do.body
  %w_num_pages = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 6
  %3 = ptrtoint ptr %w_num_pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %w_num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp35.not = icmp eq i32 %4, 0
  br i1 %cmp35.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 801, 0\0A.popsection", ""() #11, !srcloc !195
  unreachable

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 7, i32 %i.036
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp13 = icmp eq ptr %2, %6
  br i1 %cmp13, label %if.then14, label %for.cond

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  br label %for.end

for.end:                                          ; preds = %if.then14, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %8 = ptrtoint ptr %w_target_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %w_target_page, align 4
  tail call void @mark_page_accessed(ptr noundef %9) #11
  %10 = ptrtoint ptr %w_target_page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %w_target_page, align 4
  %12 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !137

if.then.i.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %11 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i ]
  %16 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %17 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !134

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.18) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !160
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !161
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !162
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@ocfs2_unlock_pages, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !136

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %16, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end20_crit_edge

folio_put_testzero.exit.i.i.if.end20_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %16) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end20_crit_edge, %entry.if.end20_crit_edge
  %w_pages21 = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 7
  %w_num_pages22 = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %wc, i32 0, i32 6
  %20 = ptrtoint ptr %w_num_pages22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %w_num_pages22, align 4
  tail call void @ocfs2_unlock_and_free_pages(ptr noundef %w_pages21, i32 noundef %21)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_run_deallocs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1608
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.i, align 8
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %conv = zext i32 %7 to i64
  tail call fastcc void @trace_ocfs2_writepage(i64 noundef %5, i64 noundef %conv)
  %call1 = tail call i32 @block_write_full_page(ptr noundef %page, ptr noundef nonnull @ocfs2_get_block, ptr noundef %wbc) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  %di_bh.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -1608
  %index = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %conv = zext i32 %5 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.i, align 8
  %tobool.not = icmp eq ptr %page, null
  %conv2 = select i1 %tobool.not, i64 0, i64 %conv
  tail call fastcc void @trace_ocfs2_readpage(i64 noundef %7, i64 noundef %conv2)
  %call3 = tail call i32 @ocfs2_inode_lock_with_page(ptr noundef %3, ptr noundef null, i32 noundef 0, ptr noundef %page) #11
  %8 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call3, label %do.body [
    i32 0, label %if.end27
    i32 524289, label %entry.if.end50_crit_edge
    i32 -512, label %entry.if.then49_crit_edge
    i32 -4, label %entry.if.then49_crit_edge95
    i32 -122, label %entry.if.then49_crit_edge96
    i32 -28, label %entry.if.then49_crit_edge97
  ]

entry.if.then49_crit_edge97:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

entry.if.then49_crit_edge96:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

entry.if.then49_crit_edge95:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

entry.if.then49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %9 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv24 = sext i32 %call3 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_readpage, i32 noundef 292, ptr noundef nonnull @.str.6, i64 noundef %conv24) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  br label %if.then49

if.end27:                                         ; preds = %entry
  %ip_alloc_sem = getelementptr i8, ptr %3, i32 -424
  %call28 = tail call i32 @down_read_trylock(ptr noundef %ip_alloc_sem) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %out.thread91, label %if.end34

out.thread91:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unlock_page(ptr noundef %page) #11
  tail call void @down_read(ptr noundef %ip_alloc_sem) #11
  tail call void @up_read(ptr noundef %ip_alloc_sem) #11
  tail call void @ocfs2_inode_unlock(ptr noundef %3, i32 noundef 0) #11
  br label %if.end50

if.end34:                                         ; preds = %if.end27
  %call35 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %call35)
  %cmp36.not = icmp slt i64 %shl, %call35
  br i1 %cmp36.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end34
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %SetPageUptodate.exit, label %if.then.i.i.i, !prof !137

if.then.i.i.i:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.14) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #11, !srcloc !156
  unreachable

SetPageUptodate.exit:                             ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #11
  br label %out

if.end39:                                         ; preds = %if.end34
  %ip_dyn_features = getelementptr i8, ptr %3, i32 -172
  %13 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ip_dyn_features, align 4
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool42.not = icmp eq i16 %15, 0
  br i1 %tobool42.not, label %if.else, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh.i) #11
  %16 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %di_bh.i, align 4
  %17 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i79 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i79, label %if.end.i.i.i, label %if.then.i.i.i80, !prof !137

if.then.i.i.i80:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i32 %19, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i80
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i80 ], [ %20, %if.end.i.i.i ]
  %21 = inttoptr i32 %retval.0.i.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i.i = icmp eq i32 %23, -1
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %17, align 4
  %and.i16.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %do.end10.i.i, !prof !134

if.then.i.i:                                      ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !137

if.then.i19.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18.i.i = add i32 %25, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %26, %if.end.i20.i.i ]
  %27 = inttoptr i32 %retval.0.i21.i.i to ptr
  tail call void @dump_page(ptr noundef %27, ptr noundef nonnull @.str.25) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #11, !srcloc !192
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !137

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i25.i.i = add i32 %25, -1
  br label %PageLocked.exit.i

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %page to i32
  br label %PageLocked.exit.i

PageLocked.exit.i:                                ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %28, %if.end.i27.i.i ]
  %29 = inttoptr i32 %retval.0.i28.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and1.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.body10.i, !prof !134

do.body4.i:                                       ; preds = %PageLocked.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #11, !srcloc !196
  unreachable

do.body10.i:                                      ; preds = %PageLocked.exit.i
  %32 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ip_dyn_features, align 4
  %34 = and i16 %33, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool12.not.i = icmp eq i16 %34, 0
  br i1 %tobool12.not.i, label %do.body22.i, label %do.end30.i, !prof !134

do.body22.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 262, 0\0A.popsection", ""() #11, !srcloc !197
  unreachable

do.end30.i:                                       ; preds = %do.body10.i
  %call31.i = call i32 @ocfs2_read_inode_block(ptr noundef %3, ptr noundef nonnull %di_bh.i) #11
  %35 = zext i32 %call31.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call31.i, label %do.body47.i [
    i32 0, label %if.end56.i
    i32 -512, label %do.end30.i.out.i_crit_edge
    i32 -4, label %do.end30.i.out.i_crit_edge98
    i32 524289, label %do.end30.i.out.i_crit_edge99
    i32 -28, label %do.end30.i.out.i_crit_edge100
    i32 -122, label %do.end30.i.out.i_crit_edge101
  ]

do.end30.i.out.i_crit_edge101:                    ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

do.end30.i.out.i_crit_edge100:                    ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

do.end30.i.out.i_crit_edge99:                     ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

do.end30.i.out.i_crit_edge98:                     ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

do.end30.i.out.i_crit_edge:                       ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

do.body47.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #11
  %36 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv51.i = sext i32 %call31.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_readpage_inline, i32 noundef 266, ptr noundef nonnull @.str.6, i64 noundef %conv51.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #11
  br label %out.i

if.end56.i:                                       ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %di_bh.i, align 4
  %call57.i = call i32 @ocfs2_read_inline_data(ptr noundef %3, ptr noundef %page, ptr noundef %38) #11
  br label %out.i

out.i:                                            ; preds = %if.end56.i, %do.body47.i, %do.end30.i.out.i_crit_edge, %do.end30.i.out.i_crit_edge98, %do.end30.i.out.i_crit_edge99, %do.end30.i.out.i_crit_edge100, %do.end30.i.out.i_crit_edge101
  %ret.0.i = phi i32 [ %call57.i, %if.end56.i ], [ %call31.i, %do.end30.i.out.i_crit_edge ], [ %call31.i, %do.end30.i.out.i_crit_edge98 ], [ %call31.i, %do.end30.i.out.i_crit_edge99 ], [ %call31.i, %do.end30.i.out.i_crit_edge100 ], [ %call31.i, %do.end30.i.out.i_crit_edge101 ], [ %call31.i, %do.body47.i ]
  call void @unlock_page(ptr noundef %page) #11
  %39 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %di_bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %out.i.ocfs2_readpage_inline.exit_crit_edge, label %if.then.i70.i

out.i.ocfs2_readpage_inline.exit_crit_edge:       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_readpage_inline.exit

if.then.i70.i:                                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %40) #11
  br label %ocfs2_readpage_inline.exit

ocfs2_readpage_inline.exit:                       ; preds = %if.then.i70.i, %out.i.ocfs2_readpage_inline.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh.i) #11
  br label %out

if.else:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call i32 @block_read_full_page(ptr noundef %page, ptr noundef nonnull @ocfs2_get_block) #11
  br label %out

out:                                              ; preds = %if.else, %ocfs2_readpage_inline.exit, %SetPageUptodate.exit
  %ret.1 = phi i32 [ 0, %SetPageUptodate.exit ], [ %ret.0.i, %ocfs2_readpage_inline.exit ], [ %call45, %if.else ]
  call void @up_read(ptr noundef %ip_alloc_sem) #11
  call void @ocfs2_inode_unlock(ptr noundef %3, i32 noundef 0) #11
  br i1 %cmp36.not, label %out.if.end50_crit_edge, label %out.if.then49_crit_edge

out.if.then49_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

out.if.end50_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then49:                                        ; preds = %out.if.then49_crit_edge, %do.body, %entry.if.then49_crit_edge, %entry.if.then49_crit_edge95, %entry.if.then49_crit_edge96, %entry.if.then49_crit_edge97
  %ret.385 = phi i32 [ %ret.1, %out.if.then49_crit_edge ], [ %call3, %do.body ], [ %call3, %entry.if.then49_crit_edge ], [ %call3, %entry.if.then49_crit_edge95 ], [ %call3, %entry.if.then49_crit_edge96 ], [ %call3, %entry.if.then49_crit_edge97 ]
  call void @unlock_page(ptr noundef %page) #11
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %out.if.end50_crit_edge, %out.thread91, %entry.if.end50_crit_edge
  %ret.386 = phi i32 [ %ret.385, %if.then49 ], [ %ret.1, %out.if.end50_crit_edge ], [ 524289, %out.thread91 ], [ %call3, %entry.if.end50_crit_edge ]
  ret i32 %ret.386
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ocfs2_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %3, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip_alloc_sem = getelementptr i8, ptr %3, i32 -424
  %call2 = tail call i32 @down_read_trylock(ptr noundef %ip_alloc_sem) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.end.out_unlock_crit_edge, label %if.end4

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  %ip_dyn_features = getelementptr i8, ptr %3, i32 -172
  %4 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ip_dyn_features, align 4
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool5.not = icmp eq i16 %6, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.out_up_crit_edge

if.end4.out_up_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_up

if.end7:                                          ; preds = %if.end4
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 3
  %7 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %_index.i, align 4
  %conv.i = zext i32 %8 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  %call9 = tail call fastcc i64 @i_size_read(ptr noundef %3)
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i, i64 %call9)
  %cmp10.not = icmp slt i64 %mul.i, %call9
  br i1 %cmp10.not, label %if.end13, label %if.end7.out_up_crit_edge

if.end7.out_up_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_up

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @ocfs2_get_block) #11
  br label %out_up

out_up:                                           ; preds = %if.end13, %if.end7.out_up_crit_edge, %if.end4.out_up_crit_edge
  tail call void @up_read(ptr noundef %ip_alloc_sem) #11
  br label %out_unlock

out_unlock:                                       ; preds = %out_up, %if.end.out_unlock_crit_edge
  tail call void @ocfs2_inode_unlock(ptr noundef %3, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_write_begin(ptr nocapture noundef readnone %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %flags, ptr noundef %pagep, ptr nocapture noundef writeonly %fsdata) #0 align 64 {
entry:
  %di_bh = alloca ptr, align 4
  %_m = alloca i64, align 8
  %_m34 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #11
  %0 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %di_bh, align 4
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %call = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %2, ptr noundef nonnull %di_bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call, label %do.body [
    i32 0, label %if.end12
    i32 -512, label %entry.cleanup_crit_edge
    i32 -4, label %entry.cleanup_crit_edge74
    i32 524289, label %entry.cleanup_crit_edge75
    i32 -28, label %entry.cleanup_crit_edge76
    i32 -122, label %entry.cleanup_crit_edge77
  ]

entry.cleanup_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge76:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge75:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge74:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %4 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_write_begin, i32 noundef 1893, ptr noundef nonnull @.str.6, i64 noundef %conv) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  br label %cleanup

if.end12:                                         ; preds = %entry
  %ip_alloc_sem = getelementptr i8, ptr %2, i32 -424
  call void @down_write(ptr noundef %ip_alloc_sem) #11
  %5 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %di_bh, align 4
  %call14 = call i32 @ocfs2_write_begin_nolock(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef 0, ptr noundef %pagep, ptr noundef %fsdata, ptr noundef %6, ptr noundef null)
  %7 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call14, label %do.body33 [
    i32 0, label %if.end44
    i32 -512, label %if.end12.if.end42_crit_edge
    i32 -4, label %if.end12.if.end42_crit_edge78
    i32 524289, label %if.end12.if.end42_crit_edge79
    i32 -28, label %if.end12.if.end42_crit_edge80
    i32 -122, label %if.end12.if.end42_crit_edge81
  ]

if.end12.if.end42_crit_edge81:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end12.if.end42_crit_edge80:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end12.if.end42_crit_edge79:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end12.if.end42_crit_edge78:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.end12.if.end42_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

do.body33:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m34) #11
  %8 = ptrtoint ptr %_m34 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1152921504606846976, ptr %_m34, align 8
  %conv38 = sext i32 %call14 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m34, ptr noundef nonnull @__func__.ocfs2_write_begin, i32 noundef 1909, ptr noundef nonnull @.str.6, i64 noundef %conv38) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m34) #11
  br label %if.end42

if.end42:                                         ; preds = %do.body33, %if.end12.if.end42_crit_edge, %if.end12.if.end42_crit_edge78, %if.end12.if.end42_crit_edge79, %if.end12.if.end42_crit_edge80, %if.end12.if.end42_crit_edge81
  call void @up_write(ptr noundef %ip_alloc_sem) #11
  %9 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %di_bh, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end42.brelse.exit_crit_edge, label %if.then.i

if.end42.brelse.exit_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %10) #11
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end42.brelse.exit_crit_edge
  call void @ocfs2_inode_unlock(ptr noundef %2, i32 noundef 1) #11
  br label %cleanup

if.end44:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %di_bh, align 4
  %tobool.not.i71 = icmp eq ptr %12, null
  br i1 %tobool.not.i71, label %if.end44.cleanup_crit_edge, label %if.then.i72

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i72:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i72, %if.end44.cleanup_crit_edge, %brelse.exit, %do.body, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge74, %entry.cleanup_crit_edge75, %entry.cleanup_crit_edge76, %entry.cleanup_crit_edge77
  %retval.0 = phi i32 [ %call14, %brelse.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge74 ], [ %call, %entry.cleanup_crit_edge75 ], [ %call, %entry.cleanup_crit_edge76 ], [ %call, %entry.cleanup_crit_edge77 ], [ %call, %do.body ], [ 0, %if.end44.cleanup_crit_edge ], [ 0, %if.then.i72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_write_end(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr nocapture noundef readnone %page, ptr noundef %fsdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %call = tail call i32 @ocfs2_write_end_nolock(ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %copied, ptr noundef %fsdata)
  %ip_alloc_sem = getelementptr i8, ptr %1, i32 -424
  tail call void @up_write(ptr noundef %ip_alloc_sem) #11
  tail call void @ocfs2_inode_unlock(ptr noundef %1, i32 noundef 1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ocfs2_bmap(ptr nocapture noundef readonly %mapping, i64 noundef %block) #0 align 64 {
entry:
  %p_blkno = alloca i64, align 8
  %_m = alloca i64, align 8
  %_m44 = alloca i64, align 8
  %_m68 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_blkno) #11
  %0 = ptrtoint ptr %p_blkno to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %p_blkno, align 8
  %1 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mapping, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -1608
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.i, align 8
  tail call fastcc void @trace_ocfs2_bmap(i64 noundef %4, i64 noundef %block)
  %ip_dyn_features.i = getelementptr i8, ptr %2, i32 -172
  %5 = ptrtoint ptr %ip_dyn_features.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ip_dyn_features.i, align 4
  %7 = and i16 %6, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.i.not = icmp eq i16 %7, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ip_flags = getelementptr i8, ptr %2, i32 -76
  %8 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ip_flags, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @ocfs2_inode_lock_full_nested(ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %10 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call4, label %do.body [
    i32 0, label %if.end23
    i32 -2, label %if.then3.cleanup_crit_edge
    i32 -512, label %if.then3.cleanup_crit_edge116
    i32 -4, label %if.then3.cleanup_crit_edge117
    i32 524289, label %if.then3.cleanup_crit_edge118
    i32 -28, label %if.then3.cleanup_crit_edge119
    i32 -122, label %if.then3.cleanup_crit_edge120
  ]

if.then3.cleanup_crit_edge120:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.cleanup_crit_edge119:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.cleanup_crit_edge118:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.cleanup_crit_edge117:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.cleanup_crit_edge116:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %11 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call4 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_bmap, i32 noundef 472, ptr noundef nonnull @.str.6, i64 noundef %conv) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  br label %cleanup

if.end23:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %ip_alloc_sem = getelementptr i8, ptr %2, i32 -424
  tail call void @down_read(ptr noundef %ip_alloc_sem) #11
  br label %if.end25

if.end25:                                         ; preds = %if.end23, %if.end.if.end25_crit_edge
  %12 = ptrtoint ptr %ip_dyn_features.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ip_dyn_features.i, align 4
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool29.not = icmp eq i16 %14, 0
  br i1 %tobool29.not, label %if.then30, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = call i32 @ocfs2_extent_map_get_blocks(ptr noundef %2, i64 noundef %block, ptr noundef nonnull %p_blkno, ptr noundef null, ptr noundef null) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25.if.end32_crit_edge
  %err.1 = phi i32 [ 0, %if.end25.if.end32_crit_edge ], [ %call31, %if.then30 ]
  %15 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ip_flags, align 4
  %and35 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end32.if.end40_crit_edge

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %ip_alloc_sem39 = getelementptr i8, ptr %2, i32 -424
  call void @up_read(ptr noundef %ip_alloc_sem39) #11
  call void @ocfs2_inode_unlock(ptr noundef %2, i32 noundef 0) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end32.if.end40_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool41.not = icmp eq i32 %err.1, 0
  br i1 %tobool41.not, label %cond.false.critedge, label %do.body43

do.body43:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m44) #11
  %17 = ptrtoint ptr %_m44 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 1152921504606846976, ptr %_m44, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m44, ptr noundef nonnull @__func__.ocfs2_bmap, i32 noundef 489, ptr noundef nonnull @.str.27, i64 noundef %block) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m44) #11
  %18 = zext i32 %err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %err.1, label %do.body67 [
    i32 -512, label %do.body43.cleanup_crit_edge
    i32 -4, label %do.body43.cleanup_crit_edge121
    i32 524289, label %do.body43.cleanup_crit_edge122
    i32 -28, label %do.body43.cleanup_crit_edge123
    i32 -122, label %do.body43.cleanup_crit_edge124
  ]

do.body43.cleanup_crit_edge124:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body43.cleanup_crit_edge123:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body43.cleanup_crit_edge122:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body43.cleanup_crit_edge121:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body67:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m68) #11
  %19 = ptrtoint ptr %_m68 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1152921504606846976, ptr %_m68, align 8
  %conv72 = sext i32 %err.1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m68, ptr noundef nonnull @__func__.ocfs2_bmap, i32 noundef 490, ptr noundef nonnull @.str.6, i64 noundef %conv72) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m68) #11
  br label %cleanup

cond.false.critedge:                              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %p_blkno to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %p_blkno, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.false.critedge, %do.body67, %do.body43.cleanup_crit_edge, %do.body43.cleanup_crit_edge121, %do.body43.cleanup_crit_edge122, %do.body43.cleanup_crit_edge123, %do.body43.cleanup_crit_edge124, %do.body, %if.then3.cleanup_crit_edge, %if.then3.cleanup_crit_edge116, %if.then3.cleanup_crit_edge117, %if.then3.cleanup_crit_edge118, %if.then3.cleanup_crit_edge119, %if.then3.cleanup_crit_edge120, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %entry.cleanup_crit_edge ], [ %21, %cond.false.critedge ], [ 0, %do.body67 ], [ 0, %do.body43.cleanup_crit_edge ], [ 0, %do.body43.cleanup_crit_edge121 ], [ 0, %do.body43.cleanup_crit_edge122 ], [ 0, %do.body43.cleanup_crit_edge123 ], [ 0, %do.body43.cleanup_crit_edge124 ], [ 0, %do.body ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge116 ], [ 0, %if.then3.cleanup_crit_edge117 ], [ 0, %if.then3.cleanup_crit_edge118 ], [ 0, %if.then3.cleanup_crit_edge119 ], [ 0, %if.then3.cleanup_crit_edge120 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_blkno) #11
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @block_invalidatepage(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_releasepage(ptr noundef %page, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !134

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.16) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #11, !srcloc !157
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %PagePrivate.exit.return_crit_edge, label %if.end

PagePrivate.exit.return_crit_edge:                ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @try_to_free_buffers(ptr noundef %page) #11
  br label %return

return:                                           ; preds = %if.end, %PagePrivate.exit.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %PagePrivate.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_direct_IO(ptr noundef %iocb, ptr noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info, align 16
  %ip_dyn_features = getelementptr i8, ptr %5, i32 -172
  %10 = ptrtoint ptr %ip_dyn_features to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ip_dyn_features, align 4
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ki_pos = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 1
  %13 = ptrtoint ptr %ki_pos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ki_pos, align 8
  %count = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 4
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 8
  %conv1 = zext i32 %16 to i64
  %add = add i64 %14, %conv1
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %5)
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call2)
  %cmp = icmp sgt i64 %add, %call2
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %9, i32 0, i32 19
  %17 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s_feature_incompat.i, align 8
  %19 = and i32 %18, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not = icmp eq i32 %19, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %data_source.i = getelementptr inbounds %struct.iov_iter, ptr %iter, i32 0, i32 2
  %20 = ptrtoint ptr %data_source.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data_source.i, align 2, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp10 = icmp eq i8 %21, 0
  %ocfs2_lock_get_block.ocfs2_dio_wr_get_block = select i1 %cmp10, ptr @ocfs2_lock_get_block, ptr @ocfs2_dio_wr_get_block
  %22 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 26
  %24 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_bdev, align 4
  %call15 = tail call i32 @__blockdev_direct_IO(ptr noundef %iocb, ptr noundef %5, ptr noundef %25, ptr noundef %iter, ptr noundef nonnull %ocfs2_lock_get_block.ocfs2_dio_wr_get_block, ptr noundef nonnull @ocfs2_dio_end_io, ptr noundef null, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @buffer_migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_is_partially_uptodate(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_get_block(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_symlink_get_block(i64 noundef %ino, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_symlink_get_block, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_symlink_get_block, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !136

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !199
  %call42 = tail call i32 @__traceiter_ocfs2_symlink_get_block(ptr noundef null, i64 noundef %ino, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !200
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_symlink_get_block, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_symlink_get_block, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_symlink_get_block.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ocfs2_symlink_get_block.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1152, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_read_inode_block(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocfs2_inode_is_new(ptr noundef %inode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %ip_flags = getelementptr i8, ptr %inode, i32 -76
  %0 = ptrtoint ptr %ip_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ip_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %ip_metadata_cache.i = getelementptr i8, ptr %inode, i32 -56
  %call.i = tail call ptr @ocfs2_metadata_cache_get_super(ptr noundef %ip_metadata_cache.i) #11
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %call.i, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %journal1.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %journal1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal1.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @trans_inc_lock) #11
  %ci_created_trans.i = getelementptr i8, ptr %inode, i32 -52
  %6 = ptrtoint ptr %ci_created_trans.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ci_created_trans.i, align 4
  %j_trans_id.i = getelementptr inbounds %struct.ocfs2_journal, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %j_trans_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %j_trans_id.i, align 4
  %sub.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %if.end.ocfs2_ci_is_new.exit_crit_edge, label %if.then.i

if.end.ocfs2_ci_is_new.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_ci_is_new.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %ci_created_trans.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ci_created_trans.i, align 4
  br label %ocfs2_ci_is_new.exit

ocfs2_ci_is_new.exit:                             ; preds = %if.then.i, %if.end.ocfs2_ci_is_new.exit_crit_edge
  %11 = xor i32 %sub.i, -1
  %sub.lobit.not.i = lshr i32 %11, 31
  tail call void @_raw_spin_unlock(ptr noundef nonnull @trans_inc_lock) #11
  br label %return

return:                                           ; preds = %ocfs2_ci_is_new.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %sub.lobit.not.i, %ocfs2_ci_is_new.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_symlink_get_block(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocfs2_metadata_cache_get_super(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__getblk_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_get_block_end(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clean_bdev_aliases(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_try_to_write_inline_data(i64 noundef %ino, i32 noundef %len, i64 noundef %pos, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_try_to_write_inline_data, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_try_to_write_inline_data, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !136

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !201
  %call42 = tail call i32 @__traceiter_ocfs2_try_to_write_inline_data(ptr noundef null, i64 noundef %ino, i32 noundef %len, i64 noundef %pos, i32 noundef %flags) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !202
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_try_to_write_inline_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_try_to_write_inline_data, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_try_to_write_inline_data.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ocfs2_try_to_write_inline_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1182, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_convert_inline_data_to_extents(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_try_to_write_inline_data(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_set_inode_data_inline(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_zero_extend(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_extend_no_holes(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_get_clusters(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_write_begin_nolock(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dquot_alloc_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_stable_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_add_inode_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_mark_extent_written(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dquot_free_space(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocfs2_free_unwritten_list(ptr noundef %inode, ptr noundef readonly %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %cmp.not27 = icmp eq ptr %1, %head
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ip_lock = getelementptr i8, ptr %inode, i32 -232
  br label %for.body

for.body:                                         ; preds = %list_del.exit26.for.body_crit_edge, %for.body.lr.ph
  %ue.028 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.0, %list_del.exit26.for.body_crit_edge ]
  %2 = ptrtoint ptr %ue.028 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %ue.028, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ue.028) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ue.028, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %ue.028 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ue.028, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %ue.028 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %ue.028, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ue.028, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_lock(ptr noundef %ip_lock) #11
  %ue_ip_node = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %ue.028, i32 0, i32 1
  %call.i.i21 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ue_ip_node) #11
  br i1 %call.i.i21, label %if.end.i.i24, label %list_del.exit.list_del.exit26_crit_edge

list_del.exit.list_del.exit26_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit26

if.end.i.i24:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i22 = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %ue.028, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i22, align 4
  %13 = ptrtoint ptr %ue_ip_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ue_ip_node, align 4
  %prev1.i.i.i23 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i23, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit26

list_del.exit26:                                  ; preds = %if.end.i.i24, %list_del.exit.list_del.exit26_crit_edge
  %17 = ptrtoint ptr %ue_ip_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %ue_ip_node, align 4
  %prev.i25 = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %ue.028, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i25, align 4
  tail call void @_raw_spin_unlock(ptr noundef %ip_lock) #11
  tail call void @kfree(ptr noundef %ue.028) #11
  %cmp.not = icmp eq ptr %tmp.0, %head
  br i1 %cmp.not, label %list_del.exit26.for.end_crit_edge, label %list_del.exit26.for.body_crit_edge

list_del.exit26.for.body_crit_edge:               ; preds = %list_del.exit26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit26.for.end_crit_edge:                ; preds = %list_del.exit26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit26.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_write_end_inline(i64 noundef %ino, i64 noundef %pos, i32 noundef %copied, i32 noundef %id_count, i32 noundef %features) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_end_inline, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_write_end_inline, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !136

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !203
  %call42 = tail call i32 @__traceiter_ocfs2_write_end_inline(ptr noundef null, i64 noundef %ino, i64 noundef %pos, i32 noundef %copied, i32 noundef %id_count, i32 noundef %features) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !204
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_end_inline, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_write_end_inline, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_write_end_inline.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ocfs2_write_end_inline.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1243, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_write_end_inline(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jbd2_journal_inode_ranged_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_writepage(i64 noundef %val1, i64 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_writepage, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_writepage, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !136

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %call42 = tail call i32 @__traceiter_ocfs2_writepage(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !206
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_writepage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_writepage, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_writepage.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ocfs2_writepage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1160, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_write_full_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_writepage(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_readpage(i64 noundef %val1, i64 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_readpage, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_readpage, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !136

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  %call42 = tail call i32 @__traceiter_ocfs2_readpage(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !208
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_readpage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_readpage, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_readpage.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ocfs2_readpage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1158, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_with_page(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_read_full_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_readpage(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_bmap(i64 noundef %val1, i64 noundef %val2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_bmap, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_bmap, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !136

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !137

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !209
  %call42 = tail call i32 @__traceiter_ocfs2_bmap(ptr noundef null, i64 noundef %val1, i64 noundef %val2) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !137

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_bmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_bmap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_bmap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_ocfs2_bmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 1162, ptr noundef nonnull @.str.8) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_bmap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_lock_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_alloc_sem = getelementptr i8, ptr %inode, i32 -424
  tail call void @down_read(ptr noundef %ip_alloc_sem) #11
  %call1 = tail call i32 @ocfs2_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create)
  tail call void @up_read(ptr noundef %ip_alloc_sem) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_dio_wr_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  %wc = alloca ptr, align 4
  %di_bh = alloca ptr, align 4
  %_m66 = alloca i64, align 8
  %_m110 = alloca i64, align 8
  %_m143 = alloca i64, align 8
  %_m182 = alloca i64, align 8
  %_m214 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wc) #11
  %4 = ptrtoint ptr %wc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %wc, align 4, !annotation !133
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #11
  %5 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %di_bh, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %7 to i64
  %shl = shl i64 %iblock, %sh_prom
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %sub = add i64 %call2, -1
  %shr = ashr i64 %sub, %sh_prom
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 4
  %8 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_size, align 8
  %s_clustersize = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 35
  %10 = ptrtoint ptr %s_clustersize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_clustersize, align 4
  %sub6 = add i32 %11, -1
  %12 = trunc i64 %shl to i32
  %13 = and i32 %sub6, %12
  %conv9 = sub i32 %11, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %9, i32 %conv9)
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %iblock)
  %cmp11.not = icmp ult i64 %shr, %iblock
  br i1 %cmp11.not, label %entry.if.end25_crit_edge, label %land.lhs.true

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

land.lhs.true:                                    ; preds = %entry
  %conv = zext i8 %7 to i32
  %sub13 = add i32 %14, -1
  %shr14 = lshr i32 %sub13, %conv
  %conv15 = zext i32 %shr14 to i64
  %add = add i64 %conv15, %iblock
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shr)
  %cmp16 = icmp ugt i64 %add, %shr
  br i1 %cmp16, label %if.then, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %sub18 = sub i64 1, %iblock
  %add19 = add i64 %sub18, %shr
  %shl21 = shl i64 %add19, %sh_prom
  %conv22 = trunc i64 %shl21 to i32
  br label %if.end25

if.end25:                                         ; preds = %if.then, %land.lhs.true.if.end25_crit_edge, %entry.if.end25_crit_edge
  %len.0 = phi i32 [ %conv22, %if.then ], [ %14, %land.lhs.true.if.end25_crit_edge ], [ %14, %entry.if.end25_crit_edge ]
  %conv26 = zext i32 %9 to i64
  %add27 = add i64 %shl, %conv26
  %call28 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @__sanitizer_cov_trace_cmp8(i64 %add27, i64 %call28)
  %cmp29.not = icmp sgt i64 %add27, %call28
  br i1 %cmp29.not, label %if.end25.if.end43_crit_edge, label %if.then31

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then31:                                        ; preds = %if.end25
  %ip_alloc_sem.i = getelementptr i8, ptr %inode, i32 -424
  tail call void @down_read(ptr noundef %ip_alloc_sem.i) #11
  %call1.i = tail call i32 @ocfs2_get_block(ptr noundef %inode, i64 noundef %iblock, ptr noundef %bh_result, i32 noundef %create) #11
  tail call void @up_read(ptr noundef %ip_alloc_sem.i) #11
  %15 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %bh_result, align 4
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool34.not = icmp eq i32 %17, 0
  br i1 %tobool34.not, label %if.then31.if.end42_crit_edge, label %land.lhs.true35

if.then31.if.end42_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true35:                                  ; preds = %if.then31
  %18 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %bh_result, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool37.not = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp39 = icmp eq i32 %call1.i, 0
  %or.cond = select i1 %tobool37.not, i1 %cmp39, i1 false
  br i1 %or.cond, label %land.lhs.true35.out.thread482_crit_edge, label %land.lhs.true35.if.end42_crit_edge

land.lhs.true35.if.end42_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

land.lhs.true35.out.thread482_crit_edge:          ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread482

if.end42:                                         ; preds = %land.lhs.true35.if.end42_crit_edge, %if.then31.if.end42_crit_edge
  %21 = ptrtoint ptr %bh_result to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %bh_result, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end25.if.end43_crit_edge
  %b_private.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 8
  %22 = ptrtoint ptr %b_private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_private.i, align 8
  %tobool.not.i440 = icmp eq ptr %23, null
  br i1 %tobool.not.i440, label %if.end.i, label %if.end43.if.end76_crit_edge

if.end43.if.end76_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.end.i:                                         ; preds = %if.end43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3136, i32 noundef 20) #15
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %do.body65, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %dw_zero_count.i = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %dw_zero_count.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dw_zero_count.i, align 8
  %dw_orphaned.i = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %dw_orphaned.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dw_orphaned.i, align 4
  %29 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 68
  %33 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pid.i.i, align 8
  %dw_writer_pid.i = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %dw_writer_pid.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %dw_writer_pid.i, align 8
  %36 = ptrtoint ptr %b_private.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %b_private.i, align 8
  br label %if.end76

do.body65:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m66) #11
  %37 = ptrtoint ptr %_m66 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 1152921504606846976, ptr %_m66, align 8
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m66, ptr noundef nonnull @__func__.ocfs2_dio_wr_get_block, i32 noundef 2186, ptr noundef nonnull @.str.6, i64 noundef -12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m66) #11
  br label %out.thread

if.end76:                                         ; preds = %if.end3.i, %if.end43.if.end76_crit_edge
  %retval.0.i.ph = phi ptr [ %23, %if.end43.if.end76_crit_edge ], [ %call7.i.i, %if.end3.i ]
  %38 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i = getelementptr inbounds %struct.ocfs2_super, ptr %41, i32 0, i32 36
  %42 = ptrtoint ptr %s_clustersize_bits.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_clustersize_bits.i, align 8
  %s_clustersize.i = getelementptr inbounds %struct.ocfs2_super, ptr %41, i32 0, i32 35
  %44 = ptrtoint ptr %s_clustersize.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_clustersize.i, align 4
  %sub.i = add i32 %45, -1
  %conv.i = sext i32 %sub.i to i64
  %add.i = add i64 %add27, %conv.i
  %sh_prom.i = zext i32 %43 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  %conv2.i = trunc i64 %shr.i to i32
  %call82 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  %46 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i, align 16
  %s_clustersize_bits.i442 = getelementptr inbounds %struct.ocfs2_super, ptr %47, i32 0, i32 36
  %48 = ptrtoint ptr %s_clustersize_bits.i442 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_clustersize_bits.i442, align 8
  %s_clustersize.i443 = getelementptr inbounds %struct.ocfs2_super, ptr %47, i32 0, i32 35
  %50 = ptrtoint ptr %s_clustersize.i443 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %s_clustersize.i443, align 4
  %sub.i444 = add i32 %51, -1
  %conv.i445 = sext i32 %sub.i444 to i64
  %add.i446 = add i64 %call82, %conv.i445
  %sh_prom.i447 = zext i32 %49 to i64
  %shr.i448 = lshr i64 %add.i446, %sh_prom.i447
  %conv2.i449 = trunc i64 %shr.i448 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2.i, i32 %conv2.i449)
  %cmp84 = icmp ugt i32 %conv2.i, %conv2.i449
  br i1 %cmp84, label %land.lhs.true86, label %if.end76.if.end122_crit_edge

if.end76.if.end122_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

land.lhs.true86:                                  ; preds = %if.end76
  %dw_orphaned = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, ptr %retval.0.i.ph, i32 0, i32 2
  %52 = ptrtoint ptr %dw_orphaned to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dw_orphaned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool87.not = icmp eq i32 %53, 0
  br i1 %tobool87.not, label %if.then88, label %land.lhs.true86.if.end122_crit_edge

land.lhs.true86.if.end122_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then88:                                        ; preds = %land.lhs.true86
  %call89 = tail call i32 @ocfs2_add_inode_to_orphan(ptr noundef %3, ptr noundef %inode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then92, label %if.end120

if.then92:                                        ; preds = %if.then88
  %54 = zext i32 %call89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call89, label %do.body109 [
    i32 -512, label %if.then92.out.thread_crit_edge
    i32 -4, label %if.then92.out.thread_crit_edge485
    i32 -28, label %if.then92.out.thread_crit_edge486
    i32 -122, label %if.then92.out.thread_crit_edge487
  ]

if.then92.out.thread_crit_edge487:                ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.then92.out.thread_crit_edge486:                ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.then92.out.thread_crit_edge485:                ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

if.then92.out.thread_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

do.body109:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m110) #11
  %55 = ptrtoint ptr %_m110 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 1152921504606846976, ptr %_m110, align 8
  %conv114 = sext i32 %call89 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m110, ptr noundef nonnull @__func__.ocfs2_dio_wr_get_block, i32 noundef 2200, ptr noundef nonnull @.str.6, i64 noundef %conv114) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m110) #11
  br label %out.thread

if.end120:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %dw_orphaned to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %dw_orphaned, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.end120, %land.lhs.true86.if.end122_crit_edge, %if.end76.if.end122_crit_edge
  %call123 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %inode, ptr noundef nonnull %di_bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  %57 = zext i32 %call123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call123, label %do.body142 [
    i32 0, label %if.end153
    i32 -512, label %if.end122.out_crit_edge
    i32 -4, label %if.end122.out_crit_edge488
    i32 524289, label %if.end122.out_crit_edge489
    i32 -28, label %if.end122.out_crit_edge490
    i32 -122, label %if.end122.out_crit_edge491
  ]

if.end122.out_crit_edge491:                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end122.out_crit_edge490:                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end122.out_crit_edge489:                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end122.out_crit_edge488:                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end122.out_crit_edge:                          ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body142:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m143) #11
  %58 = ptrtoint ptr %_m143 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 1152921504606846976, ptr %_m143, align 8
  %conv147 = sext i32 %call123 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m143, ptr noundef nonnull @__func__.ocfs2_dio_wr_get_block, i32 noundef 2208, ptr noundef nonnull @.str.6, i64 noundef %conv147) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m143) #11
  br label %out

if.end153:                                        ; preds = %if.end122
  %ip_alloc_sem = getelementptr i8, ptr %inode, i32 -424
  call void @down_write(ptr noundef %ip_alloc_sem) #11
  br i1 %tobool.not.i440, label %if.then155, label %if.end153.if.end193_crit_edge

if.end153.if.end193_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

if.then155:                                       ; preds = %if.end153
  %s_feature_incompat.i = getelementptr inbounds %struct.ocfs2_super, ptr %3, i32 0, i32 19
  %59 = ptrtoint ptr %s_feature_incompat.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_feature_incompat.i, align 8
  %61 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool157.not = icmp eq i32 %61, 0
  %62 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %di_bh, align 4
  br i1 %tobool157.not, label %if.else, label %if.then158

if.then158:                                       ; preds = %if.then155
  %64 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i450 = getelementptr inbounds %struct.super_block, ptr %65, i32 0, i32 33
  %66 = ptrtoint ptr %s_fs_info.i450 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %s_fs_info.i450, align 16
  %s_feature_incompat.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %67, i32 0, i32 19
  %68 = ptrtoint ptr %s_feature_incompat.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %s_feature_incompat.i.i, align 8
  %70 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i451 = icmp eq i32 %70, 0
  br i1 %tobool.not.i451, label %do.body4.i, label %do.end9.i, !prof !134

do.body4.i:                                       ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1640, 0\0A.popsection", ""() #11, !srcloc !165
  unreachable

do.end9.i:                                        ; preds = %if.then158
  %call10.i = call fastcc i64 @i_size_read(ptr noundef %inode) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call10.i, i64 %shl)
  %cmp.i452 = icmp slt i64 %call10.i, %shl
  br i1 %cmp.i452, label %if.then11.i, label %do.end9.i.if.end193_crit_edge

do.end9.i.if.end193_crit_edge:                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = call i32 @ocfs2_zero_extend(ptr noundef %inode, ptr noundef %63, i64 noundef %shl) #11
  br label %if.end161

if.else:                                          ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #13
  %call160 = call fastcc i32 @ocfs2_expand_nonsparse_inode(ptr noundef %inode, ptr noundef %63, i64 noundef %shl, i32 noundef %9, ptr noundef null)
  br label %if.end161

if.end161:                                        ; preds = %if.else, %if.then11.i
  %ret.0 = phi i32 [ %call160, %if.else ], [ %call12.i, %if.then11.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp162 = icmp slt i32 %ret.0, 0
  br i1 %cmp162, label %if.then164, label %if.end161.if.end193_crit_edge

if.end161.if.end193_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end193

if.then164:                                       ; preds = %if.end161
  %71 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %ret.0, label %do.body181 [
    i32 -512, label %if.then164.unlock_crit_edge
    i32 -4, label %if.then164.unlock_crit_edge492
    i32 -28, label %if.then164.unlock_crit_edge493
    i32 -122, label %if.then164.unlock_crit_edge494
  ]

if.then164.unlock_crit_edge494:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then164.unlock_crit_edge493:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then164.unlock_crit_edge492:                   ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then164.unlock_crit_edge:                      ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

do.body181:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m182) #11
  %72 = ptrtoint ptr %_m182 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 1152921504606846976, ptr %_m182, align 8
  %conv186 = sext i32 %ret.0 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m182, ptr noundef nonnull @__func__.ocfs2_dio_wr_get_block, i32 noundef 2221, ptr noundef nonnull @.str.6, i64 noundef %conv186) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m182) #11
  br label %unlock

if.end193:                                        ; preds = %if.end161.if.end193_crit_edge, %do.end9.i.if.end193_crit_edge, %if.end153.if.end193_crit_edge
  %i_mapping = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %73 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %i_mapping, align 8
  %75 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %di_bh, align 4
  %call194 = call i32 @ocfs2_write_begin_nolock(ptr noundef %74, i64 noundef %shl, i32 noundef %len.0, i32 noundef 1, ptr noundef null, ptr noundef nonnull %wc, ptr noundef %76, ptr noundef null)
  %77 = zext i32 %call194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call194, label %do.body213 [
    i32 0, label %if.end224
    i32 -512, label %if.end193.unlock_crit_edge
    i32 -4, label %if.end193.unlock_crit_edge495
    i32 524289, label %if.end193.unlock_crit_edge496
    i32 -28, label %if.end193.unlock_crit_edge497
    i32 -122, label %if.end193.unlock_crit_edge498
  ]

if.end193.unlock_crit_edge498:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end193.unlock_crit_edge497:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end193.unlock_crit_edge496:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end193.unlock_crit_edge495:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end193.unlock_crit_edge:                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

do.body213:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m214) #11
  %78 = ptrtoint ptr %_m214 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 1152921504606846976, ptr %_m214, align 8
  %conv218 = sext i32 %call194 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m214, ptr noundef nonnull @__func__.ocfs2_dio_wr_get_block, i32 noundef 2230, ptr noundef nonnull @.str.6, i64 noundef %conv218) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m214) #11
  br label %unlock

if.end224:                                        ; preds = %if.end193
  %79 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %wc, align 4
  %w_desc = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_sb, align 4
  %c_phys = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %80, i32 0, i32 4, i32 0, i32 1
  %83 = ptrtoint ptr %c_phys to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %c_phys, align 4
  %s_fs_info.i453 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 33
  %85 = ptrtoint ptr %s_fs_info.i453 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i453, align 16
  %s_clustersize_bits.i454 = getelementptr inbounds %struct.ocfs2_super, ptr %86, i32 0, i32 36
  %87 = ptrtoint ptr %s_clustersize_bits.i454 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %s_clustersize_bits.i454, align 8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 2
  %89 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i455 = zext i8 %90 to i32
  %sub.i456 = sub i32 %88, %conv.i455
  %conv1.i = zext i32 %84 to i64
  %sh_prom.i457 = zext i32 %sub.i456 to i64
  %shl.i = shl i64 %conv1.i, %sh_prom.i457
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i)
  %cmp228 = icmp eq i64 %shl.i, 0
  br i1 %cmp228, label %do.body237, label %do.end245, !prof !134

do.body237:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2237, 0\0A.popsection", ""() #11, !srcloc !211
  unreachable

do.end245:                                        ; preds = %if.end224
  %notmask = shl nsw i64 -1, %sh_prom.i457
  %sub248 = xor i64 %notmask, -1
  %and249 = and i64 %sub248, %iblock
  %add250 = add i64 %and249, %shl.i
  %91 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %bh_result, align 4
  %93 = and i32 %92, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i.i = icmp eq i32 %93, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end245.map_bh.exit_crit_edge

do.end245.map_bh.exit_crit_edge:                  ; preds = %do.end245
  call void @__sanitizer_cov_trace_pc() #13
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %do.end245
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_result) #11
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %do.end245.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 26
  %94 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 6
  %96 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_result, i32 0, i32 3
  %97 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %add250, ptr %b_blocknr.i, align 8
  %98 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %len.0, ptr %b_size, align 8
  %c_needs_zero = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %80, i32 0, i32 4, i32 0, i32 4
  %99 = ptrtoint ptr %c_needs_zero to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %c_needs_zero, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool253.not = icmp eq i32 %100, 0
  br i1 %tobool253.not, label %map_bh.exit.if.end255_crit_edge, label %if.then254

map_bh.exit.if.end255_crit_edge:                  ; preds = %map_bh.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

if.then254:                                       ; preds = %map_bh.exit
  %101 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %bh_result, align 4
  %103 = and i32 %102, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i = icmp eq i32 %103, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then254.if.end255_crit_edge

if.then254.if.end255_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255

if.then.i:                                        ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #11
  br label %if.end255

if.end255:                                        ; preds = %if.then.i, %if.then254.if.end255_crit_edge, %map_bh.exit.if.end255_crit_edge
  br i1 %cmp11.not, label %if.then258, label %if.end255.if.end259_crit_edge

if.end255.if.end259_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end259

if.then258:                                       ; preds = %if.end255
  %104 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %bh_result, align 4
  %106 = and i32 %105, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i435 = icmp eq i32 %106, 0
  br i1 %tobool.not.i435, label %if.then.i436, label %if.then258.if.end259_crit_edge

if.then258.if.end259_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end259

if.then.i436:                                     ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_result) #11
  br label %if.end259

if.end259:                                        ; preds = %if.then.i436, %if.then258.if.end259_crit_edge, %if.end255.if.end259_crit_edge
  %107 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %bh_result, align 4
  %109 = and i32 %108, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i438 = icmp eq i32 %109, 0
  br i1 %tobool.not.i438, label %if.then.i439, label %if.end259.set_buffer_defer_completion.exit_crit_edge

if.end259.set_buffer_defer_completion.exit_crit_edge: ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_buffer_defer_completion.exit

if.then.i439:                                     ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #13
  call void @_set_bit(i32 noundef 15, ptr noundef %bh_result) #11
  br label %set_buffer_defer_completion.exit

set_buffer_defer_completion.exit:                 ; preds = %if.then.i439, %if.end259.set_buffer_defer_completion.exit_crit_edge
  %w_unwritten_list = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %80, i32 0, i32 15
  %110 = ptrtoint ptr %w_unwritten_list to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile ptr, ptr %w_unwritten_list, align 4
  %cmp.i465.not = icmp eq ptr %111, %w_unwritten_list
  br i1 %cmp.i465.not, label %set_buffer_defer_completion.exit.if.end287_crit_edge, label %if.then262

set_buffer_defer_completion.exit.if.end287_crit_edge: ; preds = %set_buffer_defer_completion.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end287

if.then262:                                       ; preds = %set_buffer_defer_completion.exit
  %ue_cpos = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %ue_cpos to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ue_cpos, align 4
  %114 = ptrtoint ptr %w_desc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %w_desc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %cmp266.not = icmp eq i32 %113, %115
  br i1 %cmp266.not, label %do.end283, label %do.body275, !prof !137

do.body275:                                       ; preds = %if.then262
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2258, 0\0A.popsection", ""() #11, !srcloc !212
  unreachable

do.end283:                                        ; preds = %if.then262
  %116 = ptrtoint ptr %c_phys to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %c_phys, align 4
  %ue_phys = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %111, i32 0, i32 3
  %118 = ptrtoint ptr %ue_phys to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %ue_phys, align 4
  %119 = ptrtoint ptr %w_unwritten_list to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile ptr, ptr %w_unwritten_list, align 4
  %cmp.i.not.i = icmp eq ptr %120, %w_unwritten_list
  br i1 %cmp.i.not.i, label %do.end283.list_splice_tail_init.exit_crit_edge, label %if.then.i467

do.end283.list_splice_tail_init.exit_crit_edge:   ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i467:                                     ; preds = %do.end283
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i.ph, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %80, i32 0, i32 15, i32 1
  %123 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %125 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev3.i.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %120, ptr %122, align 4
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %retval.0.i.ph, ptr %124, align 4
  store ptr %124, ptr %prev.i, align 4
  %128 = ptrtoint ptr %w_unwritten_list to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %w_unwritten_list, ptr %w_unwritten_list, align 4
  store ptr %w_unwritten_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i467, %do.end283.list_splice_tail_init.exit_crit_edge
  %w_unwritten_count = getelementptr inbounds %struct.ocfs2_write_ctxt, ptr %80, i32 0, i32 16
  %129 = ptrtoint ptr %w_unwritten_count to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %w_unwritten_count, align 4
  %dw_zero_count = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, ptr %retval.0.i.ph, i32 0, i32 1
  %131 = ptrtoint ptr %dw_zero_count to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dw_zero_count, align 4
  %add286 = add i32 %132, %130
  store i32 %add286, ptr %dw_zero_count, align 4
  br label %if.end287

if.end287:                                        ; preds = %list_splice_tail_init.exit, %set_buffer_defer_completion.exit.if.end287_crit_edge
  %133 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %i_mapping, align 8
  %call289 = call i32 @ocfs2_write_end_nolock(ptr noundef %134, i64 noundef %shl, i32 noundef %len.0, i32 noundef %len.0, ptr noundef %80)
  call void @__sanitizer_cov_trace_cmp4(i32 %call289, i32 %len.0)
  %cmp291.not = icmp eq i32 %call289, %len.0
  br i1 %cmp291.not, label %if.end287.unlock_crit_edge, label %do.body300, !prof !137

if.end287.unlock_crit_edge:                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

do.body300:                                       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2267, 0\0A.popsection", ""() #11, !srcloc !213
  unreachable

unlock:                                           ; preds = %if.end287.unlock_crit_edge, %do.body213, %if.end193.unlock_crit_edge, %if.end193.unlock_crit_edge495, %if.end193.unlock_crit_edge496, %if.end193.unlock_crit_edge497, %if.end193.unlock_crit_edge498, %do.body181, %if.then164.unlock_crit_edge, %if.then164.unlock_crit_edge492, %if.then164.unlock_crit_edge493, %if.then164.unlock_crit_edge494
  %ret.1 = phi i32 [ %ret.0, %if.then164.unlock_crit_edge ], [ %ret.0, %if.then164.unlock_crit_edge492 ], [ %ret.0, %if.then164.unlock_crit_edge493 ], [ %ret.0, %if.then164.unlock_crit_edge494 ], [ %ret.0, %do.body181 ], [ %call194, %if.end193.unlock_crit_edge ], [ %call194, %if.end193.unlock_crit_edge495 ], [ %call194, %if.end193.unlock_crit_edge496 ], [ %call194, %if.end193.unlock_crit_edge497 ], [ %call194, %if.end193.unlock_crit_edge498 ], [ %call194, %do.body213 ], [ 0, %if.end287.unlock_crit_edge ]
  call void @up_write(ptr noundef %ip_alloc_sem) #11
  call void @ocfs2_inode_unlock(ptr noundef %inode, i32 noundef 1) #11
  %135 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %di_bh, align 4
  %tobool.not.i469 = icmp eq ptr %136, null
  br i1 %tobool.not.i469, label %unlock.out_crit_edge, label %if.then.i470

unlock.out_crit_edge:                             ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then.i470:                                     ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %136) #11
  br label %out

out:                                              ; preds = %if.then.i470, %unlock.out_crit_edge, %do.body142, %if.end122.out_crit_edge, %if.end122.out_crit_edge488, %if.end122.out_crit_edge489, %if.end122.out_crit_edge490, %if.end122.out_crit_edge491
  %ret.2 = phi i32 [ %call123, %if.end122.out_crit_edge ], [ %call123, %if.end122.out_crit_edge488 ], [ %call123, %if.end122.out_crit_edge489 ], [ %call123, %if.end122.out_crit_edge490 ], [ %call123, %if.end122.out_crit_edge491 ], [ %call123, %do.body142 ], [ %ret.1, %unlock.out_crit_edge ], [ %ret.1, %if.then.i470 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp310 = icmp slt i32 %ret.2, 0
  br i1 %cmp310, label %out.out.thread_crit_edge, label %out.out.thread482_crit_edge

out.out.thread482_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread482

out.out.thread_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.thread

out.thread:                                       ; preds = %out.out.thread_crit_edge, %do.body109, %if.then92.out.thread_crit_edge, %if.then92.out.thread_crit_edge485, %if.then92.out.thread_crit_edge486, %if.then92.out.thread_crit_edge487, %do.body65
  br label %out.thread482

out.thread482:                                    ; preds = %out.thread, %out.out.thread482_crit_edge, %land.lhs.true35.out.thread482_crit_edge
  %137 = phi i32 [ -5, %out.thread ], [ %ret.2, %out.out.thread482_crit_edge ], [ 0, %land.lhs.true35.out.thread482_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wc) #11
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blockdev_direct_IO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_dio_end_io(ptr noundef %iocb, i64 noundef %offset, i32 noundef %bytes, ptr noundef %private) #0 align 64 {
entry:
  %dealloc.i = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %et.i = alloca %struct.ocfs2_extent_tree, align 4
  %di_bh.i = alloca ptr, align 4
  %data_ac.i = alloca ptr, align 4
  %meta_ac.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %_m80.i = alloca i64, align 8
  %_m113.i = alloca i64, align 8
  %_m147.i = alloca i64, align 8
  %_m179.i = alloca i64, align 8
  %_m218.i = alloca i64, align 8
  %_m259.i = alloca i64, align 8
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iocb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iocb, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %private1 = getelementptr inbounds %struct.kiocb, ptr %iocb, i32 0, i32 3
  %4 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %private1, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.body6, label %do.end11, !prof !134

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2406, 0\0A.popsection", ""() #11, !srcloc !214
  unreachable

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bytes)
  %cmp = icmp slt i32 %bytes, 1
  br i1 %cmp, label %do.body13, label %do.end11.if.end26_crit_edge

do.end11.if.end26_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.body13:                                        ; preds = %do.end11
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @ocfs2_dio_end_io._rs, ptr noundef nonnull @__func__.ocfs2_dio_end_io) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body13.if.end26_crit_edge, label %do.body17

do.body13.if.end26_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.body17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #11
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %bytes to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_dio_end_io, i32 noundef 2410, ptr noundef nonnull @.str.30, i64 noundef %conv) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #11
  br label %if.end26

if.end26:                                         ; preds = %do.body17, %do.body13.if.end26_crit_edge, %do.end11.if.end26_crit_edge
  %tobool27.not = icmp eq ptr %private, null
  br i1 %tobool27.not, label %if.end26.if.end34_crit_edge, label %if.then28

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp29 = icmp sgt i32 %bytes, 0
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dealloc.i) #11
  %7 = getelementptr inbounds %struct.ocfs2_cached_dealloc_ctxt, ptr %dealloc.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %et.i) #11
  %8 = getelementptr inbounds %struct.ocfs2_extent_tree, ptr %et.i, i32 0, i32 7
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = call ptr @memset(ptr %et.i, i32 255, i32 32)
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh.i) #11
  %14 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %di_bh.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_ac.i) #11
  %15 = ptrtoint ptr %data_ac.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %data_ac.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %meta_ac.i) #11
  %16 = ptrtoint ptr %meta_ac.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %meta_ac.i, align 4
  %conv.i49 = zext i32 %bytes to i64
  %add.i = add i64 %conv.i49, %offset
  %17 = ptrtoint ptr %dealloc.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dealloc.i, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %7, align 4
  %19 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %private, align 4
  %cmp.i.not.i = icmp eq ptr %20, %private
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %if.then31.if.end.i_crit_edge

if.then31.if.end.i_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then31
  %call2.i = call fastcc i64 @i_size_read(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call2.i)
  %cmp.not.i = icmp sgt i64 %add.i, %call2.i
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %dw_orphaned.i = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, ptr %private, i32 0, i32 2
  %21 = ptrtoint ptr %dw_orphaned.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dw_orphaned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool5.not.i = icmp eq i32 %22, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.out.i_crit_edge, label %land.lhs.true4.i.if.end.i_crit_edge

land.lhs.true4.i.if.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true4.i.out.i_crit_edge:                 ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i:                                         ; preds = %land.lhs.true4.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.then31.if.end.i_crit_edge
  %call6.i = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %3, ptr noundef nonnull %di_bh.i, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.end30.i

if.then9.i:                                       ; preds = %if.end.i
  %23 = zext i32 %call6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call6.i, label %do.body.i [
    i32 -512, label %if.then9.i.out.i_crit_edge
    i32 -4, label %if.then9.i.out.i_crit_edge56
    i32 -28, label %if.then9.i.out.i_crit_edge57
    i32 -122, label %if.then9.i.out.i_crit_edge58
  ]

if.then9.i.out.i_crit_edge58:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then9.i.out.i_crit_edge57:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then9.i.out.i_crit_edge56:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then9.i.out.i_crit_edge:                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

do.body.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #11
  %24 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv27.i = sext i32 %call6.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.ocfs2_dio_end_io_write, i32 noundef 2308, ptr noundef nonnull @.str.6, i64 noundef %conv27.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #11
  br label %out.i

if.end30.i:                                       ; preds = %if.end.i
  %ip_alloc_sem.i = getelementptr i8, ptr %3, i32 -424
  call void @down_write(ptr noundef %ip_alloc_sem.i) #11
  %dw_orphaned31.i = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, ptr %private, i32 0, i32 2
  %25 = ptrtoint ptr %dw_orphaned31.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dw_orphaned31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not.i = icmp eq i32 %26, 0
  br i1 %tobool32.not.i, label %if.end30.i.if.end91.i_crit_edge, label %do.body34.i

if.end30.i.if.end91.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

do.body34.i:                                      ; preds = %if.end30.i
  %dw_writer_pid.i = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, ptr %private, i32 0, i32 3
  %27 = ptrtoint ptr %dw_writer_pid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dw_writer_pid.i, align 4
  %29 = call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 68
  %33 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pid.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %34)
  %cmp37.not.i = icmp eq i32 %28, %34
  br i1 %cmp37.not.i, label %do.end50.i, label %do.body42.i, !prof !137

do.body42.i:                                      ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2316, 0\0A.popsection", ""() #11, !srcloc !215
  unreachable

do.end50.i:                                       ; preds = %do.body34.i
  %call51.i = call fastcc i64 @i_size_read(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call51.i)
  %cmp52.i = icmp sgt i64 %add.i, %call51.i
  %spec.select.i = select i1 %cmp52.i, i64 %add.i, i64 0
  %35 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %di_bh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select.i)
  %tobool54.i = icmp ne i64 %spec.select.i, 0
  %lnot.ext58.i = zext i1 %tobool54.i to i32
  %call59.i = call i32 @ocfs2_del_inode_from_orphan(ptr noundef %13, ptr noundef %3, ptr noundef %36, i32 noundef %lnot.ext58.i, i64 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.then62.i, label %do.end50.i.if.end91.i_crit_edge

do.end50.i.if.end91.i_crit_edge:                  ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

if.then62.i:                                      ; preds = %do.end50.i
  %37 = zext i32 %call59.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call59.i, label %do.body79.i [
    i32 -512, label %if.then62.i.if.end91.i_crit_edge
    i32 -4, label %if.then62.i.if.end91.i_crit_edge59
    i32 -28, label %if.then62.i.if.end91.i_crit_edge60
    i32 -122, label %if.then62.i.if.end91.i_crit_edge61
  ]

if.then62.i.if.end91.i_crit_edge61:               ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

if.then62.i.if.end91.i_crit_edge60:               ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

if.then62.i.if.end91.i_crit_edge59:               ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

if.then62.i.if.end91.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.i

do.body79.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m80.i) #11
  %38 = ptrtoint ptr %_m80.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 1152921504606846976, ptr %_m80.i, align 8
  %conv84.i = sext i32 %call59.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m80.i, ptr noundef nonnull @__func__.ocfs2_dio_end_io_write, i32 noundef 2323, ptr noundef nonnull @.str.6, i64 noundef %conv84.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m80.i) #11
  br label %if.end91.i

if.end91.i:                                       ; preds = %do.body79.i, %if.then62.i.if.end91.i_crit_edge, %if.then62.i.if.end91.i_crit_edge59, %if.then62.i.if.end91.i_crit_edge60, %if.then62.i.if.end91.i_crit_edge61, %do.end50.i.if.end91.i_crit_edge, %if.end30.i.if.end91.i_crit_edge
  %end.0.i = phi i64 [ %spec.select.i, %do.end50.i.if.end91.i_crit_edge ], [ %add.i, %if.end30.i.if.end91.i_crit_edge ], [ %spec.select.i, %if.then62.i.if.end91.i_crit_edge ], [ %spec.select.i, %if.then62.i.if.end91.i_crit_edge59 ], [ %spec.select.i, %if.then62.i.if.end91.i_crit_edge60 ], [ %spec.select.i, %if.then62.i.if.end91.i_crit_edge61 ], [ %spec.select.i, %do.body79.i ]
  %39 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %di_bh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data.i, align 4
  %ip_metadata_cache.i.i = getelementptr i8, ptr %3, i32 -56
  call void @ocfs2_init_dinode_extent_tree(ptr noundef nonnull %et.i, ptr noundef %ip_metadata_cache.i.i, ptr noundef %40) #11
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dealloc.i, ptr %8, align 4
  %dw_zero_count.i = getelementptr inbounds %struct.ocfs2_dio_write_ctxt, ptr %private, i32 0, i32 1
  %44 = ptrtoint ptr %dw_zero_count.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dw_zero_count.i, align 4
  %mul.i = shl i32 %45, 1
  %call93.i = call i32 @ocfs2_lock_allocators(ptr noundef %3, ptr noundef nonnull %et.i, i32 noundef 0, i32 noundef %mul.i, ptr noundef nonnull %data_ac.i, ptr noundef nonnull %meta_ac.i) #11
  %46 = zext i32 %call93.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call93.i, label %do.body112.i [
    i32 0, label %if.end123.i
    i32 -512, label %if.end91.i.unlock.i_crit_edge
    i32 -4, label %if.end91.i.unlock.i_crit_edge62
    i32 524289, label %if.end91.i.unlock.i_crit_edge63
    i32 -28, label %if.end91.i.unlock.i_crit_edge64
    i32 -122, label %if.end91.i.unlock.i_crit_edge65
  ]

if.end91.i.unlock.i_crit_edge65:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end91.i.unlock.i_crit_edge64:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end91.i.unlock.i_crit_edge63:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end91.i.unlock.i_crit_edge62:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.end91.i.unlock.i_crit_edge:                    ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

do.body112.i:                                     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m113.i) #11
  %47 = ptrtoint ptr %_m113.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 1152921504606846976, ptr %_m113.i, align 8
  %conv117.i = sext i32 %call93.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m113.i, ptr noundef nonnull @__func__.ocfs2_dio_end_io_write, i32 noundef 2339, ptr noundef nonnull @.str.6, i64 noundef %conv117.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m113.i) #11
  br label %unlock.i

if.end123.i:                                      ; preds = %if.end91.i
  %48 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i, align 4
  %id2.i = getelementptr inbounds %struct.ocfs2_dinode, ptr %42, i32 0, i32 35
  %50 = ptrtoint ptr %id2.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %id2.i, align 8
  %52 = call i16 @llvm.bswap.i16(i16 %51) #11
  %conv.i.i.i = zext i16 %52 to i32
  %add.i.i.i = shl nuw nsw i32 %conv.i.i.i, 1
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %53 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_feature_ro_compat.i.i.i = getelementptr inbounds %struct.ocfs2_super, ptr %54, i32 0, i32 20
  %55 = ptrtoint ptr %s_feature_ro_compat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %s_feature_ro_compat.i.i.i, align 4
  %and.i.i.i = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 3
  %and3.i.i.i = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  %add6.i.i.i = add nuw nsw i32 %spec.select.i.i.i, 3
  %credits.1.i.i.i = select i1 %tobool4.not.i.i.i, i32 %spec.select.i.i.i, i32 %add6.i.i.i
  %add1.i.i = add nuw nsw i32 %conv.i.i.i, 10
  %add3.i.i = add nuw nsw i32 %add1.i.i, %add.i.i.i
  %add5.i.i = add nuw nsw i32 %add3.i.i, %credits.1.i.i.i
  %call126.i = call ptr @ocfs2_start_trans(ptr noundef %13, i32 noundef %add5.i.i) #11
  %cmp.i375.i = icmp ugt ptr %call126.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i375.i, label %if.then128.i, label %if.end157.i

if.then128.i:                                     ; preds = %if.end123.i
  %57 = ptrtoint ptr %call126.i to i32
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %57, label %do.body146.i [
    i32 -512, label %if.then128.i.unlock.i_crit_edge
    i32 -4, label %if.then128.i.unlock.i_crit_edge66
    i32 524289, label %if.then128.i.unlock.i_crit_edge67
    i32 -28, label %if.then128.i.unlock.i_crit_edge68
    i32 -122, label %if.then128.i.unlock.i_crit_edge69
  ]

if.then128.i.unlock.i_crit_edge69:                ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.then128.i.unlock.i_crit_edge68:                ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.then128.i.unlock.i_crit_edge67:                ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.then128.i.unlock.i_crit_edge66:                ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

if.then128.i.unlock.i_crit_edge:                  ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock.i

do.body146.i:                                     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m147.i) #11
  %59 = ptrtoint ptr %_m147.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 1152921504606846976, ptr %_m147.i, align 8
  %conv151.i = sext i32 %57 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m147.i, ptr noundef nonnull @__func__.ocfs2_dio_end_io_write, i32 noundef 2348, ptr noundef nonnull @.str.6, i64 noundef %conv151.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m147.i) #11
  br label %unlock.i

if.end157.i:                                      ; preds = %if.end123.i
  %60 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %di_bh.i, align 4
  %call159.i = call i32 @ocfs2_journal_access_di(ptr noundef %call126.i, ptr noundef %ip_metadata_cache.i.i, ptr noundef %61, i32 noundef 1) #11
  %62 = zext i32 %call159.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call159.i, label %do.body178.i [
    i32 0, label %for.cond.preheader.i
    i32 -512, label %if.end157.i.commit.i_crit_edge
    i32 -4, label %if.end157.i.commit.i_crit_edge70
    i32 524289, label %if.end157.i.commit.i_crit_edge71
    i32 -28, label %if.end157.i.commit.i_crit_edge72
    i32 -122, label %if.end157.i.commit.i_crit_edge73
  ]

if.end157.i.commit.i_crit_edge73:                 ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

if.end157.i.commit.i_crit_edge72:                 ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

if.end157.i.commit.i_crit_edge71:                 ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

if.end157.i.commit.i_crit_edge70:                 ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

if.end157.i.commit.i_crit_edge:                   ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

for.cond.preheader.i:                             ; preds = %if.end157.i
  %63 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %63)
  %ue.0378.i = load ptr, ptr %private, align 4
  %cmp193.not379.i = icmp eq ptr %ue.0378.i, %private
  br i1 %cmp193.not379.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.body178.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m179.i) #11
  %64 = ptrtoint ptr %_m179.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 1152921504606846976, ptr %_m179.i, align 8
  %conv183.i = sext i32 %call159.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m179.i, ptr noundef nonnull @__func__.ocfs2_dio_end_io_write, i32 noundef 2354, ptr noundef nonnull @.str.6, i64 noundef %conv183.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m179.i) #11
  br label %commit.i

for.cond.i:                                       ; preds = %for.body.i
  %65 = ptrtoint ptr %ue.0380.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %ue.0.i = load ptr, ptr %ue.0380.i, align 4
  %cmp193.not.i = icmp eq ptr %ue.0.i, %private
  br i1 %cmp193.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ue.0380.i = phi ptr [ %ue.0.i, %for.cond.i.for.body.i_crit_edge ], [ %ue.0378.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %ue_cpos.i = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %ue.0380.i, i32 0, i32 2
  %66 = ptrtoint ptr %ue_cpos.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ue_cpos.i, align 4
  %ue_phys.i = getelementptr inbounds %struct.ocfs2_unwritten_extent, ptr %ue.0380.i, i32 0, i32 3
  %68 = ptrtoint ptr %ue_phys.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ue_phys.i, align 4
  %70 = ptrtoint ptr %meta_ac.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %meta_ac.i, align 4
  %call197.i = call i32 @ocfs2_mark_extent_written(ptr noundef %3, ptr noundef nonnull %et.i, ptr noundef %call126.i, i32 noundef %67, i32 noundef 1, i32 noundef %69, ptr noundef %71, ptr noundef nonnull %dealloc.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197.i)
  %cmp198.i = icmp slt i32 %call197.i, 0
  br i1 %cmp198.i, label %if.then200.i, label %for.cond.i

if.then200.i:                                     ; preds = %for.body.i
  %72 = zext i32 %call197.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call197.i, label %do.body217.i [
    i32 -512, label %if.then200.i.for.end.i_crit_edge
    i32 -4, label %if.then200.i.for.end.i_crit_edge74
    i32 -28, label %if.then200.i.for.end.i_crit_edge75
    i32 -122, label %if.then200.i.for.end.i_crit_edge76
  ]

if.then200.i.for.end.i_crit_edge76:               ; preds = %if.then200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then200.i.for.end.i_crit_edge75:               ; preds = %if.then200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then200.i.for.end.i_crit_edge74:               ; preds = %if.then200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then200.i.for.end.i_crit_edge:                 ; preds = %if.then200.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.body217.i:                                     ; preds = %if.then200.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m218.i) #11
  %73 = ptrtoint ptr %_m218.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 1152921504606846976, ptr %_m218.i, align 8
  %conv222.i = sext i32 %call197.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m218.i, ptr noundef nonnull @__func__.ocfs2_dio_end_io_write, i32 noundef 2364, ptr noundef nonnull @.str.6, i64 noundef %conv222.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m218.i) #11
  br label %for.end.i

for.end.i:                                        ; preds = %do.body217.i, %if.then200.i.for.end.i_crit_edge, %if.then200.i.for.end.i_crit_edge74, %if.then200.i.for.end.i_crit_edge75, %if.then200.i.for.end.i_crit_edge76, %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %ret.1.i = phi i32 [ %call197.i, %if.then200.i.for.end.i_crit_edge ], [ %call197.i, %if.then200.i.for.end.i_crit_edge74 ], [ %call197.i, %if.then200.i.for.end.i_crit_edge75 ], [ %call197.i, %if.then200.i.for.end.i_crit_edge76 ], [ %call197.i, %do.body217.i ], [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %call197.i, %for.cond.i.for.end.i_crit_edge ]
  %call234.i = call fastcc i64 @i_size_read(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %end.0.i, i64 %call234.i)
  %cmp235.i = icmp sgt i64 %end.0.i, %call234.i
  br i1 %cmp235.i, label %if.then237.i, label %for.end.i.commit.i_crit_edge

for.end.i.commit.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

if.then237.i:                                     ; preds = %for.end.i
  %74 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %di_bh.i, align 4
  %call238.i = call i32 @ocfs2_set_inode_size(ptr noundef %call126.i, ptr noundef %3, ptr noundef %75, i64 noundef %end.0.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238.i)
  %cmp239.i = icmp slt i32 %call238.i, 0
  br i1 %cmp239.i, label %if.then241.i, label %if.then237.i.commit.i_crit_edge

if.then237.i.commit.i_crit_edge:                  ; preds = %if.then237.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

if.then241.i:                                     ; preds = %if.then237.i
  %76 = zext i32 %call238.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call238.i, label %do.body258.i [
    i32 -512, label %if.then241.i.commit.i_crit_edge
    i32 -4, label %if.then241.i.commit.i_crit_edge77
    i32 -28, label %if.then241.i.commit.i_crit_edge78
    i32 -122, label %if.then241.i.commit.i_crit_edge79
  ]

if.then241.i.commit.i_crit_edge79:                ; preds = %if.then241.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

if.then241.i.commit.i_crit_edge78:                ; preds = %if.then241.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

if.then241.i.commit.i_crit_edge77:                ; preds = %if.then241.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

if.then241.i.commit.i_crit_edge:                  ; preds = %if.then241.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %commit.i

do.body258.i:                                     ; preds = %if.then241.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m259.i) #11
  %77 = ptrtoint ptr %_m259.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 1152921504606846976, ptr %_m259.i, align 8
  %conv263.i = sext i32 %call238.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m259.i, ptr noundef nonnull @__func__.ocfs2_dio_end_io_write, i32 noundef 2372, ptr noundef nonnull @.str.6, i64 noundef %conv263.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m259.i) #11
  br label %commit.i

commit.i:                                         ; preds = %do.body258.i, %if.then241.i.commit.i_crit_edge, %if.then241.i.commit.i_crit_edge77, %if.then241.i.commit.i_crit_edge78, %if.then241.i.commit.i_crit_edge79, %if.then237.i.commit.i_crit_edge, %for.end.i.commit.i_crit_edge, %do.body178.i, %if.end157.i.commit.i_crit_edge, %if.end157.i.commit.i_crit_edge70, %if.end157.i.commit.i_crit_edge71, %if.end157.i.commit.i_crit_edge72, %if.end157.i.commit.i_crit_edge73
  %ret.2.i = phi i32 [ %call238.i, %if.then237.i.commit.i_crit_edge ], [ %ret.1.i, %for.end.i.commit.i_crit_edge ], [ %call159.i, %if.end157.i.commit.i_crit_edge ], [ %call159.i, %if.end157.i.commit.i_crit_edge70 ], [ %call159.i, %if.end157.i.commit.i_crit_edge71 ], [ %call159.i, %if.end157.i.commit.i_crit_edge72 ], [ %call159.i, %if.end157.i.commit.i_crit_edge73 ], [ %call159.i, %do.body178.i ], [ %call238.i, %if.then241.i.commit.i_crit_edge ], [ %call238.i, %if.then241.i.commit.i_crit_edge77 ], [ %call238.i, %if.then241.i.commit.i_crit_edge78 ], [ %call238.i, %if.then241.i.commit.i_crit_edge79 ], [ %call238.i, %do.body258.i ]
  %call271.i = call i32 @ocfs2_commit_trans(ptr noundef %13, ptr noundef %call126.i) #11
  br label %unlock.i

unlock.i:                                         ; preds = %commit.i, %do.body146.i, %if.then128.i.unlock.i_crit_edge, %if.then128.i.unlock.i_crit_edge66, %if.then128.i.unlock.i_crit_edge67, %if.then128.i.unlock.i_crit_edge68, %if.then128.i.unlock.i_crit_edge69, %do.body112.i, %if.end91.i.unlock.i_crit_edge, %if.end91.i.unlock.i_crit_edge62, %if.end91.i.unlock.i_crit_edge63, %if.end91.i.unlock.i_crit_edge64, %if.end91.i.unlock.i_crit_edge65
  %ret.3.i = phi i32 [ %ret.2.i, %commit.i ], [ %call93.i, %if.end91.i.unlock.i_crit_edge ], [ %call93.i, %if.end91.i.unlock.i_crit_edge62 ], [ %call93.i, %if.end91.i.unlock.i_crit_edge63 ], [ %call93.i, %if.end91.i.unlock.i_crit_edge64 ], [ %call93.i, %if.end91.i.unlock.i_crit_edge65 ], [ %call93.i, %do.body112.i ], [ %57, %if.then128.i.unlock.i_crit_edge ], [ %57, %if.then128.i.unlock.i_crit_edge66 ], [ %57, %if.then128.i.unlock.i_crit_edge67 ], [ %57, %if.then128.i.unlock.i_crit_edge68 ], [ %57, %if.then128.i.unlock.i_crit_edge69 ], [ %57, %do.body146.i ]
  call void @up_write(ptr noundef %ip_alloc_sem.i) #11
  call void @ocfs2_inode_unlock(ptr noundef %3, i32 noundef 1) #11
  %78 = ptrtoint ptr %di_bh.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %di_bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %unlock.i.out.i_crit_edge, label %if.then.i.i

unlock.i.out.i_crit_edge:                         ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then.i.i:                                      ; preds = %unlock.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__brelse(ptr noundef nonnull %79) #11
  br label %out.i

out.i:                                            ; preds = %if.then.i.i, %unlock.i.out.i_crit_edge, %do.body.i, %if.then9.i.out.i_crit_edge, %if.then9.i.out.i_crit_edge56, %if.then9.i.out.i_crit_edge57, %if.then9.i.out.i_crit_edge58, %land.lhs.true4.i.out.i_crit_edge
  %ret.4.i = phi i32 [ 0, %land.lhs.true4.i.out.i_crit_edge ], [ %call6.i, %if.then9.i.out.i_crit_edge ], [ %call6.i, %if.then9.i.out.i_crit_edge56 ], [ %call6.i, %if.then9.i.out.i_crit_edge57 ], [ %call6.i, %if.then9.i.out.i_crit_edge58 ], [ %call6.i, %do.body.i ], [ %ret.3.i, %unlock.i.out.i_crit_edge ], [ %ret.3.i, %if.then.i.i ]
  %80 = ptrtoint ptr %data_ac.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data_ac.i, align 4
  %tobool273.not.i = icmp eq ptr %81, null
  br i1 %tobool273.not.i, label %out.i.if.end275.i_crit_edge, label %if.then274.i

out.i.if.end275.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end275.i

if.then274.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %81) #11
  br label %if.end275.i

if.end275.i:                                      ; preds = %if.then274.i, %out.i.if.end275.i_crit_edge
  %82 = ptrtoint ptr %meta_ac.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %meta_ac.i, align 4
  %tobool276.not.i = icmp eq ptr %83, null
  br i1 %tobool276.not.i, label %if.end275.i.ocfs2_dio_end_io_write.exit_crit_edge, label %if.then277.i

if.end275.i.ocfs2_dio_end_io_write.exit_crit_edge: ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ocfs2_dio_end_io_write.exit

if.then277.i:                                     ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @ocfs2_free_alloc_context(ptr noundef nonnull %83) #11
  br label %ocfs2_dio_end_io_write.exit

ocfs2_dio_end_io_write.exit:                      ; preds = %if.then277.i, %if.end275.i.ocfs2_dio_end_io_write.exit_crit_edge
  %call279.i = call i32 @ocfs2_run_deallocs(ptr noundef %13, ptr noundef nonnull %dealloc.i) #11
  call fastcc void @ocfs2_free_unwritten_list(ptr noundef %3, ptr noundef nonnull %private) #11
  call void @kfree(ptr noundef nonnull %private) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %meta_ac.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_ac.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %et.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dealloc.i) #11
  br label %if.end34

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @ocfs2_free_unwritten_list(ptr noundef %3, ptr noundef nonnull %private) #11
  call void @kfree(ptr noundef nonnull %private) #11
  br label %if.end34

if.end34:                                         ; preds = %if.else, %ocfs2_dio_end_io_write.exit, %if.end26.if.end34_crit_edge
  %ret.0 = phi i32 [ %ret.4.i, %ocfs2_dio_end_io_write.exit ], [ 0, %if.else ], [ 0, %if.end26.if.end34_crit_edge ]
  call void @_clear_bit(i32 noundef 0, ptr noundef %private1) #11
  %84 = ptrtoint ptr %private1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %private1, align 4
  %shr.i = lshr i32 %85, 1
  %and1.i48 = and i32 %shr.i, 1
  call void @ocfs2_rw_unlock(ptr noundef %3, i32 noundef %and1.i48) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_add_inode_to_orphan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_rw_unlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_del_inode_from_orphan(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_set_inode_size(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !67, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !86, !88, !89, !91, !93, !94, !96, !97, !99, !101, !102, !104, !106, !108, !110, !112, !113, !115, !116, !118, !119, !120, !121}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__func__.ocfs2_get_block, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/aops.c", i32 147, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/aops.c", i32 159, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/aops.c", i32 194, i32 4}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/ocfs2/aops.c", i32 199, i32 4}
!9 = !{ptr @__PRETTY_FUNCTION__.ocfs2_read_inline_data, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/ocfs2/aops.c", i32 227, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ocfs2/aops.c", i32 236, i32 3}
!14 = !{ptr @__func__.ocfs2_write_begin_nolock, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ocfs2/aops.c", i32 1667, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__func__.ocfs2_write_end_nolock, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/ocfs2/aops.c", i32 1970, i32 4}
!19 = !{ptr @ocfs2_aops, !20, !"ocfs2_aops", i1 false, i1 false}
!20 = !{!"../fs/ocfs2/aops.c", i32 2455, i32 39}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1154, i32 1}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!25 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__func__.ocfs2_symlink_get_block, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/ocfs2/aops.c", i32 58, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/ocfs2/aops.c", i32 73, i32 3}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/ocfs2/aops.c", i32 86, i32 4}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/ocfs2/aops.c", i32 98, i32 5}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1152, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1156, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/mm.h", i32 717, i32 2}
!54 = !{ptr @__func__.ocfs2_try_to_write_inline_data, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/ocfs2/aops.c", i32 1567, i32 4}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1164, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = !{ptr @__func__.ocfs2_write_begin_inline, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/ocfs2/aops.c", i32 1486, i32 3}
!61 = !{ptr @__func__.ocfs2_expand_nonsparse_inode, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/ocfs2/aops.c", i32 1625, i32 3}
!63 = !{ptr @__func__.ocfs2_populate_write_desc, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/ocfs2/aops.c", i32 1409, i32 5}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1184, i32 1}
!67 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/ocfs2/aops.c", i32 1078, i32 5}
!70 = !{ptr @__func__.ocfs2_grab_pages_for_write, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/ocfs2/aops.c", i32 1097, i32 5}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!76 = !{ptr @__func__.ocfs2_write_cluster_by_desc, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/ocfs2/aops.c", i32 1250, i32 4}
!78 = !{ptr @__func__.ocfs2_write_cluster, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/ocfs2/aops.c", i32 1151, i32 3}
!80 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/ocfs2/aops.c", i32 1176, i32 3}
!84 = !{ptr @__func__.ocfs2_prepare_page_for_write, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/ocfs2/aops.c", i32 973, i32 4}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1221, i32 1}
!88 = distinct !{null, !87, !"__warned", i1 false, i1 false}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!93 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1160, i32 1}
!96 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!97 = !{ptr @__func__.ocfs2_readpage, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../fs/ocfs2/aops.c", i32 292, i32 3}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1158, i32 1}
!101 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!102 = !{ptr @__func__.ocfs2_readpage_inline, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/ocfs2/aops.c", i32 266, i32 3}
!104 = !{ptr @__func__.ocfs2_write_begin, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/ocfs2/aops.c", i32 1893, i32 3}
!106 = !{ptr @__func__.ocfs2_bmap, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../fs/ocfs2/aops.c", i32 472, i32 5}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/ocfs2/aops.c", i32 488, i32 3}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1162, i32 1}
!112 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!113 = !{ptr @__func__.ocfs2_dio_wr_get_block, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/ocfs2/aops.c", i32 2162, i32 2}
!115 = distinct !{null, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.29, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/ocfs2/aops.c", i32 2409, i32 3}
!118 = !{ptr @ocfs2_dio_end_io._rs, !117, !"_rs", i1 false, i1 false}
!119 = !{ptr @__func__.ocfs2_dio_end_io, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.30, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @__func__.ocfs2_dio_end_io_write, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/ocfs2/aops.c", i32 2308, i32 3}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{!"branch_weights", i32 1, i32 2000}
!135 = !{i64 2161830383, i64 2161830862, i64 2161830420, i64 2161830476, i64 2161830510, i64 2161830534, i64 2161830575, i64 2161830596, i64 2161830624, i64 2161830658}
!136 = !{i64 2148538079, i64 2148538084, i64 2148538097, i64 2148538141, i64 2148538175, i64 2148538196}
!137 = !{!"branch_weights", i32 2000, i32 1}
!138 = !{i64 2157556536}
!139 = !{i64 2157556789}
!140 = !{i64 2149534486}
!141 = !{i64 2149535522}
!142 = !{i64 1118161, i64 1118222}
!143 = !{i64 1120893}
!144 = !{i64 1121178}
!145 = !{i64 2152556312}
!146 = !{i64 2152556154}
!147 = !{i64 2152556482}
!148 = !{i64 2150142296}
!149 = !{i64 2157573617}
!150 = !{i64 2157573838}
!151 = !{i64 2153696453}
!152 = !{i64 2152228777}
!153 = !{i64 2152228984}
!154 = !{i64 2153699224}
!155 = !{i64 2151373189}
!156 = !{i64 2150622226, i64 2150622717, i64 2150622263, i64 2150622319, i64 2150622353, i64 2150622377, i64 2150622418, i64 2150622439, i64 2150622467, i64 2150622501}
!157 = !{i64 2151080932, i64 2151081423, i64 2151080969, i64 2151081025, i64 2151081059, i64 2151081083, i64 2151081124, i64 2151081145, i64 2151081173, i64 2151081207}
!158 = !{i64 2161851214, i64 2161851694, i64 2161851251, i64 2161851307, i64 2161851341, i64 2161851365, i64 2161851406, i64 2161851427, i64 2161851455, i64 2161851489}
!159 = !{i64 2151372118}
!160 = !{i64 2153245992, i64 2153246475, i64 2153246029, i64 2153246085, i64 2153246119, i64 2153246143, i64 2153246184, i64 2153246205, i64 2153246233, i64 2153246267}
!161 = !{i64 2148801957}
!162 = !{i64 2148716666, i64 2148716698, i64 2148716727, i64 2148716761, i64 2148716792, i64 2148716815}
!163 = !{i64 2148802186}
!164 = !{i64 2148713481, i64 2148713507, i64 2148713536, i64 2148713570, i64 2148713601, i64 2148713624}
!165 = !{i64 2161898678, i64 2161899159, i64 2161898715, i64 2161898771, i64 2161898805, i64 2161898829, i64 2161898870, i64 2161898891, i64 2161898919, i64 2161898953}
!166 = !{i64 2161889521, i64 2161890002, i64 2161889558, i64 2161889614, i64 2161889648, i64 2161889672, i64 2161889713, i64 2161889734, i64 2161889762, i64 2161889796}
!167 = !{i64 2161891093, i64 2161891574, i64 2161891130, i64 2161891186, i64 2161891220, i64 2161891244, i64 2161891285, i64 2161891306, i64 2161891334, i64 2161891368}
!168 = !{i64 2161887228, i64 2161887709, i64 2161887265, i64 2161887321, i64 2161887355, i64 2161887379, i64 2161887420, i64 2161887441, i64 2161887469, i64 2161887503}
!169 = !{i64 2161847734, i64 2161848214, i64 2161847771, i64 2161847827, i64 2161847861, i64 2161847885, i64 2161847926, i64 2161847947, i64 2161847975, i64 2161848009}
!170 = !{i64 2161905236, i64 2161905717, i64 2161905273, i64 2161905329, i64 2161905363, i64 2161905387, i64 2161905428, i64 2161905449, i64 2161905477, i64 2161905511}
!171 = !{i64 2161896406, i64 2161896887, i64 2161896443, i64 2161896499, i64 2161896533, i64 2161896557, i64 2161896598, i64 2161896619, i64 2161896647, i64 2161896681}
!172 = !{i64 2157669900}
!173 = !{i64 2157670263}
!174 = !{i64 2161874217, i64 2161874698, i64 2161874254, i64 2161874310, i64 2161874344, i64 2161874368, i64 2161874409, i64 2161874430, i64 2161874458, i64 2161874492}
!175 = !{i64 2148722339, i64 2148722371, i64 2148722400, i64 2148722434, i64 2148722465, i64 2148722488}
!176 = !{i64 2148811444}
!177 = !{i64 2153265904, i64 2153266388, i64 2153265941, i64 2153265997, i64 2153266031, i64 2153266055, i64 2153266096, i64 2153266117, i64 2153266145, i64 2153266179}
!178 = !{i64 2161877830, i64 2161878311, i64 2161877867, i64 2161877923, i64 2161877957, i64 2161877981, i64 2161878022, i64 2161878043, i64 2161878071, i64 2161878105}
!179 = !{i64 2161880832, i64 2161881313, i64 2161880869, i64 2161880925, i64 2161880959, i64 2161880983, i64 2161881024, i64 2161881045, i64 2161881073, i64 2161881107}
!180 = !{i64 2161866346, i64 2161866826, i64 2161866383, i64 2161866439, i64 2161866473, i64 2161866497, i64 2161866538, i64 2161866559, i64 2161866587, i64 2161866621}
!181 = !{i64 2161911791, i64 2161912272, i64 2161911828, i64 2161911884, i64 2161911918, i64 2161911942, i64 2161911983, i64 2161912004, i64 2161912032, i64 2161912066}
!182 = !{!"branch_weights", i32 6003000, i32 -294967296}
!183 = !{i64 2161914214, i64 2161914695, i64 2161914251, i64 2161914307, i64 2161914341, i64 2161914365, i64 2161914406, i64 2161914427, i64 2161914455, i64 2161914489}
!184 = !{i64 2152558243}
!185 = !{i64 2150034548}
!186 = !{i64 2150039482}
!187 = !{i64 2150061200}
!188 = !{i64 2150066094}
!189 = !{i64 2150142621}
!190 = !{i64 2150142946}
!191 = !{i64 2152570105}
!192 = !{i64 2150629659, i64 2150630150, i64 2150629696, i64 2150629752, i64 2150629786, i64 2150629810, i64 2150629851, i64 2150629872, i64 2150629900, i64 2150629934}
!193 = !{i64 2161859643, i64 2161860123, i64 2161859680, i64 2161859736, i64 2161859770, i64 2161859794, i64 2161859835, i64 2161859856, i64 2161859884, i64 2161859918}
!194 = !{i64 2161861357, i64 2161861837, i64 2161861394, i64 2161861450, i64 2161861484, i64 2161861508, i64 2161861549, i64 2161861570, i64 2161861598, i64 2161861632}
!195 = !{i64 2161853092, i64 2161853572, i64 2161853129, i64 2161853185, i64 2161853219, i64 2161853243, i64 2161853284, i64 2161853305, i64 2161853333, i64 2161853367}
!196 = !{i64 2161839764, i64 2161840244, i64 2161839801, i64 2161839857, i64 2161839891, i64 2161839915, i64 2161839956, i64 2161839977, i64 2161840005, i64 2161840039}
!197 = !{i64 2161841409, i64 2161841889, i64 2161841446, i64 2161841502, i64 2161841536, i64 2161841560, i64 2161841601, i64 2161841622, i64 2161841650, i64 2161841684}
!198 = !{i8 0, i8 2}
!199 = !{i64 2157538452}
!200 = !{i64 2157538721}
!201 = !{i64 2157645182}
!202 = !{i64 2157645445}
!203 = !{i64 2157689277}
!204 = !{i64 2157689556}
!205 = !{i64 2157611191}
!206 = !{i64 2157611404}
!207 = !{i64 2157594550}
!208 = !{i64 2157594761}
!209 = !{i64 2157627691}
!210 = !{i64 2157627894}
!211 = !{i64 2161920980, i64 2161921461, i64 2161921017, i64 2161921073, i64 2161921107, i64 2161921131, i64 2161921172, i64 2161921193, i64 2161921221, i64 2161921255}
!212 = !{i64 2161924375, i64 2161924856, i64 2161924412, i64 2161924468, i64 2161924502, i64 2161924526, i64 2161924567, i64 2161924588, i64 2161924616, i64 2161924650}
!213 = !{i64 2161925942, i64 2161926423, i64 2161925979, i64 2161926035, i64 2161926069, i64 2161926093, i64 2161926134, i64 2161926155, i64 2161926183, i64 2161926217}
!214 = !{i64 2161940675, i64 2161941156, i64 2161940712, i64 2161940768, i64 2161940802, i64 2161940826, i64 2161940867, i64 2161940888, i64 2161940916, i64 2161940950}
!215 = !{i64 2161928376, i64 2161928857, i64 2161928413, i64 2161928469, i64 2161928503, i64 2161928527, i64 2161928568, i64 2161928589, i64 2161928617, i64 2161928651}
