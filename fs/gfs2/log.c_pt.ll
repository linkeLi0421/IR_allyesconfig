; ModuleID = '/llk/IR_all_yes/fs/gfs2/log.c_pt.bc'
source_filename = "../fs/gfs2/log.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.rb_root = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gfs2_bufdata = type { ptr, ptr, i64, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.82, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.anon.82 = type { %struct.delayed_work, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
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
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
%struct.gfs2_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.83 }
%union.anon.83 = type { i32 }
%struct.gfs2_log_header = type { %struct.gfs2_meta_header, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.gfs2_log_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@gfs2_ail1_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013gfs2: fsid=%s: Error: In %s for ten minutes! t=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gfs2_ail1_flush\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fs/gfs2/log.c\00", [18 x i8] zeroinitializer }, align 32
@gfs2_ail1_flush._entry_ptr = internal global ptr @gfs2_ail1_flush._entry, section ".printk_index", align 4
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"gfs2_ail1_start_one (generic_writepages) returned: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"atomic_read(&sdp->sd_log_blks_free) <= sdp->sd_jdesc->jd_blocks\00", [32 x i8] zeroinitializer }, align 32
@__func__.gfs2_log_release = private unnamed_addr constant [17 x i8] c"gfs2_log_release\00", align 1
@gfs2_page_pool = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ret == 0\00", [23 x i8] zeroinitializer }, align 32
@__func__.gfs2_write_log_header = private unnamed_addr constant [22 x i8] c"gfs2_write_log_header\00", align 1
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"!tr->tr_num_buf_new && !tr->tr_num_databuf_new\00", [49 x i8] zeroinitializer }, align 32
@__func__.gfs2_log_flush = private unnamed_addr constant [15 x i8] c"gfs2_log_flush\00", align 1
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"!reserved_revokes\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"reserved_revokes % sdp->sd_inptrs == sdp->sd_ldptrs\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"used_blocks < reserved_blocks\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"GFS2: fsid=%s: error %d: withdrawing the file system to prevent further damage.\0A\00", [47 x i8] zeroinitializer }, align 32
@__tracepoint_gfs2_ail_flush = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/gfs2/trace_gfs2.h\00", [43 x i8] zeroinitializer }, align 32
@trace_gfs2_ail_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@dump_ail_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013gfs2: fsid=%s: bd %p: blk:0x%llx bh=%p \00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dump_ail_list\00", [18 x i8] zeroinitializer }, align 32
@dump_ail_list._entry_ptr = internal global ptr @dump_ail_list._entry, section ".printk_index", align 4
@dump_ail_list._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013gfs2: fsid=%s: \0A\00", [45 x i8] zeroinitializer }, align 32
@dump_ail_list._entry_ptr.18 = internal global ptr @dump_ail_list._entry.16, section ".printk_index", align 4
@dump_ail_list._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [133 x i8], [59 x i8] } { [133 x i8] c"\013gfs2: fsid=%s: 0x%llx up2:%d dirt:%d lkd:%d req:%d map:%d new:%d ar:%d aw:%d delay:%d io err:%d unwritten:%d dfr:%d pin:%d esc:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@dump_ail_list._entry_ptr.21 = internal global ptr @dump_ail_list._entry.19, section ".printk_index", align 4
@__func__.gfs2_ail1_start_one = private unnamed_addr constant [20 x i8] c"gfs2_ail1_start_one\00", align 1
@__tracepoint_gfs2_log_blocks = external dso_local global %struct.tracepoint, align 4
@trace_gfs2_log_blocks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fatal: I/O error(s)\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.gfs2_ail1_empty_one = private unnamed_addr constant [20 x i8] c"gfs2_ail1_empty_one\00", align 1
@__tracepoint_gfs2_log_flush = external dso_local global %struct.tracepoint, align 4
@trace_gfs2_log_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gfs2_log_ops = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(state != SFS_FROZEN)\00", [42 x i8] zeroinitializer }, align 32
@__func__.log_write_header = private unnamed_addr constant [17 x i8] c"log_write_header\00", align 1
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"list_empty(&tr->tr_ail1_list)\00", [34 x i8] zeroinitializer }, align 32
@__func__.__ail2_empty = private unnamed_addr constant [13 x i8] c"__ail2_empty\00", align 1
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"list_empty(&tr->tr_ail2_list)\00", [34 x i8] zeroinitializer }, align 32
@empty_ail1_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013gfs2: fsid=%s: Error: In %s for 10 minutes! t=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"empty_ail1_list\00", [16 x i8] zeroinitializer }, align 32
@empty_ail1_list._entry_ptr = internal global ptr @empty_ail1_list._entry, section ".printk_index", align 4
@gfs2_bufdata_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"!test_bit(TR_ONSTACK, &tr->tr_flags)\00", [59 x i8] zeroinitializer }, align 32
@__func__.log_refund = private unnamed_addr constant [11 x i8] c"log_refund\00", align 1
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"maxres >= reserved\00", [45 x i8] zeroinitializer }, align 32
@gfs2_merge_trans.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"!sdp->sd_log_blks_reserved\00", [37 x i8] zeroinitializer }, align 32
@__func__.gfs2_log_shutdown = private unnamed_addr constant [18 x i8] c"gfs2_log_shutdown\00", align 1
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"!sdp->sd_log_num_revoke\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"list_empty(&sdp->sd_ail1_list)\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sdp->sd_log_head == sdp->sd_log_tail\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"list_empty(&sdp->sd_ail2_list)\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 206, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 225, i32 16 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 473, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 866, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1063, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1088, i32 7 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1139, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1144, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1310, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant [24 x i8] c"../fs/gfs2/trace_gfs2.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 401, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 108, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 161, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 164, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 167, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 368, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 911, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 401, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 402, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 973, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1209, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1216, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1258, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1259, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1260, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1265, i32 2 }
@___asan_gen_.143 = private constant [17 x i8] c"../fs/gfs2/log.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 1266, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 354, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 57, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @dump_ail_list._entry, ptr @dump_ail_list._entry.16, ptr @dump_ail_list._entry.19, ptr @dump_ail_list._entry_ptr, ptr @dump_ail_list._entry_ptr.18, ptr @dump_ail_list._entry_ptr.21, ptr @empty_ail1_list._entry, ptr @empty_ail1_list._entry_ptr, ptr @gfs2_ail1_flush._entry, ptr @gfs2_ail1_flush._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_ail1_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ail_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ail_list._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_ail_list._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empty_ail1_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gfs2_struct2blk(ptr nocapture noundef readonly %sdp, i32 noundef %nstruct) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_ldptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 10
  %0 = ptrtoint ptr %sd_ldptrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_ldptrs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %nstruct)
  %cmp = icmp ult i32 %1, %nstruct
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sd_inptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 9
  %2 = ptrtoint ptr %sd_inptrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_inptrs, align 4
  %4 = xor i32 %1, -1
  %add = add i32 %4, %nstruct
  %sub1 = add i32 %add, %3
  %div = udiv i32 %sub1, %3
  %add2 = add i32 %div, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %blks.0 = phi i32 [ %add2, %if.then ], [ 1, %entry.if.end_crit_edge ]
  ret i32 %blks.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_remove_from_ail(ptr noundef %bd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_tr = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 4
  %0 = ptrtoint ptr %bd_tr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bd_tr, align 8
  %bd_ail_st_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 5
  %call.i.i5 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bd_ail_st_list) #9
  br i1 %call.i.i5, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %bd_ail_st_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_ail_st_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %7 = ptrtoint ptr %bd_ail_st_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %bd_ail_st_list, ptr %bd_ail_st_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bd_ail_st_list, ptr %prev.i3.i, align 4
  %bd_ail_gl_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 6
  %call.i.i6 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bd_ail_gl_list) #9
  br i1 %call.i.i6, label %if.end.i.i9, label %list_del_init.exit.list_del_init.exit11_crit_edge

list_del_init.exit.list_del_init.exit11_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit11

if.end.i.i9:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i7 = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i7, align 4
  %11 = ptrtoint ptr %bd_ail_gl_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_ail_gl_list, align 4
  %prev1.i.i.i8 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i8, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit11

list_del_init.exit11:                             ; preds = %if.end.i.i9, %list_del_init.exit.list_del_init.exit11_crit_edge
  %15 = ptrtoint ptr %bd_ail_gl_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %bd_ail_gl_list, ptr %bd_ail_gl_list, align 4
  %prev.i3.i10 = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev.i3.i10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bd_ail_gl_list, ptr %prev.i3.i10, align 4
  %bd_gl = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 1
  %17 = ptrtoint ptr %bd_gl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd_gl, align 4
  %gl_ail_count = getelementptr inbounds %struct.gfs2_glock, ptr %18, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gl_ail_count, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %gl_ail_count, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gl_ail_count, ptr %gl_ail_count, i32 1, ptr elementtype(i32) %gl_ail_count) #9, !srcloc !103
  %20 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bd, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %list_del_init.exit11.brelse.exit_crit_edge, label %if.then.i

list_del_init.exit11.brelse.exit_crit_edge:       ; preds = %list_del_init.exit11
  call void @__sanitizer_cov_trace_pc() #11
  br label %brelse.exit

if.then.i:                                        ; preds = %list_del_init.exit11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %21) #9
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %list_del_init.exit11.brelse.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_ail1_flush(ptr noundef %sdp, ptr noundef %wbc) local_unnamed_addr #2 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_ail1_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #9
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  tail call fastcc void @trace_gfs2_ail_flush(ptr noundef %sdp, ptr noundef %wbc, i32 noundef 1)
  call void @blk_start_plug(ptr noundef nonnull %plug) #9
  %sd_ail_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  call void @_raw_spin_lock(ptr noundef %sd_ail_lock) #9
  %add = add i32 %1, 60000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub55 = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55)
  %cmp56 = icmp slt i32 %sub55, 0
  br i1 %cmp56, label %entry.do.end_crit_edge, label %if.end.lr.ph

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.lr.ph:                                     ; preds = %entry
  %prev = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105, i32 1
  %sd_log_error.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 98
  %sd_flags.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  br label %if.end

restart.loopexit:                                 ; preds = %lor.lhs.false.i.restart.loopexit_crit_edge, %if.end68.i.restart.loopexit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %3
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %restart.loopexit.do.end_crit_edge, label %restart.loopexit.if.end_crit_edge

restart.loopexit.if.end_crit_edge:                ; preds = %restart.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

restart.loopexit.do.end_crit_edge:                ; preds = %restart.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %restart.loopexit.do.end_crit_edge, %entry.do.end_crit_edge
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %4 = call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 146
  %8 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %journal_info, align 4
  %tobool.not = icmp ne ptr %9, null
  %cond = zext i1 %tobool.not to i32
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %sd_fsname, ptr noundef nonnull @.str.1, i32 noundef %cond) #12
  call fastcc void @dump_ail_list(ptr noundef %sdp)
  br label %out

if.end:                                           ; preds = %restart.loopexit.if.end_crit_edge, %if.end.lr.ph
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn44 = load ptr, ptr %prev, align 4
  %cmp3.not46 = icmp eq ptr %.pn44, %sd_ail1_list
  br i1 %cmp3.not46, label %if.end.out_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn44, %if.end.for.body_crit_edge ]
  %tr.050 = getelementptr i8, ptr %.pn47, i32 -40
  %11 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp4 = icmp slt i32 %12, 1
  br i1 %cmp4, label %for.body.out_crit_edge, label %if.end6

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %for.body
  %tr_ail1_list.i = getelementptr i8, ptr %.pn47, i32 28
  %prev.i = getelementptr i8, ptr %.pn47, i32 32
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %cmp.not137.i = icmp eq ptr %14, %tr_ail1_list.i
  br i1 %cmp.not137.i, label %if.end6.for.inc_crit_edge, label %for.body.lr.ph.i

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.end6
  %tr_ail2_list.i = getelementptr i8, ptr %.pn47, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %gl.0141.i = phi ptr [ null, %for.body.lr.ph.i ], [ %gl.1.i, %for.inc.i.for.body.i_crit_edge ]
  %.pn117138.i = phi ptr [ %14, %for.body.lr.ph.i ], [ %.pn146.i, %for.inc.i.for.body.i_crit_edge ]
  %bd.0144.i = getelementptr i8, ptr %.pn117138.i, i32 -28
  %.pn.in145.i = getelementptr inbounds %struct.list_head, ptr %.pn117138.i, i32 0, i32 1
  %15 = ptrtoint ptr %.pn.in145.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn146.i = load ptr, ptr %.pn.in145.i, align 4
  %16 = ptrtoint ptr %bd.0144.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd.0144.i, align 8
  %bd_tr.i = getelementptr i8, ptr %.pn117138.i, i32 -4
  %18 = ptrtoint ptr %bd_tr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd_tr.i, align 8
  %cmp7.not.i = icmp eq ptr %19, %tr.050
  br i1 %cmp7.not.i, label %do.end16.i, label %if.then.i, !prof !104

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @gfs2_assert_i(ptr noundef %sdp) #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 106, 0\0A.popsection", ""() #9, !srcloc !105
  unreachable

do.end16.i:                                       ; preds = %for.body.i
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  %and.i42 = and i32 %21, 65542
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool17.not.i = icmp eq i32 %and.i42, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %do.end16.i.if.end45.i_crit_edge

do.end16.i.if.end45.i_crit_edge:                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then18.i:                                      ; preds = %do.end16.i
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %17, align 4
  %and1.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool19.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool19.not.i, label %if.end22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then18.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn117138.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then20.i.__list_del_entry.exit.i.i_crit_edge

if.then20.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %.pn.in145.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %.pn.in145.i, align 4
  %26 = ptrtoint ptr %.pn117138.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn117138.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then20.i.__list_del_entry.exit.i.i_crit_edge
  %30 = ptrtoint ptr %tr_ail2_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tr_ail2_list.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn117138.i, ptr noundef %tr_ail2_list.i, ptr noundef %31) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.for.inc.i_crit_edge

__list_del_entry.exit.i.i.for.inc.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.pn117138.i, ptr %prev1.i.i2.i.i, align 4
  %33 = ptrtoint ptr %.pn117138.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %.pn117138.i, align 4
  %34 = ptrtoint ptr %.pn.in145.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tr_ail2_list.i, ptr %.pn.in145.i, align 4
  %35 = ptrtoint ptr %tr_ail2_list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %.pn117138.i, ptr %tr_ail2_list.i, align 4
  br label %for.inc.i

if.end22.i:                                       ; preds = %if.then18.i
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_error.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !106
  call void @llvm.prefetch.p0(ptr %sd_log_error.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end22.i
  %36 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %sd_log_error.i, i32 0, i32 -5) #9, !srcloc !107
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %36, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool42.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %__cmpxchg.exit.i.if.end45.i_crit_edge

__cmpxchg.exit.i.if.end45.i_crit_edge:            ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then43.i:                                      ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @gfs2_io_error_bh_i(ptr noundef %sdp, ptr noundef %17, ptr noundef nonnull @__func__.gfs2_ail1_start_one, ptr noundef nonnull @.str.2, i32 noundef 115, i1 noundef zeroext false) #9
  call void @_set_bit(i32 noundef 11, ptr noundef %sd_flags.i.i) #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then43.i, %__cmpxchg.exit.i.if.end45.i_crit_edge, %do.end16.i.if.end45.i_crit_edge
  %37 = ptrtoint ptr %sd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %sd_flags.i.i, align 4
  %39 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i121.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i121.i, label %gfs2_withdrawn.exit.i, label %if.end45.i.if.then47.i_crit_edge

if.end45.i.if.then47.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i

gfs2_withdrawn.exit.i:                            ; preds = %if.end45.i
  %40 = ptrtoint ptr %sd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %sd_flags.i.i, align 4
  %42 = and i32 %41, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool3.i.not.i = icmp eq i32 %42, 0
  br i1 %tobool3.i.not.i, label %if.end48.i, label %gfs2_withdrawn.exit.i.if.then47.i_crit_edge

gfs2_withdrawn.exit.i.if.then47.i_crit_edge:      ; preds = %gfs2_withdrawn.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i

if.then47.i:                                      ; preds = %gfs2_withdrawn.exit.i.if.then47.i_crit_edge, %if.end45.i.if.then47.i_crit_edge
  call void @gfs2_remove_from_ail(ptr noundef %bd.0144.i) #9
  br label %for.inc.i

if.end48.i:                                       ; preds = %gfs2_withdrawn.exit.i
  %43 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %17, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool50.not.i = icmp eq i32 %45, 0
  br i1 %tobool50.not.i, label %if.end48.i.for.inc.i_crit_edge, label %if.end52.i

if.end48.i.for.inc.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end52.i:                                       ; preds = %if.end48.i
  %bd_gl.i = getelementptr i8, ptr %.pn117138.i, i32 -24
  %46 = ptrtoint ptr %bd_gl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bd_gl.i, align 4
  %cmp53.i = icmp eq ptr %gl.0141.i, %47
  br i1 %cmp53.i, label %if.end52.i.for.inc.i_crit_edge, label %if.end55.i

if.end52.i.for.inc.i_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end55.i:                                       ; preds = %if.end52.i
  %call.i.i122.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn117138.i) #9
  br i1 %call.i.i122.i, label %if.end.i.i125.i, label %if.end55.i.__list_del_entry.exit.i127.i_crit_edge

if.end55.i.__list_del_entry.exit.i127.i_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i127.i

if.end.i.i125.i:                                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %.pn.in145.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %.pn.in145.i, align 4
  %50 = ptrtoint ptr %.pn117138.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %.pn117138.i, align 4
  %prev1.i.i.i124.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i124.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %__list_del_entry.exit.i127.i

__list_del_entry.exit.i127.i:                     ; preds = %if.end.i.i125.i, %if.end55.i.__list_del_entry.exit.i127.i_crit_edge
  %54 = ptrtoint ptr %tr_ail1_list.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tr_ail1_list.i, align 4
  %call.i.i.i126.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn117138.i, ptr noundef %tr_ail1_list.i, ptr noundef %55) #9
  br i1 %call.i.i.i126.i, label %if.end.i.i.i130.i, label %__list_del_entry.exit.i127.i.list_move.exit131.i_crit_edge

__list_del_entry.exit.i127.i.list_move.exit131.i_crit_edge: ; preds = %__list_del_entry.exit.i127.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit131.i

if.end.i.i.i130.i:                                ; preds = %__list_del_entry.exit.i127.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i128.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i2.i128.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %.pn117138.i, ptr %prev1.i.i2.i128.i, align 4
  %57 = ptrtoint ptr %.pn117138.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %.pn117138.i, align 4
  %58 = ptrtoint ptr %.pn.in145.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %tr_ail1_list.i, ptr %.pn.in145.i, align 4
  %59 = ptrtoint ptr %tr_ail1_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %.pn117138.i, ptr %tr_ail1_list.i, align 4
  br label %list_move.exit131.i

list_move.exit131.i:                              ; preds = %if.end.i.i.i130.i, %__list_del_entry.exit.i127.i.list_move.exit131.i_crit_edge
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 2
  %60 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %b_page.i, align 8
  %mapping59.i = getelementptr inbounds %struct.page, ptr %61, i32 0, i32 1, i32 0, i32 1
  %62 = ptrtoint ptr %mapping59.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mapping59.i, align 4
  %tobool60.not.i = icmp eq ptr %63, null
  br i1 %tobool60.not.i, label %list_move.exit131.i.for.inc.i_crit_edge, label %if.end62.i

list_move.exit131.i.for.inc.i_crit_edge:          ; preds = %list_move.exit131.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end62.i:                                       ; preds = %list_move.exit131.i
  call void @_raw_spin_unlock(ptr noundef %sd_ail_lock) #9
  %call63.i = call i32 @generic_writepages(ptr noundef nonnull %63, ptr noundef %wbc) #9
  %64 = call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 16384
  %68 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.i.not.i = icmp eq i32 %68, 0
  br i1 %tobool.i.not.i, label %if.end62.i.if.end68.i_crit_edge, label %if.then65.i

if.end62.i.if.end68.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

if.then65.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @blk_finish_plug(ptr noundef nonnull %plug) #9
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 137, i32 noundef 0) #9
  %call.i132.i = call i32 @__cond_resched() #9
  call void @blk_start_plug(ptr noundef nonnull %plug) #9
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then65.i, %if.end62.i.if.end68.i_crit_edge
  call void @_raw_spin_lock(ptr noundef %sd_ail_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call63.i)
  %cmp70.i = icmp eq i32 %call63.i, -61
  %spec.store.select.i = select i1 %cmp70.i, i32 0, i32 %call63.i
  %69 = zext i32 %spec.store.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.store.select.i, label %if.end68.i.out_crit_edge [
    i32 0, label %lor.lhs.false.i
    i32 -16, label %if.end68.i.restart.loopexit_crit_edge
  ]

if.end68.i.restart.loopexit_crit_edge:            ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.loopexit

if.end68.i.out_crit_edge:                         ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end68.i
  %70 = ptrtoint ptr %wbc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %wbc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp74.i = icmp slt i32 %71, 1
  br i1 %cmp74.i, label %lor.lhs.false.i.for.inc_crit_edge, label %lor.lhs.false.i.restart.loopexit_crit_edge

lor.lhs.false.i.restart.loopexit_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %restart.loopexit

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc.i:                                        ; preds = %list_move.exit131.i.for.inc.i_crit_edge, %if.end52.i.for.inc.i_crit_edge, %if.end48.i.for.inc.i_crit_edge, %if.then47.i, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.for.inc.i_crit_edge
  %gl.1.i = phi ptr [ %gl.0141.i, %if.then47.i ], [ %gl.0141.i, %if.end52.i.for.inc.i_crit_edge ], [ %47, %list_move.exit131.i.for.inc.i_crit_edge ], [ %gl.0141.i, %if.end48.i.for.inc.i_crit_edge ], [ %gl.0141.i, %__list_del_entry.exit.i.i.for.inc.i_crit_edge ], [ %gl.0141.i, %if.end.i.i.i.i ]
  %cmp.not.i = icmp eq ptr %.pn146.i, %tr_ail1_list.i
  br i1 %cmp.not.i, label %for.inc.i.for.inc_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %if.end6.for.inc_crit_edge
  %prev16 = getelementptr inbounds %struct.list_head, ptr %.pn47, i32 0, i32 1
  %72 = ptrtoint ptr %prev16 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn = load ptr, ptr %prev16, align 4
  %cmp3.not = icmp eq ptr %.pn, %sd_ail1_list
  br i1 %cmp3.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end68.i.out_crit_edge, %for.body.out_crit_edge, %if.end.out_crit_edge, %do.end
  %ret.1 = phi i32 [ 0, %do.end ], [ 0, %for.body.out_crit_edge ], [ 0, %for.inc.out_crit_edge ], [ %spec.store.select.i, %if.end68.i.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %sd_ail_lock) #9
  call void @blk_finish_plug(ptr noundef nonnull %plug) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool20.not = icmp eq i32 %ret.1, 0
  br i1 %tobool20.not, label %out.if.end23_crit_edge, label %if.then21

out.if.end23_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %sdp, ptr noundef nonnull @.str.3, i32 noundef %ret.1) #9
  %call22 = call i32 @gfs2_withdraw(ptr noundef %sdp) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %out.if.end23_crit_edge
  call fastcc void @trace_gfs2_ail_flush(ptr noundef %sdp, ptr noundef %wbc, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_ail_flush(ptr noundef %sdp, ptr noundef %wbc, i32 noundef %start) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_ail_flush, i32 0, i32 1), ptr blockaddress(@trace_gfs2_ail_flush, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !109

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !110
  %call42 = tail call i32 @__traceiter_gfs2_ail_flush(ptr noundef null, ptr noundef %sdp, ptr noundef %wbc, i32 noundef %start) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_ail_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_ail_flush, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gfs2_ail_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_gfs2_ail_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 425, ptr noundef nonnull @.str.12) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_ail_list(ptr noundef %sdp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_ail1_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105
  %prev = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn108 = load ptr, ptr %prev, align 4
  %cmp.not109 = icmp eq ptr %.pn108, %sd_ail1_list
  br i1 %cmp.not109, label %entry.for.end51_crit_edge, label %for.body.lr.ph

entry.for.end51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51

for.body.lr.ph:                                   ; preds = %entry
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  br label %for.body

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %for.body.lr.ph
  %.pn110 = phi ptr [ %.pn108, %for.body.lr.ph ], [ %.pn, %for.inc45.for.body_crit_edge ]
  %tr_ail1_list = getelementptr i8, ptr %.pn110, i32 28
  %prev3 = getelementptr i8, ptr %.pn110, i32 32
  %1 = ptrtoint ptr %prev3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn79105 = load ptr, ptr %prev3, align 4
  %cmp8.not106 = icmp eq ptr %.pn79105, %tr_ail1_list
  br i1 %cmp8.not106, label %for.body.for.inc45_crit_edge, label %for.body.for.body10_crit_edge

for.body.for.body10_crit_edge:                    ; preds = %for.body
  br label %for.body10

for.body.for.inc45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

for.body10:                                       ; preds = %for.inc.for.body10_crit_edge, %for.body.for.body10_crit_edge
  %.pn79107 = phi ptr [ %.pn79, %for.inc.for.body10_crit_edge ], [ %.pn79105, %for.body.for.body10_crit_edge ]
  %bd.0 = getelementptr i8, ptr %.pn79107, i32 -28
  %2 = ptrtoint ptr %bd.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd.0, align 8
  %bd_blkno = getelementptr i8, ptr %.pn79107, i32 -20
  %4 = ptrtoint ptr %bd_blkno to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bd_blkno, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %sd_fsname, ptr noundef %bd.0, i64 noundef %5, ptr noundef %3) #12
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end14, label %do.end21

do.end14:                                         ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %sd_fsname) #12
  br label %for.inc

do.end21:                                         ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %b_blocknr, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %3, align 4
  %and1.i.i = and i32 %9, 1
  %10 = load volatile i32, ptr %3, align 4
  %shr.i.i = lshr i32 %10, 1
  %and1.i.i80 = and i32 %shr.i.i, 1
  %11 = load volatile i32, ptr %3, align 4
  %shr.i.i81 = lshr i32 %11, 2
  %and1.i.i82 = and i32 %shr.i.i81, 1
  %12 = load volatile i32, ptr %3, align 4
  %shr.i.i83 = lshr i32 %12, 3
  %and1.i.i84 = and i32 %shr.i.i83, 1
  %13 = load volatile i32, ptr %3, align 4
  %shr.i.i85 = lshr i32 %13, 4
  %and1.i.i86 = and i32 %shr.i.i85, 1
  %14 = load volatile i32, ptr %3, align 4
  %shr.i.i87 = lshr i32 %14, 5
  %and1.i.i88 = and i32 %shr.i.i87, 1
  %15 = load volatile i32, ptr %3, align 4
  %shr.i.i89 = lshr i32 %15, 6
  %and1.i.i90 = and i32 %shr.i.i89, 1
  %16 = load volatile i32, ptr %3, align 4
  %shr.i.i91 = lshr i32 %16, 7
  %and1.i.i92 = and i32 %shr.i.i91, 1
  %17 = load volatile i32, ptr %3, align 4
  %shr.i.i93 = lshr i32 %17, 8
  %and1.i.i94 = and i32 %shr.i.i93, 1
  %18 = load volatile i32, ptr %3, align 4
  %shr.i.i95 = lshr i32 %18, 10
  %and1.i.i96 = and i32 %shr.i.i95, 1
  %19 = load volatile i32, ptr %3, align 4
  %shr.i.i97 = lshr i32 %19, 11
  %and1.i.i98 = and i32 %shr.i.i97, 1
  %20 = load volatile i32, ptr %3, align 4
  %shr.i.i99 = lshr i32 %20, 15
  %and1.i.i100 = and i32 %shr.i.i99, 1
  %21 = load volatile i32, ptr %3, align 4
  %shr.i.i101 = lshr i32 %21, 16
  %and1.i.i102 = and i32 %shr.i.i101, 1
  %22 = load volatile i32, ptr %3, align 4
  %shr.i.i103 = lshr i32 %22, 17
  %and1.i.i104 = and i32 %shr.i.i103, 1
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %sd_fsname, i64 noundef %7, i32 noundef %and1.i.i, i32 noundef %and1.i.i80, i32 noundef %and1.i.i82, i32 noundef %and1.i.i84, i32 noundef %and1.i.i86, i32 noundef %and1.i.i88, i32 noundef %and1.i.i90, i32 noundef %and1.i.i92, i32 noundef %and1.i.i94, i32 noundef %and1.i.i96, i32 noundef %and1.i.i98, i32 noundef %and1.i.i100, i32 noundef %and1.i.i102, i32 noundef %and1.i.i104) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end21, %do.end14
  %prev42 = getelementptr inbounds %struct.list_head, ptr %.pn79107, i32 0, i32 1
  %23 = ptrtoint ptr %prev42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn79 = load ptr, ptr %prev42, align 4
  %cmp8.not = icmp eq ptr %.pn79, %tr_ail1_list
  br i1 %cmp8.not, label %for.inc.for.inc45_crit_edge, label %for.inc.for.body10_crit_edge

for.inc.for.body10_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

for.inc.for.inc45_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

for.inc45:                                        ; preds = %for.inc.for.inc45_crit_edge, %for.body.for.inc45_crit_edge
  %prev48 = getelementptr inbounds %struct.list_head, ptr %.pn110, i32 0, i32 1
  %24 = ptrtoint ptr %prev48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %prev48, align 4
  %cmp.not = icmp eq ptr %.pn, %sd_ail1_list
  br i1 %cmp.not, label %for.inc45.for.end51_crit_edge, label %for.inc45.for.body_crit_edge

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc45.for.end51_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end51

for.end51:                                        ; preds = %for.inc45.for.end51_crit_edge, %entry.for.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_lm(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_withdraw(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gfs2_log_is_empty(ptr noundef %sdp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_blks_free = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 88
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  %0 = ptrtoint ptr %sd_log_blks_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_log_blks_free, align 4
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %2 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_jdesc, align 4
  %jd_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %jd_blocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %jd_blocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp = icmp eq i32 %1, %5
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_log_release_revokes(ptr noundef %sdp, i32 noundef %revokes) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %revokes)
  %tobool.not = icmp eq i32 %revokes, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sd_log_revokes_available = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 90
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_revokes_available, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sd_log_revokes_available, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_revokes_available, ptr %sd_log_revokes_available, i32 %revokes, ptr elementtype(i32) %sd_log_revokes_available) #9, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_log_release(ptr noundef %sdp, i32 noundef %blks) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_blks_free = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 88
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sd_log_blks_free, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_blks_free, ptr %sd_log_blks_free, i32 %blks, ptr elementtype(i32) %sd_log_blks_free) #9, !srcloc !114
  tail call fastcc void @trace_gfs2_log_blocks(ptr noundef %sdp, i32 noundef %blks)
  %call.i.i20 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  %1 = ptrtoint ptr %sd_log_blks_free to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sd_log_blks_free, align 4
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %3 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sd_jdesc, align 4
  %jd_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %jd_blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jd_blocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp.not = icmp ugt i32 %2, %6
  br i1 %cmp.not, label %if.then, label %entry.if.end_crit_edge, !prof !115

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.gfs2_log_release, ptr noundef nonnull @.str.2, i32 noundef 474, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sd_log_blks_needed = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 89
  %call.i.i21 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_needed, i32 noundef 4) #9
  %7 = ptrtoint ptr %sd_log_blks_needed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sd_log_blks_needed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sd_log_waitq = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 91
  tail call void @__wake_up(ptr noundef %sd_log_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_log_blocks(ptr noundef %sdp, i32 noundef %blocks) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_log_blocks, i32 0, i32 1), ptr blockaddress(@trace_gfs2_log_blocks, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !109

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  %call42 = tail call i32 @__traceiter_gfs2_log_blocks(ptr noundef null, ptr noundef %sdp, i32 noundef %blocks) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_log_blocks, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_log_blocks, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gfs2_log_blocks.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_gfs2_log_blocks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 398, ptr noundef nonnull @.str.12) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
declare dso_local void @gfs2_assert_withdraw_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @gfs2_log_try_reserve(ptr noundef %sdp, ptr nocapture noundef readonly %tr, ptr nocapture noundef writeonly %extra_revokes) local_unnamed_addr #2 align 64 {
entry:
  %available.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tr_reserved = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 3
  %0 = ptrtoint ptr %tr_reserved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tr_reserved, align 4
  %tr_revokes = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 2
  %2 = ptrtoint ptr %tr_revokes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tr_revokes, align 4
  %4 = ptrtoint ptr %extra_revokes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %extra_revokes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %available.i) #9
  %sd_log_revokes_available.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 90
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_revokes_available.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %sd_log_revokes_available.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sd_log_revokes_available.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.while.cond.i_crit_edge, %land.lhs.true
  %storemerge.i = phi i32 [ %6, %land.lhs.true ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %available.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge.i, ptr %available.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i, i32 %3)
  %cmp.not.i = icmp ult i32 %storemerge.i, %3
  br i1 %cmp.not.i, label %if.then, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %sub.i = sub i32 %storemerge.i, %3
  %call.i.i5.i = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_revokes_available.i, i32 noundef 4) #9
  %call.i3.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %available.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %available.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %available.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @llvm.prefetch.p0(ptr %sd_log_revokes_available.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %while.body.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_revokes_available.i, ptr %sd_log_revokes_available.i, i32 %9, i32 %sub.i, ptr elementtype(i32) %sd_log_revokes_available.i) #9, !srcloc !119
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !120
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i, label %__gfs2_log_try_reserve_revokes.exit, label %arch_atomic_cmpxchg.exit.i.i.i.while.cond.i_crit_edge, !prof !104

arch_atomic_cmpxchg.exit.i.i.i.while.cond.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

__gfs2_log_try_reserve_revokes.exit:              ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available.i) #9
  br label %if.end

if.then:                                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available.i) #9
  %sd_inptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 9
  %11 = ptrtoint ptr %sd_inptrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sd_inptrs, align 4
  %add = add i32 %3, -1
  %sub = add i32 %add, %12
  %div = udiv i32 %sub, %12
  %mul = mul i32 %div, %12
  %sub3 = sub i32 %mul, %3
  %13 = ptrtoint ptr %extra_revokes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub3, ptr %extra_revokes, align 4
  %add4 = add i32 %div, %1
  br label %if.end

if.end:                                           ; preds = %if.then, %__gfs2_log_try_reserve_revokes.exit, %entry.if.end_crit_edge
  %blks.0 = phi i32 [ %1, %__gfs2_log_try_reserve_revokes.exit ], [ %add4, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %revoke_blks.0 = phi i32 [ 0, %__gfs2_log_try_reserve_revokes.exit ], [ %div, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blks.0)
  %tobool5.not = icmp eq i32 %blks.0, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc zeroext i1 @__gfs2_log_try_reserve(ptr noundef %sdp, i32 noundef %blks.0, i32 noundef 4)
  br i1 %call8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %revoke_blks.0)
  %tobool11.not = icmp ne i32 %revoke_blks.0, 0
  %brmerge = select i1 %tobool11.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end10.cleanup_crit_edge, label %if.then.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %sd_log_revokes_available.i31 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 90
  %call.i.i.i32 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_revokes_available.i31, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %sd_log_revokes_available.i31, i32 1, i32 3, i32 1) #9
  %14 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_revokes_available.i31, ptr %sd_log_revokes_available.i31, i32 %3, ptr elementtype(i32) %sd_log_revokes_available.i31) #9, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end.cleanup_crit_edge ], [ true, %if.end7.cleanup_crit_edge ], [ false, %if.end10.cleanup_crit_edge ], [ false, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__gfs2_log_try_reserve(ptr noundef %sdp, i32 noundef %blks, i32 noundef %taboo_blks) unnamed_addr #2 align 64 {
entry:
  %free_blocks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %taboo_blks, %blks
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %free_blocks) #9
  %sd_log_blks_free = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 88
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  %0 = ptrtoint ptr %sd_log_blks_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_log_blks_free, align 4
  br label %while.cond

while.cond:                                       ; preds = %arch_atomic_cmpxchg.exit.i.i.while.cond_crit_edge, %entry
  %storemerge = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.while.cond_crit_edge ]
  %2 = ptrtoint ptr %free_blocks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %free_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %add)
  %cmp.not = icmp ult i32 %storemerge, %add
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %storemerge, %blks
  %call.i.i9 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %free_blocks, i32 noundef 4) #9
  %3 = ptrtoint ptr %free_blocks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %free_blocks, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @llvm.prefetch.p0(ptr %sd_log_blks_free, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %while.body
  %5 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_blks_free, ptr %sd_log_blks_free, i32 %4, i32 %sub, ptr elementtype(i32) %sd_log_blks_free) #9, !srcloc !119
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg.exit.i.i:                     ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %5, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !120
  %cmp.not.i.i = icmp eq i32 %asmresult3.i.i.i.i, %4
  br i1 %cmp.not.i.i, label %if.then, label %arch_atomic_cmpxchg.exit.i.i.while.cond_crit_edge, !prof !104

arch_atomic_cmpxchg.exit.i.i.while.cond_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub3 = sub i32 0, %blks
  call fastcc void @trace_gfs2_log_blocks(ptr noundef %sdp, i32 noundef %sub3)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %while.cond.cleanup_crit_edge
  %6 = xor i1 %cmp.not, true
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %free_blocks) #9
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_log_reserve(ptr noundef %sdp, ptr nocapture noundef readonly %tr, ptr nocapture noundef writeonly %extra_revokes) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tr_reserved = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 3
  %0 = ptrtoint ptr %tr_reserved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tr_reserved, align 4
  %tr_revokes = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 2
  %2 = ptrtoint ptr %tr_revokes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tr_revokes, align 4
  %4 = ptrtoint ptr %extra_revokes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %extra_revokes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sd_inptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 9
  %5 = ptrtoint ptr %sd_inptrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sd_inptrs, align 4
  %add = add i32 %3, -1
  %sub = add i32 %add, %6
  %div = udiv i32 %sub, %6
  %mul = mul i32 %div, %6
  %sub3 = sub i32 %mul, %3
  %7 = ptrtoint ptr %extra_revokes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub3, ptr %extra_revokes, align 4
  %add4 = add i32 %div, %1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %blks.0 = phi i32 [ %add4, %if.then ], [ %1, %entry.if.end_crit_edge ]
  tail call fastcc void @__gfs2_log_reserve(ptr noundef %sdp, i32 noundef %blks.0, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__gfs2_log_reserve(ptr noundef %sdp, i32 noundef %blks, i32 noundef %taboo_blks) unnamed_addr #2 align 64 {
entry:
  %free_blocks = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %taboo_blks, %blks
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %free_blocks) #9
  %0 = ptrtoint ptr %free_blocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %free_blocks, align 4, !annotation !121
  %sd_log_blks_needed = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 89
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_blks_needed, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %sd_log_blks_needed, i32 1, i32 3, i32 1) #9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_blks_needed, ptr %sd_log_blks_needed, i32 %blks, ptr elementtype(i32) %sd_log_blks_needed) #9, !srcloc !114
  %sd_logd_process = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 64
  %sd_logd_waitq = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 92
  %sd_log_blks_free = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 88
  %sd_log_waitq = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 91
  br label %for.cond

for.cond:                                         ; preds = %do.cond24.for.cond_crit_edge, %entry
  %2 = call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %sd_logd_process to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_logd_process, align 8
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %for.cond.do.body1_crit_edge, label %if.then

for.cond.do.body1_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef %sd_logd_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %do.body1

do.body1:                                         ; preds = %if.then, %for.cond.do.body1_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 536) #9
  %call.i.i49 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  %8 = ptrtoint ptr %sd_log_blks_free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sd_log_blks_free, align 4
  %10 = ptrtoint ptr %free_blocks to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %free_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp6.not = icmp ult i32 %9, %add
  br i1 %cmp6.not, label %if.end8, label %do.body1.do.body19.preheader_crit_edge

do.body1.do.body19.preheader_crit_edge:           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19.preheader

if.end8:                                          ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call1055 = call i32 @prepare_to_wait_event(ptr noundef %sd_log_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i5056 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  %12 = ptrtoint ptr %sd_log_blks_free to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %sd_log_blks_free, align 4
  %14 = ptrtoint ptr %free_blocks to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %free_blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add)
  %cmp13.not57 = icmp ult i32 %13, %add
  br i1 %cmp13.not57, label %if.end8.cleanup_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  call void @io_schedule() #9
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %sd_log_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %call.i.i50 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  %15 = ptrtoint ptr %sd_log_blks_free to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sd_log_blks_free, align 4
  %17 = ptrtoint ptr %free_blocks to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %free_blocks, align 4
  %cmp13.not = icmp ult i32 %16, %add
  br i1 %cmp13.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end8.for.end_crit_edge
  call void @finish_wait(ptr noundef %sd_log_waitq, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.body19.preheader

do.body19.preheader:                              ; preds = %for.end, %do.body1.do.body19.preheader_crit_edge
  br label %do.body19

do.body19:                                        ; preds = %do.cond24.do.body19_crit_edge, %do.body19.preheader
  %18 = ptrtoint ptr %free_blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %free_blocks, align 4
  %sub = sub i32 %19, %blks
  %call.i.i51 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %free_blocks, i32 noundef 4) #9
  %20 = ptrtoint ptr %free_blocks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %free_blocks, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !118
  call void @llvm.prefetch.p0(ptr %sd_log_blks_free, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.body19
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_blks_free, ptr %sd_log_blks_free, i32 %21, i32 %sub, ptr elementtype(i32) %sd_log_blks_free) #9, !srcloc !119
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg.exit.i.i:                     ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %22, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !120
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i, i32 %21)
  %cmp.not.i.i = icmp eq i32 %asmresult3.i.i.i.i, %21
  br i1 %cmp.not.i.i, label %reserved, label %do.cond24, !prof !104

do.cond24:                                        ; preds = %arch_atomic_cmpxchg.exit.i.i
  %23 = ptrtoint ptr %free_blocks to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %asmresult3.i.i.i.i, ptr %free_blocks, align 4
  %cmp25.not = icmp ult i32 %asmresult3.i.i.i.i, %add
  br i1 %cmp25.not, label %do.cond24.for.cond_crit_edge, label %do.cond24.do.body19_crit_edge

do.cond24.do.body19_crit_edge:                    ; preds = %do.cond24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

do.cond24.for.cond_crit_edge:                     ; preds = %do.cond24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

reserved:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i
  %sub27 = sub i32 0, %blks
  call fastcc void @trace_gfs2_log_blocks(ptr noundef %sdp, i32 noundef %sub27)
  %call.i.i52 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_blks_needed, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !122
  call void @llvm.prefetch.p0(ptr %sd_log_blks_needed, i32 1, i32 3, i32 1) #9
  %24 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_blks_needed, ptr %sd_log_blks_needed, i32 %blks, ptr elementtype(i32) %sd_log_blks_needed) #9, !srcloc !123
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not, label %reserved.if.end32_crit_edge, label %if.then30

reserved.if.end32_crit_edge:                      ; preds = %reserved
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %reserved
  call void @__sanitizer_cov_trace_pc() #11
  call void @__wake_up(ptr noundef %sd_log_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %reserved.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %free_blocks) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @log_flush_wait(ptr noundef %sdp) local_unnamed_addr #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %sd_log_in_flight = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 96
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_in_flight, i32 noundef 4) #9
  %13 = ptrtoint ptr %sd_log_in_flight to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sd_log_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %do.body.preheader

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

do.body.preheader:                                ; preds = %entry
  %sd_log_flush_wait = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 97
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  call void @prepare_to_wait(ptr noundef %sd_log_flush_wait, ptr noundef nonnull %wait, i32 noundef 2) #9
  %call.i.i18 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_in_flight, i32 noundef 4) #9
  %15 = ptrtoint ptr %sd_log_in_flight to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sd_log_in_flight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not = icmp eq i32 %16, 0
  br i1 %tobool7.not, label %do.body.do.cond_crit_edge, label %if.then8

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @io_schedule() #9
  br label %do.cond

do.cond:                                          ; preds = %if.then8, %do.body.do.cond_crit_edge
  %call.i.i19 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_in_flight, i32 noundef 4) #9
  %17 = ptrtoint ptr %sd_log_in_flight to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %sd_log_in_flight, align 4
  %tobool11.not = icmp eq i32 %18, 0
  br i1 %tobool11.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %sd_log_flush_wait, ptr noundef nonnull %wait) #9
  br label %if.end13

if.end13:                                         ; preds = %do.end, %entry.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_ordered_del_inode(ptr noundef %ip) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %sd_ordered_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %sd_ordered_lock) #9
  %i_ordered.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 14
  %4 = ptrtoint ptr %i_ordered.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %i_ordered.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %i_ordered.i
  br i1 %cmp.i.not.i, label %entry.__ordered_del_inode.exit_crit_edge, label %if.then.i

entry.__ordered_del_inode.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ordered_del_inode.exit

if.then.i:                                        ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_ordered.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %i_ordered.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_ordered.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %12 = ptrtoint ptr %i_ordered.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %i_ordered.i, ptr %i_ordered.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %i_ordered.i, ptr %prev.i3.i.i, align 4
  br label %__ordered_del_inode.exit

__ordered_del_inode.exit:                         ; preds = %list_del_init.exit.i, %entry.__ordered_del_inode.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_ordered_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_add_revoke(ptr noundef %sdp, ptr noundef %bd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 8
  %bd_gl = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 1
  %2 = ptrtoint ptr %bd_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_gl, align 4
  %sd_log_num_revoke = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 82
  %4 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_log_num_revoke, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %sd_log_num_revoke, align 4
  %gl_revokes = getelementptr inbounds %struct.gfs2_glock, ptr %3, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gl_revokes, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %gl_revokes, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gl_revokes, ptr %gl_revokes, i32 1, ptr elementtype(i32) %gl_revokes) #9, !srcloc !126
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_glock_hold(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %b_private to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %b_private, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %b_blocknr, align 8
  %bd_blkno = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 2
  %10 = ptrtoint ptr %bd_blkno to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %bd_blkno, align 8
  tail call void @gfs2_remove_from_ail(ptr noundef %bd)
  %11 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bd, align 8
  tail call void @_set_bit(i32 noundef 7, ptr noundef %3) #9
  %bd_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 3
  %sd_log_revokes = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 83
  %12 = ptrtoint ptr %sd_log_revokes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_log_revokes, align 4
  %call.i.i11 = tail call zeroext i1 @__list_add_valid(ptr noundef %bd_list, ptr noundef %sd_log_revokes, ptr noundef %13) #9
  br i1 %call.i.i11, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bd_list, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %bd_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %bd_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sd_log_revokes, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %sd_log_revokes to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %bd_list, ptr %sd_log_revokes, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_hold(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_glock_remove_revoke(ptr noundef %gl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_revokes = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gl_revokes, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @llvm.prefetch.p0(ptr %gl_revokes, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gl_revokes, ptr %gl_revokes, i32 1, ptr elementtype(i32) %gl_revokes) #9, !srcloc !123
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %gl) #9
  tail call void @gfs2_glock_queue_put(ptr noundef %gl) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_queue_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_flush_revokes(ptr noundef %sdp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_revokes_available = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 90
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_revokes_available, i32 noundef 4) #9
  %0 = ptrtoint ptr %sd_log_revokes_available to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_log_revokes_available, align 4
  %sd_log_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #9
  %call1 = tail call fastcc i32 @gfs2_ail1_empty(ptr noundef %sdp, i32 noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_ail1_empty(ptr noundef %sdp, i32 noundef %max_revokes) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_ail_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock) #9
  %sd_ail1_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105
  %prev = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %cmp.not47 = icmp eq ptr %1, %sd_ail1_list
  br i1 %cmp.not47, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sd_log_error.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 98
  %sd_flags.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %sd_ail2_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 106
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn3650 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn54, %for.inc.for.body_crit_edge ]
  %oldest_tr.049 = phi i32 [ 1, %for.body.lr.ph ], [ %oldest_tr.1, %for.inc.for.body_crit_edge ]
  %max_revokes.addr.048 = phi i32 [ %max_revokes, %for.body.lr.ph ], [ %max_revokes.addr.3, %for.inc.for.body_crit_edge ]
  %.pn.in53 = getelementptr inbounds %struct.list_head, ptr %.pn3650, i32 0, i32 1
  %2 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn54 = load ptr, ptr %.pn.in53, align 4
  %tr.0 = getelementptr i8, ptr %.pn3650, i32 -40
  %tr_ail1_list.i = getelementptr i8, ptr %.pn3650, i32 28
  %prev.i = getelementptr i8, ptr %.pn3650, i32 32
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %cmp.not84.i = icmp eq ptr %4, %tr_ail1_list.i
  br i1 %cmp.not84.i, label %for.body.gfs2_ail1_empty_one.exit_crit_edge, label %for.body.lr.ph.i

for.body.gfs2_ail1_empty_one.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ail1_empty_one.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %tr_ail2_list.i = getelementptr i8, ptr %.pn3650, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %max_revokes.addr.1 = phi i32 [ %max_revokes.addr.048, %for.body.lr.ph.i ], [ %max_revokes.addr.2, %for.inc.i.for.body.i_crit_edge ]
  %.pn7886.i = phi ptr [ %4, %for.body.lr.ph.i ], [ %.pn90.i, %for.inc.i.for.body.i_crit_edge ]
  %active_count.085.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %active_count.1.i, %for.inc.i.for.body.i_crit_edge ]
  %bd.088.i = getelementptr i8, ptr %.pn7886.i, i32 -28
  %.pn.in89.i = getelementptr inbounds %struct.list_head, ptr %.pn7886.i, i32 0, i32 1
  %5 = ptrtoint ptr %.pn.in89.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn90.i = load ptr, ptr %.pn.in89.i, align 4
  %6 = ptrtoint ptr %bd.088.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd.088.i, align 8
  %bd_tr.i = getelementptr i8, ptr %.pn7886.i, i32 -4
  %8 = ptrtoint ptr %bd_tr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_tr.i, align 8
  %cmp7.not.i = icmp eq ptr %9, %tr.0
  br i1 %cmp7.not.i, label %do.end16.i, label %if.then.i, !prof !104

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_i(ptr noundef %sdp) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

do.end16.i:                                       ; preds = %for.body.i
  %10 = ptrtoint ptr %sd_log_error.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sd_log_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool17.not.i = icmp eq i32 %11, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i, label %do.end16.i.if.end20.i_crit_edge

do.end16.i.if.end20.i_crit_edge:                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %do.end16.i
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 8
  %and.i = and i32 %13, 65542
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %if.then19.i

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add i32 %active_count.085.i, 1
  br label %for.inc.i

if.end20.i:                                       ; preds = %land.lhs.true.i.if.end20.i_crit_edge, %do.end16.i.if.end20.i_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %7, align 4
  %and1.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool21.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool21.not.i, label %land.lhs.true22.i, label %if.end20.i.if.end45.i_crit_edge

if.end20.i.if.end45.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

land.lhs.true22.i:                                ; preds = %if.end20.i
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_error.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  tail call void @llvm.prefetch.p0(ptr %sd_log_error.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %land.lhs.true22.i
  %16 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %sd_log_error.i, i32 0, i32 -5) #9, !srcloc !107
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %asmresult1.i.i = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i)
  %tobool43.not.i = icmp eq i32 %asmresult1.i.i, 0
  br i1 %tobool43.not.i, label %if.then44.i, label %__cmpxchg.exit.i.if.end45.i_crit_edge

__cmpxchg.exit.i.if.end45.i_crit_edge:            ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then44.i:                                      ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_io_error_bh_i(ptr noundef %sdp, ptr noundef %7, ptr noundef nonnull @__func__.gfs2_ail1_empty_one, ptr noundef nonnull @.str.2, i32 noundef 323, i1 noundef zeroext false) #9
  tail call void @_set_bit(i32 noundef 11, ptr noundef %sd_flags.i.i) #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %__cmpxchg.exit.i.if.end45.i_crit_edge, %if.end20.i.if.end45.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_revokes.addr.1)
  %tobool46.not.i = icmp eq i32 %max_revokes.addr.1, 0
  br i1 %tobool46.not.i, label %if.end45.i.if.end51.i_crit_edge, label %land.lhs.true47.i

if.end45.i.if.end51.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

land.lhs.true47.i:                                ; preds = %if.end45.i
  %bd_list.i = getelementptr i8, ptr %.pn7886.i, i32 -12
  %17 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %bd_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %18, %bd_list.i
  br i1 %cmp.i.not.i, label %if.then50.i, label %land.lhs.true47.i.if.end51.i_crit_edge

land.lhs.true47.i.if.end51.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.then50.i:                                      ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_add_revoke(ptr noundef %sdp, ptr noundef %bd.088.i) #9
  %dec.i = add i32 %max_revokes.addr.1, -1
  br label %for.inc.i

if.end51.i:                                       ; preds = %land.lhs.true47.i.if.end51.i_crit_edge, %if.end45.i.if.end51.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn7886.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end51.i.__list_del_entry.exit.i.i_crit_edge

if.end51.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %.pn.in89.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in89.i, align 4
  %21 = ptrtoint ptr %.pn7886.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn7886.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end51.i.__list_del_entry.exit.i.i_crit_edge
  %25 = ptrtoint ptr %tr_ail2_list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tr_ail2_list.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn7886.i, ptr noundef %tr_ail2_list.i, ptr noundef %26) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.for.inc.i_crit_edge

__list_del_entry.exit.i.i.for.inc.i_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.pn7886.i, ptr %prev1.i.i2.i.i, align 4
  %28 = ptrtoint ptr %.pn7886.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %.pn7886.i, align 4
  %29 = ptrtoint ptr %.pn.in89.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tr_ail2_list.i, ptr %.pn.in89.i, align 4
  %30 = ptrtoint ptr %tr_ail2_list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %.pn7886.i, ptr %tr_ail2_list.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.for.inc.i_crit_edge, %if.then50.i, %if.then19.i
  %max_revokes.addr.2 = phi i32 [ %max_revokes.addr.1, %if.end.i.i.i.i ], [ %max_revokes.addr.1, %__list_del_entry.exit.i.i.for.inc.i_crit_edge ], [ %dec.i, %if.then50.i ], [ %max_revokes.addr.1, %if.then19.i ]
  %active_count.1.i = phi i32 [ %active_count.085.i, %if.end.i.i.i.i ], [ %active_count.085.i, %__list_del_entry.exit.i.i.for.inc.i_crit_edge ], [ %active_count.085.i, %if.then50.i ], [ %inc.i, %if.then19.i ]
  %cmp.not.i = icmp eq ptr %.pn90.i, %tr_ail1_list.i
  br i1 %cmp.not.i, label %for.inc.i.gfs2_ail1_empty_one.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.gfs2_ail1_empty_one.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ail1_empty_one.exit

gfs2_ail1_empty_one.exit:                         ; preds = %for.inc.i.gfs2_ail1_empty_one.exit_crit_edge, %for.body.gfs2_ail1_empty_one.exit_crit_edge
  %max_revokes.addr.3 = phi i32 [ %max_revokes.addr.048, %for.body.gfs2_ail1_empty_one.exit_crit_edge ], [ %max_revokes.addr.2, %for.inc.i.gfs2_ail1_empty_one.exit_crit_edge ]
  %active_count.0.lcssa.i = phi i32 [ 0, %for.body.gfs2_ail1_empty_one.exit_crit_edge ], [ %active_count.1.i, %for.inc.i.gfs2_ail1_empty_one.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active_count.0.lcssa.i)
  %tobool.not = icmp ne i32 %active_count.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oldest_tr.049)
  %tobool7.not = icmp eq i32 %oldest_tr.049, 0
  %or.cond = or i1 %tobool7.not, %tobool.not
  br i1 %or.cond, label %gfs2_ail1_empty_one.exit.for.inc_crit_edge, label %if.then

gfs2_ail1_empty_one.exit.for.inc_crit_edge:       ; preds = %gfs2_ail1_empty_one.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %gfs2_ail1_empty_one.exit
  %call.i.i38 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn3650) #9
  br i1 %call.i.i38, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn.in53, align 4
  %33 = ptrtoint ptr %.pn3650 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %.pn3650, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %37 = ptrtoint ptr %sd_ail2_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sd_ail2_list, align 4
  %call.i.i.i39 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn3650, ptr noundef %sd_ail2_list, ptr noundef %38) #9
  br i1 %call.i.i.i39, label %if.end.i.i.i40, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i.i40:                                   ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %.pn3650, ptr %prev1.i.i2.i, align 4
  %40 = ptrtoint ptr %.pn3650 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %.pn3650, align 4
  %41 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sd_ail2_list, ptr %.pn.in53, align 4
  %42 = ptrtoint ptr %sd_ail2_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %.pn3650, ptr %sd_ail2_list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i40, %__list_del_entry.exit.i.for.inc_crit_edge, %gfs2_ail1_empty_one.exit.for.inc_crit_edge
  %oldest_tr.1 = phi i32 [ 0, %gfs2_ail1_empty_one.exit.for.inc_crit_edge ], [ 1, %__list_del_entry.exit.i.for.inc_crit_edge ], [ 1, %if.end.i.i.i40 ]
  %cmp.not = icmp eq ptr %.pn54, %sd_ail1_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %sd_log_head.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 102
  %43 = ptrtoint ptr %sd_log_head.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sd_log_head.i, align 4
  %45 = ptrtoint ptr %sd_ail1_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %sd_ail1_list, align 4
  %cmp.i.not.i41 = icmp eq ptr %46, %sd_ail1_list
  br i1 %cmp.i.not.i41, label %for.end.gfs2_log_update_flush_tail.exit_crit_edge, label %if.then.i43

for.end.gfs2_log_update_flush_tail.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_log_update_flush_tail.exit

if.then.i43:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev, align 4
  %tr_first.i = getelementptr i8, ptr %48, i32 24
  %49 = ptrtoint ptr %tr_first.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tr_first.i, align 4
  br label %gfs2_log_update_flush_tail.exit

gfs2_log_update_flush_tail.exit:                  ; preds = %if.then.i43, %for.end.gfs2_log_update_flush_tail.exit_crit_edge
  %new_flush_tail.0.i = phi i32 [ %44, %for.end.gfs2_log_update_flush_tail.exit_crit_edge ], [ %50, %if.then.i43 ]
  %sd_log_flush_tail.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 101
  %51 = ptrtoint ptr %sd_log_flush_tail.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %new_flush_tail.0.i, ptr %sd_log_flush_tail.i, align 8
  %52 = ptrtoint ptr %sd_ail1_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %sd_ail1_list, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock) #9
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %54 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %sd_flags, align 4
  %56 = and i32 %55, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool18.not = icmp eq i32 %56, 0
  br i1 %tobool18.not, label %gfs2_log_update_flush_tail.exit.if.end21_crit_edge, label %if.then19

gfs2_log_update_flush_tail.exit.if.end21_crit_edge: ; preds = %gfs2_log_update_flush_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %gfs2_log_update_flush_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %sdp, ptr noundef nonnull @.str.22) #9
  %call20 = tail call i32 @gfs2_withdraw(ptr noundef %sdp) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %gfs2_log_update_flush_tail.exit.if.end21_crit_edge
  %cmp.i = icmp eq ptr %53, %sd_ail1_list
  %conv.i = zext i1 %cmp.i to i32
  ret i32 %conv.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_write_log_header(ptr noundef %sdp, ptr noundef %jd, i64 noundef %seq, i32 noundef %tail, i32 noundef %lblock, i32 noundef %flags, i32 noundef %op_flags) local_unnamed_addr #2 align 64 {
entry:
  %tv = alloca %struct.timespec64, align 8
  %dblock = alloca i64, align 8
  %extlen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_statfs_local = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv) #9
  %0 = call ptr @memset(ptr %tv, i32 255, i32 16)
  %1 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sdp, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dblock) #9
  %3 = ptrtoint ptr %dblock to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %dblock, align 8, !annotation !121
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %4 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sd_flags.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.cleanup41_crit_edge

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

gfs2_withdrawn.exit:                              ; preds = %entry
  %7 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sd_flags.i, align 4
  %9 = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.i.not = icmp eq i32 %9, 0
  br i1 %tobool3.i.not, label %if.end, label %gfs2_withdrawn.exit.cleanup41_crit_edge

gfs2_withdrawn.exit.cleanup41_crit_edge:          ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end:                                           ; preds = %gfs2_withdrawn.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_page_pool to i32))
  %10 = load ptr, ptr @gfs2_page_pool, align 4
  %call1 = tail call noalias ptr @mempool_alloc(ptr noundef %10, i32 noundef 3072) #9
  %call2 = tail call ptr @page_address(ptr noundef %call1) #9
  %11 = getelementptr inbounds i8, ptr %call2, i32 20
  %12 = call ptr @memset(ptr %11, i32 0, i32 4076)
  %13 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 18225520, ptr %call2, align 8
  %mh_type = getelementptr inbounds %struct.gfs2_meta_header, ptr %call2, i32 0, i32 1
  %14 = ptrtoint ptr %mh_type to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %mh_type, align 4
  %__pad0 = getelementptr inbounds %struct.gfs2_meta_header, ptr %call2, i32 0, i32 2
  %15 = ptrtoint ptr %__pad0 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %__pad0, align 8
  %mh_format = getelementptr inbounds %struct.gfs2_meta_header, ptr %call2, i32 0, i32 3
  %16 = ptrtoint ptr %mh_format to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 800, ptr %mh_format, align 8
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %17 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_jdesc, align 4
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %jd_jid, align 4
  %21 = getelementptr inbounds %struct.gfs2_meta_header, ptr %call2, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %21, align 4
  %lh_sequence = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 1
  %23 = ptrtoint ptr %lh_sequence to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %seq, ptr %lh_sequence, align 8
  %lh_flags = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 2
  %24 = ptrtoint ptr %lh_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %flags, ptr %lh_flags, align 8
  %lh_tail = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 3
  %25 = ptrtoint ptr %lh_tail to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %tail, ptr %lh_tail, align 4
  %lh_blkno = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 4
  %26 = ptrtoint ptr %lh_blkno to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %lblock, ptr %lh_blkno, align 8
  %call7 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %call2, i32 noundef 48) #13
  %neg = xor i32 %call7, -1
  %lh_hash = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 5
  %27 = ptrtoint ptr %lh_hash to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %neg, ptr %lh_hash, align 4
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %tv) #9
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %tv, i32 0, i32 1
  %28 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tv_nsec, align 8
  %lh_nsec = getelementptr %struct.gfs2_log_header, ptr %call2, i32 0, i32 7
  %30 = ptrtoint ptr %lh_nsec to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %lh_nsec, align 4
  %31 = ptrtoint ptr %tv to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tv, align 8
  %lh_sec = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 8
  %33 = ptrtoint ptr %lh_sec to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %lh_sec, align 8
  %extent_list = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 1
  %34 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %extent_list, align 4
  %cmp.i.not = icmp eq ptr %35, %extent_list
  br i1 %cmp.i.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i64 @gfs2_log_bmap(ptr noundef %jd, i32 noundef %lblock) #9
  %36 = ptrtoint ptr %dblock to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call10, ptr %dblock, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extlen) #9
  %37 = ptrtoint ptr %extlen to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %extlen, align 4
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %38 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %jd_inode, align 8
  %conv = zext i32 %lblock to i64
  %call11 = call i32 @gfs2_get_extent(ptr noundef %39, i64 noundef %conv, ptr noundef nonnull %dblock, ptr noundef nonnull %extlen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 0
  br i1 %cmp.not, label %if.end26.critedge, label %if.then17, !prof !104

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.gfs2_write_log_header, ptr noundef nonnull @.str.2, i32 noundef 866, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen) #9
  br label %cleanup41

if.end26.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen) #9
  br label %if.end26

if.end26:                                         ; preds = %if.end26.critedge, %if.then9
  %40 = ptrtoint ptr %dblock to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dblock, align 8
  %lh_addr = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 9
  %42 = ptrtoint ptr %lh_addr to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %lh_addr, align 8
  %jd_inode27 = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %43 = ptrtoint ptr %jd_inode27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %jd_inode27, align 8
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_no_addr, align 8
  %lh_jinode = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 10
  %47 = ptrtoint ptr %lh_jinode to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %lh_jinode, align 8
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then30, label %if.end26.do.end_crit_edge

if.end26.do.end_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %sd_sc_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 38
  %48 = ptrtoint ptr %sd_sc_inode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sd_sc_inode, align 4
  %i_no_addr32 = getelementptr inbounds %struct.gfs2_inode, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %i_no_addr32 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %i_no_addr32, align 8
  %lh_statfs_addr = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 11
  %52 = ptrtoint ptr %lh_statfs_addr to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %lh_statfs_addr, align 8
  %sd_qc_inode = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 40
  %53 = ptrtoint ptr %sd_qc_inode to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sd_qc_inode, align 8
  %i_no_addr34 = getelementptr inbounds %struct.gfs2_inode, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %i_no_addr34 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %i_no_addr34, align 8
  %lh_quota_addr = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 12
  %57 = ptrtoint ptr %lh_quota_addr to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %lh_quota_addr, align 8
  %sd_statfs_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 43
  call void @_raw_spin_lock(ptr noundef %sd_statfs_spin) #9
  %58 = ptrtoint ptr %sd_statfs_local to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %sd_statfs_local, align 8
  %lh_local_total = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 13
  %60 = ptrtoint ptr %lh_local_total to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %lh_local_total, align 8
  %sc_free = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45, i32 1
  %61 = ptrtoint ptr %sc_free to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %sc_free, align 8
  %lh_local_free = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 14
  %63 = ptrtoint ptr %lh_local_free to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %lh_local_free, align 8
  %sc_dinodes = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 45, i32 2
  %64 = ptrtoint ptr %sc_dinodes to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %sc_dinodes, align 8
  %lh_local_dinodes = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 15
  %66 = ptrtoint ptr %lh_local_dinodes to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %lh_local_dinodes, align 8
  call void @_raw_spin_unlock(ptr noundef %sd_statfs_spin) #9
  br label %do.end

do.end:                                           ; preds = %if.then30, %if.end26.do.end_crit_edge
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 3
  %67 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_blocksize, align 16
  %sub38 = add i32 %68, -52
  %call39 = call i32 @crc32c(i32 noundef -1, ptr noundef %lh_nsec, i32 noundef %sub38) #9
  %lh_crc = getelementptr inbounds %struct.gfs2_log_header, ptr %call2, i32 0, i32 6
  %69 = ptrtoint ptr %lh_crc to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call39, ptr %lh_crc, align 8
  %70 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %s_blocksize, align 16
  %72 = ptrtoint ptr %dblock to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %dblock, align 8
  call void @gfs2_log_write(ptr noundef %sdp, ptr noundef %jd, ptr noundef %call1, i32 noundef %71, i32 noundef 0, i64 noundef %73) #9
  %jd_log_bio = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 5
  %or = or i32 %op_flags, 1
  call void @gfs2_log_submit_bio(ptr noundef %jd_log_bio, i32 noundef %or) #9
  br label %cleanup41

cleanup41:                                        ; preds = %do.end, %if.then17, %gfs2_withdrawn.exit.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dblock) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @gfs2_log_bmap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_get_extent(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_submit_bio(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_ail_drain(ptr noundef %sdp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_ail_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock) #9
  %sd_ail1_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105
  %0 = ptrtoint ptr %sd_ail1_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sd_ail1_list, align 4
  %cmp.i.not62 = icmp eq ptr %1, %sd_ail1_list
  br i1 %cmp.i.not62, label %entry.while.cond2.preheader_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond2.preheader

while.cond2.preheader:                            ; preds = %list_del.exit.while.cond2.preheader_crit_edge, %entry.while.cond2.preheader_crit_edge
  %sd_ail2_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 106
  %2 = ptrtoint ptr %sd_ail2_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %sd_ail2_list, align 4
  %cmp.i45.not63 = icmp eq ptr %3, %sd_ail2_list
  br i1 %cmp.i45.not63, label %while.cond2.preheader.while.end14_crit_edge, label %while.cond2.preheader.while.body6_crit_edge

while.cond2.preheader.while.body6_crit_edge:      ; preds = %while.cond2.preheader
  br label %while.body6

while.cond2.preheader.while.end14_crit_edge:      ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end14

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = phi ptr [ %28, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -40
  %tr_ail1_list = getelementptr i8, ptr %4, i32 28
  %5 = ptrtoint ptr %tr_ail1_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %tr_ail1_list, align 4
  %cmp.i.not13.i = icmp eq ptr %6, %tr_ail1_list
  br i1 %cmp.i.not13.i, label %while.body.gfs2_ail_empty_tr.exit_crit_edge, label %while.body.while.body.i_crit_edge

while.body.while.body.i_crit_edge:                ; preds = %while.body
  br label %while.body.i

while.body.gfs2_ail_empty_tr.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ail_empty_tr.exit

while.body.i:                                     ; preds = %do.end10.i.while.body.i_crit_edge, %while.body.while.body.i_crit_edge
  %7 = phi ptr [ %11, %do.end10.i.while.body.i_crit_edge ], [ %6, %while.body.while.body.i_crit_edge ]
  %bd_tr.i = getelementptr i8, ptr %7, i32 -4
  %8 = ptrtoint ptr %bd_tr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_tr.i, align 8
  %cmp.not.i = icmp eq ptr %9, %add.ptr
  br i1 %cmp.not.i, label %do.end10.i, label %if.then.i, !prof !104

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_i(ptr noundef %sdp) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #9, !srcloc !131
  unreachable

do.end10.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 -28
  tail call void @gfs2_remove_from_ail(ptr noundef %add.ptr.i) #9
  %10 = ptrtoint ptr %tr_ail1_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %tr_ail1_list, align 4
  %cmp.i.not.i = icmp eq ptr %11, %tr_ail1_list
  br i1 %cmp.i.not.i, label %do.end10.i.gfs2_ail_empty_tr.exit_crit_edge, label %do.end10.i.while.body.i_crit_edge

do.end10.i.while.body.i_crit_edge:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end10.i.gfs2_ail_empty_tr.exit_crit_edge:      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ail_empty_tr.exit

gfs2_ail_empty_tr.exit:                           ; preds = %do.end10.i.gfs2_ail_empty_tr.exit_crit_edge, %while.body.gfs2_ail_empty_tr.exit_crit_edge
  %tr_ail2_list = getelementptr i8, ptr %4, i32 36
  %12 = ptrtoint ptr %tr_ail2_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %tr_ail2_list, align 4
  %cmp.i.not13.i36 = icmp eq ptr %13, %tr_ail2_list
  br i1 %cmp.i.not13.i36, label %gfs2_ail_empty_tr.exit.gfs2_ail_empty_tr.exit44_crit_edge, label %gfs2_ail_empty_tr.exit.while.body.i39_crit_edge

gfs2_ail_empty_tr.exit.while.body.i39_crit_edge:  ; preds = %gfs2_ail_empty_tr.exit
  br label %while.body.i39

gfs2_ail_empty_tr.exit.gfs2_ail_empty_tr.exit44_crit_edge: ; preds = %gfs2_ail_empty_tr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ail_empty_tr.exit44

while.body.i39:                                   ; preds = %do.end10.i43.while.body.i39_crit_edge, %gfs2_ail_empty_tr.exit.while.body.i39_crit_edge
  %14 = phi ptr [ %18, %do.end10.i43.while.body.i39_crit_edge ], [ %13, %gfs2_ail_empty_tr.exit.while.body.i39_crit_edge ]
  %bd_tr.i37 = getelementptr i8, ptr %14, i32 -4
  %15 = ptrtoint ptr %bd_tr.i37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_tr.i37, align 8
  %cmp.not.i38 = icmp eq ptr %16, %add.ptr
  br i1 %cmp.not.i38, label %do.end10.i43, label %if.then.i40, !prof !104

if.then.i40:                                      ; preds = %while.body.i39
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_i(ptr noundef %sdp) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #9, !srcloc !131
  unreachable

do.end10.i43:                                     ; preds = %while.body.i39
  %add.ptr.i41 = getelementptr i8, ptr %14, i32 -28
  tail call void @gfs2_remove_from_ail(ptr noundef %add.ptr.i41) #9
  %17 = ptrtoint ptr %tr_ail2_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %tr_ail2_list, align 4
  %cmp.i.not.i42 = icmp eq ptr %18, %tr_ail2_list
  br i1 %cmp.i.not.i42, label %do.end10.i43.gfs2_ail_empty_tr.exit44_crit_edge, label %do.end10.i43.while.body.i39_crit_edge

do.end10.i43.while.body.i39_crit_edge:            ; preds = %do.end10.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i39

do.end10.i43.gfs2_ail_empty_tr.exit44_crit_edge:  ; preds = %do.end10.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ail_empty_tr.exit44

gfs2_ail_empty_tr.exit44:                         ; preds = %do.end10.i43.gfs2_ail_empty_tr.exit44_crit_edge, %gfs2_ail_empty_tr.exit.gfs2_ail_empty_tr.exit44_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %gfs2_ail_empty_tr.exit44.list_del.exit_crit_edge

gfs2_ail_empty_tr.exit44.list_del.exit_crit_edge: ; preds = %gfs2_ail_empty_tr.exit44
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %gfs2_ail_empty_tr.exit44
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %gfs2_ail_empty_tr.exit44.list_del.exit_crit_edge
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @gfs2_trans_free(ptr noundef %sdp, ptr noundef %add.ptr) #9
  %27 = ptrtoint ptr %sd_ail1_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %sd_ail1_list, align 4
  %cmp.i.not = icmp eq ptr %28, %sd_ail1_list
  br i1 %cmp.i.not, label %list_del.exit.while.cond2.preheader_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.cond2.preheader_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond2.preheader

while.body6:                                      ; preds = %list_del.exit61.while.body6_crit_edge, %while.cond2.preheader.while.body6_crit_edge
  %29 = phi ptr [ %46, %list_del.exit61.while.body6_crit_edge ], [ %3, %while.cond2.preheader.while.body6_crit_edge ]
  %add.ptr11 = getelementptr i8, ptr %29, i32 -40
  %tr_ail2_list12 = getelementptr i8, ptr %29, i32 36
  %30 = ptrtoint ptr %tr_ail2_list12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %tr_ail2_list12, align 4
  %cmp.i.not13.i47 = icmp eq ptr %31, %tr_ail2_list12
  br i1 %cmp.i.not13.i47, label %while.body6.gfs2_ail_empty_tr.exit55_crit_edge, label %while.body6.while.body.i50_crit_edge

while.body6.while.body.i50_crit_edge:             ; preds = %while.body6
  br label %while.body.i50

while.body6.gfs2_ail_empty_tr.exit55_crit_edge:   ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ail_empty_tr.exit55

while.body.i50:                                   ; preds = %do.end10.i54.while.body.i50_crit_edge, %while.body6.while.body.i50_crit_edge
  %32 = phi ptr [ %36, %do.end10.i54.while.body.i50_crit_edge ], [ %31, %while.body6.while.body.i50_crit_edge ]
  %bd_tr.i48 = getelementptr i8, ptr %32, i32 -4
  %33 = ptrtoint ptr %bd_tr.i48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bd_tr.i48, align 8
  %cmp.not.i49 = icmp eq ptr %34, %add.ptr11
  br i1 %cmp.not.i49, label %do.end10.i54, label %if.then.i51, !prof !104

if.then.i51:                                      ; preds = %while.body.i50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_i(ptr noundef %sdp) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #9, !srcloc !131
  unreachable

do.end10.i54:                                     ; preds = %while.body.i50
  %add.ptr.i52 = getelementptr i8, ptr %32, i32 -28
  tail call void @gfs2_remove_from_ail(ptr noundef %add.ptr.i52) #9
  %35 = ptrtoint ptr %tr_ail2_list12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %tr_ail2_list12, align 4
  %cmp.i.not.i53 = icmp eq ptr %36, %tr_ail2_list12
  br i1 %cmp.i.not.i53, label %do.end10.i54.gfs2_ail_empty_tr.exit55_crit_edge, label %do.end10.i54.while.body.i50_crit_edge

do.end10.i54.while.body.i50_crit_edge:            ; preds = %do.end10.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i50

do.end10.i54.gfs2_ail_empty_tr.exit55_crit_edge:  ; preds = %do.end10.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ail_empty_tr.exit55

gfs2_ail_empty_tr.exit55:                         ; preds = %do.end10.i54.gfs2_ail_empty_tr.exit55_crit_edge, %while.body6.gfs2_ail_empty_tr.exit55_crit_edge
  %call.i.i56 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %29) #9
  br i1 %call.i.i56, label %if.end.i.i59, label %gfs2_ail_empty_tr.exit55.list_del.exit61_crit_edge

gfs2_ail_empty_tr.exit55.list_del.exit61_crit_edge: ; preds = %gfs2_ail_empty_tr.exit55
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit61

if.end.i.i59:                                     ; preds = %gfs2_ail_empty_tr.exit55
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i57 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i57, align 4
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %29, align 4
  %prev1.i.i.i58 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i58, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit61

list_del.exit61:                                  ; preds = %if.end.i.i59, %gfs2_ail_empty_tr.exit55.list_del.exit61_crit_edge
  %43 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  %prev.i60 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i60, align 4
  tail call void @gfs2_trans_free(ptr noundef %sdp, ptr noundef %add.ptr11) #9
  %45 = ptrtoint ptr %sd_ail2_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %sd_ail2_list, align 4
  %cmp.i45.not = icmp eq ptr %46, %sd_ail2_list
  br i1 %cmp.i45.not, label %list_del.exit61.while.end14_crit_edge, label %list_del.exit61.while.body6_crit_edge

list_del.exit61.while.body6_crit_edge:            ; preds = %list_del.exit61
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body6

list_del.exit61.while.end14_crit_edge:            ; preds = %list_del.exit61
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end14

while.end14:                                      ; preds = %list_del.exit61.while.end14_crit_edge, %while.cond2.preheader.while.end14_crit_edge
  tail call void @gfs2_drain_revokes(ptr noundef %sdp) #9
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_drain_revokes(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_log_flush(ptr noundef %sdp, ptr noundef %gl, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  %written.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_freeze_state = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 108
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_freeze_state, i32 noundef 4) #9
  %0 = ptrtoint ptr %sd_freeze_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_freeze_state, align 4
  %sd_log_flush_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 95
  tail call void @down_write(ptr noundef %sd_log_flush_lock) #9
  tail call fastcc void @trace_gfs2_log_flush(ptr noundef %sdp, i32 noundef 1, i32 noundef %flags)
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %2 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sd_flags.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i481 = icmp eq i32 %4, 0
  br i1 %tobool.not.i481, label %gfs2_withdrawn.exit.lr.ph, label %entry.if.end212_crit_edge

entry.if.end212_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212

gfs2_withdrawn.exit.lr.ph:                        ; preds = %entry
  %tobool3.not = icmp eq ptr %gl, null
  %sd_log_head = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 102
  %sd_log_flush_head = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 103
  %sd_log_tr = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 79
  %sd_log_num_revoke = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 82
  %sd_logd_process = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 64
  %5 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sd_flags.i, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.i.not = icmp eq i32 %7, 0
  br i1 %tobool3.i.not, label %lor.lhs.false, label %gfs2_withdrawn.exit.lr.ph.if.end212_crit_edge

gfs2_withdrawn.exit.lr.ph.if.end212_crit_edge:    ; preds = %gfs2_withdrawn.exit.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212

lor.lhs.false:                                    ; preds = %gfs2_withdrawn.exit.lr.ph
  %8 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sd_flags.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end212_crit_edge, label %if.end

lor.lhs.false.if.end212_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212

if.end:                                           ; preds = %lor.lhs.false
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %gl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %gl, align 4
  %13 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end212_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true.if.end212_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %14 = ptrtoint ptr %sd_log_head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sd_log_head, align 4
  %16 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %sd_log_flush_head, align 8
  %17 = ptrtoint ptr %sd_log_tr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_log_tr, align 8
  %tobool8.not = icmp eq ptr %18, null
  br i1 %tobool8.not, label %lor.lhs.false9, label %if.end7.if.then17_crit_edge

if.end7.if.then17_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

lor.lhs.false9:                                   ; preds = %if.end7
  %19 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sd_log_num_revoke, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool10.not = icmp eq i32 %20, 0
  br i1 %tobool10.not, label %if.else, label %lor.lhs.false9.if.end73.sink.split_crit_edge

lor.lhs.false9.if.end73.sink.split_crit_edge:     ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73.sink.split

if.end14:                                         ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_log_release(ptr noundef %sdp, i32 noundef 4)
  br label %if.then17

if.then17:                                        ; preds = %if.end14, %if.end7.if.then17_crit_edge
  %.lcssa497511517 = phi i32 [ %51, %if.end14 ], [ %15, %if.end7.if.then17_crit_edge ]
  %.lcssa513516 = phi ptr [ %54, %if.end14 ], [ %18, %if.end7.if.then17_crit_edge ]
  %sd_log_blks_reserved515 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 80
  %21 = ptrtoint ptr %sd_log_blks_reserved515 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sd_log_blks_reserved515, align 4
  %23 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sd_log_num_revoke, align 4
  %25 = ptrtoint ptr %sd_log_tr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %sd_log_tr, align 8
  %tr_first = getelementptr inbounds %struct.gfs2_trans, ptr %.lcssa513516, i32 0, i32 13
  %26 = ptrtoint ptr %tr_first to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.lcssa497511517, ptr %tr_first, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then21, label %if.then17.if.end73_crit_edge, !prof !115

if.then17.if.end73_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then21:                                        ; preds = %if.then17
  %tr_num_buf_new = getelementptr inbounds %struct.gfs2_trans, ptr %.lcssa513516, i32 0, i32 5
  %27 = ptrtoint ptr %tr_num_buf_new to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tr_num_buf_new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool22.not = icmp eq i32 %28, 0
  br i1 %tobool22.not, label %land.rhs, label %if.then21.out_withdraw.thread_crit_edge

if.then21.out_withdraw.thread_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw.thread

land.rhs:                                         ; preds = %if.then21
  %tr_num_databuf_new = getelementptr inbounds %struct.gfs2_trans, ptr %.lcssa513516, i32 0, i32 6
  %29 = ptrtoint ptr %tr_num_databuf_new to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tr_num_databuf_new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool23.not = icmp eq i32 %30, 0
  br i1 %tobool23.not, label %land.rhs.if.end73_crit_edge, label %land.rhs.out_withdraw.thread_crit_edge, !prof !104

land.rhs.out_withdraw.thread_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw.thread

land.rhs.if.end73_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

out_withdraw.thread:                              ; preds = %land.rhs.out_withdraw.thread_crit_edge, %if.then21.out_withdraw.thread_crit_edge
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.gfs2_log_flush, ptr noundef nonnull @.str.2, i32 noundef 1064, i1 noundef zeroext true) #9
  br label %if.end.i401

if.else:                                          ; preds = %lor.lhs.false9
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %35 = ptrtoint ptr %sd_logd_process to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sd_logd_process, align 8
  %cmp48 = icmp eq ptr %34, %36
  %spec.select = select i1 %cmp48, i32 0, i32 4
  %call51 = tail call fastcc zeroext i1 @__gfs2_log_try_reserve(ptr noundef %sdp, i32 noundef 4, i32 noundef %spec.select)
  br i1 %call51, label %do.body, label %cleanup

do.body:                                          ; preds = %if.else
  %37 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %sd_log_num_revoke, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool57.not = icmp eq i32 %.pr, 0
  br i1 %tobool57.not, label %do.body.if.end73_crit_edge, label %do.body65, !prof !104

do.body.if.end73_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

do.body65:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1081, 0\0A.popsection", ""() #9, !srcloc !132
  unreachable

cleanup:                                          ; preds = %if.else
  tail call void @up_write(ptr noundef %sd_log_flush_lock) #9
  tail call fastcc void @__gfs2_log_reserve(ptr noundef %sdp, i32 noundef 4, i32 noundef %spec.select)
  tail call void @down_write(ptr noundef %sd_log_flush_lock) #9
  %38 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %sd_flags.i, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit.1, label %cleanup.if.end206_crit_edge

cleanup.if.end206_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end206

gfs2_withdrawn.exit.1:                            ; preds = %cleanup
  %41 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %sd_flags.i, align 4
  %43 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool3.i.not.1 = icmp eq i32 %43, 0
  br i1 %tobool3.i.not.1, label %lor.lhs.false.1, label %gfs2_withdrawn.exit.1.if.end206_crit_edge

gfs2_withdrawn.exit.1.if.end206_crit_edge:        ; preds = %gfs2_withdrawn.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end206

lor.lhs.false.1:                                  ; preds = %gfs2_withdrawn.exit.1
  %44 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %sd_flags.i, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.1 = icmp eq i32 %46, 0
  br i1 %tobool.not.1, label %lor.lhs.false.1.if.end206_crit_edge, label %if.end.1

lor.lhs.false.1.if.end206_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end206

if.end.1:                                         ; preds = %lor.lhs.false.1
  br i1 %tobool3.not, label %if.end.1.if.end7.1_crit_edge, label %land.lhs.true.1

if.end.1.if.end7.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.1

land.lhs.true.1:                                  ; preds = %if.end.1
  %47 = ptrtoint ptr %gl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %gl, align 4
  %49 = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool5.not.1 = icmp eq i32 %49, 0
  br i1 %tobool5.not.1, label %land.lhs.true.1.if.end206_crit_edge, label %land.lhs.true.1.if.end7.1_crit_edge

land.lhs.true.1.if.end7.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.1

land.lhs.true.1.if.end206_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end206

if.end7.1:                                        ; preds = %land.lhs.true.1.if.end7.1_crit_edge, %if.end.1.if.end7.1_crit_edge
  %50 = ptrtoint ptr %sd_log_head to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sd_log_head, align 4
  %52 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %sd_log_flush_head, align 8
  %53 = ptrtoint ptr %sd_log_tr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sd_log_tr, align 8
  %tobool8.not.1 = icmp eq ptr %54, null
  br i1 %tobool8.not.1, label %lor.lhs.false9.1, label %if.end14

lor.lhs.false9.1:                                 ; preds = %if.end7.1
  %55 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sd_log_num_revoke, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool10.not.1 = icmp eq i32 %56, 0
  br i1 %tobool10.not.1, label %lor.lhs.false9.1.if.end73_crit_edge, label %if.end14.thread

lor.lhs.false9.1.if.end73_crit_edge:              ; preds = %lor.lhs.false9.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.end14.thread:                                  ; preds = %lor.lhs.false9.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_log_release(ptr noundef %sdp, i32 noundef 4)
  br label %if.end73.sink.split

if.end73.sink.split:                              ; preds = %if.end14.thread, %lor.lhs.false9.if.end73.sink.split_crit_edge
  %.ph = phi i32 [ %51, %if.end14.thread ], [ %15, %lor.lhs.false9.if.end73.sink.split_crit_edge ]
  %sd_log_blks_reserved515547 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 80
  %57 = ptrtoint ptr %sd_log_blks_reserved515547 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sd_log_blks_reserved515547, align 4
  %59 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sd_log_num_revoke, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end73.sink.split, %lor.lhs.false9.1.if.end73_crit_edge, %do.body.if.end73_crit_edge, %land.rhs.if.end73_crit_edge, %if.then17.if.end73_crit_edge
  %61 = phi i32 [ %.lcssa497511517, %if.then17.if.end73_crit_edge ], [ %.lcssa497511517, %land.rhs.if.end73_crit_edge ], [ %15, %do.body.if.end73_crit_edge ], [ %51, %lor.lhs.false9.1.if.end73_crit_edge ], [ %.ph, %if.end73.sink.split ]
  %62 = phi ptr [ %.lcssa513516, %if.then17.if.end73_crit_edge ], [ %.lcssa513516, %land.rhs.if.end73_crit_edge ], [ null, %do.body.if.end73_crit_edge ], [ null, %lor.lhs.false9.1.if.end73_crit_edge ], [ null, %if.end73.sink.split ]
  %tobool8.not494 = phi i1 [ false, %if.then17.if.end73_crit_edge ], [ false, %land.rhs.if.end73_crit_edge ], [ true, %do.body.if.end73_crit_edge ], [ true, %lor.lhs.false9.1.if.end73_crit_edge ], [ true, %if.end73.sink.split ]
  %reserved_revokes.0 = phi i32 [ %24, %if.then17.if.end73_crit_edge ], [ %24, %land.rhs.if.end73_crit_edge ], [ 0, %do.body.if.end73_crit_edge ], [ 0, %lor.lhs.false9.1.if.end73_crit_edge ], [ %60, %if.end73.sink.split ]
  %reserved_blocks.1 = phi i32 [ %22, %if.then17.if.end73_crit_edge ], [ %22, %land.rhs.if.end73_crit_edge ], [ 4, %do.body.if.end73_crit_edge ], [ 4, %lor.lhs.false9.1.if.end73_crit_edge ], [ %58, %if.end73.sink.split ]
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool74.not = icmp eq i32 %and, 0
  br i1 %tobool74.not, label %if.end73.if.end77_crit_edge, label %if.then75

if.end73.if.end77_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %sd_flags.i) #9
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.end73.if.end77_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp78 = icmp eq i32 %1, 2
  br i1 %cmp78, label %if.then85, label %if.end77.if.end109_crit_edge, !prof !115

if.end77.if.end109_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then85:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reserved_revokes.0)
  %tobool87.not = icmp eq i32 %reserved_revokes.0, 0
  br i1 %tobool87.not, label %if.then85.if.end109_crit_edge, label %if.then100, !prof !104

if.then85.if.end109_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then100:                                       ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.gfs2_log_flush, ptr noundef nonnull @.str.2, i32 noundef 1088, i1 noundef zeroext true) #9
  br label %out_withdraw

if.end109:                                        ; preds = %if.then85.if.end109_crit_edge, %if.end77.if.end109_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %written.i) #9
  %63 = getelementptr inbounds %struct.list_head, ptr %written.i, i32 0, i32 1
  %64 = ptrtoint ptr %written.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %written.i, ptr %written.i, align 4
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %written.i, ptr %63, align 4
  %sd_ordered_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 85
  call void @_raw_spin_lock(ptr noundef %sd_ordered_lock.i) #9
  %sd_log_ordered.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 84
  call void @list_sort(ptr noundef null, ptr noundef %sd_log_ordered.i, ptr noundef nonnull @ip_cmp) #9
  %66 = ptrtoint ptr %sd_log_ordered.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %sd_log_ordered.i, align 4
  %cmp.i.not25.i = icmp eq ptr %67, %sd_log_ordered.i
  br i1 %cmp.i.not25.i, label %if.end109.while.end.i_crit_edge, label %if.end109.while.body.i_crit_edge

if.end109.while.body.i_crit_edge:                 ; preds = %if.end109
  br label %while.body.i

if.end109.while.end.i_crit_edge:                  ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.end109.while.body.i_crit_edge
  %68 = phi ptr [ %84, %while.cond.backedge.i.while.body.i_crit_edge ], [ %67, %if.end109.while.body.i_crit_edge ]
  %i_mapping.i = getelementptr i8, ptr %68, i32 -1004
  %69 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i_mapping.i, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nrpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp.i = icmp eq i32 %72, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %68, align 4
  %cmp.i.not.i.i = icmp eq ptr %74, %68
  br i1 %cmp.i.not.i.i, label %if.then.i.while.cond.backedge.i_crit_edge, label %if.then.i.i

if.then.i.while.cond.backedge.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge.i

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %68) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr i8, ptr %68, i32 4
  %75 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i.i.i, align 4
  %77 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %68, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i.i.i, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %81 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %68, ptr %68, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %68, i32 4
  %82 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %68, ptr %prev.i3.i.i.i, align 4
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %list_move.exit.i, %list_del_init.exit.i.i, %if.then.i.while.cond.backedge.i_crit_edge
  %83 = ptrtoint ptr %sd_log_ordered.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %sd_log_ordered.i, align 4
  %cmp.i.not.i = icmp eq ptr %84, %sd_log_ordered.i
  br i1 %cmp.i.not.i, label %while.cond.backedge.i.while.end.i_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %68) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.__list_del_entry.exit.i.i_crit_edge

if.end.i.__list_del_entry.exit.i.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i.i, align 4
  %87 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %68, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %86, ptr %prev1.i.i.i.i, align 4
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %86, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end.i.__list_del_entry.exit.i.i_crit_edge
  %91 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %written.i, align 4
  %call.i.i.i21.i = call zeroext i1 @__list_add_valid(ptr noundef %68, ptr noundef nonnull %written.i, ptr noundef %92) #9
  br i1 %call.i.i.i21.i, label %if.end.i.i.i22.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit.i

if.end.i.i.i22.i:                                 ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %68, ptr %prev1.i.i2.i.i, align 4
  %94 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %92, ptr %68, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %written.i, ptr %prev3.i.i.i.i, align 4
  %96 = ptrtoint ptr %written.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %68, ptr %written.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i22.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sd_ordered_lock.i) #9
  %97 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i_mapping.i, align 8
  %call7.i = call i32 @filemap_fdatawrite(ptr noundef %98) #9
  call void @_raw_spin_lock(ptr noundef %sd_ordered_lock.i) #9
  br label %while.cond.backedge.i

while.end.i:                                      ; preds = %while.cond.backedge.i.while.end.i_crit_edge, %if.end109.while.end.i_crit_edge
  %99 = ptrtoint ptr %written.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %written.i, align 4
  %cmp.i.not.i23.i = icmp eq ptr %100, %written.i
  br i1 %cmp.i.not.i23.i, label %while.end.i.gfs2_ordered_write.exit_crit_edge, label %if.then.i24.i

while.end.i.gfs2_ordered_write.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ordered_write.exit

if.then.i24.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %63, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %sd_log_ordered.i, ptr %prev3.i.i.i, align 4
  %104 = ptrtoint ptr %sd_log_ordered.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %100, ptr %sd_log_ordered.i, align 4
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %sd_log_ordered.i, ptr %102, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 84, i32 1
  %106 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %102, ptr %prev6.i.i.i, align 4
  br label %gfs2_ordered_write.exit

gfs2_ordered_write.exit:                          ; preds = %if.then.i24.i, %while.end.i.gfs2_ordered_write.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sd_ordered_lock.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %written.i) #9
  %107 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %sd_flags.i, align 4
  %109 = and i32 %108, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i357 = icmp eq i32 %109, 0
  br i1 %tobool.not.i357, label %gfs2_withdrawn.exit360, label %gfs2_ordered_write.exit.out_withdraw_crit_edge

gfs2_ordered_write.exit.out_withdraw_crit_edge:   ; preds = %gfs2_ordered_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw

gfs2_withdrawn.exit360:                           ; preds = %gfs2_ordered_write.exit
  %110 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %sd_flags.i, align 4
  %112 = and i32 %111, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool3.i358.not = icmp eq i32 %112, 0
  br i1 %tobool3.i358.not, label %if.end112, label %gfs2_withdrawn.exit360.out_withdraw_crit_edge

gfs2_withdrawn.exit360.out_withdraw_crit_edge:    ; preds = %gfs2_withdrawn.exit360
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw

if.end112:                                        ; preds = %gfs2_withdrawn.exit360
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_log_ops to i32))
  %113 = load ptr, ptr @gfs2_log_ops, align 4
  %tobool.not9.i = icmp eq ptr %113, null
  br i1 %tobool.not9.i, label %if.end112.lops_before_commit.exit_crit_edge, label %if.end112.for.body.i_crit_edge

if.end112.for.body.i_crit_edge:                   ; preds = %if.end112
  br label %for.body.i

if.end112.lops_before_commit.exit_crit_edge:      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %lops_before_commit.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end112.for.body.i_crit_edge
  %114 = phi ptr [ %118, %for.inc.i.for.body.i_crit_edge ], [ %113, %if.end112.for.body.i_crit_edge ]
  %x.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end112.for.body.i_crit_edge ]
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %tobool2.not.i = icmp eq ptr %116, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i361

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i361:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %116(ptr noundef %sdp, ptr noundef %62) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i361, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %x.010.i, 1
  %arrayidx.i = getelementptr [0 x ptr], ptr @gfs2_log_ops, i32 0, i32 %inc.i
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i362 = icmp eq ptr %118, null
  br i1 %tobool.not.i362, label %for.inc.i.lops_before_commit.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.lops_before_commit.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lops_before_commit.exit

lops_before_commit.exit:                          ; preds = %for.inc.i.lops_before_commit.exit_crit_edge, %if.end112.lops_before_commit.exit_crit_edge
  %119 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %sd_flags.i, align 4
  %121 = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i364 = icmp eq i32 %121, 0
  br i1 %tobool.not.i364, label %gfs2_withdrawn.exit367, label %lops_before_commit.exit.out_withdraw_crit_edge

lops_before_commit.exit.out_withdraw_crit_edge:   ; preds = %lops_before_commit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw

gfs2_withdrawn.exit367:                           ; preds = %lops_before_commit.exit
  %122 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %sd_flags.i, align 4
  %124 = and i32 %123, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool3.i365.not = icmp eq i32 %124, 0
  br i1 %tobool3.i365.not, label %if.end115, label %gfs2_withdrawn.exit367.out_withdraw_crit_edge

gfs2_withdrawn.exit367.out_withdraw_crit_edge:    ; preds = %gfs2_withdrawn.exit367
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw

if.end115:                                        ; preds = %gfs2_withdrawn.exit367
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %125 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %sd_jdesc, align 4
  %jd_log_bio = getelementptr inbounds %struct.gfs2_jdesc, ptr %126, i32 0, i32 5
  call void @gfs2_log_submit_bio(ptr noundef %jd_log_bio, i32 noundef 1) #9
  %127 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %sd_flags.i, align 4
  %129 = and i32 %128, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.not.i369 = icmp eq i32 %129, 0
  br i1 %tobool.not.i369, label %gfs2_withdrawn.exit372, label %if.end115.out_withdraw_crit_edge

if.end115.out_withdraw_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw

gfs2_withdrawn.exit372:                           ; preds = %if.end115
  %130 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %sd_flags.i, align 4
  %132 = and i32 %131, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool3.i370.not = icmp eq i32 %132, 0
  br i1 %tobool3.i370.not, label %if.end118, label %gfs2_withdrawn.exit372.out_withdraw_crit_edge

gfs2_withdrawn.exit372.out_withdraw_crit_edge:    ; preds = %gfs2_withdrawn.exit372
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw

if.end118:                                        ; preds = %gfs2_withdrawn.exit372
  %133 = ptrtoint ptr %sd_log_head to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %sd_log_head, align 4
  %135 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sd_log_flush_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %136)
  %cmp121.not = icmp eq i32 %134, %136
  br i1 %cmp121.not, label %if.else123, label %if.end118.if.end129.sink.split_crit_edge

if.end118.if.end129.sink.split_crit_edge:         ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129.sink.split

if.else123:                                       ; preds = %if.end118
  %sd_log_tail = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 100
  %137 = ptrtoint ptr %sd_log_tail to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sd_log_tail, align 4
  %sd_log_flush_tail = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 101
  %139 = ptrtoint ptr %sd_log_flush_tail to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sd_log_flush_tail, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %140)
  %cmp124.not = icmp eq i32 %138, %140
  br i1 %cmp124.not, label %if.else123.if.end129_crit_edge, label %land.lhs.true125

if.else123.if.end129_crit_edge:                   ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

land.lhs.true125:                                 ; preds = %if.else123
  %sd_log_idle = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 94
  %141 = ptrtoint ptr %sd_log_idle to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %sd_log_idle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool126.not = icmp eq i32 %142, 0
  br i1 %tobool126.not, label %land.lhs.true125.if.end129.sink.split_crit_edge, label %land.lhs.true125.if.end129_crit_edge

land.lhs.true125.if.end129_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

land.lhs.true125.if.end129.sink.split_crit_edge:  ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129.sink.split

if.end129.sink.split:                             ; preds = %land.lhs.true125.if.end129.sink.split_crit_edge, %if.end118.if.end129.sink.split_crit_edge
  call fastcc void @log_write_header(ptr noundef %sdp, i32 noundef %flags)
  br label %if.end129

if.end129:                                        ; preds = %if.end129.sink.split, %land.lhs.true125.if.end129_crit_edge, %if.else123.if.end129_crit_edge
  %143 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %sd_flags.i, align 4
  %145 = and i32 %144, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i374 = icmp eq i32 %145, 0
  br i1 %tobool.not.i374, label %gfs2_withdrawn.exit377, label %if.end129.out_withdraw_crit_edge

if.end129.out_withdraw_crit_edge:                 ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw

gfs2_withdrawn.exit377:                           ; preds = %if.end129
  %146 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %sd_flags.i, align 4
  %148 = and i32 %147, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool3.i375.not = icmp eq i32 %148, 0
  br i1 %tobool3.i375.not, label %if.end132, label %gfs2_withdrawn.exit377.out_withdraw_crit_edge

gfs2_withdrawn.exit377.out_withdraw_crit_edge:    ; preds = %gfs2_withdrawn.exit377
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw

if.end132:                                        ; preds = %gfs2_withdrawn.exit377
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_log_ops to i32))
  %149 = load ptr, ptr @gfs2_log_ops, align 4
  %tobool.not9.i378 = icmp eq ptr %149, null
  br i1 %tobool.not9.i378, label %if.end132.lops_after_commit.exit_crit_edge, label %if.end132.for.body.i381_crit_edge

if.end132.for.body.i381_crit_edge:                ; preds = %if.end132
  br label %for.body.i381

if.end132.lops_after_commit.exit_crit_edge:       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %lops_after_commit.exit

for.body.i381:                                    ; preds = %for.inc.i386.for.body.i381_crit_edge, %if.end132.for.body.i381_crit_edge
  %150 = phi ptr [ %154, %for.inc.i386.for.body.i381_crit_edge ], [ %149, %if.end132.for.body.i381_crit_edge ]
  %x.010.i379 = phi i32 [ %inc.i383, %for.inc.i386.for.body.i381_crit_edge ], [ 0, %if.end132.for.body.i381_crit_edge ]
  %lo_after_commit.i = getelementptr inbounds %struct.gfs2_log_operations, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %lo_after_commit.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %lo_after_commit.i, align 4
  %tobool2.not.i380 = icmp eq ptr %152, null
  br i1 %tobool2.not.i380, label %for.body.i381.for.inc.i386_crit_edge, label %if.then.i382

for.body.i381.for.inc.i386_crit_edge:             ; preds = %for.body.i381
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i386

if.then.i382:                                     ; preds = %for.body.i381
  call void @__sanitizer_cov_trace_pc() #11
  call void %152(ptr noundef %sdp, ptr noundef %62) #9
  br label %for.inc.i386

for.inc.i386:                                     ; preds = %if.then.i382, %for.body.i381.for.inc.i386_crit_edge
  %inc.i383 = add i32 %x.010.i379, 1
  %arrayidx.i384 = getelementptr [0 x ptr], ptr @gfs2_log_ops, i32 0, i32 %inc.i383
  %153 = ptrtoint ptr %arrayidx.i384 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.i384, align 4
  %tobool.not.i385 = icmp eq ptr %154, null
  br i1 %tobool.not.i385, label %for.inc.i386.lops_after_commit.exit_crit_edge, label %for.inc.i386.for.body.i381_crit_edge

for.inc.i386.for.body.i381_crit_edge:             ; preds = %for.inc.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i381

for.inc.i386.lops_after_commit.exit_crit_edge:    ; preds = %for.inc.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %lops_after_commit.exit

lops_after_commit.exit:                           ; preds = %for.inc.i386.lops_after_commit.exit_crit_edge, %if.end132.lops_after_commit.exit_crit_edge
  %sd_log_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 78
  call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #9
  %sd_log_blks_reserved133 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 80
  %155 = ptrtoint ptr %sd_log_blks_reserved133 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %sd_log_blks_reserved133, align 4
  %sd_ail_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  call void @_raw_spin_lock(ptr noundef %sd_ail_lock) #9
  br i1 %tobool8.not494, label %lops_after_commit.exit.if.end139_crit_edge, label %land.lhs.true135

lops_after_commit.exit.if.end139_crit_edge:       ; preds = %lops_after_commit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

land.lhs.true135:                                 ; preds = %lops_after_commit.exit
  %tr_ail1_list = getelementptr inbounds %struct.gfs2_trans, ptr %62, i32 0, i32 14
  %156 = ptrtoint ptr %tr_ail1_list to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile ptr, ptr %tr_ail1_list, align 4
  %cmp.i387.not = icmp eq ptr %157, %tr_ail1_list
  br i1 %cmp.i387.not, label %land.lhs.true135.if.end139_crit_edge, label %if.then138

land.lhs.true135.if.end139_crit_edge:             ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.then138:                                       ; preds = %land.lhs.true135
  %tr_list = getelementptr inbounds %struct.gfs2_trans, ptr %62, i32 0, i32 10
  %sd_ail1_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105
  %158 = ptrtoint ptr %sd_ail1_list to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sd_ail1_list, align 4
  %call.i.i388 = call zeroext i1 @__list_add_valid(ptr noundef %tr_list, ptr noundef %sd_ail1_list, ptr noundef %159) #9
  br i1 %call.i.i388, label %if.end.i.i, label %if.then138.if.end139_crit_edge

if.then138.if.end139_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139

if.end.i.i:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %tr_list, ptr %prev1.i.i, align 4
  %161 = ptrtoint ptr %tr_list to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %159, ptr %tr_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %62, i32 0, i32 10, i32 1
  %162 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %sd_ail1_list, ptr %prev3.i.i, align 4
  %163 = ptrtoint ptr %sd_ail1_list to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile ptr %tr_list, ptr %sd_ail1_list, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.end.i.i, %if.then138.if.end139_crit_edge, %land.lhs.true135.if.end139_crit_edge, %lops_after_commit.exit.if.end139_crit_edge
  %tr.1 = phi ptr [ %62, %land.lhs.true135.if.end139_crit_edge ], [ null, %lops_after_commit.exit.if.end139_crit_edge ], [ null, %if.then138.if.end139_crit_edge ], [ null, %if.end.i.i ]
  call void @_raw_spin_unlock(ptr noundef %sd_ail_lock) #9
  call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #9
  %and141 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.then143, label %if.end139.out_end_crit_edge

if.end139.out_end_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_end

if.then143:                                       ; preds = %if.end139
  %sd_log_idle144 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 94
  %164 = ptrtoint ptr %sd_log_idle144 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %sd_log_idle144, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool145.not = icmp eq i32 %165, 0
  br i1 %tobool145.not, label %if.then146, label %if.then143.if.end150_crit_edge

if.then143.if.end150_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

if.then146:                                       ; preds = %if.then143
  call fastcc void @empty_ail1_list(ptr noundef %sdp)
  %166 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile i32, ptr %sd_flags.i, align 4
  %168 = and i32 %167, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i391 = icmp eq i32 %168, 0
  br i1 %tobool.not.i391, label %gfs2_withdrawn.exit394, label %if.then146.out_withdraw_crit_edge

if.then146.out_withdraw_crit_edge:                ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw

gfs2_withdrawn.exit394:                           ; preds = %if.then146
  %169 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %sd_flags.i, align 4
  %171 = and i32 %170, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool3.i392.not = icmp eq i32 %171, 0
  br i1 %tobool3.i392.not, label %if.end149, label %gfs2_withdrawn.exit394.out_withdraw_crit_edge

gfs2_withdrawn.exit394.out_withdraw_crit_edge:    ; preds = %gfs2_withdrawn.exit394
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_withdraw

if.end149:                                        ; preds = %gfs2_withdrawn.exit394
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @log_write_header(ptr noundef %sdp, i32 noundef %flags)
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.then143.if.end150_crit_edge
  %and151 = and i32 %flags, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.end150.if.end154_crit_edge, label %if.then153

if.end150.if.end154_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

if.then153:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @gfs2_log_shutdown(ptr noundef %sdp)
  br label %if.end154

if.end154:                                        ; preds = %if.then153, %if.end150.if.end154_crit_edge
  %and155 = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end154.out_end_crit_edge, label %if.then157

if.end154.out_end_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_end

if.then157:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i353 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_freeze_state, i32 noundef 4) #9
  %172 = ptrtoint ptr %sd_freeze_state to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile i32 2, ptr %sd_freeze_state, align 4
  br label %out_end

out_end:                                          ; preds = %if.end227, %if.then157, %if.end154.out_end_crit_edge, %if.end139.out_end_crit_edge
  %173 = phi i32 [ %240, %if.end227 ], [ %61, %if.end139.out_end_crit_edge ], [ %61, %if.then157 ], [ %61, %if.end154.out_end_crit_edge ]
  %reserved_revokes.1 = phi i32 [ %reserved_revokes.2423436, %if.end227 ], [ %reserved_revokes.0, %if.end139.out_end_crit_edge ], [ %reserved_revokes.0, %if.then157 ], [ %reserved_revokes.0, %if.end154.out_end_crit_edge ]
  %reserved_blocks.2 = phi i32 [ %reserved_blocks.4425435, %if.end227 ], [ %reserved_blocks.1, %if.end139.out_end_crit_edge ], [ %reserved_blocks.1, %if.then157 ], [ %reserved_blocks.1, %if.end154.out_end_crit_edge ]
  %tr.2 = phi ptr [ null, %if.end227 ], [ %tr.1, %if.end139.out_end_crit_edge ], [ %tr.1, %if.then157 ], [ %tr.1, %if.end154.out_end_crit_edge ]
  %174 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sd_log_flush_head, align 8
  %sub.i = sub i32 %175, %173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i395 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i395, label %if.then.i396, label %out_end.log_distance.exit_crit_edge

out_end.log_distance.exit_crit_edge:              ; preds = %out_end
  call void @__sanitizer_cov_trace_pc() #11
  br label %log_distance.exit

if.then.i396:                                     ; preds = %out_end
  call void @__sanitizer_cov_trace_pc() #11
  %sd_jdesc.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %176 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %177, i32 0, i32 8
  %178 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %jd_blocks.i, align 8
  %add.i = add i32 %179, %sub.i
  br label %log_distance.exit

log_distance.exit:                                ; preds = %if.then.i396, %out_end.log_distance.exit_crit_edge
  %dist.0.i = phi i32 [ %add.i, %if.then.i396 ], [ %sub.i, %out_end.log_distance.exit_crit_edge ]
  %sd_log_revokes_available = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 90
  %call.i.i354 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_revokes_available, i32 noundef 4) #9
  %180 = ptrtoint ptr %sd_log_revokes_available to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load volatile i32, ptr %sd_log_revokes_available, align 4
  %add = add i32 %181, %reserved_revokes.1
  %sd_ldptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 10
  %182 = ptrtoint ptr %sd_ldptrs to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %sd_ldptrs, align 8
  %call.i.i355 = call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_revokes_available, i32 noundef 4) #9
  %184 = ptrtoint ptr %sd_log_revokes_available to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile i32 %183, ptr %sd_log_revokes_available, align 4
  %sd_inptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 9
  %185 = ptrtoint ptr %sd_inptrs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %sd_inptrs, align 4
  %rem = urem i32 %add, %186
  %187 = ptrtoint ptr %sd_ldptrs to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %sd_ldptrs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %188)
  %cmp167.not = icmp eq i32 %rem, %188
  br i1 %cmp167.not, label %log_distance.exit.if.end179_crit_edge, label %if.then178, !prof !104

log_distance.exit.if.end179_crit_edge:            ; preds = %log_distance.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179

if.then178:                                       ; preds = %log_distance.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.gfs2_log_flush, ptr noundef nonnull @.str.2, i32 noundef 1139, i1 noundef zeroext false) #9
  br label %if.end179

if.end179:                                        ; preds = %if.then178, %log_distance.exit.if.end179_crit_edge
  %189 = ptrtoint ptr %sd_ldptrs to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %sd_ldptrs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %190)
  %cmp185 = icmp ugt i32 %add, %190
  br i1 %cmp185, label %if.then186, label %if.end179.out_crit_edge

if.end179.out_crit_edge:                          ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then186:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %add, %190
  %191 = ptrtoint ptr %sd_inptrs to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %sd_inptrs, align 4
  %div = udiv i32 %sub, %192
  %add189 = add i32 %div, %reserved_blocks.2
  br label %out

out:                                              ; preds = %if.then186, %if.end179.out_crit_edge
  %reserved_blocks.3 = phi i32 [ %add189, %if.then186 ], [ %reserved_blocks.2, %if.end179.out_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %reserved_blocks.3, i32 %dist.0.i)
  %cmp191.not = icmp eq i32 %reserved_blocks.3, %dist.0.i
  br i1 %cmp191.not, label %out.if.end212_crit_edge, label %if.then192

out.if.end212_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212

if.then192:                                       ; preds = %out
  call void @__sanitizer_cov_trace_cmp4(i32 %reserved_blocks.3, i32 %dist.0.i)
  %cmp194.not = icmp ugt i32 %reserved_blocks.3, %dist.0.i
  br i1 %cmp194.not, label %if.then192.if.end206_crit_edge, label %if.then205, !prof !104

if.then192.if.end206_crit_edge:                   ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end206

if.then205:                                       ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #11
  call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.gfs2_log_flush, ptr noundef nonnull @.str.2, i32 noundef 1144, i1 noundef zeroext true) #9
  br label %if.end206

if.end206:                                        ; preds = %if.then205, %if.then192.if.end206_crit_edge, %land.lhs.true.1.if.end206_crit_edge, %lor.lhs.false.1.if.end206_crit_edge, %gfs2_withdrawn.exit.1.if.end206_crit_edge, %cleanup.if.end206_crit_edge
  %used_blocks.0535544 = phi i32 [ %dist.0.i, %if.then205 ], [ %dist.0.i, %if.then192.if.end206_crit_edge ], [ 0, %land.lhs.true.1.if.end206_crit_edge ], [ 0, %lor.lhs.false.1.if.end206_crit_edge ], [ 0, %gfs2_withdrawn.exit.1.if.end206_crit_edge ], [ 0, %cleanup.if.end206_crit_edge ]
  %reserved_blocks.3536543 = phi i32 [ %reserved_blocks.3, %if.then205 ], [ %reserved_blocks.3, %if.then192.if.end206_crit_edge ], [ 4, %land.lhs.true.1.if.end206_crit_edge ], [ 4, %lor.lhs.false.1.if.end206_crit_edge ], [ 4, %gfs2_withdrawn.exit.1.if.end206_crit_edge ], [ 4, %cleanup.if.end206_crit_edge ]
  %tr.3537542 = phi ptr [ %tr.2, %if.then205 ], [ %tr.2, %if.then192.if.end206_crit_edge ], [ null, %land.lhs.true.1.if.end206_crit_edge ], [ null, %lor.lhs.false.1.if.end206_crit_edge ], [ null, %gfs2_withdrawn.exit.1.if.end206_crit_edge ], [ null, %cleanup.if.end206_crit_edge ]
  %sub211 = sub i32 %reserved_blocks.3536543, %used_blocks.0535544
  call void @gfs2_log_release(ptr noundef %sdp, i32 noundef %sub211)
  br label %if.end212

if.end212:                                        ; preds = %if.end206, %out.if.end212_crit_edge, %land.lhs.true.if.end212_crit_edge, %lor.lhs.false.if.end212_crit_edge, %gfs2_withdrawn.exit.lr.ph.if.end212_crit_edge, %entry.if.end212_crit_edge
  %tr.3528 = phi ptr [ %tr.3537542, %if.end206 ], [ %tr.2, %out.if.end212_crit_edge ], [ null, %entry.if.end212_crit_edge ], [ null, %lor.lhs.false.if.end212_crit_edge ], [ null, %gfs2_withdrawn.exit.lr.ph.if.end212_crit_edge ], [ null, %land.lhs.true.if.end212_crit_edge ]
  call void @up_write(ptr noundef %sd_log_flush_lock) #9
  call void @gfs2_trans_free(ptr noundef %sdp, ptr noundef %tr.3528) #9
  %193 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %sd_flags.i, align 4
  %195 = and i32 %194, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool.not.i399 = icmp eq i32 %195, 0
  br i1 %tobool.not.i399, label %if.end212.if.end217_crit_edge, label %gfs2_withdrawing.exit

if.end212.if.end217_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217

gfs2_withdrawing.exit:                            ; preds = %if.end212
  %196 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load volatile i32, ptr %sd_flags.i, align 4
  %198 = and i32 %197, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool3.not.i = icmp eq i32 %198, 0
  br i1 %tobool3.not.i, label %if.then215, label %gfs2_withdrawing.exit.if.end217_crit_edge

gfs2_withdrawing.exit.if.end217_crit_edge:        ; preds = %gfs2_withdrawing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217

if.then215:                                       ; preds = %gfs2_withdrawing.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call216 = call i32 @gfs2_withdraw(ptr noundef %sdp) #9
  br label %if.end217

if.end217:                                        ; preds = %if.then215, %gfs2_withdrawing.exit.if.end217_crit_edge, %if.end212.if.end217_crit_edge
  call fastcc void @trace_gfs2_log_flush(ptr noundef %sdp, i32 noundef 0, i32 noundef %flags)
  ret void

out_withdraw:                                     ; preds = %gfs2_withdrawn.exit394.out_withdraw_crit_edge, %if.then146.out_withdraw_crit_edge, %gfs2_withdrawn.exit377.out_withdraw_crit_edge, %if.end129.out_withdraw_crit_edge, %gfs2_withdrawn.exit372.out_withdraw_crit_edge, %if.end115.out_withdraw_crit_edge, %gfs2_withdrawn.exit367.out_withdraw_crit_edge, %lops_before_commit.exit.out_withdraw_crit_edge, %gfs2_withdrawn.exit360.out_withdraw_crit_edge, %gfs2_ordered_write.exit.out_withdraw_crit_edge, %if.then100
  %tr.4 = phi ptr [ %62, %gfs2_withdrawn.exit360.out_withdraw_crit_edge ], [ %62, %gfs2_withdrawn.exit367.out_withdraw_crit_edge ], [ %62, %gfs2_withdrawn.exit372.out_withdraw_crit_edge ], [ %62, %gfs2_withdrawn.exit377.out_withdraw_crit_edge ], [ %tr.1, %gfs2_withdrawn.exit394.out_withdraw_crit_edge ], [ %62, %if.then100 ], [ %62, %gfs2_ordered_write.exit.out_withdraw_crit_edge ], [ %62, %lops_before_commit.exit.out_withdraw_crit_edge ], [ %62, %if.end115.out_withdraw_crit_edge ], [ %62, %if.end129.out_withdraw_crit_edge ], [ %tr.1, %if.then146.out_withdraw_crit_edge ]
  %tobool.not.i400 = icmp eq ptr %tr.4, null
  br i1 %tobool.not.i400, label %trans_drain.exit.thread, label %out_withdraw.if.end.i401_crit_edge

out_withdraw.if.end.i401_crit_edge:               ; preds = %out_withdraw
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i401

trans_drain.exit.thread:                          ; preds = %out_withdraw
  call void @__sanitizer_cov_trace_pc() #11
  %sd_ail_lock218434 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  call void @_raw_spin_lock(ptr noundef %sd_ail_lock218434) #9
  br label %if.end227

if.end.i401:                                      ; preds = %out_withdraw.if.end.i401_crit_edge, %out_withdraw.thread
  %199 = phi i32 [ %.lcssa497511517, %out_withdraw.thread ], [ %61, %out_withdraw.if.end.i401_crit_edge ]
  %tr.4426 = phi ptr [ %.lcssa513516, %out_withdraw.thread ], [ %tr.4, %out_withdraw.if.end.i401_crit_edge ]
  %reserved_blocks.4424 = phi i32 [ %22, %out_withdraw.thread ], [ %reserved_blocks.1, %out_withdraw.if.end.i401_crit_edge ]
  %reserved_revokes.2422 = phi i32 [ %24, %out_withdraw.thread ], [ %reserved_revokes.0, %out_withdraw.if.end.i401_crit_edge ]
  %tr_buf.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr.4426, i32 0, i32 12
  %200 = ptrtoint ptr %tr_buf.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load volatile ptr, ptr %tr_buf.i, align 4
  %cmp.i.not47.i = icmp eq ptr %201, %tr_buf.i
  br i1 %cmp.i.not47.i, label %if.end.i401.while.end.i408_crit_edge, label %if.end.i401.while.body.i403_crit_edge

if.end.i401.while.body.i403_crit_edge:            ; preds = %if.end.i401
  br label %while.body.i403

if.end.i401.while.end.i408_crit_edge:             ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i408

while.body.i403:                                  ; preds = %if.end5.i.while.body.i403_crit_edge, %if.end.i401.while.body.i403_crit_edge
  %202 = phi ptr [ %215, %if.end5.i.while.body.i403_crit_edge ], [ %201, %if.end.i401.while.body.i403_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %202, i32 -16
  %call.i.i.i402 = call zeroext i1 @__list_del_entry_valid(ptr noundef %202) #9
  br i1 %call.i.i.i402, label %if.end.i.i.i406, label %while.body.i403.list_del_init.exit.i_crit_edge

while.body.i403.list_del_init.exit.i_crit_edge:   ; preds = %while.body.i403
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i406:                                  ; preds = %while.body.i403
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i404 = getelementptr inbounds %struct.list_head, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %prev.i.i.i404 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %prev.i.i.i404, align 4
  %205 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %202, align 4
  %prev1.i.i.i.i405 = getelementptr inbounds %struct.list_head, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %prev1.i.i.i.i405 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %204, ptr %prev1.i.i.i.i405, align 4
  %208 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %206, ptr %204, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i406, %while.body.i403.list_del_init.exit.i_crit_edge
  %209 = ptrtoint ptr %202 to i32
  call void @__asan_store4_noabort(i32 %209)
  store volatile ptr %202, ptr %202, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %202, i32 0, i32 1
  %210 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %202, ptr %prev.i3.i.i, align 4
  %bd_ail_st_list.i = getelementptr i8, ptr %202, i32 12
  %211 = ptrtoint ptr %bd_ail_st_list.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile ptr, ptr %bd_ail_st_list.i, align 4
  %cmp.i35.not.i = icmp eq ptr %212, %bd_ail_st_list.i
  br i1 %cmp.i35.not.i, label %list_del_init.exit.i.if.end5.i_crit_edge, label %if.then4.i

list_del_init.exit.i.if.end5.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @gfs2_remove_from_ail(ptr noundef %add.ptr.i) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %list_del_init.exit.i.if.end5.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %213 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  call void @kmem_cache_free(ptr noundef %213, ptr noundef %add.ptr.i) #9
  %214 = ptrtoint ptr %tr_buf.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load volatile ptr, ptr %tr_buf.i, align 4
  %cmp.i.not.i407 = icmp eq ptr %215, %tr_buf.i
  br i1 %cmp.i.not.i407, label %if.end5.i.while.end.i408_crit_edge, label %if.end5.i.while.body.i403_crit_edge

if.end5.i.while.body.i403_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i403

if.end5.i.while.end.i408_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i408

while.end.i408:                                   ; preds = %if.end5.i.while.end.i408_crit_edge, %if.end.i401.while.end.i408_crit_edge
  %tr_databuf.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr.4426, i32 0, i32 11
  %216 = ptrtoint ptr %tr_databuf.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load volatile ptr, ptr %tr_databuf.i, align 4
  %cmp.i37.not48.i = icmp eq ptr %217, %tr_databuf.i
  br i1 %cmp.i37.not48.i, label %while.end.i408.trans_drain.exit_crit_edge, label %while.end.i408.while.body10.i_crit_edge

while.end.i408.while.body10.i_crit_edge:          ; preds = %while.end.i408
  br label %while.body10.i

while.end.i408.trans_drain.exit_crit_edge:        ; preds = %while.end.i408
  call void @__sanitizer_cov_trace_pc() #11
  br label %trans_drain.exit

while.body10.i:                                   ; preds = %if.end20.i.while.body10.i_crit_edge, %while.end.i408.while.body10.i_crit_edge
  %218 = phi ptr [ %231, %if.end20.i.while.body10.i_crit_edge ], [ %217, %while.end.i408.while.body10.i_crit_edge ]
  %add.ptr14.i = getelementptr i8, ptr %218, i32 -16
  %call.i.i39.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %218) #9
  br i1 %call.i.i39.i, label %if.end.i.i42.i, label %while.body10.i.list_del_init.exit44.i_crit_edge

while.body10.i.list_del_init.exit44.i_crit_edge:  ; preds = %while.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit44.i

if.end.i.i42.i:                                   ; preds = %while.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i40.i = getelementptr inbounds %struct.list_head, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %prev.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %prev.i.i40.i, align 4
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %218, align 4
  %prev1.i.i.i41.i = getelementptr inbounds %struct.list_head, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %prev1.i.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %220, ptr %prev1.i.i.i41.i, align 4
  %224 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %222, ptr %220, align 4
  br label %list_del_init.exit44.i

list_del_init.exit44.i:                           ; preds = %if.end.i.i42.i, %while.body10.i.list_del_init.exit44.i_crit_edge
  %225 = ptrtoint ptr %218 to i32
  call void @__asan_store4_noabort(i32 %225)
  store volatile ptr %218, ptr %218, align 4
  %prev.i3.i43.i = getelementptr inbounds %struct.list_head, ptr %218, i32 0, i32 1
  %226 = ptrtoint ptr %prev.i3.i43.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %218, ptr %prev.i3.i43.i, align 4
  %bd_ail_st_list16.i = getelementptr i8, ptr %218, i32 12
  %227 = ptrtoint ptr %bd_ail_st_list16.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile ptr, ptr %bd_ail_st_list16.i, align 4
  %cmp.i45.not.i = icmp eq ptr %228, %bd_ail_st_list16.i
  br i1 %cmp.i45.not.i, label %list_del_init.exit44.i.if.end20.i_crit_edge, label %if.then19.i

list_del_init.exit44.i.if.end20.i_crit_edge:      ; preds = %list_del_init.exit44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then19.i:                                      ; preds = %list_del_init.exit44.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @gfs2_remove_from_ail(ptr noundef %add.ptr14.i) #9
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %list_del_init.exit44.i.if.end20.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %229 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  call void @kmem_cache_free(ptr noundef %229, ptr noundef %add.ptr14.i) #9
  %230 = ptrtoint ptr %tr_databuf.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile ptr, ptr %tr_databuf.i, align 4
  %cmp.i37.not.i = icmp eq ptr %231, %tr_databuf.i
  br i1 %cmp.i37.not.i, label %if.end20.i.trans_drain.exit_crit_edge, label %if.end20.i.while.body10.i_crit_edge

if.end20.i.while.body10.i_crit_edge:              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body10.i

if.end20.i.trans_drain.exit_crit_edge:            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %trans_drain.exit

trans_drain.exit:                                 ; preds = %if.end20.i.trans_drain.exit_crit_edge, %while.end.i408.trans_drain.exit_crit_edge
  %sd_ail_lock218 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  call void @_raw_spin_lock(ptr noundef %sd_ail_lock218) #9
  %tr_list221 = getelementptr inbounds %struct.gfs2_trans, ptr %tr.4426, i32 0, i32 10
  %232 = ptrtoint ptr %tr_list221 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load volatile ptr, ptr %tr_list221, align 4
  %cmp.i409.not = icmp eq ptr %233, %tr_list221
  br i1 %cmp.i409.not, label %if.then224, label %trans_drain.exit.if.end227_crit_edge

trans_drain.exit.if.end227_crit_edge:             ; preds = %trans_drain.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227

if.then224:                                       ; preds = %trans_drain.exit
  %sd_ail1_list226 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105
  %234 = ptrtoint ptr %sd_ail1_list226 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %sd_ail1_list226, align 4
  %call.i.i411 = call zeroext i1 @__list_add_valid(ptr noundef %tr_list221, ptr noundef %sd_ail1_list226, ptr noundef %235) #9
  br i1 %call.i.i411, label %if.end.i.i414, label %if.then224.if.end227_crit_edge

if.then224.if.end227_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end227

if.end.i.i414:                                    ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i412 = getelementptr inbounds %struct.list_head, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %prev1.i.i412 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %tr_list221, ptr %prev1.i.i412, align 4
  %237 = ptrtoint ptr %tr_list221 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %235, ptr %tr_list221, align 4
  %prev3.i.i413 = getelementptr inbounds %struct.gfs2_trans, ptr %tr.4426, i32 0, i32 10, i32 1
  %238 = ptrtoint ptr %prev3.i.i413 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %sd_ail1_list226, ptr %prev3.i.i413, align 4
  %239 = ptrtoint ptr %sd_ail1_list226 to i32
  call void @__asan_store4_noabort(i32 %239)
  store volatile ptr %tr_list221, ptr %sd_ail1_list226, align 4
  br label %if.end227

if.end227:                                        ; preds = %if.end.i.i414, %if.then224.if.end227_crit_edge, %trans_drain.exit.if.end227_crit_edge, %trans_drain.exit.thread
  %240 = phi i32 [ %61, %trans_drain.exit.thread ], [ %199, %trans_drain.exit.if.end227_crit_edge ], [ %199, %if.then224.if.end227_crit_edge ], [ %199, %if.end.i.i414 ]
  %sd_ail_lock218437 = phi ptr [ %sd_ail_lock218434, %trans_drain.exit.thread ], [ %sd_ail_lock218, %trans_drain.exit.if.end227_crit_edge ], [ %sd_ail_lock218, %if.then224.if.end227_crit_edge ], [ %sd_ail_lock218, %if.end.i.i414 ]
  %reserved_revokes.2423436 = phi i32 [ %reserved_revokes.0, %trans_drain.exit.thread ], [ %reserved_revokes.2422, %trans_drain.exit.if.end227_crit_edge ], [ %reserved_revokes.2422, %if.then224.if.end227_crit_edge ], [ %reserved_revokes.2422, %if.end.i.i414 ]
  %reserved_blocks.4425435 = phi i32 [ %reserved_blocks.1, %trans_drain.exit.thread ], [ %reserved_blocks.4424, %trans_drain.exit.if.end227_crit_edge ], [ %reserved_blocks.4424, %if.then224.if.end227_crit_edge ], [ %reserved_blocks.4424, %if.end.i.i414 ]
  call void @_raw_spin_unlock(ptr noundef %sd_ail_lock218437) #9
  br label %out_end
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_log_flush(ptr noundef %sdp, i32 noundef %start, i32 noundef %flags) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_log_flush, i32 0, i32 1), ptr blockaddress(@trace_gfs2_log_flush, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !109

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !104

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !133
  %call42 = tail call i32 @__traceiter_gfs2_log_flush(ptr noundef null, ptr noundef %sdp, i32 noundef %start, i32 noundef %flags) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !134
  %13 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !104

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_log_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_log_flush, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_gfs2_log_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_gfs2_log_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 375, ptr noundef nonnull @.str.12) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !113
  %31 = tail call i32 @llvm.read_register.i32(metadata !93) #9
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
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @log_write_header(ptr noundef %sdp, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_freeze_state = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 108
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_freeze_state, i32 noundef 4) #9
  %0 = ptrtoint ptr %sd_freeze_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_freeze_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.then, label %entry.if.end_crit_edge, !prof !115

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.log_write_header, ptr noundef nonnull @.str.2, i32 noundef 911, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %2 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %sd_flags, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end
  %sd_ordered_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 85
  tail call void @_raw_spin_lock(ptr noundef %sd_ordered_lock.i) #9
  %sd_log_ordered.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 84
  %5 = ptrtoint ptr %sd_log_ordered.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %sd_log_ordered.i, align 4
  %cmp.i.not15.i = icmp eq ptr %6, %sd_log_ordered.i
  br i1 %cmp.i.not15.i, label %if.then9.gfs2_ordered_wait.exit_crit_edge, label %if.then9.while.body.i_crit_edge

if.then9.while.body.i_crit_edge:                  ; preds = %if.then9
  br label %while.body.i

if.then9.gfs2_ordered_wait.exit_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ordered_wait.exit

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %if.then9.while.body.i_crit_edge
  %7 = phi ptr [ %25, %while.cond.backedge.i.while.body.i_crit_edge ], [ %6, %if.then9.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %7, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %7
  br i1 %cmp.i.not.i.i, label %while.body.i.__ordered_del_inode.exit.i_crit_edge, label %if.then.i.i

while.body.i.__ordered_del_inode.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__ordered_del_inode.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del_init.exit.i.i_crit_edge

if.then.i.i.list_del_init.exit.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr i8, ptr %7, i32 4
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del_init.exit.i.i_crit_edge
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %7, ptr %7, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %7, i32 4
  %17 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %7, ptr %prev.i3.i.i.i, align 4
  br label %__ordered_del_inode.exit.i

__ordered_del_inode.exit.i:                       ; preds = %list_del_init.exit.i.i, %while.body.i.__ordered_del_inode.exit.i_crit_edge
  %i_mapping.i = getelementptr i8, ptr %7, i32 -1004
  %18 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i_mapping.i, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nrpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %__ordered_del_inode.exit.i.while.cond.backedge.i_crit_edge, label %if.end.i

__ordered_del_inode.exit.i.while.cond.backedge.i_crit_edge: ; preds = %__ordered_del_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge.i

if.end.i:                                         ; preds = %__ordered_del_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %sd_ordered_lock.i) #9
  %22 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping.i, align 8
  %call.i.i31 = tail call i32 @filemap_fdatawait_range(ptr noundef %23, i64 noundef 0, i64 noundef 9223372036854775807) #9
  tail call void @_raw_spin_lock(ptr noundef %sd_ordered_lock.i) #9
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i, %__ordered_del_inode.exit.i.while.cond.backedge.i_crit_edge
  %24 = ptrtoint ptr %sd_log_ordered.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %sd_log_ordered.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %sd_log_ordered.i
  br i1 %cmp.i.not.i, label %while.cond.backedge.i.gfs2_ordered_wait.exit_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.cond.backedge.i.gfs2_ordered_wait.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ordered_wait.exit

gfs2_ordered_wait.exit:                           ; preds = %while.cond.backedge.i.gfs2_ordered_wait.exit_crit_edge, %if.then9.gfs2_ordered_wait.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_ordered_lock.i) #9
  tail call void @log_flush_wait(ptr noundef %sdp)
  br label %if.end10

if.end10:                                         ; preds = %gfs2_ordered_wait.exit, %if.end.if.end10_crit_edge
  %op_flags.0 = phi i32 [ 14336, %gfs2_ordered_wait.exit ], [ 399360, %if.end.if.end10_crit_edge ]
  %sd_log_flush_tail = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 101
  %26 = ptrtoint ptr %sd_log_flush_tail to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sd_log_flush_tail, align 8
  %sd_log_flush_head = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 103
  %28 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sd_log_flush_head, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp11 = icmp eq i32 %27, %29
  %conv = zext i1 %cmp11 to i32
  %sd_log_idle = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 94
  %30 = ptrtoint ptr %sd_log_idle to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %sd_log_idle, align 8
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %31 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sd_jdesc, align 4
  %sd_log_sequence = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 93
  %33 = ptrtoint ptr %sd_log_sequence to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %sd_log_sequence, align 8
  %inc = add i64 %34, 1
  store i64 %inc, ptr %sd_log_sequence, align 8
  tail call void @gfs2_write_log_header(ptr noundef %sdp, ptr noundef %32, i64 noundef %34, i32 noundef %27, i32 noundef %29, i32 noundef %flags, i32 noundef %op_flags.0)
  tail call void @gfs2_log_incr_head(ptr noundef %sdp) #9
  tail call void @log_flush_wait(ptr noundef %sdp)
  tail call fastcc void @log_pull_tail(ptr noundef %sdp)
  %35 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sd_log_flush_head, align 8
  %37 = ptrtoint ptr %sd_log_flush_tail to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sd_log_flush_tail, align 8
  %sd_log_head.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 102
  %39 = ptrtoint ptr %sd_log_head.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sd_log_head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i32 = icmp eq i32 %38, %40
  br i1 %cmp.i32, label %if.then.i, label %if.end10.gfs2_log_update_head.exit_crit_edge

if.end10.gfs2_log_update_head.exit_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_log_update_head.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %sd_log_flush_tail to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %36, ptr %sd_log_flush_tail, align 8
  br label %gfs2_log_update_head.exit

gfs2_log_update_head.exit:                        ; preds = %if.then.i, %if.end10.gfs2_log_update_head.exit_crit_edge
  %42 = ptrtoint ptr %sd_log_head.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %36, ptr %sd_log_head.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @empty_ail1_list(ptr noundef %sdp) unnamed_addr #2 align 64 {
entry:
  %wbc.i = alloca %struct.writeback_control, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 60000
  %1 = getelementptr inbounds { i32, i32, i64, i64, i32, i8, i8, [2 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32 }, ptr %wbc.i, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end.for.cond_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %3 = call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 146
  %7 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %journal_info, align 4
  %tobool.not = icmp ne ptr %8, null
  %cond = zext i1 %tobool.not to i32
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %sd_fsname, ptr noundef nonnull @.str.27, i32 noundef %cond) #12
  call fastcc void @dump_ail_list(ptr noundef %sdp)
  br label %cleanup

if.end:                                           ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc.i) #9
  %9 = call ptr @memset(ptr %wbc.i, i32 0, i32 64)
  %10 = ptrtoint ptr %wbc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2147483647, ptr %wbc.i, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 9223372036854775807, ptr %1, align 8
  call void @gfs2_ail1_flush(ptr noundef %sdp, ptr noundef nonnull %wbc.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc.i) #9
  call fastcc void @gfs2_ail1_wait(ptr noundef %sdp)
  %call2 = call fastcc i32 @gfs2_ail1_empty(ptr noundef %sdp, i32 noundef 0)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.for.cond_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.for.cond_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_log_shutdown(ptr noundef %sdp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_blks_reserved = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 80
  %0 = ptrtoint ptr %sd_log_blks_reserved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_log_blks_reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !104

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.gfs2_log_shutdown, ptr noundef nonnull @.str.2, i32 noundef 1258, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sd_log_num_revoke = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 82
  %2 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_log_num_revoke, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.end.if.end24_crit_edge, label %if.then23, !prof !104

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.gfs2_log_shutdown, ptr noundef nonnull @.str.2, i32 noundef 1259, i1 noundef zeroext false) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end.if.end24_crit_edge
  %sd_ail1_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105
  %4 = ptrtoint ptr %sd_ail1_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sd_ail1_list, align 4
  %cmp.i.not = icmp eq ptr %5, %sd_ail1_list
  br i1 %cmp.i.not, label %if.end24.if.end42_crit_edge, label %if.then41, !prof !104

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.gfs2_log_shutdown, ptr noundef nonnull @.str.2, i32 noundef 1260, i1 noundef zeroext false) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end24.if.end42_crit_edge
  tail call fastcc void @log_write_header(ptr noundef %sdp, i32 noundef 257)
  tail call fastcc void @log_pull_tail(ptr noundef %sdp)
  %sd_log_head = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 102
  %6 = ptrtoint ptr %sd_log_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sd_log_head, align 4
  %sd_log_tail = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 100
  %8 = ptrtoint ptr %sd_log_tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sd_log_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp eq i32 %7, %9
  br i1 %cmp.not, label %if.end42.if.end59_crit_edge, label %if.then58, !prof !104

if.end42.if.end59_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then58:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.gfs2_log_shutdown, ptr noundef nonnull @.str.2, i32 noundef 1265) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end42.if.end59_crit_edge
  %sd_ail2_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 106
  %10 = ptrtoint ptr %sd_ail2_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %sd_ail2_list, align 4
  %cmp.i100.not = icmp eq ptr %11, %sd_ail2_list
  br i1 %cmp.i100.not, label %if.end59.if.end78_crit_edge, label %if.then77, !prof !104

if.end59.if.end78_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then77:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.gfs2_log_shutdown, ptr noundef nonnull @.str.2, i32 noundef 1266) #9
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end59.if.end78_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_log_commit(ptr noundef %sdp, ptr noundef %tr) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_lock.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i.i) #9
  %sd_log_tr.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 79
  %0 = ptrtoint ptr %sd_log_tr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_log_tr.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %tr_flags.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tr_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tr_flags.i.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.then.i.if.end29.i.i_crit_edge

if.then.i.if.end29.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b76.i.i = load i1, ptr @gfs2_merge_trans.__already_done, align 1
  br i1 %.b76.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !104

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @gfs2_merge_trans.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1180, i32 noundef 9, ptr noundef null) #9
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %if.then.i.if.end29.i.i_crit_edge
  %tr_num_buf_new.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 5
  %5 = ptrtoint ptr %tr_num_buf_new.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tr_num_buf_new.i.i, align 4
  %tr_num_buf_new37.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %tr_num_buf_new37.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tr_num_buf_new37.i.i, align 4
  %add.i.i = add i32 %8, %6
  store i32 %add.i.i, ptr %tr_num_buf_new37.i.i, align 4
  %tr_num_databuf_new.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 6
  %9 = ptrtoint ptr %tr_num_databuf_new.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tr_num_databuf_new.i.i, align 4
  %tr_num_databuf_new38.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %tr_num_databuf_new38.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tr_num_databuf_new38.i.i, align 4
  %add39.i.i = add i32 %12, %10
  store i32 %add39.i.i, ptr %tr_num_databuf_new38.i.i, align 4
  %tr_num_buf_rm.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 7
  %13 = ptrtoint ptr %tr_num_buf_rm.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tr_num_buf_rm.i.i, align 4
  %tr_num_buf_rm40.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %tr_num_buf_rm40.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tr_num_buf_rm40.i.i, align 4
  %add41.i.i = add i32 %16, %14
  store i32 %add41.i.i, ptr %tr_num_buf_rm40.i.i, align 4
  %tr_num_databuf_rm.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 8
  %17 = ptrtoint ptr %tr_num_databuf_rm.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tr_num_databuf_rm.i.i, align 4
  %tr_num_databuf_rm42.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %tr_num_databuf_rm42.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tr_num_databuf_rm42.i.i, align 4
  %add43.i.i = add i32 %20, %18
  store i32 %add43.i.i, ptr %tr_num_databuf_rm42.i.i, align 4
  %tr_revokes.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 2
  %21 = ptrtoint ptr %tr_revokes.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tr_revokes.i.i, align 4
  %tr_revokes44.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %tr_revokes44.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tr_revokes44.i.i, align 4
  %add45.i.i = add i32 %24, %22
  store i32 %add45.i.i, ptr %tr_revokes44.i.i, align 4
  %tr_num_revoke.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 9
  %25 = ptrtoint ptr %tr_num_revoke.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tr_num_revoke.i.i, align 4
  %tr_num_revoke46.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %tr_num_revoke46.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tr_num_revoke46.i.i, align 4
  %add47.i.i = add i32 %28, %26
  store i32 %add47.i.i, ptr %tr_num_revoke46.i.i, align 4
  %tr_databuf.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 11
  %29 = ptrtoint ptr %tr_databuf.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %tr_databuf.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %30, %tr_databuf.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end29.i.i.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.end29.i.i.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tr_databuf48.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 11
  %prev.i.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 11, i32 1
  %33 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %30, ptr %32, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tr_databuf48.i.i, ptr %34, align 4
  store ptr %34, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %tr_databuf.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %tr_databuf.i.i, ptr %tr_databuf.i.i, align 4
  store ptr %tr_databuf.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end29.i.i.list_splice_tail_init.exit.i.i_crit_edge
  %tr_buf.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 12
  %39 = ptrtoint ptr %tr_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %tr_buf.i.i, align 4
  %cmp.i.not.i77.i.i = icmp eq ptr %40, %tr_buf.i.i
  br i1 %cmp.i.not.i77.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit82.i.i_crit_edge, label %if.then.i81.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit82.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit82.i.i

if.then.i81.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tr_buf49.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 12
  %prev.i78.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 12, i32 1
  %41 = ptrtoint ptr %prev.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i78.i.i, align 4
  %prev2.i.i79.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 12, i32 1
  %43 = ptrtoint ptr %prev2.i.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev2.i.i79.i.i, align 4
  %prev3.i.i80.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i80.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i80.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %42, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %tr_buf49.i.i, ptr %44, align 4
  store ptr %44, ptr %prev.i78.i.i, align 4
  %48 = ptrtoint ptr %tr_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %tr_buf.i.i, ptr %tr_buf.i.i, align 4
  store ptr %tr_buf.i.i, ptr %prev2.i.i79.i.i, align 4
  br label %list_splice_tail_init.exit82.i.i

list_splice_tail_init.exit82.i.i:                 ; preds = %if.then.i81.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit82.i.i_crit_edge
  %sd_ail_lock.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock.i.i) #9
  %tr_ail1_list.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 14
  %49 = ptrtoint ptr %tr_ail1_list.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %tr_ail1_list.i.i, align 4
  %cmp.i.not.i83.i.i = icmp eq ptr %50, %tr_ail1_list.i.i
  br i1 %cmp.i.not.i83.i.i, label %list_splice_tail_init.exit82.i.i.list_splice_tail_init.exit88.i.i_crit_edge, label %if.then.i87.i.i

list_splice_tail_init.exit82.i.i.list_splice_tail_init.exit88.i.i_crit_edge: ; preds = %list_splice_tail_init.exit82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit88.i.i

if.then.i87.i.i:                                  ; preds = %list_splice_tail_init.exit82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tr_ail1_list50.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 14
  %prev.i84.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 14, i32 1
  %51 = ptrtoint ptr %prev.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i84.i.i, align 4
  %prev2.i.i85.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 14, i32 1
  %53 = ptrtoint ptr %prev2.i.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev2.i.i85.i.i, align 4
  %prev3.i.i86.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i86.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i86.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %50, ptr %52, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %tr_ail1_list50.i.i, ptr %54, align 4
  store ptr %54, ptr %prev.i84.i.i, align 4
  %58 = ptrtoint ptr %tr_ail1_list.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %tr_ail1_list.i.i, ptr %tr_ail1_list.i.i, align 4
  store ptr %tr_ail1_list.i.i, ptr %prev2.i.i85.i.i, align 4
  br label %list_splice_tail_init.exit88.i.i

list_splice_tail_init.exit88.i.i:                 ; preds = %if.then.i87.i.i, %list_splice_tail_init.exit82.i.i.list_splice_tail_init.exit88.i.i_crit_edge
  %tr_ail2_list.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 15
  %59 = ptrtoint ptr %tr_ail2_list.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %tr_ail2_list.i.i, align 4
  %cmp.i.not.i89.i.i = icmp eq ptr %60, %tr_ail2_list.i.i
  br i1 %cmp.i.not.i89.i.i, label %list_splice_tail_init.exit88.i.i.gfs2_merge_trans.exit.i_crit_edge, label %if.then.i93.i.i

list_splice_tail_init.exit88.i.i.gfs2_merge_trans.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_merge_trans.exit.i

if.then.i93.i.i:                                  ; preds = %list_splice_tail_init.exit88.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tr_ail2_list51.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 15
  %prev.i90.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %1, i32 0, i32 15, i32 1
  %61 = ptrtoint ptr %prev.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i90.i.i, align 4
  %prev2.i.i91.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 15, i32 1
  %63 = ptrtoint ptr %prev2.i.i91.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev2.i.i91.i.i, align 4
  %prev3.i.i92.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i92.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i92.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %60, ptr %62, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %tr_ail2_list51.i.i, ptr %64, align 4
  store ptr %64, ptr %prev.i90.i.i, align 4
  %68 = ptrtoint ptr %tr_ail2_list.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %tr_ail2_list.i.i, ptr %tr_ail2_list.i.i, align 4
  store ptr %tr_ail2_list.i.i, ptr %prev2.i.i91.i.i, align 4
  br label %gfs2_merge_trans.exit.i

gfs2_merge_trans.exit.i:                          ; preds = %if.then.i93.i.i, %list_splice_tail_init.exit88.i.i.gfs2_merge_trans.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock.i.i) #9
  br label %if.end17.i

if.else.i:                                        ; preds = %entry
  %tr_num_buf_new.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 5
  %69 = ptrtoint ptr %tr_num_buf_new.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tr_num_buf_new.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool1.not.i = icmp eq i32 %70, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i, label %if.else.i.if.then3.i_crit_edge

if.else.i.if.then3.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %tr_num_databuf_new.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 6
  %71 = ptrtoint ptr %tr_num_databuf_new.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tr_num_databuf_new.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool2.not.i = icmp eq i32 %72, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end17.i_crit_edge, label %lor.lhs.false.i.if.then3.i_crit_edge

lor.lhs.false.i.if.then3.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3.i

lor.lhs.false.i.if.end17.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then3.i:                                       ; preds = %lor.lhs.false.i.if.then3.i_crit_edge, %if.else.i.if.then3.i_crit_edge
  %tr_flags.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 4
  %73 = ptrtoint ptr %tr_flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %tr_flags.i, align 4
  %75 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool4.not.i = icmp eq i32 %75, 0
  br i1 %tobool4.not.i, label %if.then3.i.if.end.i_crit_edge, label %if.then10.i, !prof !104

if.then3.i.if.end.i_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then10.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.log_refund, ptr noundef nonnull @.str.2, i32 noundef 1209, i1 noundef zeroext false) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.then3.i.if.end.i_crit_edge
  %76 = ptrtoint ptr %sd_log_tr.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %tr, ptr %sd_log_tr.i, align 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %tr_flags.i) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end.i, %lor.lhs.false.i.if.end17.i_crit_edge, %gfs2_merge_trans.exit.i
  %77 = ptrtoint ptr %sd_log_tr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sd_log_tr.i, align 8
  %tobool.not.i63.i = icmp eq ptr %78, null
  br i1 %tobool.not.i63.i, label %if.end17.i.calc_reserved.exit.i_crit_edge, label %if.then.i69.i

if.end17.i.calc_reserved.exit.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %calc_reserved.exit.i

if.then.i69.i:                                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %tr_num_buf_new.i64.i = getelementptr inbounds %struct.gfs2_trans, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %tr_num_buf_new.i64.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tr_num_buf_new.i64.i, align 4
  %tr_num_buf_rm.i65.i = getelementptr inbounds %struct.gfs2_trans, ptr %78, i32 0, i32 7
  %81 = ptrtoint ptr %tr_num_buf_rm.i65.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tr_num_buf_rm.i65.i, align 4
  %sub.i.i = sub i32 %80, %82
  %sd_ldptrs.i.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 10
  %83 = ptrtoint ptr %sd_ldptrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sd_ldptrs.i.i.i, align 8
  %add.i66.i = add i32 %84, -1
  %sub1.i.i = add i32 %add.i66.i, %sub.i.i
  %div.i.i = udiv i32 %sub1.i.i, %84
  %tr_num_databuf_new.i67.i = getelementptr inbounds %struct.gfs2_trans, ptr %78, i32 0, i32 6
  %85 = ptrtoint ptr %tr_num_databuf_new.i67.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tr_num_databuf_new.i67.i, align 4
  %tr_num_databuf_rm.i68.i = getelementptr inbounds %struct.gfs2_trans, ptr %78, i32 0, i32 8
  %87 = ptrtoint ptr %tr_num_databuf_rm.i68.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tr_num_databuf_rm.i68.i, align 4
  %sub5.i.i = sub i32 %86, %88
  %div1.i.i.i = lshr i32 %84, 1
  %add7.i.i = add nsw i32 %div1.i.i.i, -1
  %sub8.i.i = add i32 %add7.i.i, %sub5.i.i
  %div10.i.i = udiv i32 %sub8.i.i, %div1.i.i.i
  %add11.i.i = add i32 %sub.i.i, 4
  %add3.i.i = add i32 %add11.i.i, %div.i.i
  %add4.i.i = add i32 %add3.i.i, %div10.i.i
  %add12.i.i = add i32 %add4.i.i, %sub5.i.i
  br label %calc_reserved.exit.i

calc_reserved.exit.i:                             ; preds = %if.then.i69.i, %if.end17.i.calc_reserved.exit.i_crit_edge
  %reserved.0.i.i = phi i32 [ %add12.i.i, %if.then.i69.i ], [ 4, %if.end17.i.calc_reserved.exit.i_crit_edge ]
  %sd_log_blks_reserved.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 80
  %89 = ptrtoint ptr %sd_log_blks_reserved.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sd_log_blks_reserved.i, align 4
  %tr_reserved.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 3
  %91 = ptrtoint ptr %tr_reserved.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tr_reserved.i, align 4
  %add.i = add i32 %92, %90
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %reserved.0.i.i)
  %cmp.not.i = icmp ult i32 %add.i, %reserved.0.i.i
  br i1 %cmp.not.i, label %if.then30.i, label %calc_reserved.exit.i.if.end31.i_crit_edge, !prof !115

calc_reserved.exit.i.if.end31.i_crit_edge:        ; preds = %calc_reserved.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31.i

if.then30.i:                                      ; preds = %calc_reserved.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.log_refund, ptr noundef nonnull @.str.2, i32 noundef 1216, i1 noundef zeroext false) #9
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %calc_reserved.exit.i.if.end31.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %reserved.0.i.i)
  %tobool36.not.i = icmp eq i32 %add.i, %reserved.0.i.i
  br i1 %tobool36.not.i, label %if.end31.i.log_refund.exit_crit_edge, label %if.then37.i

if.end31.i.log_refund.exit_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %log_refund.exit

if.then37.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i32 %add.i, %reserved.0.i.i
  tail call void @gfs2_log_release(ptr noundef %sdp, i32 noundef %sub.i) #9
  br label %log_refund.exit

log_refund.exit:                                  ; preds = %if.then37.i, %if.end31.i.log_refund.exit_crit_edge
  %93 = ptrtoint ptr %sd_log_blks_reserved.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %reserved.0.i.i, ptr %sd_log_blks_reserved.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i.i) #9
  %sd_log_pinned = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 81
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_pinned, i32 noundef 4) #9
  %94 = ptrtoint ptr %sd_log_pinned to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %sd_log_pinned, align 4
  %sd_log_thresh1 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 86
  %call.i.i11 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh1, i32 noundef 4) #9
  %96 = ptrtoint ptr %sd_log_thresh1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %sd_log_thresh1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp = icmp sgt i32 %95, %97
  br i1 %cmp, label %log_refund.exit.if.then_crit_edge, label %lor.lhs.false

log_refund.exit.if.then_crit_edge:                ; preds = %log_refund.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %log_refund.exit
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %98 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sd_jdesc, align 4
  %jd_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %99, i32 0, i32 8
  %100 = ptrtoint ptr %jd_blocks to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %jd_blocks, align 8
  %sd_log_blks_free = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 88
  %call.i.i12 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free, i32 noundef 4) #9
  %102 = ptrtoint ptr %sd_log_blks_free to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %sd_log_blks_free, align 4
  %sub = sub i32 %101, %103
  %sd_log_thresh2 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 87
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh2, i32 noundef 4) #9
  %104 = ptrtoint ptr %sd_log_thresh2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %sd_log_thresh2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %105)
  %cmp4 = icmp ugt i32 %sub, %105
  br i1 %cmp4, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %log_refund.exit.if.then_crit_edge
  %sd_logd_waitq = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 92
  tail call void @__wake_up(ptr noundef %sd_logd_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_logd(ptr noundef %data) local_unnamed_addr #2 align 64 {
entry:
  %wbc.i = alloca %struct.writeback_control, align 8
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %call4140141 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call4140141, label %entry.while.end_crit_edge, label %while.body.lr.ph.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 4
  %sd_log_error = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 98
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 110
  %sd_log_pinned.i = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 81
  %sd_log_blks_needed.i = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 89
  %sd_log_thresh1.i = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 86
  %sd_jdesc.i = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 56
  %sd_log_blks_free.i = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 88
  %sd_log_thresh2.i = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 87
  %13 = getelementptr inbounds { i32, i32, i64, i64, i32, i8, i8, [2 x i8], ptr, ptr, i32, i32, i32, i32, i32, i32 }, ptr %wbc.i, i32 0, i32 3
  %sd_tune = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 22
  %gt_logd_secs = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 22, i32 1
  %sd_logd_waitq = getelementptr inbounds %struct.gfs2_sbd, ptr %data, i32 0, i32 92
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %do.end.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %t.0.ph142 = phi i32 [ 1, %while.body.lr.ph.lr.ph ], [ %t.2, %do.end.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %14 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %sd_flags.i, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

gfs2_withdrawn.exit:                              ; preds = %while.body
  %17 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %sd_flags.i, align 4
  %19 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.i.not = icmp eq i32 %19, 0
  br i1 %tobool3.i.not, label %if.end, label %gfs2_withdrawn.exit.if.then_crit_edge

gfs2_withdrawn.exit.if.then_crit_edge:            ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %gfs2_withdrawn.exit.if.then_crit_edge, %while.body.if.then_crit_edge
  %call6 = call i32 @msleep_interruptible(i32 noundef 100) #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then7, %if.then
  %call4 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call4, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %gfs2_withdrawn.exit
  %20 = ptrtoint ptr %sd_log_error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sd_log_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %data, ptr noundef nonnull @.str.10, ptr noundef %sd_fsname, i32 noundef %21) #9
  %call9 = call i32 @gfs2_withdraw(ptr noundef %data) #9
  br label %while.cond.backedge

if.end10:                                         ; preds = %if.end
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_pinned.i, i32 noundef 4) #9
  %22 = ptrtoint ptr %sd_log_pinned.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %sd_log_pinned.i, align 4
  %call.i.i5.i = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_needed.i, i32 noundef 4) #9
  %24 = ptrtoint ptr %sd_log_blks_needed.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %sd_log_blks_needed.i, align 4
  %add.i = add i32 %25, %23
  %call.i.i6.i = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh1.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %sd_log_thresh1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %sd_log_thresh1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %27)
  %cmp.i = icmp sge i32 %add.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0.ph142)
  %cmp = icmp eq i32 %t.0.ph142, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = call fastcc i32 @gfs2_ail1_empty(ptr noundef %data, i32 noundef 0)
  call void @gfs2_log_flush(ptr noundef %data, ptr noundef null, i32 noundef 33554434)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %28 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %jd_blocks.i, align 8
  %call.i.i.i68 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free.i, i32 noundef 4) #9
  %32 = ptrtoint ptr %sd_log_blks_free.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %sd_log_blks_free.i, align 4
  %call1.i = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %sd_flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i70 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i70, label %gfs2_ail_flush_reqd.exit, label %if.end15.if.then18_crit_edge

if.end15.if.then18_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

gfs2_ail_flush_reqd.exit:                         ; preds = %if.end15
  %sub.i = sub i32 %31, %33
  %call.i.i8.i = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_needed.i, i32 noundef 4) #9
  %34 = ptrtoint ptr %sd_log_blks_needed.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %sd_log_blks_needed.i, align 4
  %add.i72 = add i32 %sub.i, %35
  %call.i.i9.i = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh2.i, i32 noundef 4) #9
  %36 = ptrtoint ptr %sd_log_thresh2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %sd_log_thresh2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i72, i32 %37)
  %cmp.i73.not = icmp ult i32 %add.i72, %37
  br i1 %cmp.i73.not, label %gfs2_ail_flush_reqd.exit.if.end20_crit_edge, label %gfs2_ail_flush_reqd.exit.if.then18_crit_edge

gfs2_ail_flush_reqd.exit.if.then18_crit_edge:     ; preds = %gfs2_ail_flush_reqd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

gfs2_ail_flush_reqd.exit.if.end20_crit_edge:      ; preds = %gfs2_ail_flush_reqd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %gfs2_ail_flush_reqd.exit.if.then18_crit_edge, %if.end15.if.then18_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wbc.i) #9
  %38 = call ptr @memset(ptr %wbc.i, i32 0, i32 64)
  %39 = ptrtoint ptr %wbc.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2147483647, ptr %wbc.i, align 8
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 9223372036854775807, ptr %13, align 8
  call void @gfs2_ail1_flush(ptr noundef %data, ptr noundef nonnull %wbc.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wbc.i) #9
  call fastcc void @gfs2_ail1_wait(ptr noundef %data)
  %call19 = call fastcc i32 @gfs2_ail1_empty(ptr noundef %data, i32 noundef 0)
  call void @gfs2_log_flush(ptr noundef %data, ptr noundef null, i32 noundef 67108866)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %gfs2_ail_flush_reqd.exit.if.end20_crit_edge
  call void @_raw_spin_lock(ptr noundef %sd_tune) #9
  %41 = ptrtoint ptr %gt_logd_secs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %gt_logd_secs, align 4
  call void @_raw_spin_unlock(ptr noundef %sd_tune) #9
  %mul = mul i32 %42, 100
  %43 = call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 4
  %and.i75 = and i32 %48, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i75)
  %tobool.not.i76 = icmp eq i32 %and.i75, 0
  br i1 %tobool.not.i76, label %if.then.i, label %if.end20.if.end.i77_crit_edge

if.end20.if.end.i77_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i77

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  call void @debug_check_no_locks_held() #9
  br label %if.end.i77

if.end.i77:                                       ; preds = %if.then.i, %if.end20.if.end.i77_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 57) #9
  %49 = call i32 @llvm.read_register.i32(metadata !93) #9
  %and.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %53 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i, label %if.end.i77.do.body.preheader_crit_edge, label %freezing.exit.i.i, !prof !104

if.end.i77.do.body.preheader_crit_edge:           ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

freezing.exit.i.i:                                ; preds = %if.end.i77
  %call4.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %52) #9
  br i1 %call4.i.i.i, label %if.end.i.i, label %freezing.exit.i.i.do.body.preheader_crit_edge, !prof !115

freezing.exit.i.i.do.body.preheader_crit_edge:    ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

if.end.i.i:                                       ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #9
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.end.i.i, %freezing.exit.i.i.do.body.preheader_crit_edge, %if.end.i77.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %do.body.preheader
  %t.1 = phi i32 [ %t.2, %land.rhs.do.body_crit_edge ], [ %mul, %do.body.preheader ]
  call void @prepare_to_wait(ptr noundef %sd_logd_waitq, ptr noundef nonnull %wait, i32 noundef 1) #9
  %54 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_blocks.i79 = getelementptr inbounds %struct.gfs2_jdesc, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %jd_blocks.i79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %jd_blocks.i79, align 8
  %call.i.i.i81 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free.i, i32 noundef 4) #9
  %58 = ptrtoint ptr %sd_log_blks_free.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %sd_log_blks_free.i, align 4
  %call1.i83 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %sd_flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool.not.i84, label %gfs2_ail_flush_reqd.exit95, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

gfs2_ail_flush_reqd.exit95:                       ; preds = %do.body
  %sub.i85 = sub i32 %57, %59
  %call.i.i8.i87 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_needed.i, i32 noundef 4) #9
  %60 = ptrtoint ptr %sd_log_blks_needed.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %sd_log_blks_needed.i, align 4
  %add.i88 = add i32 %sub.i85, %61
  %call.i.i9.i90 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh2.i, i32 noundef 4) #9
  %62 = ptrtoint ptr %sd_log_thresh2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %sd_log_thresh2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i88, i32 %63)
  %cmp.i91.not = icmp ult i32 %add.i88, %63
  br i1 %cmp.i91.not, label %land.lhs.true, label %gfs2_ail_flush_reqd.exit95.do.cond_crit_edge

gfs2_ail_flush_reqd.exit95.do.cond_crit_edge:     ; preds = %gfs2_ail_flush_reqd.exit95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

land.lhs.true:                                    ; preds = %gfs2_ail_flush_reqd.exit95
  %call.i.i.i97 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_pinned.i, i32 noundef 4) #9
  %64 = ptrtoint ptr %sd_log_pinned.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %sd_log_pinned.i, align 4
  %call.i.i5.i99 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_needed.i, i32 noundef 4) #9
  %66 = ptrtoint ptr %sd_log_blks_needed.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %sd_log_blks_needed.i, align 4
  %add.i100 = add i32 %67, %65
  %call.i.i6.i102 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh1.i, i32 noundef 4) #9
  %68 = ptrtoint ptr %sd_log_thresh1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %sd_log_thresh1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i100, i32 %69)
  %cmp.i103.not = icmp slt i32 %add.i100, %69
  br i1 %cmp.i103.not, label %land.lhs.true28, label %land.lhs.true.do.cond_crit_edge

land.lhs.true.do.cond_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

land.lhs.true28:                                  ; preds = %land.lhs.true
  %call29 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call29, label %land.lhs.true28.do.cond_crit_edge, label %if.then30

land.lhs.true28.do.cond_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = call i32 @schedule_timeout(i32 noundef %t.1) #9
  br label %do.cond

do.cond:                                          ; preds = %if.then30, %land.lhs.true28.do.cond_crit_edge, %land.lhs.true.do.cond_crit_edge, %gfs2_ail_flush_reqd.exit95.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %t.2 = phi i32 [ %t.1, %gfs2_ail_flush_reqd.exit95.do.cond_crit_edge ], [ %t.1, %land.lhs.true.do.cond_crit_edge ], [ %t.1, %land.lhs.true28.do.cond_crit_edge ], [ %call31, %if.then30 ], [ %t.1, %do.body.do.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.2)
  %tobool33.not = icmp eq i32 %t.2, 0
  br i1 %tobool33.not, label %do.cond.do.end_crit_edge, label %land.lhs.true34

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true34:                                  ; preds = %do.cond
  %70 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_blocks.i106 = getelementptr inbounds %struct.gfs2_jdesc, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %jd_blocks.i106 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %jd_blocks.i106, align 8
  %call.i.i.i108 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_free.i, i32 noundef 4) #9
  %74 = ptrtoint ptr %sd_log_blks_free.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %sd_log_blks_free.i, align 4
  %call1.i110 = call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %sd_flags.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i110)
  %tobool.not.i111 = icmp eq i32 %call1.i110, 0
  br i1 %tobool.not.i111, label %gfs2_ail_flush_reqd.exit122, label %land.lhs.true34.do.end_crit_edge

land.lhs.true34.do.end_crit_edge:                 ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

gfs2_ail_flush_reqd.exit122:                      ; preds = %land.lhs.true34
  %sub.i112 = sub i32 %73, %75
  %call.i.i8.i114 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_needed.i, i32 noundef 4) #9
  %76 = ptrtoint ptr %sd_log_blks_needed.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %sd_log_blks_needed.i, align 4
  %add.i115 = add i32 %sub.i112, %77
  %call.i.i9.i117 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh2.i, i32 noundef 4) #9
  %78 = ptrtoint ptr %sd_log_thresh2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %sd_log_thresh2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i115, i32 %79)
  %cmp.i118.not = icmp ult i32 %add.i115, %79
  br i1 %cmp.i118.not, label %land.lhs.true37, label %gfs2_ail_flush_reqd.exit122.do.end_crit_edge

gfs2_ail_flush_reqd.exit122.do.end_crit_edge:     ; preds = %gfs2_ail_flush_reqd.exit122
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true37:                                  ; preds = %gfs2_ail_flush_reqd.exit122
  %call.i.i.i124 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_pinned.i, i32 noundef 4) #9
  %80 = ptrtoint ptr %sd_log_pinned.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %sd_log_pinned.i, align 4
  %call.i.i5.i126 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_blks_needed.i, i32 noundef 4) #9
  %82 = ptrtoint ptr %sd_log_blks_needed.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %sd_log_blks_needed.i, align 4
  %add.i127 = add i32 %83, %81
  %call.i.i6.i129 = call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_thresh1.i, i32 noundef 4) #9
  %84 = ptrtoint ptr %sd_log_thresh1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %sd_log_thresh1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i127, i32 %85)
  %cmp.i130.not = icmp slt i32 %add.i127, %85
  br i1 %cmp.i130.not, label %land.rhs, label %land.lhs.true37.do.end_crit_edge

land.lhs.true37.do.end_crit_edge:                 ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.rhs:                                         ; preds = %land.lhs.true37
  %call40 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call40, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %land.lhs.true37.do.end_crit_edge, %gfs2_ail_flush_reqd.exit122.do.end_crit_edge, %land.lhs.true34.do.end_crit_edge, %do.cond.do.end_crit_edge
  call void @finish_wait(ptr noundef %sd_logd_waitq, ptr noundef nonnull %wait) #9
  %call4140 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call4140, label %do.end.while.end_crit_edge, label %do.end.while.body.lr.ph_crit_edge

do.end.while.body.lr.ph_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_ail1_wait(ptr noundef %sdp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_ail_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock) #9
  %sd_ail1_list = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105
  %prev = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 105, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn41 = load ptr, ptr %prev, align 4
  %cmp.not42 = icmp eq ptr %.pn41, %sd_ail1_list
  br i1 %cmp.not42, label %entry.for.end22_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22

for.body:                                         ; preds = %for.inc16.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn43 = phi ptr [ %.pn, %for.inc16.for.body_crit_edge ], [ %.pn41, %entry.for.body_crit_edge ]
  %tr_ail1_list = getelementptr i8, ptr %.pn43, i32 28
  br label %for.cond5

for.cond5:                                        ; preds = %for.body9.for.cond5_crit_edge, %for.body
  %.pn38.in = phi ptr [ %tr_ail1_list, %for.body ], [ %.pn38, %for.body9.for.cond5_crit_edge ]
  %1 = ptrtoint ptr %.pn38.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn38 = load ptr, ptr %.pn38.in, align 4
  %cmp7.not = icmp eq ptr %.pn38, %tr_ail1_list
  br i1 %cmp7.not, label %for.inc16, label %for.body9

for.body9:                                        ; preds = %for.cond5
  %bd.0 = getelementptr i8, ptr %.pn38, i32 -28
  %2 = ptrtoint ptr %bd.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd.0, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 4
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %for.body9.for.cond5_crit_edge, label %if.end

for.body9.for.cond5_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5

if.end:                                           ; preds = %for.body9
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #9, !srcloc !114
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.35, i32 noundef 354) #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %3, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.wait_on_buffer.exit_crit_edge, label %if.then.i

if.end.wait_on_buffer.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_on_buffer.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__wait_on_buffer(ptr noundef %3) #9
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i, %if.end.wait_on_buffer.exit_crit_edge
  %tobool.not.i39 = icmp eq ptr %3, null
  br i1 %tobool.not.i39, label %wait_on_buffer.exit.cleanup_crit_edge, label %if.then.i40

wait_on_buffer.exit.cleanup_crit_edge:            ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i40:                                      ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__brelse(ptr noundef nonnull %3) #9
  br label %cleanup

for.inc16:                                        ; preds = %for.cond5
  %prev19 = getelementptr inbounds %struct.list_head, ptr %.pn43, i32 0, i32 1
  %11 = ptrtoint ptr %prev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %prev19, align 4
  %cmp.not = icmp eq ptr %.pn, %sd_ail1_list
  br i1 %cmp.not, label %for.inc16.for.end22_crit_edge, label %for.inc16.for.body_crit_edge

for.inc16.for.body_crit_edge:                     ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc16.for.end22_crit_edge:                    ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22

for.end22:                                        ; preds = %for.inc16.for.end22_crit_edge, %entry.for.end22_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end22, %if.then.i40, %wait_on_buffer.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gfs2_ail_flush(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_i(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_io_error_bh_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_writepages(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gfs2_log_blocks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gfs2_log_flush(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip_cmp(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_no_addr = getelementptr i8, ptr %a, i32 -252
  %0 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_no_addr, align 8
  %i_no_addr4 = getelementptr i8, ptr %b, i32 -252
  %2 = ptrtoint ptr %i_no_addr4 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_no_addr4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ult i64 %1, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp7 = icmp ugt i64 %1, %3
  %. = zext i1 %cmp7 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_incr_head(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @log_pull_tail(ptr noundef %sdp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_flush_tail = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 101
  %0 = ptrtoint ptr %sd_log_flush_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_log_flush_tail, align 8
  %sd_log_tail = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 100
  %2 = ptrtoint ptr %sd_log_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_log_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.log_distance.exit_crit_edge

if.end.log_distance.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %log_distance.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sd_jdesc.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %4 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_jdesc.i, align 4
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %jd_blocks.i, align 8
  %add.i = add i32 %7, %sub.i
  br label %log_distance.exit

log_distance.exit:                                ; preds = %if.then.i, %if.end.log_distance.exit_crit_edge
  %dist.0.i = phi i32 [ %add.i, %if.then.i ], [ %sub.i, %if.end.log_distance.exit_crit_edge ]
  %sd_ail2_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 106
  %sd_ail_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp ult i32 %1, %3
  %8 = ptrtoint ptr %sd_ail2_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_ail2_list.i, align 4
  %cmp27.not84.i = icmp eq ptr %9, %sd_ail2_list.i
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i14

if.then.i14:                                      ; preds = %log_distance.exit
  br i1 %cmp27.not84.i, label %if.then.i14.ail2_empty.exit_crit_edge, label %if.then.i14.for.body.i_crit_edge

if.then.i14.for.body.i_crit_edge:                 ; preds = %if.then.i14
  br label %for.body.i

if.then.i14.ail2_empty.exit_crit_edge:            ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %ail2_empty.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.i14.for.body.i_crit_edge
  %.pn71.in79.i = phi ptr [ %.pn7181.i, %for.inc.i.for.body.i_crit_edge ], [ %9, %if.then.i14.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %.pn71.in79.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn7181.i = load ptr, ptr %.pn71.in79.i, align 4
  %tr_first.i = getelementptr i8, ptr %.pn71.in79.i, i32 24
  %11 = ptrtoint ptr %tr_first.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tr_first.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %12)
  %cmp7.not.i = icmp ule i32 %3, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %1)
  %cmp9.i = icmp ult i32 %12, %1
  %or.cond.i = and i1 %cmp7.not.i, %cmp9.i
  br i1 %or.cond.i, label %if.then10.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %tr.080.i = getelementptr i8, ptr %.pn71.in79.i, i32 -40
  tail call fastcc void @__ail2_empty(ptr noundef %sdp, ptr noundef %tr.080.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.i.for.inc.i_crit_edge
  %cmp6.not.i = icmp eq ptr %.pn7181.i, %sd_ail2_list.i
  br i1 %cmp6.not.i, label %for.inc.i.ail2_empty.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.ail2_empty.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ail2_empty.exit

if.else.i:                                        ; preds = %log_distance.exit
  br i1 %cmp27.not84.i, label %if.else.i.ail2_empty.exit_crit_edge, label %if.else.i.for.body29.i_crit_edge

if.else.i.for.body29.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body29.i

if.else.i.ail2_empty.exit_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ail2_empty.exit

for.body29.i:                                     ; preds = %for.inc36.i.for.body29.i_crit_edge, %if.else.i.for.body29.i_crit_edge
  %.pn.in85.i = phi ptr [ %.pn87.i, %for.inc36.i.for.body29.i_crit_edge ], [ %9, %if.else.i.for.body29.i_crit_edge ]
  %13 = ptrtoint ptr %.pn.in85.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn87.i = load ptr, ptr %.pn.in85.i, align 4
  %tr_first30.i = getelementptr i8, ptr %.pn.in85.i, i32 24
  %14 = ptrtoint ptr %tr_first30.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tr_first30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %15)
  %cmp31.not.i = icmp ule i32 %3, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp33.i = icmp ult i32 %15, %1
  %or.cond74.i = or i1 %cmp31.not.i, %cmp33.i
  br i1 %or.cond74.i, label %if.then34.i, label %for.body29.i.for.inc36.i_crit_edge

for.body29.i.for.inc36.i_crit_edge:               ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc36.i

if.then34.i:                                      ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #11
  %tr.186.i = getelementptr i8, ptr %.pn.in85.i, i32 -40
  tail call fastcc void @__ail2_empty(ptr noundef %sdp, ptr noundef %tr.186.i) #9
  br label %for.inc36.i

for.inc36.i:                                      ; preds = %if.then34.i, %for.body29.i.for.inc36.i_crit_edge
  %cmp27.not.i = icmp eq ptr %.pn87.i, %sd_ail2_list.i
  br i1 %cmp27.not.i, label %for.inc36.i.ail2_empty.exit_crit_edge, label %for.inc36.i.for.body29.i_crit_edge

for.inc36.i.for.body29.i_crit_edge:               ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body29.i

for.inc36.i.ail2_empty.exit_crit_edge:            ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ail2_empty.exit

ail2_empty.exit:                                  ; preds = %for.inc36.i.ail2_empty.exit_crit_edge, %if.else.i.ail2_empty.exit_crit_edge, %for.inc.i.ail2_empty.exit_crit_edge, %if.then.i14.ail2_empty.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock.i) #9
  tail call void @gfs2_log_release(ptr noundef %sdp, i32 noundef %dist.0.i)
  %16 = ptrtoint ptr %sd_log_tail to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %1, ptr %sd_log_tail, align 4
  br label %cleanup

cleanup:                                          ; preds = %ail2_empty.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ail2_empty(ptr noundef %sdp, ptr noundef %tr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tr_ail2_list = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 15
  %0 = ptrtoint ptr %tr_ail2_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tr_ail2_list, align 4
  %cmp.i.not13.i = icmp eq ptr %1, %tr_ail2_list
  br i1 %cmp.i.not13.i, label %entry.gfs2_ail_empty_tr.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.gfs2_ail_empty_tr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ail_empty_tr.exit

while.body.i:                                     ; preds = %do.end10.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %6, %do.end10.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %bd_tr.i = getelementptr i8, ptr %2, i32 -4
  %3 = ptrtoint ptr %bd_tr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_tr.i, align 8
  %cmp.not.i = icmp eq ptr %4, %tr
  br i1 %cmp.not.i, label %do.end10.i, label %if.then.i, !prof !104

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_i(ptr noundef %sdp) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/log.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #9, !srcloc !131
  unreachable

do.end10.i:                                       ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %2, i32 -28
  tail call void @gfs2_remove_from_ail(ptr noundef %add.ptr.i) #9
  %5 = ptrtoint ptr %tr_ail2_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %tr_ail2_list, align 4
  %cmp.i.not.i = icmp eq ptr %6, %tr_ail2_list
  br i1 %cmp.i.not.i, label %do.end10.i.gfs2_ail_empty_tr.exit_crit_edge, label %do.end10.i.while.body.i_crit_edge

do.end10.i.while.body.i_crit_edge:                ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.end10.i.gfs2_ail_empty_tr.exit_crit_edge:      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gfs2_ail_empty_tr.exit

gfs2_ail_empty_tr.exit:                           ; preds = %do.end10.i.gfs2_ail_empty_tr.exit_crit_edge, %entry.gfs2_ail_empty_tr.exit_crit_edge
  %tr_list = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tr_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %gfs2_ail_empty_tr.exit.list_del.exit_crit_edge

gfs2_ail_empty_tr.exit.list_del.exit_crit_edge:   ; preds = %gfs2_ail_empty_tr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %gfs2_ail_empty_tr.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %tr_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tr_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %gfs2_ail_empty_tr.exit.list_del.exit_crit_edge
  %13 = ptrtoint ptr %tr_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %tr_list, align 4
  %prev.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tr_ail1_list = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 14
  %15 = ptrtoint ptr %tr_ail1_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %tr_ail1_list, align 4
  %cmp.i.not = icmp eq ptr %16, %tr_ail1_list
  br i1 %cmp.i.not, label %list_del.exit.if.end_crit_edge, label %if.then, !prof !104

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.__ail2_empty, ptr noundef nonnull @.str.2, i32 noundef 401) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %17 = ptrtoint ptr %tr_ail2_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %tr_ail2_list, align 4
  %cmp.i38.not = icmp eq ptr %18, %tr_ail2_list
  br i1 %cmp.i38.not, label %if.end.if.end23_crit_edge, label %if.then22, !prof !104

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.__ail2_empty, ptr noundef nonnull @.str.2, i32 noundef 402) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end.if.end23_crit_edge
  tail call void @gfs2_trans_free(ptr noundef %sdp, ptr noundef %tr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_warn_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !53, !55, !57, !58, !60, !61, !63, !64, !66, !68, !69, !70, !71, !73, !74, !76, !78, !80, !81, !83, !85, !87, !89, !91}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/log.c", i32 206, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gfs2_ail1_flush._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gfs2_ail1_flush._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/gfs2/log.c", i32 225, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/gfs2/log.c", i32 473, i32 2}
!10 = !{ptr @__func__.gfs2_log_release, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/gfs2/log.c", i32 866, i32 7}
!13 = !{ptr @__func__.gfs2_write_log_header, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/gfs2/log.c", i32 1063, i32 9}
!16 = !{ptr @__func__.gfs2_log_flush, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/gfs2/log.c", i32 1088, i32 7}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/gfs2/log.c", i32 1139, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/gfs2/log.c", i32 1144, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/gfs2/log.c", i32 1310, i32 5}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/gfs2/trace_gfs2.h", i32 401, i32 1}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/gfs2/log.c", i32 161, i32 4}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @dump_ail_list._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @dump_ail_list._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/gfs2/log.c", i32 164, i32 5}
!40 = !{ptr @dump_ail_list._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dump_ail_list._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/gfs2/log.c", i32 167, i32 4}
!44 = !{ptr @dump_ail_list._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dump_ail_list._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__func__.gfs2_ail1_start_one, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/gfs2/log.c", i32 115, i32 5}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../fs/gfs2/trace_gfs2.h", i32 378, i32 1}
!50 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/gfs2/log.c", i32 368, i32 16}
!53 = !{ptr @__func__.gfs2_ail1_empty_one, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/gfs2/log.c", i32 323, i32 4}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../fs/gfs2/trace_gfs2.h", i32 350, i32 1}
!57 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/gfs2/log.c", i32 911, i32 2}
!60 = !{ptr @__func__.log_write_header, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/gfs2/log.c", i32 401, i32 2}
!63 = !{ptr @__func__.__ail2_empty, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/gfs2/log.c", i32 402, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/gfs2/log.c", i32 973, i32 4}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @empty_ail1_list._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @empty_ail1_list._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../fs/gfs2/log.c", i32 1209, i32 3}
!73 = !{ptr @__func__.log_refund, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/gfs2/log.c", i32 1216, i32 2}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../fs/gfs2/log.c", i32 1180, i32 2}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/gfs2/log.c", i32 1258, i32 2}
!80 = !{ptr @__func__.gfs2_log_shutdown, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/gfs2/log.c", i32 1259, i32 2}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../fs/gfs2/log.c", i32 1260, i32 2}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/gfs2/log.c", i32 1265, i32 2}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../fs/gfs2/log.c", i32 1266, i32 2}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/buffer_head.h", i32 354, i32 2}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 2148457579, i64 2148457605, i64 2148457634, i64 2148457668, i64 2148457699, i64 2148457722}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{i64 2155532250, i64 2155532728, i64 2155532287, i64 2155532343, i64 2155532377, i64 2155532401, i64 2155532442, i64 2155532463, i64 2155532491, i64 2155532525}
!106 = !{i64 2155534496}
!107 = !{i64 964606, i64 964627, i64 964650, i64 964669, i64 964688}
!108 = !{i64 2155534899}
!109 = !{i64 2148268507, i64 2148268512, i64 2148268525, i64 2148268569, i64 2148268603, i64 2148268624}
!110 = !{i64 2155422122}
!111 = !{i64 2155422343}
!112 = !{i64 2149291187}
!113 = !{i64 2149292223}
!114 = !{i64 2148455114, i64 2148455140, i64 2148455169, i64 2148455203, i64 2148455234, i64 2148455257}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{i64 2155405217}
!117 = !{i64 2155405432}
!118 = !{i64 2148556937}
!119 = !{i64 940627, i64 940651, i64 940672, i64 940689, i64 940706}
!120 = !{i64 2148557163}
!121 = !{!"auto-init"}
!122 = !{i64 2148543566}
!123 = !{i64 2148458299, i64 2148458331, i64 2148458360, i64 2148458394, i64 2148458425, i64 2148458448}
!124 = !{i64 2148543795}
!125 = !{i64 2148540525}
!126 = !{i64 2148455834, i64 2148455866, i64 2148455895, i64 2148455929, i64 2148455960, i64 2148455983}
!127 = !{i64 2148540754}
!128 = !{i64 2155570540, i64 2155571018, i64 2155570577, i64 2155570633, i64 2155570667, i64 2155570691, i64 2155570732, i64 2155570753, i64 2155570781, i64 2155570815}
!129 = !{i64 2155572786}
!130 = !{i64 2155573189}
!131 = !{i64 2155563600, i64 2155564078, i64 2155563637, i64 2155563693, i64 2155563727, i64 2155563751, i64 2155563792, i64 2155563813, i64 2155563841, i64 2155563875}
!132 = !{i64 2155624044, i64 2155624523, i64 2155624081, i64 2155624137, i64 2155624171, i64 2155624195, i64 2155624236, i64 2155624257, i64 2155624285, i64 2155624319}
!133 = !{i64 2155388800}
!134 = !{i64 2155389025}
