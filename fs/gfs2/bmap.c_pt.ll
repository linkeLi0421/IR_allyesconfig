; ModuleID = '/llk/IR_all_yes/fs/gfs2/bmap.c_pt.bc'
source_filename = "../fs/gfs2/bmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iomap_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iomap_writeback_ops = type { ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iomap_page_ops = type { ptr, ptr }
%struct.gfs2_alloc_parms = type { i64, i32, i32, i64 }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
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
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.79 = type { ptr }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.page = type { i32, %union.anon.6, %union.anon.70, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.gfs2_sbd = type { ptr, ptr, %struct.kobject, %struct.completion, i32, %struct.gfs2_sb_host, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64], i32, %struct.gfs2_args, %struct.gfs2_tune, %struct.lm_lockstruct, %struct.gfs2_holder, ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.completion, %struct.completion, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32, %struct.spinlock, %struct.rb_root, i32, i32, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.gfs2_holder, %struct.gfs2_holder, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.completion, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, ptr, %struct.spinlock, i64, %struct.address_space, %struct.spinlock, ptr, i32, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, i64, i32, %struct.rw_semaphore, %struct.atomic_t, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.gfs2_holder, %struct.atomic_t, %struct.mutex, [270 x i8], [256 x i8], [256 x i8], i32, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gfs2_sb_host = type { i32, i32, i32, i32, i32, i32, %struct.gfs2_inum_host, %struct.gfs2_inum_host, [64 x i8], [64 x i8] }
%struct.gfs2_inum_host = type { i64, i64 }
%struct.gfs2_args = type { [64 x i8], [64 x i8], [64 x i8], i24, i32, i32, i32, i32 }
%struct.gfs2_tune = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lm_lockstruct = type { i32, i32, ptr, ptr, i32, i32, %struct.dlm_lksb, %struct.dlm_lksb, [32 x i8], %struct.completion, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.gfs2_dinode = type { %struct.gfs2_meta_header, %struct.gfs2_inum, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i16, i16, i32, i16, i16, i32, %struct.gfs2_inum, i64, i32, i32, i32, [44 x i8] }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.83 }
%union.anon.83 = type { i32 }
%struct.gfs2_inum = type { i64, i64 }
%struct.metapath = type { [10 x ptr], [10 x i16], i32, i32 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
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
%struct.gfs2_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head }
%struct.gfs2_qadata = type { [4 x ptr], [4 x %struct.gfs2_holder], i32, i32 }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.80, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.anon.80 = type { %struct.delayed_work, i64 }
%struct.rhash_head = type { ptr }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
%struct.gfs2_journal_extent = type { %struct.list_head, i32, i64, i64 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@gfs2_iomap_ops = dso_local constant { %struct.iomap_ops, [24 x i8] } { %struct.iomap_ops { ptr @gfs2_iomap_begin, ptr @gfs2_iomap_end }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/gfs2/bmap.c\00", [17 x i8] zeroinitializer }, align 32
@gfs2_map_journal_extents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 2271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016gfs2: fsid=%s: journal %d mapped with %u extents in %lldms\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gfs2_map_journal_extents\00", [39 x i8] zeroinitializer }, align 32
@gfs2_map_journal_extents._entry_ptr = internal global ptr @gfs2_map_journal_extents._entry, section ".printk_index", align 4
@gfs2_map_journal_extents._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 2278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014gfs2: fsid=%s: error %d mapping journal %u at offset %llu (extent %u)\0A\00", [55 x i8] zeroinitializer }, align 32
@gfs2_map_journal_extents._entry_ptr.5 = internal global ptr @gfs2_map_journal_extents._entry.3, section ".printk_index", align 4
@gfs2_map_journal_extents._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 2281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014gfs2: fsid=%s: bmap=%d lblock=%llu block=%llu, state=0x%08lx, size=%llu\0A\00", [53 x i8] zeroinitializer }, align 32
@gfs2_map_journal_extents._entry_ptr.8 = internal global ptr @gfs2_map_journal_extents._entry.6, section ".printk_index", align 4
@gfs2_writeback_ops = dso_local constant { %struct.iomap_writeback_ops, [20 x i8] } { %struct.iomap_writeback_ops { ptr @gfs2_map_blocks, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__tracepoint_gfs2_iomap_start = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/gfs2/trace_gfs2.h\00", [43 x i8] zeroinitializer }, align 32
@trace_gfs2_iomap_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@gfs2_iomap_page_ops = internal constant { %struct.iomap_page_ops, [24 x i8] } { %struct.iomap_page_ops { ptr @gfs2_iomap_page_prepare, ptr @gfs2_iomap_page_done }, [24 x i8] zeroinitializer }, align 32
@__tracepoint_gfs2_iomap_end = external dso_local global %struct.tracepoint, align 4
@trace_gfs2_iomap_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_gfs2_bmap = external dso_local global %struct.tracepoint, align 4
@trace_gfs2_bmap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__const.do_grow.ap = private unnamed_addr constant %struct.gfs2_alloc_parms { i64 1, i32 0, i32 0, i64 0 }, align 8
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bh\00", [29 x i8] zeroinitializer }, align 32
@__func__.punch_hole = private unnamed_addr constant [11 x i8] c"punch_hole\00", align 1
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"prev_bnr != bh->b_blocknr\00", [38 x i8] zeroinitializer }, align 32
@punch_hole._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.punch_hole, ptr @.str, i32 1822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\010gfs2: fsid=%s: inode %llu, block:%llu, i_h:%u,s_h:%u, mp_h:%u\0A\00", [63 x i8] zeroinitializer }, align 32
@punch_hole._entry_ptr = internal global ptr @punch_hole._entry, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"magic number\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"gfs2_glock_is_locked_by_me(rd_gh->gh_gl)\00", [55 x i8] zeroinitializer }, align 32
@__func__.sweep_bh_for_rgrps = private unnamed_addr constant [19 x i8] c"sweep_bh_for_rgrps\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gfs2_map_blocks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"gfs2_iomap_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1176, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2035, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2270, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2275, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2279, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"gfs2_writeback_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2482, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 260, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 44, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 452, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 717, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [24 x i8] c"../fs/gfs2/trace_gfs2.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 475, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 108, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"gfs2_iomap_page_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 991, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 271, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1816, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1817, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1819, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"../fs/gfs2/util.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 126, i32 38 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [18 x i8] c"../fs/gfs2/bmap.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1460, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @gfs2_map_journal_extents._entry, ptr @gfs2_map_journal_extents._entry.3, ptr @gfs2_map_journal_extents._entry.6, ptr @gfs2_map_journal_extents._entry_ptr, ptr @gfs2_map_journal_extents._entry_ptr.5, ptr @gfs2_map_journal_extents._entry_ptr.8, ptr @punch_hole._entry, ptr @punch_hole._entry_ptr, ptr @gfs2_iomap_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @gfs2_writeback_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @gfs2_iomap_page_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_iomap_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_map_journal_extents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_map_journal_extents._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_map_journal_extents._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_writeback_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_iomap_page_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @punch_hole._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_unstuff_dinode(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %bh.i = alloca ptr, align 4
  %dibh.i = alloca ptr, align 4
  %block.i = alloca i64, align 8
  %n.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rw_mutex = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 13
  tail call void @down_write(ptr noundef %i_rw_mutex) #12
  %i_mapping = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef 0, i32 noundef 7, i32 noundef 3136) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh.i) #12
  %2 = ptrtoint ptr %bh.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #12
  %3 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block.i) #12
  %4 = ptrtoint ptr %block.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %block.i, align 8
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ip, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %7)
  %cmp.i.not.i = icmp eq i16 %7, 16384
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %8 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %9, ptr noundef nonnull %dibh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.__gfs2_unstuff_inode.exit_crit_edge

if.end.__gfs2_unstuff_inode.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__gfs2_unstuff_inode.exit

if.end.i:                                         ; preds = %if.end
  %call2.i = call fastcc i64 @i_size_read(ptr noundef %ip) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call2.i)
  %tobool3.not.i = icmp eq i64 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end22.i_crit_edge, label %if.then4.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n.i) #12
  %10 = ptrtoint ptr %n.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %n.i, align 4
  %call5.i = call i32 @gfs2_alloc_blocks(ptr noundef %ip, ptr noundef nonnull %block.i, ptr noundef nonnull %n.i, i1 noundef zeroext false, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then4.i.cleanup.i_crit_edge

if.then4.i.cleanup.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end8.i:                                        ; preds = %if.then4.i
  br i1 %cmp.i.not.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end8.i
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %11 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_fs_info.i.i, align 16
  %15 = ptrtoint ptr %block.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %block.i, align 8
  call void @gfs2_trans_remove_revoke(ptr noundef %14, i64 noundef %16, i32 noundef 1) #12
  %17 = ptrtoint ptr %block.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %block.i, align 8
  %call13.i = call i32 @gfs2_dir_get_new_buffer(ptr noundef %ip, i64 noundef %18, ptr noundef nonnull %bh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.then10.i.cleanup.i_crit_edge

if.then10.i.cleanup.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end16.i:                                       ; preds = %if.then10.i
  %19 = ptrtoint ptr %bh.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh.i, align 4
  %21 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dibh.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %23 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 24
  %b_data6.i.i = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %b_data6.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data6.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %26, i32 232
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 4
  %27 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %b_size.i.i, align 8
  %sub.i.i = add i32 %28, -232
  %29 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr7.i.i, i32 %sub.i.i)
  %30 = load ptr, ptr %b_data.i.i, align 4
  %b_size9.i.i = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 4
  %31 = ptrtoint ptr %b_size9.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %b_size9.i.i, align 8
  %add.ptr10.i.i = getelementptr i8, ptr %30, i32 %32
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr10.i.i, i32 24
  %add.ptr12.i.i = getelementptr i8, ptr %add.ptr11.i.i, i32 -232
  %33 = call ptr @memset(ptr %add.ptr12.i.i, i32 0, i32 208)
  %34 = load ptr, ptr %bh.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end16.i.cleanup.thread.i_crit_edge, label %if.then.i.i

if.end16.i.cleanup.thread.i_crit_edge:            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.then.i.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %34) #12
  br label %cleanup.thread.i

if.else.i:                                        ; preds = %if.end8.i
  %35 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dibh.i, align 4
  %37 = ptrtoint ptr %block.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %block.i, align 8
  %39 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.i, !prof !75

if.then.i.i.i.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i = add i32 %41, -1
  br label %_compound_head.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i.i.i

_compound_head.exit.i.i.i:                        ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.then.i.i.i.i ], [ %42, %if.end.i.i.i.i ]
  %43 = inttoptr i32 %retval.0.i.i.i.i to ptr
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and.i.i.i.i11.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i11.i.i)
  %tobool.not.i.i.i12.i.i = icmp eq i32 %and.i.i.i.i11.i.i, 0
  br i1 %tobool.not.i.i.i12.i.i, label %folio_flags.exit.i.i.i.i, label %if.then.i.i.i13.i.i, !prof !75

if.then.i.i.i13.i.i:                              ; preds = %_compound_head.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.9) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !76
  unreachable

folio_flags.exit.i.i.i.i:                         ; preds = %_compound_head.exit.i.i.i
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %43, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.i.not.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool.i.not.i.i.i, label %if.then.i56.i, label %PageUptodate.exit.i.i

PageUptodate.exit.i.i:                            ; preds = %folio_flags.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !77
  br label %if.end11.i.i

if.then.i56.i:                                    ; preds = %folio_flags.exit.i.i.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 44) #12
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call.i, align 4
  %shr.i.i14.i.i = lshr i32 %51, 30
  %52 = zext i32 %shr.i.i14.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i14.i.i, label %if.then.i56.i.if.then.i15.i.i_crit_edge [
    i32 2, label %if.then.i56.i.if.else.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i.i
  ]

if.then.i56.i.if.else.i.i.i_crit_edge:            ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i.i

if.then.i56.i.if.then.i15.i.i_crit_edge:          ; preds = %if.then.i56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i15.i.i

is_highmem_idx.exit.i.i.i:                        ; preds = %if.then.i56.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %53 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp2.i.not.i.i.i = icmp eq i32 %53, 2
  br i1 %cmp2.i.not.i.i.i, label %is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge, label %is_highmem_idx.exit.i.i.i.if.then.i15.i.i_crit_edge

is_highmem_idx.exit.i.i.i.if.then.i15.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i15.i.i

is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i.i

if.then.i15.i.i:                                  ; preds = %is_highmem_idx.exit.i.i.i.if.then.i15.i.i_crit_edge, %if.then.i56.i.if.then.i15.i.i_crit_edge
  %call5.i.i.i = call ptr @page_address(ptr noundef nonnull %call.i) #12
  br label %kmap.exit.i.i

if.else.i.i.i:                                    ; preds = %is_highmem_idx.exit.i.i.i.if.else.i.i.i_crit_edge, %if.then.i56.i.if.else.i.i.i_crit_edge
  %call6.i.i.i = call ptr @kmap_high(ptr noundef nonnull %call.i) #12
  br label %kmap.exit.i.i

kmap.exit.i.i:                                    ; preds = %if.else.i.i.i, %if.then.i15.i.i
  %addr.0.i.i.i = phi ptr [ %call6.i.i.i, %if.else.i.i.i ], [ %call5.i.i.i, %if.then.i15.i.i ]
  %call2.i.i = call fastcc i64 @i_size_read(ptr noundef %ip) #12
  %i_sb.i.i.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %54 = ptrtoint ptr %i_sb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i_sb.i.i.i.i, align 4
  %s_fs_info.i.i.i.i = getelementptr inbounds %struct.super_block, ptr %55, i32 0, i32 33
  %56 = ptrtoint ptr %s_fs_info.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %s_fs_info.i.i.i.i, align 16
  %sb_bsize.i.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %57, i32 0, i32 5, i32 4
  %58 = ptrtoint ptr %sb_bsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sb_bsize.i.i.i, align 8
  %sub.i.i.i = add i32 %59, -232
  %conv.i.i = zext i32 %sub.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call2.i.i, i64 %conv.i.i)
  %cmp.i57.i = icmp ugt i64 %call2.i.i, %conv.i.i
  %extract.t1.i.i = trunc i64 %call2.i.i to i32
  %spec.select.i.i = select i1 %cmp.i57.i, i32 %sub.i.i.i, i32 %extract.t1.i.i
  %b_data.i58.i = getelementptr inbounds %struct.buffer_head, ptr %36, i32 0, i32 5
  %60 = ptrtoint ptr %b_data.i58.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.i58.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %61, i32 232
  %62 = call ptr @memcpy(ptr %addr.0.i.i.i, ptr %add.ptr.i59.i, i32 %spec.select.i.i)
  %add.ptr9.i.i = getelementptr i8, ptr %addr.0.i.i.i, i32 %spec.select.i.i
  %conv10.i.i = sub i32 4096, %spec.select.i.i
  %63 = call ptr @memset(ptr %add.ptr9.i.i, i32 0, i32 %conv10.i.i)
  call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 55) #12
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call.i, align 4
  %shr.i.i20.i.i = lshr i32 %65, 30
  %66 = zext i32 %shr.i.i20.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %shr.i.i20.i.i, label %kmap.exit.i.i.kunmap.exit.i.i_crit_edge [
    i32 2, label %kmap.exit.i.i.if.end.i.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i22.i.i
  ]

kmap.exit.i.i.if.end.i.i.i_crit_edge:             ; preds = %kmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

kmap.exit.i.i.kunmap.exit.i.i_crit_edge:          ; preds = %kmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kunmap.exit.i.i

is_highmem_idx.exit.i22.i.i:                      ; preds = %kmap.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %67 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp2.i.not.i21.i.i = icmp eq i32 %67, 2
  br i1 %cmp2.i.not.i21.i.i, label %is_highmem_idx.exit.i22.i.i.if.end.i.i.i_crit_edge, label %is_highmem_idx.exit.i22.i.i.kunmap.exit.i.i_crit_edge

is_highmem_idx.exit.i22.i.i.kunmap.exit.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kunmap.exit.i.i

is_highmem_idx.exit.i22.i.i.if.end.i.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %is_highmem_idx.exit.i22.i.i.if.end.i.i.i_crit_edge, %kmap.exit.i.i.if.end.i.i.i_crit_edge
  call void @kunmap_high(ptr noundef nonnull %call.i) #12
  br label %kunmap.exit.i.i

kunmap.exit.i.i:                                  ; preds = %if.end.i.i.i, %is_highmem_idx.exit.i22.i.i.kunmap.exit.i.i_crit_edge, %kmap.exit.i.i.kunmap.exit.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !78
  %68 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %39, align 4
  %and.i.i.i.i.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %SetPageUptodate.exit.i.i, label %if.then.i.i.i.i.i, !prof !75

if.then.i.i.i.i.i:                                ; preds = %kunmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.9) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !76
  unreachable

SetPageUptodate.exit.i.i:                         ; preds = %kunmap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 2, ptr noundef nonnull %call.i) #12
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %SetPageUptodate.exit.i.i, %PageUptodate.exit.i.i
  %i_diskflags.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %70 = ptrtoint ptr %i_diskflags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %i_diskflags.i.i.i, align 4
  %and.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool13.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool13.not.i.i, label %if.else.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp.i.not.i.i.i = icmp eq i32 %73, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PagePrivate.exit.i.i, !prof !79

if.then.i.i.i:                                    ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.12) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !80
  unreachable

PagePrivate.exit.i.i:                             ; preds = %if.then14.i.i
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %call.i, align 4
  %76 = and i32 %75, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool16.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool16.not.i.i, label %if.then17.i.i, label %PagePrivate.exit.i.i.do.body.i.i_crit_edge

PagePrivate.exit.i.i.do.body.i.i_crit_edge:       ; preds = %PagePrivate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

if.then17.i.i:                                    ; preds = %PagePrivate.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %77 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %i_blkbits.i.i, align 2
  %conv18.i.i = zext i8 %78 to i32
  %shl.i.i = shl nuw i32 1, %conv18.i.i
  call void @create_empty_buffers(ptr noundef nonnull %call.i, i32 noundef %shl.i.i, i32 noundef 1) #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then17.i.i, %PagePrivate.exit.i.i.do.body.i.i_crit_edge
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp.i.not.i2.i.i = icmp eq i32 %80, -1
  br i1 %cmp.i.not.i2.i.i, label %if.then.i3.i.i, label %PagePrivate.exit6.i.i, !prof !79

if.then.i3.i.i:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.12) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !80
  unreachable

PagePrivate.exit6.i.i:                            ; preds = %do.body.i.i
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %call.i, align 4
  %83 = and i32 %82, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool21.not.i.i = icmp eq i32 %83, 0
  br i1 %tobool21.not.i.i, label %do.body26.i.i, label %do.end32.i.i, !prof !79

do.body26.i.i:                                    ; preds = %PagePrivate.exit6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 81, 0\0A.popsection", ""() #12, !srcloc !81
  unreachable

do.end32.i.i:                                     ; preds = %PagePrivate.exit6.i.i
  %private.i.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %84 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %private.i.i, align 4
  %86 = inttoptr i32 %85 to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %86, align 4
  %89 = and i32 %88, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool34.not.i.i = icmp eq i32 %89, 0
  br i1 %tobool34.not.i.i, label %if.then35.i.i, label %do.end32.i.i.if.end36.i.i_crit_edge

do.end32.i.i.if.end36.i.i_crit_edge:              ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36.i.i

if.then35.i.i:                                    ; preds = %do.end32.i.i
  %i_sb.i60.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %90 = ptrtoint ptr %i_sb.i60.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i_sb.i60.i, align 4
  %92 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %86, align 4
  %94 = and i32 %93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i.i23.i.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i.i23.i.i, label %if.then.i.i24.i.i, label %if.then35.i.i.map_bh.exit.i.i_crit_edge

if.then35.i.i.map_bh.exit.i.i_crit_edge:          ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %map_bh.exit.i.i

if.then.i.i24.i.i:                                ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 4, ptr noundef %86) #12
  br label %map_bh.exit.i.i

map_bh.exit.i.i:                                  ; preds = %if.then.i.i24.i.i, %if.then35.i.i.map_bh.exit.i.i_crit_edge
  %s_bdev.i.i.i = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 26
  %95 = ptrtoint ptr %s_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_bdev.i.i.i, align 4
  %b_bdev.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 6
  %97 = ptrtoint ptr %b_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %b_bdev.i.i.i, align 8
  %b_blocknr.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 3
  %98 = ptrtoint ptr %b_blocknr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %38, ptr %b_blocknr.i.i.i, align 8
  %s_blocksize.i.i.i = getelementptr inbounds %struct.super_block, ptr %91, i32 0, i32 3
  %99 = ptrtoint ptr %s_blocksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %s_blocksize.i.i.i, align 16
  %b_size.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 4
  %101 = ptrtoint ptr %b_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %b_size.i.i.i, align 8
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %map_bh.exit.i.i, %do.end32.i.i.if.end36.i.i_crit_edge
  %102 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %86, align 4
  %and1.i.i9.i.i = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i9.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i9.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i10.i.i, label %if.end36.i.i.set_buffer_uptodate.exit.i.i_crit_edge

if.end36.i.i.set_buffer_uptodate.exit.i.i_crit_edge: ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_buffer_uptodate.exit.i.i

if.then.i10.i.i:                                  ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 0, ptr noundef %86) #12
  br label %set_buffer_uptodate.exit.i.i

set_buffer_uptodate.exit.i.i:                     ; preds = %if.then.i10.i.i, %if.end36.i.i.set_buffer_uptodate.exit.i.i_crit_edge
  %i_gl.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %104 = ptrtoint ptr %i_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_gl.i.i, align 4
  call void @gfs2_trans_add_data(ptr noundef %105, ptr noundef %86) #12
  br label %cleanup.thread.i

if.else.i.i:                                      ; preds = %if.end11.i.i
  %call37.i.i = call zeroext i1 @set_page_dirty(ptr noundef nonnull %call.i) #12
  %i_sb.i.i25.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %106 = ptrtoint ptr %i_sb.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %i_sb.i.i25.i.i, align 4
  %s_fs_info.i.i26.i.i = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 33
  %108 = ptrtoint ptr %s_fs_info.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %s_fs_info.i.i26.i.i, align 16
  %110 = ptrtoint ptr %i_diskflags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %i_diskflags.i.i.i, align 4
  %and.i.i27.i.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27.i.i)
  %tobool.not.i28.i.i = icmp eq i32 %and.i.i27.i.i, 0
  br i1 %tobool.not.i28.i.i, label %lor.lhs.false.i.i.i, label %if.else.i.i.cleanup.thread.i_crit_edge

if.else.i.i.cleanup.thread.i_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

lor.lhs.false.i.i.i:                              ; preds = %if.else.i.i
  %ar_data.i.i.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %109, i32 0, i32 21, i32 3
  %112 = ptrtoint ptr %ar_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load.i.i.i.i = load i32, ptr %ar_data.i.i.i.i, align 4
  %113 = and i32 %bf.load.i.i.i.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %113)
  %cmp.i.i.i.i = icmp eq i32 %113, 16777216
  br i1 %cmp.i.i.i.i, label %if.end.i29.i.i, label %lor.lhs.false.i.i.i.cleanup.thread.i_crit_edge

lor.lhs.false.i.i.i.cleanup.thread.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end.i29.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %i_ordered.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 14
  %114 = ptrtoint ptr %i_ordered.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %i_ordered.i.i.i, align 4
  %cmp.i21.not.i.i.i = icmp eq ptr %115, %i_ordered.i.i.i
  br i1 %cmp.i21.not.i.i.i, label %if.then5.i.i.i, label %if.end.i29.i.i.cleanup.thread.i_crit_edge

if.end.i29.i.i.cleanup.thread.i_crit_edge:        ; preds = %if.end.i29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.then5.i.i.i:                                   ; preds = %if.end.i29.i.i
  %sd_ordered_lock.i.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %109, i32 0, i32 85
  call void @_raw_spin_lock(ptr noundef %sd_ordered_lock.i.i.i) #12
  %116 = ptrtoint ptr %i_ordered.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %i_ordered.i.i.i, align 4
  %cmp.i22.not.i.i.i = icmp eq ptr %117, %i_ordered.i.i.i
  br i1 %cmp.i22.not.i.i.i, label %if.then9.i.i.i, label %if.then5.i.i.i.if.end11.i.i.i_crit_edge

if.then5.i.i.i.if.end11.i.i.i_crit_edge:          ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i.i

if.then9.i.i.i:                                   ; preds = %if.then5.i.i.i
  %sd_log_ordered.i.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %109, i32 0, i32 84
  %118 = ptrtoint ptr %sd_log_ordered.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sd_log_ordered.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %i_ordered.i.i.i, ptr noundef %sd_log_ordered.i.i.i, ptr noundef %119) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then9.i.i.i.if.end11.i.i.i_crit_edge

if.then9.i.i.i.if.end11.i.i.i_crit_edge:          ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %i_ordered.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %121 = ptrtoint ptr %i_ordered.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %119, ptr %i_ordered.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 14, i32 1
  %122 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %sd_log_ordered.i.i.i, ptr %prev3.i.i.i.i.i, align 4
  %123 = ptrtoint ptr %sd_log_ordered.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %i_ordered.i.i.i, ptr %sd_log_ordered.i.i.i, align 4
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i.i.i, %if.then9.i.i.i.if.end11.i.i.i_crit_edge, %if.then5.i.i.i.if.end11.i.i.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sd_ordered_lock.i.i.i) #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end11.i.i.i, %if.end.i29.i.i.cleanup.thread.i_crit_edge, %lor.lhs.false.i.i.i.cleanup.thread.i_crit_edge, %if.else.i.i.cleanup.thread.i_crit_edge, %set_buffer_uptodate.exit.i.i, %if.then.i.i, %if.end16.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #12
  br label %if.end22.i

cleanup.i:                                        ; preds = %if.then10.i.cleanup.i_crit_edge, %if.then4.i.cleanup.i_crit_edge
  %error.1.i = phi i32 [ %call5.i, %if.then4.i.cleanup.i_crit_edge ], [ %call13.i, %if.then10.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n.i) #12
  br label %out_brelse.i

if.end22.i:                                       ; preds = %cleanup.thread.i, %if.end.i.if.end22.i_crit_edge
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %124 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %i_gl.i, align 4
  %126 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dibh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %125, ptr noundef %127) #12
  %128 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dibh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %129, i32 0, i32 5
  %130 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %b_data.i, align 4
  %b_size.i61.i = getelementptr inbounds %struct.buffer_head, ptr %129, i32 0, i32 4
  %132 = ptrtoint ptr %b_size.i61.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %b_size.i61.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 232, i32 %133)
  %cmp.i62.i = icmp ult i32 %133, 232
  br i1 %cmp.i62.i, label %do.body2.i.i, label %gfs2_buffer_clear_tail.exit.i, !prof !79

do.body2.i.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #12, !srcloc !82
  unreachable

gfs2_buffer_clear_tail.exit.i:                    ; preds = %if.end22.i
  %add.ptr.i64.i = getelementptr i8, ptr %131, i32 232
  %sub.i65.i = add i32 %133, -232
  %134 = call ptr @memset(ptr %add.ptr.i64.i, i32 0, i32 %sub.i65.i)
  %call24.i = call fastcc i64 @i_size_read(ptr noundef %ip) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call24.i)
  %tobool25.not.i = icmp eq i64 %call24.i, 0
  br i1 %tobool25.not.i, label %gfs2_buffer_clear_tail.exit.i.if.end30.i_crit_edge, label %if.then26.i

gfs2_buffer_clear_tail.exit.i.if.end30.i_crit_edge: ; preds = %gfs2_buffer_clear_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.then26.i:                                      ; preds = %gfs2_buffer_clear_tail.exit.i
  %135 = ptrtoint ptr %block.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %block.i, align 8
  %137 = ptrtoint ptr %add.ptr.i64.i to i32
  call void @__asan_store8_noabort(i32 %137)
  store i64 %136, ptr %add.ptr.i64.i, align 8
  %i_blkbits.i66.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %138 = ptrtoint ptr %i_blkbits.i66.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %i_blkbits.i66.i, align 2
  %conv.i67.i = zext i8 %139 to i32
  %sub.i68.i = add nsw i32 %conv.i67.i, -9
  %sh_prom.i.i = zext i32 %sub.i68.i to i64
  %shl.i69.i = shl nuw i64 1, %sh_prom.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i68.i)
  %cmp.i70.not.i = icmp eq i32 %sub.i68.i, 63
  br i1 %cmp.i70.not.i, label %lor.rhs.i.i, label %if.then26.i.gfs2_add_inode_blocks.exit.i_crit_edge

if.then26.i.gfs2_add_inode_blocks.exit.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_add_inode_blocks.exit.i

lor.rhs.i.i:                                      ; preds = %if.then26.i
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %140 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %i_blocks.i.i, align 8
  %sub2.i.i = sub i64 0, %shl.i69.i
  call void @__sanitizer_cov_trace_cmp8(i64 %141, i64 %sub2.i.i)
  %cmp3.i.i = icmp ult i64 %141, %sub2.i.i
  br i1 %cmp3.i.i, label %if.then.i71.i, label %lor.rhs.i.i.gfs2_add_inode_blocks.exit.i_crit_edge, !prof !79

lor.rhs.i.i.gfs2_add_inode_blocks.exit.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_add_inode_blocks.exit.i

if.then.i71.i:                                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %142 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %143, i32 0, i32 33
  %144 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @gfs2_assert_i(ptr noundef %145) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !83
  unreachable

gfs2_add_inode_blocks.exit.i:                     ; preds = %lor.rhs.i.i.gfs2_add_inode_blocks.exit.i_crit_edge, %if.then26.i.gfs2_add_inode_blocks.exit.i_crit_edge
  %i_blocks11.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %146 = ptrtoint ptr %i_blocks11.i.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %i_blocks11.i.i, align 8
  %add.i.i = add i64 %147, %shl.i69.i
  store i64 %add.i.i, ptr %i_blocks11.i.i, align 8
  %i_sb.i.i73.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %148 = ptrtoint ptr %i_sb.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i_sb.i.i73.i, align 4
  %s_fs_info.i.i74.i = getelementptr inbounds %struct.super_block, ptr %149, i32 0, i32 33
  %150 = ptrtoint ptr %s_fs_info.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %s_fs_info.i.i74.i, align 16
  %sb_bsize_shift.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %151, i32 0, i32 5, i32 5
  %152 = ptrtoint ptr %sb_bsize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sb_bsize_shift.i.i, align 4
  %sub.i75.i = add i32 %153, -9
  %sh_prom.i76.i = zext i32 %sub.i75.i to i64
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i76.i
  %di_blocks.i = getelementptr inbounds %struct.gfs2_dinode, ptr %131, i32 0, i32 7
  %154 = ptrtoint ptr %di_blocks.i to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %shr.i.i, ptr %di_blocks.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %gfs2_add_inode_blocks.exit.i, %gfs2_buffer_clear_tail.exit.i.if.end30.i_crit_edge
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 19
  %155 = ptrtoint ptr %i_height.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %i_height.i, align 8
  %di_height.i = getelementptr inbounds %struct.gfs2_dinode, ptr %131, i32 0, i32 19
  %156 = ptrtoint ptr %di_height.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 1, ptr %di_height.i, align 2
  br label %out_brelse.i

out_brelse.i:                                     ; preds = %if.end30.i, %cleanup.i
  %error.3.i = phi i32 [ %error.1.i, %cleanup.i ], [ 0, %if.end30.i ]
  %157 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i77.i = icmp eq ptr %158, null
  br i1 %tobool.not.i77.i, label %out_brelse.i.__gfs2_unstuff_inode.exit_crit_edge, label %if.then.i78.i

out_brelse.i.__gfs2_unstuff_inode.exit_crit_edge: ; preds = %out_brelse.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__gfs2_unstuff_inode.exit

if.then.i78.i:                                    ; preds = %out_brelse.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %158) #12
  br label %__gfs2_unstuff_inode.exit

__gfs2_unstuff_inode.exit:                        ; preds = %if.then.i78.i, %out_brelse.i.__gfs2_unstuff_inode.exit_crit_edge, %if.end.__gfs2_unstuff_inode.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.__gfs2_unstuff_inode.exit_crit_edge ], [ %error.3.i, %out_brelse.i.__gfs2_unstuff_inode.exit_crit_edge ], [ %error.3.i, %if.then.i78.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh.i) #12
  call void @unlock_page(ptr noundef nonnull %call.i) #12
  %159 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %159, align 4
  %and.i.i = and i32 %161, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i9 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i9, label %if.end.i.i, label %if.then.i.i11, !prof !75

if.then.i.i11:                                    ; preds = %__gfs2_unstuff_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i10 = add i32 %161, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %__gfs2_unstuff_inode.exit
  call void @__sanitizer_cov_trace_pc() #14
  %162 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i11
  %retval.0.i.i = phi i32 [ %sub.i.i10, %if.then.i.i11 ], [ %162, %if.end.i.i ]
  %163 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %163, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %164 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp.i.i.i.i12 = icmp eq i32 %165, 0
  br i1 %cmp.i.i.i.i12, label %if.then.i.i.i.i13, label %do.end5.i.i.i.i, !prof !79

if.then.i.i.i.i13:                                ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %163, ptr noundef nonnull @.str.13) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !84
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !85
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %166 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !86
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %166, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gfs2_unstuff_dinode, %if.then.i.i.i.i.i14)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i14], !srcloc !88

if.then.i.i.i.i.i14:                              ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %163, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i14, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.out_crit_edge

folio_put_testzero.exit.i.i.out_crit_edge:        ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %163) #12
  br label %out

out:                                              ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ -12, %entry.out_crit_edge ], [ %retval.0.i, %folio_put_testzero.exit.i.i.out_crit_edge ], [ %retval.0.i, %if.then.i4.i ]
  call void @up_write(ptr noundef %i_rw_mutex) #12
  ret i32 %error.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_iomap_begin(ptr noundef %inode, i64 noundef %pos, i64 noundef %length, i32 noundef %flags, ptr noundef %iomap, ptr nocapture noundef readnone %srcmap) #0 align 64 {
entry:
  %ap.i = alloca %struct.gfs2_alloc_parms, align 8
  %mp = alloca %struct.metapath, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mp) #12
  %0 = call ptr @memset(ptr %mp, i32 0, i32 64)
  %1 = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %1, align 4
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %3 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %flags2 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %5 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags2, align 2
  %7 = or i16 %6, 16
  store i16 %7, ptr %flags2, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv4 = trunc i64 %length to i32
  %conv5 = trunc i32 %flags to i16
  tail call fastcc void @trace_gfs2_iomap_start(ptr noundef %inode, i64 noundef %pos, i32 noundef %conv4, i16 noundef zeroext %conv5)
  %call6 = call fastcc i32 @__gfs2_iomap_get(ptr noundef %inode, i64 noundef %pos, i64 noundef %length, i32 noundef %flags, ptr noundef %iomap, ptr noundef nonnull %mp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end9:                                          ; preds = %if.end
  %and = and i32 %flags, 3
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %and, label %if.end9.out_unlock_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb18
  ]

if.end9.out_unlock_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

sw.bb:                                            ; preds = %if.end9
  %and10 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %sw.bb.sw.epilog_crit_edge, label %if.then12

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then12:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %10)
  %cmp.not = icmp eq i16 %10, 2
  %spec.select = select i1 %cmp.not, i32 0, i32 -15
  br label %out_unlock

sw.bb18:                                          ; preds = %if.end9
  %type19 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %11 = ptrtoint ptr %type19 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %type19, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp21 = icmp eq i16 %12, 0
  br i1 %cmp21, label %sw.bb18.out_unlock_crit_edge, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb18.out_unlock_crit_edge:                     ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

sw.epilog:                                        ; preds = %sw.bb18.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %15 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_height.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %17 = ptrtoint ptr %i_height.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i.not.i, label %land.end.i, label %sw.epilog.lor.lhs.false.i_crit_edge

sw.epilog.lor.lhs.false.i_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.end.i:                                       ; preds = %sw.epilog
  %add.i = add i64 %length, %pos
  %sb_bsize.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %16, i32 0, i32 5, i32 4
  %19 = ptrtoint ptr %sb_bsize.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_bsize.i.i, align 8
  %sub.i.i = add i32 %20, -232
  %conv.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp.i = icmp sgt i64 %add.i, %conv.i
  br i1 %cmp.i, label %land.end.i.if.then.i_crit_edge, label %land.end.i.lor.lhs.false.i_crit_edge

land.end.i.lor.lhs.false.i_crit_edge:             ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

land.end.i.if.then.i_crit_edge:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.end.i.lor.lhs.false.i_crit_edge, %sw.epilog.lor.lhs.false.i_crit_edge
  %type.i = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp8.i = icmp eq i16 %22, 0
  br i1 %cmp8.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end81.i_crit_edge

lor.lhs.false.i.if.end81.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %land.end.i.if.then.i_crit_edge
  %23 = phi i1 [ false, %lor.lhs.false.i.if.then.i_crit_edge ], [ true, %land.end.i.if.then.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap.i) #12
  %24 = getelementptr inbounds i8, ptr %ap.i, i32 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %24, align 8
  %length10.i = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %26 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %inode, align 8
  %28 = and i16 %27, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %28)
  %cmp.i.not.i.i = icmp eq i16 %28, 16384
  br i1 %cmp.i.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !79

do.body4.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #12, !srcloc !89
  unreachable

do.end9.i.i:                                      ; preds = %if.then.i
  %29 = ptrtoint ptr %length10.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %length10.i, align 8
  %conv11.i = trunc i64 %30 to i32
  %sb_bsize_shift.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %16, i32 0, i32 5, i32 5
  %31 = ptrtoint ptr %sb_bsize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sb_bsize_shift.i.i, align 4
  %shr.i.i = lshr i32 %conv11.i, %32
  %add.i.i = add i32 %shr.i.i, 3
  %sd_max_height.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %16, i32 0, i32 18
  %33 = ptrtoint ptr %sd_max_height.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sd_max_height.i.i, align 8
  %35 = mul i32 %34, 3
  %mul.i.i = add i32 %35, -3
  %sd_diptrs.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %16, i32 0, i32 8
  %36 = ptrtoint ptr %sd_diptrs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sd_diptrs.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %37)
  %cmp23.i.i = icmp ugt i32 %add.i.i, %37
  br i1 %cmp23.i.i, label %for.body.lr.ph.i.i, label %do.end9.i.i.gfs2_write_calc_reserv.exit.i_crit_edge

do.end9.i.i.gfs2_write_calc_reserv.exit.i_crit_edge: ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_write_calc_reserv.exit.i

for.body.lr.ph.i.i:                               ; preds = %do.end9.i.i
  %sd_inptrs.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %16, i32 0, i32 9
  %38 = ptrtoint ptr %sd_inptrs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sd_inptrs.i.i, align 4
  %add10.i.i = add i32 %39, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ind_blocks.0.i = phi i32 [ %mul.i.i, %for.body.lr.ph.i.i ], [ %add13.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %tmp.024.i.i = phi i32 [ %add.i.i, %for.body.lr.ph.i.i ], [ %div.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %sub11.i.i = add i32 %add10.i.i, %tmp.024.i.i
  %div.i.i = udiv i32 %sub11.i.i, %39
  %add13.i.i = add i32 %div.i.i, %ind_blocks.0.i
  %cmp.i.i = icmp ugt i32 %div.i.i, %37
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.gfs2_write_calc_reserv.exit.i_crit_edge

for.body.i.i.gfs2_write_calc_reserv.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_write_calc_reserv.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

gfs2_write_calc_reserv.exit.i:                    ; preds = %for.body.i.i.gfs2_write_calc_reserv.exit.i_crit_edge, %do.end9.i.i.gfs2_write_calc_reserv.exit.i_crit_edge
  %ind_blocks.1.i = phi i32 [ %mul.i.i, %do.end9.i.i.gfs2_write_calc_reserv.exit.i_crit_edge ], [ %add13.i.i, %for.body.i.i.gfs2_write_calc_reserv.exit.i_crit_edge ]
  %add12.i = add i32 %ind_blocks.1.i, %add.i.i
  %conv13.i = zext i32 %add12.i to i64
  %40 = ptrtoint ptr %ap.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv13.i, ptr %ap.i, align 8
  %allowed.i.i = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap.i, i32 0, i32 3
  %41 = ptrtoint ptr %allowed.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 4294967295, ptr %allowed.i.i, align 8
  %call1.i.i = call zeroext i1 @capable(i32 noundef 24) #12
  br i1 %call1.i.i, label %gfs2_write_calc_reserv.exit.i.if.end.i_crit_edge, label %lor.lhs.false.i.i

gfs2_write_calc_reserv.exit.i.if.end.i_crit_edge: ; preds = %gfs2_write_calc_reserv.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %gfs2_write_calc_reserv.exit.i
  %ar_quota.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %16, i32 0, i32 21, i32 3
  %42 = ptrtoint ptr %ar_quota.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load.i.i = load i32, ptr %ar_quota.i.i, align 4
  %43 = and i32 %bf.load.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i144.i = icmp eq i32 %43, 0
  br i1 %cmp.i144.i, label %lor.lhs.false.i.i.if.end.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %call5.i.i = call i32 @gfs2_quota_lock(ptr noundef %inode, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i145.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i145.i, label %if.end7.i.i, label %if.end.i.i.cleanup.thread.i_crit_edge

if.end.i.i.cleanup.thread.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %44 = ptrtoint ptr %ar_quota.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %bf.load10.i.i = load i32, ptr %ar_quota.i.i, align 4
  %45 = and i32 %bf.load10.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %45)
  %cmp13.not.i.i = icmp eq i32 %45, 134217728
  br i1 %cmp13.not.i.i, label %if.end15.i.i, label %if.end7.i.i.if.end.i_crit_edge

if.end7.i.i.if.end.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end15.i.i:                                     ; preds = %if.end7.i.i
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %46 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %47 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %48 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack36.i.i = load i32, ptr %i_gid.i.i, align 8
  %49 = insertvalue [1 x i32] undef, i32 %.unpack36.i.i, 0
  %call20.i.i = call i32 @gfs2_quota_check(ptr noundef %inode, [1 x i32] %47, [1 x i32] %49, ptr noundef nonnull %ap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end15.i.i.if.end.i_crit_edge, label %if.then22.i.i

if.end15.i.i.if.end.i_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then22.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_quota_unlock(ptr noundef %inode) #12
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %if.end15.i.i.if.end.i_crit_edge, %if.end7.i.i.if.end.i_crit_edge, %lor.lhs.false.i.i.if.end.i_crit_edge, %gfs2_write_calc_reserv.exit.i.if.end.i_crit_edge
  %call17.i = call i32 @gfs2_inplace_reserve(ptr noundef %inode, ptr noundef nonnull %ap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end.i.cleanup.thread180.i_crit_edge

if.end.i.cleanup.thread180.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread180.i

if.end20.i:                                       ; preds = %if.end.i
  %add21.i = add i32 %ind_blocks.1.i, 1
  %50 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_diskflags.i, align 4
  %and.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool23.not.i = icmp eq i32 %and.i.i, 0
  %add25.i = select i1 %tobool23.not.i, i32 0, i32 %add.i.i
  %spec.select188.i = add i32 %add21.i, %add25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ind_blocks.1.i)
  %tobool27.not.i = icmp eq i32 %ind_blocks.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool29.not.i = icmp eq i32 %add.i.i, 0
  %or.cond.i = select i1 %tobool27.not.i, i1 %tobool29.not.i, i1 false
  %add31.i = add i32 %spec.select188.i, 3
  %rblocks.1.i = select i1 %or.cond.i, i32 %spec.select188.i, i32 %add31.i
  %sd_rindex.i = getelementptr inbounds %struct.gfs2_sbd, ptr %16, i32 0, i32 41
  %52 = ptrtoint ptr %sd_rindex.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sd_rindex.i, align 4
  %cmp33.i = icmp eq ptr %53, %inode
  %add36.i = add i32 %rblocks.1.i, 2
  %spec.select.i = select i1 %cmp33.i, i32 %add36.i, i32 %rblocks.1.i
  %rs_rgd.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %rs_rgd.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rs_rgd.i.i, align 4
  %rd_length.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %rd_length.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rd_length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %add12.i)
  %cmp.i146.i = icmp ugt i32 %57, %add12.i
  %add.i147.i = add i32 %add12.i, 1
  %retval.0.i148.i = select i1 %cmp.i146.i, i32 %add.i147.i, i32 %57
  %add40.i = add i32 %spec.select.i, %retval.0.i148.i
  %58 = ptrtoint ptr %length10.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %length10.i, align 8
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %60 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %i_blkbits.i, align 2
  %sh_prom.i = zext i8 %61 to i64
  %shr.i = lshr i64 %59, %sh_prom.i
  %conv43.i = trunc i64 %shr.i to i32
  %call44.i = call i32 @gfs2_trans_begin(ptr noundef %16, i32 noundef %add40.i, i32 noundef %conv43.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %cleanup.i

if.end47.i:                                       ; preds = %if.end20.i
  br i1 %23, label %if.then49.i, label %if.end47.i.if.end59.i_crit_edge

if.end47.i.if.end59.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.then49.i:                                      ; preds = %if.end47.i
  %call50.i = call i32 @gfs2_unstuff_dinode(ptr noundef %inode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %if.then49.i.out_trans_end.i_crit_edge

if.then49.i.out_trans_end.i_crit_edge:            ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_end.i

if.end53.i:                                       ; preds = %if.then49.i
  call fastcc void @release_metapath(ptr noundef nonnull %mp) #12
  %offset.i = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %62 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %offset.i, align 8
  %64 = ptrtoint ptr %length10.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %length10.i, align 8
  %call55.i = call fastcc i32 @__gfs2_iomap_get(ptr noundef %inode, i64 noundef %63, i64 noundef %65, i32 noundef %flags, ptr noundef %iomap, ptr noundef nonnull %mp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end53.i.if.end59.i_crit_edge, label %if.end53.i.out_trans_end.i_crit_edge

if.end53.i.out_trans_end.i_crit_edge:             ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_trans_end.i

if.end53.i.if.end59.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end53.i.if.end59.i_crit_edge, %if.end47.i.if.end59.i_crit_edge
  %type60.i = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %66 = ptrtoint ptr %type60.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %type60.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp62.i = icmp eq i16 %67, 0
  br i1 %cmp62.i, label %if.then64.i, label %if.end59.i.if.end72.i_crit_edge

if.end59.i.if.end72.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i

if.then64.i:                                      ; preds = %if.end59.i
  %call65.i = call fastcc i32 @__gfs2_iomap_alloc(ptr noundef %inode, ptr noundef %iomap, ptr noundef nonnull %mp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.then64.i.if.end72.i_crit_edge, label %if.then67.i

if.then64.i.if.end72.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72.i

if.then67.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_trans_end(ptr noundef %16) #12
  call void @gfs2_inplace_release(ptr noundef %inode) #12
  %offset68.i = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %68 = ptrtoint ptr %offset68.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %offset68.i, align 8
  %70 = ptrtoint ptr %length10.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %length10.i, align 8
  %call70.i = call fastcc i32 @punch_hole(ptr noundef %inode, i64 noundef %69, i64 noundef %71) #12
  br label %cleanup.thread180.i

if.end72.i:                                       ; preds = %if.then64.i.if.end72.i_crit_edge, %if.end59.i.if.end72.i_crit_edge
  %72 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i149.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i149.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 146
  %76 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %journal_info.i, align 4
  %tr_num_buf_new.i = getelementptr inbounds %struct.gfs2_trans, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %tr_num_buf_new.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tr_num_buf_new.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool74.not.i = icmp eq i32 %79, 0
  br i1 %tobool74.not.i, label %if.end72.i.cleanup.thread184.i_crit_edge, label %if.then75.i

if.end72.i.cleanup.thread184.i_crit_edge:         ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread184.i

if.then75.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 2) #12
  br label %cleanup.thread184.i

cleanup.thread184.i:                              ; preds = %if.then75.i, %if.end72.i.cleanup.thread184.i_crit_edge
  call void @gfs2_trans_end(ptr noundef %16) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap.i) #12
  br label %if.end81.i

cleanup.thread.i:                                 ; preds = %if.then22.i.i, %if.end.i.i.cleanup.thread.i_crit_edge
  %retval.0.i165.ph.i = phi i32 [ %call20.i.i, %if.then22.i.i ], [ %call5.i.i, %if.end.i.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap.i) #12
  br label %out_unlock

cleanup.thread180.i:                              ; preds = %if.then67.i, %if.end.i.cleanup.thread180.i_crit_edge
  %ret.2.ph179.i = phi i32 [ %call17.i, %if.end.i.cleanup.thread180.i_crit_edge ], [ %call65.i, %if.then67.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap.i) #12
  br label %out_qunlock.i

cleanup.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap.i) #12
  br label %out_trans_fail.i

if.end81.i:                                       ; preds = %cleanup.thread184.i, %lor.lhs.false.i.if.end81.i_crit_edge
  %80 = ptrtoint ptr %i_height.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %i_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i151.not.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i151.not.i, label %if.end81.i.if.then87.i_crit_edge, label %lor.lhs.false84.i

if.end81.i.if.then87.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then87.i

lor.lhs.false84.i:                                ; preds = %if.end81.i
  %82 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %i_diskflags.i, align 4
  %and.i154.i = and i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154.i)
  %tobool86.not.i = icmp eq i32 %and.i154.i, 0
  br i1 %tobool86.not.i, label %lor.lhs.false84.i.out_unlock_crit_edge, label %lor.lhs.false84.i.if.then87.i_crit_edge

lor.lhs.false84.i.if.then87.i_crit_edge:          ; preds = %lor.lhs.false84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then87.i

lor.lhs.false84.i.out_unlock_crit_edge:           ; preds = %lor.lhs.false84.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.then87.i:                                      ; preds = %lor.lhs.false84.i.if.then87.i_crit_edge, %if.end81.i.if.then87.i_crit_edge
  %page_ops.i = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 9
  %84 = ptrtoint ptr %page_ops.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @gfs2_iomap_page_ops, ptr %page_ops.i, align 4
  br label %out_unlock

out_trans_end.i:                                  ; preds = %if.end53.i.out_trans_end.i_crit_edge, %if.then49.i.out_trans_end.i_crit_edge
  %ret.2.ph.i = phi i32 [ %call55.i, %if.end53.i.out_trans_end.i_crit_edge ], [ %call50.i, %if.then49.i.out_trans_end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap.i) #12
  call void @gfs2_trans_end(ptr noundef %16) #12
  br label %out_trans_fail.i

out_trans_fail.i:                                 ; preds = %out_trans_end.i, %cleanup.i
  %ret.2176.i = phi i32 [ %ret.2.ph.i, %out_trans_end.i ], [ %call44.i, %cleanup.i ]
  call void @gfs2_inplace_release(ptr noundef %inode) #12
  br label %out_qunlock.i

out_qunlock.i:                                    ; preds = %out_trans_fail.i, %cleanup.thread180.i
  %ret.2175.i = phi i32 [ %ret.2176.i, %out_trans_fail.i ], [ %ret.2.ph179.i, %cleanup.thread180.i ]
  call void @gfs2_quota_unlock(ptr noundef %inode) #12
  br label %out_unlock

out_unlock:                                       ; preds = %out_qunlock.i, %if.then87.i, %lor.lhs.false84.i.out_unlock_crit_edge, %cleanup.thread.i, %sw.bb18.out_unlock_crit_edge, %if.then12, %if.end9.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.out_unlock_crit_edge ], [ 0, %if.end9.out_unlock_crit_edge ], [ 0, %sw.bb18.out_unlock_crit_edge ], [ %spec.select, %if.then12 ], [ %ret.2175.i, %out_qunlock.i ], [ 0, %if.then87.i ], [ 0, %lor.lhs.false84.i.out_unlock_crit_edge ], [ %retval.0.i165.ph.i, %cleanup.thread.i ]
  call fastcc void @release_metapath(ptr noundef nonnull %mp)
  call fastcc void @trace_gfs2_iomap_end(ptr noundef %inode, ptr noundef %iomap, i32 noundef %ret.0)
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_iomap_end(ptr noundef %inode, i64 noundef %pos, i64 noundef %length, i32 noundef %written, i32 noundef %flags, ptr nocapture noundef readonly %iomap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %and = and i32 %flags, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %and2 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %7 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i.not = icmp eq i8 %8, 0
  br i1 %tobool.not.i.not, label %sw.epilog.if.end10_crit_edge, label %if.then9

sw.epilog.if.end10_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %sw.epilog
  %i_diskflags.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %9 = ptrtoint ptr %i_diskflags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_diskflags.i.i, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i86 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i86, label %lor.lhs.false.i, label %if.then9.if.end10_crit_edge

if.then9.if.end10_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

lor.lhs.false.i:                                  ; preds = %if.then9
  %ar_data.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %11 = ptrtoint ptr %ar_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i.i = load i32, ptr %ar_data.i.i, align 4
  %12 = and i32 %bf.load.i.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 16777216
  br i1 %cmp.i.i, label %if.end.i, label %lor.lhs.false.i.if.end10_crit_edge

lor.lhs.false.i.if.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end.i:                                         ; preds = %lor.lhs.false.i
  %i_ordered.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 14
  %13 = ptrtoint ptr %i_ordered.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %i_ordered.i, align 4
  %cmp.i21.not.i = icmp eq ptr %14, %i_ordered.i
  br i1 %cmp.i21.not.i, label %if.then5.i, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then5.i:                                       ; preds = %if.end.i
  %sd_ordered_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %sd_ordered_lock.i) #12
  %15 = ptrtoint ptr %i_ordered.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %i_ordered.i, align 4
  %cmp.i22.not.i = icmp eq ptr %16, %i_ordered.i
  br i1 %cmp.i22.not.i, label %if.then9.i, label %if.then5.i.if.end11.i_crit_edge

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then5.i
  %sd_log_ordered.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 84
  %17 = ptrtoint ptr %sd_log_ordered.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_log_ordered.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_ordered.i, ptr noundef %sd_log_ordered.i, ptr noundef %18) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then9.i.if.end11.i_crit_edge

if.then9.i.if.end11.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end.i.i.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %i_ordered.i, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %i_ordered.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %i_ordered.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 14, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sd_log_ordered.i, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %sd_log_ordered.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %i_ordered.i, ptr %sd_log_ordered.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i.i.i, %if.then9.i.if.end11.i_crit_edge, %if.then5.i.if.end11.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_ordered_lock.i) #12
  br label %if.end10

if.end10:                                         ; preds = %if.end11.i, %if.end.i.if.end10_crit_edge, %lor.lhs.false.i.if.end10_crit_edge, %if.then9.if.end10_crit_edge, %sw.epilog.if.end10_crit_edge
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 41
  %23 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd_rindex, align 4
  %cmp11 = icmp eq ptr %24, %inode
  br i1 %cmp11, label %if.then13, label %if.end10.if.end14_crit_edge

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @adjust_fs_space(ptr noundef %inode) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  tail call void @gfs2_inplace_release(ptr noundef %inode) #12
  %i_qadata = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 8
  %25 = ptrtoint ptr %i_qadata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i_qadata, align 8
  %tobool15.not = icmp eq ptr %26, null
  br i1 %tobool15.not, label %if.end14.if.end19_crit_edge, label %land.lhs.true

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end14
  %qa_qd_num = getelementptr inbounds %struct.gfs2_qadata, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %qa_qd_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qa_qd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool17.not = icmp eq i32 %28, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end19_crit_edge, label %if.then18

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_quota_unlock(ptr noundef %inode) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true.if.end19_crit_edge, %if.end14.if.end19_crit_edge
  %conv20 = sext i32 %written to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv20, i64 %length)
  %cmp21.not = icmp eq i64 %conv20, %length
  br i1 %cmp21.not, label %if.end19.if.end44_crit_edge, label %land.lhs.true23

if.end19.if.end44_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true23:                                  ; preds = %if.end19
  %flags24 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %29 = ptrtoint ptr %flags24 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags24, align 2
  %31 = and i16 %30, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool27.not = icmp eq i16 %31, 0
  br i1 %tobool27.not, label %land.lhs.true23.if.end44_crit_edge, label %if.then28

land.lhs.true23.if.end44_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then28:                                        ; preds = %land.lhs.true23
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %32 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %33 to i32
  %notmask = shl nsw i32 -1, %conv.i
  %sub = xor i32 %notmask, -1
  %conv30 = zext i32 %sub to i64
  %add = add i64 %length, %pos
  %neg = xor i64 %conv30, -1
  %and31 = and i64 %add, %neg
  %add33 = add i64 %conv20, %pos
  %add34 = add i64 %add33, %conv30
  %and36 = and i64 %add34, %neg
  call void @__sanitizer_cov_trace_cmp8(i64 %and31, i64 %and36)
  %cmp37 = icmp sgt i64 %and31, %and36
  br i1 %cmp37, label %if.then39, label %if.then28.if.end44_crit_edge

if.then28.if.end44_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then39:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %sub40 = add nsw i64 %and31, -1
  tail call void @truncate_pagecache_range(ptr noundef %inode, i64 noundef %and36, i64 noundef %sub40) #12
  %sub41 = sub i64 %and31, %and36
  %call42 = tail call fastcc i32 @punch_hole(ptr noundef %inode, i64 noundef %and36, i64 noundef %sub41)
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %if.then28.if.end44_crit_edge, %land.lhs.true23.if.end44_crit_edge, %if.end19.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written)
  %tobool45.not = icmp eq i32 %written, 0
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.end50, !prof !79

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  %flags51 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %34 = ptrtoint ptr %flags51 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags51, align 2
  %36 = and i16 %35, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool54.not = icmp eq i16 %36, 0
  br i1 %tobool54.not, label %if.end50.if.end56_crit_edge, label %if.then55

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #12
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end50.if.end56_crit_edge
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %37 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_gl, align 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %38) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end44.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_block_map(ptr noundef %inode, i64 noundef %lblock, ptr noundef %bh_map, i32 noundef %create) local_unnamed_addr #0 align 64 {
entry:
  %mp.i68 = alloca %struct.metapath, align 4
  %mp.i = alloca %struct.metapath, align 4
  %iomap = alloca %struct.iomap, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %lblock, %sh_prom
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh_map, i32 0, i32 4
  %2 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_size, align 8
  %conv1 = zext i32 %3 to i64
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %iomap) #12
  %4 = call ptr @memset(ptr %iomap, i32 0, i32 48)
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %bh_map) #12
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bh_map) #12
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %bh_map) #12
  tail call fastcc void @trace_gfs2_bmap(ptr noundef %inode, ptr noundef %bh_map, i64 noundef %lblock, i32 noundef %create, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mp.i) #12
  %5 = call ptr @memset(ptr %mp.i, i32 0, i32 64)
  %6 = getelementptr inbounds %struct.metapath, ptr %mp.i, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %6, align 4
  %call.i = call fastcc i32 @__gfs2_iomap_get(ptr noundef %inode, i64 noundef %shl, i64 noundef %conv1, i32 noundef 0, ptr noundef nonnull %iomap, ptr noundef nonnull %mp.i) #12
  call fastcc void @release_metapath(ptr noundef nonnull %mp.i) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp.i) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mp.i68) #12
  %8 = call ptr @memset(ptr %mp.i68, i32 0, i32 64)
  %9 = getelementptr inbounds %struct.metapath, ptr %mp.i68, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %9, align 4
  %call.i69 = call fastcc i32 @__gfs2_iomap_get(ptr noundef %inode, i64 noundef %shl, i64 noundef %conv1, i32 noundef 1, ptr noundef nonnull %iomap, ptr noundef nonnull %mp.i68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %land.lhs.true.i, label %if.else.gfs2_iomap_alloc.exit_crit_edge

if.else.gfs2_iomap_alloc.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_iomap_alloc.exit

land.lhs.true.i:                                  ; preds = %if.else
  %type.i = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i = icmp eq i16 %12, 0
  br i1 %cmp.i, label %if.then.i71, label %land.lhs.true.i.gfs2_iomap_alloc.exit_crit_edge

land.lhs.true.i.gfs2_iomap_alloc.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_iomap_alloc.exit

if.then.i71:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = call fastcc i32 @__gfs2_iomap_alloc(ptr noundef %inode, ptr noundef nonnull %iomap, ptr noundef nonnull %mp.i68) #12
  br label %gfs2_iomap_alloc.exit

gfs2_iomap_alloc.exit:                            ; preds = %if.then.i71, %land.lhs.true.i.gfs2_iomap_alloc.exit_crit_edge, %if.else.gfs2_iomap_alloc.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i69, %if.else.gfs2_iomap_alloc.exit_crit_edge ], [ %call2.i, %if.then.i71 ], [ 0, %land.lhs.true.i.gfs2_iomap_alloc.exit_crit_edge ]
  call fastcc void @release_metapath(ptr noundef nonnull %mp.i68) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp.i68) #12
  br label %if.end

if.end:                                           ; preds = %gfs2_iomap_alloc.exit, %if.then
  %ret.0 = phi i32 [ %ret.0.i, %gfs2_iomap_alloc.exit ], [ %call.i, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool4.not = icmp eq i32 %ret.0, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end6:                                          ; preds = %if.end
  %length7 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %13 = ptrtoint ptr %length7 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %length7, align 8
  %15 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %b_size, align 8
  %conv9 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %conv9)
  %cmp = icmp ugt i64 %14, %conv9
  br i1 %cmp, label %if.then11, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %length7 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv9, ptr %length7, align 8
  %flags = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 2
  %20 = and i16 %19, -4097
  store i16 %20, ptr %flags, align 2
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end6.if.end17_crit_edge
  %21 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %iomap, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %22)
  %cmp18.not = icmp eq i64 %22, -1
  br i1 %cmp18.not, label %if.end17.if.end25_crit_edge, label %if.then20

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then20:                                        ; preds = %if.end17
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %25 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i_blkbits, align 2
  %sh_prom24 = zext i8 %26 to i64
  %shr = lshr i64 %22, %sh_prom24
  %27 = ptrtoint ptr %bh_map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %bh_map, align 4
  %29 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then20.map_bh.exit_crit_edge

if.then20.map_bh.exit_crit_edge:                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 4, ptr noundef %bh_map) #12
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then20.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 26
  %30 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh_map, i32 0, i32 6
  %32 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh_map, i32 0, i32 3
  %33 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %shr, ptr %b_blocknr.i, align 8
  br label %if.end25

if.end25:                                         ; preds = %map_bh.exit, %if.end17.if.end25_crit_edge
  %34 = ptrtoint ptr %length7 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %length7, align 8
  %conv27 = trunc i64 %35 to i32
  %36 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv27, ptr %b_size, align 8
  %flags29 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %37 = ptrtoint ptr %flags29 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags29, align 2
  %39 = and i16 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool32.not = icmp eq i16 %39, 0
  br i1 %tobool32.not, label %if.end25.if.end34_crit_edge, label %if.then33

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then33:                                        ; preds = %if.end25
  %40 = ptrtoint ptr %bh_map to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %bh_map, align 4
  %42 = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then33.if.end34_crit_edge

if.then33.if.end34_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 9, ptr noundef %bh_map) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then.i, %if.then33.if.end34_crit_edge, %if.end25.if.end34_crit_edge
  %43 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool38.not = icmp eq i16 %43, 0
  br i1 %tobool38.not, label %if.end34.out_crit_edge, label %if.then39

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then39:                                        ; preds = %if.end34
  %44 = ptrtoint ptr %bh_map to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %bh_map, align 4
  %46 = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i66 = icmp eq i32 %46, 0
  br i1 %tobool.not.i66, label %if.then.i67, label %if.then39.out_crit_edge

if.then39.out_crit_edge:                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i67:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  call void @_set_bit(i32 noundef 5, ptr noundef %bh_map) #12
  br label %out

out:                                              ; preds = %if.then.i67, %if.then39.out_crit_edge, %if.end34.out_crit_edge, %if.end.out_crit_edge
  call fastcc void @trace_gfs2_bmap(ptr noundef %inode, ptr noundef %bh_map, i64 noundef %lblock, i32 noundef %create, i32 noundef %ret.0)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %iomap) #12
  ret i32 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_bmap(ptr noundef %ip, ptr noundef %bh, i64 noundef %lblock, i32 noundef %create, i32 noundef %errno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_bmap, i32 0, i32 1), ptr blockaddress(@trace_gfs2_bmap, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !75

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !90
  %call42 = tail call i32 @__traceiter_gfs2_bmap(ptr noundef null, ptr noundef %ip, ptr noundef %bh, i64 noundef %lblock, i32 noundef %create, i32 noundef %errno) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !91
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !75

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_bmap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_bmap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gfs2_bmap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gfs2_bmap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 473, ptr noundef nonnull @.str.15) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
define dso_local i32 @gfs2_iomap_get(ptr noundef %inode, i64 noundef %pos, i64 noundef %length, ptr nocapture noundef %iomap) local_unnamed_addr #0 align 64 {
entry:
  %mp = alloca %struct.metapath, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mp) #12
  %0 = call ptr @memset(ptr %mp, i32 0, i32 64)
  %1 = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %1, align 4
  %call = call fastcc i32 @__gfs2_iomap_get(ptr noundef %inode, i64 noundef %pos, i64 noundef %length, i32 noundef 0, ptr noundef %iomap, ptr noundef nonnull %mp)
  call fastcc void @release_metapath(ptr noundef nonnull %mp)
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_iomap_alloc(ptr noundef %inode, i64 noundef %pos, i64 noundef %length, ptr nocapture noundef %iomap) local_unnamed_addr #0 align 64 {
entry:
  %mp = alloca %struct.metapath, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mp) #12
  %0 = call ptr @memset(ptr %mp, i32 0, i32 64)
  %1 = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %1, align 4
  %call = call fastcc i32 @__gfs2_iomap_get(ptr noundef %inode, i64 noundef %pos, i64 noundef %length, i32 noundef 1, ptr noundef %iomap, ptr noundef nonnull %mp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp = icmp eq i16 %4, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = call fastcc i32 @__gfs2_iomap_alloc(ptr noundef %inode, ptr noundef %iomap, ptr noundef nonnull %mp)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %entry.if.end_crit_edge ], [ %call2, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ]
  call fastcc void @release_metapath(ptr noundef nonnull %mp)
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_get_extent(ptr noundef %inode, i64 noundef %lblock, ptr nocapture noundef writeonly %dblock, ptr nocapture noundef %extlen) local_unnamed_addr #0 align 64 {
entry:
  %mp.i = alloca %struct.metapath, align 4
  %iomap = alloca %struct.iomap, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %iomap) #12
  %2 = call ptr @memset(ptr %iomap, i32 0, i32 48)
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %lblock, %sh_prom
  %3 = ptrtoint ptr %extlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %extlen, align 4
  %shl1 = shl i32 %4, %conv
  %conv2 = zext i32 %shl1 to i64
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mp.i) #12
  %5 = call ptr @memset(ptr %mp.i, i32 0, i32 64)
  %6 = getelementptr inbounds %struct.metapath, ptr %mp.i, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %6, align 4
  %call.i = call fastcc i32 @__gfs2_iomap_get(ptr noundef %inode, i64 noundef %shl, i64 noundef %conv2, i32 noundef 0, ptr noundef nonnull %iomap, ptr noundef nonnull %mp.i) #12
  call fastcc void @release_metapath(ptr noundef nonnull %mp.i) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %9)
  %cmp.not = icmp eq i16 %9, 2
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %iomap, align 8
  %shr = lshr i64 %11, %sh_prom
  %12 = ptrtoint ptr %dblock to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %shr, ptr %dblock, align 8
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %length, align 8
  %shr9 = lshr i64 %14, %sh_prom
  %conv10 = trunc i64 %shr9 to i32
  %15 = ptrtoint ptr %extlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %extlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv10)
  %cmp11 = icmp ugt i32 %16, %conv10
  br i1 %cmp11, label %if.then13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %extlen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv10, ptr %extlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %iomap) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_alloc_extent(ptr noundef %inode, i64 noundef %lblock, ptr nocapture noundef writeonly %dblock, ptr nocapture noundef %extlen, ptr nocapture noundef writeonly %new) local_unnamed_addr #0 align 64 {
entry:
  %mp.i = alloca %struct.metapath, align 4
  %iomap = alloca %struct.iomap, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %iomap) #12
  %2 = call ptr @memset(ptr %iomap, i32 0, i32 48)
  %sh_prom = zext i8 %1 to i64
  %shl = shl i64 %lblock, %sh_prom
  %3 = ptrtoint ptr %extlen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %extlen, align 4
  %shl1 = shl i32 %4, %conv
  %conv2 = zext i32 %shl1 to i64
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mp.i) #12
  %5 = call ptr @memset(ptr %mp.i, i32 0, i32 64)
  %6 = getelementptr inbounds %struct.metapath, ptr %mp.i, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %6, align 4
  %call.i = call fastcc i32 @__gfs2_iomap_get(ptr noundef %inode, i64 noundef %shl, i64 noundef %conv2, i32 noundef 1, ptr noundef nonnull %iomap, ptr noundef nonnull %mp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %gfs2_iomap_alloc.exit.thread30

gfs2_iomap_alloc.exit.thread30:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @release_metapath(ptr noundef nonnull %mp.i) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp.i) #12
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i = icmp eq i16 %9, 0
  br i1 %cmp.i, label %gfs2_iomap_alloc.exit, label %gfs2_iomap_alloc.exit.thread

gfs2_iomap_alloc.exit.thread:                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @release_metapath(ptr noundef nonnull %mp.i) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp.i) #12
  br label %if.end

gfs2_iomap_alloc.exit:                            ; preds = %land.lhs.true.i
  %call2.i = call fastcc i32 @__gfs2_iomap_alloc(ptr noundef %inode, ptr noundef nonnull %iomap, ptr noundef nonnull %mp.i) #12
  call fastcc void @release_metapath(ptr noundef nonnull %mp.i) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.endthread-pre-split, label %gfs2_iomap_alloc.exit.cleanup_crit_edge

gfs2_iomap_alloc.exit.cleanup_crit_edge:          ; preds = %gfs2_iomap_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.endthread-pre-split:                           ; preds = %gfs2_iomap_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %.pr = load i16, ptr %type.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %gfs2_iomap_alloc.exit.thread
  %11 = phi i16 [ %.pr, %if.endthread-pre-split ], [ %9, %gfs2_iomap_alloc.exit.thread ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp.not = icmp eq i16 %11, 2
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %iomap, align 8
  %shr = lshr i64 %13, %sh_prom
  %14 = ptrtoint ptr %dblock to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %shr, ptr %dblock, align 8
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %length, align 8
  %shr9 = lshr i64 %16, %sh_prom
  %conv10 = trunc i64 %shr9 to i32
  %17 = ptrtoint ptr %extlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %extlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv10)
  %cmp11 = icmp ugt i32 %18, %conv10
  br i1 %cmp11, label %if.then13, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %extlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv10, ptr %extlen, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end6.if.end14_crit_edge
  %flags = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 2
  %22 = trunc i16 %21 to i8
  %23 = and i8 %22, 1
  %24 = ptrtoint ptr %new to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %new, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %gfs2_iomap_alloc.exit.cleanup_crit_edge, %gfs2_iomap_alloc.exit.thread30
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call2.i, %gfs2_iomap_alloc.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call.i, %gfs2_iomap_alloc.exit.thread30 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %iomap) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gfs2_iomap_get(ptr noundef %inode, i64 noundef %pos, i64 noundef %length, i32 noundef %flags, ptr nocapture noundef %iomap, ptr noundef %mp) unnamed_addr #0 align 64 {
entry:
  %dibh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call2 = tail call fastcc i64 @i_size_read(ptr noundef %inode)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh) #12
  %4 = ptrtoint ptr %dibh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dibh, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %tobool.not = icmp eq i64 %length, 0
  br i1 %tobool.not, label %entry.cleanup171_crit_edge, label %if.end

entry.cleanup171_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup171

if.end:                                           ; preds = %entry
  %i_rw_mutex = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 13
  tail call void @down_read(ptr noundef %i_rw_mutex) #12
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %5 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_no_addr.i, align 8
  %call.i = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %6, ptr noundef nonnull %dibh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dibh, align 4
  %9 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %mp, align 4
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %10 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.not = icmp eq i8 %11, 0
  br i1 %tobool.not.i.not, label %if.then9, label %if.end6.unstuff_crit_edge

if.end6.unstuff_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = add i64 %length, %pos
  br label %unstuff

if.then9:                                         ; preds = %if.end6
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then9
  %12 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %15, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_bsize.i, align 8
  %sub.i = add i32 %17, -232
  %conv = zext i32 %sub.i to i64
  %add = add i64 %length, %pos
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp = icmp sgt i64 %add, %conv
  br i1 %cmp, label %if.then11.unstuff_crit_edge, label %if.then11.if.end27_crit_edge

if.then11.if.end27_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then11.unstuff_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %unstuff

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %pos)
  %cmp17.not = icmp sgt i64 %call2, %pos
  br i1 %cmp17.not, label %if.else.if.end27_crit_edge, label %if.then19

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then19:                                        ; preds = %if.else
  %and20 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else23, label %if.then19.unlock_crit_edge

if.then19.unlock_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.else23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %offset = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %pos, ptr %offset, align 8
  %length24 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %19 = ptrtoint ptr %length24 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %length, ptr %length24, align 8
  br label %hole_found

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %if.then11.if.end27_crit_edge
  %conv.sink = phi i64 [ %conv, %if.then11.if.end27_crit_edge ], [ %call2, %if.else.if.end27_crit_edge ]
  %length16 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %20 = ptrtoint ptr %length16 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv.sink, ptr %length16, align 8
  %21 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_no_addr.i, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %23 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %24 to i64
  %shl = shl i64 %22, %sh_prom
  %add29 = add i64 %shl, 232
  %25 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add29, ptr %iomap, align 8
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 4, ptr %type, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 5
  %27 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 232
  %inline_data = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 7
  %29 = ptrtoint ptr %inline_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %inline_data, align 4
  br label %out

unstuff:                                          ; preds = %if.then11.unstuff_crit_edge, %if.end6.unstuff_crit_edge
  %add39.pre-phi = phi i64 [ %.pre, %if.end6.unstuff_crit_edge ], [ %add, %if.then11.unstuff_crit_edge ]
  %i_blkbits31 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %30 = ptrtoint ptr %i_blkbits31 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i_blkbits31, align 2
  %sh_prom33 = zext i8 %31 to i64
  %shr = ashr i64 %pos, %sh_prom33
  %shl37 = shl i64 %shr, %sh_prom33
  %offset38 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 1
  %32 = ptrtoint ptr %offset38 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %shl37, ptr %offset38, align 8
  %sub = add i64 %add39.pre-phi, -1
  %33 = load i8, ptr %i_blkbits31, align 2
  %sh_prom42 = zext i8 %33 to i64
  %shr43 = ashr i64 %sub, %sh_prom42
  %sub44 = sub i64 %shr43, %shr
  %add45 = add i64 %sub44, 1
  %shl49 = shl i64 %add45, %sh_prom42
  %length50 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %34 = ptrtoint ptr %length50 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %shl49, ptr %length50, align 8
  %35 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %i_height.i, align 8
  %add51 = add i64 %shr, 1
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 4
  %37 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sb_bsize, align 8
  %conv52 = zext i32 %38 to i64
  %mul = mul i64 %add51, %conv52
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %unstuff
  %height.0 = phi i8 [ %36, %unstuff ], [ %inc, %while.cond.while.cond_crit_edge ]
  %idxprom = zext i8 %height.0 to i32
  %arrayidx53 = getelementptr %struct.gfs2_sbd, ptr %3, i32 0, i32 19, i32 %idxprom
  %39 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx53, align 8
  %cmp54 = icmp ugt i64 %mul, %40
  %inc = add i8 %height.0, 1
  br i1 %cmp54, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %mp_fheight.i = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 2
  %41 = ptrtoint ptr %mp_fheight.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %idxprom, ptr %mp_fheight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %height.0)
  %tobool.not290.i = icmp eq i8 %height.0, 0
  br i1 %tobool.not290.i, label %while.end.find_metapath.exit_crit_edge, label %for.body.lr.ph.i

while.end.find_metapath.exit_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_metapath.exit

for.body.lr.ph.i:                                 ; preds = %while.end
  %sd_inptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end179.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dec292.in.i = phi i32 [ %idxprom, %for.body.lr.ph.i ], [ %dec292.i, %if.end179.i.for.body.i_crit_edge ]
  %block.addr.0291.i = phi i64 [ %shr, %for.body.lr.ph.i ], [ %block.addr.1.i, %if.end179.i.for.body.i_crit_edge ]
  %dec292.i = add i32 %dec292.in.i, -1
  %42 = ptrtoint ptr %sd_inptrs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sd_inptrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %block.addr.0291.i)
  %cmp165.i = icmp ult i64 %block.addr.0291.i, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !75

if.then169.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv170.i = trunc i64 %block.addr.0291.i to i32
  %conv170.i.frozen = freeze i32 %conv170.i
  %.frozen = freeze i32 %43
  %div173.i = udiv i32 %conv170.i.frozen, %.frozen
  %44 = mul i32 %div173.i, %.frozen
  %rem171.i.decomposed = sub i32 %conv170.i.frozen, %44
  %conv174.i = zext i32 %div173.i to i64
  br label %if.end179.i

if.else175.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %45 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %43, i64 %block.addr.0291.i) #15, !srcloc !94
  %asmresult.i266.i = extractvalue { i64, i64 } %45, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %45, 1
  %shr.i.i = lshr i64 %asmresult.i266.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.else175.i, %if.then169.i
  %block.addr.1.i = phi i64 [ %conv174.i, %if.then169.i ], [ %asmresult1.i.i, %if.else175.i ]
  %__rem.0.i = phi i32 [ %rem171.i.decomposed, %if.then169.i ], [ %conv.i.i, %if.else175.i ]
  %conv181.i = trunc i32 %__rem.0.i to i16
  %arrayidx.i = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %dec292.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv181.i, ptr %arrayidx.i, align 2
  %tobool.not.i284 = icmp eq i32 %dec292.i, 0
  br i1 %tobool.not.i284, label %if.end179.i.find_metapath.exit_crit_edge, label %if.end179.i.for.body.i_crit_edge

if.end179.i.for.body.i_crit_edge:                 ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end179.i.find_metapath.exit_crit_edge:         ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_metapath.exit

find_metapath.exit:                               ; preds = %if.end179.i.find_metapath.exit_crit_edge, %while.end.find_metapath.exit_crit_edge
  %47 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %height.0, i8 %48)
  %cmp60 = icmp ugt i8 %height.0, %48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i286.not = icmp eq i8 %48, 0
  %or.cond = or i1 %cmp60, %tobool.not.i286.not
  br i1 %or.cond, label %find_metapath.exit.do_alloc_crit_edge, label %if.end65

find_metapath.exit.do_alloc_crit_edge:            ; preds = %find_metapath.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_alloc

if.end65:                                         ; preds = %find_metapath.exit
  %conv.i = zext i8 %48 to i32
  %sub.i289 = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i289)
  %cmp23.i.not.i = icmp eq i32 %sub.i289, 0
  br i1 %cmp23.i.not.i, label %if.end65.if.end69_crit_edge, label %if.end65.for.body.i.i_crit_edge

if.end65.for.body.i.i_crit_edge:                  ; preds = %if.end65
  br label %for.body.i.i

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end65.for.body.i.i_crit_edge
  %x.addr.024.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end65.for.body.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %x.addr.024.i.i
  %49 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.addr.024.i.i)
  %cmp.i.i.i.i = icmp eq i32 %x.addr.024.i.i, 0
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_data.i.i.i.i, align 4
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i32 232, i32 24
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %52, i32 %..i.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %x.addr.024.i.i
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %54 to i32
  %add.ptr.i.i.i = getelementptr i64, ptr %add.ptr2.i.i.i.i, i32 %conv.i.i.i
  %55 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool.not.i.i = icmp eq i64 %56, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end69_crit_edge, label %if.end.i.i

for.body.i.i.if.end69_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end.i.i:                                       ; preds = %for.body.i.i
  %add.i.i = add nuw i32 %x.addr.024.i.i, 1
  %arrayidx.i.i = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %add.i.i
  %call1.i.i = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 5, i64 noundef %56, ptr noundef %arrayidx.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.inc.i.i, label %if.end.i.i.unlock_crit_edge

if.end.i.i.unlock_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

for.inc.i.i:                                      ; preds = %if.end.i.i
  %exitcond.not.i.i = icmp eq i32 %add.i.i, %sub.i289
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end69_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.if.end69_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end69:                                         ; preds = %for.inc.i.i.if.end69_crit_edge, %for.body.i.i.if.end69_crit_edge, %if.end65.if.end69_crit_edge
  %x.addr.0.lcssa.i.i = phi i32 [ 0, %if.end65.if.end69_crit_edge ], [ %x.addr.024.i.i, %for.body.i.i.if.end69_crit_edge ], [ %sub.i289, %for.inc.i.i.if.end69_crit_edge ]
  %add7.i.i = add i32 %x.addr.0.lcssa.i.i, 1
  %mp_aheight.i.i = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 3
  %57 = ptrtoint ptr %mp_aheight.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add7.i.i, ptr %mp_aheight.i.i, align 4
  %58 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i_height.i, align 8
  %conv71 = zext i8 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i.i, i32 %conv71)
  %cmp72.not = icmp eq i32 %add7.i.i, %conv71
  br i1 %cmp72.not, label %if.end75, label %if.end69.do_alloc_crit_edge

if.end69.do_alloc_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_alloc

if.end75:                                         ; preds = %if.end69
  %arrayidx.i.i290 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %x.addr.0.lcssa.i.i
  %60 = ptrtoint ptr %arrayidx.i.i290 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i290, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.addr.0.lcssa.i.i)
  %cmp.i.i = icmp eq i32 %x.addr.0.lcssa.i.i, 0
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %b_data.i.i, align 4
  %..i.i = select i1 %cmp.i.i, i32 232, i32 24
  %add.ptr2.i.i = getelementptr i8, ptr %63, i32 %..i.i
  %arrayidx.i291 = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %x.addr.0.lcssa.i.i
  %64 = ptrtoint ptr %arrayidx.i291 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i291, align 2
  %conv.i292 = zext i16 %65 to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr2.i.i, i32 %conv.i292
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %cmp80 = icmp eq i64 %67, 0
  br i1 %cmp80, label %if.end75.do_alloc_crit_edge, label %if.end83

if.end75.do_alloc_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_alloc

if.end83:                                         ; preds = %if.end75
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %61, i32 0, i32 4
  %68 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %b_size.i, align 8
  %add.ptr.i293 = getelementptr i8, ptr %63, i32 %69
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end83
  %ptr.addr.0.i = phi ptr [ %add.ptr.i, %if.end83 ], [ %incdec.ptr.i, %if.end.i.do.body.i_crit_edge ]
  %d.0.i = phi i64 [ %67, %if.end83 ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i64, ptr %ptr.addr.0.i, i32 1
  %cmp.not.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i293
  br i1 %cmp.not.i, label %if.end.i, label %do.body.i.gfs2_extent_length.exit_crit_edge

do.body.i.gfs2_extent_length.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_extent_length.exit

if.end.i:                                         ; preds = %do.body.i
  %inc.i = add i64 %d.0.i, 1
  %70 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %incdec.ptr.i, align 8
  %cmp1.i = icmp eq i64 %71, %inc.i
  br i1 %cmp1.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.gfs2_extent_length.exit_crit_edge

if.end.i.gfs2_extent_length.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_extent_length.exit

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

gfs2_extent_length.exit:                          ; preds = %if.end.i.gfs2_extent_length.exit_crit_edge, %do.body.i.gfs2_extent_length.exit_crit_edge
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 3
  %conv91 = zext i32 %sub.ptr.div.i to i64
  %72 = ptrtoint ptr %i_blkbits31 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %i_blkbits31, align 2
  %sh_prom94 = zext i8 %73 to i64
  %shl95 = shl i64 %67, %sh_prom94
  %74 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %shl95, ptr %iomap, align 8
  %75 = load i8, ptr %i_blkbits31, align 2
  %sh_prom99 = zext i8 %75 to i64
  %shl100 = shl i64 %conv91, %sh_prom99
  %76 = ptrtoint ptr %length50 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %shl100, ptr %length50, align 8
  %type102 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %77 = ptrtoint ptr %type102 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 2, ptr %type102, align 8
  %flags103 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  %78 = ptrtoint ptr %flags103 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %flags103, align 2
  %80 = or i16 %79, 8
  store i16 %80, ptr %flags103, align 2
  br i1 %cmp.not.i, label %gfs2_extent_length.exit.out_crit_edge, label %if.then107

gfs2_extent_length.exit.out_crit_edge:            ; preds = %gfs2_extent_length.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then107:                                       ; preds = %gfs2_extent_length.exit
  call void @__sanitizer_cov_trace_pc() #14
  %81 = or i16 %79, 4104
  %82 = ptrtoint ptr %flags103 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %flags103, align 2
  br label %out

out:                                              ; preds = %hole_found, %if.then137.out_crit_edge, %if.then107, %gfs2_extent_length.exit.out_crit_edge, %if.end27
  %ret.0 = phi i32 [ %ret.3, %hole_found ], [ 0, %if.then107 ], [ 0, %gfs2_extent_length.exit.out_crit_edge ], [ 0, %if.end27 ], [ 0, %if.then137.out_crit_edge ]
  %83 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i_sb.i, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 26
  %85 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_bdev, align 4
  %bdev = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 5
  %87 = ptrtoint ptr %bdev to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %bdev, align 4
  br label %unlock

unlock:                                           ; preds = %out, %if.end.i.i.unlock_crit_edge, %if.then19.unlock_crit_edge, %if.end.unlock_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.end.unlock_crit_edge ], [ %ret.0, %out ], [ -2, %if.then19.unlock_crit_edge ], [ %call1.i.i, %if.end.i.i.unlock_crit_edge ]
  call void @up_read(ptr noundef %i_rw_mutex) #12
  br label %cleanup171

do_alloc:                                         ; preds = %if.end75.do_alloc_crit_edge, %if.end69.do_alloc_crit_edge, %find_metapath.exit.do_alloc_crit_edge
  %and114 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.else134, label %if.then116

if.then116:                                       ; preds = %do_alloc
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %pos)
  %cmp117.not = icmp sgt i64 %call2, %pos
  br i1 %cmp117.not, label %if.else120, label %if.then116.hole_found_crit_edge

if.then116.hole_found_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #14
  br label %hole_found

if.else120:                                       ; preds = %if.then116
  %88 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %height.0, i8 %89)
  %cmp124 = icmp eq i8 %height.0, %89
  br i1 %cmp124, label %if.then126, label %if.else128

if.then126:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #14
  %call127 = call fastcc i32 @gfs2_hole_size(ptr noundef %inode, i64 noundef %shr, i64 noundef %add45, ptr noundef %mp, ptr noundef %iomap)
  br label %hole_found

if.else128:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #14
  %90 = ptrtoint ptr %offset38 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %offset38, align 8
  %sub130 = sub i64 %call2, %91
  %92 = ptrtoint ptr %length50 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %sub130, ptr %length50, align 8
  br label %hole_found

if.else134:                                       ; preds = %do_alloc
  %and135 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.else156, label %if.then137

if.then137:                                       ; preds = %if.else134
  %and138 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end141, label %if.then137.out_crit_edge

if.then137.out_crit_edge:                         ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end141:                                        ; preds = %if.then137
  %call142 = call fastcc i64 @gfs2_alloc_size(ptr noundef %inode, ptr noundef %mp, i64 noundef %add45)
  %93 = ptrtoint ptr %i_blkbits31 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %i_blkbits31, align 2
  %sh_prom145 = zext i8 %94 to i64
  %shl146 = shl i64 %call142, %sh_prom145
  %95 = ptrtoint ptr %length50 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %length50, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl146, i64 %96)
  %cmp148 = icmp ult i64 %shl146, %96
  br i1 %cmp148, label %if.then150, label %if.end141.hole_found_crit_edge

if.end141.hole_found_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %hole_found

if.then150:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %length50 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %shl146, ptr %length50, align 8
  br label %hole_found

if.else156:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_cmp8(i64 %call2, i64 %pos)
  %cmp157 = icmp sgt i64 %call2, %pos
  br i1 %cmp157, label %land.lhs.true, label %if.else156.hole_found_crit_edge

if.else156.hole_found_crit_edge:                  ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #14
  br label %hole_found

land.lhs.true:                                    ; preds = %if.else156
  %98 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %height.0, i8 %99)
  %cmp162 = icmp eq i8 %height.0, %99
  br i1 %cmp162, label %if.then164, label %land.lhs.true.hole_found_crit_edge

land.lhs.true.hole_found_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %hole_found

if.then164:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call165 = call fastcc i32 @gfs2_hole_size(ptr noundef %inode, i64 noundef %shr, i64 noundef %add45, ptr noundef %mp, ptr noundef %iomap)
  br label %hole_found

hole_found:                                       ; preds = %if.then164, %land.lhs.true.hole_found_crit_edge, %if.else156.hole_found_crit_edge, %if.then150, %if.end141.hole_found_crit_edge, %if.else128, %if.then126, %if.then116.hole_found_crit_edge, %if.else23
  %ret.3 = phi i32 [ %call127, %if.then126 ], [ 0, %if.else128 ], [ %call165, %if.then164 ], [ 0, %land.lhs.true.hole_found_crit_edge ], [ 0, %if.else156.hole_found_crit_edge ], [ 0, %if.else23 ], [ -2, %if.then116.hole_found_crit_edge ], [ 0, %if.then150 ], [ 0, %if.end141.hole_found_crit_edge ]
  %100 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 -1, ptr %iomap, align 8
  %type170 = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %101 = ptrtoint ptr %type170 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %type170, align 8
  br label %out

cleanup171:                                       ; preds = %unlock, %entry.cleanup171_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock ], [ -22, %entry.cleanup171_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_metapath(ptr nocapture noundef %mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %entry.for.end_crit_edge, label %brelse.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit:                                      ; preds = %entry
  tail call void @__brelse(ptr noundef nonnull %1) #12
  %2 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mp, align 4
  %arrayidx.1 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.1 = icmp eq ptr %4, null
  br i1 %cmp1.1, label %brelse.exit.for.end_crit_edge, label %brelse.exit.1

brelse.exit.for.end_crit_edge:                    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit.1:                                    ; preds = %brelse.exit
  tail call void @__brelse(ptr noundef nonnull %4) #12
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %cmp1.2 = icmp eq ptr %7, null
  br i1 %cmp1.2, label %brelse.exit.1.for.end_crit_edge, label %brelse.exit.2

brelse.exit.1.for.end_crit_edge:                  ; preds = %brelse.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit.2:                                    ; preds = %brelse.exit.1
  tail call void @__brelse(ptr noundef nonnull %7) #12
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.3, align 4
  %cmp1.3 = icmp eq ptr %10, null
  br i1 %cmp1.3, label %brelse.exit.2.for.end_crit_edge, label %brelse.exit.3

brelse.exit.2.for.end_crit_edge:                  ; preds = %brelse.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit.3:                                    ; preds = %brelse.exit.2
  tail call void @__brelse(ptr noundef nonnull %10) #12
  %11 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4, align 4
  %cmp1.4 = icmp eq ptr %13, null
  br i1 %cmp1.4, label %brelse.exit.3.for.end_crit_edge, label %brelse.exit.4

brelse.exit.3.for.end_crit_edge:                  ; preds = %brelse.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit.4:                                    ; preds = %brelse.exit.3
  tail call void @__brelse(ptr noundef nonnull %13) #12
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.5, align 4
  %cmp1.5 = icmp eq ptr %16, null
  br i1 %cmp1.5, label %brelse.exit.4.for.end_crit_edge, label %brelse.exit.5

brelse.exit.4.for.end_crit_edge:                  ; preds = %brelse.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit.5:                                    ; preds = %brelse.exit.4
  tail call void @__brelse(ptr noundef nonnull %16) #12
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6, align 4
  %cmp1.6 = icmp eq ptr %19, null
  br i1 %cmp1.6, label %brelse.exit.5.for.end_crit_edge, label %brelse.exit.6

brelse.exit.5.for.end_crit_edge:                  ; preds = %brelse.exit.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit.6:                                    ; preds = %brelse.exit.5
  tail call void @__brelse(ptr noundef nonnull %19) #12
  %20 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.7, align 4
  %cmp1.7 = icmp eq ptr %22, null
  br i1 %cmp1.7, label %brelse.exit.6.for.end_crit_edge, label %brelse.exit.7

brelse.exit.6.for.end_crit_edge:                  ; preds = %brelse.exit.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit.7:                                    ; preds = %brelse.exit.6
  tail call void @__brelse(ptr noundef nonnull %22) #12
  %23 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 8
  %24 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.8, align 4
  %cmp1.8 = icmp eq ptr %25, null
  br i1 %cmp1.8, label %brelse.exit.7.for.end_crit_edge, label %brelse.exit.8

brelse.exit.7.for.end_crit_edge:                  ; preds = %brelse.exit.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit.8:                                    ; preds = %brelse.exit.7
  tail call void @__brelse(ptr noundef nonnull %25) #12
  %26 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 9
  %27 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.9, align 4
  %cmp1.9 = icmp eq ptr %28, null
  br i1 %cmp1.9, label %brelse.exit.8.for.end_crit_edge, label %brelse.exit.9

brelse.exit.8.for.end_crit_edge:                  ; preds = %brelse.exit.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

brelse.exit.9:                                    ; preds = %brelse.exit.8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %28) #12
  %29 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx.9, align 4
  br label %for.end

for.end:                                          ; preds = %brelse.exit.9, %brelse.exit.8.for.end_crit_edge, %brelse.exit.7.for.end_crit_edge, %brelse.exit.6.for.end_crit_edge, %brelse.exit.5.for.end_crit_edge, %brelse.exit.4.for.end_crit_edge, %brelse.exit.3.for.end_crit_edge, %brelse.exit.2.for.end_crit_edge, %brelse.exit.1.for.end_crit_edge, %brelse.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gfs2_iomap_alloc(ptr noundef %inode, ptr nocapture noundef %iomap, ptr nocapture noundef %mp) unnamed_addr #0 align 64 {
entry:
  %bn = alloca i64, align 8
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mp, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bn) #12
  %6 = ptrtoint ptr %bn to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %bn, align 8, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #12
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %length, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %9 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %10 to i64
  %shr = lshr i64 %8, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %mp_fheight = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 2
  %11 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mp_fheight, align 4
  %sub = add i32 %12, -1
  %mp_aheight = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 3
  %13 = ptrtoint ptr %mp_aheight to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mp_aheight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp = icmp slt i32 %14, 1
  br i1 %cmp, label %do.body5, label %do.body11, !prof !79

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 678, 0\0A.popsection", ""() #12, !srcloc !95
  unreachable

do.body11:                                        ; preds = %entry
  %cmp12 = icmp eq ptr %5, null
  br i1 %cmp12, label %do.body21, label %do.body30, !prof !79

do.body21:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 679, 0\0A.popsection", ""() #12, !srcloc !96
  unreachable

do.body30:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp31 = icmp eq i32 %conv2, 0
  br i1 %cmp31, label %do.body40, label %do.end48, !prof !79

do.body40:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 680, 0\0A.popsection", ""() #12, !srcloc !97
  unreachable

do.end48:                                         ; preds = %do.body30
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %15 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_gl, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %16, ptr noundef nonnull %5) #12
  %i_rw_mutex = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 13
  tail call void @down_write(ptr noundef %i_rw_mutex) #12
  %17 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mp_fheight, align 4
  %19 = ptrtoint ptr %mp_aheight to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mp_aheight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp51 = icmp eq i32 %18, %20
  br i1 %cmp51, label %do.end48.if.end71_crit_edge, label %if.else

do.end48.if.end71_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

if.else:                                          ; preds = %do.end48
  %i_height = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %21 = ptrtoint ptr %i_height to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i_height, align 8
  %conv55 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv55)
  %cmp56 = icmp eq i32 %18, %conv55
  br i1 %cmp56, label %if.then58, label %if.else62

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sub61 = sub i32 %18, %20
  br label %if.end71

if.else62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %mp_list.i = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 1
  %23 = ptrtoint ptr %mp_list.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mp_list.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp.i = icmp eq i16 %24, 0
  %..i.neg450 = select i1 %cmp.i, i32 -2, i32 -1
  %..i = select i1 %cmp.i, i32 2, i32 1
  %factor = shl i32 %18, 1
  %sub66 = sub i32 %factor, %conv55
  %add = add i32 %sub66, %..i.neg450
  br label %if.end71

if.end71:                                         ; preds = %if.else62, %if.then58, %do.end48.if.end71_crit_edge
  %iblks.0 = phi i32 [ %sub61, %if.then58 ], [ %add, %if.else62 ], [ 0, %do.end48.if.end71_crit_edge ]
  %branch_start.0 = phi i32 [ 0, %if.then58 ], [ %..i, %if.else62 ], [ 0, %do.end48.if.end71_crit_edge ]
  %state.0 = phi i32 [ 1, %if.then58 ], [ 2, %if.else62 ], [ 0, %do.end48.if.end71_crit_edge ]
  %add72 = add i32 %iblks.0, %conv2
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %i_height93 = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 4
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %arrayidx203 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i.i382 = icmp eq i32 %sub, 0
  %..i.i = select i1 %cmp.i.i382, i32 232, i32 24
  %arrayidx.i384 = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %sub
  %flags = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 4
  br label %do.body74

do.body74:                                        ; preds = %do.cond235.do.body74_crit_edge, %if.end71
  %i.0 = phi i32 [ %20, %if.end71 ], [ %i.7, %do.cond235.do.body74_crit_edge ]
  %alloced.0 = phi i32 [ 0, %if.end71 ], [ %add80, %do.cond235.do.body74_crit_edge ]
  %dblks.0 = phi i32 [ %conv2, %if.end71 ], [ %dblks.1, %do.cond235.do.body74_crit_edge ]
  %state.1 = phi i32 [ %state.0, %if.end71 ], [ %state.6, %do.cond235.do.body74_crit_edge ]
  %zero_bn.0 = phi i64 [ 0, %if.end71 ], [ %zero_bn.4, %do.cond235.do.body74_crit_edge ]
  %sub75 = sub i32 %add72, %alloced.0
  %25 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub75, ptr %n, align 4
  %call76 = call i32 @gfs2_alloc_blocks(ptr noundef %inode, ptr noundef nonnull %bn, ptr noundef nonnull %n, i1 noundef zeroext false, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %do.body74.out_crit_edge

do.body74.out_crit_edge:                          ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end79:                                         ; preds = %do.body74
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  %add80 = add i32 %27, %alloced.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.1)
  %cmp81.not = icmp eq i32 %state.1, 0
  br i1 %cmp81.not, label %lor.lhs.false, label %if.end86

lor.lhs.false:                                    ; preds = %if.end79
  %28 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool84.not = icmp eq i32 %and.i, 0
  br i1 %tobool84.not, label %lor.lhs.false.do.body182_crit_edge, label %if.end86.thread390

lor.lhs.false.do.body182_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body182

if.end86.thread390:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %bn to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bn, align 8
  call void @gfs2_trans_remove_revoke(ptr noundef %3, i64 noundef %31, i32 noundef %27) #12
  br label %do.body182

if.end86:                                         ; preds = %if.end79
  %32 = ptrtoint ptr %bn to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %bn, align 8
  call void @gfs2_trans_remove_revoke(ptr noundef %3, i64 noundef %33, i32 noundef %27) #12
  %34 = zext i32 %state.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %state.1, label %if.end86.do.cond235_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %if.end86.sw.bb141_crit_edge
  ]

if.end86.sw.bb141_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb141

if.end86.do.cond235_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond235

sw.bb:                                            ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0)
  %cmp87 = icmp eq i32 %i.0, 1
  br i1 %cmp87, label %if.then89, label %sw.bb.if.end90_crit_edge

sw.bb.if.end90_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then89:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 232
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %sw.bb.if.end90_crit_edge
  %zero_bn.1 = phi i64 [ %38, %if.then89 ], [ %zero_bn.0, %sw.bb.if.end90_crit_edge ]
  %sub91426 = add i32 %i.0, -1
  %39 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mp_fheight, align 4
  %41 = ptrtoint ptr %i_height93 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %i_height93, align 8
  %conv94427 = zext i8 %42 to i32
  %sub95428 = sub i32 %40, %conv94427
  call void @__sanitizer_cov_trace_cmp4(i32 %sub91426, i32 %sub95428)
  %cmp96429 = icmp ult i32 %sub91426, %sub95428
  br i1 %cmp96429, label %land.rhs.preheader, label %if.end90.for.end_crit_edge

if.end90.for.end_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs.preheader:                               ; preds = %if.end90
  %43 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp98.not535 = icmp eq i32 %44, 0
  br i1 %cmp98.not535, label %land.rhs.preheader.for.end_crit_edge, label %land.rhs.preheader.do.body9.i_crit_edge

land.rhs.preheader.do.body9.i_crit_edge:          ; preds = %land.rhs.preheader
  br label %do.body9.i

land.rhs.preheader.for.end_crit_edge:             ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %gfs2_indirect_init.exit
  %45 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n, align 4
  %cmp98.not = icmp eq i32 %46, 0
  br i1 %cmp98.not, label %land.rhs.for.end_crit_edge, label %land.rhs.do.body9.i_crit_edge

land.rhs.do.body9.i_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9.i

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body9.i:                                       ; preds = %land.rhs.do.body9.i_crit_edge, %land.rhs.preheader.do.body9.i_crit_edge
  %i.1430537 = phi i32 [ %inc102, %land.rhs.do.body9.i_crit_edge ], [ %i.0, %land.rhs.preheader.do.body9.i_crit_edge ]
  %sub91431536 = phi i32 [ %i.1430537, %land.rhs.do.body9.i_crit_edge ], [ %sub91426, %land.rhs.preheader.do.body9.i_crit_edge ]
  %47 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_gl, align 4
  %49 = ptrtoint ptr %bn to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bn, align 8
  %inc = add i64 %50, 1
  store i64 %inc, ptr %bn, align 8
  %arrayidx.i = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %sub91431536
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data.i, align 4
  %arrayidx11.i = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %i.1430537
  %55 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx11.i, align 4
  %cmp12.not.i = icmp eq ptr %56, null
  br i1 %cmp12.not.i, label %do.end28.i, label %do.body20.i, !prof !75

do.body20.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 617, 0\0A.popsection", ""() #12, !srcloc !98
  unreachable

do.end28.i:                                       ; preds = %do.body9.i
  %call.i = call ptr @gfs2_meta_new(ptr noundef %48, i64 noundef %50) #12
  %57 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %arrayidx11.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %48, ptr noundef %call.i) #12
  %58 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx11.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_data.i.i, align 4
  %mh_type.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %mh_type.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 5, ptr %mh_type.i.i, align 4
  %mh_format.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %61, i32 0, i32 3
  %63 = ptrtoint ptr %mh_format.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 500, ptr %mh_format.i.i, align 8
  %64 = load ptr, ptr %arrayidx11.i, align 4
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %b_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %66)
  %cmp.i.i = icmp ult i32 %66, 24
  br i1 %cmp.i.i, label %do.body2.i.i, label %gfs2_indirect_init.exit, !prof !79

do.body2.i.i:                                     ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #12, !srcloc !82
  unreachable

gfs2_indirect_init.exit:                          ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1430537)
  %cmp.i349 = icmp ugt i32 %i.1430537, 1
  %cond.i = select i1 %cmp.i349, i32 24, i32 232
  %add.ptr.i = getelementptr i8, ptr %54, i32 %cond.i
  %b_data.i1.i = getelementptr inbounds %struct.buffer_head, ptr %64, i32 0, i32 5
  %67 = ptrtoint ptr %b_data.i1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %b_data.i1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 24
  %sub.i.i = add i32 %66, -24
  %69 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %50, ptr %add.ptr.i, align 8
  %inc102 = add i32 %i.1430537, 1
  %71 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %n, align 4
  %dec = add i32 %72, -1
  store i32 %dec, ptr %n, align 4
  %73 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mp_fheight, align 4
  %75 = ptrtoint ptr %i_height93 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %i_height93, align 8
  %conv94 = zext i8 %76 to i32
  %sub95 = sub i32 %74, %conv94
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1430537, i32 %sub95)
  %cmp96 = icmp ult i32 %i.1430537, %sub95
  br i1 %cmp96, label %land.rhs, label %gfs2_indirect_init.exit.for.end_crit_edge

gfs2_indirect_init.exit.for.end_crit_edge:        ; preds = %gfs2_indirect_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %gfs2_indirect_init.exit.for.end_crit_edge, %land.rhs.for.end_crit_edge, %land.rhs.preheader.for.end_crit_edge, %if.end90.for.end_crit_edge
  %i.1.lcssa = phi i32 [ %i.0, %if.end90.for.end_crit_edge ], [ %i.0, %land.rhs.preheader.for.end_crit_edge ], [ %inc102, %land.rhs.for.end_crit_edge ], [ %inc102, %gfs2_indirect_init.exit.for.end_crit_edge ]
  %sub91.lcssa = phi i32 [ %sub91426, %if.end90.for.end_crit_edge ], [ %sub91426, %land.rhs.preheader.for.end_crit_edge ], [ %i.1430537, %land.rhs.for.end_crit_edge ], [ %i.1430537, %gfs2_indirect_init.exit.for.end_crit_edge ]
  %sub95.lcssa = phi i32 [ %sub95428, %if.end90.for.end_crit_edge ], [ %sub95428, %land.rhs.preheader.for.end_crit_edge ], [ %sub95, %land.rhs.for.end_crit_edge ], [ %sub95, %gfs2_indirect_init.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub91.lcssa, i32 %sub95.lcssa)
  %cmp108 = icmp eq i32 %sub91.lcssa, %sub95.lcssa
  br i1 %cmp108, label %if.then110, label %for.end.if.end136_crit_edge

for.end.if.end136_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then110:                                       ; preds = %for.end
  %arrayidx113 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %sub91.lcssa
  %77 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx113, align 4
  %b_data.i350 = getelementptr inbounds %struct.buffer_head, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %b_data.i350 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %b_data.i350, align 4
  %add.ptr.i351 = getelementptr i8, ptr %80, i32 24
  %81 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %b_data, align 4
  %add.ptr7.i = getelementptr i8, ptr %82, i32 232
  %83 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %b_size.i, align 8
  %sub.i352 = add i32 %84, -232
  %85 = call ptr @memcpy(ptr %add.ptr.i351, ptr %add.ptr7.i, i32 %sub.i352)
  %86 = load ptr, ptr %b_data.i350, align 4
  %b_size9.i = getelementptr inbounds %struct.buffer_head, ptr %78, i32 0, i32 4
  %87 = ptrtoint ptr %b_size9.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %b_size9.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %86, i32 -208
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 %88
  %89 = call ptr @memset(ptr %add.ptr12.i, i32 0, i32 208)
  %90 = load i32, ptr %b_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %90)
  %cmp.i354 = icmp ult i32 %90, 240
  br i1 %cmp.i354, label %do.body2.i, label %gfs2_buffer_clear_tail.exit, !prof !79

do.body2.i:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #12, !srcloc !82
  unreachable

gfs2_buffer_clear_tail.exit:                      ; preds = %if.then110
  %91 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %b_data, align 4
  %add.ptr.i356 = getelementptr i8, ptr %92, i32 240
  %sub.i357 = add i32 %90, -240
  %93 = call ptr @memset(ptr %add.ptr.i356, i32 0, i32 %sub.i357)
  %94 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx113, align 4
  %b_data116 = getelementptr inbounds %struct.buffer_head, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %b_data116 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %b_data116, align 4
  %add.ptr117 = getelementptr i8, ptr %97, i32 24
  %98 = ptrtoint ptr %add.ptr117 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %zero_bn.1, ptr %add.ptr117, align 8
  %99 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mp_fheight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %branch_start.0, i32 %100)
  %cmp120438 = icmp ult i32 %branch_start.0, %100
  br i1 %cmp120438, label %gfs2_buffer_clear_tail.exit.for.body122_crit_edge, label %gfs2_buffer_clear_tail.exit.if.end136_crit_edge

gfs2_buffer_clear_tail.exit.if.end136_crit_edge:  ; preds = %gfs2_buffer_clear_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

gfs2_buffer_clear_tail.exit.for.body122_crit_edge: ; preds = %gfs2_buffer_clear_tail.exit
  br label %for.body122

for.body122:                                      ; preds = %brelse.exit.for.body122_crit_edge, %gfs2_buffer_clear_tail.exit.for.body122_crit_edge
  %i.2439 = phi i32 [ %inc134, %brelse.exit.for.body122_crit_edge ], [ %branch_start.0, %gfs2_buffer_clear_tail.exit.for.body122_crit_edge ]
  %arrayidx124 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %i.2439
  %101 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx124, align 4
  %cmp125 = icmp eq ptr %102, null
  br i1 %cmp125, label %for.body122.if.end136_crit_edge, label %brelse.exit

for.body122.if.end136_crit_edge:                  ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

brelse.exit:                                      ; preds = %for.body122
  call void @__brelse(ptr noundef nonnull %102) #12
  %103 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %arrayidx124, align 4
  %inc134 = add nuw i32 %i.2439, 1
  %104 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mp_fheight, align 4
  %cmp120 = icmp ult i32 %inc134, %105
  br i1 %cmp120, label %brelse.exit.for.body122_crit_edge, label %brelse.exit.if.end136_crit_edge

brelse.exit.if.end136_crit_edge:                  ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

brelse.exit.for.body122_crit_edge:                ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body122

if.end136:                                        ; preds = %brelse.exit.if.end136_crit_edge, %for.body122.if.end136_crit_edge, %gfs2_buffer_clear_tail.exit.if.end136_crit_edge, %for.end.if.end136_crit_edge
  %i.3 = phi i32 [ %i.1.lcssa, %for.end.if.end136_crit_edge ], [ %branch_start.0, %gfs2_buffer_clear_tail.exit.if.end136_crit_edge ], [ %branch_start.0, %brelse.exit.if.end136_crit_edge ], [ %branch_start.0, %for.body122.if.end136_crit_edge ]
  %state.2 = phi i32 [ 2, %for.end.if.end136_crit_edge ], [ 1, %gfs2_buffer_clear_tail.exit.if.end136_crit_edge ], [ 1, %brelse.exit.if.end136_crit_edge ], [ 1, %for.body122.if.end136_crit_edge ]
  %106 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp137 = icmp eq i32 %107, 0
  br i1 %cmp137, label %if.end136.do.cond235_crit_edge, label %if.end136.sw.bb141_crit_edge

if.end136.sw.bb141_crit_edge:                     ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb141

if.end136.do.cond235_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond235

sw.bb141:                                         ; preds = %if.end136.sw.bb141_crit_edge, %if.end86.sw.bb141_crit_edge
  %i.4 = phi i32 [ %i.0, %if.end86.sw.bb141_crit_edge ], [ %i.3, %if.end136.sw.bb141_crit_edge ]
  %state.3 = phi i32 [ %state.1, %if.end86.sw.bb141_crit_edge ], [ %state.2, %if.end136.sw.bb141_crit_edge ]
  %zero_bn.2 = phi i64 [ %zero_bn.0, %if.end86.sw.bb141_crit_edge ], [ %zero_bn.1, %if.end136.sw.bb141_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.4)
  %cmp142 = icmp ugt i32 %i.4, 1
  br i1 %cmp142, label %land.lhs.true, label %sw.bb141.if.end152_crit_edge

sw.bb141.if.end152_crit_edge:                     ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

land.lhs.true:                                    ; preds = %sw.bb141
  %108 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mp_fheight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.4, i32 %109)
  %cmp145 = icmp ult i32 %i.4, %109
  br i1 %cmp145, label %if.then147, label %land.lhs.true.if.end152_crit_edge

land.lhs.true.if.end152_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152

if.then147:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i_gl, align 4
  %sub150 = add i32 %i.4, -1
  %arrayidx151 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %sub150
  %112 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx151, align 4
  call void @gfs2_trans_add_meta(ptr noundef %111, ptr noundef %113) #12
  br label %if.end152

if.end152:                                        ; preds = %if.then147, %land.lhs.true.if.end152_crit_edge, %sw.bb141.if.end152_crit_edge
  %114 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mp_fheight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.4, i32 %115)
  %cmp155440 = icmp ult i32 %i.4, %115
  %116 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %116)
  %.pr480 = load i32, ptr %n, align 4
  br i1 %cmp155440, label %land.rhs157.preheader, label %if.end152.for.end171_crit_edge

if.end152.for.end171_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end171

land.rhs157.preheader:                            ; preds = %if.end152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr480)
  %cmp158.not543 = icmp eq i32 %.pr480, 0
  br i1 %cmp158.not543, label %land.rhs157.preheader.for.end171.thread_crit_edge, label %land.rhs157.preheader.for.body161_crit_edge

land.rhs157.preheader.for.body161_crit_edge:      ; preds = %land.rhs157.preheader
  br label %for.body161

land.rhs157.preheader.for.end171.thread_crit_edge: ; preds = %land.rhs157.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end171.thread

land.rhs157:                                      ; preds = %gfs2_indirect_init.exit381
  %cmp158.not = icmp eq i32 %dec170, 0
  br i1 %cmp158.not, label %land.rhs157.for.end171.thread_crit_edge, label %land.rhs157.for.body161_crit_edge

land.rhs157.for.body161_crit_edge:                ; preds = %land.rhs157
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body161

land.rhs157.for.end171.thread_crit_edge:          ; preds = %land.rhs157
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end171.thread

for.end171.thread:                                ; preds = %land.rhs157.for.end171.thread_crit_edge, %land.rhs157.preheader.for.end171.thread_crit_edge
  %.lcssa512 = phi i32 [ %115, %land.rhs157.preheader.for.end171.thread_crit_edge ], [ %146, %land.rhs157.for.end171.thread_crit_edge ]
  %i.5441.lcssa = phi i32 [ %i.4, %land.rhs157.preheader.for.end171.thread_crit_edge ], [ %inc169, %land.rhs157.for.end171.thread_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.5441.lcssa, i32 %.lcssa512)
  %cmp173391 = icmp eq i32 %i.5441.lcssa, %.lcssa512
  %spec.select392 = select i1 %cmp173391, i32 0, i32 %state.3
  br label %do.cond235

for.body161:                                      ; preds = %land.rhs157.for.body161_crit_edge, %land.rhs157.preheader.for.body161_crit_edge
  %i.5441544 = phi i32 [ %inc169, %land.rhs157.for.body161_crit_edge ], [ %i.4, %land.rhs157.preheader.for.body161_crit_edge ]
  %117 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %i_gl, align 4
  %sub163 = add i32 %i.5441544, -1
  %arrayidx164 = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %sub163
  %119 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx164, align 2
  %conv165 = zext i16 %120 to i32
  %121 = ptrtoint ptr %bn to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %bn, align 8
  %inc166 = add i64 %122, 1
  store i64 %inc166, ptr %bn, align 8
  %arrayidx.i359 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %sub163
  %123 = ptrtoint ptr %arrayidx.i359 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i359, align 4
  %b_data.i360 = getelementptr inbounds %struct.buffer_head, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %b_data.i360 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %b_data.i360, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5441544)
  %cmp1.i361 = icmp eq i32 %i.5441544, 0
  br i1 %cmp1.i361, label %do.body3.i362, label %do.body9.i365, !prof !79

do.body3.i362:                                    ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 616, 0\0A.popsection", ""() #12, !srcloc !99
  unreachable

do.body9.i365:                                    ; preds = %for.body161
  %arrayidx11.i363 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %i.5441544
  %127 = ptrtoint ptr %arrayidx11.i363 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx11.i363, align 4
  %cmp12.not.i364 = icmp eq ptr %128, null
  br i1 %cmp12.not.i364, label %do.end28.i373, label %do.body20.i366, !prof !75

do.body20.i366:                                   ; preds = %do.body9.i365
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 617, 0\0A.popsection", ""() #12, !srcloc !98
  unreachable

do.end28.i373:                                    ; preds = %do.body9.i365
  %call.i367 = call ptr @gfs2_meta_new(ptr noundef %118, i64 noundef %122) #12
  %129 = ptrtoint ptr %arrayidx11.i363 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i367, ptr %arrayidx11.i363, align 4
  call void @gfs2_trans_add_meta(ptr noundef %118, ptr noundef %call.i367) #12
  %130 = ptrtoint ptr %arrayidx11.i363 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx11.i363, align 4
  %b_data.i.i368 = getelementptr inbounds %struct.buffer_head, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %b_data.i.i368 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %b_data.i.i368, align 4
  %mh_type.i.i369 = getelementptr inbounds %struct.gfs2_meta_header, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %mh_type.i.i369 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 5, ptr %mh_type.i.i369, align 4
  %mh_format.i.i370 = getelementptr inbounds %struct.gfs2_meta_header, ptr %133, i32 0, i32 3
  %135 = ptrtoint ptr %mh_format.i.i370 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 500, ptr %mh_format.i.i370, align 8
  %136 = load ptr, ptr %arrayidx11.i363, align 4
  %b_size.i.i371 = getelementptr inbounds %struct.buffer_head, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %b_size.i.i371 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %b_size.i.i371, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %138)
  %cmp.i.i372 = icmp ult i32 %138, 24
  br i1 %cmp.i.i372, label %do.body2.i.i374, label %gfs2_indirect_init.exit381, !prof !79

do.body2.i.i374:                                  ; preds = %do.end28.i373
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #12, !srcloc !82
  unreachable

gfs2_indirect_init.exit381:                       ; preds = %do.end28.i373
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.5441544)
  %cmp.i375 = icmp ugt i32 %i.5441544, 1
  %cond.i376 = select i1 %cmp.i375, i32 24, i32 232
  %add.ptr.i377 = getelementptr i8, ptr %126, i32 %cond.i376
  %b_data.i1.i378 = getelementptr inbounds %struct.buffer_head, ptr %136, i32 0, i32 5
  %139 = ptrtoint ptr %b_data.i1.i378 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %b_data.i1.i378, align 4
  %add.ptr.i.i379 = getelementptr i8, ptr %140, i32 24
  %sub.i.i380 = add i32 %138, -24
  %141 = call ptr @memset(ptr %add.ptr.i.i379, i32 0, i32 %sub.i.i380)
  %add.ptr37.i = getelementptr i64, ptr %add.ptr.i377, i32 %conv165
  %142 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %122, ptr %add.ptr37.i, align 8
  %inc169 = add nuw i32 %i.5441544, 1
  %143 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %n, align 4
  %dec170 = add i32 %144, -1
  store i32 %dec170, ptr %n, align 4
  %145 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mp_fheight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc169, i32 %146)
  %cmp155 = icmp ult i32 %inc169, %146
  br i1 %cmp155, label %land.rhs157, label %gfs2_indirect_init.exit381.for.end171_crit_edge

gfs2_indirect_init.exit381.for.end171_crit_edge:  ; preds = %gfs2_indirect_init.exit381
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end171

for.end171:                                       ; preds = %gfs2_indirect_init.exit381.for.end171_crit_edge, %if.end152.for.end171_crit_edge
  %.pr = phi i32 [ %.pr480, %if.end152.for.end171_crit_edge ], [ %dec170, %gfs2_indirect_init.exit381.for.end171_crit_edge ]
  %i.5.lcssa = phi i32 [ %i.4, %if.end152.for.end171_crit_edge ], [ %inc169, %gfs2_indirect_init.exit381.for.end171_crit_edge ]
  %.lcssa = phi i32 [ %115, %if.end152.for.end171_crit_edge ], [ %146, %gfs2_indirect_init.exit381.for.end171_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.5.lcssa, i32 %.lcssa)
  %cmp173 = icmp eq i32 %i.5.lcssa, %.lcssa
  %spec.select = select i1 %cmp173, i32 0, i32 %state.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp177 = icmp eq i32 %.pr, 0
  br i1 %cmp177, label %for.end171.do.cond235_crit_edge, label %for.end171.do.body182_crit_edge

for.end171.do.body182_crit_edge:                  ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body182

for.end171.do.cond235_crit_edge:                  ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond235

do.body182:                                       ; preds = %for.end171.do.body182_crit_edge, %if.end86.thread390, %lor.lhs.false.do.body182_crit_edge
  %i.6 = phi i32 [ %i.5.lcssa, %for.end171.do.body182_crit_edge ], [ %i.0, %if.end86.thread390 ], [ %i.0, %lor.lhs.false.do.body182_crit_edge ]
  %state.5 = phi i32 [ %spec.select, %for.end171.do.body182_crit_edge ], [ 0, %if.end86.thread390 ], [ 0, %lor.lhs.false.do.body182_crit_edge ]
  %zero_bn.3 = phi i64 [ %zero_bn.2, %for.end171.do.body182_crit_edge ], [ %zero_bn.0, %if.end86.thread390 ], [ %zero_bn.0, %lor.lhs.false.do.body182_crit_edge ]
  %147 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %dblks.0)
  %cmp183 = icmp ugt i32 %148, %dblks.0
  br i1 %cmp183, label %do.body192, label %do.body201, !prof !79

do.body192:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 762, 0\0A.popsection", ""() #12, !srcloc !100
  unreachable

do.body201:                                       ; preds = %do.body182
  %149 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx203, align 4
  %cmp204 = icmp eq ptr %150, null
  br i1 %cmp204, label %do.body213, label %do.end221, !prof !79

do.body213:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 763, 0\0A.popsection", ""() #12, !srcloc !101
  unreachable

do.end221:                                        ; preds = %do.body201
  %151 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %i_gl, align 4
  call void @gfs2_trans_add_meta(ptr noundef %152, ptr noundef nonnull %150) #12
  %153 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %n, align 4
  %155 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx203, align 4
  %b_data.i.i383 = getelementptr inbounds %struct.buffer_head, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %b_data.i.i383 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %b_data.i.i383, align 4
  %159 = ptrtoint ptr %arrayidx.i384 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %arrayidx.i384, align 2
  %161 = ptrtoint ptr %bn to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %bn, align 8
  %163 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %i_blkbits, align 2
  %sh_prom228 = zext i8 %164 to i64
  %shl = shl i64 %162, %sh_prom228
  %165 = ptrtoint ptr %iomap to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %shl, ptr %iomap, align 8
  %166 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %flags, align 2
  %168 = or i16 %167, 9
  store i16 %168, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp232.not446 = icmp eq i32 %154, 0
  br i1 %cmp232.not446, label %do.end221.do.cond235.loopexit_crit_edge, label %while.body.preheader

do.end221.do.cond235.loopexit_crit_edge:          ; preds = %do.end221
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond235.loopexit

while.body.preheader:                             ; preds = %do.end221
  %add.ptr2.i.i = getelementptr i8, ptr %158, i32 %..i.i
  %conv.i = zext i16 %160 to i32
  %add.ptr.i385 = getelementptr i64, ptr %add.ptr2.i.i, i32 %conv.i
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %dec231448.in = phi i32 [ %dec231448, %while.body.while.body_crit_edge ], [ %154, %while.body.preheader ]
  %ptr.0447 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr.i385, %while.body.preheader ]
  %dec231448 = add i32 %dec231448.in, -1
  %169 = ptrtoint ptr %bn to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %bn, align 8
  %inc234 = add i64 %170, 1
  store i64 %inc234, ptr %bn, align 8
  %incdec.ptr = getelementptr i64, ptr %ptr.0447, i32 1
  %171 = ptrtoint ptr %ptr.0447 to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %170, ptr %ptr.0447, align 8
  %cmp232.not = icmp eq i32 %dec231448, 0
  br i1 %cmp232.not, label %while.body.do.cond235.loopexit_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.do.cond235.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond235.loopexit

do.cond235.loopexit:                              ; preds = %while.body.do.cond235.loopexit_crit_edge, %do.end221.do.cond235.loopexit_crit_edge
  %172 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 -1, ptr %n, align 4
  br label %do.cond235

do.cond235:                                       ; preds = %do.cond235.loopexit, %for.end171.do.cond235_crit_edge, %for.end171.thread, %if.end136.do.cond235_crit_edge, %if.end86.do.cond235_crit_edge
  %i.7 = phi i32 [ %i.0, %if.end86.do.cond235_crit_edge ], [ %i.5.lcssa, %for.end171.do.cond235_crit_edge ], [ %i.3, %if.end136.do.cond235_crit_edge ], [ %i.5441.lcssa, %for.end171.thread ], [ %i.6, %do.cond235.loopexit ]
  %dblks.1 = phi i32 [ %dblks.0, %if.end86.do.cond235_crit_edge ], [ %dblks.0, %for.end171.do.cond235_crit_edge ], [ %dblks.0, %if.end136.do.cond235_crit_edge ], [ %dblks.0, %for.end171.thread ], [ %154, %do.cond235.loopexit ]
  %state.6 = phi i32 [ %state.1, %if.end86.do.cond235_crit_edge ], [ %spec.select, %for.end171.do.cond235_crit_edge ], [ %state.2, %if.end136.do.cond235_crit_edge ], [ %spec.select392, %for.end171.thread ], [ %state.5, %do.cond235.loopexit ]
  %zero_bn.4 = phi i64 [ %zero_bn.0, %if.end86.do.cond235_crit_edge ], [ %zero_bn.2, %for.end171.do.cond235_crit_edge ], [ %zero_bn.1, %if.end136.do.cond235_crit_edge ], [ %zero_bn.2, %for.end171.thread ], [ %zero_bn.3, %do.cond235.loopexit ]
  %173 = ptrtoint ptr %iomap to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %iomap, align 8
  %cmp237 = icmp eq i64 %174, -1
  br i1 %cmp237, label %do.cond235.do.body74_crit_edge, label %do.end239

do.cond235.do.body74_crit_edge:                   ; preds = %do.cond235
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body74

do.end239:                                        ; preds = %do.cond235
  %type = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 3
  %175 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 2, ptr %type, align 8
  %conv240 = zext i32 %dblks.1 to i64
  %176 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %i_blkbits, align 2
  %sh_prom243 = zext i8 %177 to i64
  %shl244 = shl i64 %conv240, %sh_prom243
  %178 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 %shl244, ptr %length, align 8
  %179 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mp_fheight, align 4
  %conv247 = trunc i32 %180 to i8
  %181 = ptrtoint ptr %i_height93 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %conv247, ptr %i_height93, align 8
  %conv249 = zext i32 %add80 to i64
  %182 = load i8, ptr %i_blkbits, align 2
  %conv.i386 = zext i8 %182 to i32
  %sub.i387 = add nsw i32 %conv.i386, -9
  %sh_prom.i = zext i32 %sub.i387 to i64
  %shl.i = shl i64 %conv249, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shl.i)
  %cmp.i388 = icmp sgt i64 %shl.i, -1
  br i1 %cmp.i388, label %do.end239.gfs2_add_inode_blocks.exit_crit_edge, label %lor.rhs.i

do.end239.gfs2_add_inode_blocks.exit_crit_edge:   ; preds = %do.end239
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_add_inode_blocks.exit

lor.rhs.i:                                        ; preds = %do.end239
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %183 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %i_blocks.i, align 8
  %sub2.i = sub i64 0, %shl.i
  call void @__sanitizer_cov_trace_cmp8(i64 %184, i64 %sub2.i)
  %cmp3.i = icmp ult i64 %184, %sub2.i
  br i1 %cmp3.i, label %if.then.i389, label %lor.rhs.i.gfs2_add_inode_blocks.exit_crit_edge, !prof !79

lor.rhs.i.gfs2_add_inode_blocks.exit_crit_edge:   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_add_inode_blocks.exit

if.then.i389:                                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %185 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %186, i32 0, i32 33
  %187 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @gfs2_assert_i(ptr noundef %188) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !83
  unreachable

gfs2_add_inode_blocks.exit:                       ; preds = %lor.rhs.i.gfs2_add_inode_blocks.exit_crit_edge, %do.end239.gfs2_add_inode_blocks.exit_crit_edge
  %i_blocks11.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 22
  %189 = ptrtoint ptr %i_blocks11.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %i_blocks11.i, align 8
  %add.i = add i64 %190, %shl.i
  store i64 %add.i, ptr %i_blocks11.i, align 8
  %191 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %b_data, align 4
  call void @gfs2_dinode_out(ptr noundef %inode, ptr noundef %192) #12
  br label %out

out:                                              ; preds = %gfs2_add_inode_blocks.exit, %do.body74.out_crit_edge
  %call76471 = phi i32 [ 0, %gfs2_add_inode_blocks.exit ], [ %call76, %do.body74.out_crit_edge ]
  call void @up_write(ptr noundef %i_rw_mutex) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bn) #12
  ret i32 %call76471
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_trim_blocks(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size, align 8
  %call = tail call fastcc i32 @do_shrink(ptr noundef %inode, i64 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !75

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2035, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_shrink(ptr noundef %inode, i64 noundef %newsize) unnamed_addr #0 align 64 {
entry:
  %dibh.i = alloca ptr, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #12
  %4 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dibh.i, align 4
  %i_diskflags.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %5 = ptrtoint ptr %i_diskflags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_diskflags.i.i, align 4
  %and.i.i = and i32 %6, 1
  %i_size.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %7 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_size.i, align 8
  %i_height.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %9 = ptrtoint ptr %i_height.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.not.i, label %entry.if.end14.i_crit_edge, label %if.then.i

entry.if.end14.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then.i:                                        ; preds = %entry
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %11 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i.i = zext i8 %12 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %sub.i = add i32 %shl.i.i, -1
  %13 = trunc i64 %newsize to i32
  %conv5.i = and i32 %sub.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5.i)
  %tobool6.not.i = icmp eq i32 %conv5.i, 0
  br i1 %tobool6.not.i, label %if.then.i.if.end14.i_crit_edge, label %if.then7.i

if.then.i.if.end14.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then7.i:                                       ; preds = %if.then.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i, align 8
  %journal_info.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 146
  %18 = ptrtoint ptr %journal_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %journal_info.i.i, align 4
  %tobool.not.i81.i = icmp eq ptr %19, null
  br i1 %tobool.not.i81.i, label %gfs2_block_zero_range.exit.i, label %do.body3.i.i, !prof !75

do.body3.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1291, 0\0A.popsection", ""() #12, !srcloc !102
  unreachable

gfs2_block_zero_range.exit.i:                     ; preds = %if.then7.i
  %sub8.i = sub i32 %shl.i.i, %conv5.i
  %conv.i82.i = zext i32 %sub8.i to i64
  %call7.i.i = tail call i32 @iomap_zero_range(ptr noundef %inode, i64 noundef %newsize, i64 noundef %conv.i82.i, ptr noundef null, ptr noundef nonnull @gfs2_iomap_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool10.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool10.not.i, label %gfs2_block_zero_range.exit.i.if.end14.i_crit_edge, label %gfs2_block_zero_range.exit.i.trunc_start.exit_crit_edge

gfs2_block_zero_range.exit.i.trunc_start.exit_crit_edge: ; preds = %gfs2_block_zero_range.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trunc_start.exit

gfs2_block_zero_range.exit.i.if.end14.i_crit_edge: ; preds = %gfs2_block_zero_range.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.end14.i:                                       ; preds = %gfs2_block_zero_range.exit.i.if.end14.i_crit_edge, %if.then.i.if.end14.i_crit_edge, %entry.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool15.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool15.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = tail call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef 2, i32 noundef 8192) #12
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  %call18.i = tail call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef 1, i32 noundef 0) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then16.i
  %error.0.i = phi i32 [ %call17.i, %if.then16.i ], [ %call18.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0.i)
  %tobool20.not.i = icmp eq i32 %error.0.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end19.i.trunc_start.exit_crit_edge

if.end19.i.trunc_start.exit_crit_edge:            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trunc_start.exit

if.end22.i:                                       ; preds = %if.end19.i
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %20 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i.i = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %21, ptr noundef nonnull %dibh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool24.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.out.i_crit_edge

if.end22.i.out.i_crit_edge:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end26.i:                                       ; preds = %if.end22.i
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %22 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_gl.i, align 4
  %24 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dibh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %23, ptr noundef %25) #12
  %26 = ptrtoint ptr %i_height.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i84.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i84.not.i, label %if.then29.i, label %if.else31.i

if.then29.i:                                      ; preds = %if.end26.i
  %28 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dibh.i, align 4
  %30 = trunc i64 %newsize to i32
  %conv30.i = add i32 %30, 232
  %b_size.i.i = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 4
  %31 = ptrtoint ptr %b_size.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %b_size.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv30.i)
  %cmp.i.i = icmp ult i32 %32, %conv30.i
  br i1 %cmp.i.i, label %do.body2.i.i, label %gfs2_buffer_clear_tail.exit.i, !prof !79

do.body2.i.i:                                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #12, !srcloc !82
  unreachable

gfs2_buffer_clear_tail.exit.i:                    ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %33 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv30.i
  %sub.i.i = sub i32 %32, %conv30.i
  %35 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %sub.i.i)
  br label %if.end32.i

if.else31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %i_diskflags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %i_diskflags.i.i, align 4
  %or.i = or i32 %37, 536870912
  store i32 %or.i, ptr %i_diskflags.i.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.else31.i, %gfs2_buffer_clear_tail.exit.i
  %38 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %42 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i, label %if.end32.i.i_size_write.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end32.i.i_size_write.exit.i_crit_edge:         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end32.i
  %43 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %46, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %47 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i28.i.i = add i32 %52, ptrtoint (ptr @lockdep_recursion to i32)
  %53 = inttoptr i32 %add.i28.i.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !105
  %56 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i7.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool20.not.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge

land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %60 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i29.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i.i = icmp eq i32 %63, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.i_size_write.exit.i_crit_edge

land.rhs.i.i.i.i_size_write.exit.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit.i

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %64 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i9.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %67, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !106
  %68 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %69
  %70 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %71, ptrtoint (ptr @hardirqs_enabled to i32)
  %72 = inttoptr i32 %add47.i.i.i to ptr
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %72, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  %75 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i12.i.i.i = and i32 %75, -16384
  %76 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %78, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool54.not.i.i.i = icmp eq i32 %74, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.i_size_write.exit.i_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.i_size_write.exit.i_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit.i

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.i_size_write.exit.i_crit_edge, label %if.then.i.i.i, !prof !75

land.rhs58.i.i.i.i_size_write.exit.i_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %i_size_write.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %i_size_write.exit.i

i_size_write.exit.i:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.i_size_write.exit.i_crit_edge, %land.rhs22.i.i.i.i_size_write.exit.i_crit_edge, %land.rhs.i.i.i.i_size_write.exit.i_crit_edge, %land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge, %if.end32.i.i_size_write.exit.i_crit_edge
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %79 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %dep_map.i.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %81 = call ptr @llvm.returnaddress(i32 0) #12
  %82 = ptrtoint ptr %81 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %82) #12
  %83 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %newsize, ptr %i_size.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %82) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !109
  %84 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i = add i32 %85, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  %86 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i26.i.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %preempt_count.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i27.i.i, align 4
  %sub.i.i.i = add i32 %89, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i27.i.i, align 4
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #12
  %90 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #12
  %91 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %92 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dibh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %b_data.i, align 4
  call void @gfs2_dinode_out(ptr noundef %inode, ptr noundef %95) #12
  br i1 %tobool15.not.i, label %if.else38.i, label %if.then36.i

if.then36.i:                                      ; preds = %i_size_write.exit.i
  %96 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %97, i32 0, i32 33
  %98 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 8
  %s_blocksize.i.i = getelementptr inbounds %struct.super_block, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %s_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %s_blocksize.i.i, align 16
  %mul.i.i = shl i32 %103, 13
  %conv.i86.i = zext i32 %mul.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %newsize)
  %cmp.not47.i.i = icmp eq i64 %8, %newsize
  br i1 %cmp.not47.i.i, label %if.then36.i.out.i_crit_edge, label %if.then36.i.while.body.i.i_crit_edge

if.then36.i.while.body.i.i_crit_edge:             ; preds = %if.then36.i
  br label %while.body.i.i

if.then36.i.out.i_crit_edge:                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.then36.i.while.body.i.i_crit_edge
  %oldsize.addr.048.i.i = phi i64 [ %sub13.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %8, %if.then36.i.while.body.i.i_crit_edge ]
  %sub.i87.i = sub i64 %oldsize.addr.048.i.i, %newsize
  %104 = call i64 @llvm.umin.i64(i64 %sub.i87.i, i64 %conv.i86.i) #12
  %105 = trunc i64 %oldsize.addr.048.i.i to i32
  %conv4.i.i = and i32 %105, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4.i.i)
  %tobool.not.i88.i = icmp ne i32 %conv4.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %104)
  %cmp5.i.i = icmp ugt i64 %104, 4096
  %or.cond.i.i = select i1 %tobool.not.i88.i, i1 %cmp5.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then7.i.i, label %while.body.i.i.if.end12.i.i_crit_edge

while.body.i.i.if.end12.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12.i.i

if.then7.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv8.i.i = zext i32 %conv4.i.i to i64
  %sub10.i.i = sub nuw nsw i64 %104, %conv8.i.i
  %and11.i.i = and i64 %sub10.i.i, -4096
  %add.i.i = or i64 %and11.i.i, %conv8.i.i
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then7.i.i, %while.body.i.i.if.end12.i.i_crit_edge
  %chunk.1.i.i = phi i64 [ %add.i.i, %if.then7.i.i ], [ %104, %while.body.i.i.if.end12.i.i_crit_edge ]
  %sub13.i.i = sub i64 %oldsize.addr.048.i.i, %chunk.1.i.i
  call void @truncate_pagecache(ptr noundef %inode, i64 noundef %sub13.i.i) #12
  %106 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i89.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i89.i to ptr
  %task.i90.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task.i90.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task.i90.i, align 8
  %journal_info.i91.i = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 146
  %110 = ptrtoint ptr %journal_info.i91.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %journal_info.i91.i, align 4
  %tr_flags.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %tr_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %tr_flags.i.i, align 4
  %114 = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool17.not.i.i = icmp eq i32 %114, 0
  br i1 %tobool17.not.i.i, label %if.end12.i.i.cleanup.i.i_crit_edge, label %if.end19.i.i

if.end12.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end19.i.i:                                     ; preds = %if.end12.i.i
  call void @gfs2_trans_end(ptr noundef %99) #12
  %call20.i.i = call i32 @gfs2_trans_begin(ptr noundef %99, i32 noundef 1, i32 noundef 8192) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end19.i.i.cleanup.i.i_crit_edge, label %if.end19.i.i.out.i_crit_edge

if.end19.i.i.out.i_crit_edge:                     ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end19.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end19.i.i.cleanup.i.i_crit_edge, %if.end12.i.i.cleanup.i.i_crit_edge
  %cmp.not.i.i = icmp eq i64 %sub13.i.i, %newsize
  br i1 %cmp.not.i.i, label %cleanup.i.i.out.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

cleanup.i.i.out.i_crit_edge:                      ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.else38.i:                                      ; preds = %i_size_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @truncate_pagecache(ptr noundef %inode, i64 noundef %newsize) #12
  br label %out.i

out.i:                                            ; preds = %if.else38.i, %cleanup.i.i.out.i_crit_edge, %if.end19.i.i.out.i_crit_edge, %if.then36.i.out.i_crit_edge, %if.end22.i.out.i_crit_edge
  %error.1.i = phi i32 [ %call.i.i, %if.end22.i.out.i_crit_edge ], [ 0, %if.else38.i ], [ 0, %if.then36.i.out.i_crit_edge ], [ %call20.i.i, %if.end19.i.i.out.i_crit_edge ], [ 0, %cleanup.i.i.out.i_crit_edge ]
  %115 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i92.i = icmp eq ptr %116, null
  br i1 %tobool.not.i92.i, label %out.i.brelse.exit.i_crit_edge, label %if.then.i.i

out.i.brelse.exit.i_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %116) #12
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %out.i.brelse.exit.i_crit_edge
  %117 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i93.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i93.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 146
  %121 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %journal_info.i, align 4
  %tobool41.not.i = icmp eq ptr %122, null
  br i1 %tobool41.not.i, label %brelse.exit.i.trunc_start.exit_crit_edge, label %if.then42.i

brelse.exit.i.trunc_start.exit_crit_edge:         ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %trunc_start.exit

if.then42.i:                                      ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_trans_end(ptr noundef %3) #12
  br label %trunc_start.exit

trunc_start.exit:                                 ; preds = %if.then42.i, %brelse.exit.i.trunc_start.exit_crit_edge, %if.end19.i.trunc_start.exit_crit_edge, %gfs2_block_zero_range.exit.i.trunc_start.exit_crit_edge
  %retval.1.i = phi i32 [ %error.0.i, %if.end19.i.trunc_start.exit_crit_edge ], [ %error.1.i, %if.then42.i ], [ %error.1.i, %brelse.exit.i.trunc_start.exit_crit_edge ], [ %call7.i.i, %gfs2_block_zero_range.exit.i.trunc_start.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp = icmp slt i32 %retval.1.i, 0
  br i1 %cmp, label %trunc_start.exit.cleanup_crit_edge, label %if.end

trunc_start.exit.cleanup_crit_edge:               ; preds = %trunc_start.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %trunc_start.exit
  %123 = ptrtoint ptr %i_height.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %i_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i.not = icmp eq i8 %124, 0
  br i1 %tobool.not.i.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc i32 @punch_hole(ptr noundef %inode, i64 noundef %newsize, i64 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call8 = call fastcc i32 @trunc_end(ptr noundef %inode)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %trunc_start.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i, %trunc_start.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.then7 ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_setattr_size(ptr noundef %inode, i64 noundef %newsize) local_unnamed_addr #0 align 64 {
entry:
  %ap.i = alloca %struct.gfs2_alloc_parms, align 8
  %dibh.i = alloca ptr, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %inode, align 8
  %2 = and i16 %1, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %2)
  %cmp.not = icmp eq i16 %2, -32768
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !75

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2130, 0\0A.popsection", ""() #12, !srcloc !111
  unreachable

do.end9:                                          ; preds = %entry
  %call10 = tail call i32 @inode_newsize_ok(ptr noundef %inode, i64 noundef %newsize) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end9.cleanup_crit_edge

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %do.end9
  tail call void @inode_dio_wait(ptr noundef %inode) #12
  %call14 = tail call i32 @gfs2_qa_get(ptr noundef %inode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end17:                                         ; preds = %if.end13
  %i_size = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %3 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %newsize)
  %cmp18.not = icmp ugt i64 %4, %newsize
  br i1 %cmp18.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %5 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 33
  %7 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap.i) #12
  %9 = call ptr @memcpy(ptr %ap.i, ptr @__const.do_grow.ap, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #12
  %10 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i, align 4, !annotation !74
  %i_height.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %11 = ptrtoint ptr %i_height.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_height.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.not.i, label %land.lhs.true.i, label %if.then20.land.end.i_crit_edge

if.then20.land.end.i_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.lhs.true.i:                                  ; preds = %if.then20
  %sb_bsize.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %8, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %sb_bsize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sb_bsize.i.i, align 8
  %sub.i.i = add i32 %14, -232
  %conv.i = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv.i, i64 %newsize)
  %cmp.i = icmp ult i64 %conv.i, %newsize
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.land.end.i_crit_edge

land.lhs.true.i.land.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %allowed.i.i = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap.i, i32 0, i32 3
  %15 = ptrtoint ptr %allowed.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 4294967295, ptr %allowed.i.i, align 8
  %call1.i.i = tail call zeroext i1 @capable(i32 noundef 24) #12
  br i1 %call1.i.i, label %if.then.i.if.end.i_crit_edge, label %lor.lhs.false.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %ar_quota.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %8, i32 0, i32 21, i32 3
  %16 = ptrtoint ptr %ar_quota.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i.i = load i32, ptr %ar_quota.i.i, align 4
  %17 = and i32 %bf.load.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.if.end.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %call5.i.i = tail call i32 @gfs2_quota_lock(ptr noundef %inode, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i73.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i73.i, label %if.end7.i.i, label %if.end.i.i.do_grow.exit_crit_edge

if.end.i.i.do_grow.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_grow.exit

if.end7.i.i:                                      ; preds = %if.end.i.i
  %18 = ptrtoint ptr %ar_quota.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load10.i.i = load i32, ptr %ar_quota.i.i, align 4
  %19 = and i32 %bf.load10.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %19)
  %cmp13.not.i.i = icmp eq i32 %19, 134217728
  br i1 %cmp13.not.i.i, label %if.end15.i.i, label %if.end7.i.i.if.end.i_crit_edge

if.end7.i.i.if.end.i_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end15.i.i:                                     ; preds = %if.end7.i.i
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %20 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack.i.i = load i32, ptr %i_uid.i.i, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack.i.i, 0
  %22 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack36.i.i = load i32, ptr %i_gid.i.i, align 8
  %23 = insertvalue [1 x i32] undef, i32 %.unpack36.i.i, 0
  %call20.i.i = call i32 @gfs2_quota_check(ptr noundef %inode, [1 x i32] %21, [1 x i32] %23, ptr noundef nonnull %ap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end15.i.i.if.end.i_crit_edge, label %if.end15.i.i.cleanup.sink.split.i_crit_edge

if.end15.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.end15.i.i.if.end.i_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.end15.i.i.if.end.i_crit_edge, %if.end7.i.i.if.end.i_crit_edge, %lor.lhs.false.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %call8.i = call i32 @gfs2_inplace_reserve(ptr noundef %inode, ptr noundef nonnull %ap.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.rhs.i, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

land.rhs.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %i_diskflags.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %24 = ptrtoint ptr %i_diskflags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %i_diskflags.i.i, align 4
  %and.i.i = and i32 %25, 1
  %26 = or i32 %and.i.i, 4
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %land.lhs.true.i.land.end.i_crit_edge, %if.then20.land.end.i_crit_edge
  %tobool13.not79.i = phi i1 [ false, %land.rhs.i ], [ true, %land.lhs.true.i.land.end.i_crit_edge ], [ true, %if.then20.land.end.i_crit_edge ]
  %27 = phi i32 [ %26, %land.rhs.i ], [ 4, %land.lhs.true.i.land.end.i_crit_edge ], [ 4, %if.then20.land.end.i_crit_edge ]
  %ar_quota.i = getelementptr inbounds %struct.gfs2_sbd, ptr %8, i32 0, i32 21, i32 3
  %28 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i = load i32, ptr %ar_quota.i, align 4
  %29 = and i32 %bf.load.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp16.i = icmp eq i32 %29, 0
  %cond18.i = select i1 %cmp16.i, i32 0, i32 2
  %add19.i = or i32 %cond18.i, %27
  %call20.i = call i32 @gfs2_trans_begin(ptr noundef %8, i32 noundef %add19.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %do_grow_release.i

if.end23.i:                                       ; preds = %land.end.i
  br i1 %tobool13.not79.i, label %if.end23.i.if.end30.i_crit_edge, label %if.then25.i

if.end23.i.if.end30.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.then25.i:                                      ; preds = %if.end23.i
  %call26.i = call i32 @gfs2_unstuff_dinode(ptr noundef %inode) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.then25.i.if.end30.i_crit_edge, label %do_end_trans.thread.i

if.then25.i.if.end30.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

do_end_trans.thread.i:                            ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_trans_end(ptr noundef %8) #12
  br label %if.then38.i

if.end30.i:                                       ; preds = %if.then25.i.if.end30.i_crit_edge, %if.end23.i.if.end30.i_crit_edge
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %30 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i.i = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 4, i64 noundef %31, ptr noundef nonnull %dibh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool32.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.do_end_trans.i_crit_edge

if.end30.i.do_end_trans.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_end_trans.i

if.end34.i:                                       ; preds = %if.end30.i
  call void @truncate_setsize(ptr noundef %inode, i64 noundef %newsize) #12
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %inode) #12
  %32 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #12
  %33 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %34 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_gl.i, align 4
  %36 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dibh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %35, ptr noundef %37) #12
  %38 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dibh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %b_data.i, align 4
  call void @gfs2_dinode_out(ptr noundef %inode, ptr noundef %41) #12
  %42 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i74.i = icmp eq ptr %43, null
  br i1 %tobool.not.i74.i, label %if.end34.i.do_end_trans.i_crit_edge, label %if.then.i.i

if.end34.i.do_end_trans.i_crit_edge:              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_end_trans.i

if.then.i.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %43) #12
  br label %do_end_trans.i

do_end_trans.i:                                   ; preds = %if.then.i.i, %if.end34.i.do_end_trans.i_crit_edge, %if.end30.i.do_end_trans.i_crit_edge
  call void @gfs2_trans_end(ptr noundef %8) #12
  br i1 %tobool13.not79.i, label %do_end_trans.i.do_grow.exit_crit_edge, label %do_end_trans.i.if.then38.i_crit_edge

do_end_trans.i.if.then38.i_crit_edge:             ; preds = %do_end_trans.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

do_end_trans.i.do_grow.exit_crit_edge:            ; preds = %do_end_trans.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_grow.exit

do_grow_release.i:                                ; preds = %land.end.i
  br i1 %tobool13.not79.i, label %do_grow_release.i.do_grow.exit_crit_edge, label %do_grow_release.i.if.then38.i_crit_edge

do_grow_release.i.if.then38.i_crit_edge:          ; preds = %do_grow_release.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

do_grow_release.i.do_grow.exit_crit_edge:         ; preds = %do_grow_release.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do_grow.exit

if.then38.i:                                      ; preds = %do_grow_release.i.if.then38.i_crit_edge, %do_end_trans.i.if.then38.i_crit_edge, %do_end_trans.thread.i
  %error.181.i = phi i32 [ %call.i.i, %do_end_trans.i.if.then38.i_crit_edge ], [ %call20.i, %do_grow_release.i.if.then38.i_crit_edge ], [ %call26.i, %do_end_trans.thread.i ]
  call void @gfs2_inplace_release(ptr noundef %inode) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then38.i, %if.end.i.cleanup.sink.split.i_crit_edge, %if.end15.i.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ %call20.i.i, %if.end15.i.i.cleanup.sink.split.i_crit_edge ], [ %call8.i, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %error.181.i, %if.then38.i ]
  call void @gfs2_quota_unlock(ptr noundef %inode) #12
  br label %do_grow.exit

do_grow.exit:                                     ; preds = %cleanup.sink.split.i, %do_grow_release.i.do_grow.exit_crit_edge, %do_end_trans.i.do_grow.exit_crit_edge, %if.end.i.i.do_grow.exit_crit_edge
  %retval.0.i = phi i32 [ %call20.i, %do_grow_release.i.do_grow.exit_crit_edge ], [ %call5.i.i, %if.end.i.i.do_grow.exit_crit_edge ], [ %call.i.i, %do_end_trans.i.do_grow.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap.i) #12
  br label %out

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = tail call fastcc i32 @do_shrink(ptr noundef %inode, i64 noundef %newsize)
  br label %out

out:                                              ; preds = %if.end22, %do_grow.exit, %if.end13.out_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end13.out_crit_edge ], [ %retval.0.i, %do_grow.exit ], [ %call23, %if.end22 ]
  call void @gfs2_rs_delete(ptr noundef %inode, ptr noundef null) #12
  call void @gfs2_qa_put(ptr noundef %inode) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call10, %do.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_qa_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rs_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_qa_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_truncatei_resume(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @i_size_read(ptr noundef %ip)
  %call1 = tail call fastcc i32 @punch_hole(ptr noundef %ip, i64 noundef %call, i64 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call fastcc i32 @trunc_end(ptr noundef %ip)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call1, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @punch_hole(ptr noundef %ip, i64 noundef %offset, i64 noundef %length) unnamed_addr #0 align 64 {
entry:
  %dibh.i = alloca ptr, align 4
  %tmp137.i = alloca %struct.timespec64, align 8
  %mp = alloca %struct.metapath, align 4
  %dibh = alloca ptr, align 4
  %rd_gh = alloca %struct.gfs2_holder, align 4
  %start_list = alloca [10 x i16], align 2
  %__end_list = alloca [10 x i16], align 2
  %tmp251 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_height = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 19
  %4 = ptrtoint ptr %i_height to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_height, align 8
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr %struct.gfs2_sbd, ptr %3, i32 0, i32 19, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mp) #12
  %8 = call ptr @memset(ptr %mp, i32 0, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh) #12
  %9 = ptrtoint ptr %dibh to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rd_gh) #12
  %10 = getelementptr inbounds %struct.gfs2_holder, ptr %rd_gh, i32 0, i32 1
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 5
  %11 = call ptr @memset(ptr %rd_gh, i32 255, i32 32)
  %12 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_bsize_shift, align 4
  %shl = shl nuw i32 1, %13
  %conv = sext i32 %shl to i64
  %add = add i64 %offset, -1
  %sub = add i64 %add, %conv
  %sh_prom = zext i32 %13 to i64
  %shr = lshr i64 %sub, %sh_prom
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %start_list) #12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__end_list) #12
  %sub3 = add nsw i32 %idxprom, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %offset)
  %cmp.not = icmp ugt i64 %7, %offset
  %14 = call ptr @memset(ptr %__end_list, i32 255, i32 20)
  br i1 %cmp.not, label %if.end, label %entry.cleanup268_crit_edge

entry.cleanup268_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup268

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %tobool.not = icmp eq i64 %length, 0
  br i1 %tobool.not, label %if.end.if.end30_crit_edge, label %if.then5

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then5:                                         ; preds = %if.end
  %add6 = add i64 %length, %offset
  %15 = tail call i64 @llvm.umin.i64(i64 %add6, i64 %7)
  %shr12 = lshr i64 %15, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %shr12)
  %cmp13.not = icmp ult i64 %shr, %shr12
  br i1 %cmp13.not, label %if.end16, label %if.then5.cleanup268_crit_edge

if.then5.cleanup268_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup268

if.end16:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not290.i = icmp eq i8 %5, 0
  br i1 %tobool.not290.i, label %if.end16.find_metapath.exit_crit_edge, label %for.body.lr.ph.i

if.end16.find_metapath.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_metapath.exit

for.body.lr.ph.i:                                 ; preds = %if.end16
  %sd_inptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %if.end179.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dec292.in.i = phi i32 [ %idxprom, %for.body.lr.ph.i ], [ %dec292.i, %if.end179.i.for.body.i_crit_edge ]
  %block.addr.0291.i = phi i64 [ %shr12, %for.body.lr.ph.i ], [ %block.addr.1.i, %if.end179.i.for.body.i_crit_edge ]
  %dec292.i = add nsw i32 %dec292.in.i, -1
  %16 = ptrtoint ptr %sd_inptrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sd_inptrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %block.addr.0291.i)
  %cmp165.i = icmp ult i64 %block.addr.0291.i, 4294967296
  br i1 %cmp165.i, label %if.then169.i, label %if.else175.i, !prof !75

if.then169.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv170.i = trunc i64 %block.addr.0291.i to i32
  %conv170.i.frozen = freeze i32 %conv170.i
  %.frozen = freeze i32 %17
  %div173.i = udiv i32 %conv170.i.frozen, %.frozen
  %18 = mul i32 %div173.i, %.frozen
  %rem171.i.decomposed = sub i32 %conv170.i.frozen, %18
  %conv174.i = zext i32 %div173.i to i64
  br label %if.end179.i

if.else175.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 %block.addr.0291.i) #15, !srcloc !94
  %asmresult.i266.i = extractvalue { i64, i64 } %19, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %19, 1
  %shr.i.i = lshr i64 %asmresult.i266.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.else175.i, %if.then169.i
  %block.addr.1.i = phi i64 [ %conv174.i, %if.then169.i ], [ %asmresult1.i.i, %if.else175.i ]
  %__rem.0.i = phi i32 [ %rem171.i.decomposed, %if.then169.i ], [ %conv.i.i, %if.else175.i ]
  %conv181.i = trunc i32 %__rem.0.i to i16
  %arrayidx.i = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %dec292.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv181.i, ptr %arrayidx.i, align 2
  %tobool.not.i = icmp eq i32 %dec292.i, 0
  br i1 %tobool.not.i, label %if.end179.i.find_metapath.exit_crit_edge, label %if.end179.i.for.body.i_crit_edge

if.end179.i.for.body.i_crit_edge:                 ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end179.i.find_metapath.exit_crit_edge:         ; preds = %if.end179.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_metapath.exit

find_metapath.exit:                               ; preds = %if.end179.i.find_metapath.exit_crit_edge, %if.end16.find_metapath.exit_crit_edge
  %mp_list = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %__end_list, ptr %mp_list, i32 20)
  %smin = call i32 @llvm.smin.i32(i32 %sub3, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %find_metapath.exit
  %mp_h.0.in = phi i32 [ %idxprom, %find_metapath.exit ], [ %mp_h.0, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mp_h.0.in)
  %cmp23 = icmp sgt i32 %mp_h.0.in, 1
  br i1 %cmp23, label %for.body, label %for.cond.if.end30_crit_edge

for.cond.if.end30_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

for.body:                                         ; preds = %for.cond
  %mp_h.0 = add nsw i32 %mp_h.0.in, -1
  %arrayidx25 = getelementptr i16, ptr %__end_list, i32 %mp_h.0
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx25, align 2
  %tobool26.not = icmp eq i16 %23, 0
  br i1 %tobool26.not, label %for.body.for.cond_crit_edge, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end30:                                         ; preds = %for.body.if.end30_crit_edge, %for.cond.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %end_list.1 = phi ptr [ null, %if.end.if.end30_crit_edge ], [ %__end_list, %for.cond.if.end30_crit_edge ], [ %__end_list, %for.body.if.end30_crit_edge ]
  %end_aligned.1 = phi i32 [ -1, %if.end.if.end30_crit_edge ], [ %mp_h.0, %for.body.if.end30_crit_edge ], [ %smin, %for.cond.if.end30_crit_edge ]
  %mp_fheight.i425 = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 2
  %24 = ptrtoint ptr %mp_fheight.i425 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %idxprom, ptr %mp_fheight.i425, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not290.i426 = icmp eq i8 %5, 0
  br i1 %tobool.not290.i426, label %if.end30.find_metapath.exit566_crit_edge, label %for.body.lr.ph.i428

if.end30.find_metapath.exit566_crit_edge:         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_metapath.exit566

for.body.lr.ph.i428:                              ; preds = %if.end30
  %sd_inptrs.i427 = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 9
  br label %for.body.i435

for.body.i435:                                    ; preds = %if.end179.i565.for.body.i435_crit_edge, %for.body.lr.ph.i428
  %dec292.in.i429 = phi i32 [ %idxprom, %for.body.lr.ph.i428 ], [ %dec292.i431, %if.end179.i565.for.body.i435_crit_edge ]
  %block.addr.0291.i430 = phi i64 [ %shr, %for.body.lr.ph.i428 ], [ %block.addr.1.i560, %if.end179.i565.for.body.i435_crit_edge ]
  %dec292.i431 = add nsw i32 %dec292.in.i429, -1
  %25 = ptrtoint ptr %sd_inptrs.i427 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sd_inptrs.i427, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %block.addr.0291.i430)
  %cmp165.i548 = icmp ult i64 %block.addr.0291.i430, 4294967296
  br i1 %cmp165.i548, label %if.then169.i554, label %if.else175.i559, !prof !75

if.then169.i554:                                  ; preds = %for.body.i435
  call void @__sanitizer_cov_trace_pc() #14
  %conv170.i550 = trunc i64 %block.addr.0291.i430 to i32
  %conv170.i550.frozen = freeze i32 %conv170.i550
  %.frozen1029 = freeze i32 %26
  %div173.i552 = udiv i32 %conv170.i550.frozen, %.frozen1029
  %27 = mul i32 %div173.i552, %.frozen1029
  %rem171.i551.decomposed = sub i32 %conv170.i550.frozen, %27
  %conv174.i553 = zext i32 %div173.i552 to i64
  br label %if.end179.i565

if.else175.i559:                                  ; preds = %for.body.i435
  call void @__sanitizer_cov_trace_pc() #14
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %block.addr.0291.i430) #15, !srcloc !94
  %asmresult.i266.i555 = extractvalue { i64, i64 } %28, 0
  %asmresult1.i.i556 = extractvalue { i64, i64 } %28, 1
  %shr.i.i557 = lshr i64 %asmresult.i266.i555, 32
  %conv.i.i558 = trunc i64 %shr.i.i557 to i32
  br label %if.end179.i565

if.end179.i565:                                   ; preds = %if.else175.i559, %if.then169.i554
  %block.addr.1.i560 = phi i64 [ %conv174.i553, %if.then169.i554 ], [ %asmresult1.i.i556, %if.else175.i559 ]
  %__rem.0.i561 = phi i32 [ %rem171.i551.decomposed, %if.then169.i554 ], [ %conv.i.i558, %if.else175.i559 ]
  %conv181.i562 = trunc i32 %__rem.0.i561 to i16
  %arrayidx.i563 = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %dec292.i431
  %29 = ptrtoint ptr %arrayidx.i563 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv181.i562, ptr %arrayidx.i563, align 2
  %tobool.not.i564 = icmp eq i32 %dec292.i431, 0
  br i1 %tobool.not.i564, label %if.end179.i565.find_metapath.exit566_crit_edge, label %if.end179.i565.for.body.i435_crit_edge

if.end179.i565.for.body.i435_crit_edge:           ; preds = %if.end179.i565
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i435

if.end179.i565.find_metapath.exit566_crit_edge:   ; preds = %if.end179.i565
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_metapath.exit566

find_metapath.exit566:                            ; preds = %if.end179.i565.find_metapath.exit566_crit_edge, %if.end30.find_metapath.exit566_crit_edge
  %mp_list34 = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 1
  %30 = call ptr @memcpy(ptr %start_list, ptr %mp_list34, i32 20)
  %smin875 = call i32 @llvm.smin.i32(i32 %sub3, i32 0)
  br label %for.cond39

for.cond39:                                       ; preds = %for.body42.for.cond39_crit_edge, %find_metapath.exit566
  %mp_h.1.in = phi i32 [ %idxprom, %find_metapath.exit566 ], [ %mp_h.1, %for.body42.for.cond39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mp_h.1.in)
  %cmp40 = icmp sgt i32 %mp_h.1.in, 1
  br i1 %cmp40, label %for.body42, label %for.cond39.for.end49_crit_edge

for.cond39.for.end49_crit_edge:                   ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end49

for.body42:                                       ; preds = %for.cond39
  %mp_h.1 = add nsw i32 %mp_h.1.in, -1
  %arrayidx43 = getelementptr [10 x i16], ptr %start_list, i32 0, i32 %mp_h.1
  %31 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx43, align 2
  %tobool44.not = icmp eq i16 %32, 0
  br i1 %tobool44.not, label %for.body42.for.cond39_crit_edge, label %for.body42.for.end49_crit_edge

for.body42.for.end49_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end49

for.body42.for.cond39_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond39

for.end49:                                        ; preds = %for.body42.for.end49_crit_edge, %for.cond39.for.end49_crit_edge
  %mp_h.1.lcssa = phi i32 [ %mp_h.1, %for.body42.for.end49_crit_edge ], [ %smin875, %for.cond39.for.end49_crit_edge ]
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %33 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_no_addr.i, align 8
  %call.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %34, ptr noundef nonnull %dibh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool51.not = icmp eq i32 %call.i, 0
  br i1 %tobool51.not, label %if.end53, label %for.end49.cleanup268_crit_edge

for.end49.cleanup268_crit_edge:                   ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup268

if.end53:                                         ; preds = %for.end49
  %35 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dibh, align 4
  %37 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %mp, align 4
  %38 = ptrtoint ptr %i_height to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i_height, align 8
  %conv.i = zext i8 %39 to i32
  %sub.i567 = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i567)
  %cmp23.i.not.i = icmp eq i32 %sub.i567, 0
  br i1 %cmp23.i.not.i, label %lookup_metapath.exit.thread, label %if.end53.for.body.i.i_crit_edge

if.end53.for.body.i.i_crit_edge:                  ; preds = %if.end53
  br label %for.body.i.i

lookup_metapath.exit.thread:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %mp_aheight.i.i878 = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 3
  %40 = ptrtoint ptr %mp_aheight.i.i878 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %mp_aheight.i.i878, align 4
  br label %for.end66

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end53.for.body.i.i_crit_edge
  %x.addr.024.i.i = phi i32 [ %add.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end53.for.body.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %x.addr.024.i.i
  %41 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.addr.024.i.i)
  %cmp.i.i.i.i = icmp eq i32 %x.addr.024.i.i, 0
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %b_data.i.i.i.i, align 4
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i32 232, i32 24
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %44, i32 %..i.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %x.addr.024.i.i
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %46 to i32
  %add.ptr.i.i.i = getelementptr i64, ptr %add.ptr2.i.i.i.i, i32 %conv.i.i.i
  %47 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %tobool.not.i.i = icmp eq i64 %48, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.lookup_metapath.exit_crit_edge, label %if.end.i.i

for.body.i.i.lookup_metapath.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lookup_metapath.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  %add.i.i = add nuw i32 %x.addr.024.i.i, 1
  %arrayidx.i.i = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %add.i.i
  %call1.i.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 5, i64 noundef %48, ptr noundef %arrayidx.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %for.inc.i.i, label %if.end.i.i.out_metapath_crit_edge

if.end.i.i.out_metapath_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_metapath

for.inc.i.i:                                      ; preds = %if.end.i.i
  %exitcond.not.i.i = icmp eq i32 %add.i.i, %sub.i567
  br i1 %exitcond.not.i.i, label %for.inc.i.i.lookup_metapath.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.lookup_metapath.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lookup_metapath.exit

lookup_metapath.exit:                             ; preds = %for.inc.i.i.lookup_metapath.exit_crit_edge, %for.body.i.i.lookup_metapath.exit_crit_edge
  %x.addr.0.lcssa.i.i = phi i32 [ %sub.i567, %for.inc.i.i.lookup_metapath.exit_crit_edge ], [ %x.addr.024.i.i, %for.body.i.i.lookup_metapath.exit_crit_edge ]
  %add7.i.i = add i32 %x.addr.0.lcssa.i.i, 1
  %mp_aheight.i.i = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 3
  %49 = ptrtoint ptr %mp_aheight.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add7.i.i, ptr %mp_aheight.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.addr.0.lcssa.i.i)
  %cmp61833 = icmp sgt i32 %x.addr.0.lcssa.i.i, 0
  br i1 %cmp61833, label %for.body63.lr.ph, label %lookup_metapath.exit.for.end66_crit_edge

lookup_metapath.exit.for.end66_crit_edge:         ; preds = %lookup_metapath.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end66

for.body63.lr.ph:                                 ; preds = %lookup_metapath.exit
  %tobool6.not.i = icmp eq ptr %end_list.1, null
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  br label %for.body63

for.body63:                                       ; preds = %metapointer_range.exit.for.body63_crit_edge, %for.body63.lr.ph
  %mp_h.2834 = phi i32 [ 0, %for.body63.lr.ph ], [ %inc, %metapointer_range.exit.for.body63_crit_edge ]
  %arrayidx.i568 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %mp_h.2834
  %50 = ptrtoint ptr %arrayidx.i568 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i568, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mp_h.2834)
  %cmp.i.i = icmp eq i32 %mp_h.2834, 0
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_data.i.i, align 4
  %..i.i = select i1 %cmp.i.i, i32 232, i32 24
  %add.ptr2.i.i = getelementptr i8, ptr %53, i32 %..i.i
  %mul.i.i = shl nuw i32 %mp_h.2834, 1
  %bcmp.i.i = call i32 @bcmp(ptr %mp_list34, ptr nonnull %start_list, i32 %mul.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i569 = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i569, label %if.then.i572, label %for.body63.if.end.i_crit_edge

for.body63.if.end.i_crit_edge:                    ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i572:                                     ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %mp_h.2834, i32 %mp_h.1.lcssa)
  %cmp.i570 = icmp ult i32 %mp_h.2834, %mp_h.1.lcssa
  %arrayidx2.i = getelementptr i16, ptr %start_list, i32 %mp_h.2834
  %54 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx2.i, align 2
  %conv.i571 = zext i16 %55 to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr2.i.i, i32 %conv.i571
  %conv3.i = zext i1 %cmp.i570 to i32
  %add.ptr4.i = getelementptr i64, ptr %add.ptr.i, i32 %conv3.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i572, %for.body63.if.end.i_crit_edge
  %start.0 = phi ptr [ %add.ptr4.i, %if.then.i572 ], [ %add.ptr2.i.i, %for.body63.if.end.i_crit_edge ]
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 4
  %56 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %b_size.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %53, i32 %57
  br i1 %tobool6.not.i, label %if.end.i.metapointer_range.exit_crit_edge, label %land.lhs.true.i

if.end.i.metapointer_range.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %metapointer_range.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %bcmp.i40.i = call i32 @bcmp(ptr %mp_list34, ptr nonnull %end_list.1, i32 %mul.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i40.i)
  %tobool.not.i41.i = icmp eq i32 %bcmp.i40.i, 0
  br i1 %tobool.not.i41.i, label %if.then9.i, label %land.lhs.true.i.metapointer_range.exit_crit_edge

land.lhs.true.i.metapointer_range.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %metapointer_range.exit

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %mp_h.2834, i32 %end_aligned.1)
  %cmp10.i = icmp ult i32 %mp_h.2834, %end_aligned.1
  %arrayidx13.i = getelementptr i16, ptr %end_list.1, i32 %mp_h.2834
  %58 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx13.i, align 2
  %conv14.i573 = zext i16 %59 to i32
  %add.ptr15.i = getelementptr i64, ptr %add.ptr2.i.i, i32 %conv14.i573
  %conv17.i = zext i1 %cmp10.i to i32
  %add.ptr18.i = getelementptr i64, ptr %add.ptr15.i, i32 %conv17.i
  br label %metapointer_range.exit

metapointer_range.exit:                           ; preds = %if.then9.i, %land.lhs.true.i.metapointer_range.exit_crit_edge, %if.end.i.metapointer_range.exit_crit_edge
  %end.0 = phi ptr [ %add.ptr5.i, %if.end.i.metapointer_range.exit_crit_edge ], [ %add.ptr18.i, %if.then9.i ], [ %add.ptr5.i, %land.lhs.true.i.metapointer_range.exit_crit_edge ]
  %60 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_gl, align 4
  call fastcc void @gfs2_metapath_ra(ptr noundef %61, ptr noundef %start.0, ptr noundef %end.0)
  %inc = add nuw nsw i32 %mp_h.2834, 1
  %62 = ptrtoint ptr %mp_aheight.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mp_aheight.i.i, align 4
  %sub60 = add i32 %63, -1
  %cmp61 = icmp slt i32 %inc, %sub60
  br i1 %cmp61, label %metapointer_range.exit.for.body63_crit_edge, label %metapointer_range.exit.for.end66_crit_edge

metapointer_range.exit.for.end66_crit_edge:       ; preds = %metapointer_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end66

metapointer_range.exit.for.body63_crit_edge:      ; preds = %metapointer_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body63

for.end66:                                        ; preds = %metapointer_range.exit.for.end66_crit_edge, %lookup_metapath.exit.for.end66_crit_edge, %lookup_metapath.exit.thread
  %mp_aheight.i.i880 = phi ptr [ %mp_aheight.i.i, %lookup_metapath.exit.for.end66_crit_edge ], [ %mp_aheight.i.i878, %lookup_metapath.exit.thread ], [ %mp_aheight.i.i, %metapointer_range.exit.for.end66_crit_edge ]
  %.lcssa = phi i32 [ %add7.i.i, %lookup_metapath.exit.for.end66_crit_edge ], [ 1, %lookup_metapath.exit.thread ], [ %63, %metapointer_range.exit.for.end66_crit_edge ]
  %64 = ptrtoint ptr %i_height to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %i_height, align 8
  %conv69 = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %conv69)
  %cmp70 = icmp eq i32 %.lcssa, %conv69
  %. = select i1 %cmp70, i32 0, i32 2
  %call74 = call i32 @gfs2_rindex_update(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %for.end66.out_metapath_crit_edge

for.end66.out_metapath_crit_edge:                 ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_metapath

if.end77:                                         ; preds = %for.end66
  %call81 = call i32 @gfs2_quota_hold(ptr noundef %ip, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end77.out_metapath_crit_edge

if.end77.out_metapath_crit_edge:                  ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_metapath

if.end84:                                         ; preds = %if.end77
  %66 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %10, align 4
  %tobool6.not.i711 = icmp eq ptr %end_list.1, null
  %i_gl206 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %sd_inptrs.i642 = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 9
  %sd_diptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 8
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %i_res.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10
  %67 = ptrtoint ptr %i_res.i to i32
  %rs_rgd.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 1
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %i_depth.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 20
  %i_rw_mutex.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 13
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  br label %while.cond

while.cond.unreachabledefault:                    ; preds = %while.cond
  unreachable

while.cond:                                       ; preds = %while.cond.backedge, %if.end84
  %btotal.0 = phi i32 [ 0, %if.end84 ], [ %btotal.0.be, %while.cond.backedge ]
  %strip_h.0 = phi i32 [ %sub3, %if.end84 ], [ %strip_h.0.be, %while.cond.backedge ]
  %ret.0 = phi i32 [ 0, %if.end84 ], [ %ret.0.be, %while.cond.backedge ]
  %state.1 = phi i32 [ %., %if.end84 ], [ %state.1.be, %while.cond.backedge ]
  %mp_h.3 = phi i32 [ %sub3, %if.end84 ], [ %mp_h.3.be, %while.cond.backedge ]
  %prev_bnr.0 = phi i64 [ 0, %if.end84 ], [ %prev_bnr.0.be, %while.cond.backedge ]
  %68 = zext i32 %state.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %state.1, label %while.cond.unreachabledefault [
    i32 3, label %while.end
    i32 0, label %sw.bb
    i32 1, label %sw.bb146
    i32 2, label %sw.bb175
  ]

sw.bb:                                            ; preds = %while.cond
  %arrayidx88 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %mp_h.3
  %69 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx88, align 4
  %tobool89.not = icmp eq ptr %70, null
  br i1 %tobool89.not, label %if.then94, label %sw.bb.if.end95_crit_edge, !prof !79

sw.bb.if.end95_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then94:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_assert_withdraw_i(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.punch_hole, ptr noundef nonnull @.str, i32 noundef 1816, i1 noundef zeroext false) #12
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %sw.bb.if.end95_crit_edge
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %prev_bnr.0, i64 %72)
  %cmp100.not = icmp eq i64 %prev_bnr.0, %72
  br i1 %cmp100.not, label %if.then112, label %if.end95.if.end125_crit_edge, !prof !79

if.end95.if.end125_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end125

if.then112:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_assert_withdraw_i(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.punch_hole, ptr noundef nonnull @.str, i32 noundef 1818, i1 noundef zeroext false) #12
  %73 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %i_no_addr.i, align 8
  %75 = ptrtoint ptr %i_height to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %i_height, align 8
  %conv123 = zext i8 %76 to i32
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %sd_fsname, i64 noundef %74, i64 noundef %prev_bnr.0, i32 noundef %conv123, i32 noundef %strip_h.0, i32 noundef %mp_h.3) #17
  br label %if.end125

if.end125:                                        ; preds = %if.then112, %if.end95.if.end125_crit_edge
  %77 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %b_blocknr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mp_h.3)
  %tobool127.not = icmp eq i32 %mp_h.3, 0
  %conv128 = select i1 %tobool127.not, i16 4, i16 5
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 5
  %79 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %b_data.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %80, i32 0, i32 1
  %83 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mh_type.i, align 4
  %conv.i574 = trunc i32 %84 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %82)
  %cmp.not.i = icmp eq i32 %82, 18225520
  br i1 %cmp.not.i, label %if.end.i577, label %if.then.i576, !prof !75

if.then.i576:                                     ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #14
  %call.i575 = call i32 @gfs2_meta_check_ii(ptr noundef %3, ptr noundef %70, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.punch_hole, ptr noundef nonnull @.str, i32 noundef 1828) #12
  br label %gfs2_metatype_check_i.exit

if.end.i577:                                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_cmp2(i16 %conv128, i16 %conv.i574)
  %cmp5.not.i = icmp eq i16 %conv128, %conv.i574
  br i1 %cmp5.not.i, label %if.end.i577.if.end132_crit_edge, label %if.then13.i578, !prof !75

if.end.i577.if.end132_crit_edge:                  ; preds = %if.end.i577
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then13.i578:                                   ; preds = %if.end.i577
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = call i32 @gfs2_metatype_check_ii(ptr noundef %3, ptr noundef %70, i16 noundef zeroext %conv128, i16 noundef zeroext %conv.i574, ptr noundef nonnull @__func__.punch_hole, ptr noundef nonnull @.str, i32 noundef 1828) #12
  br label %gfs2_metatype_check_i.exit

gfs2_metatype_check_i.exit:                       ; preds = %if.then13.i578, %if.then.i576
  %retval.0.i = phi i32 [ %call.i575, %if.then.i576 ], [ %call14.i, %if.then13.i578 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool130.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool130.not, label %gfs2_metatype_check_i.exit.if.end132_crit_edge, label %gfs2_metatype_check_i.exit.out_crit_edge

gfs2_metatype_check_i.exit.out_crit_edge:         ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

gfs2_metatype_check_i.exit.if.end132_crit_edge:   ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.end132:                                        ; preds = %gfs2_metatype_check_i.exit.if.end132_crit_edge, %if.end.i577.if.end132_crit_edge
  %85 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx88, align 4
  %b_data.i.i581 = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %b_data.i.i581 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %b_data.i.i581, align 4
  %..i.i582 = select i1 %tobool127.not, i32 232, i32 24
  %add.ptr2.i.i583 = getelementptr i8, ptr %88, i32 %..i.i582
  %mul.i.i585 = shl i32 %mp_h.3, 1
  %bcmp.i.i586 = call i32 @bcmp(ptr %mp_list34, ptr nonnull %start_list, i32 %mul.i.i585) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i586)
  %tobool.not.i.i587 = icmp eq i32 %bcmp.i.i586, 0
  br i1 %tobool.not.i.i587, label %if.then.i594, label %if.end132.if.end.i598_crit_edge

if.end132.if.end.i598_crit_edge:                  ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i598

if.then.i594:                                     ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %mp_h.3, i32 %mp_h.1.lcssa)
  %cmp.i588 = icmp ult i32 %mp_h.3, %mp_h.1.lcssa
  %arrayidx2.i589 = getelementptr i16, ptr %start_list, i32 %mp_h.3
  %89 = ptrtoint ptr %arrayidx2.i589 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx2.i589, align 2
  %conv.i590 = zext i16 %90 to i32
  %add.ptr.i591 = getelementptr i64, ptr %add.ptr2.i.i583, i32 %conv.i590
  %conv3.i592 = zext i1 %cmp.i588 to i32
  %add.ptr4.i593 = getelementptr i64, ptr %add.ptr.i591, i32 %conv3.i592
  br label %if.end.i598

if.end.i598:                                      ; preds = %if.then.i594, %if.end132.if.end.i598_crit_edge
  %start.1 = phi ptr [ %add.ptr4.i593, %if.then.i594 ], [ %add.ptr2.i.i583, %if.end132.if.end.i598_crit_edge ]
  %b_size.i595 = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 4
  %91 = ptrtoint ptr %b_size.i595 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %b_size.i595, align 8
  %add.ptr5.i596 = getelementptr i8, ptr %88, i32 %92
  br i1 %tobool6.not.i711, label %if.end.i598.metapointer_range.exit606_crit_edge, label %land.lhs.true.i601

if.end.i598.metapointer_range.exit606_crit_edge:  ; preds = %if.end.i598
  call void @__sanitizer_cov_trace_pc() #14
  br label %metapointer_range.exit606

land.lhs.true.i601:                               ; preds = %if.end.i598
  %bcmp.i40.i599 = call i32 @bcmp(ptr %mp_list34, ptr nonnull %end_list.1, i32 %mul.i.i585) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i40.i599)
  %tobool.not.i41.i600 = icmp eq i32 %bcmp.i40.i599, 0
  br i1 %tobool.not.i41.i600, label %if.then9.i605, label %land.lhs.true.i601.metapointer_range.exit606_crit_edge

land.lhs.true.i601.metapointer_range.exit606_crit_edge: ; preds = %land.lhs.true.i601
  call void @__sanitizer_cov_trace_pc() #14
  br label %metapointer_range.exit606

if.then9.i605:                                    ; preds = %land.lhs.true.i601
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13.i602 = getelementptr i16, ptr %end_list.1, i32 %mp_h.3
  %93 = ptrtoint ptr %arrayidx13.i602 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx13.i602, align 2
  %conv14.i603 = zext i16 %94 to i32
  %add.ptr15.i604 = getelementptr i64, ptr %add.ptr2.i.i583, i32 %conv14.i603
  br label %metapointer_range.exit606

metapointer_range.exit606:                        ; preds = %if.then9.i605, %land.lhs.true.i601.metapointer_range.exit606_crit_edge, %if.end.i598.metapointer_range.exit606_crit_edge
  %end.1 = phi ptr [ %add.ptr5.i596, %if.end.i598.metapointer_range.exit606_crit_edge ], [ %add.ptr15.i604, %if.then9.i605 ], [ %add.ptr5.i596, %land.lhs.true.i601.metapointer_range.exit606_crit_edge ]
  %95 = ptrtoint ptr %i_height to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %i_height, align 8
  %conv137 = zext i8 %96 to i32
  %sub138 = add nsw i32 %conv137, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %mp_h.3, i32 %sub138)
  %cmp139 = icmp ne i32 %mp_h.3, %sub138
  %97 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %98, i32 0, i32 33
  %99 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info.i.i, align 16
  %cmp312.i = icmp ult ptr %start.1, %end.1
  %sd_log_thresh2.i = getelementptr inbounds %struct.gfs2_sbd, ptr %100, i32 0, i32 87
  %sd_inptrs.i607 = getelementptr inbounds %struct.gfs2_sbd, ptr %100, i32 0, i32 9
  %sub.ptr.lhs.cast.i = ptrtoint ptr %end.1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %start.1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 3
  %conv105.i = zext i1 %cmp139 to i32
  br label %more_rgrps.i

more_rgrps.i:                                     ; preds = %if.end144.i, %metapointer_range.exit606
  %btotal.1 = phi i32 [ %btotal.0, %metapointer_range.exit606 ], [ %btotal.5, %if.end144.i ]
  %buf_in_tr.0.off0.i = phi i1 [ false, %metapointer_range.exit606 ], [ %buf_in_tr.4.off0.i, %if.end144.i ]
  %101 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %10, align 4
  %tobool.i.not.i = icmp eq ptr %102, null
  br i1 %tobool.i.not.i, label %more_rgrps.i.if.end14.i_crit_edge, label %if.then.i608

more_rgrps.i.if.end14.i_crit_edge:                ; preds = %more_rgrps.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

if.then.i608:                                     ; preds = %more_rgrps.i
  %call2.i = call ptr @gfs2_glock2rgrp(ptr noundef nonnull %102) #12
  %103 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %10, align 4
  %gl_lockref.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %104, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i.i) #12
  %105 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task.i.i, align 8
  %thread_pid.i.i.i = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 78
  %109 = ptrtoint ptr %thread_pid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %thread_pid.i.i.i, align 16
  %gl_holders.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %104, i32 0, i32 6
  %111 = ptrtoint ptr %gl_holders.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %gh.029.i.i = load ptr, ptr %gl_holders.i.i, align 4
  %cmp.not30.i.i = icmp eq ptr %gh.029.i.i, %gl_holders.i.i
  br i1 %cmp.not30.i.i, label %if.then.i608.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge, label %if.then.i608.for.body.i.i610_crit_edge

if.then.i608.for.body.i.i610_crit_edge:           ; preds = %if.then.i608
  br label %for.body.i.i610

if.then.i608.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge: ; preds = %if.then.i608
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_is_locked_by_me.exit.thread.i

for.body.i.i610:                                  ; preds = %for.inc.i.i613.for.body.i.i610_crit_edge, %if.then.i608.for.body.i.i610_crit_edge
  %gh.031.i.i = phi ptr [ %gh.0.i.i, %for.inc.i.i613.for.body.i.i610_crit_edge ], [ %gh.029.i.i, %if.then.i608.for.body.i.i610_crit_edge ]
  %gh_iflags.i.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i.i, i32 0, i32 6
  %112 = ptrtoint ptr %gh_iflags.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %gh_iflags.i.i, align 4
  %114 = and i32 %113, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool.not.i.i609 = icmp eq i32 %114, 0
  br i1 %tobool.not.i.i609, label %for.body.i.i610.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge, label %if.end.i.i611

for.body.i.i610.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge: ; preds = %for.body.i.i610
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_is_locked_by_me.exit.thread.i

if.end.i.i611:                                    ; preds = %for.body.i.i610
  %115 = ptrtoint ptr %gh_iflags.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %gh_iflags.i.i, align 4
  %117 = and i32 %116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool6.not.i.i = icmp eq i32 %117, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end.i.i611.for.inc.i.i613_crit_edge

if.end.i.i611.for.inc.i.i613_crit_edge:           ; preds = %if.end.i.i611
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i613

if.end8.i.i:                                      ; preds = %if.end.i.i611
  %gh_owner_pid.i.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i.i, i32 0, i32 2
  %118 = ptrtoint ptr %gh_owner_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %gh_owner_pid.i.i, align 4
  %cmp9.i.i = icmp eq ptr %119, %110
  br i1 %cmp9.i.i, label %gfs2_glock_is_locked_by_me.exit.i, label %if.end8.i.i.for.inc.i.i613_crit_edge

if.end8.i.i.for.inc.i.i613_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i613

for.inc.i.i613:                                   ; preds = %if.end8.i.i.for.inc.i.i613_crit_edge, %if.end.i.i611.for.inc.i.i613_crit_edge
  %120 = ptrtoint ptr %gh.031.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %gh.0.i.i = load ptr, ptr %gh.031.i.i, align 4
  %cmp.not.i.i612 = icmp eq ptr %gh.0.i.i, %gl_holders.i.i
  br i1 %cmp.not.i.i612, label %for.inc.i.i613.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge, label %for.inc.i.i613.for.body.i.i610_crit_edge

for.inc.i.i613.for.body.i.i610_crit_edge:         ; preds = %for.inc.i.i613
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i610

for.inc.i.i613.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge: ; preds = %for.inc.i.i613
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_is_locked_by_me.exit.thread.i

gfs2_glock_is_locked_by_me.exit.thread.i:         ; preds = %for.inc.i.i613.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge, %for.body.i.i610.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge, %if.then.i608.gfs2_glock_is_locked_by_me.exit.thread.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i.i) #12
  br label %if.then10.i

gfs2_glock_is_locked_by_me.exit.i:                ; preds = %if.end8.i.i
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i.i) #12
  %tobool.not.i614 = icmp eq ptr %gh.031.i.i, null
  br i1 %tobool.not.i614, label %gfs2_glock_is_locked_by_me.exit.i.if.then10.i_crit_edge, label %gfs2_glock_is_locked_by_me.exit.i.if.end14.i_crit_edge, !prof !79

gfs2_glock_is_locked_by_me.exit.i.if.end14.i_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i

gfs2_glock_is_locked_by_me.exit.i.if.then10.i_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10.i

if.then10.i:                                      ; preds = %gfs2_glock_is_locked_by_me.exit.i.if.then10.i_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread.i
  call void @gfs2_assert_withdraw_i(ptr noundef %100, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.sweep_bh_for_rgrps, ptr noundef nonnull @.str, i32 noundef 1461, i1 noundef zeroext false) #12
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then10.i, %gfs2_glock_is_locked_by_me.exit.i.if.end14.i_crit_edge, %more_rgrps.i.if.end14.i_crit_edge
  %rgd.0.i = phi ptr [ null, %more_rgrps.i.if.end14.i_crit_edge ], [ %call2.i, %if.then10.i ], [ %call2.i, %gfs2_glock_is_locked_by_me.exit.i.if.end14.i_crit_edge ]
  br i1 %cmp312.i, label %if.end14.i.for.body.i615_crit_edge, label %if.end14.i.sweep_bh_for_rgrps.exit_crit_edge

if.end14.i.sweep_bh_for_rgrps.exit_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sweep_bh_for_rgrps.exit

if.end14.i.for.body.i615_crit_edge:               ; preds = %if.end14.i
  br label %for.body.i615

for.body.i615:                                    ; preds = %for.inc.i.for.body.i615_crit_edge, %if.end14.i.for.body.i615_crit_edge
  %btotal.2 = phi i32 [ %btotal.3, %for.inc.i.for.body.i615_crit_edge ], [ %btotal.1, %if.end14.i.for.body.i615_crit_edge ]
  %buf_in_tr.1.off0324.i = phi i1 [ %buf_in_tr.2.off0.i, %for.inc.i.for.body.i615_crit_edge ], [ %buf_in_tr.0.off0.i, %if.end14.i.for.body.i615_crit_edge ]
  %blen.0322.i = phi i64 [ %blen.1.i, %for.inc.i.for.body.i615_crit_edge ], [ 0, %if.end14.i.for.body.i615_crit_edge ]
  %bstart.0320.i = phi i64 [ %bstart.1.i, %for.inc.i.for.body.i615_crit_edge ], [ 0, %if.end14.i.for.body.i615_crit_edge ]
  %blks_outside_rgrp.0318.i = phi i32 [ %blks_outside_rgrp.1.i, %for.inc.i.for.body.i615_crit_edge ], [ 0, %if.end14.i.for.body.i615_crit_edge ]
  %p.0315.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i615_crit_edge ], [ %start.1, %if.end14.i.for.body.i615_crit_edge ]
  %rgd.1313.i = phi ptr [ %rgd.3.i, %for.inc.i.for.body.i615_crit_edge ], [ %rgd.0.i, %if.end14.i.for.body.i615_crit_edge ]
  %121 = ptrtoint ptr %p.0315.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %p.0315.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %122)
  %tobool15.not.i = icmp eq i64 %122, 0
  br i1 %tobool15.not.i, label %for.body.i615.for.inc.i_crit_edge, label %if.end17.i

for.body.i615.for.inc.i_crit_edge:                ; preds = %for.body.i615
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end17.i:                                       ; preds = %for.body.i615
  %tobool18.not.i = icmp eq ptr %rgd.1313.i, null
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end17.i
  %rd_data0.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.1313.i, i32 0, i32 3
  %123 = ptrtoint ptr %rd_data0.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %rd_data0.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %124, i64 %122)
  %cmp.not.i241.i = icmp ugt i64 %124, %122
  br i1 %cmp.not.i241.i, label %if.then19.i.if.then22.i_crit_edge, label %rgrp_contains_block.exit.i

if.then19.i.if.then22.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

rgrp_contains_block.exit.i:                       ; preds = %if.then19.i
  %rd_data.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.1313.i, i32 0, i32 5
  %125 = ptrtoint ptr %rd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rd_data.i.i, align 4
  %conv.i.i616 = zext i32 %126 to i64
  %add.i.i617 = add i64 %124, %conv.i.i616
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i617, i64 %122)
  %cmp2.i.not.i = icmp ugt i64 %add.i.i617, %122
  br i1 %cmp2.i.not.i, label %rgrp_contains_block.exit.i.if.end46.i_crit_edge, label %rgrp_contains_block.exit.i.if.then22.i_crit_edge

rgrp_contains_block.exit.i.if.then22.i_crit_edge: ; preds = %rgrp_contains_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22.i

rgrp_contains_block.exit.i.if.end46.i_crit_edge:  ; preds = %rgrp_contains_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

if.then22.i:                                      ; preds = %rgrp_contains_block.exit.i.if.then22.i_crit_edge, %if.then19.i.if.then22.i_crit_edge
  %inc.i = add i32 %blks_outside_rgrp.0318.i, 1
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end17.i
  %call24.i = call ptr @gfs2_blk2rgrpd(ptr noundef %100, i64 noundef %122, i1 noundef zeroext true) #12
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.else.i.sweep_bh_for_rgrps.exit_crit_edge, label %if.end35.i, !prof !79

if.else.i.sweep_bh_for_rgrps.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sweep_bh_for_rgrps.exit

if.end35.i:                                       ; preds = %if.else.i
  %rd_gl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call24.i, i32 0, i32 1
  %127 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rd_gl.i, align 4
  %129 = call ptr @llvm.returnaddress(i32 0) #12
  %130 = ptrtoint ptr %129 to i32
  call void @__gfs2_holder_init(ptr noundef %128, i32 noundef 1, i16 noundef zeroext 32, ptr noundef nonnull %rd_gh, i32 noundef %130) #12
  %call.i.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %rd_gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i242.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i242.i, label %if.end39.i, label %gfs2_glock_nq_init.exit.i

gfs2_glock_nq_init.exit.i:                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_holder_uninit(ptr noundef nonnull %rd_gh) #12
  br label %sweep_bh_for_rgrps.exit

if.end39.i:                                       ; preds = %if.end35.i
  %131 = ptrtoint ptr %i_res.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %i_res.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %67)
  %cmp.i.not.i = icmp eq i32 %132, %67
  br i1 %cmp.i.not.i, label %if.end39.i.if.end46.i_crit_edge, label %land.lhs.true.i618

if.end39.i.if.end46.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

land.lhs.true.i618:                               ; preds = %if.end39.i
  %133 = ptrtoint ptr %rs_rgd.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rs_rgd.i, align 4
  %cmp42.i = icmp eq ptr %call24.i, %134
  br i1 %cmp42.i, label %if.then43.i, label %land.lhs.true.i618.if.end46.i_crit_edge

land.lhs.true.i618.if.end46.i_crit_edge:          ; preds = %land.lhs.true.i618
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

if.then43.i:                                      ; preds = %land.lhs.true.i618
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_rs_deltree(ptr noundef %i_res.i) #12
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %land.lhs.true.i618.if.end46.i_crit_edge, %if.end39.i.if.end46.i_crit_edge, %rgrp_contains_block.exit.i.if.end46.i_crit_edge
  %rgd.2.i = phi ptr [ %rgd.1313.i, %rgrp_contains_block.exit.i.if.end46.i_crit_edge ], [ %call24.i, %if.then43.i ], [ %call24.i, %land.lhs.true.i618.if.end46.i_crit_edge ], [ %call24.i, %if.end39.i.if.end46.i_crit_edge ]
  %135 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i619 = and i32 %135, -16384
  %136 = inttoptr i32 %and.i.i619 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %138, i32 0, i32 146
  %139 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %journal_info.i, align 4
  %cmp48.i = icmp eq ptr %140, null
  br i1 %cmp48.i, label %if.then49.i, label %if.end46.i.if.end79.i_crit_edge

if.end46.i.if.end79.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79.i

if.then49.i:                                      ; preds = %if.end46.i
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.2.i, i32 0, i32 4
  %141 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rd_length.i, align 8
  %add50.i = add i32 %142, 2
  %143 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %i_blocks.i.i, align 8
  %145 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %146, i32 0, i32 33
  %147 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %sb_bsize_shift.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %148, i32 0, i32 5, i32 5
  %149 = ptrtoint ptr %sb_bsize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sb_bsize_shift.i.i, align 4
  %sub.i.i = add i32 %150, -9
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shr.i.i620 = lshr i64 %144, %sh_prom.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh2.i, i32 noundef 4) #12
  %151 = ptrtoint ptr %sd_log_thresh2.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %sd_log_thresh2.i, align 4
  %conv.i621 = sext i32 %152 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i620, i64 %conv.i621)
  %cmp54.i = icmp ugt i64 %shr.i.i620, %conv.i621
  br i1 %cmp54.i, label %if.then56.i, label %if.else60.i

if.then56.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i239.i = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh2.i, i32 noundef 4) #12
  %153 = ptrtoint ptr %sd_log_thresh2.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %sd_log_thresh2.i, align 4
  br label %if.end64.i

if.else60.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #14
  %155 = trunc i64 %shr.i.i620 to i32
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.else60.i, %if.then56.i
  %call58.pn.i = phi i32 [ %154, %if.then56.i ], [ %155, %if.else60.i ]
  %jblocks_rqsted.0.i = add i32 %add50.i, %call58.pn.i
  br i1 %cmp139, label %if.then66.i, label %if.else68.i

if.then66.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  %add67.i = add i32 %jblocks_rqsted.0.i, %sub.ptr.div.i
  br label %if.end73.i

if.else68.i:                                      ; preds = %if.end64.i
  %156 = ptrtoint ptr %i_depth.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %i_depth.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool69.not.i = icmp eq i8 %157, 0
  br i1 %tobool69.not.i, label %if.else68.i.if.end73.i_crit_edge, label %if.then70.i

if.else68.i.if.end73.i_crit_edge:                 ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end73.i

if.then70.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  %158 = ptrtoint ptr %sd_inptrs.i607 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %sd_inptrs.i607, align 4
  %add71.i = add i32 %159, %jblocks_rqsted.0.i
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then70.i, %if.else68.i.if.end73.i_crit_edge, %if.then66.i
  %revokes.0.i = phi i32 [ %add67.i, %if.then66.i ], [ %add71.i, %if.then70.i ], [ %jblocks_rqsted.0.i, %if.else68.i.if.end73.i_crit_edge ]
  %call74.i = call i32 @gfs2_trans_begin(ptr noundef %100, i32 noundef %jblocks_rqsted.0.i, i32 noundef %revokes.0.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %cleanup.thread.i, label %if.end73.i.sweep_bh_for_rgrps.exit_crit_edge

if.end73.i.sweep_bh_for_rgrps.exit_crit_edge:     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sweep_bh_for_rgrps.exit

cleanup.thread.i:                                 ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @down_write(ptr noundef %i_rw_mutex.i) #12
  br label %if.end79.i

if.end79.i:                                       ; preds = %cleanup.thread.i, %if.end46.i.if.end79.i_crit_edge
  %160 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %task.i, align 8
  %journal_info82.i = getelementptr inbounds %struct.task_struct, ptr %161, i32 0, i32 146
  %162 = ptrtoint ptr %journal_info82.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %journal_info82.i, align 4
  %tr_num_buf_new.i = getelementptr inbounds %struct.gfs2_trans, ptr %163, i32 0, i32 5
  %164 = ptrtoint ptr %tr_num_buf_new.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %tr_num_buf_new.i, align 4
  %add84.i = add i32 %165, 3
  %call.i.i240.i = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh2.i, i32 noundef 4) #12
  %166 = ptrtoint ptr %sd_log_thresh2.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %sd_log_thresh2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add84.i, i32 %167)
  %cmp87.not.i = icmp ult i32 %add84.i, %167
  br i1 %cmp87.not.i, label %if.end94.i, label %if.then89.i

if.then89.i:                                      ; preds = %if.end79.i
  %inc90.i = add i32 %blks_outside_rgrp.0318.i, 1
  br i1 %buf_in_tr.1.off0324.i, label %if.then89.i.for.end.i_crit_edge, label %if.then89.i.land.lhs.true123.i_crit_edge

if.then89.i.land.lhs.true123.i_crit_edge:         ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true123.i

if.then89.i.for.end.i_crit_edge:                  ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end94.i:                                       ; preds = %if.end79.i
  %168 = ptrtoint ptr %i_gl206 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %i_gl206, align 4
  call void @gfs2_trans_add_meta(ptr noundef %169, ptr noundef %86) #12
  %170 = ptrtoint ptr %p.0315.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 0, ptr %p.0315.i, align 8
  %add95.i = add i64 %bstart.0320.i, %blen.0322.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add95.i, i64 %122)
  %cmp96.i = icmp eq i64 %add95.i, %122
  br i1 %cmp96.i, label %if.then98.i, label %if.end100.i

if.then98.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc99.i = add i64 %blen.0322.i, 1
  br label %for.inc.i

if.end100.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bstart.0320.i)
  %tobool101.not.i = icmp eq i64 %bstart.0320.i, 0
  br i1 %tobool101.not.i, label %if.end100.i.for.inc.i_crit_edge, label %if.then102.i

if.end100.i.for.inc.i_crit_edge:                  ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then102.i:                                     ; preds = %if.end100.i
  %conv103.i = trunc i64 %blen.0322.i to i32
  call void @__gfs2_free_blocks(ptr noundef %ip, ptr noundef nonnull %rgd.2.i, i64 noundef %bstart.0320.i, i32 noundef %conv103.i, i32 noundef %conv105.i) #12
  %conv108.i = add i32 %btotal.2, %conv103.i
  %sub.i622 = sub i64 0, %blen.0322.i
  %171 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i244.i = zext i8 %172 to i32
  %sub.i245.i = add nsw i32 %conv.i244.i, -9
  %sh_prom.i246.i = zext i32 %sub.i245.i to i64
  %shl.i.i = shl i64 %sub.i622, %sh_prom.i246.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shl.i.i)
  %cmp.i247.i = icmp sgt i64 %shl.i.i, -1
  br i1 %cmp.i247.i, label %if.then102.i.gfs2_add_inode_blocks.exit.i_crit_edge, label %lor.rhs.i.i

if.then102.i.gfs2_add_inode_blocks.exit.i_crit_edge: ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_add_inode_blocks.exit.i

lor.rhs.i.i:                                      ; preds = %if.then102.i
  %173 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %i_blocks.i.i, align 8
  %sub2.i.i = sub i64 0, %shl.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %174, i64 %sub2.i.i)
  %cmp3.i.i = icmp ult i64 %174, %sub2.i.i
  br i1 %cmp3.i.i, label %if.then.i251.i, label %lor.rhs.i.i.gfs2_add_inode_blocks.exit.i_crit_edge, !prof !79

lor.rhs.i.i.gfs2_add_inode_blocks.exit.i_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_add_inode_blocks.exit.i

if.then.i251.i:                                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i250.i = getelementptr inbounds %struct.super_block, ptr %176, i32 0, i32 33
  %177 = ptrtoint ptr %s_fs_info.i.i250.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %s_fs_info.i.i250.i, align 16
  call void @gfs2_assert_i(ptr noundef %178) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !83
  unreachable

gfs2_add_inode_blocks.exit.i:                     ; preds = %lor.rhs.i.i.gfs2_add_inode_blocks.exit.i_crit_edge, %if.then102.i.gfs2_add_inode_blocks.exit.i_crit_edge
  %179 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %i_blocks.i.i, align 8
  %add.i252.i = add i64 %180, %shl.i.i
  store i64 %add.i252.i, ptr %i_blocks.i.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %gfs2_add_inode_blocks.exit.i, %if.end100.i.for.inc.i_crit_edge, %if.then98.i, %if.then22.i, %for.body.i615.for.inc.i_crit_edge
  %btotal.3 = phi i32 [ %btotal.2, %for.body.i615.for.inc.i_crit_edge ], [ %btotal.2, %if.then98.i ], [ %btotal.2, %if.end100.i.for.inc.i_crit_edge ], [ %conv108.i, %gfs2_add_inode_blocks.exit.i ], [ %btotal.2, %if.then22.i ]
  %rgd.3.i = phi ptr [ %rgd.1313.i, %for.body.i615.for.inc.i_crit_edge ], [ %rgd.2.i, %if.then98.i ], [ %rgd.2.i, %if.end100.i.for.inc.i_crit_edge ], [ %rgd.2.i, %gfs2_add_inode_blocks.exit.i ], [ %rgd.1313.i, %if.then22.i ]
  %blks_outside_rgrp.1.i = phi i32 [ %blks_outside_rgrp.0318.i, %for.body.i615.for.inc.i_crit_edge ], [ %blks_outside_rgrp.0318.i, %if.then98.i ], [ %blks_outside_rgrp.0318.i, %if.end100.i.for.inc.i_crit_edge ], [ %blks_outside_rgrp.0318.i, %gfs2_add_inode_blocks.exit.i ], [ %inc.i, %if.then22.i ]
  %bstart.1.i = phi i64 [ %bstart.0320.i, %for.body.i615.for.inc.i_crit_edge ], [ %bstart.0320.i, %if.then98.i ], [ %122, %if.end100.i.for.inc.i_crit_edge ], [ %122, %gfs2_add_inode_blocks.exit.i ], [ %bstart.0320.i, %if.then22.i ]
  %blen.1.i = phi i64 [ %blen.0322.i, %for.body.i615.for.inc.i_crit_edge ], [ %inc99.i, %if.then98.i ], [ 1, %if.end100.i.for.inc.i_crit_edge ], [ 1, %gfs2_add_inode_blocks.exit.i ], [ %blen.0322.i, %if.then22.i ]
  %buf_in_tr.2.off0.i = phi i1 [ %buf_in_tr.1.off0324.i, %for.body.i615.for.inc.i_crit_edge ], [ true, %if.then98.i ], [ true, %if.end100.i.for.inc.i_crit_edge ], [ true, %gfs2_add_inode_blocks.exit.i ], [ %buf_in_tr.1.off0324.i, %if.then22.i ]
  %incdec.ptr.i = getelementptr i64, ptr %p.0315.i, i32 1
  %cmp.i623 = icmp ult ptr %incdec.ptr.i, %end.1
  br i1 %cmp.i623, label %for.inc.i.for.body.i615_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.for.body.i615_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i615

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.then89.i.for.end.i_crit_edge
  %btotal.4 = phi i32 [ %btotal.2, %if.then89.i.for.end.i_crit_edge ], [ %btotal.3, %for.inc.i.for.end.i_crit_edge ]
  %bstart.0302.i = phi i64 [ %bstart.0320.i, %if.then89.i.for.end.i_crit_edge ], [ %bstart.1.i, %for.inc.i.for.end.i_crit_edge ]
  %blen.0297.i = phi i64 [ %blen.0322.i, %if.then89.i.for.end.i_crit_edge ], [ %blen.1.i, %for.inc.i.for.end.i_crit_edge ]
  %buf_in_tr.1.off0292.i = phi i1 [ true, %if.then89.i.for.end.i_crit_edge ], [ %buf_in_tr.2.off0.i, %for.inc.i.for.end.i_crit_edge ]
  %rgd.4.i = phi ptr [ %rgd.2.i, %if.then89.i.for.end.i_crit_edge ], [ %rgd.3.i, %for.inc.i.for.end.i_crit_edge ]
  %blks_outside_rgrp.2.i = phi i32 [ %inc90.i, %if.then89.i.for.end.i_crit_edge ], [ %blks_outside_rgrp.1.i, %for.inc.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bstart.0302.i)
  %tobool111.not.i = icmp eq i64 %bstart.0302.i, 0
  br i1 %tobool111.not.i, label %for.end.i.land.lhs.true123.i_crit_edge, label %if.then112.i

for.end.i.land.lhs.true123.i_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true123.i

if.then112.i:                                     ; preds = %for.end.i
  %conv113.i = trunc i64 %blen.0297.i to i32
  call void @__gfs2_free_blocks(ptr noundef %ip, ptr noundef %rgd.4.i, i64 noundef %bstart.0302.i, i32 noundef %conv113.i, i32 noundef %conv105.i) #12
  %conv118.i624 = add i32 %btotal.4, %conv113.i
  %sub120.i = sub i64 0, %blen.0297.i
  %181 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i254.i = zext i8 %182 to i32
  %sub.i255.i = add nsw i32 %conv.i254.i, -9
  %sh_prom.i256.i = zext i32 %sub.i255.i to i64
  %shl.i257.i = shl i64 %sub120.i, %sh_prom.i256.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %shl.i257.i)
  %cmp.i258.i = icmp sgt i64 %shl.i257.i, -1
  br i1 %cmp.i258.i, label %if.then112.i.gfs2_add_inode_blocks.exit268.i_crit_edge, label %lor.rhs.i262.i

if.then112.i.gfs2_add_inode_blocks.exit268.i_crit_edge: ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_add_inode_blocks.exit268.i

lor.rhs.i262.i:                                   ; preds = %if.then112.i
  %183 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %i_blocks.i.i, align 8
  %sub2.i260.i = sub i64 0, %shl.i257.i
  call void @__sanitizer_cov_trace_cmp8(i64 %184, i64 %sub2.i260.i)
  %cmp3.i261.i = icmp ult i64 %184, %sub2.i260.i
  br i1 %cmp3.i261.i, label %if.then.i265.i, label %lor.rhs.i262.i.gfs2_add_inode_blocks.exit268.i_crit_edge, !prof !79

lor.rhs.i262.i.gfs2_add_inode_blocks.exit268.i_crit_edge: ; preds = %lor.rhs.i262.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_add_inode_blocks.exit268.i

if.then.i265.i:                                   ; preds = %lor.rhs.i262.i
  call void @__sanitizer_cov_trace_pc() #14
  %185 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i264.i = getelementptr inbounds %struct.super_block, ptr %186, i32 0, i32 33
  %187 = ptrtoint ptr %s_fs_info.i.i264.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %s_fs_info.i.i264.i, align 16
  call void @gfs2_assert_i(ptr noundef %188) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !83
  unreachable

gfs2_add_inode_blocks.exit268.i:                  ; preds = %lor.rhs.i262.i.gfs2_add_inode_blocks.exit268.i_crit_edge, %if.then112.i.gfs2_add_inode_blocks.exit268.i_crit_edge
  %189 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %i_blocks.i.i, align 8
  %add.i267.i = add i64 %190, %shl.i257.i
  store i64 %add.i267.i, ptr %i_blocks.i.i, align 8
  br label %land.lhs.true123.i

land.lhs.true123.i:                               ; preds = %gfs2_add_inode_blocks.exit268.i, %for.end.i.land.lhs.true123.i_crit_edge, %if.then89.i.land.lhs.true123.i_crit_edge
  %btotal.5 = phi i32 [ %btotal.4, %for.end.i.land.lhs.true123.i_crit_edge ], [ %conv118.i624, %gfs2_add_inode_blocks.exit268.i ], [ %btotal.2, %if.then89.i.land.lhs.true123.i_crit_edge ]
  %buf_in_tr.1.off0291.i = phi i1 [ %buf_in_tr.1.off0292.i, %for.end.i.land.lhs.true123.i_crit_edge ], [ %buf_in_tr.1.off0292.i, %gfs2_add_inode_blocks.exit268.i ], [ false, %if.then89.i.land.lhs.true123.i_crit_edge ]
  %blks_outside_rgrp.3.i = phi i32 [ %blks_outside_rgrp.2.i, %for.end.i.land.lhs.true123.i_crit_edge ], [ %blks_outside_rgrp.2.i, %gfs2_add_inode_blocks.exit268.i ], [ %inc90.i, %if.then89.i.land.lhs.true123.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blks_outside_rgrp.3.i)
  %tobool124.not.i = icmp eq i32 %blks_outside_rgrp.3.i, 0
  br i1 %tobool124.not.i, label %land.lhs.true123.i.sweep_bh_for_rgrps.exit_crit_edge, label %if.then125.i

land.lhs.true123.i.sweep_bh_for_rgrps.exit_crit_edge: ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sweep_bh_for_rgrps.exit

if.then125.i:                                     ; preds = %land.lhs.true123.i
  %191 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i269.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i269.i to ptr
  %task127.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %task127.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %task127.i, align 8
  %journal_info128.i = getelementptr inbounds %struct.task_struct, ptr %194, i32 0, i32 146
  %195 = ptrtoint ptr %journal_info128.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %journal_info128.i, align 4
  %tobool129.not.i = icmp eq ptr %196, null
  br i1 %tobool129.not.i, label %if.then125.i.if.end144.i_crit_edge, label %if.then130.i

if.then125.i.if.end144.i_crit_edge:               ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end144.i

if.then130.i:                                     ; preds = %if.then125.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #12
  %197 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i, align 4, !annotation !74
  %198 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %i_no_addr.i, align 8
  %call.i270.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %199, ptr noundef nonnull %dibh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270.i)
  %tobool132.not.i = icmp eq i32 %call.i270.i, 0
  br i1 %tobool132.not.i, label %if.end134.i, label %cleanup141.i

if.end134.i:                                      ; preds = %if.then130.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp137.i) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp137.i, ptr noundef %ip) #12
  %200 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp137.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp137.i) #12
  %201 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %202 = ptrtoint ptr %i_gl206 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %i_gl206, align 4
  %204 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dibh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %203, ptr noundef %205) #12
  %206 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dibh.i, align 4
  %b_data.i625 = getelementptr inbounds %struct.buffer_head, ptr %207, i32 0, i32 5
  %208 = ptrtoint ptr %b_data.i625 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %b_data.i625, align 4
  call void @gfs2_dinode_out(ptr noundef %ip, ptr noundef %209) #12
  %210 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i271.i = icmp eq ptr %211, null
  br i1 %tobool.not.i271.i, label %if.end134.i.cleanup141.thread.i_crit_edge, label %if.then.i272.i

if.end134.i.cleanup141.thread.i_crit_edge:        ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup141.thread.i

if.then.i272.i:                                   ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %211) #12
  br label %cleanup141.thread.i

cleanup141.thread.i:                              ; preds = %if.then.i272.i, %if.end134.i.cleanup141.thread.i_crit_edge
  call void @up_write(ptr noundef %i_rw_mutex.i) #12
  call void @gfs2_trans_end(ptr noundef %100) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #12
  br label %if.end144.i

cleanup141.i:                                     ; preds = %if.then130.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #12
  br label %sweep_bh_for_rgrps.exit

if.end144.i:                                      ; preds = %cleanup141.thread.i, %if.then125.i.if.end144.i_crit_edge
  %buf_in_tr.4.off0.i = phi i1 [ %buf_in_tr.1.off0291.i, %if.then125.i.if.end144.i_crit_edge ], [ false, %cleanup141.thread.i ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %rd_gh) #12
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1588, i32 noundef 0) #12
  %call.i274.i = call i32 @__cond_resched() #12
  br label %more_rgrps.i

sweep_bh_for_rgrps.exit:                          ; preds = %cleanup141.i, %land.lhs.true123.i.sweep_bh_for_rgrps.exit_crit_edge, %if.end73.i.sweep_bh_for_rgrps.exit_crit_edge, %gfs2_glock_nq_init.exit.i, %if.else.i.sweep_bh_for_rgrps.exit_crit_edge, %if.end14.i.sweep_bh_for_rgrps.exit_crit_edge
  %btotal.6 = phi i32 [ %btotal.5, %cleanup141.i ], [ %btotal.2, %gfs2_glock_nq_init.exit.i ], [ %btotal.2, %if.end73.i.sweep_bh_for_rgrps.exit_crit_edge ], [ %btotal.2, %if.else.i.sweep_bh_for_rgrps.exit_crit_edge ], [ %btotal.0, %if.end14.i.sweep_bh_for_rgrps.exit_crit_edge ], [ %btotal.5, %land.lhs.true123.i.sweep_bh_for_rgrps.exit_crit_edge ]
  %retval.0.i626 = phi i32 [ %call.i270.i, %cleanup141.i ], [ %call.i.i, %gfs2_glock_nq_init.exit.i ], [ -5, %if.else.i.sweep_bh_for_rgrps.exit_crit_edge ], [ %call74.i, %if.end73.i.sweep_bh_for_rgrps.exit_crit_edge ], [ 0, %land.lhs.true123.i.sweep_bh_for_rgrps.exit_crit_edge ], [ 0, %if.end14.i.sweep_bh_for_rgrps.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i626)
  %tobool142.not = icmp ne i32 %retval.0.i626, 0
  %brmerge = select i1 %tobool142.not, i1 true, i1 %tobool127.not
  %spec.select421 = select i1 %brmerge, i32 %retval.0.i626, i32 0
  %spec.select422 = select i1 %brmerge, i32 3, i32 1
  br label %while.cond.backedge

sw.bb146:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mp_h.3)
  %cond = icmp eq i32 %mp_h.3, 0
  br i1 %cond, label %if.then156, label %if.then148

if.then148:                                       ; preds = %sw.bb146
  %arrayidx150 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %mp_h.3
  %212 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx150, align 4
  %tobool.not.i627 = icmp eq ptr %213, null
  br i1 %tobool.not.i627, label %if.then148.brelse.exit_crit_edge, label %if.then.i628

if.then148.brelse.exit_crit_edge:                 ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i628:                                     ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %213) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i628, %if.then148.brelse.exit_crit_edge
  %214 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %arrayidx150, align 4
  %arrayidx163 = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %mp_h.3
  %215 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %arrayidx163, align 2
  %dec164 = add i32 %mp_h.3, -1
  %arrayidx166 = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %dec164
  %216 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %arrayidx166, align 2
  %inc167 = add i16 %217, 1
  store i16 %inc167, ptr %arrayidx166, align 2
  br i1 %tobool6.not.i711, label %if.else.i643, label %if.then.i635

if.then.i635:                                     ; preds = %brelse.exit
  %mul.i.i632 = shl i32 %dec164, 1
  %bcmp.i.i633 = call i32 @bcmp(ptr %mp_list34, ptr nonnull %end_list.1, i32 %mul.i.i632) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i633)
  %tobool.not.i.i634 = icmp eq i32 %bcmp.i.i633, 0
  br i1 %tobool.not.i.i634, label %cleanup.thread.i641, label %if.end170.thread

if.end170.thread:                                 ; preds = %if.then.i635
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = zext i16 %inc167 to i32
  %arrayidx.i644882 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %dec164
  %218 = ptrtoint ptr %arrayidx.i644882 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.i644882, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec164)
  %cmp.i.i645883 = icmp eq i32 %dec164, 0
  %b_data.i.i646884 = getelementptr inbounds %struct.buffer_head, ptr %219, i32 0, i32 5
  %220 = ptrtoint ptr %b_data.i.i646884 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %b_data.i.i646884, align 4
  %..i.i647885 = select i1 %cmp.i.i645883, i32 232, i32 24
  %add.ptr2.i.i648886 = getelementptr i8, ptr %221, i32 %..i.i647885
  %add.ptr.i650887 = getelementptr i64, ptr %add.ptr2.i.i648886, i32 %.pre
  %b_size.i651888 = getelementptr inbounds %struct.buffer_head, ptr %219, i32 0, i32 4
  %222 = ptrtoint ptr %b_size.i651888 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %b_size.i651888, align 8
  %add.ptr2.i889 = getelementptr i8, ptr %221, i32 %223
  br label %land.lhs.true.i657

cleanup.thread.i641:                              ; preds = %if.then.i635
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %dec164, i32 %end_aligned.1)
  %cmp.i636 = icmp ult i32 %dec164, %end_aligned.1
  %arrayidx.i637 = getelementptr i16, ptr %end_list.1, i32 %dec164
  %224 = ptrtoint ptr %arrayidx.i637 to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %arrayidx.i637, align 2
  %conv.i638 = zext i16 %225 to i32
  %conv3.i639 = zext i1 %cmp.i636 to i32
  %add.i640 = add nuw nsw i32 %conv.i638, %conv3.i639
  br label %walk_done.exit

if.else.i643:                                     ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec164)
  %cmp5.i = icmp sgt i32 %dec164, 0
  %cond.in.i = select i1 %cmp5.i, ptr %sd_inptrs.i642, ptr %sd_diptrs.i
  %226 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %cond.i = load i32, ptr %cond.in.i, align 4
  br label %walk_done.exit

walk_done.exit:                                   ; preds = %if.else.i643, %cleanup.thread.i641
  %end.1.i = phi i32 [ %cond.i, %if.else.i643 ], [ %add.i640, %cleanup.thread.i641 ]
  %conv10.i = zext i16 %inc167 to i32
  %conv11.i = and i32 %end.1.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %conv10.i)
  %cmp12.i.not = icmp ugt i32 %conv11.i, %conv10.i
  br i1 %cmp12.i.not, label %if.end170, label %walk_done.exit.while.cond.backedge_crit_edge

walk_done.exit.while.cond.backedge_crit_edge:     ; preds = %walk_done.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.then156:                                       ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #14
  %dec157 = add i32 %strip_h.0, -1
  %227 = call ptr @memcpy(ptr %mp_list34, ptr %start_list, i32 20)
  br label %while.cond.backedge

if.end170:                                        ; preds = %walk_done.exit
  %arrayidx.i644 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %dec164
  %228 = ptrtoint ptr %arrayidx.i644 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx.i644, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec164)
  %cmp.i.i645 = icmp eq i32 %dec164, 0
  %b_data.i.i646 = getelementptr inbounds %struct.buffer_head, ptr %229, i32 0, i32 5
  %230 = ptrtoint ptr %b_data.i.i646 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %b_data.i.i646, align 4
  %..i.i647 = select i1 %cmp.i.i645, i32 232, i32 24
  %add.ptr2.i.i648 = getelementptr i8, ptr %231, i32 %..i.i647
  %add.ptr.i650 = getelementptr i64, ptr %add.ptr2.i.i648, i32 %conv10.i
  %b_size.i651 = getelementptr inbounds %struct.buffer_head, ptr %229, i32 0, i32 4
  %232 = ptrtoint ptr %b_size.i651 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %b_size.i651, align 8
  %add.ptr2.i = getelementptr i8, ptr %231, i32 %233
  br i1 %tobool6.not.i711, label %if.end170.if.end.i661_crit_edge, label %if.end170.land.lhs.true.i657_crit_edge

if.end170.land.lhs.true.i657_crit_edge:           ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i657

if.end170.if.end.i661_crit_edge:                  ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i661

land.lhs.true.i657:                               ; preds = %if.end170.land.lhs.true.i657_crit_edge, %if.end170.thread
  %add.ptr2.i894 = phi ptr [ %add.ptr2.i889, %if.end170.thread ], [ %add.ptr2.i, %if.end170.land.lhs.true.i657_crit_edge ]
  %add.ptr.i650892 = phi ptr [ %add.ptr.i650887, %if.end170.thread ], [ %add.ptr.i650, %if.end170.land.lhs.true.i657_crit_edge ]
  %add.ptr2.i.i648890 = phi ptr [ %add.ptr2.i.i648886, %if.end170.thread ], [ %add.ptr2.i.i648, %if.end170.land.lhs.true.i657_crit_edge ]
  %mul.i.i654 = shl i32 %dec164, 1
  %bcmp.i.i655 = call i32 @bcmp(ptr %mp_list34, ptr nonnull %end_list.1, i32 %mul.i.i654) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i655)
  %tobool.not.i.i656 = icmp eq i32 %bcmp.i.i655, 0
  br i1 %tobool.not.i.i656, label %if.then.i660, label %land.lhs.true.i657.if.end.i661_crit_edge

land.lhs.true.i657.if.end.i661_crit_edge:         ; preds = %land.lhs.true.i657
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i661

if.then.i660:                                     ; preds = %land.lhs.true.i657
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %dec164, i32 %end_aligned.1)
  %cmp.i658 = icmp ult i32 %dec164, %end_aligned.1
  %arrayidx6.i = getelementptr i16, ptr %end_list.1, i32 %dec164
  %234 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %arrayidx6.i, align 2
  %conv7.i = zext i16 %235 to i32
  %add.ptr8.i = getelementptr i64, ptr %add.ptr2.i.i648890, i32 %conv7.i
  %conv10.i659 = zext i1 %cmp.i658 to i32
  %add.ptr11.i = getelementptr i64, ptr %add.ptr8.i, i32 %conv10.i659
  br label %if.end.i661

if.end.i661:                                      ; preds = %if.then.i660, %land.lhs.true.i657.if.end.i661_crit_edge, %if.end170.if.end.i661_crit_edge
  %add.ptr.i650893 = phi ptr [ %add.ptr.i650892, %if.then.i660 ], [ %add.ptr.i650892, %land.lhs.true.i657.if.end.i661_crit_edge ], [ %add.ptr.i650, %if.end170.if.end.i661_crit_edge ]
  %add.ptr2.i.i648891 = phi ptr [ %add.ptr2.i.i648890, %if.then.i660 ], [ %add.ptr2.i.i648890, %land.lhs.true.i657.if.end.i661_crit_edge ], [ %add.ptr2.i.i648, %if.end170.if.end.i661_crit_edge ]
  %end.0.i = phi ptr [ %add.ptr11.i, %if.then.i660 ], [ %add.ptr2.i894, %land.lhs.true.i657.if.end.i661_crit_edge ], [ %add.ptr2.i, %if.end170.if.end.i661_crit_edge ]
  %cmp124.i = icmp ult ptr %add.ptr.i650893, %end.0.i
  br i1 %cmp124.i, label %if.end.i661.while.body.i_crit_edge, label %if.end.i661.while.cond.backedge_crit_edge

if.end.i661.while.cond.backedge_crit_edge:        ; preds = %if.end.i661
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end.i661.while.body.i_crit_edge:               ; preds = %if.end.i661
  br label %while.body.i

while.body.i:                                     ; preds = %if.end25.i.while.body.i_crit_edge, %if.end.i661.while.body.i_crit_edge
  %ptr.05.i = phi ptr [ %incdec.ptr.i665, %if.end25.i.while.body.i_crit_edge ], [ %add.ptr.i650893, %if.end.i661.while.body.i_crit_edge ]
  %236 = ptrtoint ptr %ptr.05.i to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %ptr.05.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %237)
  %tobool14.not.i = icmp eq i64 %237, 0
  br i1 %tobool14.not.i, label %if.end25.i, label %if.then15.i

if.then15.i:                                      ; preds = %while.body.i
  %sub.ptr.lhs.cast.i662 = ptrtoint ptr %ptr.05.i to i32
  %sub.ptr.rhs.cast.i663 = ptrtoint ptr %add.ptr2.i.i648891 to i32
  %sub.ptr.sub.i664 = sub i32 %sub.ptr.lhs.cast.i662, %sub.ptr.rhs.cast.i663
  %238 = lshr exact i32 %sub.ptr.sub.i664, 3
  %conv16.i = trunc i32 %238 to i16
  %239 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %conv16.i, ptr %arrayidx166, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %mp_h.3)
  %cmp19.i = icmp ult i32 %mp_h.3, 10
  br i1 %cmp19.i, label %if.then21.i, label %if.then15.i.while.cond.backedge_crit_edge

if.then15.i.while.cond.backedge_crit_edge:        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.then21.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #14
  %240 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 0, ptr %arrayidx163, align 2
  br label %while.cond.backedge

if.end25.i:                                       ; preds = %while.body.i
  %incdec.ptr.i665 = getelementptr i64, ptr %ptr.05.i, i32 1
  %cmp12.i666 = icmp ult ptr %incdec.ptr.i665, %end.0.i
  br i1 %cmp12.i666, label %if.end25.i.while.body.i_crit_edge, label %if.end25.i.while.cond.backedge_crit_edge

if.end25.i.while.cond.backedge_crit_edge:         ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end25.i.while.body.i_crit_edge:                ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

sw.bb175:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mp_h.3)
  %tobool.not.i667 = icmp eq i32 %mp_h.3, 0
  br i1 %tobool.not.i667, label %sw.bb175.if.end3.i_crit_edge, label %sw.bb175.for.cond.i_crit_edge

sw.bb175.for.cond.i_crit_edge:                    ; preds = %sw.bb175
  br label %for.cond.i

sw.bb175.if.end3.i_crit_edge:                     ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

for.cond.i:                                       ; preds = %for.body.i670.for.cond.i_crit_edge, %sw.bb175.for.cond.i_crit_edge
  %x.0.in.i = phi i32 [ %x.0.i, %for.body.i670.for.cond.i_crit_edge ], [ %mp_h.3, %sw.bb175.for.cond.i_crit_edge ]
  %x.0.i = add i32 %x.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.0.i)
  %cmp.not.i668 = icmp eq i32 %x.0.i, 0
  br i1 %cmp.not.i668, label %for.cond.i.if.end3.i_crit_edge, label %for.body.i670

for.cond.i.if.end3.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

for.body.i670:                                    ; preds = %for.cond.i
  %arrayidx.i669 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %x.0.i
  %241 = ptrtoint ptr %arrayidx.i669 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx.i669, align 4
  %tobool1.not.i = icmp eq ptr %242, null
  br i1 %tobool1.not.i, label %for.body.i670.for.cond.i_crit_edge, label %for.body.i670.if.end3.i_crit_edge

for.body.i670.if.end3.i_crit_edge:                ; preds = %for.body.i670
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

for.body.i670.for.cond.i_crit_edge:               ; preds = %for.body.i670
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.end3.i:                                        ; preds = %for.body.i670.if.end3.i_crit_edge, %for.cond.i.if.end3.i_crit_edge, %sw.bb175.if.end3.i_crit_edge
  %x.1.i = phi i32 [ 0, %sw.bb175.if.end3.i_crit_edge ], [ %x.0.i, %for.body.i670.if.end3.i_crit_edge ], [ 0, %for.cond.i.if.end3.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %x.1.i, i32 %mp_h.3)
  %cmp23.i.i = icmp ult i32 %x.1.i, %mp_h.3
  br i1 %cmp23.i.i, label %if.end3.i.for.body.i.i681_crit_edge, label %if.end3.i.if.end6.i_crit_edge

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end3.i.for.body.i.i681_crit_edge:              ; preds = %if.end3.i
  br label %for.body.i.i681

for.body.i.i681:                                  ; preds = %for.inc.i.i688.for.body.i.i681_crit_edge, %if.end3.i.for.body.i.i681_crit_edge
  %x.addr.024.i.i671 = phi i32 [ %add.i.i682, %for.inc.i.i688.for.body.i.i681_crit_edge ], [ %x.1.i, %if.end3.i.for.body.i.i681_crit_edge ]
  %arrayidx.i.i.i.i672 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %x.addr.024.i.i671
  %243 = ptrtoint ptr %arrayidx.i.i.i.i672 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %arrayidx.i.i.i.i672, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.addr.024.i.i671)
  %cmp.i.i.i.i673 = icmp eq i32 %x.addr.024.i.i671, 0
  %b_data.i.i.i.i674 = getelementptr inbounds %struct.buffer_head, ptr %244, i32 0, i32 5
  %245 = ptrtoint ptr %b_data.i.i.i.i674 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %b_data.i.i.i.i674, align 4
  %..i.i.i.i675 = select i1 %cmp.i.i.i.i673, i32 232, i32 24
  %add.ptr2.i.i.i.i676 = getelementptr i8, ptr %246, i32 %..i.i.i.i675
  %arrayidx.i.i.i677 = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %x.addr.024.i.i671
  %247 = ptrtoint ptr %arrayidx.i.i.i677 to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %arrayidx.i.i.i677, align 2
  %conv.i.i.i678 = zext i16 %248 to i32
  %add.ptr.i.i.i679 = getelementptr i64, ptr %add.ptr2.i.i.i.i676, i32 %conv.i.i.i678
  %249 = ptrtoint ptr %add.ptr.i.i.i679 to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %add.ptr.i.i.i679, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %250)
  %tobool.not.i.i680 = icmp eq i64 %250, 0
  br i1 %tobool.not.i.i680, label %for.body.i.i681.if.end6.i_crit_edge, label %if.end.i.i686

for.body.i.i681.if.end6.i_crit_edge:              ; preds = %for.body.i.i681
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end.i.i686:                                    ; preds = %for.body.i.i681
  %add.i.i682 = add nuw i32 %x.addr.024.i.i671, 1
  %arrayidx.i.i683 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %add.i.i682
  %call1.i.i684 = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 5, i64 noundef %250, ptr noundef %arrayidx.i.i683) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i684)
  %tobool2.not.i.i685 = icmp eq i32 %call1.i.i684, 0
  br i1 %tobool2.not.i.i685, label %for.inc.i.i688, label %if.end.i.i686.fillup_metapath.exit_crit_edge

if.end.i.i686.fillup_metapath.exit_crit_edge:     ; preds = %if.end.i.i686
  call void @__sanitizer_cov_trace_pc() #14
  br label %fillup_metapath.exit

for.inc.i.i688:                                   ; preds = %if.end.i.i686
  %exitcond.not.i.i687 = icmp eq i32 %add.i.i682, %mp_h.3
  br i1 %exitcond.not.i.i687, label %for.inc.i.i688.if.end6.i_crit_edge, label %for.inc.i.i688.for.body.i.i681_crit_edge

for.inc.i.i688.for.body.i.i681_crit_edge:         ; preds = %for.inc.i.i688
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i681

for.inc.i.i688.if.end6.i_crit_edge:               ; preds = %for.inc.i.i688
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %for.inc.i.i688.if.end6.i_crit_edge, %for.body.i.i681.if.end6.i_crit_edge, %if.end3.i.if.end6.i_crit_edge
  %x.addr.0.lcssa.i.i689 = phi i32 [ %x.1.i, %if.end3.i.if.end6.i_crit_edge ], [ %x.addr.024.i.i671, %for.body.i.i681.if.end6.i_crit_edge ], [ %mp_h.3, %for.inc.i.i688.if.end6.i_crit_edge ]
  %add7.i.i690 = add i32 %x.addr.0.lcssa.i.i689, 1
  %251 = ptrtoint ptr %mp_aheight.i.i880 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %add7.i.i690, ptr %mp_aheight.i.i880, align 4
  %sub8.i = sub i32 %x.addr.0.lcssa.i.i689, %x.1.i
  br label %fillup_metapath.exit

fillup_metapath.exit:                             ; preds = %if.end6.i, %if.end.i.i686.fillup_metapath.exit_crit_edge
  %retval.0.i692 = phi i32 [ %sub8.i, %if.end6.i ], [ %call1.i.i684, %if.end.i.i686.fillup_metapath.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i692)
  %cmp177 = icmp slt i32 %retval.0.i692, 0
  br i1 %cmp177, label %fillup_metapath.exit.out_crit_edge, label %if.end180

fillup_metapath.exit.out_crit_edge:               ; preds = %fillup_metapath.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end180:                                        ; preds = %fillup_metapath.exit
  %252 = ptrtoint ptr %mp_aheight.i.i880 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %mp_aheight.i.i880, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %253)
  %cmp182 = icmp sgt i32 %253, 1
  br i1 %cmp182, label %land.lhs.true, label %if.end180.if.end210_crit_edge

if.end180.if.end210_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end210

land.lhs.true:                                    ; preds = %if.end180
  %254 = ptrtoint ptr %i_height to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %i_height, align 8
  %conv185 = zext i8 %255 to i32
  %sub186 = add nsw i32 %conv185, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %strip_h.0, i32 %sub186)
  %cmp187 = icmp eq i32 %strip_h.0, %sub186
  br i1 %cmp187, label %if.then189, label %land.lhs.true.if.end210_crit_edge

land.lhs.true.if.end210_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end210

if.then189:                                       ; preds = %land.lhs.true
  %sub191 = add nsw i32 %253, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub191, i32 %strip_h.0)
  %cmp194 = icmp eq i32 %sub191, %strip_h.0
  %dec197 = add nsw i32 %253, -2
  %spec.select419 = select i1 %cmp194, i32 %dec197, i32 %sub191
  %256 = ptrtoint ptr %mp_aheight.i.i880 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %mp_aheight.i.i880, align 4
  %sub201837 = sub i32 %257, %retval.0.i692
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select419, i32 %sub201837)
  %cmp202.not838 = icmp ult i32 %spec.select419, %sub201837
  br i1 %cmp202.not838, label %if.then189.if.end210_crit_edge, label %if.then189.for.body204_crit_edge

if.then189.for.body204_crit_edge:                 ; preds = %if.then189
  br label %for.body204

if.then189.if.end210_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end210

for.body204:                                      ; preds = %metapointer_range.exit723.for.body204_crit_edge, %if.then189.for.body204_crit_edge
  %height.1839 = phi i32 [ %dec208, %metapointer_range.exit723.for.body204_crit_edge ], [ %spec.select419, %if.then189.for.body204_crit_edge ]
  %arrayidx.i693 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %height.1839
  %258 = ptrtoint ptr %arrayidx.i693 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx.i693, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %height.1839)
  %cmp.i.i694 = icmp eq i32 %height.1839, 0
  %b_data.i.i695 = getelementptr inbounds %struct.buffer_head, ptr %259, i32 0, i32 5
  %260 = ptrtoint ptr %b_data.i.i695 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %b_data.i.i695, align 4
  %..i.i696 = select i1 %cmp.i.i694, i32 232, i32 24
  %add.ptr2.i.i697 = getelementptr i8, ptr %261, i32 %..i.i696
  %mul.i.i699 = shl i32 %height.1839, 1
  %bcmp.i.i700 = call i32 @bcmp(ptr %mp_list34, ptr nonnull %start_list, i32 %mul.i.i699) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i700)
  %tobool.not.i.i701 = icmp eq i32 %bcmp.i.i700, 0
  br i1 %tobool.not.i.i701, label %if.then.i708, label %for.body204.if.end.i712_crit_edge

for.body204.if.end.i712_crit_edge:                ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i712

if.then.i708:                                     ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %height.1839, i32 %mp_h.1.lcssa)
  %cmp.i702 = icmp ult i32 %height.1839, %mp_h.1.lcssa
  %arrayidx2.i703 = getelementptr i16, ptr %start_list, i32 %height.1839
  %262 = ptrtoint ptr %arrayidx2.i703 to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %arrayidx2.i703, align 2
  %conv.i704 = zext i16 %263 to i32
  %add.ptr.i705 = getelementptr i64, ptr %add.ptr2.i.i697, i32 %conv.i704
  %conv3.i706 = zext i1 %cmp.i702 to i32
  %add.ptr4.i707 = getelementptr i64, ptr %add.ptr.i705, i32 %conv3.i706
  br label %if.end.i712

if.end.i712:                                      ; preds = %if.then.i708, %for.body204.if.end.i712_crit_edge
  %start.2 = phi ptr [ %add.ptr4.i707, %if.then.i708 ], [ %add.ptr2.i.i697, %for.body204.if.end.i712_crit_edge ]
  %b_size.i709 = getelementptr inbounds %struct.buffer_head, ptr %259, i32 0, i32 4
  %264 = ptrtoint ptr %b_size.i709 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %b_size.i709, align 8
  %add.ptr5.i710 = getelementptr i8, ptr %261, i32 %265
  br i1 %tobool6.not.i711, label %if.end.i712.metapointer_range.exit723_crit_edge, label %land.lhs.true.i715

if.end.i712.metapointer_range.exit723_crit_edge:  ; preds = %if.end.i712
  call void @__sanitizer_cov_trace_pc() #14
  br label %metapointer_range.exit723

land.lhs.true.i715:                               ; preds = %if.end.i712
  %bcmp.i40.i713 = call i32 @bcmp(ptr %mp_list34, ptr nonnull %end_list.1, i32 %mul.i.i699) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i40.i713)
  %tobool.not.i41.i714 = icmp eq i32 %bcmp.i40.i713, 0
  br i1 %tobool.not.i41.i714, label %if.then9.i722, label %land.lhs.true.i715.metapointer_range.exit723_crit_edge

land.lhs.true.i715.metapointer_range.exit723_crit_edge: ; preds = %land.lhs.true.i715
  call void @__sanitizer_cov_trace_pc() #14
  br label %metapointer_range.exit723

if.then9.i722:                                    ; preds = %land.lhs.true.i715
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %height.1839, i32 %end_aligned.1)
  %cmp10.i716 = icmp ult i32 %height.1839, %end_aligned.1
  %arrayidx13.i717 = getelementptr i16, ptr %end_list.1, i32 %height.1839
  %266 = ptrtoint ptr %arrayidx13.i717 to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %arrayidx13.i717, align 2
  %conv14.i718 = zext i16 %267 to i32
  %add.ptr15.i719 = getelementptr i64, ptr %add.ptr2.i.i697, i32 %conv14.i718
  %conv17.i720 = zext i1 %cmp10.i716 to i32
  %add.ptr18.i721 = getelementptr i64, ptr %add.ptr15.i719, i32 %conv17.i720
  br label %metapointer_range.exit723

metapointer_range.exit723:                        ; preds = %if.then9.i722, %land.lhs.true.i715.metapointer_range.exit723_crit_edge, %if.end.i712.metapointer_range.exit723_crit_edge
  %end.2 = phi ptr [ %add.ptr5.i710, %if.end.i712.metapointer_range.exit723_crit_edge ], [ %add.ptr18.i721, %if.then9.i722 ], [ %add.ptr5.i710, %land.lhs.true.i715.metapointer_range.exit723_crit_edge ]
  %268 = ptrtoint ptr %i_gl206 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %i_gl206, align 4
  call fastcc void @gfs2_metapath_ra(ptr noundef %269, ptr noundef %start.2, ptr noundef %end.2)
  %dec208 = add i32 %height.1839, -1
  %270 = ptrtoint ptr %mp_aheight.i.i880 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %mp_aheight.i.i880, align 4
  %sub201 = sub i32 %271, %retval.0.i692
  %cmp202.not = icmp ult i32 %dec208, %sub201
  br i1 %cmp202.not, label %metapointer_range.exit723.if.end210_crit_edge, label %metapointer_range.exit723.for.body204_crit_edge

metapointer_range.exit723.for.body204_crit_edge:  ; preds = %metapointer_range.exit723
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body204

metapointer_range.exit723.if.end210_crit_edge:    ; preds = %metapointer_range.exit723
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end210

if.end210:                                        ; preds = %metapointer_range.exit723.if.end210_crit_edge, %if.then189.if.end210_crit_edge, %land.lhs.true.if.end210_crit_edge, %if.end180.if.end210_crit_edge
  %272 = ptrtoint ptr %mp_aheight.i.i880 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %mp_aheight.i.i880, align 4
  %sub212 = add i32 %273, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub212, i32 %strip_h.0)
  %cmp213 = icmp eq i32 %sub212, %strip_h.0
  br i1 %cmp213, label %if.end210.while.cond.backedge_crit_edge, label %if.end216

if.end210.while.cond.backedge_crit_edge:          ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end216:                                        ; preds = %if.end210
  %274 = ptrtoint ptr %i_height to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %i_height, align 8
  %conv219 = zext i8 %275 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %273, i32 %conv219)
  %cmp220 = icmp slt i32 %273, %conv219
  %spec.select420 = select i1 %cmp220, i32 %sub212, i32 %mp_h.3
  %arrayidx.i724 = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %spec.select420
  %276 = ptrtoint ptr %arrayidx.i724 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx.i724, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select420)
  %cmp.i.i725 = icmp eq i32 %spec.select420, 0
  %b_data.i.i726 = getelementptr inbounds %struct.buffer_head, ptr %277, i32 0, i32 5
  %278 = ptrtoint ptr %b_data.i.i726 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %b_data.i.i726, align 4
  %..i.i727 = select i1 %cmp.i.i725, i32 232, i32 24
  %add.ptr2.i.i728 = getelementptr i8, ptr %279, i32 %..i.i727
  %arrayidx1.i729 = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %spec.select420
  %280 = ptrtoint ptr %arrayidx1.i729 to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %arrayidx1.i729, align 2
  %conv.i730 = zext i16 %281 to i32
  %add.ptr.i731 = getelementptr i64, ptr %add.ptr2.i.i728, i32 %conv.i730
  %b_size.i732 = getelementptr inbounds %struct.buffer_head, ptr %277, i32 0, i32 4
  %282 = ptrtoint ptr %b_size.i732 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %b_size.i732, align 8
  %add.ptr2.i733 = getelementptr i8, ptr %279, i32 %283
  br i1 %tobool6.not.i711, label %if.end216.if.end.i749_crit_edge, label %land.lhs.true.i739

if.end216.if.end.i749_crit_edge:                  ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i749

land.lhs.true.i739:                               ; preds = %if.end216
  %mul.i.i736 = shl i32 %spec.select420, 1
  %bcmp.i.i737 = call i32 @bcmp(ptr %mp_list34, ptr nonnull %end_list.1, i32 %mul.i.i736) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i737)
  %tobool.not.i.i738 = icmp eq i32 %bcmp.i.i737, 0
  br i1 %tobool.not.i.i738, label %if.then.i746, label %land.lhs.true.i739.if.end.i749_crit_edge

land.lhs.true.i739.if.end.i749_crit_edge:         ; preds = %land.lhs.true.i739
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i749

if.then.i746:                                     ; preds = %land.lhs.true.i739
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select420, i32 %end_aligned.1)
  %cmp.i740 = icmp ult i32 %spec.select420, %end_aligned.1
  %arrayidx6.i741 = getelementptr i16, ptr %end_list.1, i32 %spec.select420
  %284 = ptrtoint ptr %arrayidx6.i741 to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %arrayidx6.i741, align 2
  %conv7.i742 = zext i16 %285 to i32
  %add.ptr8.i743 = getelementptr i64, ptr %add.ptr2.i.i728, i32 %conv7.i742
  %conv10.i744 = zext i1 %cmp.i740 to i32
  %add.ptr11.i745 = getelementptr i64, ptr %add.ptr8.i743, i32 %conv10.i744
  br label %if.end.i749

if.end.i749:                                      ; preds = %if.then.i746, %land.lhs.true.i739.if.end.i749_crit_edge, %if.end216.if.end.i749_crit_edge
  %end.0.i747 = phi ptr [ %add.ptr11.i745, %if.then.i746 ], [ %add.ptr2.i733, %land.lhs.true.i739.if.end.i749_crit_edge ], [ %add.ptr2.i733, %if.end216.if.end.i749_crit_edge ]
  %cmp124.i748 = icmp ult ptr %add.ptr.i731, %end.0.i747
  br i1 %cmp124.i748, label %if.end.i749.while.body.i752_crit_edge, label %if.end.i749.while.cond.backedge_crit_edge

if.end.i749.while.cond.backedge_crit_edge:        ; preds = %if.end.i749
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end.i749.while.body.i752_crit_edge:            ; preds = %if.end.i749
  br label %while.body.i752

while.body.i752:                                  ; preds = %if.end25.i764.while.body.i752_crit_edge, %if.end.i749.while.body.i752_crit_edge
  %ptr.05.i750 = phi ptr [ %incdec.ptr.i762, %if.end25.i764.while.body.i752_crit_edge ], [ %add.ptr.i731, %if.end.i749.while.body.i752_crit_edge ]
  %286 = ptrtoint ptr %ptr.05.i750 to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %ptr.05.i750, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %287)
  %tobool14.not.i751 = icmp eq i64 %287, 0
  br i1 %tobool14.not.i751, label %if.end25.i764, label %if.then15.i759

if.then15.i759:                                   ; preds = %while.body.i752
  %sub.ptr.lhs.cast.i753 = ptrtoint ptr %ptr.05.i750 to i32
  %sub.ptr.rhs.cast.i754 = ptrtoint ptr %add.ptr2.i.i728 to i32
  %sub.ptr.sub.i755 = sub i32 %sub.ptr.lhs.cast.i753, %sub.ptr.rhs.cast.i754
  %288 = lshr exact i32 %sub.ptr.sub.i755, 3
  %conv16.i756 = trunc i32 %288 to i16
  %289 = ptrtoint ptr %arrayidx1.i729 to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %conv16.i756, ptr %arrayidx1.i729, align 2
  %inc.i757 = add i32 %spec.select420, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc.i757)
  %cmp19.i758 = icmp ult i32 %inc.i757, 10
  br i1 %cmp19.i758, label %if.then21.i761, label %if.then15.i759.while.cond.backedge_crit_edge

if.then15.i759.while.cond.backedge_crit_edge:     ; preds = %if.then15.i759
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end25.i764.while.cond.backedge_crit_edge, %if.then21.i761, %if.then15.i759.while.cond.backedge_crit_edge, %if.end.i749.while.cond.backedge_crit_edge, %if.end210.while.cond.backedge_crit_edge, %if.end25.i.while.cond.backedge_crit_edge, %if.then21.i, %if.then15.i.while.cond.backedge_crit_edge, %if.end.i661.while.cond.backedge_crit_edge, %if.then156, %walk_done.exit.while.cond.backedge_crit_edge, %sweep_bh_for_rgrps.exit
  %btotal.0.be = phi i32 [ %btotal.0, %if.end210.while.cond.backedge_crit_edge ], [ %btotal.0, %if.then156 ], [ %btotal.0, %walk_done.exit.while.cond.backedge_crit_edge ], [ %btotal.6, %sweep_bh_for_rgrps.exit ], [ %btotal.0, %if.then21.i ], [ %btotal.0, %if.then15.i.while.cond.backedge_crit_edge ], [ %btotal.0, %if.end.i661.while.cond.backedge_crit_edge ], [ %btotal.0, %if.end.i749.while.cond.backedge_crit_edge ], [ %btotal.0, %if.then21.i761 ], [ %btotal.0, %if.then15.i759.while.cond.backedge_crit_edge ], [ %btotal.0, %if.end25.i.while.cond.backedge_crit_edge ], [ %btotal.0, %if.end25.i764.while.cond.backedge_crit_edge ]
  %strip_h.0.be = phi i32 [ %strip_h.0, %if.end210.while.cond.backedge_crit_edge ], [ %dec157, %if.then156 ], [ %strip_h.0, %walk_done.exit.while.cond.backedge_crit_edge ], [ %strip_h.0, %sweep_bh_for_rgrps.exit ], [ %strip_h.0, %if.then21.i ], [ %strip_h.0, %if.then15.i.while.cond.backedge_crit_edge ], [ %strip_h.0, %if.end.i661.while.cond.backedge_crit_edge ], [ %strip_h.0, %if.end.i749.while.cond.backedge_crit_edge ], [ %strip_h.0, %if.then21.i761 ], [ %strip_h.0, %if.then15.i759.while.cond.backedge_crit_edge ], [ %strip_h.0, %if.end25.i.while.cond.backedge_crit_edge ], [ %strip_h.0, %if.end25.i764.while.cond.backedge_crit_edge ]
  %ret.0.be = phi i32 [ %retval.0.i692, %if.end210.while.cond.backedge_crit_edge ], [ %ret.0, %if.then156 ], [ %ret.0, %walk_done.exit.while.cond.backedge_crit_edge ], [ %spec.select421, %sweep_bh_for_rgrps.exit ], [ %ret.0, %if.then21.i ], [ %ret.0, %if.then15.i.while.cond.backedge_crit_edge ], [ %ret.0, %if.end.i661.while.cond.backedge_crit_edge ], [ %retval.0.i692, %if.end.i749.while.cond.backedge_crit_edge ], [ %retval.0.i692, %if.then21.i761 ], [ %retval.0.i692, %if.then15.i759.while.cond.backedge_crit_edge ], [ %ret.0, %if.end25.i.while.cond.backedge_crit_edge ], [ %retval.0.i692, %if.end25.i764.while.cond.backedge_crit_edge ]
  %state.1.be = phi i32 [ 0, %if.end210.while.cond.backedge_crit_edge ], [ 2, %if.then156 ], [ 1, %walk_done.exit.while.cond.backedge_crit_edge ], [ %spec.select422, %sweep_bh_for_rgrps.exit ], [ 2, %if.then21.i ], [ 2, %if.then15.i.while.cond.backedge_crit_edge ], [ 1, %if.end.i661.while.cond.backedge_crit_edge ], [ 1, %if.end.i749.while.cond.backedge_crit_edge ], [ 2, %if.then21.i761 ], [ 2, %if.then15.i759.while.cond.backedge_crit_edge ], [ 1, %if.end25.i.while.cond.backedge_crit_edge ], [ 1, %if.end25.i764.while.cond.backedge_crit_edge ]
  %mp_h.3.be = phi i32 [ %mp_h.3, %if.end210.while.cond.backedge_crit_edge ], [ %dec157, %if.then156 ], [ %dec164, %walk_done.exit.while.cond.backedge_crit_edge ], [ %mp_h.3, %sweep_bh_for_rgrps.exit ], [ %mp_h.3, %if.then21.i ], [ %mp_h.3, %if.then15.i.while.cond.backedge_crit_edge ], [ %dec164, %if.end.i661.while.cond.backedge_crit_edge ], [ %spec.select420, %if.end.i749.while.cond.backedge_crit_edge ], [ %inc.i757, %if.then21.i761 ], [ %inc.i757, %if.then15.i759.while.cond.backedge_crit_edge ], [ %dec164, %if.end25.i.while.cond.backedge_crit_edge ], [ %spec.select420, %if.end25.i764.while.cond.backedge_crit_edge ]
  %prev_bnr.0.be = phi i64 [ %prev_bnr.0, %if.end210.while.cond.backedge_crit_edge ], [ %prev_bnr.0, %if.then156 ], [ %prev_bnr.0, %walk_done.exit.while.cond.backedge_crit_edge ], [ %78, %sweep_bh_for_rgrps.exit ], [ %prev_bnr.0, %if.then21.i ], [ %prev_bnr.0, %if.then15.i.while.cond.backedge_crit_edge ], [ %prev_bnr.0, %if.end.i661.while.cond.backedge_crit_edge ], [ %prev_bnr.0, %if.end.i749.while.cond.backedge_crit_edge ], [ %prev_bnr.0, %if.then21.i761 ], [ %prev_bnr.0, %if.then15.i759.while.cond.backedge_crit_edge ], [ %prev_bnr.0, %if.end25.i.while.cond.backedge_crit_edge ], [ %prev_bnr.0, %if.end25.i764.while.cond.backedge_crit_edge ]
  br label %while.cond

if.then21.i761:                                   ; preds = %if.then15.i759
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx23.i760 = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %inc.i757
  %290 = ptrtoint ptr %arrayidx23.i760 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 0, ptr %arrayidx23.i760, align 2
  br label %while.cond.backedge

if.end25.i764:                                    ; preds = %while.body.i752
  %incdec.ptr.i762 = getelementptr i64, ptr %ptr.05.i750, i32 1
  %cmp12.i763 = icmp ult ptr %incdec.ptr.i762, %end.0.i747
  br i1 %cmp12.i763, label %if.end25.i764.while.body.i752_crit_edge, label %if.end25.i764.while.cond.backedge_crit_edge

if.end25.i764.while.cond.backedge_crit_edge:      ; preds = %if.end25.i764
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

if.end25.i764.while.body.i752_crit_edge:          ; preds = %if.end25.i764
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i752

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %btotal.0)
  %tobool231.not = icmp eq i32 %btotal.0, 0
  br i1 %tobool231.not, label %while.end.out_crit_edge, label %if.then232

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then232:                                       ; preds = %while.end
  %291 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i = and i32 %291, -16384
  %292 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %292, i32 0, i32 2
  %293 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %294, i32 0, i32 146
  %295 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %journal_info, align 4
  %cmp234 = icmp eq ptr %296, null
  br i1 %cmp234, label %if.then236, label %if.then232.if.end241_crit_edge

if.then232.if.end241_crit_edge:                   ; preds = %if.then232
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end241

if.then236:                                       ; preds = %if.then232
  %call237 = call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef 4, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.end240, label %if.then236.out_crit_edge

if.then236.out_crit_edge:                         ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end240:                                        ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #14
  call void @down_write(ptr noundef %i_rw_mutex.i) #12
  br label %if.end241

if.end241:                                        ; preds = %if.end240, %if.then232.if.end241_crit_edge
  %ret.2 = phi i32 [ 0, %if.end240 ], [ %ret.0, %if.then232.if.end241_crit_edge ]
  %conv242 = zext i32 %btotal.0 to i64
  call void @gfs2_statfs_change(ptr noundef %3, i64 noundef 0, i64 noundef %conv242, i64 noundef 0) #12
  %sub244 = sub nsw i64 0, %conv242
  %i_uid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %297 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %297)
  %.unpack = load i32, ptr %i_uid, align 4
  %298 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %299 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %299)
  %.unpack416 = load i32, ptr %i_gid, align 8
  %300 = insertvalue [1 x i32] undef, i32 %.unpack416, 0
  call void @gfs2_quota_change(ptr noundef %ip, i64 noundef %sub244, [1 x i32] %298, [1 x i32] %300) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp251) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp251, ptr noundef %ip) #12
  %301 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp251, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp251) #12
  %302 = call ptr @memcpy(ptr %i_mtime.i, ptr %i_ctime.i, i32 16)
  %303 = ptrtoint ptr %i_gl206 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %i_gl206, align 4
  %305 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %dibh, align 4
  call void @gfs2_trans_add_meta(ptr noundef %304, ptr noundef %306) #12
  %307 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dibh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %308, i32 0, i32 5
  %309 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %b_data, align 4
  call void @gfs2_dinode_out(ptr noundef %ip, ptr noundef %310) #12
  call void @up_write(ptr noundef %i_rw_mutex.i) #12
  call void @gfs2_trans_end(ptr noundef %3) #12
  br label %out

out:                                              ; preds = %if.end241, %if.then236.out_crit_edge, %while.end.out_crit_edge, %fillup_metapath.exit.out_crit_edge, %gfs2_metatype_check_i.exit.out_crit_edge
  %ret.3 = phi i32 [ %call237, %if.then236.out_crit_edge ], [ %ret.2, %if.end241 ], [ %ret.0, %while.end.out_crit_edge ], [ -5, %gfs2_metatype_check_i.exit.out_crit_edge ], [ %retval.0.i692, %fillup_metapath.exit.out_crit_edge ]
  %311 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %10, align 4
  %tobool.i.not = icmp eq ptr %312, null
  br i1 %tobool.i.not, label %out.if.end258_crit_edge, label %if.then257

out.if.end258_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end258

if.then257:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %rd_gh) #12
  br label %if.end258

if.end258:                                        ; preds = %if.then257, %out.if.end258_crit_edge
  %313 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i768 = and i32 %313, -16384
  %314 = inttoptr i32 %and.i768 to ptr
  %task260 = getelementptr inbounds %struct.thread_info, ptr %314, i32 0, i32 2
  %315 = ptrtoint ptr %task260 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %task260, align 8
  %journal_info261 = getelementptr inbounds %struct.task_struct, ptr %316, i32 0, i32 146
  %317 = ptrtoint ptr %journal_info261 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %journal_info261, align 4
  %tobool262.not = icmp eq ptr %318, null
  br i1 %tobool262.not, label %if.end258.if.end267_crit_edge, label %if.then263

if.end258.if.end267_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end267

if.then263:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #14
  call void @up_write(ptr noundef %i_rw_mutex.i) #12
  call void @gfs2_trans_end(ptr noundef %3) #12
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1958, i32 noundef 0) #12
  %call.i769 = call i32 @__cond_resched() #12
  br label %if.end267

if.end267:                                        ; preds = %if.then263, %if.end258.if.end267_crit_edge
  call void @gfs2_quota_unhold(ptr noundef %ip) #12
  br label %out_metapath

out_metapath:                                     ; preds = %if.end267, %if.end77.out_metapath_crit_edge, %for.end66.out_metapath_crit_edge, %if.end.i.i.out_metapath_crit_edge
  %ret.4 = phi i32 [ %call74, %for.end66.out_metapath_crit_edge ], [ %call81, %if.end77.out_metapath_crit_edge ], [ %ret.3, %if.end267 ], [ %call1.i.i, %if.end.i.i.out_metapath_crit_edge ]
  call fastcc void @release_metapath(ptr noundef nonnull %mp)
  br label %cleanup268

cleanup268:                                       ; preds = %out_metapath, %for.end49.cleanup268_crit_edge, %if.then5.cleanup268_crit_edge, %entry.cleanup268_crit_edge
  %retval.1 = phi i32 [ %ret.4, %out_metapath ], [ 0, %entry.cleanup268_crit_edge ], [ %call.i, %for.end49.cleanup268_crit_edge ], [ 0, %if.then5.cleanup268_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__end_list) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %start_list) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rd_gh) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp) #12
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !112
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %1 = tail call ptr @llvm.returnaddress(i32 0) #12
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = tail call ptr @llvm.returnaddress(i32 0) #12
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #12
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !113
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !79

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !114
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !116
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !117
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  ret i64 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trunc_end(ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  %dibh = alloca ptr, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh) #12
  %4 = ptrtoint ptr %dibh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh, align 4, !annotation !74
  %call1 = tail call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rw_mutex = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 13
  tail call void @down_write(ptr noundef %i_rw_mutex) #12
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %5 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_no_addr.i, align 8
  %call.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %6, ptr noundef nonnull %dibh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end5:                                          ; preds = %if.end
  %call7 = call fastcc i64 @i_size_read(ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call7)
  %tobool8.not = icmp eq i64 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  %i_height = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 19
  %7 = ptrtoint ptr %i_height to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %i_height, align 8
  %8 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_no_addr.i, align 8
  %i_goal = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 11
  %10 = ptrtoint ptr %i_goal to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %i_goal, align 8
  %11 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dibh, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %b_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 232, i32 %14)
  %cmp.i = icmp ult i32 %14, 232
  br i1 %cmp.i, label %do.body2.i, label %gfs2_buffer_clear_tail.exit, !prof !79

do.body2.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #12, !srcloc !82
  unreachable

gfs2_buffer_clear_tail.exit:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 232
  %sub.i = add i32 %14, -232
  %17 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  call void @gfs2_ordered_del_inode(ptr noundef %ip) #12
  br label %if.end10

if.end10:                                         ; preds = %gfs2_buffer_clear_tail.exit, %if.end5.if.end10_crit_edge
  %i_mtime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %ip) #12
  %18 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #12
  %19 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %20 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %21, -536870913
  store i32 %and, ptr %i_diskflags, align 4
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %22 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_gl, align 4
  %24 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dibh, align 4
  call void @gfs2_trans_add_meta(ptr noundef %23, ptr noundef %25) #12
  %26 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dibh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data, align 4
  call void @gfs2_dinode_out(ptr noundef %ip, ptr noundef %29) #12
  %30 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dibh, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end10.out_crit_edge, label %if.then.i

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %31) #12
  br label %out

out:                                              ; preds = %if.then.i, %if.end10.out_crit_edge, %if.end.out_crit_edge
  call void @up_write(ptr noundef %i_rw_mutex) #12
  call void @gfs2_trans_end(ptr noundef %3) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %out ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_file_dealloc(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @punch_hole(ptr noundef %ip, i64 noundef 0, i64 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_free_journal_extents(ptr noundef %jd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %extent_list = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 1
  %0 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %extent_list, align 4
  %cmp.i.not4 = icmp eq ptr %1, %extent_list
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %2) #12
  %11 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %extent_list, align 4
  %cmp.i.not = icmp eq ptr %12, %extent_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_map_journal_extents(ptr noundef %sdp, ptr noundef %jd) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %bh) #12
  %2 = call ptr @memset(ptr %bh, i32 255, i32 104)
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 5
  %3 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sb_bsize_shift, align 4
  %call1 = tail call i64 @ktime_get() #12
  %5 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jd_inode, align 8
  %call3 = tail call fastcc i64 @i_size_read(ptr noundef %6)
  %sh_prom = zext i32 %4 to i64
  %7 = shl nsw i64 -1, %sh_prom
  %shl = and i64 %call3, %7
  %nr_extents = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 2
  %8 = ptrtoint ptr %nr_extents to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nr_extents, align 8
  %extent_list = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 1
  %9 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %extent_list, align 4
  %cmp.i.not = icmp eq ptr %10, %extent_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !75

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2253, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 3
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 1, i32 1
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  br label %do.body26

do.body26:                                        ; preds = %if.end41.do.body26_crit_edge, %if.end
  %size.0 = phi i64 [ %shl, %if.end ], [ %sub44, %if.end41.do.body26_crit_edge ]
  %lblock.0 = phi i64 [ 0, %if.end ], [ %add, %if.end41.do.body26_crit_edge ]
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bh, align 8
  %12 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %b_blocknr, align 8
  %conv = trunc i64 %size.0 to i32
  %13 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %b_size, align 8
  %14 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %jd_inode, align 8
  %call28 = call i32 @gfs2_block_map(ptr noundef %15, i64 noundef %lblock.0, ptr noundef nonnull %bh, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %do.body26.do.end62_crit_edge

do.body26.do.end62_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

lor.lhs.false:                                    ; preds = %do.body26
  %16 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %bh, align 8
  %18 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool31.not = icmp eq i32 %18, 0
  br i1 %tobool31.not, label %lor.lhs.false.do.end62_crit_edge, label %if.end33

lor.lhs.false.do.end62_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end33:                                         ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %b_blocknr, align 8
  %21 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %b_size, align 8
  %shr36 = lshr i32 %22, %4
  %conv37 = zext i32 %shr36 to i64
  %23 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %extent_list, align 4
  %cmp.i.not.i = icmp eq ptr %24, %extent_list
  br i1 %cmp.i.not.i, label %if.end33.if.end7.i_crit_edge, label %if.then.i

if.end33.if.end7.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end33
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i, align 4
  %dblock2.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dblock2.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dblock2.i, align 8
  %blocks3.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %blocks3.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %blocks3.i, align 8
  %add.i = add i64 %30, %28
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %20)
  %cmp.i119 = icmp eq i64 %add.i, %20
  br i1 %cmp.i119, label %if.then4.i, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %add6.i = add i64 %30, %conv37
  %31 = ptrtoint ptr %blocks3.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add6.i, ptr %blocks3.i, align 8
  br label %if.end41

if.end7.i:                                        ; preds = %if.then.i.if.end7.i_crit_edge, %if.end33.if.end7.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3392, i32 noundef 32) #18
  %cmp9.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp9.i, label %if.end7.i.do.end62_crit_edge, label %if.end11.i

if.end7.i.do.end62_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end62

if.end11.i:                                       ; preds = %if.end7.i
  %dblock12.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %call7.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %dblock12.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %20, ptr %dblock12.i, align 8
  %conv.i120 = trunc i64 %lblock.0 to i32
  %lblock13.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %lblock13.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv.i120, ptr %lblock13.i, align 8
  %blocks14.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %call7.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %blocks14.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv37, ptr %blocks14.i, align 8
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %37, ptr noundef %extent_list) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.i.list_add_tail.exit.i_crit_edge

if.end11.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %prev.i, align 4
  %39 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %extent_list, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %call7.i.i.i, ptr %37, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end11.i.list_add_tail.exit.i_crit_edge
  %42 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_extents, align 8
  %inc.i = add i32 %43, 1
  store i32 %inc.i, ptr %nr_extents, align 8
  br label %if.end41

if.end41:                                         ; preds = %list_add_tail.exit.i, %if.then4.i
  %44 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %b_size, align 8
  %conv43 = zext i32 %45 to i64
  %sub44 = sub i64 %size.0, %conv43
  %46 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i_blkbits, align 2
  %conv46 = zext i8 %47 to i32
  %shr47 = lshr i32 %45, %conv46
  %conv48 = zext i32 %shr47 to i64
  %add = add i64 %lblock.0, %conv48
  %cmp.not = icmp eq i64 %sub44, 0
  br i1 %cmp.not, label %do.end51, label %if.end41.do.body26_crit_edge

if.end41.do.body26_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body26

do.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = call i64 @ktime_get() #12
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %48 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %jd_jid, align 4
  %50 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_extents, align 8
  %sub.i = sub i64 %call52, %call1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %52 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #12
  %53 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %52) #15, !srcloc !119
  %54 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %52, i64 %53, i32 0) #15, !srcloc !120
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %54, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %sd_fsname, i32 noundef %49, i32 noundef %51, i64 noundef %cond213.i.i.i) #17
  br label %cleanup

do.end62:                                         ; preds = %if.end7.i.do.end62_crit_edge, %lor.lhs.false.do.end62_crit_edge, %do.body26.do.end62_crit_edge
  %rc.0 = phi i32 [ %call28, %do.body26.do.end62_crit_edge ], [ 0, %lor.lhs.false.do.end62_crit_edge ], [ -12, %if.end7.i.do.end62_crit_edge ]
  %sd_fsname64 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %jd_jid66 = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %55 = ptrtoint ptr %jd_jid66 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %jd_jid66, align 4
  %57 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %jd_inode, align 8
  %call68 = call fastcc i64 @i_size_read(ptr noundef %58)
  %sub69 = sub i64 %call68, %size.0
  %59 = ptrtoint ptr %nr_extents to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_extents, align 8
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %sd_fsname64, i32 noundef %rc.0, i32 noundef %56, i64 noundef %sub69, i32 noundef %60) #17
  %61 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %b_blocknr, align 8
  %63 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bh, align 8
  %65 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %b_size, align 8
  %conv81 = zext i32 %66 to i64
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %sd_fsname64, i32 noundef %rc.0, i64 noundef %lblock.0, i64 noundef %62, i32 noundef %64, i64 noundef %conv81) #17
  %67 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %extent_list, align 4
  %cmp.i.not4.i = icmp eq ptr %68, %extent_list
  br i1 %cmp.i.not4.i, label %do.end62.cleanup_crit_edge, label %do.end62.while.body.i_crit_edge

do.end62.while.body.i_crit_edge:                  ; preds = %do.end62
  br label %while.body.i

do.end62.cleanup_crit_edge:                       ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %do.end62.while.body.i_crit_edge
  %69 = phi ptr [ %79, %list_del.exit.i.while.body.i_crit_edge ], [ %68, %do.end62.while.body.i_crit_edge ]
  %call.i.i.i122 = call zeroext i1 @__list_del_entry_valid(ptr noundef %69) #12
  br i1 %call.i.i.i122, label %if.end.i.i.i123, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i123:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i, align 4
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %69, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %71, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i123, %while.body.i.list_del.exit.i_crit_edge
  %76 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr inttoptr (i32 256 to ptr), ptr %69, align 4
  %prev.i.i124 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i124 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i124, align 4
  call void @kfree(ptr noundef %69) #12
  %78 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %extent_list, align 4
  %cmp.i.not.i125 = icmp eq ptr %79, %extent_list
  br i1 %cmp.i.not.i125, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %do.end62.cleanup_crit_edge, %do.end51
  %retval.0 = phi i32 [ 0, %do.end51 ], [ %rc.0, %do.end62.cleanup_crit_edge ], [ %rc.0, %list_del.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bh) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_write_alloc_required(ptr noundef %ip, i64 noundef %offset, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca %struct.buffer_head, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %bh) #12
  %4 = call ptr @memset(ptr %bh, i32 255, i32 104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 19
  %5 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.not = icmp eq i8 %6, 0
  br i1 %tobool.not.i.not, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %offset
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sb_bsize.i, align 8
  %sub.i = add i32 %8, -232
  %conv5 = zext i32 %sub.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv5)
  %cmp = icmp ugt i64 %add, %conv5
  %. = zext i1 %cmp to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ip, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp.i.not = icmp eq i16 %11, 16384
  br i1 %cmp.i.not, label %do.body15, label %do.end21, !prof !79

do.body15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2314, 0\0A.popsection", ""() #12, !srcloc !121
  unreachable

do.end21:                                         ; preds = %if.end9
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_bsize_shift, align 4
  %call23 = tail call fastcc i64 @i_size_read(ptr noundef %ip)
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_bsize, align 8
  %conv25 = zext i32 %15 to i64
  %add26 = add nsw i64 %conv25, -1
  %sub = add i64 %add26, %call23
  %sh_prom = zext i32 %13 to i64
  %shr = ashr i64 %sub, %sh_prom
  %shr28 = lshr i64 %offset, %sh_prom
  %conv29 = zext i32 %len to i64
  %add34 = add i64 %add26, %offset
  %sub35 = add i64 %add34, %conv29
  %shr37 = lshr i64 %sub35, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr37, i64 %shr)
  %cmp38 = icmp ugt i64 %shr37, %shr
  br i1 %cmp38, label %land.lhs.true, label %do.end21.if.end44_crit_edge

do.end21.if.end44_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true:                                    ; preds = %do.end21
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 41
  %16 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd_rindex, align 4
  %cmp41.not = icmp eq ptr %17, %ip
  br i1 %cmp41.not, label %land.lhs.true.if.end44_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %do.end21.if.end44_crit_edge
  %sub45 = sub i64 %shr37, %shr28
  %shl = shl i64 %sub45, %sh_prom
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  br label %do.body47

do.body47:                                        ; preds = %if.end54.do.body47_crit_edge, %if.end44
  %lblock.0 = phi i64 [ %shr28, %if.end44 ], [ %add63, %if.end54.do.body47_crit_edge ]
  %size.0 = phi i64 [ %shl, %if.end44 ], [ %sub57, %if.end54.do.body47_crit_edge ]
  %18 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bh, align 8
  %conv48 = trunc i64 %size.0 to i32
  %19 = ptrtoint ptr %b_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv48, ptr %b_size, align 8
  %call50 = call i32 @gfs2_block_map(ptr noundef %ip, i64 noundef %lblock.0, ptr noundef nonnull %bh, i32 noundef 0)
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %bh, align 8
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool52.not = icmp eq i32 %22, 0
  br i1 %tobool52.not, label %do.body47.cleanup_crit_edge, label %if.end54

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end54:                                         ; preds = %do.body47
  %23 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %b_size, align 8
  %conv56 = zext i32 %24 to i64
  %sub57 = sub i64 %size.0, %conv56
  %25 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %i_blkbits, align 2
  %conv60 = zext i8 %26 to i32
  %shr61 = lshr i32 %24, %conv60
  %conv62 = zext i32 %shr61 to i64
  %add63 = add i64 %lblock.0, %conv62
  %cmp65.not = icmp eq i64 %sub57, 0
  br i1 %cmp65.not, label %if.end54.cleanup_crit_edge, label %if.end54.do.body47_crit_edge

if.end54.do.body47_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body47

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end54.cleanup_crit_edge, %do.body47.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %., %if.then3 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ], [ 1, %do.body47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %bh) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__gfs2_punch_hole(ptr noundef %file, i64 noundef %offset, i64 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %dibh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.not = icmp eq i8 %9, 0
  %.pre = add i32 %shl.i, -1
  br i1 %tobool.not.i.not, label %entry.if.end44_crit_edge, label %if.then

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %.pre216 = add i64 %length, %offset
  br label %if.end44

if.then:                                          ; preds = %entry
  %10 = trunc i64 %offset to i32
  %conv5 = and i32 %.pre, %10
  %add = add i64 %length, %offset
  %11 = trunc i64 %add to i32
  %conv9 = and i32 %.pre, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %tobool10.not = icmp eq i32 %conv5, 0
  br i1 %tobool10.not, label %if.end29, label %if.then11

if.then11:                                        ; preds = %if.then
  %12 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %journal_info.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %journal_info.i, align 4
  %tobool.not.i178 = icmp eq ptr %17, null
  br i1 %tobool.not.i178, label %gfs2_block_zero_range.exit, label %do.body3.i, !prof !75

do.body3.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1291, 0\0A.popsection", ""() #12, !srcloc !102
  unreachable

gfs2_block_zero_range.exit:                       ; preds = %if.then11
  %sub13 = sub i32 %shl.i, %conv5
  %conv14 = zext i32 %sub13 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv14, i64 %length)
  %cmp = icmp slt i64 %conv14, %length
  %conv12 = trunc i64 %length to i32
  %spec.select = select i1 %cmp, i32 %sub13, i32 %conv12
  %conv.i179 = zext i32 %spec.select to i64
  %call7.i = tail call i32 @iomap_zero_range(ptr noundef %1, i64 noundef %offset, i64 noundef %conv.i179, ptr noundef null, ptr noundef nonnull @gfs2_iomap_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool19.not = icmp eq i32 %call7.i, 0
  br i1 %tobool19.not, label %cleanup.thread, label %gfs2_block_zero_range.exit.out_crit_edge

gfs2_block_zero_range.exit.out_crit_edge:         ; preds = %gfs2_block_zero_range.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

cleanup.thread:                                   ; preds = %gfs2_block_zero_range.exit
  %conv22 = zext i32 %conv5 to i64
  %add23 = add i64 %conv22, %length
  %conv24 = zext i32 %shl.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add23, i64 %conv24)
  %cmp25 = icmp slt i64 %add23, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %tobool30.not = icmp eq i32 %conv9, 0
  %or.cond = select i1 %cmp25, i1 true, i1 %tobool30.not
  br i1 %or.cond, label %cleanup.thread.if.end44_crit_edge, label %cleanup.thread.if.then31_crit_edge

cleanup.thread.if.then31_crit_edge:               ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

cleanup.thread.if.end44_crit_edge:                ; preds = %cleanup.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end29:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv9)
  %tobool30.not.old = icmp eq i32 %conv9, 0
  br i1 %tobool30.not.old, label %if.end29.if.end44_crit_edge, label %if.end29.if.then31_crit_edge

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then31

if.end29.if.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then31:                                        ; preds = %if.end29.if.then31_crit_edge, %cleanup.thread.if.then31_crit_edge
  %18 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i180 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i180 to ptr
  %task.i181 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i181 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i181, align 8
  %journal_info.i182 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 146
  %22 = ptrtoint ptr %journal_info.i182 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %journal_info.i182, align 4
  %tobool.not.i183 = icmp eq ptr %23, null
  br i1 %tobool.not.i183, label %gfs2_block_zero_range.exit187, label %do.body3.i184, !prof !75

do.body3.i184:                                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1291, 0\0A.popsection", ""() #12, !srcloc !102
  unreachable

gfs2_block_zero_range.exit187:                    ; preds = %if.then31
  %conv33 = zext i32 %conv9 to i64
  %sub34 = sub i64 %add, %conv33
  %call7.i186 = tail call i32 @iomap_zero_range(ptr noundef %1, i64 noundef %sub34, i64 noundef %conv33, ptr noundef null, ptr noundef nonnull @gfs2_iomap_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i186)
  %tobool36.not = icmp eq i32 %call7.i186, 0
  br i1 %tobool36.not, label %gfs2_block_zero_range.exit187.if.end44_crit_edge, label %gfs2_block_zero_range.exit187.out_crit_edge

gfs2_block_zero_range.exit187.out_crit_edge:      ; preds = %gfs2_block_zero_range.exit187
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

gfs2_block_zero_range.exit187.if.end44_crit_edge: ; preds = %gfs2_block_zero_range.exit187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end44:                                         ; preds = %gfs2_block_zero_range.exit187.if.end44_crit_edge, %if.end29.if.end44_crit_edge, %cleanup.thread.if.end44_crit_edge, %entry.if.end44_crit_edge
  %add48.pre-phi = phi i64 [ %.pre216, %entry.if.end44_crit_edge ], [ %add, %cleanup.thread.if.end44_crit_edge ], [ %add, %gfs2_block_zero_range.exit187.if.end44_crit_edge ], [ %add, %if.end29.if.end44_crit_edge ]
  %conv46 = zext i32 %.pre to i64
  %neg = xor i64 %conv46, -1
  %and47 = and i64 %neg, %offset
  %sub49 = add i64 %add48.pre-phi, -1
  %or = or i64 %sub49, %conv46
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_mapping, align 8
  %call54 = tail call i32 @filemap_write_and_wait_range(ptr noundef %25, i64 noundef %and47, i64 noundef %or) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end44.cleanup114_crit_edge

if.end44.cleanup114_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

if.end57:                                         ; preds = %if.end44
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 18
  %26 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool59.not = icmp eq i32 %and.i, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %call61 = tail call i32 @gfs2_trans_begin(ptr noundef %5, i32 noundef 3, i32 noundef 8192) #12
  br label %if.end63

if.else:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %call62 = tail call i32 @gfs2_trans_begin(ptr noundef %5, i32 noundef 1, i32 noundef 0) #12
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then60
  %error.3 = phi i32 [ %call61, %if.then60 ], [ %call62, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3)
  %tobool64.not = icmp eq i32 %error.3, 0
  br i1 %tobool64.not, label %if.end66, label %if.end63.cleanup114_crit_edge

if.end63.cleanup114_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

if.end66:                                         ; preds = %if.end63
  %28 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i189.not = icmp eq i8 %29, 0
  br i1 %tobool.not.i189.not, label %if.then69, label %if.end66.if.end74_crit_edge

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then69:                                        ; preds = %if.end66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #12
  %30 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i, align 4, !annotation !74
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %31 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %offset)
  %cmp.not.i = icmp sgt i64 %32, %offset
  br i1 %cmp.not.i, label %if.end.i, label %if.then69.stuffed_zero_range.exit.thread_crit_edge

if.then69.stuffed_zero_range.exit.thread_crit_edge: ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %stuffed_zero_range.exit.thread

if.end.i:                                         ; preds = %if.then69
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i.i = call i32 @gfs2_meta_buffer(ptr noundef %1, i32 noundef 4, i64 noundef %34, ptr noundef nonnull %dibh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i191 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i191, label %if.end8.i, label %stuffed_zero_range.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add48.pre-phi, i64 %32)
  %cmp2.i = icmp sgt i64 %add48.pre-phi, %32
  %sub.i = sub i64 %32, %offset
  %length.addr.0.off0.v.i = select i1 %cmp2.i, i64 %sub.i, i64 %length
  %length.addr.0.off0.i = trunc i64 %length.addr.0.off0.v.i to i32
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_gl.i, align 4
  %37 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dibh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %36, ptr noundef %38) #12
  %39 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dibh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 232
  %idx.ext.i = trunc i64 %offset to i32
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.ext.i
  %43 = call ptr @memset(ptr %add.ptr9.i, i32 0, i32 %length.addr.0.off0.i)
  %44 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.end8.i.stuffed_zero_range.exit.thread_crit_edge, label %if.then.i.i

if.end8.i.stuffed_zero_range.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stuffed_zero_range.exit.thread

if.then.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %44) #12
  br label %stuffed_zero_range.exit.thread

stuffed_zero_range.exit.thread:                   ; preds = %if.then.i.i, %if.end8.i.stuffed_zero_range.exit.thread_crit_edge, %if.then69.stuffed_zero_range.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #12
  br label %if.end74

stuffed_zero_range.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #12
  br label %out

if.end74:                                         ; preds = %stuffed_zero_range.exit.thread, %if.end66.if.end74_crit_edge
  %45 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i_diskflags.i, align 4
  %and.i193 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i193)
  %tobool76.not = icmp eq i32 %and.i193, 0
  br i1 %tobool76.not, label %if.else92, label %do.body

do.body:                                          ; preds = %if.end74
  %47 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i194 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i194 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 146
  %51 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %journal_info, align 4
  %tobool79.not = icmp eq ptr %52, null
  br i1 %tobool79.not, label %do.body84, label %do.end90, !prof !79

do.body84:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/bmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2445, 0\0A.popsection", ""() #12, !srcloc !122
  unreachable

do.end90:                                         ; preds = %do.body
  %53 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 33
  %55 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %s_fs_info.i.i, align 16
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %s_blocksize.i, align 16
  %mul.i = shl i32 %60, 13
  %conv.i195 = zext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %length)
  %tobool.not3.i = icmp eq i64 %length, 0
  br i1 %tobool.not3.i, label %do.end90.if.end95_crit_edge, label %do.end90.while.body.i_crit_edge

do.end90.while.body.i_crit_edge:                  ; preds = %do.end90
  br label %while.body.i

do.end90.if.end95_crit_edge:                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

while.body.i:                                     ; preds = %while.body.i.backedge, %do.end90.while.body.i_crit_edge
  %length.addr.05.i = phi i64 [ %sub12.i, %while.body.i.backedge ], [ %length, %do.end90.while.body.i_crit_edge ]
  %offset.addr.04.i = phi i64 [ %add11.i, %while.body.i.backedge ], [ %offset, %do.end90.while.body.i_crit_edge ]
  %61 = call i64 @llvm.smin.i64(i64 %length.addr.05.i, i64 %conv.i195) #12
  %62 = trunc i64 %offset.addr.04.i to i32
  %conv2.i = and i32 %62, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2.i)
  %tobool3.not.i = icmp ne i32 %conv2.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4096, i64 %61)
  %cmp4.i = icmp sgt i64 %61, 4096
  %or.cond.i = select i1 %tobool3.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %if.then6.i, label %while.body.i.if.end10.i_crit_edge

while.body.i.if.end10.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then6.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv7.i = zext i32 %conv2.i to i64
  %sub.i196 = sub nuw nsw i64 %61, %conv7.i
  %and9.i = and i64 %sub.i196, -4096
  %add.i197 = or i64 %and9.i, %conv7.i
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then6.i, %while.body.i.if.end10.i_crit_edge
  %chunk.1.i = phi i64 [ %add.i197, %if.then6.i ], [ %61, %while.body.i.if.end10.i_crit_edge ]
  call void @truncate_pagecache_range(ptr noundef %1, i64 noundef %offset.addr.04.i, i64 noundef %chunk.1.i) #12
  %add11.i = add i64 %chunk.1.i, %offset.addr.04.i
  %sub12.i = sub i64 %length.addr.05.i, %chunk.1.i
  %63 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i198 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i198 to ptr
  %task.i199 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i199 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i199, align 8
  %journal_info.i200 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 146
  %67 = ptrtoint ptr %journal_info.i200 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %journal_info.i200, align 4
  %tr_flags.i = getelementptr inbounds %struct.gfs2_trans, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %tr_flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %tr_flags.i, align 4
  %71 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool15.not.i = icmp eq i32 %71, 0
  br i1 %tobool15.not.i, label %cleanup.i, label %if.end17.i

if.end17.i:                                       ; preds = %if.end10.i
  call void @gfs2_trans_end(ptr noundef %56) #12
  %call18.i = call i32 @gfs2_trans_begin(ptr noundef %56, i32 noundef 1, i32 noundef 8192) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp ne i32 %call18.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub12.i)
  %tobool.not.i201 = icmp eq i64 %sub12.i, 0
  %or.cond6.i = select i1 %tobool19.not.i, i1 true, i1 %tobool.not.i201
  br i1 %or.cond6.i, label %if.end17.i.if.end95_crit_edge, label %if.end17.i.while.body.i.backedge_crit_edge

if.end17.i.while.body.i.backedge_crit_edge:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.backedge

if.end17.i.if.end95_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

cleanup.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub12.i)
  %tobool.not.old.i = icmp eq i64 %sub12.i, 0
  br i1 %tobool.not.old.i, label %cleanup.i.if.end95_crit_edge, label %cleanup.i.while.body.i.backedge_crit_edge

cleanup.i.while.body.i.backedge_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.backedge

cleanup.i.if.end95_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

while.body.i.backedge:                            ; preds = %cleanup.i.while.body.i.backedge_crit_edge, %if.end17.i.while.body.i.backedge_crit_edge
  br label %while.body.i

if.else92:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  call void @truncate_pagecache_range(ptr noundef %1, i64 noundef %offset, i64 noundef %sub49) #12
  br label %if.end95

if.end95:                                         ; preds = %if.else92, %cleanup.i.if.end95_crit_edge, %if.end17.i.if.end95_crit_edge, %do.end90.if.end95_crit_edge
  %call96 = call i32 @file_update_time(ptr noundef %file) #12
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #12
  %72 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i202 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i202 to ptr
  %task98 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %task98 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task98, align 8
  %journal_info99 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 146
  %76 = ptrtoint ptr %journal_info99 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %journal_info99, align 4
  %tobool100.not = icmp eq ptr %77, null
  br i1 %tobool100.not, label %if.end95.if.end102_crit_edge, label %if.then101

if.end95.if.end102_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end102

if.then101:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_trans_end(ptr noundef %5) #12
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %if.end95.if.end102_crit_edge
  %78 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i204.not = icmp eq i8 %79, 0
  br i1 %tobool.not.i204.not, label %if.end102.out_crit_edge, label %if.then105

if.end102.out_crit_edge:                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #14
  %call106 = call fastcc i32 @punch_hole(ptr noundef %1, i64 noundef %offset, i64 noundef %length)
  br label %out

out:                                              ; preds = %if.then105, %if.end102.out_crit_edge, %stuffed_zero_range.exit, %gfs2_block_zero_range.exit187.out_crit_edge, %gfs2_block_zero_range.exit.out_crit_edge
  %error.5 = phi i32 [ %call.i.i, %stuffed_zero_range.exit ], [ 0, %if.end102.out_crit_edge ], [ %call106, %if.then105 ], [ %call7.i, %gfs2_block_zero_range.exit.out_crit_edge ], [ %call7.i186, %gfs2_block_zero_range.exit187.out_crit_edge ]
  %80 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i206 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i206 to ptr
  %task109 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %task109 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %task109, align 8
  %journal_info110 = getelementptr inbounds %struct.task_struct, ptr %83, i32 0, i32 146
  %84 = ptrtoint ptr %journal_info110 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %journal_info110, align 4
  %tobool111.not = icmp eq ptr %85, null
  br i1 %tobool111.not, label %out.cleanup114_crit_edge, label %if.then112

out.cleanup114_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup114

if.then112:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_trans_end(ptr noundef %5) #12
  br label %cleanup114

cleanup114:                                       ; preds = %if.then112, %out.cleanup114_crit_edge, %if.end63.cleanup114_crit_edge, %if.end44.cleanup114_crit_edge
  %retval.0 = phi i32 [ %call54, %if.end44.cleanup114_crit_edge ], [ %error.3, %if.end63.cleanup114_crit_edge ], [ %error.5, %if.then112 ], [ %error.5, %out.cleanup114_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_trans_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_map_blocks(ptr nocapture noundef %wpc, ptr noundef %inode, i64 noundef %offset) #0 align 64 {
entry:
  %mp.i = alloca %struct.metapath, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %0 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.not = icmp eq i8 %1, 0
  br i1 %tobool.not.i.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b59 = load i1, ptr @gfs2_map_blocks.__already_done, align 1
  br i1 %.b59, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !75

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gfs2_map_blocks.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2470, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end39:                                         ; preds = %entry
  %offset40 = getelementptr inbounds %struct.iomap, ptr %wpc, i32 0, i32 1
  %2 = ptrtoint ptr %offset40 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset40, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %offset)
  %cmp.not = icmp sgt i64 %3, %offset
  br i1 %cmp.not, label %if.end39.if.end46_crit_edge, label %land.lhs.true

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end39
  %length = getelementptr inbounds %struct.iomap, ptr %wpc, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %length, align 8
  %add = add i64 %5, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %offset)
  %cmp44 = icmp ugt i64 %add, %offset
  br i1 %cmp44, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end39.if.end46_crit_edge
  %6 = call ptr @memset(ptr %wpc, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mp.i) #12
  %7 = call ptr @memset(ptr %mp.i, i32 0, i32 64)
  %8 = getelementptr inbounds %struct.metapath, ptr %mp.i, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %8, align 4
  %call.i = call fastcc i32 @__gfs2_iomap_get(ptr noundef %inode, i64 noundef %offset, i64 noundef 2147483647, i32 noundef 0, ptr noundef %wpc, ptr noundef nonnull %mp.i) #12
  call fastcc void @release_metapath(ptr noundef nonnull %mp.i) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mp.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %land.lhs.true.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end46 ], [ -5, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -5, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_alloc_blocks(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_remove_revoke(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_dir_get_new_buffer(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_i(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_iomap_start(ptr noundef %ip, i64 noundef %pos, i32 noundef %length, i16 noundef zeroext %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_iomap_start, i32 0, i32 1), ptr blockaddress(@trace_gfs2_iomap_start, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !75

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %call42 = tail call i32 @__traceiter_gfs2_iomap_start(ptr noundef null, ptr noundef %ip, i64 noundef %pos, i32 noundef %length, i16 noundef zeroext %flags) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !75

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_iomap_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_iomap_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gfs2_iomap_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gfs2_iomap_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 503, ptr noundef nonnull @.str.15) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_iomap_end(ptr noundef %ip, ptr noundef %iomap, i32 noundef %ret) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_iomap_end, i32 0, i32 1), ptr blockaddress(@trace_gfs2_iomap_end, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !88

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !75

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %call42 = tail call i32 @__traceiter_gfs2_iomap_end(ptr noundef null, ptr noundef %ip, ptr noundef %iomap, i32 noundef %ret) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !75

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_iomap_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_iomap_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gfs2_iomap_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gfs2_iomap_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 542, ptr noundef nonnull @.str.15) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !93
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #12
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
declare dso_local i32 @__traceiter_gfs2_iomap_start(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_inplace_reserve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_inplace_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_lock(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_check(ptr noundef, [1 x i32], [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_iomap_page_prepare(ptr nocapture noundef readonly %inode, i64 noundef %pos, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %1 to i32
  %notmask = shl nsw i32 -1, %conv.i
  %sub = xor i32 %notmask, -1
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %conv = zext i32 %sub to i64
  %and = and i64 %conv, %pos
  %conv2 = zext i32 %len to i64
  %add = add nuw nsw i64 %conv, %conv2
  %add4 = add nuw nsw i64 %add, %and
  %sh_prom = zext i8 %1 to i64
  %shr = lshr i64 %add4, %sh_prom
  %conv6 = trunc i64 %shr to i32
  %add7 = add i32 %conv6, 1
  %call8 = tail call i32 @gfs2_trans_begin(ptr noundef %5, i32 noundef %add7, i32 noundef 0) #12
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_iomap_page_done(ptr noundef %inode, i64 noundef %pos, i32 noundef %copied, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 146
  %4 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %journal_info, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  %tobool.not = icmp eq ptr %page, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %10 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.not = icmp eq i8 %11, 0
  br i1 %tobool.not.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %conv = trunc i64 %pos to i32
  %and = and i32 %conv, 4095
  tail call void @gfs2_page_add_databufs(ptr noundef %inode, ptr noundef nonnull %page, i32 noundef %and, i32 noundef %copied) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tr_num_buf_new = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %tr_num_buf_new to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tr_num_buf_new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 2) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  tail call void @gfs2_trans_end(ptr noundef %9) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_page_add_databufs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gfs2_iomap_end(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_fs_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gfs2_bmap(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_hole_size(ptr noundef %inode, i64 noundef %lblock, i64 noundef %len, ptr nocapture noundef readonly %mp, ptr nocapture noundef writeonly %iomap) unnamed_addr #0 align 64 {
entry:
  %clone = alloca %struct.metapath, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %clone) #12
  %0 = call ptr @memcpy(ptr %clone, ptr %mp, i32 68)
  %mp_aheight.i = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 3
  %1 = ptrtoint ptr %mp_aheight.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mp_aheight.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5.not.i = icmp eq i32 %2, 0
  br i1 %cmp5.not.i, label %entry.clone_metapath.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.clone_metapath.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %clone_metapath.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %hgt.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [10 x ptr], ptr %clone, i32 0, i32 %hgt.06.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %b_count.i.i = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %b_count.i.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i.i, ptr %b_count.i.i, i32 1, ptr elementtype(i32) %b_count.i.i) #12, !srcloc !127
  %inc.i = add nuw i32 %hgt.06.i, 1
  %6 = ptrtoint ptr %mp_aheight.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mp_aheight.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.clone_metapath.exit_crit_edge

for.body.i.clone_metapath.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %clone_metapath.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

clone_metapath.exit:                              ; preds = %for.body.i.clone_metapath.exit_crit_edge, %entry.clone_metapath.exit_crit_edge
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %mp_fheight.i = getelementptr inbounds %struct.metapath, ptr %clone, i32 0, i32 2
  %12 = ptrtoint ptr %mp_fheight.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mp_fheight.i, align 4
  %mp_aheight.i11 = getelementptr inbounds %struct.metapath, ptr %clone, i32 0, i32 3
  %hgt.0117.i = add i32 %13, -1
  %14 = ptrtoint ptr %mp_aheight.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mp_aheight.i11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %hgt.0117.i, i32 %15)
  %cmp.not118.i = icmp ult i32 %hgt.0117.i, %15
  br i1 %cmp.not118.i, label %clone_metapath.exit.for.cond6.preheader.i_crit_edge, label %for.body.lr.ph.i

clone_metapath.exit.for.cond6.preheader.i_crit_edge: ; preds = %clone_metapath.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond6.preheader.i

for.body.lr.ph.i:                                 ; preds = %clone_metapath.exit
  %sd_inptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %11, i32 0, i32 9
  br label %for.body.i13

for.cond6.preheader.i:                            ; preds = %for.body.i13.for.cond6.preheader.i_crit_edge, %clone_metapath.exit.for.cond6.preheader.i_crit_edge
  %factor.0.lcssa.i = phi i64 [ 1, %clone_metapath.exit.for.cond6.preheader.i_crit_edge ], [ %mul5.i, %for.body.i13.for.cond6.preheader.i_crit_edge ]
  %max_len.addr.0.lcssa.i = phi i64 [ %len, %clone_metapath.exit.for.cond6.preheader.i_crit_edge ], [ %add.i, %for.body.i13.for.cond6.preheader.i_crit_edge ]
  %hgt.0.lcssa.i = phi i32 [ %hgt.0117.i, %clone_metapath.exit.for.cond6.preheader.i_crit_edge ], [ %hgt.0.i, %for.body.i13.for.cond6.preheader.i_crit_edge ]
  %sd_inptrs11.i = getelementptr inbounds %struct.gfs2_sbd, ptr %11, i32 0, i32 9
  %sd_diptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %11, i32 0, i32 8
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  br label %for.cond6.i

for.body.i13:                                     ; preds = %for.body.i13.for.body.i13_crit_edge, %for.body.lr.ph.i
  %hgt.0121.i = phi i32 [ %hgt.0117.i, %for.body.lr.ph.i ], [ %hgt.0.i, %for.body.i13.for.body.i13_crit_edge ]
  %max_len.addr.0120.i = phi i64 [ %len, %for.body.lr.ph.i ], [ %add.i, %for.body.i13.for.body.i13_crit_edge ]
  %factor.0119.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %mul5.i, %for.body.i13.for.body.i13_crit_edge ]
  %arrayidx.i12 = getelementptr %struct.metapath, ptr %clone, i32 0, i32 1, i32 %hgt.0121.i
  %16 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i12, align 2
  %conv.i = zext i16 %17 to i64
  %mul.i = mul i64 %factor.0119.i, %conv.i
  %add.i = add i64 %mul.i, %max_len.addr.0120.i
  store i16 0, ptr %arrayidx.i12, align 2
  %18 = ptrtoint ptr %sd_inptrs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sd_inptrs.i, align 4
  %conv4.i = zext i32 %19 to i64
  %mul5.i = mul i64 %factor.0119.i, %conv4.i
  %hgt.0.i = add i32 %hgt.0121.i, -1
  %20 = ptrtoint ptr %mp_aheight.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mp_aheight.i11, align 4
  %cmp.not.i = icmp ult i32 %hgt.0.i, %21
  br i1 %cmp.not.i, label %for.body.i13.for.cond6.preheader.i_crit_edge, label %for.body.i13.for.body.i13_crit_edge

for.body.i13.for.body.i13_crit_edge:              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i13

for.body.i13.for.cond6.preheader.i_crit_edge:     ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond6.preheader.i

for.cond6.i:                                      ; preds = %cleanup.i, %for.cond6.preheader.i
  %factor.1.i = phi i64 [ %factor.4.lcssa.i, %cleanup.i ], [ %factor.0.lcssa.i, %for.cond6.preheader.i ]
  %hgt.1.i = phi i32 [ %add292.i, %cleanup.i ], [ %hgt.0.lcssa.i, %for.cond6.preheader.i ]
  %max_len.addr.1.i = phi i64 [ %sub246142.i, %cleanup.i ], [ %max_len.addr.0.lcssa.i, %for.cond6.preheader.i ]
  %arrayidx8.i = getelementptr %struct.metapath, ptr %clone, i32 0, i32 1, i32 %hgt.1.i
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hgt.1.i)
  %cmp9.not.i = icmp eq i32 %hgt.1.i, 0
  %cond.in.i = select i1 %cmp9.not.i, ptr %sd_diptrs.i, ptr %sd_inptrs11.i
  %24 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %conv12.i = zext i16 %23 to i32
  %sub13.i = sub i32 %cond.i, %conv12.i
  %conv14.i = zext i32 %sub13.i to i64
  %mul15.i = mul i64 %factor.1.i, %conv14.i
  call void @__sanitizer_cov_trace_cmp8(i64 %max_len.addr.1.i, i64 %mul15.i)
  %cmp16.i = icmp ult i64 %max_len.addr.1.i, %mul15.i
  br i1 %cmp16.i, label %if.then.i, label %for.cond6.i.if.end214.i_crit_edge

for.cond6.i.if.end214.i_crit_edge:                ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end214.i

if.then.i:                                        ; preds = %for.cond6.i
  %add18.i = add i64 %factor.1.i, -1
  %sub19.i = add i64 %add18.i, %max_len.addr.1.i
  %conv20.i = trunc i64 %factor.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub19.i)
  %cmp196.i = icmp ult i64 %sub19.i, 4294967296
  br i1 %cmp196.i, label %if.then200.i, label %if.else206.i, !prof !75

if.then200.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv201.i = trunc i64 %sub19.i to i32
  %div204.i = udiv i32 %conv201.i, %conv20.i
  br label %if.end214.i

if.else206.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv20.i, i64 %sub19.i) #15, !srcloc !94
  %asmresult1.i.i = extractvalue { i64, i64 } %25, 1
  %extract.t110.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end214.i

if.end214.i:                                      ; preds = %if.else206.i, %if.then200.i, %for.cond6.i.if.end214.i_crit_edge
  %ptrs.0.i = phi i32 [ %sub13.i, %for.cond6.i.if.end214.i_crit_edge ], [ %div204.i, %if.then200.i ], [ %extract.t110.i, %if.else206.i ]
  %26 = ptrtoint ptr %mp_aheight.i11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mp_aheight.i11, align 4
  %sub.i5.i = add i32 %27, -1
  %arrayidx.i.i.i.i = getelementptr [10 x ptr], ptr %clone, i32 0, i32 %sub.i5.i
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i5.i)
  %cmp.i.i.i.i = icmp eq i32 %sub.i5.i, 0
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data.i.i.i.i, align 4
  %..i.i.i.i = select i1 %cmp.i.i.i.i, i32 232, i32 24
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %31, i32 %..i.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.metapath, ptr %clone, i32 0, i32 1, i32 %sub.i5.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %33 to i32
  %add.ptr.i.i.i = getelementptr i64, ptr %add.ptr2.i.i.i.i, i32 %conv.i.i.i
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr.i.i.i, i32 %ptrs.0.i
  %cmp21.i.i = icmp ult ptr %add.ptr.i.i.i, %add.ptr.i.i
  br i1 %cmp21.i.i, label %if.end214.i.for.body.i.i_crit_edge, label %if.end214.i.sw.epilog.i_crit_edge

if.end214.i.sw.epilog.i_crit_edge:                ; preds = %if.end214.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.end214.i.for.body.i.i_crit_edge:               ; preds = %if.end214.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end214.i.for.body.i.i_crit_edge
  %ptr.022.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i.i, %if.end214.i.for.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %ptr.022.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %ptr.022.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool.not.i.i = icmp eq i64 %35, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %gfs2_hole_walker.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr i64, ptr %ptr.022.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.sw.epilog.i_crit_edge

for.inc.i.i.sw.epilog.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

gfs2_hole_walker.exit.i:                          ; preds = %for.body.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %ptr.022.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %36 = lshr exact i32 %sub.ptr.sub.i.i, 3
  %37 = trunc i32 %36 to i16
  %conv1.i.i = add i16 %33, %37
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv1.i.i, ptr %arrayidx.i.i.i, align 2
  %39 = ptrtoint ptr %mp_aheight.i11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mp_aheight.i11, align 4
  %41 = ptrtoint ptr %mp_fheight.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mp_fheight.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp3.i.not.i = icmp eq i32 %40, %42
  br i1 %cmp3.i.not.i, label %if.then2, label %sw.epilog.thread.i

sw.epilog.i:                                      ; preds = %for.inc.i.i.sw.epilog.i_crit_edge, %if.end214.i.sw.epilog.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %max_len.addr.1.i, i64 %mul15.i)
  %cmp242.not.i = icmp ugt i64 %max_len.addr.1.i, %mul15.i
  br i1 %cmp242.not.i, label %sw.epilog.i.lower_metapath.i_crit_edge, label %sw.epilog.i.if.end5_crit_edge

sw.epilog.i.if.end5_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

sw.epilog.i.lower_metapath.i_crit_edge:           ; preds = %sw.epilog.i
  br label %lower_metapath.i

sw.epilog.thread.i:                               ; preds = %gfs2_hole_walker.exit.i
  %43 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx8.i, align 2
  %conv237.i = zext i16 %44 to i32
  %sub239.i = sub nsw i32 %conv237.i, %conv12.i
  %conv240.i = zext i32 %sub239.i to i64
  %mul241.i = mul i64 %factor.1.i, %conv240.i
  call void @__sanitizer_cov_trace_cmp8(i64 %max_len.addr.1.i, i64 %mul241.i)
  %cmp242.not136.i = icmp ugt i64 %max_len.addr.1.i, %mul241.i
  br i1 %cmp242.not136.i, label %sw.epilog.thread.i.fill_up_metapath.i_crit_edge, label %sw.epilog.thread.i.if.end5_crit_edge

sw.epilog.thread.i.if.end5_crit_edge:             ; preds = %sw.epilog.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

sw.epilog.thread.i.fill_up_metapath.i_crit_edge:  ; preds = %sw.epilog.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fill_up_metapath.i

lower_metapath.i:                                 ; preds = %if.then266.i.lower_metapath.i_crit_edge, %sw.epilog.i.lower_metapath.i_crit_edge
  %factor.2.i = phi i64 [ %mul262.i, %if.then266.i.lower_metapath.i_crit_edge ], [ %factor.1.i, %sw.epilog.i.lower_metapath.i_crit_edge ]
  %hgt.2.i = phi i32 [ %dec259.i, %if.then266.i.lower_metapath.i_crit_edge ], [ %hgt.1.i, %sw.epilog.i.lower_metapath.i_crit_edge ]
  %arrayidx251.i = getelementptr [10 x ptr], ptr %clone, i32 0, i32 %hgt.2.i
  %45 = ptrtoint ptr %arrayidx251.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx251.i, align 4
  %tobool.not.i6.i = icmp eq ptr %46, null
  br i1 %tobool.not.i6.i, label %lower_metapath.i.brelse.exit.i_crit_edge, label %if.then.i7.i

lower_metapath.i.brelse.exit.i_crit_edge:         ; preds = %lower_metapath.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i

if.then.i7.i:                                     ; preds = %lower_metapath.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %46) #12
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i7.i, %lower_metapath.i.brelse.exit.i_crit_edge
  %47 = ptrtoint ptr %arrayidx251.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx251.i, align 4
  %arrayidx255.i = getelementptr %struct.metapath, ptr %clone, i32 0, i32 1, i32 %hgt.2.i
  %48 = ptrtoint ptr %arrayidx255.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %arrayidx255.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hgt.2.i)
  %tobool256.not.i = icmp eq i32 %hgt.2.i, 0
  br i1 %tobool256.not.i, label %brelse.exit.i.if.end5_crit_edge, label %if.end258.i

brelse.exit.i.if.end5_crit_edge:                  ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end258.i:                                      ; preds = %brelse.exit.i
  %dec259.i = add i32 %hgt.2.i, -1
  %49 = ptrtoint ptr %sd_inptrs11.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sd_inptrs11.i, align 4
  %conv261.i = zext i32 %50 to i64
  %mul262.i = mul i64 %factor.2.i, %conv261.i
  %arrayidx264.i = getelementptr %struct.metapath, ptr %clone, i32 0, i32 1, i32 %dec259.i
  %51 = ptrtoint ptr %arrayidx264.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx264.i, align 2
  %inc.i14 = add i16 %52, 1
  store i16 %inc.i14, ptr %arrayidx264.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec259.i)
  %tobool265.not.i = icmp eq i32 %dec259.i, 0
  %conv278.i = zext i16 %inc.i14 to i32
  br i1 %tobool265.not.i, label %if.else275.i, label %if.then266.i

if.then266.i:                                     ; preds = %if.end258.i
  %53 = ptrtoint ptr %sd_inptrs11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sd_inptrs11.i, align 4
  %cmp271.not.i = icmp ugt i32 %54, %conv278.i
  br i1 %cmp271.not.i, label %if.then266.i.fill_up_metapath.i_crit_edge, label %if.then266.i.lower_metapath.i_crit_edge

if.then266.i.lower_metapath.i_crit_edge:          ; preds = %if.then266.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lower_metapath.i

if.then266.i.fill_up_metapath.i_crit_edge:        ; preds = %if.then266.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fill_up_metapath.i

if.else275.i:                                     ; preds = %if.end258.i
  %55 = ptrtoint ptr %sd_diptrs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sd_diptrs.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv278.i)
  %cmp280.not.i = icmp ugt i32 %56, %conv278.i
  br i1 %cmp280.not.i, label %if.else275.i.fill_up_metapath.i_crit_edge, label %if.else275.i.if.end5_crit_edge

if.else275.i.if.end5_crit_edge:                   ; preds = %if.else275.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.else275.i.fill_up_metapath.i_crit_edge:        ; preds = %if.else275.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fill_up_metapath.i

fill_up_metapath.i:                               ; preds = %if.else275.i.fill_up_metapath.i_crit_edge, %if.then266.i.fill_up_metapath.i_crit_edge, %sw.epilog.thread.i.fill_up_metapath.i_crit_edge
  %mul15.pn.i = phi i64 [ %mul15.i, %if.else275.i.fill_up_metapath.i_crit_edge ], [ %mul241.i, %sw.epilog.thread.i.fill_up_metapath.i_crit_edge ], [ %mul15.i, %if.then266.i.fill_up_metapath.i_crit_edge ]
  %factor.3.i = phi i64 [ %mul262.i, %if.else275.i.fill_up_metapath.i_crit_edge ], [ %factor.1.i, %sw.epilog.thread.i.fill_up_metapath.i_crit_edge ], [ %mul262.i, %if.then266.i.fill_up_metapath.i_crit_edge ]
  %hgt.3.i = phi i32 [ 0, %if.else275.i.fill_up_metapath.i_crit_edge ], [ %hgt.1.i, %sw.epilog.thread.i.fill_up_metapath.i_crit_edge ], [ %dec259.i, %if.then266.i.fill_up_metapath.i_crit_edge ]
  %sub246142.i = sub i64 %max_len.addr.1.i, %mul15.pn.i
  %57 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %i_height.i, align 8
  %conv285.i = zext i8 %58 to i32
  %sub286.i = add nsw i32 %conv285.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub286.i)
  %tobool.not.i8.i = icmp eq i32 %sub286.i, 0
  br i1 %tobool.not.i8.i, label %fill_up_metapath.i.if.end3.i.i_crit_edge, label %fill_up_metapath.i.for.cond.i.i_crit_edge

fill_up_metapath.i.for.cond.i.i_crit_edge:        ; preds = %fill_up_metapath.i
  br label %for.cond.i.i

fill_up_metapath.i.if.end3.i.i_crit_edge:         ; preds = %fill_up_metapath.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

for.cond.i.i:                                     ; preds = %for.body.i11.i.for.cond.i.i_crit_edge, %fill_up_metapath.i.for.cond.i.i_crit_edge
  %x.0.in.i.i = phi i32 [ %x.0.i.i, %for.body.i11.i.for.cond.i.i_crit_edge ], [ %sub286.i, %fill_up_metapath.i.for.cond.i.i_crit_edge ]
  %x.0.i.i = add i32 %x.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.0.i.i)
  %cmp.not.i9.i = icmp eq i32 %x.0.i.i, 0
  br i1 %cmp.not.i9.i, label %for.cond.i.i.if.end3.i.i_crit_edge, label %for.body.i11.i

for.cond.i.i.if.end3.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

for.body.i11.i:                                   ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr [10 x ptr], ptr %clone, i32 0, i32 %x.0.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool1.not.i10.i = icmp eq ptr %60, null
  br i1 %tobool1.not.i10.i, label %for.body.i11.i.for.cond.i.i_crit_edge, label %for.body.i11.i.if.end3.i.i_crit_edge

for.body.i11.i.if.end3.i.i_crit_edge:             ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

for.body.i11.i.for.cond.i.i_crit_edge:            ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

if.end3.i.i:                                      ; preds = %for.body.i11.i.if.end3.i.i_crit_edge, %for.cond.i.i.if.end3.i.i_crit_edge, %fill_up_metapath.i.if.end3.i.i_crit_edge
  %x.1.i.i = phi i32 [ 0, %fill_up_metapath.i.if.end3.i.i_crit_edge ], [ 0, %for.cond.i.i.if.end3.i.i_crit_edge ], [ %x.0.i.i, %for.body.i11.i.if.end3.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %x.1.i.i, i32 %sub286.i)
  %cmp23.i.i.i = icmp ult i32 %x.1.i.i, %sub286.i
  br i1 %cmp23.i.i.i, label %if.end3.i.i.for.body.i.i.i_crit_edge, label %if.end3.i.i.if.end6.i.i_crit_edge

if.end3.i.i.if.end6.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

if.end3.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.end3.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end3.i.i.for.body.i.i.i_crit_edge
  %x.addr.024.i.i.i = phi i32 [ %add.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %x.1.i.i, %if.end3.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr [10 x ptr], ptr %clone, i32 0, i32 %x.addr.024.i.i.i
  %61 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.addr.024.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %x.addr.024.i.i.i, 0
  %b_data.i.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %b_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %b_data.i.i.i.i.i, align 4
  %..i.i.i.i.i = select i1 %cmp.i.i.i.i.i, i32 232, i32 24
  %add.ptr2.i.i.i.i.i = getelementptr i8, ptr %64, i32 %..i.i.i.i.i
  %arrayidx.i.i.i12.i = getelementptr %struct.metapath, ptr %clone, i32 0, i32 1, i32 %x.addr.024.i.i.i
  %65 = ptrtoint ptr %arrayidx.i.i.i12.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx.i.i.i12.i, align 2
  %conv.i.i.i.i = zext i16 %66 to i32
  %add.ptr.i.i.i.i = getelementptr i64, ptr %add.ptr2.i.i.i.i.i, i32 %conv.i.i.i.i
  %67 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %add.ptr.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %tobool.not.i.i.i = icmp eq i64 %68, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.if.end6.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.if.end6.i.i_crit_edge:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %add.i.i.i = add nuw i32 %x.addr.024.i.i.i, 1
  %arrayidx.i.i13.i = getelementptr [10 x ptr], ptr %clone, i32 0, i32 %add.i.i.i
  %call1.i.i.i = call i32 @gfs2_meta_buffer(ptr noundef %inode, i32 noundef 5, i64 noundef %68, ptr noundef %arrayidx.i.i13.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %for.inc.i.i.i, label %if.end.i.i.i.fillup_metapath.exit.i_crit_edge

if.end.i.i.i.fillup_metapath.exit.i_crit_edge:    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fillup_metapath.exit.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i
  %exitcond.not.i.i.i = icmp eq i32 %add.i.i.i, %sub286.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.if.end6.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.inc.i.i.i.if.end6.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %for.inc.i.i.i.if.end6.i.i_crit_edge, %for.body.i.i.i.if.end6.i.i_crit_edge, %if.end3.i.i.if.end6.i.i_crit_edge
  %x.addr.0.lcssa.i.i.i = phi i32 [ %x.1.i.i, %if.end3.i.i.if.end6.i.i_crit_edge ], [ %sub286.i, %for.inc.i.i.i.if.end6.i.i_crit_edge ], [ %x.addr.024.i.i.i, %for.body.i.i.i.if.end6.i.i_crit_edge ]
  %add7.i.i.i = add i32 %x.addr.0.lcssa.i.i.i, 1
  %69 = ptrtoint ptr %mp_aheight.i11 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add7.i.i.i, ptr %mp_aheight.i11, align 4
  %sub8.i.i = sub i32 %x.addr.0.lcssa.i.i.i, %x.1.i.i
  br label %fillup_metapath.exit.i

fillup_metapath.exit.i:                           ; preds = %if.end6.i.i, %if.end.i.i.i.fillup_metapath.exit.i_crit_edge
  %retval.0.i14.i = phi i32 [ %sub8.i.i, %if.end6.i.i ], [ %call1.i.i.i, %if.end.i.i.i.fillup_metapath.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i14.i)
  %cmp288.i = icmp slt i32 %retval.0.i14.i, 0
  br i1 %cmp288.i, label %fillup_metapath.exit.i.out_crit_edge, label %if.end291.i

fillup_metapath.exit.i.out_crit_edge:             ; preds = %fillup_metapath.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end291.i:                                      ; preds = %fillup_metapath.exit.i
  %add292.i = add i32 %retval.0.i14.i, %hgt.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i14.i)
  %tobool294.not124.i = icmp eq i32 %retval.0.i14.i, 0
  br i1 %tobool294.not124.i, label %if.end291.i.cleanup.i_crit_edge, label %for.body295.lr.ph.i

if.end291.i.cleanup.i_crit_edge:                  ; preds = %if.end291.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

for.body295.lr.ph.i:                              ; preds = %if.end291.i
  %70 = ptrtoint ptr %sd_inptrs11.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sd_inptrs11.i, align 4
  br label %if.else496.i

if.else496.i:                                     ; preds = %if.end516.i.if.else496.i_crit_edge, %for.body295.lr.ph.i
  %ret.0126.i = phi i32 [ %retval.0.i14.i, %for.body295.lr.ph.i ], [ %dec519.i, %if.end516.i.if.else496.i_crit_edge ]
  %factor.4125.i = phi i64 [ %factor.3.i, %for.body295.lr.ph.i ], [ %factor.5.i, %if.end516.i.if.else496.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %factor.4125.i)
  %cmp498.i = icmp ult i64 %factor.4125.i, 4294967296
  br i1 %cmp498.i, label %if.then506.i, label %if.else512.i, !prof !75

if.then506.i:                                     ; preds = %if.else496.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv507.i = trunc i64 %factor.4125.i to i32
  %div510.i = udiv i32 %conv507.i, %71
  %conv511.i = zext i32 %div510.i to i64
  br label %if.end516.i

if.else512.i:                                     ; preds = %if.else496.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %71, i64 %factor.4125.i) #15, !srcloc !94
  %asmresult1.i40.i = extractvalue { i64, i64 } %72, 1
  br label %if.end516.i

if.end516.i:                                      ; preds = %if.else512.i, %if.then506.i
  %factor.5.i = phi i64 [ %conv511.i, %if.then506.i ], [ %asmresult1.i40.i, %if.else512.i ]
  %dec519.i = add i32 %ret.0126.i, -1
  %tobool294.not.i = icmp eq i32 %dec519.i, 0
  br i1 %tobool294.not.i, label %if.end516.i.cleanup.i_crit_edge, label %if.end516.i.if.else496.i_crit_edge

if.end516.i.if.else496.i_crit_edge:               ; preds = %if.end516.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else496.i

if.end516.i.cleanup.i_crit_edge:                  ; preds = %if.end516.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end516.i.cleanup.i_crit_edge, %if.end291.i.cleanup.i_crit_edge
  %factor.4.lcssa.i = phi i64 [ %factor.3.i, %if.end291.i.cleanup.i_crit_edge ], [ %factor.5.i, %if.end516.i.cleanup.i_crit_edge ]
  %add521.i = add i32 %add292.i, 1
  %73 = ptrtoint ptr %mp_aheight.i11 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add521.i, ptr %mp_aheight.i11, align 4
  br label %for.cond6.i

if.then2:                                         ; preds = %gfs2_hole_walker.exit.i
  %74 = ptrtoint ptr %mp_fheight.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mp_fheight.i, align 4
  %hgt.011.i = add i32 %75, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %hgt.011.i)
  %cmp12.i = icmp sgt i32 %hgt.011.i, -1
  br i1 %cmp12.i, label %for.body.lr.ph.i18, label %if.then2.metapath_to_block.exit_crit_edge

if.then2.metapath_to_block.exit_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %metapath_to_block.exit

for.body.lr.ph.i18:                               ; preds = %if.then2
  %76 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %77, i32 0, i32 33
  %78 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %s_fs_info.i, align 16
  %80 = ptrtoint ptr %mp_aheight.i11 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mp_aheight.i11, align 4
  %sd_inptrs.i17 = getelementptr inbounds %struct.gfs2_sbd, ptr %79, i32 0, i32 9
  %82 = ptrtoint ptr %sd_inptrs.i17 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sd_inptrs.i17, align 4
  %conv2.i = zext i32 %83 to i64
  br label %for.body.i19

for.body.i19:                                     ; preds = %if.end.i.for.body.i19_crit_edge, %for.body.lr.ph.i18
  %hgt.015.i = phi i32 [ %hgt.011.i, %for.body.lr.ph.i18 ], [ %hgt.0.i25, %if.end.i.for.body.i19_crit_edge ]
  %block.014.i = phi i64 [ 0, %for.body.lr.ph.i18 ], [ %block.1.i, %if.end.i.for.body.i19_crit_edge ]
  %factor.013.i = phi i64 [ 1, %for.body.lr.ph.i18 ], [ %mul3.i, %if.end.i.for.body.i19_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hgt.015.i, i32 %81)
  %cmp1.i = icmp slt i32 %hgt.015.i, %81
  br i1 %cmp1.i, label %if.then.i24, label %for.body.i19.if.end.i_crit_edge

for.body.i19.if.end.i_crit_edge:                  ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i24:                                      ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i20 = getelementptr %struct.metapath, ptr %clone, i32 0, i32 1, i32 %hgt.015.i
  %84 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.i20, align 2
  %conv.i21 = zext i16 %85 to i64
  %mul.i22 = mul i64 %factor.013.i, %conv.i21
  %add.i23 = add i64 %mul.i22, %block.014.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i24, %for.body.i19.if.end.i_crit_edge
  %block.1.i = phi i64 [ %add.i23, %if.then.i24 ], [ %block.014.i, %for.body.i19.if.end.i_crit_edge ]
  %mul3.i = mul i64 %factor.013.i, %conv2.i
  %hgt.0.i25 = add i32 %hgt.015.i, -1
  %cmp.i26 = icmp sgt i32 %hgt.0.i25, -1
  br i1 %cmp.i26, label %if.end.i.for.body.i19_crit_edge, label %if.end.i.metapath_to_block.exit_crit_edge

if.end.i.metapath_to_block.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %metapath_to_block.exit

if.end.i.for.body.i19_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i19

metapath_to_block.exit:                           ; preds = %if.end.i.metapath_to_block.exit_crit_edge, %if.then2.metapath_to_block.exit_crit_edge
  %block.0.lcssa.i = phi i64 [ 0, %if.then2.metapath_to_block.exit_crit_edge ], [ %block.1.i, %if.end.i.metapath_to_block.exit_crit_edge ]
  %sub = sub i64 %block.0.lcssa.i, %lblock
  br label %if.end5

if.end5:                                          ; preds = %metapath_to_block.exit, %if.else275.i.if.end5_crit_edge, %brelse.exit.i.if.end5_crit_edge, %sw.epilog.thread.i.if.end5_crit_edge, %sw.epilog.i.if.end5_crit_edge
  %hole_size.0 = phi i64 [ %sub, %metapath_to_block.exit ], [ %len, %brelse.exit.i.if.end5_crit_edge ], [ %len, %sw.epilog.i.if.end5_crit_edge ], [ %len, %if.else275.i.if.end5_crit_edge ], [ %len, %sw.epilog.thread.i.if.end5_crit_edge ]
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %86 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %i_blkbits, align 2
  %sh_prom = zext i8 %87 to i64
  %shl = shl i64 %hole_size.0, %sh_prom
  %length = getelementptr inbounds %struct.iomap, ptr %iomap, i32 0, i32 2
  %88 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %shl, ptr %length, align 8
  br label %out

out:                                              ; preds = %if.end5, %fillup_metapath.exit.i.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end5 ], [ %retval.0.i14.i, %fillup_metapath.exit.i.out_crit_edge ]
  call fastcc void @release_metapath(ptr noundef nonnull %clone)
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %clone) #12
  ret i32 %ret.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @gfs2_alloc_size(ptr nocapture noundef readonly %inode, ptr nocapture noundef readonly %mp, i64 noundef %size) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 19
  %4 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.not = icmp eq i8 %5, 0
  br i1 %tobool.not.i.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %mp_fheight = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 2
  %6 = ptrtoint ptr %mp_fheight to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mp_fheight, align 4
  %mp_aheight = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 3
  %8 = ptrtoint ptr %mp_aheight to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mp_aheight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %if.end12, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %mp_fheight3 = getelementptr inbounds %struct.metapath, ptr %mp, i32 0, i32 2
  %10 = ptrtoint ptr %mp_fheight3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mp_fheight3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp4 = icmp sgt i32 %11, 1
  %sd_inptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 9
  %sd_diptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 8
  %cond.in = select i1 %cmp4, ptr %sd_inptrs, ptr %sd_diptrs
  %12 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond = load i32, ptr %cond.in, align 4
  %sub = add i32 %11, -1
  %arrayidx = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %sub
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %14 to i32
  %sub6 = sub i32 %cond, %conv
  %conv7 = zext i32 %sub6 to i64
  %15 = tail call i64 @llvm.umin.i64(i64 %conv7, i64 %size)
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  %conv13 = zext i8 %5 to i32
  %sub14 = add nsw i32 %conv13, -1
  %arrayidx.i.i = getelementptr [10 x ptr], ptr %mp, i32 0, i32 %sub14
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14)
  %cmp.i.i = icmp eq i32 %sub14, 0
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data.i.i, align 4
  %..i.i = select i1 %cmp.i.i, i32 232, i32 24
  %add.ptr2.i.i = getelementptr i8, ptr %19, i32 %..i.i
  %arrayidx.i = getelementptr %struct.metapath, ptr %mp, i32 0, i32 1, i32 %sub14
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %21 to i32
  %add.ptr.i = getelementptr i64, ptr %add.ptr2.i.i, i32 %conv.i
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 4
  %22 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_size.i, align 8
  %add.ptr.i62 = getelementptr i8, ptr %19, i32 %23
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i62 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 3
  %conv20 = sext i32 %sub.ptr.div to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv20, i64 %size)
  %cmp21 = icmp ugt i64 %conv20, %size
  %idx.ext = trunc i64 %size to i32
  %add.ptr = getelementptr i64, ptr %add.ptr.i, i32 %idx.ext
  %end.0 = select i1 %cmp21, ptr %add.ptr, ptr %add.ptr.i62
  %cmp2563 = icmp ult ptr %add.ptr.i, %end.0
  br i1 %cmp2563, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12.for.body_crit_edge
  %ptr.064 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr.i, %if.end12.for.body_crit_edge ]
  %24 = ptrtoint ptr %ptr.064 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %ptr.064, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool27.not = icmp eq i64 %25, 0
  br i1 %tobool27.not, label %for.inc, label %for.body.for.end.loopexit_crit_edge

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i64, ptr %ptr.064, i32 1
  %cmp25 = icmp ult ptr %incdec.ptr, %end.0
  br i1 %cmp25, label %for.inc.for.body_crit_edge, label %for.inc.for.end.loopexit_crit_edge

for.inc.for.end.loopexit_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc.for.end.loopexit_crit_edge, %for.body.for.end.loopexit_crit_edge
  %ptr.0.lcssa.ph = phi ptr [ %incdec.ptr, %for.inc.for.end.loopexit_crit_edge ], [ %ptr.064, %for.body.for.end.loopexit_crit_edge ]
  %.pre = ptrtoint ptr %ptr.0.lcssa.ph to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end12.for.end_crit_edge
  %sub.ptr.lhs.cast30.pre-phi = phi i32 [ %.pre, %for.end.loopexit ], [ %sub.ptr.rhs.cast, %if.end12.for.end_crit_edge ]
  %sub.ptr.sub32 = sub i32 %sub.ptr.lhs.cast30.pre-phi, %sub.ptr.rhs.cast
  %sub.ptr.div33 = ashr exact i32 %sub.ptr.sub32, 3
  %conv34 = sext i32 %sub.ptr.div33 to i64
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i64 [ %15, %if.then ], [ %conv34, %for.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dinode_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_meta_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_metapath_ra(ptr noundef %gl, ptr noundef readonly %start, ptr noundef readnone %end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp20 = icmp ult ptr %start, %end
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %t.021 = phi ptr [ %incdec.ptr, %cleanup.for.body_crit_edge ], [ %start, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %t.021 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %t.021, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call = tail call ptr @gfs2_getbuf(ptr noundef %gl, i64 noundef %1, i32 noundef 1) #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #12
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %call, align 4
  %and.i.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

trylock_buffer.exit:                              ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 4, ptr elementtype(i32) %call) #12, !srcloc !128
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !129
  %5 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.not = icmp eq i32 %5, 0
  br i1 %tobool2.not.not, label %if.then3, label %trylock_buffer.exit.if.end9_crit_edge

trylock_buffer.exit.if.end9_crit_edge:            ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then3:                                         ; preds = %trylock_buffer.exit
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @end_buffer_read_sync, ptr %b_end_io, align 4
  %call7 = tail call i32 @submit_bh(i32 noundef 0, i32 noundef 536576, ptr noundef %call) #12
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unlock_buffer(ptr noundef %call) #12
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %trylock_buffer.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end9.cleanup_crit_edge, label %if.then.i

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end9.cleanup_crit_edge, %if.then6, %for.body.cleanup_crit_edge
  %incdec.ptr = getelementptr i64, ptr %t.021, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %end
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_rindex_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_hold(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_withdraw_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_statfs_change(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_change(ptr noundef, i64 noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_unhold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_getbuf(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_check_ii(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_metatype_check_ii(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_glock2rgrp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_blk2rgrpd(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rs_deltree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_free_blocks(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_ordered_del_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_zero_range(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !55, !56, !57, !59, !61, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @gfs2_iomap_ops, !1, !"gfs2_iomap_ops", i1 false, i1 false}
!1 = !{!"../fs/gfs2/bmap.c", i32 1176, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/gfs2/bmap.c", i32 2035, i32 2}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/gfs2/bmap.c", i32 2270, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @gfs2_map_journal_extents._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @gfs2_map_journal_extents._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/gfs2/bmap.c", i32 2275, i32 2}
!11 = !{ptr @gfs2_map_journal_extents._entry.3, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @gfs2_map_journal_extents._entry_ptr.5, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/gfs2/bmap.c", i32 2279, i32 2}
!15 = !{ptr @gfs2_map_journal_extents._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @gfs2_map_journal_extents._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @gfs2_writeback_ops, !18, !"gfs2_writeback_ops", i1 false, i1 false}
!18 = !{!"../fs/gfs2/bmap.c", i32 2482, i32 34}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/mm.h", i32 717, i32 2}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../fs/gfs2/trace_gfs2.h", i32 475, i32 1}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @gfs2_iomap_page_ops, !38, !"gfs2_iomap_page_ops", i1 false, i1 false}
!38 = !{!"../fs/gfs2/bmap.c", i32 991, i32 36}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../fs/gfs2/trace_gfs2.h", i32 505, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../fs/gfs2/trace_gfs2.h", i32 436, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/gfs2/bmap.c", i32 1816, i32 4}
!50 = !{ptr @__func__.punch_hole, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/gfs2/bmap.c", i32 1817, i32 8}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/gfs2/bmap.c", i32 1819, i32 5}
!55 = !{ptr @punch_hole._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @punch_hole._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/gfs2/util.h", i32 126, i32 38}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/gfs2/bmap.c", i32 1460, i32 3}
!61 = !{ptr @__func__.sweep_bh_for_rgrps, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../fs/gfs2/bmap.c", i32 2470, i32 6}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 2150638851, i64 2150639342, i64 2150638888, i64 2150638944, i64 2150638978, i64 2150639002, i64 2150639043, i64 2150639064, i64 2150639092, i64 2150639126}
!77 = !{i64 2151388743}
!78 = !{i64 2151389814}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2151097557, i64 2151098048, i64 2151097594, i64 2151097650, i64 2151097684, i64 2151097708, i64 2151097749, i64 2151097770, i64 2151097798, i64 2151097832}
!81 = !{i64 2155535661, i64 2155536139, i64 2155535698, i64 2155535754, i64 2155535788, i64 2155535812, i64 2155535853, i64 2155535874, i64 2155535902, i64 2155535936}
!82 = !{i64 2154768359, i64 2154768840, i64 2154768396, i64 2154768452, i64 2154768486, i64 2154768510, i64 2154768551, i64 2154768572, i64 2154768600, i64 2154768634}
!83 = !{i64 2154742259, i64 2154742738, i64 2154742296, i64 2154742352, i64 2154742386, i64 2154742410, i64 2154742451, i64 2154742472, i64 2154742500, i64 2154742534}
!84 = !{i64 2153227922, i64 2153228405, i64 2153227959, i64 2153228015, i64 2153228049, i64 2153228073, i64 2153228114, i64 2153228135, i64 2153228163, i64 2153228197}
!85 = !{i64 2148629812}
!86 = !{i64 2148544521, i64 2148544553, i64 2148544582, i64 2148544616, i64 2148544647, i64 2148544670}
!87 = !{i64 2148630041}
!88 = !{i64 2148365934, i64 2148365939, i64 2148365952, i64 2148365996, i64 2148366030, i64 2148366051}
!89 = !{i64 2154744979, i64 2154745457, i64 2154745016, i64 2154745072, i64 2154745106, i64 2154745130, i64 2154745171, i64 2154745192, i64 2154745220, i64 2154745254}
!90 = !{i64 2155449668}
!91 = !{i64 2155449907}
!92 = !{i64 2149566191}
!93 = !{i64 2149567227}
!94 = !{i64 2148391121, i64 2148391401, i64 2148391735, i64 2148392069}
!95 = !{i64 2155563258, i64 2155563737, i64 2155563295, i64 2155563351, i64 2155563385, i64 2155563409, i64 2155563450, i64 2155563471, i64 2155563499, i64 2155563533}
!96 = !{i64 2155564849, i64 2155565328, i64 2155564886, i64 2155564942, i64 2155564976, i64 2155565000, i64 2155565041, i64 2155565062, i64 2155565090, i64 2155565124}
!97 = !{i64 2155566408, i64 2155566887, i64 2155566445, i64 2155566501, i64 2155566535, i64 2155566559, i64 2155566600, i64 2155566621, i64 2155566649, i64 2155566683}
!98 = !{i64 2155557568, i64 2155558047, i64 2155557605, i64 2155557661, i64 2155557695, i64 2155557719, i64 2155557760, i64 2155557781, i64 2155557809, i64 2155557843}
!99 = !{i64 2155555961, i64 2155556440, i64 2155555998, i64 2155556054, i64 2155556088, i64 2155556112, i64 2155556153, i64 2155556174, i64 2155556202, i64 2155556236}
!100 = !{i64 2155568069, i64 2155568548, i64 2155568106, i64 2155568162, i64 2155568196, i64 2155568220, i64 2155568261, i64 2155568282, i64 2155568310, i64 2155568344}
!101 = !{i64 2155569704, i64 2155570183, i64 2155569741, i64 2155569797, i64 2155569831, i64 2155569855, i64 2155569896, i64 2155569917, i64 2155569945, i64 2155569979}
!102 = !{i64 2155572124, i64 2155572604, i64 2155572161, i64 2155572217, i64 2155572251, i64 2155572275, i64 2155572316, i64 2155572337, i64 2155572365, i64 2155572399}
!103 = !{i64 2152574868}
!104 = !{i64 2150066253}
!105 = !{i64 2150071187}
!106 = !{i64 2150092905}
!107 = !{i64 2150097799}
!108 = !{i64 2150174326}
!109 = !{i64 2150174651}
!110 = !{i64 2152586730}
!111 = !{i64 2155579084, i64 2155579564, i64 2155579121, i64 2155579177, i64 2155579211, i64 2155579235, i64 2155579276, i64 2155579297, i64 2155579325, i64 2155579359}
!112 = !{i64 946016, i64 946077}
!113 = !{i64 948748}
!114 = !{i64 949033}
!115 = !{i64 2152572937}
!116 = !{i64 2152572779}
!117 = !{i64 2152573107}
!118 = !{i64 2150174001}
!119 = !{i64 905290, i64 905317}
!120 = !{i64 905985, i64 906012, i64 906045, i64 906066, i64 906093, i64 906119}
!121 = !{i64 2155591997, i64 2155592477, i64 2155592034, i64 2155592090, i64 2155592124, i64 2155592148, i64 2155592189, i64 2155592210, i64 2155592238, i64 2155592272}
!122 = !{i64 2155594100, i64 2155594580, i64 2155594137, i64 2155594193, i64 2155594227, i64 2155594251, i64 2155594292, i64 2155594313, i64 2155594341, i64 2155594375}
!123 = !{i64 2155466584}
!124 = !{i64 2155466823}
!125 = !{i64 2155487507}
!126 = !{i64 2155487726}
!127 = !{i64 2148541336, i64 2148541362, i64 2148541391, i64 2148541425, i64 2148541456, i64 2148541479}
!128 = !{i64 2148550194, i64 2148550226, i64 2148550255, i64 2148550289, i64 2148550320, i64 2148550343}
!129 = !{i64 2148639299}
