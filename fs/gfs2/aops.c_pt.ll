; ModuleID = '/llk/IR_all_yes/fs/gfs2/aops.c_pt.bc'
source_filename = "../fs/gfs2/aops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iomap_ops = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.74 }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.iomap_writeback_ops = type { ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.6, %union.anon.72, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.72 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
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
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
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
%struct.gfs2_sbd = type { ptr, ptr, %struct.kobject, %struct.completion, i32, %struct.gfs2_sb_host, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64], i32, %struct.gfs2_args, %struct.gfs2_tune, %struct.lm_lockstruct, %struct.gfs2_holder, ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.completion, %struct.completion, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32, %struct.spinlock, %struct.rb_root, i32, i32, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.gfs2_holder, %struct.gfs2_holder, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.completion, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, ptr, %struct.spinlock, i64, %struct.address_space, %struct.spinlock, ptr, i32, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, i64, i32, %struct.rw_semaphore, %struct.atomic_t, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.gfs2_holder, %struct.atomic_t, %struct.mutex, [270 x i8], [256 x i8], [256 x i8], i32, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.82, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.anon.82 = type { %struct.delayed_work, i64 }
%struct.rhash_head = type { ptr }
%struct.gfs2_bufdata = type { ptr, ptr, i64, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.iomap_writepage_ctx = type { %struct.iomap, ptr, ptr }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }

@adjust_fs_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014gfs2: fsid=%s: File system extended by %llu blocks.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adjust_fs_space\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/gfs2/aops.c\00", [17 x i8] zeroinitializer }, align 32
@adjust_fs_space._entry_ptr = internal global ptr @adjust_fs_space._entry, section ".printk_index", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bd->bd_bh == bh\00", [16 x i8] zeroinitializer }, align 32
@__func__.gfs2_releasepage = private unnamed_addr constant [17 x i8] c"gfs2_releasepage\00", align 1
@gfs2_bufdata_cachep = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_jdata_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @gfs2_jdata_writepage, ptr @gfs2_readpage, ptr @gfs2_jdata_writepages, ptr @jdata_set_page_dirty, ptr null, ptr @gfs2_readahead, ptr null, ptr null, ptr @gfs2_bmap, ptr @gfs2_invalidatepage, ptr @gfs2_releasepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @block_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gfs2_aops = internal constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @gfs2_writepage, ptr @gfs2_readpage, ptr @gfs2_writepages, ptr @__set_page_dirty_nobuffers, ptr null, ptr @gfs2_readahead, ptr null, ptr null, ptr @gfs2_bmap, ptr @iomap_invalidatepage, ptr @iomap_releasepage, ptr null, ptr @noop_direct_IO, ptr @iomap_migrate_page, ptr null, ptr null, ptr null, ptr @iomap_is_partially_uptodate, ptr null, ptr @generic_error_remove_page, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@gfs2_iomap_ops = external dso_local constant %struct.iomap_ops, align 4
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@gfs2_meta_aops = external dso_local constant %struct.address_space_operations, align 4
@gfs2_rgrp_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"gfs2_glock_is_held_excl(ip->i_gl)\00", [62 x i8] zeroinitializer }, align 32
@__func__.gfs2_jdata_writepage = private unnamed_addr constant [21 x i8] c"gfs2_jdata_writepage\00", align 1
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@__tracepoint_wbc_writepage = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/trace/events/writeback.h\00", [63 x i8] zeroinitializer }, align 32
@trace_wbc_writepage.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@__func__.gfs2_writepage = private unnamed_addr constant [15 x i8] c"gfs2_writepage\00", align 1
@gfs2_writeback_ops = external dso_local constant %struct.iomap_writeback_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 524288]
@___asan_gen_.16 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 598, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 753, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"gfs2_jdata_aops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 792, i32 46 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"gfs2_aops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 777, i32 46 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 452, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 260, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 717, i32 2 }
@___asan_gen_.47 = private constant [18 x i8] c"../fs/gfs2/aops.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 183, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 430, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 788, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 420, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [36 x i8] c"../include/trace/events/writeback.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 496, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 108, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 366, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @adjust_fs_space._entry, ptr @adjust_fs_space._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @gfs2_jdata_aops, ptr @gfs2_aops, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adjust_fs_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_jdata_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_page_add_databufs(ptr nocapture noundef readonly %ip, ptr noundef %page, i32 noundef %from, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !52

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

PagePrivate.exit:                                 ; preds = %entry
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %page, align 4
  %4 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !52

do.body4:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !54
  unreachable

do.end9:                                          ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private, align 4
  %7 = inttoptr i32 %6 to ptr
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %b_size, align 8
  %add = add i32 %len, %from
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end9
  %start.035 = phi i32 [ 0, %do.end9 ], [ %add13, %for.inc.for.body_crit_edge ]
  %bh.032 = phi ptr [ %7, %do.end9 ], [ %15, %for.inc.for.body_crit_edge ]
  %add13 = add i32 %start.035, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %from)
  %cmp14.not = icmp ugt i32 %add13, %from
  br i1 %cmp14.not, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %start.035, i32 %add)
  %cmp17.not = icmp ult i32 %start.035, %add
  br i1 %cmp17.not, label %if.end19, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end19:                                         ; preds = %if.end16
  %10 = ptrtoint ptr %bh.032 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %bh.032, align 4
  %and1.i.i30 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i30)
  %tobool.not.i = icmp eq i32 %and1.i.i30, 0
  br i1 %tobool.not.i, label %if.then.i31, label %if.end19.set_buffer_uptodate.exit_crit_edge

if.end19.set_buffer_uptodate.exit_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_buffer_uptodate.exit

if.then.i31:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.032) #10
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i31, %if.end19.set_buffer_uptodate.exit_crit_edge
  %12 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_gl, align 4
  tail call void @gfs2_trans_add_data(ptr noundef %13, ptr noundef %bh.032) #10
  br label %for.inc

for.inc:                                          ; preds = %set_buffer_uptodate.exit, %for.body.for.inc_crit_edge
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.032, i32 0, i32 1
  %14 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp ne ptr %15, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add13)
  %tobool10.not = icmp eq i32 %add13, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_internal_read(ptr nocapture noundef readonly %ip, ptr nocapture noundef writeonly %buf, ptr nocapture noundef %pos, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %4 = lshr i64 %3, 12
  %conv = trunc i64 %4 to i32
  %5 = trunc i64 %3 to i32
  %conv1 = and i32 %5, 4095
  br label %do.body

do.body:                                          ; preds = %put_page.exit.do.body_crit_edge, %entry
  %index.0 = phi i32 [ %conv, %entry ], [ %inc, %put_page.exit.do.body_crit_edge ]
  %offset.0 = phi i32 [ %conv1, %entry ], [ 0, %put_page.exit.do.body_crit_edge ]
  %copied.0 = phi i32 [ 0, %entry ], [ %add14, %put_page.exit.do.body_crit_edge ]
  %sub = sub i32 %size, %copied.0
  %add = add i32 %offset.0, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp ugt i32 %add, 4096
  %sub3 = sub nuw nsw i32 4096, %offset.0
  %spec.select = select i1 %cmp, i32 %sub3, i32 %sub
  %call = tail call ptr @read_cache_page(ptr noundef %1, i32 noundef %index.0, ptr noundef nonnull @__gfs2_readpage, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end7:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %7 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %7, 512
  %8 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !55
  %12 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !56
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call, i32 noundef %or.i) #10
  %add.ptr = getelementptr i8, ptr %buf, i32 %copied.0
  %add.ptr9 = getelementptr i8, ptr %call.i.i, i32 %offset.0
  %18 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr9, i32 %spec.select)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !57
  %19 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  %25 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %29 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !59

if.then.i.i:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i44 = add i32 %31, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i44, %if.then.i.i ], [ %32, %if.end.i.i ]
  %33 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %34 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i.i.i.i = icmp eq i32 %35, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !52

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %36, ptr noundef nonnull @.str.7) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !60
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !62
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gfs2_internal_read, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !64

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %33, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %33) #10
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %add14 = add i32 %spec.select, %copied.0
  %inc = add i32 %index.0, 1
  %cmp16 = icmp ult i32 %add14, %size
  br i1 %cmp16, label %put_page.exit.do.body_crit_edge, label %do.end18

put_page.exit.do.body_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end18:                                         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv19 = zext i32 %size to i64
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %pos, align 8
  %add20 = add i64 %39, %conv19
  store i64 %add20, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then5
  %retval.0 = phi i32 [ %6, %if.then5 ], [ %size, %do.end18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__gfs2_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  %dibh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_blkbits.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %11)
  %cmp = icmp eq i8 %11, 12
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !52

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

PagePrivate.exit:                                 ; preds = %land.lhs.true
  %14 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %page, align 4
  %16 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %PagePrivate.exit.if.then_crit_edge, label %PagePrivate.exit.if.else_crit_edge

PagePrivate.exit.if.else_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

PagePrivate.exit.if.then_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %PagePrivate.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call6 = tail call i32 @iomap_readpage(ptr noundef %page, ptr noundef nonnull @gfs2_iomap_ops) #10
  br label %if.end13

if.else:                                          ; preds = %PagePrivate.exit.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 19
  %17 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.not = icmp eq i8 %18, 0
  br i1 %tobool.not.i.not, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #10
  %19 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i, align 4, !annotation !65
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %3) #10
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i31 = icmp eq i32 %21, 0
  br i1 %tobool.not.i31, label %if.end.i, label %if.then.i32, !prof !59

if.then.i32:                                      ; preds = %if.then9
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  %22 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %SetPageUptodate.exit.i, label %if.then.i.i.i.i, !prof !59

if.then.i.i.i.i:                                  ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.5) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

SetPageUptodate.exit.i:                           ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %page) #10
  br label %stuffed_readpage.exit

if.end.i:                                         ; preds = %if.then9
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i.i = call i32 @gfs2_meta_buffer(ptr noundef %3, i32 noundef 4, i64 noundef %26, ptr noundef nonnull %dibh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.stuffed_readpage.exit_crit_edge

if.end.i.stuffed_readpage.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %stuffed_readpage.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %27 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %27, 512
  %28 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %31, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !55
  %32 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i1.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 213
  %36 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !56
  %call.i.i.i = call ptr @__kmap_local_page_prot(ptr noundef %page, i32 noundef %or.i.i) #10
  %38 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %sb_bsize.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %41, i32 0, i32 5, i32 4
  %42 = ptrtoint ptr %sb_bsize.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sb_bsize.i.i, align 8
  %sub.i.i = add i32 %43, -232
  %conv.i33 = zext i32 %sub.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %conv.i33)
  %cmp.i = icmp ugt i64 %call.i, %conv.i33
  %extract.t37.i = trunc i64 %call.i to i32
  %spec.select.i = select i1 %cmp.i, i32 %sub.i.i, i32 %extract.t37.i
  %44 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dibh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 232
  %48 = call ptr @memcpy(ptr %call.i.i.i, ptr %add.ptr.i, i32 %spec.select.i)
  %add.ptr15.i = getelementptr i8, ptr %call.i.i.i, i32 %spec.select.i
  %conv16.i = sub i32 4096, %spec.select.i
  %49 = call ptr @memset(ptr %add.ptr15.i, i32 0, i32 %conv16.i)
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !57
  %50 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i1.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 213
  %54 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %55, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !58
  %56 = call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i46.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i46.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %59, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @flush_dcache_page(ptr noundef %page) #10
  %60 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %if.end6.i.brelse.exit.i_crit_edge, label %if.then.i.i

if.end6.i.brelse.exit.i_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %61) #10
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %if.end6.i.brelse.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  %62 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  %and.i.i.i.i38.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i38.i)
  %tobool.not.i.i.i39.i = icmp eq i32 %and.i.i.i.i38.i, 0
  br i1 %tobool.not.i.i.i39.i, label %SetPageUptodate.exit41.i, label %if.then.i.i.i40.i, !prof !59

if.then.i.i.i40.i:                                ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.5) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

SetPageUptodate.exit41.i:                         ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @_set_bit(i32 noundef 2, ptr noundef %page) #10
  br label %stuffed_readpage.exit

stuffed_readpage.exit:                            ; preds = %SetPageUptodate.exit41.i, %if.end.i.stuffed_readpage.exit_crit_edge, %SetPageUptodate.exit.i
  %retval.0.i = phi i32 [ 0, %SetPageUptodate.exit.i ], [ 0, %SetPageUptodate.exit41.i ], [ %call.i.i, %if.end.i.stuffed_readpage.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #10
  call void @unlock_page(ptr noundef %page) #10
  br label %if.end13

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 @mpage_readpage(ptr noundef %page, ptr noundef nonnull @gfs2_block_map) #10
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %stuffed_readpage.exit, %if.then
  %error.0 = phi i32 [ %retval.0.i, %stuffed_readpage.exit ], [ %call12, %if.else11 ], [ %call6, %if.then ]
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 4
  %65 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %sd_flags.i, align 4
  %67 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i34 = icmp eq i32 %67, 0
  br i1 %tobool.not.i34, label %gfs2_withdrawn.exit, label %if.end13.gfs2_withdrawn.exit.thread_crit_edge

if.end13.gfs2_withdrawn.exit.thread_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_withdrawn.exit.thread

gfs2_withdrawn.exit:                              ; preds = %if.end13
  %68 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %sd_flags.i, align 4
  %70 = and i32 %69, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool3.i.not = icmp eq i32 %70, 0
  br i1 %tobool3.i.not, label %gfs2_withdrawn.exit._crit_edge, label %gfs2_withdrawn.exit.gfs2_withdrawn.exit.thread_crit_edge

gfs2_withdrawn.exit.gfs2_withdrawn.exit.thread_crit_edge: ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_withdrawn.exit.thread

gfs2_withdrawn.exit._crit_edge:                   ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %71

gfs2_withdrawn.exit.thread:                       ; preds = %gfs2_withdrawn.exit.gfs2_withdrawn.exit.thread_crit_edge, %if.end13.gfs2_withdrawn.exit.thread_crit_edge
  br label %71

71:                                               ; preds = %gfs2_withdrawn.exit.thread, %gfs2_withdrawn.exit._crit_edge
  %72 = phi i32 [ -5, %gfs2_withdrawn.exit.thread ], [ %error.0, %gfs2_withdrawn.exit._crit_edge ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adjust_fs_space(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  %m_bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %sd_statfs_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 37
  %4 = ptrtoint ptr %sd_statfs_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_statfs_inode, align 8
  %sd_statfs_master = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 44
  %sd_statfs_local = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m_bh) #10
  %6 = ptrtoint ptr %m_bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %m_bh, align 4, !annotation !65
  %call2 = tail call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i64 @gfs2_ri_total(ptr noundef %3) #10
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_no_addr.i, align 8
  %call.i = call i32 @gfs2_meta_buffer(ptr noundef %5, i32 noundef 4, i64 noundef %8, ptr noundef nonnull %m_bh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5.not = icmp eq i32 %call.i, 0
  br i1 %cmp5.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end7:                                          ; preds = %if.end
  %sd_statfs_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %sd_statfs_spin) #10
  %9 = ptrtoint ptr %m_bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 232
  call void @gfs2_statfs_change_in(ptr noundef %sd_statfs_master, ptr noundef %add.ptr) #10
  %13 = ptrtoint ptr %sd_statfs_master to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sd_statfs_master, align 8
  %15 = ptrtoint ptr %sd_statfs_local to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sd_statfs_local, align 8
  %add = add i64 %16, %14
  %17 = call i64 @llvm.usub.sat.i64(i64 %call3, i64 %add)
  call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin) #10
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %sd_fsname, i64 noundef %17) #13
  call void @gfs2_statfs_change(ptr noundef %3, i64 noundef %17, i64 noundef %17, i64 noundef 0) #10
  %18 = ptrtoint ptr %m_bh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m_bh, align 4
  call void @update_statfs(ptr noundef %3, ptr noundef %19) #10
  %20 = ptrtoint ptr %m_bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m_bh, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end7.out_crit_edge, label %if.then.i

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %21) #10
  br label %out

out:                                              ; preds = %if.then.i, %if.end7.out_crit_edge, %if.end.out_crit_edge
  %sd_rindex_uptodate = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 47
  %22 = ptrtoint ptr %sd_rindex_uptodate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sd_rindex_uptodate, align 4
  call void @gfs2_trans_end(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m_bh) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_trans_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gfs2_ri_total(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_statfs_change_in(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_statfs_change(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_statfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_releasepage(ptr noundef %page, i32 %gfp_mask) #0 align 64 {
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
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a_ops.i, align 4
  %cmp.i = icmp eq ptr %5, @gfs2_meta_aops
  br i1 %cmp.i, label %if.then.i178, label %if.else.i

if.then.i178:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ln_sbd.i = getelementptr %struct.gfs2_glock, ptr %1, i32 -1, i32 1, i32 1
  %6 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ln_sbd.i, align 8
  br label %gfs2_mapping2sbd.exit

if.else.i:                                        ; preds = %entry
  %cmp2.i = icmp eq ptr %5, @gfs2_rgrp_aops
  br i1 %cmp2.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr4.i = getelementptr i8, ptr %1, i32 -2368
  br label %gfs2_mapping2sbd.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i, align 16
  br label %gfs2_mapping2sbd.exit

gfs2_mapping2sbd.exit:                            ; preds = %if.else5.i, %if.then3.i, %if.then.i178
  %retval.0.i = phi ptr [ %7, %if.then.i178 ], [ %add.ptr4.i, %if.then3.i ], [ %11, %if.else5.i ]
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !52

if.then.i:                                        ; preds = %gfs2_mapping2sbd.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

PagePrivate.exit:                                 ; preds = %gfs2_mapping2sbd.exit
  %14 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %page, align 4
  %16 = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %PagePrivate.exit.cleanup_crit_edge, label %if.end

PagePrivate.exit.cleanup_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %PagePrivate.exit
  %sd_log_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %retval.0.i, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #10
  %17 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.not.i164 = icmp eq i32 %18, -1
  br i1 %cmp.i.not.i164, label %if.then.i165, label %PagePrivate.exit168, !prof !52

if.then.i165:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

PagePrivate.exit168:                              ; preds = %if.end
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  %21 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool4.not = icmp eq i32 %21, 0
  br i1 %tobool4.not, label %do.body9, label %do.end15, !prof !52

do.body9:                                         ; preds = %PagePrivate.exit168
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 737, 0\0A.popsection", ""() #10, !srcloc !68
  unreachable

do.end15:                                         ; preds = %PagePrivate.exit168
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %private, align 4
  %24 = inttoptr i32 %23 to ptr
  br label %do.body16

do.body16:                                        ; preds = %if.end60.critedge.do.body16_crit_edge, %do.end15
  %bh.0 = phi ptr [ %24, %do.end15 ], [ %38, %if.end60.critedge.do.body16_crit_edge ]
  %b_count = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %b_count, i32 noundef 4) #10
  %25 = ptrtoint ptr %b_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %b_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool18.not = icmp eq i32 %26, 0
  br i1 %tobool18.not, label %if.end20, label %do.body16.cannot_release_crit_edge

do.body16.cannot_release_crit_edge:               ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cannot_release

if.end20:                                         ; preds = %do.body16
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 8
  %27 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %b_private, align 8
  %tobool21.not = icmp eq ptr %28, null
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %land.lhs.true

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end20
  %bd_tr = getelementptr inbounds %struct.gfs2_bufdata, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %bd_tr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bd_tr, align 8
  %tobool22.not = icmp eq ptr %30, null
  br i1 %tobool22.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.cannot_release_crit_edge

land.lhs.true.cannot_release_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cannot_release

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end20.if.end24_crit_edge
  %31 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %bh.0, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool26.not = icmp eq i32 %33, 0
  br i1 %tobool26.not, label %lor.lhs.false, label %if.end24.cannot_release_crit_edge

if.end24.cannot_release_crit_edge:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cannot_release

lor.lhs.false:                                    ; preds = %if.end24
  %34 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %bh.0, align 4
  %36 = and i32 %35, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool28.not = icmp eq i32 %36, 0
  br i1 %tobool28.not, label %if.end60.critedge, label %do.end44, !prof !59

do.end44:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 744, i32 noundef 9, ptr noundef null) #10
  br label %cannot_release

if.end60.critedge:                                ; preds = %lor.lhs.false
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %37 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %b_this_page, align 4
  %cmp.not = icmp eq ptr %38, %24
  br i1 %cmp.not, label %do.body63, label %if.end60.critedge.do.body16_crit_edge

if.end60.critedge.do.body16_crit_edge:            ; preds = %if.end60.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

do.body63:                                        ; preds = %if.end60.critedge
  %39 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i173 = icmp eq i32 %40, -1
  br i1 %cmp.i.not.i173, label %if.then.i174, label %PagePrivate.exit177, !prof !52

if.then.i174:                                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

PagePrivate.exit177:                              ; preds = %do.body63
  %41 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %page, align 4
  %43 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool65.not = icmp eq i32 %43, 0
  br i1 %tobool65.not, label %do.body75, label %do.end83, !prof !52

do.body75:                                        ; preds = %PagePrivate.exit177
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 749, 0\0A.popsection", ""() #10, !srcloc !69
  unreachable

do.end83:                                         ; preds = %PagePrivate.exit177
  %44 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %private, align 4
  %46 = inttoptr i32 %45 to ptr
  br label %do.body86

do.body86:                                        ; preds = %if.end120.do.body86_crit_edge, %do.end83
  %bh.1 = phi ptr [ %46, %do.end83 ], [ %69, %if.end120.do.body86_crit_edge ]
  %b_private87 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 8
  %47 = ptrtoint ptr %b_private87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_private87, align 8
  %tobool88.not = icmp eq ptr %48, null
  br i1 %tobool88.not, label %do.body86.if.end120_crit_edge, label %if.then89

do.body86.if.end120_crit_edge:                    ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then89:                                        ; preds = %do.body86
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %cmp90.not = icmp eq ptr %50, %bh.1
  br i1 %cmp90.not, label %if.then89.if.end101_crit_edge, label %if.then100, !prof !59

if.then89.if.end101_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end101

if.then100:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gfs2_assert_warn_i(ptr noundef %retval.0.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.gfs2_releasepage, ptr noundef nonnull @.str.2, i32 noundef 753) #10
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %if.then89.if.end101_crit_edge
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %48, align 8
  %52 = ptrtoint ptr %b_private87 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %b_private87, align 8
  %bd_blkno = getelementptr inbounds %struct.gfs2_bufdata, ptr %48, i32 0, i32 2
  %53 = ptrtoint ptr %bd_blkno to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %bd_blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %tobool108.not = icmp eq i64 %54, 0
  br i1 %tobool108.not, label %land.lhs.true109, label %if.end101.if.end114_crit_edge

if.end101.if.end114_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

land.lhs.true109:                                 ; preds = %if.end101
  %bd_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %48, i32 0, i32 3
  %55 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %bd_list, align 4
  %cmp.i179.not = icmp eq ptr %56, %bd_list
  br i1 %cmp.i179.not, label %land.lhs.true109.if.end114_crit_edge, label %if.then112

land.lhs.true109.if.end114_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then112:                                       ; preds = %land.lhs.true109
  %call.i.i180 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bd_list) #10
  br i1 %call.i.i180, label %if.end.i.i, label %if.then112.list_del_init.exit_crit_edge

if.then112.list_del_init.exit_crit_edge:          ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %48, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i, align 4
  %59 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bd_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then112.list_del_init.exit_crit_edge
  %63 = ptrtoint ptr %bd_list to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %bd_list, ptr %bd_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %48, i32 0, i32 3, i32 1
  %64 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %bd_list, ptr %prev.i3.i, align 4
  br label %if.end114

if.end114:                                        ; preds = %list_del_init.exit, %land.lhs.true109.if.end114_crit_edge, %if.end101.if.end114_crit_edge
  %bd_list115 = getelementptr inbounds %struct.gfs2_bufdata, ptr %48, i32 0, i32 3
  %65 = ptrtoint ptr %bd_list115 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %bd_list115, align 4
  %cmp.i181.not = icmp eq ptr %66, %bd_list115
  br i1 %cmp.i181.not, label %if.then118, label %if.end114.if.end120_crit_edge

if.end114.if.end120_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %67 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %67, ptr noundef nonnull %48) #10
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %if.end114.if.end120_crit_edge, %do.body86.if.end120_crit_edge
  %b_this_page121 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 1
  %68 = ptrtoint ptr %b_this_page121 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_this_page121, align 4
  %cmp123.not = icmp eq ptr %69, %46
  br i1 %cmp123.not, label %do.end124, label %if.end120.do.body86_crit_edge

if.end120.do.body86_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86

do.end124:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #10
  %call125 = tail call i32 @try_to_free_buffers(ptr noundef %page) #10
  br label %cleanup

cannot_release:                                   ; preds = %do.end44, %if.end24.cannot_release_crit_edge, %land.lhs.true.cannot_release_crit_edge, %do.body16.cannot_release_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cannot_release, %do.end124, %PagePrivate.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cannot_release ], [ %call125, %do.end124 ], [ 0, %PagePrivate.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_warn_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @gfs2_set_aops(ptr nocapture noundef readonly %inode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %0 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %i_mapping2 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping2, align 8
  %a_ops3 = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 9
  %gfs2_aops.gfs2_jdata_aops = select i1 %tobool.not, ptr @gfs2_aops, ptr @gfs2_jdata_aops
  %4 = ptrtoint ptr %a_ops3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %gfs2_aops.gfs2_jdata_aops, ptr %a_ops3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_readpage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_block_map(ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !70
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0) #10
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #10
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !71
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !52

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !72
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !74
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !76
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

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
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_jdata_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
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
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  %gl_state.i = getelementptr inbounds %struct.gfs2_glock, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %gl_state.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %gl_state.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i)
  %cmp.i.not = icmp eq i16 %bf.lshr.mask.i, 16384
  br i1 %cmp.i.not, label %if.end12.critedge, label %if.then, !prof !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 33
  %9 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @gfs2_assert_withdraw_i(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.gfs2_jdata_writepage, ptr noundef nonnull @.str.2, i32 noundef 183, i1 noundef zeroext false) #10
  br label %out

if.end12.critedge:                                ; preds = %entry
  %11 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i.not.i = icmp eq i32 %12, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageChecked.exit, !prof !52

if.then.i:                                        ; preds = %if.end12.critedge
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !77
  unreachable

PageChecked.exit:                                 ; preds = %if.end12.critedge
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  %15 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %PageChecked.exit.out_ignore_crit_edge

PageChecked.exit.out_ignore_crit_edge:            ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ignore

lor.lhs.false:                                    ; preds = %PageChecked.exit
  %16 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 146
  %20 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %journal_info, align 4
  %tobool16.not = icmp eq ptr %21, null
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false.out_ignore_crit_edge

lor.lhs.false.out_ignore_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ignore

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call fastcc i32 @__gfs2_jdata_writepage(ptr noundef %page, ptr noundef %wbc)
  br label %cleanup

out_ignore:                                       ; preds = %lor.lhs.false.out_ignore_crit_edge, %PageChecked.exit.out_ignore_crit_edge
  %call20 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #10
  br label %out

out:                                              ; preds = %out_ignore, %if.then
  tail call void @unlock_page(ptr noundef %page) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end18
  %retval.0 = phi i32 [ 0, %out ], [ %call19, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_readpage(ptr nocapture noundef readnone %file, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gfs2_readpage(ptr noundef %file, ptr noundef %page)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_jdata_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %call3 = tail call fastcc i32 @gfs2_write_cache_jdata(ptr noundef %mapping, ptr noundef %wbc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %6 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gl, align 4
  tail call void @gfs2_log_flush(ptr noundef %5, ptr noundef %9, i32 noundef 514) #10
  %call5 = tail call fastcc i32 @gfs2_write_cache_jdata(ptr noundef %mapping, ptr noundef %wbc)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %call3, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jdata_set_page_dirty(ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %page, align 4
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

PageCompound.exit.i:                              ; preds = %if.then
  %9 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i_crit_edge, !prof !59

PageCompound.exit.i.if.then.i_crit_edge:          ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %PageCompound.exit.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !78
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %SetPageChecked.exit, !prof !52

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !79
  unreachable

SetPageChecked.exit:                              ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 10, ptr noundef %page) #10
  br label %if.end

if.end:                                           ; preds = %SetPageChecked.exit, %entry.if.end_crit_edge
  %call1 = tail call i32 @__set_page_dirty_buffers(ptr noundef %page) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_readahead(ptr noundef %rac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %rac, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.not = icmp eq i8 %5, 0
  br i1 %tobool.not.i.not, label %entry.if.end6_crit_edge, label %if.else

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.else:                                          ; preds = %entry
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %if.else5, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mpage_readahead(ptr noundef %rac, ptr noundef nonnull @gfs2_block_map) #10
  br label %if.end6

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @iomap_readahead(ptr noundef %rac, ptr noundef nonnull @gfs2_iomap_ops) #10
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %if.then4, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @gfs2_bmap(ptr noundef %mapping, i64 noundef %lblock) #0 align 64 {
entry:
  %i_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #10
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %2 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  %3 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_gl, align 4
  %5 = tail call ptr @llvm.returnaddress(i32 0) #10
  %6 = ptrtoint ptr %5 to i32
  call void @__gfs2_holder_init(ptr noundef %4, i32 noundef 3, i16 noundef zeroext 8, ptr noundef nonnull %i_gh, i32 noundef %6) #10
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %i_height.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i12.not = icmp eq i8 %8, 0
  br i1 %tobool.not.i12.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = call i64 @iomap_bmap(ptr noundef %mapping, i64 noundef %lblock, ptr noundef nonnull @gfs2_iomap_ops) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %dblock.0 = phi i64 [ 0, %if.end.if.end6_crit_edge ], [ %call5, %if.then4 ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %gfs2_glock_nq_init.exit
  %retval.0 = phi i64 [ %dblock.0, %if.end6 ], [ 0, %gfs2_glock_nq_init.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #10
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_invalidatepage(ptr noundef %page, i32 noundef %offset, i32 noundef %length) #0 align 64 {
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
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %add = add i32 %length, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not = icmp ne i32 %offset, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %length)
  %cmp = icmp ult i32 %length, 4096
  %spec.select = or i1 %tobool.not, %cmp
  %8 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !59

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %8, align 4
  %and.i16.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !52

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !59

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i = add i32 %16, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %17, %if.end.i20.i ]
  %18 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.11) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #10, !srcloc !80
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !59

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i = add i32 %16, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %19, %if.end.i27.i ]
  %20 = inttoptr i32 %retval.0.i28.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not, label %do.body6, label %do.end11, !prof !52

do.body6:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 684, 0\0A.popsection", ""() #10, !srcloc !81
  unreachable

do.end11:                                         ; preds = %PageLocked.exit
  br i1 %spec.select, label %do.end11.if.end14_crit_edge, label %if.then13

do.end11.if.end14_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %do.end11
  %23 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %page, align 4
  %25 = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i78 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i78, label %PageCompound.exit.i, label %if.then13.if.then.i79_crit_edge

if.then13.if.then.i79_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i79

PageCompound.exit.i:                              ; preds = %if.then13
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %8, align 4
  %and.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i79_crit_edge, !prof !59

PageCompound.exit.i.if.then.i79_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i79

if.then.i79:                                      ; preds = %PageCompound.exit.i.if.then.i79_crit_edge, %if.then13.if.then.i79_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %28 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i.not.i80 = icmp eq i32 %29, -1
  br i1 %cmp.i.not.i80, label %if.then16.i, label %ClearPageChecked.exit, !prof !52

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !83
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %page) #10
  br label %if.end14

if.end14:                                         ; preds = %ClearPageChecked.exit, %do.end11.if.end14_crit_edge
  %30 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i81 = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i81, label %if.then.i82, label %PagePrivate.exit, !prof !52

if.then.i82:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

PagePrivate.exit:                                 ; preds = %if.end14
  %32 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %page, align 4
  %34 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool16.not = icmp eq i32 %34, 0
  br i1 %tobool16.not, label %PagePrivate.exit.out_crit_edge, label %do.body19

PagePrivate.exit.out_crit_edge:                   ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body19:                                        ; preds = %PagePrivate.exit
  %35 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.i.not.i84 = icmp eq i32 %36, -1
  br i1 %cmp.i.not.i84, label %if.then.i85, label %PagePrivate.exit88, !prof !52

if.then.i85:                                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

PagePrivate.exit88:                               ; preds = %do.body19
  %37 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %page, align 4
  %39 = and i32 %38, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool21.not = icmp eq i32 %39, 0
  br i1 %tobool21.not, label %do.body31, label %do.end39, !prof !52

do.body31:                                        ; preds = %PagePrivate.exit88
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 690, 0\0A.popsection", ""() #10, !srcloc !84
  unreachable

do.end39:                                         ; preds = %PagePrivate.exit88
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %private, align 4
  %42 = inttoptr i32 %41 to ptr
  %sd_log_lock.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 78
  %sd_ail_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 104
  br label %do.body40

do.body40:                                        ; preds = %if.end47.do.body40_crit_edge, %do.end39
  %bh.0 = phi ptr [ %42, %do.end39 ], [ %68, %if.end47.do.body40_crit_edge ]
  %pos.0 = phi i32 [ 0, %do.end39 ], [ %add49, %if.end47.do.body40_crit_edge ]
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 4
  %43 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %b_size, align 8
  %add41 = add i32 %44, %pos.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add41, i32 %add)
  %cmp42 = icmp ugt i32 %add41, %add
  br i1 %cmp42, label %do.body40.cleanup_crit_edge, label %if.end44

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0, i32 %offset)
  %cmp45.not = icmp ult i32 %pos.0, %offset
  br i1 %cmp45.not, label %if.end44.if.end47_crit_edge, label %if.then46

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then46:                                        ; preds = %if.end44
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 366) #10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.0, i32 noundef 4) #10
  %45 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i.i.i = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %if.then46.if.then.i.i89_crit_edge

if.then46.if.then.i.i89_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i89

trylock_buffer.exit.i.i:                          ; preds = %if.then46
  tail call void @llvm.prefetch.p0(ptr %bh.0, i32 1, i32 3, i32 1) #10
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0, ptr %bh.0, i32 4, ptr elementtype(i32) %bh.0) #10, !srcloc !85
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  %48 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i.i89_crit_edge

trylock_buffer.exit.i.i.if.then.i.i89_crit_edge:  ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i89

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_buffer.exit.i

if.then.i.i89:                                    ; preds = %trylock_buffer.exit.i.i.if.then.i.i89_crit_edge, %if.then46.if.then.i.i89_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh.0) #10
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i.i89, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i.i) #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh.0) #10
  %b_private.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 8
  %49 = ptrtoint ptr %b_private.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_private.i, align 8
  %tobool.not.i90 = icmp eq ptr %50, null
  br i1 %tobool.not.i90, label %lock_buffer.exit.i.gfs2_discard.exit_crit_edge, label %if.then.i92

lock_buffer.exit.i.gfs2_discard.exit_crit_edge:   ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_discard.exit

if.then.i92:                                      ; preds = %lock_buffer.exit.i
  %bd_list.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %bd_list.i, align 4
  %cmp.i.not.i91 = icmp eq ptr %52, %bd_list.i
  br i1 %cmp.i.not.i91, label %if.then.i92.if.else.i_crit_edge, label %land.lhs.true.i

if.then.i92.if.else.i_crit_edge:                  ; preds = %if.then.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i92
  %53 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %bh.0, align 4
  %55 = and i32 %54, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool3.not.i = icmp eq i32 %55, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bd_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then4.i.list_del_init.exit.i_crit_edge

if.then4.i.list_del_init.exit.i_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %50, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i, align 4
  %58 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bd_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then4.i.list_del_init.exit.i_crit_edge
  %62 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %bd_list.i, ptr %bd_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %50, i32 0, i32 3, i32 1
  %63 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %bd_list.i, ptr %prev.i3.i.i, align 4
  br label %gfs2_discard.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i92.if.else.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock.i) #10
  tail call void @gfs2_remove_from_journal(ptr noundef %bh.0, i32 noundef 0) #10
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock.i) #10
  br label %gfs2_discard.exit

gfs2_discard.exit:                                ; preds = %if.else.i, %list_del_init.exit.i, %lock_buffer.exit.i.gfs2_discard.exit_crit_edge
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 6
  %64 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %b_bdev.i, align 8
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %bh.0) #10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %bh.0) #10
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %bh.0) #10
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i.i) #10
  tail call void @unlock_buffer(ptr noundef %bh.0) #10
  br label %if.end47

if.end47:                                         ; preds = %gfs2_discard.exit, %if.end44.if.end47_crit_edge
  %65 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %b_size, align 8
  %add49 = add i32 %66, %pos.0
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %67 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %b_this_page, align 4
  %cmp51.not = icmp eq ptr %68, %42
  br i1 %cmp51.not, label %if.end47.out_crit_edge, label %if.end47.do.body40_crit_edge

if.end47.do.body40_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %if.end47.out_crit_edge, %PagePrivate.exit.out_crit_edge
  br i1 %spec.select, label %out.cleanup_crit_edge, label %if.then54

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then54:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 @try_to_release_page(ptr noundef %page, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %out.cleanup_crit_edge, %do.body40.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @block_is_partially_uptodate(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_error_remove_page(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_withdraw_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__gfs2_jdata_writepage(ptr noundef %page, ptr noundef %wbc) unnamed_addr #0 align 64 {
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
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PageChecked.exit, !prof !52

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !77
  unreachable

PageChecked.exit:                                 ; preds = %entry
  %10 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %page, align 4
  %12 = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %PageChecked.exit.if.end7_crit_edge, label %if.then

PageChecked.exit.if.end7_crit_edge:               ; preds = %PageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %PageChecked.exit
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %page, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %PageCompound.exit.i, label %if.then.if.then.i17_crit_edge

if.then.if.then.i17_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i17

PageCompound.exit.i:                              ; preds = %if.then
  %16 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %PageCompound.exit.i.if.then.i17_crit_edge, !prof !59

PageCompound.exit.i.if.then.i17_crit_edge:        ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i17

if.then.i17:                                      ; preds = %PageCompound.exit.i.if.then.i17_crit_edge, %if.then.if.then.i17_crit_edge
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.9) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %19 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp.i.not.i18 = icmp eq i32 %20, -1
  br i1 %cmp.i.not.i18, label %if.then16.i, label %ClearPageChecked.exit, !prof !52

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #10, !srcloc !83
  unreachable

ClearPageChecked.exit:                            ; preds = %do.body7.i
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %page) #10
  %21 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %cmp.i.not.i19 = icmp eq i32 %22, -1
  br i1 %cmp.i.not.i19, label %if.then.i20, label %PagePrivate.exit, !prof !52

if.then.i20:                                      ; preds = %ClearPageChecked.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

PagePrivate.exit:                                 ; preds = %ClearPageChecked.exit
  %23 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %page, align 4
  %25 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool4.not = icmp eq i32 %25, 0
  br i1 %tobool4.not, label %if.then5, label %PagePrivate.exit.if.end_crit_edge

PagePrivate.exit.if.end_crit_edge:                ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s_blocksize, align 16
  tail call void @create_empty_buffers(ptr noundef %page, i32 noundef %29, i32 noundef 3) #10
  br label %if.end

if.end:                                           ; preds = %if.then5, %PagePrivate.exit.if.end_crit_edge
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 8
  %s_blocksize6 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %s_blocksize6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize6, align 16
  %34 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp.i.not.i.i = icmp eq i32 %35, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %PagePrivate.exit.i, !prof !52

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #10, !srcloc !53
  unreachable

PagePrivate.exit.i:                               ; preds = %if.end
  %36 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %page, align 4
  %38 = and i32 %37, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i23 = icmp eq i32 %38, 0
  br i1 %tobool.not.i23, label %do.body4.i, label %do.end9.i, !prof !52

do.body4.i:                                       ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 43, 0\0A.popsection", ""() #10, !srcloc !54
  unreachable

do.end9.i:                                        ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %39 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %private.i, align 4
  %41 = inttoptr i32 %40 to ptr
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %b_size.i, align 8
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end9.i
  %start.035.i = phi i32 [ 0, %do.end9.i ], [ %add13.i, %for.inc.i.for.body.i_crit_edge ]
  %bh.032.i = phi ptr [ %41, %do.end9.i ], [ %49, %for.inc.i.for.body.i_crit_edge ]
  %add13.i = add i32 %start.035.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add13.i)
  %cmp14.not.i.not = icmp eq i32 %add13.i, 0
  br i1 %cmp14.not.i.not, label %for.body.i.for.inc.i_crit_edge, label %if.end16.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start.035.i, i32 %33)
  %cmp17.not.i = icmp ult i32 %start.035.i, %33
  br i1 %cmp17.not.i, label %if.end19.i, label %if.end16.i.if.end7_crit_edge

if.end16.i.if.end7_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end19.i:                                       ; preds = %if.end16.i
  %44 = ptrtoint ptr %bh.032.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %bh.032.i, align 4
  %and1.i.i30.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i30.i)
  %tobool.not.i.i24 = icmp eq i32 %and1.i.i30.i, 0
  br i1 %tobool.not.i.i24, label %if.then.i31.i, label %if.end19.i.set_buffer_uptodate.exit.i_crit_edge

if.end19.i.set_buffer_uptodate.exit.i_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %set_buffer_uptodate.exit.i

if.then.i31.i:                                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %bh.032.i) #10
  br label %set_buffer_uptodate.exit.i

set_buffer_uptodate.exit.i:                       ; preds = %if.then.i31.i, %if.end19.i.set_buffer_uptodate.exit.i_crit_edge
  %46 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_gl.i, align 4
  tail call void @gfs2_trans_add_data(ptr noundef %47, ptr noundef %bh.032.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %set_buffer_uptodate.exit.i, %for.body.i.for.inc.i_crit_edge
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.032.i, i32 0, i32 1
  %48 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_this_page.i, align 4
  %cmp.not.i = icmp ne ptr %49, %41
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp14.not.i.not
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end7_crit_edge

for.inc.i.if.end7_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.end16.i.if.end7_crit_edge, %PageChecked.exit.if.end7_crit_edge
  %50 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mapping, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call.i = tail call fastcc i64 @i_size_read(ptr noundef %53) #10
  %54 = lshr i64 %call.i, 12
  %conv.i = trunc i64 %54 to i32
  %55 = trunc i64 %call.i to i32
  %conv1.i = and i32 %55, 4095
  %index.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 2
  %56 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv.i)
  %cmp.i = icmp ne i32 %57, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i25 = icmp eq i32 %conv1.i, 0
  %or.cond.i26 = select i1 %cmp.i, i1 true, i1 %tobool.not.i25
  br i1 %or.cond.i26, label %if.end7.gfs2_write_jdata_page.exit_crit_edge, label %if.then.i27

if.end7.gfs2_write_jdata_page.exit_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_write_jdata_page.exit

if.then.i27:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @zero_user_segments(ptr noundef %page, i32 noundef %conv1.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  br label %gfs2_write_jdata_page.exit

gfs2_write_jdata_page.exit:                       ; preds = %if.then.i27, %if.end7.gfs2_write_jdata_page.exit_crit_edge
  %call3.i = tail call i32 @__block_write_full_page(ptr noundef %53, ptr noundef %page, ptr noundef nonnull @gfs2_get_block_noalloc, ptr noundef %wbc, ptr noundef nonnull @end_buffer_async_write) #10
  ret i32 %call3.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__block_write_full_page(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_get_block_noalloc(ptr noundef %inode, i64 noundef %lblock, ptr noundef %bh_result, i32 noundef %create) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gfs2_block_map(ptr noundef %inode, i64 noundef %lblock, ptr noundef %bh_result, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %bh_result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bh_result, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  %. = select i1 %tobool2.not, i32 -61, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_async_write(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_write_cache_jdata(ptr noundef %mapping, ptr noundef %wbc) unnamed_addr #0 align 64 {
entry:
  %pvec = alloca %struct.pagevec, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pvec) #10
  %0 = call ptr @memset(ptr %pvec, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #10
  %1 = ptrtoint ptr %pvec to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %pvec, align 4
  %percpu_pvec_drained.i = getelementptr inbounds %struct.pagevec, ptr %pvec, i32 0, i32 1
  %2 = ptrtoint ptr %percpu_pvec_drained.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %percpu_pvec_drained.i, align 1
  %range_cyclic = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %3 = ptrtoint ptr %range_cyclic to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %range_cyclic, align 4
  %4 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %writeback_index1 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 8
  %5 = ptrtoint ptr %writeback_index1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writeback_index1, align 4
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %. = zext i1 %cmp to i32
  %phi.bo = add i32 %6, -1
  br label %if.end14

if.else3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %range_start = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 2
  %8 = ptrtoint ptr %range_start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %range_start, align 8
  %10 = lshr i64 %9, 12
  %conv = trunc i64 %10 to i32
  %11 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %index, align 4
  %range_end = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 3
  %12 = ptrtoint ptr %range_end to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %range_end, align 8
  %14 = lshr i64 %13, 12
  %conv5 = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp7 = icmp eq i64 %9, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %13)
  %cmp10 = icmp eq i64 %13, 9223372036854775807
  %or.cond = select i1 %cmp7, i1 %cmp10, i1 false
  %range_whole.0 = zext i1 %or.cond to i32
  br label %if.end14

if.end14:                                         ; preds = %if.else3, %if.then
  %writeback_index.0 = phi i32 [ %phi.bo, %if.then ], [ -2, %if.else3 ]
  %end.0 = phi i32 [ -1, %if.then ], [ %conv5, %if.else3 ]
  %cycled.1 = phi i32 [ %., %if.then ], [ 1, %if.else3 ]
  %range_whole.1 = phi i32 [ 0, %if.then ], [ %range_whole.0, %if.else3 ]
  %sync_mode = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %15 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp15 = icmp eq i32 %16, 1
  %17 = lshr i16 %bf.load, 12
  %18 = and i16 %17, 2
  %19 = zext i16 %18 to i32
  %tag.0 = select i1 %cmp15, i32 2, i32 %19
  br label %retry

retry:                                            ; preds = %if.then56, %if.end14
  %end.1 = phi i32 [ %end.0, %if.end14 ], [ %writeback_index.0, %if.then56 ]
  %cycled.2 = phi i32 [ %cycled.1, %if.end14 ], [ 1, %if.then56 ]
  %ret.0 = phi i32 [ 0, %if.end14 ], [ %ret.1169.lcssa, %if.then56 ]
  %20 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp26 = icmp eq i32 %21, 1
  br i1 %cmp26, label %retry.if.then35_crit_edge, label %lor.lhs.false28

retry.if.then35_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

lor.lhs.false28:                                  ; preds = %retry
  %22 = ptrtoint ptr %range_cyclic to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load30 = load i16, ptr %range_cyclic, align 4
  %23 = and i16 %bf.load30, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool34.not = icmp eq i16 %23, 0
  br i1 %tobool34.not, label %lor.lhs.false28.if.end36_crit_edge, label %lor.lhs.false28.if.then35_crit_edge

lor.lhs.false28.if.then35_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

lor.lhs.false28.if.end36_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then35:                                        ; preds = %lor.lhs.false28.if.then35_crit_edge, %retry.if.then35_crit_edge
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  call void @tag_pages_for_writeback(ptr noundef %mapping, i32 noundef %25, i32 noundef %end.1) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %lor.lhs.false28.if.end36_crit_edge
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %end.1)
  %cmp38.not347 = icmp ugt i32 %27, %end.1
  br i1 %cmp38.not347, label %if.end36.while.end_crit_edge, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  br label %while.body

if.end36.while.end_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

land.rhs:                                         ; preds = %pagevec_release.exit
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index, align 4
  %cmp38.not = icmp ugt i32 %29, %end.1
  br i1 %cmp38.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.body_crit_edge

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %if.end36.while.body_crit_edge
  %done_index.0168349 = phi i32 [ %done_index.2, %land.rhs.while.body_crit_edge ], [ %27, %if.end36.while.body_crit_edge ]
  %ret.1169348 = phi i32 [ %111, %land.rhs.while.body_crit_edge ], [ %ret.0, %if.end36.while.body_crit_edge ]
  %call = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %pvec, ptr noundef %mapping, ptr noundef nonnull %index, i32 noundef %end.1, i32 noundef %tag.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp40 = icmp eq i32 %call, 0
  br i1 %cmp40, label %while.body.while.end_crit_edge, label %if.end43

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end43:                                         ; preds = %while.body
  %30 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mapping, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i.i, align 16
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 20
  %36 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %37 to i32
  %shr.i = lshr i32 4096, %conv.i
  %mul.i = mul i32 %shr.i, %call
  %call1.i = call i32 @gfs2_trans_begin(ptr noundef %35, i32 noundef %mul.i, i32 noundef %mul.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end43.gfs2_write_jdata_pagevec.exit_crit_edge, label %for.cond.preheader.i

if.end43.gfs2_write_jdata_pagevec.exit_crit_edge: ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_write_jdata_pagevec.exit

for.cond.preheader.i:                             ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3183.i = icmp sgt i32 %call, 0
  br i1 %cmp3183.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ret.0185.i = phi i32 [ %ret.2.i, %for.inc.i.for.body.i_crit_edge ], [ %call1.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0184.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pagevec, ptr %pvec, i32 0, i32 2, i32 %i.0184.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %index.i = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 788) #10
  %42 = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %42, align 4
  %and.i.i134.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i134.i)
  %tobool.not.i.i135.i = icmp eq i32 %and.i.i134.i, 0
  br i1 %tobool.not.i.i135.i, label %if.end.i.i138.i, label %if.then.i.i137.i, !prof !59

if.then.i.i137.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i136.i = add i32 %44, -1
  br label %_compound_head.exit.i140.i

if.end.i.i138.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %39 to i32
  br label %_compound_head.exit.i140.i

_compound_head.exit.i140.i:                       ; preds = %if.end.i.i138.i, %if.then.i.i137.i
  %retval.0.i.i139.i = phi i32 [ %sub.i.i136.i, %if.then.i.i137.i ], [ %45, %if.end.i.i138.i ]
  %46 = inttoptr i32 %retval.0.i.i139.i to ptr
  %47 = getelementptr inbounds %struct.page, ptr %46, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and.i.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i, !prof !59

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i140.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = inttoptr i32 %retval.0.i.i139.i to ptr
  call void @dump_page(ptr noundef %50, ptr noundef nonnull @.str.5) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #10, !srcloc !67
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i140.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %46, i32 noundef 4) #10
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %46, align 4
  %and.i.i4.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i4.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_trylock.exit.i.i, label %folio_flags.exit.i.i.i.if.then.i141.i_crit_edge

folio_flags.exit.i.i.i.if.then.i141.i_crit_edge:  ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i141.i

folio_trylock.exit.i.i:                           ; preds = %folio_flags.exit.i.i.i
  call void @llvm.prefetch.p0(ptr %46, i32 1, i32 3, i32 1) #10
  %53 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 1, ptr elementtype(i32) %46) #10, !srcloc !85
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !86
  %54 = and i32 %asmresult.i.i.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %phi.cmp.i.i.i.i = icmp eq i32 %54, 0
  br i1 %phi.cmp.i.i.i.i, label %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge, label %folio_trylock.exit.i.i.if.then.i141.i_crit_edge

folio_trylock.exit.i.i.if.then.i141.i_crit_edge:  ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i141.i

folio_trylock.exit.i.i.lock_page.exit.i_crit_edge: ; preds = %folio_trylock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lock_page.exit.i

if.then.i141.i:                                   ; preds = %folio_trylock.exit.i.i.if.then.i141.i_crit_edge, %folio_flags.exit.i.i.i.if.then.i141.i_crit_edge
  call void @__folio_lock(ptr noundef %46) #10
  br label %lock_page.exit.i

lock_page.exit.i:                                 ; preds = %if.then.i141.i, %folio_trylock.exit.i.i.lock_page.exit.i_crit_edge
  %mapping5.i = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %mapping5.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mapping5.i, align 4
  %cmp6.not.i = icmp eq ptr %56, %mapping
  br i1 %cmp6.not.i, label %if.end10.i, label %lock_page.exit.i.continue_unlock.i_crit_edge, !prof !59

lock_page.exit.i.continue_unlock.i_crit_edge:     ; preds = %lock_page.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %continue_unlock.i

continue_unlock.i:                                ; preds = %do.end38.i.continue_unlock.i_crit_edge, %if.then17.i.continue_unlock.i_crit_edge, %PageDirty.exit.i.continue_unlock.i_crit_edge, %lock_page.exit.i.continue_unlock.i_crit_edge
  call void @unlock_page(ptr noundef %39) #10
  br label %for.inc.i

if.end10.i:                                       ; preds = %lock_page.exit.i
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %42, align 4
  %and.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !59

if.then.i.i.i:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add i32 %58, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %39 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %59, %if.end.i.i.i ]
  %60 = inttoptr i32 %retval.0.i.i.i to ptr
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %cmp.i.not.i.i = icmp eq i32 %62, -1
  %63 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %42, align 4
  %and.i13.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.not.i14.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %do.end8.i.i, !prof !52

if.then.i.i:                                      ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i14.i.i, label %if.end.i17.i.i, label %if.then.i16.i.i, !prof !59

if.then.i16.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i15.i.i = add i32 %64, -1
  br label %_compound_head.exit19.i.i

if.end.i17.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %39 to i32
  br label %_compound_head.exit19.i.i

_compound_head.exit19.i.i:                        ; preds = %if.end.i17.i.i, %if.then.i16.i.i
  %retval.0.i18.i.i = phi i32 [ %sub.i15.i.i, %if.then.i16.i.i ], [ %65, %if.end.i17.i.i ]
  %66 = inttoptr i32 %retval.0.i18.i.i to ptr
  call void @dump_page(ptr noundef %66, ptr noundef nonnull @.str.11) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 420, 0\0A.popsection", ""() #10, !srcloc !87
  unreachable

do.end8.i.i:                                      ; preds = %_compound_head.exit.i.i
  br i1 %tobool.not.i14.i.i, label %if.end.i24.i.i, label %if.then.i23.i.i, !prof !59

if.then.i23.i.i:                                  ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i22.i.i = add i32 %64, -1
  br label %PageDirty.exit.i

if.end.i24.i.i:                                   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %39 to i32
  br label %PageDirty.exit.i

PageDirty.exit.i:                                 ; preds = %if.end.i24.i.i, %if.then.i23.i.i
  %retval.0.i25.i.i = phi i32 [ %sub.i22.i.i, %if.then.i23.i.i ], [ %67, %if.end.i24.i.i ]
  %68 = inttoptr i32 %retval.0.i25.i.i to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %71 = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool12.not.i = icmp eq i32 %71, 0
  br i1 %tobool12.not.i, label %PageDirty.exit.i.continue_unlock.i_crit_edge, label %if.end14.i

PageDirty.exit.i.continue_unlock.i_crit_edge:     ; preds = %PageDirty.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %continue_unlock.i

if.end14.i:                                       ; preds = %PageDirty.exit.i
  %72 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %42, align 4
  %and.i.i99.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i99.i)
  %tobool.not.i.i100.i = icmp eq i32 %and.i.i99.i, 0
  br i1 %tobool.not.i.i100.i, label %if.end.i.i103.i, label %if.then.i.i102.i, !prof !59

if.then.i.i102.i:                                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i101.i = add i32 %73, -1
  br label %_compound_head.exit.i106.i

if.end.i.i103.i:                                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %39 to i32
  br label %_compound_head.exit.i106.i

_compound_head.exit.i106.i:                       ; preds = %if.end.i.i103.i, %if.then.i.i102.i
  %retval.0.i.i104.i = phi i32 [ %sub.i.i101.i, %if.then.i.i102.i ], [ %74, %if.end.i.i103.i ]
  %75 = inttoptr i32 %retval.0.i.i104.i to ptr
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp.i.not.i105.i = icmp eq i32 %77, -1
  %78 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %42, align 4
  %and.i16.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp.i.not.i105.i, label %if.then.i107.i, label %do.end10.i.i, !prof !52

if.then.i107.i:                                   ; preds = %_compound_head.exit.i106.i
  br i1 %tobool.not.i17.i.i, label %if.end.i20.i.i, label %if.then.i19.i.i, !prof !59

if.then.i19.i.i:                                  ; preds = %if.then.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i.i = add i32 %79, -1
  br label %_compound_head.exit22.i.i

if.end.i20.i.i:                                   ; preds = %if.then.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %39 to i32
  br label %_compound_head.exit22.i.i

_compound_head.exit22.i.i:                        ; preds = %if.end.i20.i.i, %if.then.i19.i.i
  %retval.0.i21.i.i = phi i32 [ %sub.i18.i.i, %if.then.i19.i.i ], [ %80, %if.end.i20.i.i ]
  %81 = inttoptr i32 %retval.0.i21.i.i to ptr
  call void @dump_page(ptr noundef %81, ptr noundef nonnull @.str.11) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

do.end10.i.i:                                     ; preds = %_compound_head.exit.i106.i
  br i1 %tobool.not.i17.i.i, label %if.end.i27.i.i, label %if.then.i26.i.i, !prof !59

if.then.i26.i.i:                                  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i.i = add i32 %79, -1
  br label %PageWriteback.exit.i

if.end.i27.i.i:                                   ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %39 to i32
  br label %PageWriteback.exit.i

PageWriteback.exit.i:                             ; preds = %if.end.i27.i.i, %if.then.i26.i.i
  %retval.0.i28.i.i = phi i32 [ %sub.i25.i.i, %if.then.i26.i.i ], [ %82, %if.end.i27.i.i ]
  %83 = inttoptr i32 %retval.0.i28.i.i to ptr
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %83, align 4
  %86 = and i32 %85, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool16.not.i = icmp eq i32 %86, 0
  br i1 %tobool16.not.i, label %PageWriteback.exit.i.do.body.i_crit_edge, label %if.then17.i

PageWriteback.exit.i.do.body.i_crit_edge:         ; preds = %PageWriteback.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then17.i:                                      ; preds = %PageWriteback.exit.i
  %87 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp18.not.i = icmp eq i32 %88, 0
  br i1 %cmp18.not.i, label %if.then17.i.continue_unlock.i_crit_edge, label %if.then20.i

if.then17.i.continue_unlock.i_crit_edge:          ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %continue_unlock.i

if.then20.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @wait_on_page_writeback(ptr noundef %39) #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.then20.i, %PageWriteback.exit.i.do.body.i_crit_edge
  %89 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %42, align 4
  %and.i.i110.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i110.i)
  %tobool.not.i.i111.i = icmp eq i32 %and.i.i110.i, 0
  br i1 %tobool.not.i.i111.i, label %if.end.i.i114.i, label %if.then.i.i113.i, !prof !59

if.then.i.i113.i:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i112.i = add i32 %90, -1
  br label %_compound_head.exit.i119.i

if.end.i.i114.i:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %39 to i32
  br label %_compound_head.exit.i119.i

_compound_head.exit.i119.i:                       ; preds = %if.end.i.i114.i, %if.then.i.i113.i
  %retval.0.i.i115.i = phi i32 [ %sub.i.i112.i, %if.then.i.i113.i ], [ %91, %if.end.i.i114.i ]
  %92 = inttoptr i32 %retval.0.i.i115.i to ptr
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %94)
  %cmp.i.not.i116.i = icmp eq i32 %94, -1
  %95 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %42, align 4
  %and.i16.i117.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i117.i)
  %tobool.not.i17.i118.i = icmp eq i32 %and.i16.i117.i, 0
  br i1 %cmp.i.not.i116.i, label %if.then.i120.i, label %do.end10.i126.i, !prof !52

if.then.i120.i:                                   ; preds = %_compound_head.exit.i119.i
  br i1 %tobool.not.i17.i118.i, label %if.end.i20.i123.i, label %if.then.i19.i122.i, !prof !59

if.then.i19.i122.i:                               ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i18.i121.i = add i32 %96, -1
  br label %_compound_head.exit22.i125.i

if.end.i20.i123.i:                                ; preds = %if.then.i120.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %39 to i32
  br label %_compound_head.exit22.i125.i

_compound_head.exit22.i125.i:                     ; preds = %if.end.i20.i123.i, %if.then.i19.i122.i
  %retval.0.i21.i124.i = phi i32 [ %sub.i18.i121.i, %if.then.i19.i122.i ], [ %97, %if.end.i20.i123.i ]
  %98 = inttoptr i32 %retval.0.i21.i124.i to ptr
  call void @dump_page(ptr noundef %98, ptr noundef nonnull @.str.11) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #10, !srcloc !88
  unreachable

do.end10.i126.i:                                  ; preds = %_compound_head.exit.i119.i
  br i1 %tobool.not.i17.i118.i, label %if.end.i27.i129.i, label %if.then.i26.i128.i, !prof !59

if.then.i26.i128.i:                               ; preds = %do.end10.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i25.i127.i = add i32 %96, -1
  br label %PageWriteback.exit133.i

if.end.i27.i129.i:                                ; preds = %do.end10.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %39 to i32
  br label %PageWriteback.exit133.i

PageWriteback.exit133.i:                          ; preds = %if.end.i27.i129.i, %if.then.i26.i128.i
  %retval.0.i28.i130.i = phi i32 [ %sub.i25.i127.i, %if.then.i26.i128.i ], [ %99, %if.end.i27.i129.i ]
  %100 = inttoptr i32 %retval.0.i28.i130.i to ptr
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %100, align 4
  %103 = and i32 %102, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool24.not.i = icmp eq i32 %103, 0
  br i1 %tobool24.not.i, label %do.end38.i, label %do.body32.i, !prof !59

do.body32.i:                                      ; preds = %PageWriteback.exit133.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/aops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 274, 0\0A.popsection", ""() #10, !srcloc !89
  unreachable

do.end38.i:                                       ; preds = %PageWriteback.exit133.i
  %call39.i = call zeroext i1 @clear_page_dirty_for_io(ptr noundef %39) #10
  br i1 %call39.i, label %if.end41.i, label %do.end38.i.continue_unlock.i_crit_edge

do.end38.i.continue_unlock.i_crit_edge:           ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %continue_unlock.i

if.end41.i:                                       ; preds = %do.end38.i
  %call42.i = call ptr @inode_to_bdi(ptr noundef %31) #10
  call fastcc void @trace_wbc_writepage(ptr noundef %wbc, ptr noundef %call42.i) #10
  %call43.i = call fastcc i32 @__gfs2_jdata_writepage(ptr noundef %39, ptr noundef %wbc) #10
  %104 = zext i32 %call43.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call43.i, label %if.else55.i [
    i32 0, label %if.end41.i.if.end58.i_crit_edge
    i32 524288, label %if.then54.i
  ], !prof !90

if.end41.i.if.end58.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then54.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @unlock_page(ptr noundef %39) #10
  br label %if.end58.i

if.else55.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %index.i.le = getelementptr inbounds %struct.page, ptr %39, i32 0, i32 1, i32 0, i32 2
  %105 = ptrtoint ptr %index.i.le to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %index.i.le, align 4
  %add.i = add i32 %106, 1
  br label %for.end.i

if.end58.i:                                       ; preds = %if.then54.i, %if.end41.i.if.end58.i_crit_edge
  %107 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %wbc, align 8
  %dec.i = add i32 %108, -1
  store i32 %dec.i, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %cmp59.i = icmp slt i32 %dec.i, 1
  br i1 %cmp59.i, label %land.lhs.true.i, label %if.end58.i.for.inc.i_crit_edge

if.end58.i.for.inc.i_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end58.i
  %109 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %sync_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp62.i = icmp eq i32 %110, 0
  br i1 %cmp62.i, label %land.lhs.true.i.for.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.for.end.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end58.i.for.inc.i_crit_edge, %continue_unlock.i
  %ret.2.i = phi i32 [ %ret.0185.i, %continue_unlock.i ], [ 0, %land.lhs.true.i.for.inc.i_crit_edge ], [ 0, %if.end58.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0184.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true.i.for.end.i_crit_edge, %if.else55.i, %for.cond.preheader.i.for.end.i_crit_edge
  %done_index.1 = phi i32 [ %add.i, %if.else55.i ], [ %done_index.0168349, %for.cond.preheader.i.for.end.i_crit_edge ], [ %41, %land.lhs.true.i.for.end.i_crit_edge ], [ %41, %for.inc.i.for.end.i_crit_edge ]
  %ret.3.i = phi i32 [ 1, %if.else55.i ], [ %call1.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %ret.2.i, %for.inc.i.for.end.i_crit_edge ], [ 1, %land.lhs.true.i.for.end.i_crit_edge ]
  call void @gfs2_trans_end(ptr noundef %35) #10
  br label %gfs2_write_jdata_pagevec.exit

gfs2_write_jdata_pagevec.exit:                    ; preds = %for.end.i, %if.end43.gfs2_write_jdata_pagevec.exit_crit_edge
  %done_index.2 = phi i32 [ %done_index.0168349, %if.end43.gfs2_write_jdata_pagevec.exit_crit_edge ], [ %done_index.1, %for.end.i ]
  %retval.0.i = phi i32 [ %call1.i, %if.end43.gfs2_write_jdata_pagevec.exit_crit_edge ], [ %ret.3.i, %for.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool45.not.not = icmp eq i32 %retval.0.i, 0
  %111 = call i32 @llvm.smin.i32(i32 %retval.0.i, i32 0)
  %112 = ptrtoint ptr %pvec to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %pvec, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i = icmp eq i8 %113, 0
  br i1 %tobool.not.i, label %gfs2_write_jdata_pagevec.exit.pagevec_release.exit_crit_edge, label %if.then.i

gfs2_write_jdata_pagevec.exit.pagevec_release.exit_crit_edge: ; preds = %gfs2_write_jdata_pagevec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pagevec_release.exit

if.then.i:                                        ; preds = %gfs2_write_jdata_pagevec.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__pagevec_release(ptr noundef nonnull %pvec) #10
  br label %pagevec_release.exit

pagevec_release.exit:                             ; preds = %if.then.i, %gfs2_write_jdata_pagevec.exit.pagevec_release.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 380, i32 noundef 0) #10
  %call.i = call i32 @__cond_resched() #10
  br i1 %tobool45.not.not, label %land.rhs, label %pagevec_release.exit.if.end57_crit_edge

pagevec_release.exit.if.end57_crit_edge:          ; preds = %pagevec_release.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end36.while.end_crit_edge
  %ret.1169.lcssa = phi i32 [ %ret.0, %if.end36.while.end_crit_edge ], [ %111, %land.rhs.while.end_crit_edge ], [ %ret.1169348, %while.body.while.end_crit_edge ]
  %done_index.0168.lcssa = phi i32 [ %27, %if.end36.while.end_crit_edge ], [ %done_index.2, %land.rhs.while.end_crit_edge ], [ %done_index.0168349, %while.body.while.end_crit_edge ]
  %tobool53.not.not = icmp eq i32 %cycled.2, 0
  br i1 %tobool53.not.not, label %if.then56, label %while.end.if.end57_crit_edge

while.end.if.end57_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then56:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %index, align 4
  br label %retry

if.end57:                                         ; preds = %while.end.if.end57_crit_edge, %pagevec_release.exit.if.end57_crit_edge
  %done_index.0166 = phi i32 [ %done_index.2, %pagevec_release.exit.if.end57_crit_edge ], [ %done_index.0168.lcssa, %while.end.if.end57_crit_edge ]
  %ret.1159 = phi i32 [ %111, %pagevec_release.exit.if.end57_crit_edge ], [ %ret.1169.lcssa, %while.end.if.end57_crit_edge ]
  %115 = ptrtoint ptr %range_cyclic to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load59 = load i16, ptr %range_cyclic, align 4
  %116 = and i16 %bf.load59, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool63.not = icmp eq i16 %116, 0
  br i1 %tobool63.not, label %lor.lhs.false64, label %if.end57.if.then69_crit_edge

if.end57.if.then69_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

lor.lhs.false64:                                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %range_whole.1)
  %tobool65.not = icmp eq i32 %range_whole.1, 0
  br i1 %tobool65.not, label %lor.lhs.false64.if.end71_crit_edge, label %land.lhs.true66

lor.lhs.false64.if.end71_crit_edge:               ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true66:                                  ; preds = %lor.lhs.false64
  %117 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp67 = icmp sgt i32 %118, 0
  br i1 %cmp67, label %land.lhs.true66.if.then69_crit_edge, label %land.lhs.true66.if.end71_crit_edge

land.lhs.true66.if.end71_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true66.if.then69_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then69

if.then69:                                        ; preds = %land.lhs.true66.if.then69_crit_edge, %if.end57.if.then69_crit_edge
  %writeback_index70 = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 8
  %119 = ptrtoint ptr %writeback_index70 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %done_index.0166, ptr %writeback_index70, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %land.lhs.true66.if.end71_crit_edge, %lor.lhs.false64.if.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pvec) #10
  ret i32 %ret.1159
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tag_pages_for_writeback(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_wbc_writepage(ptr noundef %wbc, ptr noundef %bdi) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wbc_writepage, i32 0, i32 1), ptr blockaddress(@trace_wbc_writepage, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !64

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !59

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %call42 = tail call i32 @__traceiter_wbc_writepage(ptr noundef null, ptr noundef %wbc, ptr noundef %bdi) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !59

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wbc_writepage, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_wbc_writepage, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_wbc_writepage.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_wbc_writepage.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 496, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %31 = tail call i32 @llvm.read_register.i32(metadata !42) #10
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
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_wbc_writepage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpage_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iomap_readahead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iomap_bmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_remove_from_journal(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  %wpc = alloca %struct.iomap_writepage_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wpc) #10
  %8 = call ptr @memset(ptr %wpc, i32 0, i32 56)
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_gl, align 4
  %gl_state.i = getelementptr inbounds %struct.gfs2_glock, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %gl_state.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %gl_state.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask.i)
  %cmp.i.not = icmp eq i16 %bf.lshr.mask.i, 16384
  br i1 %cmp.i.not, label %if.end12.critedge, label %if.then, !prof !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gfs2_assert_withdraw_i(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.gfs2_writepage, ptr noundef nonnull @.str.2, i32 noundef 96, i1 noundef zeroext false) #10
  br label %out

if.end12.critedge:                                ; preds = %entry
  %12 = tail call i32 @llvm.read_register.i32(metadata !42) #10
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 146
  %16 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %journal_info, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %if.end16, label %redirty

if.end16:                                         ; preds = %if.end12.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = call i32 @iomap_writepage(ptr noundef %page, ptr noundef %wbc, ptr noundef nonnull %wpc, ptr noundef nonnull @gfs2_writeback_ops) #10
  br label %cleanup

redirty:                                          ; preds = %if.end12.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #10
  br label %out

out:                                              ; preds = %redirty, %if.then
  tail call void @unlock_page(ptr noundef %page) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end16
  %retval.0 = phi i32 [ 0, %out ], [ %call17, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wpc) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_writepages(ptr noundef %mapping, ptr noundef %wbc) #0 align 64 {
entry:
  %wpc = alloca %struct.iomap_writepage_ctx, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 9
  %2 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a_ops.i, align 4
  %cmp.i = icmp eq ptr %3, @gfs2_meta_aops
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ln_sbd.i = getelementptr %struct.gfs2_glock, ptr %mapping, i32 -1, i32 1, i32 1
  %4 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ln_sbd.i, align 8
  br label %gfs2_mapping2sbd.exit

if.else.i:                                        ; preds = %entry
  %cmp2.i = icmp eq ptr %3, @gfs2_rgrp_aops
  br i1 %cmp2.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr4.i = getelementptr i8, ptr %mapping, i32 -2368
  br label %gfs2_mapping2sbd.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i, align 16
  br label %gfs2_mapping2sbd.exit

gfs2_mapping2sbd.exit:                            ; preds = %if.else5.i, %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ %add.ptr4.i, %if.then3.i ], [ %9, %if.else5.i ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wpc) #10
  %10 = call ptr @memset(ptr %wpc, i32 0, i32 56)
  %call1 = call i32 @iomap_writepages(ptr noundef %mapping, ptr noundef %wbc, ptr noundef nonnull %wpc, ptr noundef nonnull @gfs2_writeback_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %gfs2_mapping2sbd.exit.if.end_crit_edge

gfs2_mapping2sbd.exit.if.end_crit_edge:           ; preds = %gfs2_mapping2sbd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %gfs2_mapping2sbd.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %retval.0.i, i32 0, i32 4
  call void @_set_bit(i32 noundef 9, ptr noundef %sd_flags) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %gfs2_mapping2sbd.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wpc) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_nobuffers(ptr noundef) #2

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
declare dso_local i32 @iomap_writepage(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iomap_writepages(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !38, !40}
!llvm.named.register.sp = !{!42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/aops.c", i32 598, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @adjust_fs_space._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @adjust_fs_space._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/gfs2/aops.c", i32 753, i32 4}
!8 = !{ptr @__func__.gfs2_releasepage, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!13 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/mm.h", i32 717, i32 2}
!17 = !{ptr @gfs2_jdata_aops, !18, !"gfs2_jdata_aops", i1 false, i1 false}
!18 = !{!"../fs/gfs2/aops.c", i32 792, i32 46}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/gfs2/aops.c", i32 183, i32 6}
!21 = !{ptr @__func__.gfs2_jdata_writepage, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/page-flags.h", i32 430, i32 1}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/page-flags.h", i32 420, i32 1}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../include/trace/events/writeback.h", i32 496, i32 1}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!32 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!38 = !{ptr @gfs2_aops, !39, !"gfs2_aops", i1 false, i1 false}
!39 = !{!"../fs/gfs2/aops.c", i32 777, i32 46}
!40 = !{ptr @__func__.gfs2_writepage, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../fs/gfs2/aops.c", i32 96, i32 6}
!42 = !{!"sp"}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2151149718, i64 2151150209, i64 2151149755, i64 2151149811, i64 2151149845, i64 2151149869, i64 2151149910, i64 2151149931, i64 2151149959, i64 2151149993}
!54 = !{i64 2156058529, i64 2156059007, i64 2156058566, i64 2156058622, i64 2156058656, i64 2156058680, i64 2156058721, i64 2156058742, i64 2156058770, i64 2156058804}
!55 = !{i64 2153706641}
!56 = !{i64 2152601064}
!57 = !{i64 2152601271}
!58 = !{i64 2153709412}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2153228254, i64 2153228737, i64 2153228291, i64 2153228347, i64 2153228381, i64 2153228405, i64 2153228446, i64 2153228467, i64 2153228495, i64 2153228529}
!61 = !{i64 2148526486}
!62 = !{i64 2148441219, i64 2148441251, i64 2148441280, i64 2148441314, i64 2148441345, i64 2148441368}
!63 = !{i64 2148526715}
!64 = !{i64 2148251427, i64 2148251432, i64 2148251445, i64 2148251489, i64 2148251523, i64 2148251544}
!65 = !{!"auto-init"}
!66 = !{i64 2151441975}
!67 = !{i64 2150691012, i64 2150691503, i64 2150691049, i64 2150691105, i64 2150691139, i64 2150691163, i64 2150691204, i64 2150691225, i64 2150691253, i64 2150691287}
!68 = !{i64 2156076858, i64 2156077337, i64 2156076895, i64 2156076951, i64 2156076985, i64 2156077009, i64 2156077050, i64 2156077071, i64 2156077099, i64 2156077133}
!69 = !{i64 2156079064, i64 2156079543, i64 2156079101, i64 2156079157, i64 2156079191, i64 2156079215, i64 2156079256, i64 2156079277, i64 2156079305, i64 2156079339}
!70 = !{i64 832292, i64 832353}
!71 = !{i64 835024}
!72 = !{i64 835309}
!73 = !{i64 2152932660}
!74 = !{i64 2152932502}
!75 = !{i64 2152932830}
!76 = !{i64 2150193079}
!77 = !{i64 2150939351, i64 2150939842, i64 2150939388, i64 2150939444, i64 2150939478, i64 2150939502, i64 2150939543, i64 2150939564, i64 2150939592, i64 2150939626}
!78 = !{i64 2150947394, i64 2150947567, i64 2150947582, i64 2150947634, i64 2150947693, i64 2150947717, i64 2150947758, i64 2150947779, i64 2150947807, i64 2150947839}
!79 = !{i64 2150948165, i64 2150948338, i64 2150948353, i64 2150948405, i64 2150948464, i64 2150948488, i64 2150948529, i64 2150948550, i64 2150948578, i64 2150948610}
!80 = !{i64 2150698445, i64 2150698936, i64 2150698482, i64 2150698538, i64 2150698572, i64 2150698596, i64 2150698637, i64 2150698658, i64 2150698686, i64 2150698720}
!81 = !{i64 2156073413, i64 2156073892, i64 2156073450, i64 2156073506, i64 2156073540, i64 2156073564, i64 2156073605, i64 2156073626, i64 2156073654, i64 2156073688}
!82 = !{i64 2150955541, i64 2150955714, i64 2150955729, i64 2150955781, i64 2150955840, i64 2150955864, i64 2150955905, i64 2150955926, i64 2150955954, i64 2150955986}
!83 = !{i64 2150956312, i64 2150956485, i64 2150956500, i64 2150956552, i64 2150956611, i64 2150956635, i64 2150956676, i64 2150956697, i64 2150956725, i64 2150956757}
!84 = !{i64 2156075124, i64 2156075603, i64 2156075161, i64 2156075217, i64 2156075251, i64 2156075275, i64 2156075316, i64 2156075337, i64 2156075365, i64 2156075399}
!85 = !{i64 2148446892, i64 2148446924, i64 2148446953, i64 2148446987, i64 2148447018, i64 2148447041}
!86 = !{i64 2148535973}
!87 = !{i64 2150800921, i64 2150801412, i64 2150800958, i64 2150801014, i64 2150801048, i64 2150801072, i64 2150801113, i64 2150801134, i64 2150801162, i64 2150801196}
!88 = !{i64 2151206866, i64 2151207357, i64 2151206903, i64 2151206959, i64 2151206993, i64 2151207017, i64 2151207058, i64 2151207079, i64 2151207107, i64 2151207141}
!89 = !{i64 2156061397, i64 2156061876, i64 2156061434, i64 2156061490, i64 2156061524, i64 2156061548, i64 2156061589, i64 2156061610, i64 2156061638, i64 2156061672}
!90 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!91 = !{i64 2155337486}
!92 = !{i64 2155337691}
!93 = !{i64 2149274107}
!94 = !{i64 2149275143}
