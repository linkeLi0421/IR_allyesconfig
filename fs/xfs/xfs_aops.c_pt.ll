; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_aops.c_pt.bc'
source_filename = "../fs/xfs/xfs_aops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iomap_ops = type { ptr, ptr }
%struct.iomap_writeback_ops = type { ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iomap_ioend = type { %struct.list_head, i16, i16, i32, ptr, i32, i64, i64, ptr, %struct.bio }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.xfs_writepage_ctx = type { %struct.iomap_writepage_ctx, i32, i32 }
%struct.iomap_writepage_ctx = type { %struct.iomap, ptr, ptr }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.swap_info_struct = type { %struct.percpu_ref, i32, i16, %struct.plist_node, i8, i32, ptr, ptr, %struct.swap_cluster_list, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.rb_root, ptr, ptr, i32, %struct.completion, ptr, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.work_struct, %struct.swap_cluster_list, [0 x %struct.plist_node] }
%struct.percpu_ref = type { i32, ptr }
%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { %struct.spinlock, i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.anon.67 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.65, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.65 = type { %struct.atomic_t }
%struct.anon.21 = type { i32, i8, i8, %struct.atomic_t, i32 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/xfs/xfs_aops.c\00", [46 x i8] zeroinitializer }, align 32
@xfs_address_space_operations = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr @xfs_vm_readpage, ptr @xfs_vm_writepages, ptr @__set_page_dirty_nobuffers, ptr null, ptr @xfs_vm_readahead, ptr null, ptr null, ptr @xfs_vm_bmap, ptr @iomap_invalidatepage, ptr @iomap_releasepage, ptr null, ptr @noop_direct_IO, ptr @iomap_migrate_page, ptr null, ptr null, ptr null, ptr @iomap_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr @xfs_iomap_swapfile_activate, ptr null }, [40 x i8] zeroinitializer }, align 32
@xfs_dax_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr null, ptr null, ptr @xfs_dax_writepages, ptr @__set_page_dirty_no_writeback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @noop_invalidatepage, ptr null, ptr null, ptr @noop_direct_IO, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xfs_iomap_swapfile_activate, ptr null }, [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_setfilesize = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_setfilesize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@xfs_read_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@xfs_vm_writepages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfs_writeback_ops = internal constant { %struct.iomap_writeback_ops, [20 x i8] } { %struct.iomap_writeback_ops { ptr @xfs_map_blocks, ptr @xfs_prepare_ioend, ptr @xfs_discard_folio }, [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!xfs_need_iread_extents(&ip->i_df)\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error != -EAGAIN\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wpc->iomap.offset <= offset\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wpc->iomap.offset + wpc->iomap.length > offset\00", [49 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_map_blocks_found = external dso_local global %struct.tracepoint, align 4
@trace_xfs_map_blocks_found.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_map_blocks_alloc = external dso_local global %struct.tracepoint, align 4
@trace_xfs_map_blocks_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfs_end_bio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@xfs_discard_folio._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.xfs_discard_folio = private unnamed_addr constant [18 x i8] c"xfs_discard_folio\00", align 1
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"page discard on page %px, inode 0x%llx, pos %llu.\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"page discard unable to remove delalloc mapping.\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_vm_bmap = external dso_local global %struct.tracepoint, align 4
@trace_xfs_vm_bmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 173, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [29 x i8] c"xfs_address_space_operations\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 566, i32 39 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"xfs_dax_aops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 581, i32 39 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1532, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 108, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"xfs_writeback_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 481, i32 41 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 317, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 391, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 407, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 408, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 469, i32 2 }
@___asan_gen_.55 = private constant [21 x i8] c"../fs/xfs/xfs_aops.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 476, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 698, i32 1 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @xfs_address_space_operations, ptr @xfs_dax_aops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xfs_writeback_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @xfs_discard_folio._rs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_address_space_operations to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_dax_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_writeback_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_discard_folio._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_setfilesize(ptr noundef %ip, i64 noundef %offset, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #7
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !56
  %tr_fsyncts = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65, i32 25
  %call = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %tr_fsyncts, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #7
  %conv = zext i32 %size to i64
  %i_size_seqcount.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 23
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 23, i32 1
  %i_size18.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %if.end
  %3 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !57
  %and.i.i.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @trace_hardirqs_off() #7
  %4 = call ptr @llvm.returnaddress(i32 0) #7
  %5 = ptrtoint ptr %4 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %5) #7
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %5) #7
  call void @trace_hardirqs_on() #7
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = call ptr @llvm.returnaddress(i32 0) #7
  %7 = ptrtoint ptr %6 to i32
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %7) #7
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %7) #7
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %8 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !58
  %and.i.i.i.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !59

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #7, !srcloc !60
  %9 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !62
  %11 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i = and i32 %12, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %10, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %12, %do.end.i.i.while.end.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !63
  %13 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %i_size18.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  %15 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %16, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %xfs_new_eof.exit, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

xfs_new_eof.exit:                                 ; preds = %while.end.i.i
  %add = add i64 %conv, %offset
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %add)
  %cmp.i = icmp slt i64 %14, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp2.i = icmp slt i64 %add, 0
  %or.cond.i = or i1 %cmp2.i, %cmp.i
  %new_size.addr.0.i = select i1 %or.cond.i, i64 %14, i64 %add
  %i_disk_size.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %17 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %i_disk_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %new_size.addr.0.i, i64 %18)
  %cmp3.i = icmp sle i64 %new_size.addr.0.i, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_size.addr.0.i)
  %tobool2.not21 = icmp eq i64 %new_size.addr.0.i, 0
  %tobool2.not = or i1 %tobool2.not21, %cmp3.i
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %xfs_new_eof.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #7
  %19 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %20) #7
  br label %cleanup

if.end4:                                          ; preds = %xfs_new_eof.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @trace_xfs_setfilesize(ptr noundef %ip, i64 noundef %offset, i32 noundef %size)
  %21 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %new_size.addr.0.i, ptr %i_disk_size.i, align 8
  %22 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %23, ptr noundef %ip, i32 noundef 4) #7
  %24 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %25, ptr noundef %ip, i32 noundef 1) #7
  %26 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tp, align 4
  %call5 = call i32 @xfs_trans_commit(ptr noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ 0, %if.then3 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_setfilesize(ptr noundef %ip, i64 noundef %offset, i32 noundef %count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_setfilesize, i32 0, i32 1), ptr blockaddress(@trace_xfs_setfilesize, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !65

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !67
  %call42 = tail call i32 @__traceiter_xfs_setfilesize(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !68
  %13 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_setfilesize, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_setfilesize, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_setfilesize.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_setfilesize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1532, ptr noundef nonnull @.str.2) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !70
  %31 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_end_io(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %tmp1 = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp1) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %tmp1, i32 0, i32 1
  %i_ioend_lock = getelementptr i8, ptr %work, i32 -44
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %i_ioend_lock) #7
  %i_ioend_list = getelementptr i8, ptr %work, i32 44
  %1 = ptrtoint ptr %i_ioend_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_ioend_list, align 4
  %3 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %tmp1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tmp1, ptr %prev.i.i, align 4
  %prev3.i.i = getelementptr i8, ptr %work, i32 48
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %0, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tmp1, ptr %6, align 4
  store volatile ptr %i_ioend_list, ptr %i_ioend_list, align 4
  store ptr %i_ioend_list, ptr %prev3.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i_ioend_lock, i32 noundef %call4) #7
  call void @iomap_sort_ioends(ptr noundef nonnull %tmp1) #7
  %9 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %tmp1, align 4
  %cmp13.not28 = icmp eq ptr %10, %tmp1
  %tobool.not2729 = icmp eq ptr %10, null
  %tobool.not30 = or i1 %cmp13.not28, %tobool.not2729
  br i1 %tobool.not30, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %11 = phi ptr [ %21, %list_del_init.exit.while.body_crit_edge ], [ %10, %entry.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %11) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i26 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i26, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %prev.i3.i, align 4
  call void @iomap_ioend_try_merge(ptr noundef nonnull %11, ptr noundef nonnull %tmp1) #7
  call fastcc void @xfs_end_ioend(ptr noundef nonnull %11)
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 0) #7
  %call.i = call i32 @__cond_resched() #7
  %20 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %tmp1, align 4
  %cmp13.not = icmp eq ptr %21, %tmp1
  %tobool.not27 = icmp eq ptr %21, null
  %tobool.not = or i1 %cmp13.not, %tobool.not27
  br i1 %tobool.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iomap_sort_ioends(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iomap_ioend_try_merge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_end_ioend(ptr noundef %ioend) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_inode = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 4
  %0 = ptrtoint ptr %io_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_inode, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %io_offset = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 6
  %4 = ptrtoint ptr %io_offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %io_offset, align 8
  %io_size = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 5
  %6 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_size, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags1.i, align 4
  %or.i = or i32 %13, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %14 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %m_opstate.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not = icmp eq i32 %16, 0
  br i1 %tobool.i.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  %io_bio = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 8
  %17 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io_bio, align 8
  %bi_status = getelementptr inbounds %struct.bio, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bi_status, align 2
  %call3 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %io_flags22 = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 2
  %21 = ptrtoint ptr %io_flags22 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %io_flags22, align 2
  %23 = and i16 %22, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool25.not = icmp eq i16 %23, 0
  br i1 %tobool.not, label %if.end21, label %if.then6, !prof !66

if.then6:                                         ; preds = %if.end
  br i1 %tobool25.not, label %if.then6.done_crit_edge, label %if.then8

if.then6.done_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = zext i32 %7 to i64
  %call10 = tail call i32 @xfs_reflink_cancel_cow_range(ptr noundef %add.ptr.i, i64 noundef %5, i64 noundef %conv9, i1 noundef zeroext true) #7
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 20
  %24 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %25 to i64
  %shr = lshr i64 %5, %sh_prom
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 31
  %26 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %m_blockmask, align 8
  %conv13 = zext i32 %27 to i64
  %add = add nuw nsw i64 %conv13, %conv9
  %shr18 = lshr i64 %add, %sh_prom
  %call19 = tail call i32 @xfs_bmap_punch_delalloc_range(ptr noundef %add.ptr.i, i64 noundef %shr, i64 noundef %shr18) #7
  br label %done

if.end21:                                         ; preds = %if.end
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %conv27 = zext i32 %7 to i64
  %call28 = tail call i32 @xfs_reflink_end_cow(ptr noundef %add.ptr.i, i64 noundef %5, i64 noundef %conv27) #7
  br label %if.end35

if.else:                                          ; preds = %if.end21
  %io_type = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 1
  %28 = ptrtoint ptr %io_type to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %io_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %29)
  %cmp = icmp eq i16 %29, 3
  br i1 %cmp, label %if.then31, label %if.else.land.lhs.true_crit_edge

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv32 = zext i32 %7 to i64
  %call33 = tail call i32 @xfs_iomap_write_unwritten(ptr noundef %add.ptr.i, i64 noundef %5, i64 noundef %conv32, i1 noundef zeroext false) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %if.then26
  %error.0 = phi i32 [ %call28, %if.then26 ], [ %call33, %if.then31 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool36.not = icmp eq i32 %error.0, 0
  br i1 %tobool36.not, label %if.end35.land.lhs.true_crit_edge, label %if.end35.done_crit_edge

if.end35.done_crit_edge:                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end35.land.lhs.true_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end35.land.lhs.true_crit_edge, %if.else.land.lhs.true_crit_edge
  %30 = ptrtoint ptr %io_offset to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %io_offset, align 8
  %32 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %io_size, align 4
  %conv.i = zext i32 %33 to i64
  %add.i = add i64 %31, %conv.i
  %34 = ptrtoint ptr %io_inode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_inode, align 8
  %i_disk_size.i = getelementptr i8, ptr %35, i32 -56
  %36 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_disk_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %37)
  %cmp.i = icmp sgt i64 %add.i, %37
  br i1 %cmp.i, label %if.then39, label %land.lhs.true.done_crit_edge

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 @xfs_setfilesize(ptr noundef %add.ptr.i, i64 noundef %31, i32 noundef %33)
  br label %done

done:                                             ; preds = %if.then39, %land.lhs.true.done_crit_edge, %if.end35.done_crit_edge, %if.then8, %if.then6.done_crit_edge, %entry.done_crit_edge
  %error.1 = phi i32 [ %call3, %if.then8 ], [ %call3, %if.then6.done_crit_edge ], [ %error.0, %if.end35.done_crit_edge ], [ %call42, %if.then39 ], [ 0, %land.lhs.true.done_crit_edge ], [ -5, %entry.done_crit_edge ]
  %and.i = and i32 %13, 262144
  tail call void @iomap_finish_ioends(ptr noundef %ioend, i32 noundef %error.1) #7
  %38 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i70 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i70 to ptr
  %task.i71 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i71, align 8
  %flags1.i72 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %flags1.i72 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags1.i72, align 4
  %and.i73 = and i32 %43, -262145
  %or.i74 = or i32 %and.i73, %and.i
  store i32 %or.i74, ptr %flags1.i72, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vm_readpage(ptr nocapture noundef readnone %unused, ptr noundef %page) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iomap_readpage(ptr noundef %page, ptr noundef nonnull @xfs_read_iomap_ops) #7
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_vm_writepages(ptr noundef %mapping, ptr noundef %wbc) #4 align 64 {
entry:
  %wpc = alloca %struct.xfs_writepage_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wpc) #7
  %0 = call ptr @memset(ptr %wpc, i32 0, i32 64)
  %1 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 146
  %5 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %journal_info, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @xfs_vm_writepages.__already_done, align 1
  br i1 %.b44, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !66

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xfs_vm_writepages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 498, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end38:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapping, align 4
  %i_flags_lock.i = getelementptr i8, ptr %8, i32 -116
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #7
  %i_flags.i = getelementptr i8, ptr %8, i32 -72
  %9 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_flags.i, align 8
  %and.i46 = and i32 %10, -33
  store i32 %and.i46, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #7
  %call40 = call i32 @iomap_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull %wpc, ptr noundef nonnull @xfs_writeback_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end38 ], [ 0, %if.then ], [ 0, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wpc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_vm_readahead(ptr noundef %rac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iomap_readahead(ptr noundef %rac, ptr noundef nonnull @xfs_read_iomap_ops) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xfs_vm_bmap(ptr noundef %mapping, i64 noundef %block) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  tail call fastcc void @trace_xfs_vm_bmap(ptr noundef %add.ptr.i)
  %i_diflags2.i.i = getelementptr i8, ptr %1, i32 -24
  %2 = ptrtoint ptr %i_diflags2.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_diflags2.i.i, align 8
  %and.i.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.rhs.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.rhs.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %m_always_cow.i.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 67
  %6 = ptrtoint ptr %m_always_cow.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %m_always_cow.i.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %lor.rhs.i.lor.lhs.false_crit_edge, label %xfs_is_cow_inode.exit

lor.rhs.i.lor.lhs.false_crit_edge:                ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

xfs_is_cow_inode.exit:                            ; preds = %lor.rhs.i
  %m_features.i.i.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 61
  %8 = ptrtoint ptr %m_features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %m_features.i.i.i, align 8
  %and.i.i.i = and i64 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.i.i.not = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.i.i.i.not, label %xfs_is_cow_inode.exit.lor.lhs.false_crit_edge, label %xfs_is_cow_inode.exit.cleanup_crit_edge

xfs_is_cow_inode.exit.cleanup_crit_edge:          ; preds = %xfs_is_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xfs_is_cow_inode.exit.lor.lhs.false_crit_edge:    ; preds = %xfs_is_cow_inode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %xfs_is_cow_inode.exit.lor.lhs.false_crit_edge, %lor.rhs.i.lor.lhs.false_crit_edge
  %i_diflags = getelementptr i8, ptr %1, i32 -26
  %10 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %i_diflags, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool2.not = icmp eq ptr %16, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call3 = tail call i64 @iomap_bmap(ptr noundef %mapping, i64 noundef %block, ptr noundef nonnull @xfs_read_iomap_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %xfs_is_cow_inode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call3, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %xfs_is_cow_inode.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iomap_invalidatepage(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_releasepage(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @noop_direct_IO(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_migrate_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_is_partially_uptodate(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_iomap_swapfile_activate(ptr noundef %sis, ptr noundef %swap_file, ptr noundef %span) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %swap_file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %i_diflags = getelementptr i8, ptr %1, i32 -26
  %2 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_diflags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond.in = phi ptr [ %m_ddev_targp, %cond.false ], [ %m_rtdev_targp, %land.lhs.true.cond.end_crit_edge ]
  %11 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond = load ptr, ptr %cond.in, align 8
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %cond, i32 0, i32 1
  %12 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bt_bdev, align 4
  %bdev = getelementptr inbounds %struct.swap_info_struct, ptr %sis, i32 0, i32 18
  %14 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %bdev, align 4
  %call12 = tail call i32 @iomap_swapfile_activate(ptr noundef %sis, ptr noundef %swap_file, ptr noundef %span, ptr noundef nonnull @xfs_read_iomap_ops) #7
  ret i32 %call12
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_dax_writepages(ptr nocapture noundef readonly %mapping, ptr nocapture noundef readnone %wbc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_flags_lock.i = getelementptr i8, ptr %1, i32 -116
  tail call void @_raw_spin_lock(ptr noundef %i_flags_lock.i) #7
  %i_flags.i = getelementptr i8, ptr %1, i32 -72
  %2 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_flags.i, align 8
  %and.i = and i32 %3, -33
  store i32 %and.i, ptr %i_flags.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i_flags_lock.i) #7
  ret i32 -95
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @noop_invalidatepage(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_setfilesize(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_cancel_cow_range(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_punch_delalloc_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_end_cow(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iomap_write_unwritten(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iomap_finish_ioends(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_writepages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_map_blocks(ptr noundef %wpc, ptr noundef %inode, i64 noundef %offset) #0 align 64 {
entry:
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -312
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %2 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %5 to i64
  %shr = lshr i64 %offset, %sh_prom
  %conv2 = sext i32 %shl.i to i64
  %add = add i64 %conv2, %offset
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_blockmask, align 8
  %conv3 = zext i32 %7 to i64
  %add4 = add i64 %add, %conv3
  %shr9 = lshr i64 %add4, %sh_prom
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #7
  %8 = call ptr @memset(ptr %imap, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #7
  %9 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !56
  %10 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !56
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %12 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %m_opstate.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not = icmp eq i32 %14, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset1.i = getelementptr inbounds %struct.iomap, ptr %wpc, i32 0, i32 1
  %15 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %offset)
  %cmp.i = icmp sgt i64 %16, %offset
  br i1 %cmp.i, label %if.end.xfs_imap_valid.exit_crit_edge, label %lor.lhs.false.i

if.end.xfs_imap_valid.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_imap_valid.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %length.i = getelementptr inbounds %struct.iomap, ptr %wpc, i32 0, i32 2
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %length.i, align 8
  %add.i = add i64 %18, %16
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %offset)
  %cmp5.not.i = icmp ugt i64 %add.i, %offset
  br i1 %cmp5.not.i, label %if.end.i, label %lor.lhs.false.i.xfs_imap_valid.exit_crit_edge

lor.lhs.false.i.xfs_imap_valid.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_imap_valid.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.iomap, ptr %wpc, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i, align 2
  %21 = and i16 %20, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %data_seq.i = getelementptr inbounds %struct.xfs_writepage_ctx, ptr %wpc, i32 0, i32 1
  %22 = ptrtoint ptr %data_seq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_seq.i, align 8
  %if_seq.i = getelementptr i8, ptr %inode, i32 -252
  %24 = ptrtoint ptr %if_seq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %if_seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp9.not.i = icmp eq i32 %23, %25
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end8.i.xfs_imap_valid.exit_crit_edge

if.end8.i.xfs_imap_valid.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_imap_valid.exit

if.end12.i:                                       ; preds = %if.end8.i
  %i_cowfp.i.i = getelementptr i8, ptr %inode, i32 -268
  %26 = ptrtoint ptr %i_cowfp.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_cowfp.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i, label %if.end12.i.cleanup_crit_edge, label %xfs_inode_has_cow_data.exit.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xfs_inode_has_cow_data.exit.i:                    ; preds = %if.end12.i
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %27, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool2.i.not.i = icmp eq i64 %29, 0
  br i1 %tobool2.i.not.i, label %xfs_inode_has_cow_data.exit.i.cleanup_crit_edge, label %land.lhs.true.i

xfs_inode_has_cow_data.exit.i.cleanup_crit_edge:  ; preds = %xfs_inode_has_cow_data.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %xfs_inode_has_cow_data.exit.i
  %cow_seq.i = getelementptr inbounds %struct.xfs_writepage_ctx, ptr %wpc, i32 0, i32 2
  %30 = ptrtoint ptr %cow_seq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cow_seq.i, align 4
  %if_seq19.i = getelementptr inbounds %struct.xfs_ifork, ptr %27, i32 0, i32 2
  %32 = ptrtoint ptr %if_seq19.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %if_seq19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp20.not.i = icmp eq i32 %31, %33
  br i1 %cmp20.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.xfs_imap_valid.exit_crit_edge

land.lhs.true.i.xfs_imap_valid.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_imap_valid.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xfs_imap_valid.exit:                              ; preds = %land.lhs.true.i.xfs_imap_valid.exit_crit_edge, %if.end8.i.xfs_imap_valid.exit_crit_edge, %lor.lhs.false.i.xfs_imap_valid.exit_crit_edge, %if.end.xfs_imap_valid.exit_crit_edge
  %i_df = getelementptr i8, ptr %inode, i32 -264
  %if_format.i = getelementptr i8, ptr %inode, i32 -238
  %if_height.i = getelementptr i8, ptr %inode, i32 -248
  %i_cowfp.i = getelementptr i8, ptr %inode, i32 -268
  %cow_seq = getelementptr inbounds %struct.xfs_writepage_ctx, ptr %wpc, i32 0, i32 2
  %length.i234 = getelementptr inbounds %struct.iomap, ptr %wpc, i32 0, i32 2
  %flags.i238 = getelementptr inbounds %struct.iomap, ptr %wpc, i32 0, i32 4
  %data_seq.i241 = getelementptr inbounds %struct.xfs_writepage_ctx, ptr %wpc, i32 0, i32 1
  %if_seq.i242 = getelementptr i8, ptr %inode, i32 -252
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 2
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 3
  br label %retry

retry:                                            ; preds = %land.lhs.true81.retry_crit_edge, %xfs_imap_valid.exit
  %tobool85.not = phi i1 [ true, %xfs_imap_valid.exit ], [ false, %land.lhs.true81.retry_crit_edge ]
  call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 8) #7
  %34 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %35)
  %cmp.i229 = icmp eq i8 %35, 3
  br i1 %cmp.i229, label %xfs_need_iread_extents.exit, label %retry.cond.end_crit_edge

retry.cond.end_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

xfs_need_iread_extents.exit:                      ; preds = %retry
  %36 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp2.i = icmp eq i32 %37, 0
  br i1 %cmp2.i, label %cond.false, label %xfs_need_iread_extents.exit.cond.end_crit_edge, !prof !59

xfs_need_iread_extents.exit.cond.end_crit_edge:   ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str, i32 noundef 317) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_need_iread_extents.exit.cond.end_crit_edge, %retry.cond.end_crit_edge
  %38 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_cowfp.i, align 4
  %tobool.not.i230 = icmp eq ptr %39, null
  br i1 %tobool.not.i230, label %cond.end.if.end30_crit_edge, label %xfs_inode_has_cow_data.exit

cond.end.if.end30_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

xfs_inode_has_cow_data.exit:                      ; preds = %cond.end
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %39, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %tobool2.i.not = icmp eq i64 %41, 0
  br i1 %tobool2.i.not, label %xfs_inode_has_cow_data.exit.if.end30_crit_edge, label %land.lhs.true

xfs_inode_has_cow_data.exit.if.end30_crit_edge:   ; preds = %xfs_inode_has_cow_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true:                                    ; preds = %xfs_inode_has_cow_data.exit
  %call19 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %add.ptr.i, ptr noundef nonnull %39, i64 noundef %shr, ptr noundef nonnull %icur, ptr noundef nonnull %imap) #7
  br i1 %call19, label %if.end22, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end22:                                         ; preds = %land.lhs.true
  %42 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %imap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %43)
  %cmp.not = icmp eq i64 %43, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %shr)
  %cmp25.not = icmp ugt i64 %43, %shr
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp25.not
  br i1 %or.cond, label %if.end22.if.end30_crit_edge, label %80

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30:                                         ; preds = %if.end22.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %xfs_inode_has_cow_data.exit.if.end30_crit_edge, %cond.end.if.end30_crit_edge
  %cmp.not273 = phi i1 [ %cmp.not, %if.end22.if.end30_crit_edge ], [ true, %land.lhs.true.if.end30_crit_edge ], [ true, %xfs_inode_has_cow_data.exit.if.end30_crit_edge ], [ true, %cond.end.if.end30_crit_edge ]
  %cow_fsb.0270 = phi i64 [ %43, %if.end22.if.end30_crit_edge ], [ -1, %land.lhs.true.if.end30_crit_edge ], [ -1, %xfs_inode_has_cow_data.exit.if.end30_crit_edge ], [ -1, %cond.end.if.end30_crit_edge ]
  %44 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %offset1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %offset)
  %cmp.i233 = icmp sgt i64 %45, %offset
  br i1 %cmp.i233, label %if.end30.if.end33_crit_edge, label %lor.lhs.false.i237

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

lor.lhs.false.i237:                               ; preds = %if.end30
  %46 = ptrtoint ptr %length.i234 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %length.i234, align 8
  %add.i235 = add i64 %47, %45
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i235, i64 %offset)
  %cmp5.not.i236 = icmp ugt i64 %add.i235, %offset
  br i1 %cmp5.not.i236, label %if.end.i240, label %lor.lhs.false.i237.if.end33_crit_edge

lor.lhs.false.i237.if.end33_crit_edge:            ; preds = %lor.lhs.false.i237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end.i240:                                      ; preds = %lor.lhs.false.i237
  %48 = ptrtoint ptr %flags.i238 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags.i238, align 2
  %50 = and i16 %49, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.not.i239 = icmp eq i16 %50, 0
  br i1 %tobool.not.i239, label %if.end8.i244, label %if.end.i240.if.then32_crit_edge

if.end.i240.if.then32_crit_edge:                  ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.end8.i244:                                     ; preds = %if.end.i240
  %51 = ptrtoint ptr %data_seq.i241 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_seq.i241, align 8
  %53 = ptrtoint ptr %if_seq.i242 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %if_seq.i242, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp9.not.i243 = icmp eq i32 %52, %54
  br i1 %cmp9.not.i243, label %if.end12.i247, label %if.end8.i244.if.end33_crit_edge

if.end8.i244.if.end33_crit_edge:                  ; preds = %if.end8.i244
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end12.i247:                                    ; preds = %if.end8.i244
  %55 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i_cowfp.i, align 4
  %tobool.not.i.i246 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i246, label %if.end12.i247.if.then32_crit_edge, label %xfs_inode_has_cow_data.exit.i249

if.end12.i247.if.then32_crit_edge:                ; preds = %if.end12.i247
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

xfs_inode_has_cow_data.exit.i249:                 ; preds = %if.end12.i247
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %56, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %58)
  %tobool2.i.not.i248 = icmp eq i64 %58, 0
  br i1 %tobool2.i.not.i248, label %xfs_inode_has_cow_data.exit.i249.if.then32_crit_edge, label %land.lhs.true.i253

xfs_inode_has_cow_data.exit.i249.if.then32_crit_edge: ; preds = %xfs_inode_has_cow_data.exit.i249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

land.lhs.true.i253:                               ; preds = %xfs_inode_has_cow_data.exit.i249
  %59 = ptrtoint ptr %cow_seq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cow_seq, align 4
  %if_seq19.i251 = getelementptr inbounds %struct.xfs_ifork, ptr %56, i32 0, i32 2
  %61 = ptrtoint ptr %if_seq19.i251 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %if_seq19.i251, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp20.not.i252 = icmp eq i32 %60, %62
  br i1 %cmp20.not.i252, label %land.lhs.true.i253.if.then32_crit_edge, label %land.lhs.true.i253.if.end33_crit_edge

land.lhs.true.i253.if.end33_crit_edge:            ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true.i253.if.then32_crit_edge:           ; preds = %land.lhs.true.i253
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32

if.then32:                                        ; preds = %land.lhs.true.i253.if.then32_crit_edge, %xfs_inode_has_cow_data.exit.i249.if.then32_crit_edge, %if.end12.i247.if.then32_crit_edge, %if.end.i240.if.then32_crit_edge
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 8) #7
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true.i253.if.end33_crit_edge, %if.end8.i244.if.end33_crit_edge, %lor.lhs.false.i237.if.end33_crit_edge, %if.end30.if.end33_crit_edge
  %call35 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %add.ptr.i, ptr noundef %i_df, i64 noundef %shr, ptr noundef nonnull %icur, ptr noundef nonnull %imap) #7
  br i1 %call35, label %if.end33.do.end41_crit_edge, label %if.then36

if.end33.do.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %imap to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %shr9, ptr %imap, align 8
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %if.end33.do.end41_crit_edge
  %64 = ptrtoint ptr %if_seq.i242 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %if_seq.i242, align 4
  %66 = ptrtoint ptr %data_seq.i241 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %data_seq.i241, align 8
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 8) #7
  %67 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %imap, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %68, i64 %shr)
  %cmp47 = icmp ugt i64 %68, %shr
  br i1 %cmp47, label %if.then49, label %do.end41.if.end52_crit_edge

do.end41.if.end52_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then49:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i64 %68, %shr
  %69 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %sub, ptr %br_blockcount, align 8
  %70 = ptrtoint ptr %imap to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %shr, ptr %imap, align 8
  %71 = ptrtoint ptr %br_startblock to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 -2, ptr %br_startblock, align 8
  %72 = ptrtoint ptr %br_state to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %br_state, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %do.end41.if.end52_crit_edge
  br i1 %cmp.not273, label %if.end52.if.end65_crit_edge, label %land.lhs.true55

if.end52.if.end65_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

land.lhs.true55:                                  ; preds = %if.end52
  %73 = ptrtoint ptr %imap to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %imap, align 8
  %75 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %br_blockcount, align 8
  %add58 = add i64 %76, %74
  call void @__sanitizer_cov_trace_cmp8(i64 %cow_fsb.0270, i64 %add58)
  %cmp59 = icmp ult i64 %cow_fsb.0270, %add58
  br i1 %cmp59, label %if.then61, label %land.lhs.true55.if.end65_crit_edge

land.lhs.true55.if.end65_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then61:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  %sub63 = sub i64 %cow_fsb.0270, %74
  %77 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %sub63, ptr %br_blockcount, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %land.lhs.true55.if.end65_crit_edge, %if.end52.if.end65_crit_edge
  %78 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %79)
  %cmp67.not = icmp ne i64 %79, -2
  %and.i = and i64 %79, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i257.not = icmp eq i64 %and.i, 4503599627239424
  %or.cond292 = and i1 %cmp67.not, %cmp.i257.not
  br i1 %or.cond292, label %if.end65.allocate_blocks_crit_edge, label %if.end74

if.end65.allocate_blocks_crit_edge:               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %allocate_blocks

if.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = call i32 @xfs_bmbt_to_iomap(ptr noundef %add.ptr.i, ptr noundef %wpc, ptr noundef nonnull %imap, i32 noundef 0, i16 noundef zeroext 0) #7
  call fastcc void @trace_xfs_map_blocks_found(ptr noundef %add.ptr.i, i64 noundef %offset, i32 noundef %shl.i, ptr noundef nonnull %imap)
  br label %cleanup

80:                                               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i_cowfp.i, align 4
  %if_seq = getelementptr inbounds %struct.xfs_ifork, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %if_seq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %if_seq, align 4
  %85 = ptrtoint ptr %cow_seq to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %cow_seq, align 4
  call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 8) #7
  br label %allocate_blocks

allocate_blocks:                                  ; preds = %80, %if.end65.allocate_blocks_crit_edge
  %whichfork.0289 = phi i32 [ 2, %80 ], [ 0, %if.end65.allocate_blocks_crit_edge ]
  %cmp100.not287 = phi i1 [ true, %80 ], [ false, %if.end65.allocate_blocks_crit_edge ]
  %cow_fsb.0271285 = phi i64 [ %43, %80 ], [ %cow_fsb.0270, %if.end65.allocate_blocks_crit_edge ]
  %cmp.not274283 = phi i1 [ false, %80 ], [ %cmp.not273, %if.end65.allocate_blocks_crit_edge ]
  %86 = phi ptr [ %cow_seq, %80 ], [ %data_seq.i241, %if.end65.allocate_blocks_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %allocate_blocks
  %call2.i = call i32 @xfs_bmapi_convert_delalloc(ptr noundef %add.ptr.i, i32 noundef %whichfork.0289, i64 noundef %offset, ptr noundef %wpc, ptr noundef %86) #7
  %87 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i, label %do.body.i.cleanup_crit_edge [
    i32 0, label %do.cond.i
    i32 -11, label %land.lhs.true81
  ], !prof !72

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond.i:                                        ; preds = %do.body.i
  %88 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %offset1.i, align 8
  %90 = ptrtoint ptr %length.i234 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %length.i234, align 8
  %add.i264 = add i64 %91, %89
  %cmp8.not.i = icmp ugt i64 %add.i264, %offset
  br i1 %cmp8.not.i, label %if.end99, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

land.lhs.true81:                                  ; preds = %do.body.i
  %or.cond228 = and i1 %tobool85.not, %cmp100.not287
  br i1 %or.cond228, label %land.lhs.true81.retry_crit_edge, label %cond.false97

land.lhs.true81.retry_crit_edge:                  ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

cond.false97:                                     ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 391) #7
  br label %cleanup

if.end99:                                         ; preds = %do.cond.i
  %brmerge = select i1 %cmp100.not287, i1 true, i1 %cmp.not274283
  br i1 %brmerge, label %if.end99.if.end123_crit_edge, label %if.then105

if.end99.if.end123_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then105:                                       ; preds = %if.end99
  %92 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %sb_blocklog, align 8
  %sh_prom109 = zext i8 %93 to i64
  %shl = shl i64 %cow_fsb.0271285, %sh_prom109
  %94 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %offset1.i, align 8
  %96 = ptrtoint ptr %length.i234 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %length.i234, align 8
  %add113 = add i64 %97, %95
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %add113)
  %cmp114 = icmp ult i64 %shl, %add113
  br i1 %cmp114, label %if.then116, label %if.then105.if.end123_crit_edge

if.then105.if.end123_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then116:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  %sub119 = sub i64 %shl, %95
  %98 = ptrtoint ptr %length.i234 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %sub119, ptr %length.i234, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then116, %if.then105.if.end123_crit_edge, %if.end99.if.end123_crit_edge
  %99 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %offset1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %offset)
  %cmp126.not = icmp sgt i64 %100, %offset
  br i1 %cmp126.not, label %cond.false135, label %if.end123.cond.end136_crit_edge, !prof !59

if.end123.cond.end136_crit_edge:                  ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end136

cond.false135:                                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 407) #7
  br label %cond.end136

cond.end136:                                      ; preds = %cond.false135, %if.end123.cond.end136_crit_edge
  %101 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %offset1.i, align 8
  %103 = ptrtoint ptr %length.i234 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %length.i234, align 8
  %add141 = add i64 %104, %102
  call void @__sanitizer_cov_trace_cmp8(i64 %add141, i64 %offset)
  %cmp142 = icmp ugt i64 %add141, %offset
  br i1 %cmp142, label %cond.end136.cond.end152_crit_edge, label %cond.false151, !prof !66

cond.end136.cond.end152_crit_edge:                ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end152

cond.false151:                                    ; preds = %cond.end136
  call void @__sanitizer_cov_trace_pc() #9
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, i32 noundef 408) #7
  br label %cond.end152

cond.end152:                                      ; preds = %cond.false151, %cond.end136.cond.end152_crit_edge
  call fastcc void @trace_xfs_map_blocks_alloc(ptr noundef %add.ptr.i, i64 noundef %offset, i32 noundef %shl.i, i32 noundef %whichfork.0289, ptr noundef nonnull %imap)
  br label %cleanup

cleanup:                                          ; preds = %cond.end152, %cond.false97, %do.body.i.cleanup_crit_edge, %if.end74, %if.then32, %land.lhs.true.i.cleanup_crit_edge, %xfs_inode_has_cow_data.exit.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end152 ], [ 0, %if.then32 ], [ 0, %if.end74 ], [ -5, %entry.cleanup_crit_edge ], [ -11, %cond.false97 ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %xfs_inode_has_cow_data.exit.i.cleanup_crit_edge ], [ 0, %if.end12.i.cleanup_crit_edge ], [ %call2.i, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_prepare_ioend(ptr nocapture noundef readonly %ioend, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %5, 262144
  %or.i = or i32 %5, 262144
  store i32 %or.i, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool.not = icmp eq i32 %status, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %io_flags = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 2
  %6 = ptrtoint ptr %io_flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %io_flags, align 2
  %8 = and i16 %7, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not = icmp eq i16 %8, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %io_inode = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 4
  %9 = ptrtoint ptr %io_inode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io_inode, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 -312
  %io_offset = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 6
  %11 = ptrtoint ptr %io_offset to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %io_offset, align 8
  %io_size = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 5
  %13 = ptrtoint ptr %io_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_size, align 4
  %conv3 = zext i32 %14 to i64
  %call4 = tail call i32 @xfs_reflink_convert_cow(ptr noundef %add.ptr.i, i64 noundef %12, i64 noundef %conv3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %status.addr.0 = phi i32 [ %status, %entry.if.end_crit_edge ], [ %call4, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ]
  %15 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i24 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i24 to ptr
  %task.i25 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task.i25, align 8
  %flags1.i26 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %flags1.i26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags1.i26, align 4
  %and.i27 = and i32 %20, -262145
  %or.i28 = or i32 %and.i27, %and.i
  store i32 %or.i28, ptr %flags1.i26, align 4
  %io_offset.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 6
  %21 = ptrtoint ptr %io_offset.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %io_offset.i, align 8
  %io_size.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 5
  %23 = ptrtoint ptr %io_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %io_size.i, align 4
  %conv.i = zext i32 %24 to i64
  %add.i = add i64 %22, %conv.i
  %io_inode.i = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 4
  %25 = ptrtoint ptr %io_inode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_inode.i, align 8
  %i_disk_size.i = getelementptr i8, ptr %26, i32 -56
  %27 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_disk_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %28)
  %cmp.i = icmp sgt i64 %add.i, %28
  br i1 %cmp.i, label %if.end.if.then14_crit_edge, label %lor.lhs.false

if.end.if.then14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end
  %io_type = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 1
  %29 = ptrtoint ptr %io_type to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %io_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %30)
  %cmp = icmp eq i16 %30, 3
  br i1 %cmp, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false9

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %io_flags10 = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 2
  %31 = ptrtoint ptr %io_flags10 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %io_flags10, align 2
  %33 = and i16 %32, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool13.not = icmp eq i16 %33, 0
  br i1 %tobool13.not, label %lor.lhs.false9.if.end15_crit_edge, label %lor.lhs.false9.if.then14_crit_edge

lor.lhs.false9.if.then14_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

lor.lhs.false9.if.end15_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %lor.lhs.false9.if.then14_crit_edge, %lor.lhs.false.if.then14_crit_edge, %if.end.if.then14_crit_edge
  %io_bio = getelementptr inbounds %struct.iomap_ioend, ptr %ioend, i32 0, i32 8
  %34 = ptrtoint ptr %io_bio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_bio, align 8
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @xfs_end_bio, ptr %bi_end_io, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %lor.lhs.false9.if.end15_crit_edge
  ret i32 %status.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_discard_folio(ptr noundef %folio, i64 noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.anon.67, ptr %folio, i32 0, i32 2
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %conv = trunc i64 %pos to i32
  %6 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp.i.not.i.i.i.i = icmp eq i32 %7, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !59

if.then.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.11) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !73
  unreachable

PageHead.exit.i.i.i:                              ; preds = %entry
  %8 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %folio, align 4
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %folio_size.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.21, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %13 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %conv.i.i.i, %if.end.i.i.i ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i
  %sub = add i32 %shl.i, -1
  %and = and i32 %sub, %conv
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %5, i32 0, i32 20
  %14 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %15 to i64
  %shr = lshr i64 %pos, %sh_prom
  %conv3 = zext i32 %and to i64
  %shr8 = lshr i64 %conv3, %sh_prom
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %5, i32 0, i32 66
  %16 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %m_opstate.i, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not = icmp eq i32 %18, 0
  br i1 %tobool.i.not, label %do.body, label %folio_size.exit.out_invalidate_crit_edge

folio_size.exit.out_invalidate_crit_edge:         ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_invalidate

do.body:                                          ; preds = %folio_size.exit
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @xfs_discard_folio._rs, ptr noundef nonnull @__func__.xfs_discard_folio) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %if.then11

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %i_ino = getelementptr i8, ptr %3, i32 -296
  %19 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %i_ino, align 8
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef %folio, i64 noundef %20, i64 noundef %pos) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body.do.end_crit_edge
  %21 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %22, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !59

if.then.i.i.i.i.i:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.11) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !73
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %do.end
  %23 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %folio, align 4
  %25 = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i_blocks_per_folio.exit

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.21, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %28 to i32
  br label %i_blocks_per_folio.exit

i_blocks_per_folio.exit:                          ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.i_blocks_per_folio.exit_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %29 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %30 to i32
  %shr.i = lshr i32 %shl.i.i, %conv.i
  %conv14 = zext i32 %shr.i to i64
  %sub15 = sub nsw i64 %conv14, %shr8
  %call16 = tail call i32 @xfs_bmap_punch_delalloc_range(ptr noundef %add.ptr.i, i64 noundef %shr, i64 noundef %sub15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %i_blocks_per_folio.exit.out_invalidate_crit_edge, label %land.lhs.true

i_blocks_per_folio.exit.out_invalidate_crit_edge: ; preds = %i_blocks_per_folio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_invalidate

land.lhs.true:                                    ; preds = %i_blocks_per_folio.exit
  %31 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %m_opstate.i, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i41.not = icmp eq i32 %33, 0
  br i1 %tobool.i41.not, label %if.then19, label %land.lhs.true.out_invalidate_crit_edge

land.lhs.true.out_invalidate_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_invalidate

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @xfs_alert(ptr noundef %5, ptr noundef nonnull @.str.10) #7
  br label %out_invalidate

out_invalidate:                                   ; preds = %if.then19, %land.lhs.true.out_invalidate_crit_edge, %i_blocks_per_folio.exit.out_invalidate_crit_edge, %folio_size.exit.out_invalidate_crit_edge
  %34 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i.i.i.i42 = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i.i.i.i42, label %if.then.i.i.i.i43, label %PageHead.exit.i.i.i45, !prof !59

if.then.i.i.i.i43:                                ; preds = %out_invalidate
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.11) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #7, !srcloc !73
  unreachable

PageHead.exit.i.i.i45:                            ; preds = %out_invalidate
  %36 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %folio, align 4
  %38 = and i32 %37, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i.i44 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i.i44, label %PageHead.exit.i.i.i45.folio_size.exit51_crit_edge, label %if.end.i.i.i48

PageHead.exit.i.i.i45.folio_size.exit51_crit_edge: ; preds = %PageHead.exit.i.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %folio_size.exit51

if.end.i.i.i48:                                   ; preds = %PageHead.exit.i.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  %39 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i46 = getelementptr inbounds %struct.anon.21, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %compound_order.i.i.i46 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %compound_order.i.i.i46, align 1
  %conv.i.i.i47 = zext i8 %41 to i32
  br label %folio_size.exit51

folio_size.exit51:                                ; preds = %if.end.i.i.i48, %PageHead.exit.i.i.i45.folio_size.exit51_crit_edge
  %retval.0.i.i.i49 = phi i32 [ %conv.i.i.i47, %if.end.i.i.i48 ], [ 0, %PageHead.exit.i.i.i45.folio_size.exit51_crit_edge ]
  %shl.i50 = shl i32 4096, %retval.0.i.i.i49
  %sub22 = sub i32 %shl.i50, %and
  tail call void @iomap_invalidate_folio(ptr noundef %folio, i32 noundef %and, i32 noundef %sub22) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_lookup_extent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmbt_to_iomap(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_map_blocks_found(ptr noundef %ip, i64 noundef %offset, i32 noundef %count, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_map_blocks_found, i32 0, i32 1), ptr blockaddress(@trace_xfs_map_blocks_found, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !65

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  %call42 = tail call i32 @__traceiter_xfs_map_blocks_found(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count, i32 noundef 0, ptr noundef %irec) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !66

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div3.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_map_blocks_found, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_map_blocks_found, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_xfs_map_blocks_found.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_map_blocks_found.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1492, ptr noundef nonnull @.str.2) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !70
  %31 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_map_blocks_alloc(ptr noundef %ip, i64 noundef %offset, i32 noundef %count, i32 noundef %whichfork, ptr noundef %irec) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_map_blocks_alloc, i32 0, i32 1), ptr blockaddress(@trace_xfs_map_blocks_alloc, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !65

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %call42 = tail call i32 @__traceiter_xfs_map_blocks_alloc(ptr noundef null, ptr noundef %ip, i64 noundef %offset, i32 noundef %count, i32 noundef %whichfork, ptr noundef %irec) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !77
  %13 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_map_blocks_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_map_blocks_alloc, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_map_blocks_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_map_blocks_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1493, ptr noundef nonnull @.str.2) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !70
  %31 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
declare dso_local i32 @__traceiter_xfs_map_blocks_found(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_convert_delalloc(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_map_blocks_alloc(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_convert_cow(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_end_bio(ptr nocapture noundef readonly %bio) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %io_inode = getelementptr inbounds %struct.iomap_ioend, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %io_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_inode, align 8
  %i_ioend_lock = getelementptr i8, ptr %3, i32 784
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %i_ioend_lock) #7
  %i_ioend_list = getelementptr i8, ptr %3, i32 872
  %4 = ptrtoint ptr %i_ioend_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %i_ioend_list, align 4
  %cmp.i.not = icmp eq ptr %5, %i_ioend_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end50_crit_edge

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %m_unwritten_workqueue = getelementptr inbounds %struct.xfs_mount, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %m_unwritten_workqueue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m_unwritten_workqueue, align 4
  %i_ioend_work = getelementptr i8, ptr %3, i32 828
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %i_ioend_work) #7
  br i1 %call.i, label %if.then.if.end50_crit_edge, label %land.rhs

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

land.rhs:                                         ; preds = %if.then
  %.b61 = load i1, ptr @xfs_end_bio.__already_done, align 1
  br i1 %.b61, label %land.rhs.if.end50_crit_edge, label %if.then17, !prof !66

land.rhs.if.end50_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @xfs_end_bio.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 188, i32 noundef 9, ptr noundef null) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then17, %land.rhs.if.end50_crit_edge, %if.then.if.end50_crit_edge, %entry.if.end50_crit_edge
  %prev.i = getelementptr i8, ptr %3, i32 876
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %11, ptr noundef %i_ioend_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end50.list_add_tail.exit_crit_edge

if.end50.list_add_tail.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prev.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %i_ioend_list, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %1, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end50.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i_ioend_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iomap_invalidate_folio(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iomap_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_vm_bmap(ptr noundef %ip) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_vm_bmap, i32 0, i32 1), ptr blockaddress(@trace_xfs_vm_bmap, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !65

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !78
  %call42 = tail call i32 @__traceiter_xfs_vm_bmap(ptr noundef null, ptr noundef %ip) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !79
  %13 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !66

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !46) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_vm_bmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_vm_bmap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_vm_bmap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_vm_bmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 765, ptr noundef nonnull @.str.2) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !70
  %31 = tail call i32 @llvm.read_register.i32(metadata !46) #7
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
declare dso_local i64 @iomap_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_vm_bmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_swapfile_activate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !34, !36, !37, !38, !39, !41, !43, !45}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_aops.c", i32 173, i32 3}
!2 = !{ptr @xfs_address_space_operations, !3, !"xfs_address_space_operations", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_aops.c", i32 566, i32 39}
!4 = !{ptr @xfs_dax_aops, !5, !"xfs_dax_aops", i1 false, i1 false}
!5 = !{!"../fs/xfs/xfs_aops.c", i32 581, i32 39}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../fs/xfs/xfs_trace.h", i32 1532, i32 1}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!10 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_aops.c", i32 498, i32 6}
!16 = !{ptr @xfs_writeback_ops, !17, !"xfs_writeback_ops", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_aops.c", i32 481, i32 41}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/xfs/xfs_aops.c", i32 317, i32 2}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/xfs/xfs_aops.c", i32 391, i32 3}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_aops.c", i32 407, i32 2}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_aops.c", i32 408, i32 2}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../fs/xfs/xfs_trace.h", i32 1492, i32 1}
!28 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_trace.h", i32 1493, i32 1}
!31 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_aops.c", i32 187, i32 3}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/xfs/xfs_aops.c", i32 469, i32 2}
!36 = !{ptr @xfs_discard_folio._rs, !35, !"_rs", i1 false, i1 false}
!37 = !{ptr @__func__.xfs_discard_folio, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_aops.c", i32 476, i32 17}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_trace.h", i32 765, i32 1}
!45 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i64 1037222, i64 1037283}
!58 = !{i64 1039954}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 1040239}
!61 = !{i64 2153132742}
!62 = !{i64 2153132584}
!63 = !{i64 2153132912}
!64 = !{i64 2149796592}
!65 = !{i64 2148260530, i64 2148260535, i64 2148260548, i64 2148260592, i64 2148260626, i64 2148260647}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2159722472}
!68 = !{i64 2159722699}
!69 = !{i64 2149962623}
!70 = !{i64 2149963659}
!71 = !{i8 0, i8 2}
!72 = !{!"branch_weights", i32 2000, i32 4000, i32 2000}
!73 = !{i64 2150940515, i64 2150941006, i64 2150940552, i64 2150940608, i64 2150940642, i64 2150940666, i64 2150940707, i64 2150940728, i64 2150940756, i64 2150940790}
!74 = !{i64 2159611766}
!75 = !{i64 2159612037}
!76 = !{i64 2159630248}
!77 = !{i64 2159630519}
!78 = !{i64 2157970337}
!79 = !{i64 2157970526}
