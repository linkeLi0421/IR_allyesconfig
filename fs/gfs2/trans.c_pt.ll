; ModuleID = '/llk/IR_all_yes/fs/gfs2/trans.c_pt.bc'
source_filename = "../fs/gfs2/trans.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gfs2_sbd = type { ptr, ptr, %struct.kobject, %struct.completion, i32, %struct.gfs2_sb_host, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64], i32, %struct.gfs2_args, %struct.gfs2_tune, %struct.lm_lockstruct, %struct.gfs2_holder, ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.completion, %struct.completion, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32, %struct.spinlock, %struct.rb_root, i32, i32, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.gfs2_holder, %struct.gfs2_holder, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.completion, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, ptr, %struct.spinlock, i64, %struct.address_space, %struct.spinlock, ptr, i32, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, i64, i32, %struct.rw_semaphore, %struct.atomic_t, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.gfs2_holder, %struct.atomic_t, %struct.mutex, [270 x i8], [256 x i8], [256 x i8], i32, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.gfs2_sb_host = type { i32, i32, i32, i32, i32, i32, %struct.gfs2_inum_host, %struct.gfs2_inum_host, [64 x i8], [64 x i8] }
%struct.gfs2_inum_host = type { i64, i64 }
%struct.gfs2_args = type { [64 x i8], [64 x i8], [64 x i8], i24, i32, i32, i32, i32 }
%struct.gfs2_tune = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lm_lockstruct = type { i32, i32, ptr, ptr, i32, i32, %struct.dlm_lksb, %struct.dlm_lksb, [32 x i8], %struct.completion, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.gfs2_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
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
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.82, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.anon.82 = type { %struct.delayed_work, i64 }
%struct.rhash_head = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.gfs2_bufdata = type { ptr, ptr, i64, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.83 }
%union.anon.83 = type { i32 }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"tr->tr_reserved <= sdp->sd_jdesc->jd_blocks\00", [52 x i8] zeroinitializer }, align 32
@__func__.__gfs2_trans_begin = private unnamed_addr constant [19 x i8] c"__gfs2_trans_begin\00", align 1
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/gfs2/trans.c\00", [16 x i8] zeroinitializer }, align 32
@gfs2_trans_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nbuf <= tr->tr_blocks\00", [42 x i8] zeroinitializer }, align 32
@__func__.gfs2_trans_end = private unnamed_addr constant [15 x i8] c"gfs2_trans_end\00", align 1
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tr->tr_num_revoke <= tr->tr_revokes\00", [60 x i8] zeroinitializer }, align 32
@gfs2_trans_add_meta._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.1, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013gfs2: fsid=%s: Attempting to add uninitialised block to journal (inplace block=%lld)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gfs2_trans_add_meta\00", [44 x i8] zeroinitializer }, align 32
@gfs2_trans_add_meta._entry_ptr = internal global ptr @gfs2_trans_add_meta._entry, section ".printk_index", align 4
@gfs2_trans_add_meta._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.1, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016gfs2: fsid=%s: GFS2:adding buf while frozen\0A\00", [49 x i8] zeroinitializer }, align 32
@gfs2_trans_add_meta._entry_ptr.8 = internal global ptr @gfs2_trans_add_meta._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@gfs2_trans_add_meta._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.1, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016gfs2: fsid=%s: GFS2:adding buf while withdrawn! 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@gfs2_trans_add_meta._entry_ptr.12 = internal global ptr @gfs2_trans_add_meta._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sdp->sd_log_num_revoke\00", [41 x i8] zeroinitializer }, align 32
@__func__.gfs2_trans_remove_revoke = private unnamed_addr constant [25 x i8] c"gfs2_trans_remove_revoke\00", align 1
@gfs2_bufdata_cachep = external dso_local local_unnamed_addr global ptr, align 4
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"list_empty(&tr->tr_ail1_list)\00", [34 x i8] zeroinitializer }, align 32
@__func__.gfs2_trans_free = private unnamed_addr constant [16 x i8] c"gfs2_trans_free\00", align 1
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"list_empty(&tr->tr_ail2_list)\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"list_empty(&tr->tr_databuf)\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"list_empty(&tr->tr_buf)\00", [40 x i8] zeroinitializer }, align 32
@gfs2_print_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.1, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014gfs2: fsid=%s: Transaction created at: %pSR\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gfs2_print_trans\00", [47 x i8] zeroinitializer }, align 32
@gfs2_print_trans._entry_ptr = internal global ptr @gfs2_print_trans._entry, section ".printk_index", align 4
@gfs2_print_trans._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.1, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014gfs2: fsid=%s: blocks=%u revokes=%u reserved=%u touched=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@gfs2_print_trans._entry_ptr.22 = internal global ptr @gfs2_print_trans._entry.20, section ".printk_index", align 4
@gfs2_print_trans._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.1, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014gfs2: fsid=%s: Buf %u/%u Databuf %u/%u Revoke %u\0A\00", [44 x i8] zeroinitializer }, align 32
@gfs2_print_trans._entry_ptr.25 = internal global ptr @gfs2_print_trans._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/pagemap.h\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 73, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 147, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 148, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 265, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 271, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 272, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 275, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 308, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 326, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 327, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 328, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 329, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 30, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 31, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private constant [19 x i8] c"../fs/gfs2/trans.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 34, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 49, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 34, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 366, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 788, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 260, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @gfs2_print_trans._entry, ptr @gfs2_print_trans._entry.20, ptr @gfs2_print_trans._entry.23, ptr @gfs2_print_trans._entry_ptr, ptr @gfs2_print_trans._entry_ptr.22, ptr @gfs2_print_trans._entry_ptr.25, ptr @gfs2_trans_add_meta._entry, ptr @gfs2_trans_add_meta._entry.10, ptr @gfs2_trans_add_meta._entry.6, ptr @gfs2_trans_add_meta._entry_ptr, ptr @gfs2_trans_add_meta._entry_ptr.12, ptr @gfs2_trans_add_meta._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_trans_add_meta._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_trans_add_meta._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_trans_add_meta._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_print_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_print_trans._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_print_trans._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__gfs2_trans_begin(ptr noundef %tr, ptr noundef %sdp, i32 noundef %blocks, i32 noundef %revokes, i32 noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %extra_revokes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra_revokes) #8
  %0 = ptrtoint ptr %extra_revokes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %extra_revokes, align 4, !annotation !73
  %1 = tail call i32 @llvm.read_register.i32(metadata !63) #8
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
  br i1 %tobool.not, label %do.body7, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @gfs2_print_trans(ptr noundef %sdp, ptr noundef nonnull %6)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/trans.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 48, 0\0A.popsection", ""() #8, !srcloc !74
  unreachable

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocks)
  %cmp = icmp eq i32 %blocks, 0
  %7 = or i32 %revokes, %blocks
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %do.body12, label %do.end20, !prof !75

do.body12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/trans.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #8, !srcloc !76
  unreachable

do.end20:                                         ; preds = %do.body7
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %9 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sd_flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool22.not = icmp eq i32 %11, 0
  br i1 %tobool22.not, label %do.end20.cleanup_crit_edge, label %if.end24

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %do.end20
  %12 = ptrtoint ptr %tr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ip, ptr %tr, align 4
  %tr_blocks = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 1
  %13 = ptrtoint ptr %tr_blocks to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %blocks, ptr %tr_blocks, align 4
  %tr_revokes = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 2
  %14 = ptrtoint ptr %tr_revokes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %revokes, ptr %tr_revokes, align 4
  %tr_reserved = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 3
  %15 = ptrtoint ptr %tr_reserved to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %tr_reserved, align 4
  br i1 %cmp, label %if.end24.if.end34_crit_edge, label %if.then26

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %sd_ldptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 10
  %16 = ptrtoint ptr %sd_ldptrs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sd_ldptrs.i, align 8
  %div1.i = lshr i32 %17, 1
  %add28 = add i32 %blocks, -2
  %sub29 = add i32 %add28, %div1.i
  %div = udiv i32 %sub29, %div1.i
  %add31 = add i32 %blocks, 5
  %add33 = add i32 %add31, %div
  %18 = ptrtoint ptr %tr_reserved to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add33, ptr %tr_reserved, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %if.end24.if.end34_crit_edge
  %tr_databuf = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 11
  %19 = ptrtoint ptr %tr_databuf to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %tr_databuf, ptr %tr_databuf, align 4
  %prev.i = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tr_databuf, ptr %prev.i, align 4
  %tr_buf = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 12
  %21 = ptrtoint ptr %tr_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %tr_buf, ptr %tr_buf, align 4
  %prev.i121 = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 12, i32 1
  %22 = ptrtoint ptr %prev.i121 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tr_buf, ptr %prev.i121, align 4
  %tr_list = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 10
  %23 = ptrtoint ptr %tr_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %tr_list, ptr %tr_list, align 4
  %prev.i122 = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i122 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tr_list, ptr %prev.i122, align 4
  %tr_ail1_list = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 14
  %25 = ptrtoint ptr %tr_ail1_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %tr_ail1_list, ptr %tr_ail1_list, align 4
  %prev.i123 = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 14, i32 1
  %26 = ptrtoint ptr %prev.i123 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tr_ail1_list, ptr %prev.i123, align 4
  %tr_ail2_list = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 15
  %27 = ptrtoint ptr %tr_ail2_list to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %tr_ail2_list, ptr %tr_ail2_list, align 4
  %prev.i124 = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 15, i32 1
  %28 = ptrtoint ptr %prev.i124 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tr_ail2_list, ptr %prev.i124, align 4
  %29 = ptrtoint ptr %tr_reserved to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tr_reserved, align 4
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %31 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sd_jdesc, align 4
  %jd_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %jd_blocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %jd_blocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %34)
  %cmp36.not = icmp ugt i32 %30, %34
  br i1 %cmp36.not, label %if.then46, label %if.end53, !prof !75

if.then46:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.__gfs2_trans_begin, ptr noundef nonnull @.str.1, i32 noundef 73) #8
  br label %cleanup

if.end53:                                         ; preds = %if.end34
  %35 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sdp, align 8
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %36, i32 0, i32 32, i32 2, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.26, i32 noundef 49) #8
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %36, i32 0, i32 32, i32 2, i32 2, i32 5
  %37 = tail call ptr @llvm.returnaddress(i32 0) #8
  %38 = ptrtoint ptr %37 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %38) #8
  %39 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !77
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end53.rcu_sync_is_idle.exit.i.i.i_crit_edge

if.end53.rcu_sync_is_idle.exit.i.i.i_crit_edge:   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end53
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 35, ptr noundef nonnull @.str.28) #8
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %if.end53.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %43 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool7.not.i.i.i.i = icmp eq i32 %44, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !78

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !79
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %36, i32 0, i32 32, i32 2, i32 2, i32 1
  %46 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_count.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %54, %48
  %55 = inttoptr i32 %add.i.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add21.i.i.i = add i32 %57, 1
  store i32 %add21.i.i.i, ptr %55, align 4
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !80
  %and.i.i.i.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !75

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #8, !srcloc !81
  br label %sb_start_intwrite.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #8
  br label %sb_start_intwrite.exit

sb_start_intwrite.exit:                           ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %59 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i58.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  %sd_log_flush_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 95
  tail call void @down_read(ptr noundef %sd_log_flush_lock) #8
  %call54 = call zeroext i1 @gfs2_log_try_reserve(ptr noundef %sdp, ptr noundef %tr, ptr noundef nonnull %extra_revokes) #8
  br i1 %call54, label %sb_start_intwrite.exit.reserved_crit_edge, label %if.end56

sb_start_intwrite.exit.reserved_crit_edge:        ; preds = %sb_start_intwrite.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %reserved

if.end56:                                         ; preds = %sb_start_intwrite.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_read(ptr noundef %sd_log_flush_lock) #8
  call void @gfs2_log_reserve(ptr noundef %sdp, ptr noundef %tr, ptr noundef nonnull %extra_revokes) #8
  call void @down_read(ptr noundef %sd_log_flush_lock) #8
  br label %reserved

reserved:                                         ; preds = %if.end56, %sb_start_intwrite.exit.reserved_crit_edge
  %63 = ptrtoint ptr %extra_revokes to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %extra_revokes, align 4
  call void @gfs2_log_release_revokes(ptr noundef %sdp, i32 noundef %64) #8
  %65 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %sd_flags, align 4
  %67 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool61.not = icmp eq i32 %67, 0
  br i1 %tobool61.not, label %if.then70, label %if.end75, !prof !75

if.then70:                                        ; preds = %reserved
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %tr_revokes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tr_revokes, align 4
  call void @gfs2_log_release_revokes(ptr noundef %sdp, i32 noundef %69) #8
  call void @up_read(ptr noundef %sd_log_flush_lock) #8
  %70 = ptrtoint ptr %tr_reserved to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tr_reserved, align 4
  call void @gfs2_log_release(ptr noundef %sdp, i32 noundef %71) #8
  %72 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sdp, align 8
  call fastcc void @sb_end_intwrite(ptr noundef %73)
  br label %cleanup

if.end75:                                         ; preds = %reserved
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %task, align 8
  %journal_info78 = getelementptr inbounds %struct.task_struct, ptr %75, i32 0, i32 146
  %76 = ptrtoint ptr %journal_info78 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %tr, ptr %journal_info78, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.then70, %if.then46, %do.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then46 ], [ -30, %if.then70 ], [ 0, %if.end75 ], [ -30, %do.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra_revokes) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_print_trans(ptr noundef %sdp, ptr noundef %tr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %0 = ptrtoint ptr %tr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tr, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %sd_fsname, ptr noundef %2) #11
  %tr_blocks = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 1
  %3 = ptrtoint ptr %tr_blocks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tr_blocks, align 4
  %tr_revokes = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 2
  %5 = ptrtoint ptr %tr_revokes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tr_revokes, align 4
  %tr_reserved = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 3
  %7 = ptrtoint ptr %tr_reserved to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tr_reserved, align 4
  %tr_flags = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 4
  %9 = ptrtoint ptr %tr_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %tr_flags, align 4
  %shr.i = lshr i32 %10, 1
  %and1.i = and i32 %shr.i, 1
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %sd_fsname, i32 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %and1.i) #11
  %tr_num_buf_new = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 5
  %11 = ptrtoint ptr %tr_num_buf_new to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tr_num_buf_new, align 4
  %tr_num_buf_rm = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 7
  %13 = ptrtoint ptr %tr_num_buf_rm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tr_num_buf_rm, align 4
  %tr_num_databuf_new = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 6
  %15 = ptrtoint ptr %tr_num_databuf_new to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tr_num_databuf_new, align 4
  %tr_num_databuf_rm = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 8
  %17 = ptrtoint ptr %tr_num_databuf_rm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tr_num_databuf_rm, align 4
  %tr_num_revoke = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 9
  %19 = ptrtoint ptr %tr_num_revoke to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tr_num_revoke, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %sd_fsname, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_warn_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gfs2_log_try_reserve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_reserve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_release_revokes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sb_end_intwrite(ptr noundef %sb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr1.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2
  %dep_map.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0) #8
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %1) #8
  %2 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !83
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.27, i32 noundef 35, ptr noundef nonnull @.str.28) #8
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i_crit_edge
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %do.end49.i.i, !prof !78

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !79
  %read_count.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %9 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add17.i.i = add i32 %20, -1
  store i32 %add17.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !80
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then37.i.i, label %do.body3.i.i.do.end39.i.i_crit_edge, !prof !75

do.body3.i.i.do.end39.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i.i

if.then37.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then37.i.i, %do.body3.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #8, !srcloc !81
  br label %__sb_end_write.exit

do.end49.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !84
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !79
  %read_count75.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 1
  %23 = ptrtoint ptr %read_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_count75.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i122.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i122.i.i to ptr
  %cpu78.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu78.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu78.i.i, align 4
  %arrayidx79.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx79.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx79.i.i, align 4
  %add80.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add80.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add81.i.i = add i32 %34, -1
  store i32 %add81.i.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !80
  %and.i.i123.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i)
  %tobool92.not.i.i = icmp eq i32 %and.i.i123.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then101.i.i, label %do.end49.i.i.do.end104.i.i_crit_edge, !prof !75

do.end49.i.i.do.end104.i.i_crit_edge:             ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.end49.i.i.do.end104.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #8, !srcloc !81
  %writer.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 2, i32 2
  %call111.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i) #8
  br label %__sb_end_write.exit

__sb_end_write.exit:                              ; preds = %do.end104.i.i, %do.end39.i.i
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !85
  %36 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i.i.i120.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i120.i.i to ptr
  %preempt_count.i.i121.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i121.i.i, align 4
  %sub.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i121.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_trans_begin(ptr noundef %sdp, i32 noundef %blocks, i32 noundef %revokes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_trans_cachep to i32))
  %0 = load ptr, ptr @gfs2_trans_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3392) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  %call1 = tail call i32 @__gfs2_trans_begin(ptr noundef nonnull %call.i, ptr noundef %sdp, i32 noundef %blocks, i32 noundef %revokes, i32 noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_trans_cachep to i32))
  %3 = load ptr, ptr @gfs2_trans_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_trans_end(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #8
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
  store ptr null, ptr %journal_info, align 4
  %tr_flags = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %tr_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %tr_flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %tr_revokes = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %tr_revokes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tr_revokes, align 4
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  tail call void @gfs2_log_release_revokes(ptr noundef %sdp, i32 noundef %10) #8
  %sd_log_flush_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 95
  tail call void @up_read(ptr noundef %sd_log_flush_lock) #8
  %tr_reserved = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %tr_reserved to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tr_reserved, align 4
  tail call void @gfs2_log_release(ptr noundef %sdp, i32 noundef %12) #8
  %13 = ptrtoint ptr %tr_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tr_flags, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.then8, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_trans_free(ptr noundef %sdp, ptr noundef %5)
  br label %cleanup

if.end9:                                          ; preds = %entry
  %tr_num_revoke = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 9
  %16 = ptrtoint ptr %tr_num_revoke to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tr_num_revoke, align 4
  %sub = sub i32 %10, %17
  tail call void @gfs2_log_release_revokes(ptr noundef %sdp, i32 noundef %sub) #8
  %tr_num_buf_new = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %tr_num_buf_new to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tr_num_buf_new, align 4
  %tr_num_databuf_new = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %tr_num_databuf_new to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tr_num_databuf_new, align 4
  %add = add i32 %21, %19
  %conv = zext i32 %add to i64
  %tr_num_buf_rm = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 7
  %22 = ptrtoint ptr %tr_num_buf_rm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tr_num_buf_rm, align 4
  %conv11 = zext i32 %23 to i64
  %tr_num_databuf_rm = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %tr_num_databuf_rm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tr_num_databuf_rm, align 4
  %conv13 = zext i32 %25 to i64
  %26 = add nuw nsw i64 %conv11, %conv13
  %sub14 = sub nsw i64 %conv, %26
  %tr_blocks = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %tr_blocks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tr_blocks, align 4
  %conv15 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub14, i64 %conv15)
  %cmp.not = icmp sgt i64 %sub14, %conv15
  br i1 %cmp.not, label %if.then21, label %lor.lhs.false.critedge, !prof !75

if.then21:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.gfs2_trans_end, ptr noundef nonnull @.str.1, i32 noundef 147, i1 noundef zeroext false) #8
  br label %if.then49

lor.lhs.false.critedge:                           ; preds = %if.end9
  %29 = ptrtoint ptr %tr_num_revoke to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tr_num_revoke, align 4
  %31 = ptrtoint ptr %tr_revokes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tr_revokes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp30.not = icmp ugt i32 %30, %32
  br i1 %cmp30.not, label %if.then42, label %lor.lhs.false.critedge.if.end50_crit_edge, !prof !75

lor.lhs.false.critedge.if.end50_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then42:                                        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.gfs2_trans_end, ptr noundef nonnull @.str.1, i32 noundef 148, i1 noundef zeroext false) #8
  br label %if.then49

if.then49:                                        ; preds = %if.then42, %if.then21
  tail call fastcc void @gfs2_print_trans(ptr noundef %sdp, ptr noundef %5)
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %lor.lhs.false.critedge.if.end50_crit_edge
  tail call void @gfs2_log_commit(ptr noundef %sdp, ptr noundef %5) #8
  %33 = ptrtoint ptr %tr_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %tr_flags, align 4
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool53.not = icmp eq i32 %35, 0
  br i1 %tobool53.not, label %land.lhs.true, label %if.end50.if.end58_crit_edge

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end50
  %36 = ptrtoint ptr %tr_flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %tr_flags, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool56.not = icmp eq i32 %38, 0
  br i1 %tobool56.not, label %if.then57, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_trans_free(ptr noundef %sdp, ptr noundef %5)
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %land.lhs.true.if.end58_crit_edge, %if.end50.if.end58_crit_edge
  %sd_log_flush_lock59 = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 95
  tail call void @up_read(ptr noundef %sd_log_flush_lock59) #8
  %39 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sdp, align 8
  %s_flags = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %s_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s_flags, align 4
  %and = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool61.not = icmp eq i32 %and, 0
  br i1 %tobool61.not, label %if.end58.cleanup_crit_edge, label %if.then62

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_log_flush(ptr noundef %sdp, ptr noundef null, i32 noundef 16777218) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.end58.cleanup_crit_edge, %if.then8, %if.then.cleanup_crit_edge
  %43 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sdp, align 8
  tail call fastcc void @sb_end_intwrite(ptr noundef %44)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_trans_free(ptr noundef %sdp, ptr noundef %tr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %tr, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %tr_ail1_list = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 14
  %0 = ptrtoint ptr %tr_ail1_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tr_ail1_list, align 4
  %cmp.i.not = icmp eq ptr %1, %tr_ail1_list
  br i1 %cmp.i.not, label %if.end.if.end6_crit_edge, label %if.then5, !prof !78

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.gfs2_trans_free, ptr noundef nonnull @.str.1, i32 noundef 326) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %tr_ail2_list = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 15
  %2 = ptrtoint ptr %tr_ail2_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tr_ail2_list, align 4
  %cmp.i79.not = icmp eq ptr %3, %tr_ail2_list
  br i1 %cmp.i79.not, label %if.end6.if.end24_crit_edge, label %if.then23, !prof !78

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.gfs2_trans_free, ptr noundef nonnull @.str.1, i32 noundef 327) #8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end6.if.end24_crit_edge
  %tr_databuf = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 11
  %4 = ptrtoint ptr %tr_databuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tr_databuf, align 4
  %cmp.i81.not = icmp eq ptr %5, %tr_databuf
  br i1 %cmp.i81.not, label %if.end24.if.end43_crit_edge, label %if.then42, !prof !78

if.end24.if.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.gfs2_trans_free, ptr noundef nonnull @.str.1, i32 noundef 328) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end24.if.end43_crit_edge
  %tr_buf = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 12
  %6 = ptrtoint ptr %tr_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %tr_buf, align 4
  %cmp.i83.not = icmp eq ptr %7, %tr_buf
  br i1 %cmp.i83.not, label %if.end43.if.end62_crit_edge, label %if.then61, !prof !78

if.end43.if.end62_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then61:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_assert_warn_i(ptr noundef %sdp, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.gfs2_trans_free, ptr noundef nonnull @.str.1, i32 noundef 329) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end43.if.end62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_trans_cachep to i32))
  %8 = load ptr, ptr @gfs2_trans_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef nonnull %tr) #8
  br label %return

return:                                           ; preds = %if.end62, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_withdraw_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_trans_add_data(ptr noundef %gl, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #8
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
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ln_sbd, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #8
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %11 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %bh, align 4
  %14 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tr_flags = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tr_flags) #8
  br label %out

if.end:                                           ; preds = %lock_buffer.exit
  %sd_log_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #8
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %15 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_private, align 8
  %cmp = icmp eq ptr %16, null
  br i1 %cmp, label %if.then2, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then2:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #8
  tail call void @unlock_buffer(ptr noundef %bh) #8
  %17 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_private, align 8
  %cmp4 = icmp eq ptr %18, null
  br i1 %cmp4, label %if.then5, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %19 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %19, i32 noundef 36160) #8
  %20 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %bh, ptr %call.i.i, align 8
  %bd_gl.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %bd_gl.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %gl, ptr %bd_gl.i, align 4
  %bd_list.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %bd_list.i, ptr %bd_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %bd_list.i, ptr %prev.i.i, align 4
  %bd_ail_st_list.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %bd_ail_st_list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %bd_ail_st_list.i, ptr %bd_ail_st_list.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bd_ail_st_list.i, ptr %prev.i8.i, align 8
  %bd_ail_gl_list.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %bd_ail_gl_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %bd_ail_gl_list.i, ptr %bd_ail_gl_list.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %bd_ail_gl_list.i, ptr %prev.i9.i, align 8
  %28 = ptrtoint ptr %b_private to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %b_private, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then2.if.end8_crit_edge
  %bd.0 = phi ptr [ %call.i.i, %if.then5 ], [ %18, %if.then2.if.end8_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 366) #8
  %call.i.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #8
  %29 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i58 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i58)
  %tobool.not.i.i.i.i59 = icmp eq i32 %and.i.i.i.i58, 0
  br i1 %tobool.not.i.i.i.i59, label %trylock_buffer.exit.i62, label %if.end8.if.then.i63_crit_edge

if.end8.if.then.i63_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i63

trylock_buffer.exit.i62:                          ; preds = %if.end8
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #8
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i60 = extractvalue { i32, i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %32 = and i32 %asmresult.i.i.i.i.i.i.i60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.not.i61 = icmp eq i32 %32, 0
  br i1 %tobool.not.not.i61, label %trylock_buffer.exit.i62.lock_buffer.exit64_crit_edge, label %trylock_buffer.exit.i62.if.then.i63_crit_edge

trylock_buffer.exit.i62.if.then.i63_crit_edge:    ; preds = %trylock_buffer.exit.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i63

trylock_buffer.exit.i62.lock_buffer.exit64_crit_edge: ; preds = %trylock_buffer.exit.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit64

if.then.i63:                                      ; preds = %trylock_buffer.exit.i62.if.then.i63_crit_edge, %if.end8.if.then.i63_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #8
  br label %lock_buffer.exit64

lock_buffer.exit64:                               ; preds = %if.then.i63, %trylock_buffer.exit.i62.lock_buffer.exit64_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #8
  br label %do.body

do.body:                                          ; preds = %lock_buffer.exit64, %if.end.do.body_crit_edge
  %bd.1 = phi ptr [ %bd.0, %lock_buffer.exit64 ], [ %16, %if.end.do.body_crit_edge ]
  %bd_gl = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd.1, i32 0, i32 1
  %33 = ptrtoint ptr %bd_gl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bd_gl, align 4
  %cmp10.not = icmp eq ptr %34, %gl
  br i1 %cmp10.not, label %do.end21, label %if.then14, !prof !78

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_assert_i(ptr noundef %7) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/trans.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #8, !srcloc !88
  unreachable

do.end21:                                         ; preds = %do.body
  %tr_flags22 = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tr_flags22) #8
  %bd_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd.1, i32 0, i32 3
  %35 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %bd_list, align 4
  %cmp.i.not = icmp eq ptr %36, %bd_list
  br i1 %cmp.i.not, label %if.then25, label %do.end21.if.end30_crit_edge

do.end21.if.end30_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %do.end21
  %37 = ptrtoint ptr %bd_gl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bd_gl, align 4
  tail call void @_set_bit(i32 noundef 7, ptr noundef %38) #8
  %39 = ptrtoint ptr %bd_gl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bd_gl, align 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %40) #8
  %41 = ptrtoint ptr %bd.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bd.1, align 8
  tail call void @gfs2_pin(ptr noundef %7, ptr noundef %42) #8
  %tr_num_databuf_new = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 6
  %43 = ptrtoint ptr %tr_num_databuf_new to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tr_num_databuf_new, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %tr_num_databuf_new, align 4
  %tr_databuf = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 11, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %call.i.i66 = tail call zeroext i1 @__list_add_valid(ptr noundef %bd_list, ptr noundef %46, ptr noundef %tr_databuf) #8
  br i1 %call.i.i66, label %if.end.i.i, label %if.then25.if.end30_crit_edge

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %bd_list, ptr %prev.i, align 4
  %48 = ptrtoint ptr %bd_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %tr_databuf, ptr %bd_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd.1, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %bd_list, ptr %46, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end.i.i, %if.then25.if.end30_crit_edge, %do.end21.if.end30_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #8
  br label %out

out:                                              ; preds = %if.end30, %if.then
  tail call void @unlock_buffer(ptr noundef %bh) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_i(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_trans_add_meta(ptr noundef %gl, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !63) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 146
  %6 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %journal_info, align 4
  %sd_freeze_state = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 108
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_freeze_state, i32 noundef 4) #8
  %8 = ptrtoint ptr %sd_freeze_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sd_freeze_state, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 366) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #8
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %13 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %bh, align 4
  %16 = and i32 %15, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %tr_flags = getelementptr inbounds %struct.gfs2_trans, ptr %7, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tr_flags) #8
  br label %out

if.end:                                           ; preds = %lock_buffer.exit
  %sd_log_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #8
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %17 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_private, align 8
  %cmp = icmp eq ptr %18, null
  br i1 %cmp, label %if.then3, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then3:                                         ; preds = %if.end
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #8
  tail call void @unlock_buffer(ptr noundef %bh) #8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %19 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_page, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 788) #8
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !78

if.then.i.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %23, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %20 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %24, %if.end.i.i ]
  %25 = inttoptr i32 %retval.0.i.i to ptr
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i.i.i144 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i144)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i144, 0
  br i1 %tobool.not.i.i.i, label %folio_flags.exit.i.i, label %if.then.i.i.i, !prof !78

if.then.i.i.i:                                    ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.31) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !89
  unreachable

folio_flags.exit.i.i:                             ; preds = %_compound_head.exit.i
  %call.i.i.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %25, i32 noundef 4) #8
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %25, align 4
  %and.i.i4.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4.i.i)
  %tobool.not.i.i.i.i146 = icmp eq i32 %and.i.i4.i.i, 0
  br i1 %tobool.not.i.i.i.i146, label %folio_trylock.exit.i, label %folio_flags.exit.i.i.if.then.i148_crit_edge

folio_flags.exit.i.i.if.then.i148_crit_edge:      ; preds = %folio_flags.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i148

folio_trylock.exit.i:                             ; preds = %folio_flags.exit.i.i
  tail call void @llvm.prefetch.p0(ptr %25, i32 1, i32 3, i32 1) #8
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i147 = extractvalue { i32, i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %32 = and i32 %asmresult.i.i.i.i.i.i.i147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %phi.cmp.i.i.i = icmp eq i32 %32, 0
  br i1 %phi.cmp.i.i.i, label %folio_trylock.exit.i.lock_page.exit_crit_edge, label %folio_trylock.exit.i.if.then.i148_crit_edge

folio_trylock.exit.i.if.then.i148_crit_edge:      ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i148

folio_trylock.exit.i.lock_page.exit_crit_edge:    ; preds = %folio_trylock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_page.exit

if.then.i148:                                     ; preds = %folio_trylock.exit.i.if.then.i148_crit_edge, %folio_flags.exit.i.i.if.then.i148_crit_edge
  tail call void @__folio_lock(ptr noundef %25) #8
  br label %lock_page.exit

lock_page.exit:                                   ; preds = %if.then.i148, %folio_trylock.exit.i.lock_page.exit_crit_edge
  %33 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_private, align 8
  %cmp5 = icmp eq ptr %34, null
  br i1 %cmp5, label %if.then6, label %lock_page.exit.if.end9_crit_edge

lock_page.exit.if.end9_crit_edge:                 ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %lock_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %35 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  %call.i.i149 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %35, i32 noundef 36160) #8
  %36 = ptrtoint ptr %call.i.i149 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %bh, ptr %call.i.i149, align 8
  %bd_gl.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i149, i32 0, i32 1
  %37 = ptrtoint ptr %bd_gl.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %gl, ptr %bd_gl.i, align 4
  %bd_list.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i149, i32 0, i32 3
  %38 = ptrtoint ptr %bd_list.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %bd_list.i, ptr %bd_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i149, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %bd_list.i, ptr %prev.i.i, align 4
  %bd_ail_st_list.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i149, i32 0, i32 5
  %40 = ptrtoint ptr %bd_ail_st_list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %bd_ail_st_list.i, ptr %bd_ail_st_list.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i149, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %bd_ail_st_list.i, ptr %prev.i8.i, align 8
  %bd_ail_gl_list.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i149, i32 0, i32 6
  %42 = ptrtoint ptr %bd_ail_gl_list.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %bd_ail_gl_list.i, ptr %bd_ail_gl_list.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %call.i.i149, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %bd_ail_gl_list.i, ptr %prev.i9.i, align 8
  %44 = ptrtoint ptr %b_private to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i149, ptr %b_private, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %lock_page.exit.if.end9_crit_edge
  %bd.0 = phi ptr [ %call.i.i149, %if.then6 ], [ %34, %lock_page.exit.if.end9_crit_edge ]
  %45 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_page, align 8
  tail call void @unlock_page(ptr noundef %46) #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.29, i32 noundef 366) #8
  %call.i.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #8
  %47 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i151 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i151)
  %tobool.not.i.i.i.i152 = icmp eq i32 %and.i.i.i.i151, 0
  br i1 %tobool.not.i.i.i.i152, label %trylock_buffer.exit.i155, label %if.end9.if.then.i156_crit_edge

if.end9.if.then.i156_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i156

trylock_buffer.exit.i155:                         ; preds = %if.end9
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #8
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #8, !srcloc !86
  %asmresult.i.i.i.i.i.i.i153 = extractvalue { i32, i32, i32 } %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %50 = and i32 %asmresult.i.i.i.i.i.i.i153, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.not.i154 = icmp eq i32 %50, 0
  br i1 %tobool.not.not.i154, label %trylock_buffer.exit.i155.lock_buffer.exit157_crit_edge, label %trylock_buffer.exit.i155.if.then.i156_crit_edge

trylock_buffer.exit.i155.if.then.i156_crit_edge:  ; preds = %trylock_buffer.exit.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i156

trylock_buffer.exit.i155.lock_buffer.exit157_crit_edge: ; preds = %trylock_buffer.exit.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit157

if.then.i156:                                     ; preds = %trylock_buffer.exit.i155.if.then.i156_crit_edge, %if.end9.if.then.i156_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #8
  br label %lock_buffer.exit157

lock_buffer.exit157:                              ; preds = %if.then.i156, %trylock_buffer.exit.i155.lock_buffer.exit157_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #8
  br label %do.body

do.body:                                          ; preds = %lock_buffer.exit157, %if.end.do.body_crit_edge
  %bd.1 = phi ptr [ %bd.0, %lock_buffer.exit157 ], [ %18, %if.end.do.body_crit_edge ]
  %bd_gl = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd.1, i32 0, i32 1
  %51 = ptrtoint ptr %bd_gl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bd_gl, align 4
  %cmp12.not = icmp eq ptr %52, %gl
  br i1 %cmp12.not, label %do.end23, label %if.then16, !prof !78

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_assert_i(ptr noundef %1) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/trans.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #8, !srcloc !90
  unreachable

do.end23:                                         ; preds = %do.body
  %tr_flags24 = getelementptr inbounds %struct.gfs2_trans, ptr %7, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tr_flags24) #8
  %bd_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd.1, i32 0, i32 3
  %53 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %bd_list, align 4
  %cmp.i.not = icmp eq ptr %54, %bd_list
  br i1 %cmp.i.not, label %if.end28, label %do.end23.out_unlock_crit_edge

do.end23.out_unlock_crit_edge:                    ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end28:                                         ; preds = %do.end23
  %55 = ptrtoint ptr %bd_gl to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bd_gl, align 4
  tail call void @_set_bit(i32 noundef 7, ptr noundef %56) #8
  %57 = ptrtoint ptr %bd_gl to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bd_gl, align 4
  tail call void @_set_bit(i32 noundef 6, ptr noundef %58) #8
  %59 = ptrtoint ptr %bd.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bd.1, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %b_data, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %64)
  %cmp32.not = icmp eq i32 %64, 18225520
  br i1 %cmp32.not, label %if.end51, label %do.end42, !prof !78

do.end42:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 110
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 3
  %65 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %b_blocknr, align 8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %sd_fsname, i64 noundef %66) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/trans.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #8, !srcloc !91
  unreachable

if.end51:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp52 = icmp eq i32 %9, 2
  br i1 %cmp52, label %do.end62, label %if.end51.if.end82_crit_edge, !prof !75

if.end51.if.end82_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end62:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %sd_fsname64 = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 110
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %sd_fsname64) #11
  tail call void @gfs2_assert_withdraw_i(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 272, i1 noundef zeroext false) #8
  br label %if.end82

if.end82:                                         ; preds = %do.end62, %if.end51.if.end82_crit_edge
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %sd_flags.i, align 4
  %69 = and i32 %68, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %if.end82.do.end93_crit_edge, !prof !92

if.end82.do.end93_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

gfs2_withdrawn.exit:                              ; preds = %if.end82
  %70 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %sd_flags.i, align 4
  %72 = and i32 %71, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool3.i.not = icmp eq i32 %72, 0
  br i1 %tobool3.i.not, label %gfs2_withdrawn.exit.if.end100_crit_edge, label %gfs2_withdrawn.exit.do.end93_crit_edge, !prof !78

gfs2_withdrawn.exit.do.end93_crit_edge:           ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end93

gfs2_withdrawn.exit.if.end100_crit_edge:          ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

do.end93:                                         ; preds = %gfs2_withdrawn.exit.do.end93_crit_edge, %if.end82.do.end93_crit_edge
  %sd_fsname95 = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 110
  %73 = ptrtoint ptr %bd.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bd.1, align 8
  %b_blocknr98 = getelementptr inbounds %struct.buffer_head, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %b_blocknr98 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %b_blocknr98, align 8
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %sd_fsname95, i64 noundef %76) #11
  br label %if.end100

if.end100:                                        ; preds = %do.end93, %gfs2_withdrawn.exit.if.end100_crit_edge
  %77 = ptrtoint ptr %bd.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bd.1, align 8
  tail call void @gfs2_pin(ptr noundef %1, ptr noundef %78) #8
  %__pad0 = getelementptr inbounds %struct.gfs2_meta_header, ptr %62, i32 0, i32 2
  %79 = ptrtoint ptr %__pad0 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 0, ptr %__pad0, align 8
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 56
  %80 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sd_jdesc, align 4
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %jd_jid, align 4
  %84 = getelementptr inbounds %struct.gfs2_meta_header, ptr %62, i32 0, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %83, ptr %84, align 4
  %tr_buf = getelementptr inbounds %struct.gfs2_trans, ptr %7, i32 0, i32 12
  %86 = ptrtoint ptr %tr_buf to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tr_buf, align 4
  %call.i.i159 = tail call zeroext i1 @__list_add_valid(ptr noundef %bd_list, ptr noundef %tr_buf, ptr noundef %87) #8
  br i1 %call.i.i159, label %if.end.i.i160, label %if.end100.list_add.exit_crit_edge

if.end100.list_add.exit_crit_edge:                ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i160:                                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %bd_list, ptr %prev1.i.i, align 4
  %89 = ptrtoint ptr %bd_list to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %87, ptr %bd_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd.1, i32 0, i32 3, i32 1
  %90 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %tr_buf, ptr %prev3.i.i, align 4
  %91 = ptrtoint ptr %tr_buf to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %bd_list, ptr %tr_buf, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i160, %if.end100.list_add.exit_crit_edge
  %tr_num_buf_new = getelementptr inbounds %struct.gfs2_trans, ptr %7, i32 0, i32 5
  %92 = ptrtoint ptr %tr_num_buf_new to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tr_num_buf_new, align 4
  %inc = add i32 %93, 1
  store i32 %inc, ptr %tr_num_buf_new, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %list_add.exit, %do.end23.out_unlock_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #8
  br label %out

out:                                              ; preds = %out_unlock, %if.then
  tail call void @unlock_buffer(ptr noundef %bh) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_trans_add_revoke(ptr noundef %sdp, ptr noundef %bd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !63) #8
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
  %bd_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %bd, i32 0, i32 3
  %6 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %bd_list, align 4
  %cmp.i.not = icmp eq ptr %7, %bd_list
  br i1 %cmp.i.not, label %do.end10, label %do.body5, !prof !78

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/trans.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 293, 0\0A.popsection", ""() #8, !srcloc !93
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_add_revoke(ptr noundef %sdp, ptr noundef %bd) #8
  %tr_flags = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tr_flags) #8
  %tr_num_revoke = getelementptr inbounds %struct.gfs2_trans, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %tr_num_revoke to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tr_num_revoke, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tr_num_revoke, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_add_revoke(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_trans_remove_revoke(ptr noundef %sdp, i64 noundef %blkno, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #8
  %sd_log_revokes = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 83
  %0 = ptrtoint ptr %sd_log_revokes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_log_revokes, align 8
  %cmp.not62 = icmp eq ptr %1, %sd_log_revokes
  br i1 %cmp.not62, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %blkno
  %sd_log_num_revoke = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 82
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in64 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn67, %for.inc.for.body_crit_edge ]
  %n.063 = phi i32 [ %len, %for.body.lr.ph ], [ %n.1, %for.inc.for.body_crit_edge ]
  %bd.066 = getelementptr i8, ptr %.pn.in64, i32 -16
  %2 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn67 = load ptr, ptr %.pn.in64, align 8
  %bd_blkno = getelementptr i8, ptr %.pn.in64, i32 -8
  %3 = ptrtoint ptr %bd_blkno to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %bd_blkno, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %blkno)
  %cmp8.not = icmp uge i64 %4, %blkno
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %add)
  %cmp10 = icmp ult i64 %4, %add
  %or.cond = and i1 %cmp8.not, %cmp10
  br i1 %or.cond, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in64) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in64, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in64, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in64 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %.pn.in64, ptr %.pn.in64, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in64, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn.in64, ptr %prev.i3.i, align 4
  %13 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sd_log_num_revoke, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.then18, label %list_del_init.exit.if.end_crit_edge, !prof !75

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then18:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.gfs2_trans_remove_revoke, ptr noundef nonnull @.str.1, i32 noundef 308, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then18, %list_del_init.exit.if.end_crit_edge
  %15 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sd_log_num_revoke, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %sd_log_num_revoke, align 4
  %bd_gl = getelementptr i8, ptr %.pn.in64, i32 -12
  %17 = ptrtoint ptr %bd_gl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bd_gl, align 4
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %if.end.if.end27_crit_edge, label %if.then25

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gfs2_glock_remove_revoke(ptr noundef nonnull %18) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %19 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef %bd.066) #8
  tail call void @gfs2_log_release_revokes(ptr noundef %sdp, i32 noundef 1) #8
  %dec28 = add i32 %n.063, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec28)
  %cmp29 = icmp eq i32 %dec28, 0
  br i1 %cmp29, label %if.end27.for.end_crit_edge, label %if.end27.for.inc_crit_edge

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ %dec28, %if.end27.for.inc_crit_edge ], [ %n.063, %for.body.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn67, %sd_log_revokes
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end27.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_remove_revoke(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !61}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/trans.c", i32 73, i32 6}
!2 = !{ptr @__func__.__gfs2_trans_begin, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/gfs2/trans.c", i32 147, i32 6}
!6 = !{ptr @__func__.gfs2_trans_end, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/gfs2/trans.c", i32 148, i32 6}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/gfs2/trans.c", i32 265, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @gfs2_trans_add_meta._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @gfs2_trans_add_meta._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/gfs2/trans.c", i32 271, i32 3}
!16 = !{ptr @gfs2_trans_add_meta._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @gfs2_trans_add_meta._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/gfs2/trans.c", i32 272, i32 3}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/gfs2/trans.c", i32 275, i32 3}
!22 = !{ptr @gfs2_trans_add_meta._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @gfs2_trans_add_meta._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/gfs2/trans.c", i32 308, i32 4}
!26 = !{ptr @__func__.gfs2_trans_remove_revoke, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/gfs2/trans.c", i32 326, i32 2}
!29 = !{ptr @__func__.gfs2_trans_free, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/gfs2/trans.c", i32 327, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/gfs2/trans.c", i32 328, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/gfs2/trans.c", i32 329, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/gfs2/trans.c", i32 30, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @gfs2_print_trans._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @gfs2_print_trans._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/gfs2/trans.c", i32 31, i32 2}
!43 = !{ptr @gfs2_print_trans._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gfs2_print_trans._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/gfs2/trans.c", i32 34, i32 2}
!47 = !{ptr @gfs2_print_trans._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @gfs2_print_trans._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/pagemap.h", i32 788, i32 2}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 2155476820, i64 2155477299, i64 2155476857, i64 2155476913, i64 2155476947, i64 2155476971, i64 2155477012, i64 2155477033, i64 2155477061, i64 2155477095}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2155478415, i64 2155478894, i64 2155478452, i64 2155478508, i64 2155478542, i64 2155478566, i64 2155478607, i64 2155478628, i64 2155478656, i64 2155478690}
!77 = !{i64 2152757657}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 820940, i64 821001}
!80 = !{i64 823672}
!81 = !{i64 823957}
!82 = !{i64 2152766507}
!83 = !{i64 2152776461}
!84 = !{i64 2152785956}
!85 = !{i64 2152795433}
!86 = !{i64 2148435540, i64 2148435572, i64 2148435601, i64 2148435635, i64 2148435666, i64 2148435689}
!87 = !{i64 2148524621}
!88 = !{i64 2155481918, i64 2155482398, i64 2155481955, i64 2155482011, i64 2155482045, i64 2155482069, i64 2155482110, i64 2155482131, i64 2155482159, i64 2155482193}
!89 = !{i64 2150679660, i64 2150680151, i64 2150679697, i64 2150679753, i64 2150679787, i64 2150679811, i64 2150679852, i64 2150679873, i64 2150679901, i64 2150679935}
!90 = !{i64 2155488140, i64 2155488620, i64 2155488177, i64 2155488233, i64 2155488267, i64 2155488291, i64 2155488332, i64 2155488353, i64 2155488381, i64 2155488415}
!91 = !{i64 2155492562, i64 2155493042, i64 2155492599, i64 2155492655, i64 2155492689, i64 2155492713, i64 2155492754, i64 2155492775, i64 2155492803, i64 2155492837}
!92 = !{!"branch_weights", i32 2146410443, i32 1073205}
!93 = !{i64 2155498699, i64 2155499179, i64 2155498736, i64 2155498792, i64 2155498826, i64 2155498850, i64 2155498891, i64 2155498912, i64 2155498940, i64 2155498974}
