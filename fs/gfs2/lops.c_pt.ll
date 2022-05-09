; ModuleID = '/llk/IR_all_yes/fs/gfs2/lops.c_pt.bc'
source_filename = "../fs/gfs2/lops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gfs2_log_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.gfs2_bufdata = type { ptr, ptr, i64, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.gfs2_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
%struct.gfs2_journal_extent = type { %struct.list_head, i32, i64, i64 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.39 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
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
%struct.page = type { i32, %union.anon.17, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.74 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%struct.gfs2_log_header_host = type { i64, i32, i32, i32, i64, i64, i64 }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.gfs2_log_descriptor = type { %struct.gfs2_meta_header, i32, i32, i32, i32, [32 x i8] }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.83 }
%union.anon.83 = type { i32 }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.82, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.77 }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.anon.82 = type { %struct.delayed_work, i64 }
%struct.rhash_head = type { ptr }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
%struct.gfs2_bitmap = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.gfs2_rgrp = type { %struct.gfs2_meta_header, i32, i32, i32, %union.anon.84, i64, i64, i32, i32, i32, [60 x i8] }
%union.anon.84 = type { i32 }

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__func__.gfs2_pin = private unnamed_addr constant [9 x i8] c"gfs2_pin\00", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/gfs2/lops.c\00", [17 x i8] zeroinitializer }, align 32
@gfs2_bufdata_cachep = external dso_local local_unnamed_addr global ptr, align 4
@gfs2_databuf_lops = internal constant { %struct.gfs2_log_operations, [40 x i8] } { %struct.gfs2_log_operations { ptr @databuf_lo_before_commit, ptr @databuf_lo_after_commit, ptr null, ptr @databuf_lo_scan_elements, ptr @databuf_lo_after_scan, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@gfs2_buf_lops = internal constant { %struct.gfs2_log_operations, [40 x i8] } { %struct.gfs2_log_operations { ptr @buf_lo_before_commit, ptr @buf_lo_after_commit, ptr @buf_lo_before_scan, ptr @buf_lo_scan_elements, ptr @buf_lo_after_scan, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@gfs2_revoke_lops = internal constant { %struct.gfs2_log_operations, [40 x i8] } { %struct.gfs2_log_operations { ptr @revoke_lo_before_commit, ptr @revoke_lo_after_commit, ptr @revoke_lo_before_scan, ptr @revoke_lo_scan_elements, ptr @revoke_lo_after_scan, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@gfs2_log_ops = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @gfs2_databuf_lops, ptr @gfs2_buf_lops, ptr @gfs2_revoke_lops, ptr null], [16 x i8] zeroinitializer }, align 32
@__tracepoint_gfs2_pin = external dso_local global %struct.tracepoint, align 4
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/gfs2/trace_gfs2.h\00", [43 x i8] zeroinitializer }, align 32
@trace_gfs2_pin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@gfs2_end_log_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gfs2: fsid=%s: Error %d writing to journal, jid=%u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gfs2_end_log_write\00", [45 x i8] zeroinitializer }, align 32
@gfs2_end_log_write._entry_ptr = internal global ptr @gfs2_end_log_write._entry, section ".printk_index", align 4
@gfs2_page_pool = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"databuf\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@databuf_lo_after_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.1, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016gfs2: fsid=%s: jid=%u: Replayed %u of %u data blocks\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"databuf_lo_after_scan\00", [42 x i8] zeroinitializer }, align 32
@databuf_lo_after_scan._entry_ptr = internal global ptr @databuf_lo_after_scan._entry, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"buf\00", [28 x i8] zeroinitializer }, align 32
@gfs2_meta_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gfs2: fsid=%s: Magic number missing at %llu\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gfs2_meta_check\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/gfs2/util.h\00", [17 x i8] zeroinitializer }, align 32
@gfs2_meta_check._entry_ptr = internal global ptr @gfs2_meta_check._entry, section ".printk_index", align 4
@obsolete_rgrp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.1, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\016gfs2: fsid=%s: Replaying 0x%llx from jid=%d/0x%llx but we already have a bh!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"obsolete_rgrp\00", [18 x i8] zeroinitializer }, align 32
@obsolete_rgrp._entry_ptr = internal global ptr @obsolete_rgrp._entry, section ".printk_index", align 4
@obsolete_rgrp._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.1, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016gfs2: fsid=%s: busy:%d, pinned:%d rg_gen:0x%llx, j_gen:0x%llx\0A\00", [63 x i8] zeroinitializer }, align 32
@obsolete_rgrp._entry_ptr.25 = internal global ptr @obsolete_rgrp._entry.23, section ".printk_index", align 4
@buf_lo_after_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.1, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016gfs2: fsid=%s: jid=%u: Replayed %u of %u blocks\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"buf_lo_after_scan\00", [46 x i8] zeroinitializer }, align 32
@buf_lo_after_scan._entry_ptr = internal global ptr @buf_lo_after_scan._entry, section ".printk_index", align 4
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"revoke\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"!sdp->sd_log_num_revoke\00", [40 x i8] zeroinitializer }, align 32
@__func__.revoke_lo_before_commit = private unnamed_addr constant [24 x i8] c"revoke_lo_before_commit\00", align 1
@__func__.revoke_lo_scan_elements = private unnamed_addr constant [24 x i8] c"revoke_lo_scan_elements\00", align 1
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"magic number\00", [19 x i8] zeroinitializer }, align 32
@revoke_lo_after_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.1, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016gfs2: fsid=%s: jid=%u: Found %u revoke tags\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"revoke_lo_after_scan\00", [43 x i8] zeroinitializer }, align 32
@revoke_lo_after_scan._entry_ptr = internal global ptr @revoke_lo_after_scan._entry, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 50, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"gfs2_databuf_lops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1119, i32 41 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"gfs2_buf_lops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1101, i32 41 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"gfs2_revoke_lops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1110, i32 41 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"gfs2_log_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1127, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [24 x i8] c"../fs/gfs2/trace_gfs2.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 319, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 108, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 211, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 452, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 416, i32 1 }
@___asan_gen_.79 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 260, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 717, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1124, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 366, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1080, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1107, i32 13 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 104, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 779, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 781, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 859, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1116, i32 13 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 897, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"../fs/gfs2/util.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 126, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [18 x i8] c"../fs/gfs2/lops.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 993, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @buf_lo_after_scan._entry, ptr @buf_lo_after_scan._entry_ptr, ptr @databuf_lo_after_scan._entry, ptr @databuf_lo_after_scan._entry_ptr, ptr @gfs2_end_log_write._entry, ptr @gfs2_end_log_write._entry_ptr, ptr @gfs2_meta_check._entry, ptr @gfs2_meta_check._entry_ptr, ptr @obsolete_rgrp._entry, ptr @obsolete_rgrp._entry.23, ptr @obsolete_rgrp._entry_ptr, ptr @obsolete_rgrp._entry_ptr.25, ptr @revoke_lo_after_scan._entry, ptr @revoke_lo_after_scan._entry_ptr, ptr @.str, ptr @.str.1, ptr @gfs2_databuf_lops, ptr @gfs2_buf_lops, ptr @gfs2_revoke_lops, ptr @gfs2_log_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_databuf_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_buf_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_revoke_lops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_log_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_end_log_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @databuf_lo_after_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_meta_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obsolete_rgrp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @obsolete_rgrp._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buf_lo_after_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @revoke_lo_after_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_pin(ptr noundef %sdp, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #12
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
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !91

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 46, 0\0A.popsection", ""() #12, !srcloc !92
  unreachable

do.end9:                                          ; preds = %entry
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh) #12
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 16, ptr noundef %bh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %do.end9.if.end27_crit_edge, label %if.then22

do.end9.if.end27_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then22:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.gfs2_pin, ptr noundef nonnull @.str.1, i32 noundef 50, i1 noundef zeroext false) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %do.end9.if.end27_crit_edge
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool29.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_io_error_bh_i(ptr noundef %sdp, ptr noundef %bh, ptr noundef nonnull @__func__.gfs2_pin, ptr noundef nonnull @.str.1, i32 noundef 52, i1 noundef zeroext true) #12
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %8 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_private, align 8
  %sd_ail_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock) #12
  %bd_tr = getelementptr inbounds %struct.gfs2_bufdata, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %bd_tr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_tr, align 8
  %tobool32.not = icmp eq ptr %11, null
  br i1 %tobool32.not, label %if.end31.if.end35_crit_edge, label %if.then33

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  %bd_ail_st_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %9, i32 0, i32 5
  %tr_ail2_list = getelementptr inbounds %struct.gfs2_trans, ptr %11, i32 0, i32 15
  %call.i.i50 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bd_ail_st_list) #12
  br i1 %call.i.i50, label %if.end.i.i, label %if.then33.__list_del_entry.exit.i_crit_edge

if.then33.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %9, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %bd_ail_st_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd_ail_st_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then33.__list_del_entry.exit.i_crit_edge
  %18 = ptrtoint ptr %tr_ail2_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tr_ail2_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bd_ail_st_list, ptr noundef %tr_ail2_list, ptr noundef %19) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end35_crit_edge

__list_del_entry.exit.i.if.end35_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %bd_ail_st_list, ptr %prev1.i.i2.i, align 4
  %21 = ptrtoint ptr %bd_ail_st_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %bd_ail_st_list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %9, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tr_ail2_list, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %tr_ail2_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %bd_ail_st_list, ptr %tr_ail2_list, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end35_crit_edge, %if.end31.if.end35_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock) #12
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #12, !srcloc !93
  %sd_log_pinned = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 81
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_pinned, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sd_log_pinned, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_pinned, ptr %sd_log_pinned, i32 1, ptr elementtype(i32) %sd_log_pinned) #12, !srcloc !93
  tail call fastcc void @trace_gfs2_pin(ptr noundef %9, i32 noundef 1)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_withdraw_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_io_error_bh_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_pin(ptr noundef %bd, i32 noundef %pin) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_pin, i32 0, i32 1), ptr blockaddress(@trace_gfs2_pin, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !94

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !81) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !95

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !96
  %call42 = tail call i32 @__traceiter_gfs2_pin(ptr noundef null, ptr noundef %bd, i32 noundef %pin) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !97
  %13 = tail call i32 @llvm.read_register.i32(metadata !81) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !81) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !95

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_pin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_pin, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_gfs2_pin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gfs2_pin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 347, ptr noundef nonnull @.str.3) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !99
  %31 = tail call i32 @llvm.read_register.i32(metadata !81) #12
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
define dso_local void @gfs2_log_incr_head(ptr nocapture noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_flush_head = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 103
  %0 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_log_flush_head, align 8
  %sd_log_tail = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 100
  %2 = ptrtoint ptr %sd_log_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_log_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.rhs, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.rhs:                                         ; preds = %entry
  %sd_log_head = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 102
  %4 = ptrtoint ptr %sd_log_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_log_head, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp2.not = icmp eq i32 %1, %5
  br i1 %cmp2.not, label %land.rhs.do.end7_crit_edge, label %do.body4, !prof !95

land.rhs.do.end7_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.body4:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #12, !srcloc !100
  unreachable

do.end7:                                          ; preds = %land.rhs.do.end7_crit_edge, %entry.do.end7_crit_edge
  %inc = add i32 %1, 1
  %6 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %sd_log_flush_head, align 8
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %7 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_jdesc, align 4
  %jd_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %jd_blocks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jd_blocks, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %10)
  %cmp9 = icmp eq i32 %inc, %10
  %spec.store.select = select i1 %cmp9, i32 0, i32 %inc
  %11 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %sd_log_flush_head, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @gfs2_log_bmap(ptr noundef readonly %jd, i32 noundef %lblock) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %extent_list = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 1
  %0 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %je.027 = load ptr, ptr %extent_list, align 8
  %cmp.not28 = icmp eq ptr %je.027, %extent_list
  br i1 %cmp.not28, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %lblock to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %je.029 = phi ptr [ %je.027, %for.body.lr.ph ], [ %je.0, %for.inc.for.body_crit_edge ]
  %lblock2 = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.029, i32 0, i32 1
  %1 = ptrtoint ptr %lblock2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lblock2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %lblock)
  %cmp3.not = icmp ugt i32 %2, %lblock
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %conv5 = zext i32 %2 to i64
  %blocks = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.029, i32 0, i32 3
  %3 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %blocks, align 8
  %add = add i64 %4, %conv5
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp6 = icmp ugt i64 %add, %conv
  br i1 %cmp6, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dblock = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.029, i32 0, i32 2
  %5 = ptrtoint ptr %dblock to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dblock, align 8
  %add9 = sub nsw i64 %conv, %conv5
  %sub = add i64 %add9, %6
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %je.029 to i32
  call void @__asan_load4_noabort(i32 %7)
  %je.0 = load ptr, ptr %je.029, align 8
  %cmp.not = icmp eq ptr %je.0, %extent_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %sub, %if.then ], [ -1, %entry.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_log_submit_bio(ptr nocapture noundef %biop, i32 noundef %opf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %biop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %biop, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bi_private = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_private, align 4
  %sd_log_in_flight = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_in_flight, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sd_log_in_flight, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_in_flight, ptr %sd_log_in_flight, i32 1, ptr elementtype(i32) %sd_log_in_flight) #12, !srcloc !93
  %bi_opf = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %opf, ptr %bi_opf, align 8
  tail call void @submit_bio(ptr noundef nonnull %1) #12
  %6 = ptrtoint ptr %biop to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %biop, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_log_write(ptr noundef %sdp, ptr nocapture noundef %jd, ptr noundef %page, i32 noundef %size, i32 noundef %offset, i64 noundef %blkno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_log_bio = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 5
  %call = tail call fastcc ptr @gfs2_log_get_bio(ptr noundef %sdp, i64 noundef %blkno, ptr noundef %jd_log_bio, i1 noundef zeroext false)
  %call1 = tail call i32 @bio_add_page(ptr noundef %call, ptr noundef %page, i32 noundef %size, i32 noundef %offset) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc ptr @gfs2_log_get_bio(ptr noundef %sdp, i64 noundef %blkno, ptr noundef %jd_log_bio, i1 noundef zeroext true)
  %call4 = tail call i32 @bio_add_page(ptr noundef %call3, ptr noundef %page, i32 noundef %size, i32 noundef %offset) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.then.if.end25_crit_edge, !prof !91

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 343, i32 noundef 9, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.then.if.end25_crit_edge, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gfs2_log_get_bio(ptr noundef %sdp, i64 noundef %blkno, ptr nocapture noundef %biop, i1 noundef zeroext %flush) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %biop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %biop, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %bi_iter = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %5, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %3, %conv
  %sd_fsb2bb_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 7
  %6 = ptrtoint ptr %sd_fsb2bb_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sd_fsb2bb_shift, align 4
  %sh_prom = zext i32 %7 to i64
  %shr2 = lshr i64 %add, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr2, i64 %blkno)
  %cmp = icmp ne i64 %shr2, %blkno
  %brmerge = or i1 %cmp, %flush
  br i1 %brmerge, label %gfs2_log_submit_bio.exit, label %if.then.cleanup7_crit_edge

if.then.cleanup7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup7

gfs2_log_submit_bio.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_private.i, align 4
  %sd_log_in_flight.i = getelementptr inbounds %struct.gfs2_sbd, ptr %9, i32 0, i32 96
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_in_flight.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sd_log_in_flight.i, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_in_flight.i, ptr %sd_log_in_flight.i, i32 1, ptr elementtype(i32) %sd_log_in_flight.i) #12, !srcloc !93
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %bi_opf.i, align 8
  tail call void @submit_bio(ptr noundef nonnull %1) #12
  %12 = ptrtoint ptr %biop to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %biop, align 4
  br label %if.end6

if.end6:                                          ; preds = %gfs2_log_submit_bio.exit, %entry.if.end6_crit_edge
  %13 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdp, align 8
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #12
  %sd_fsb2bb_shift.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 7
  %15 = ptrtoint ptr %sd_fsb2bb_shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sd_fsb2bb_shift.i, align 4
  %sh_prom.i = zext i32 %16 to i64
  %shl.i = shl i64 %blkno, %sh_prom.i
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shl.i, ptr %bi_iter.i, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 26
  %18 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_bdev.i, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %21, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %23, %19
  br i1 %cmp.not.i.i, label %if.end6.gfs2_log_alloc_bio.exit_crit_edge, label %if.then.i.i

if.end6.gfs2_log_alloc_bio.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_alloc_bio.exit

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i = and i16 %21, -2177
  %24 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %gfs2_log_alloc_bio.exit

gfs2_log_alloc_bio.exit:                          ; preds = %if.then.i.i, %if.end6.gfs2_log_alloc_bio.exit_crit_edge
  %25 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %19, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i) #12
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @gfs2_end_log_write, ptr %bi_end_io.i, align 8
  %bi_private.i1 = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 11
  %27 = ptrtoint ptr %bi_private.i1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sdp, ptr %bi_private.i1, align 4
  %28 = ptrtoint ptr %biop to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %biop, align 4
  br label %cleanup7

cleanup7:                                         ; preds = %gfs2_log_alloc_bio.exit, %if.then.cleanup7_crit_edge
  %retval.1 = phi ptr [ %call.i.i, %gfs2_log_alloc_bio.exit ], [ %1, %if.then.cleanup7_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_end_log_write(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then:                                          ; preds = %entry
  %sd_log_error = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 98
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_error, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !101
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bi_status, align 2
  %conv = zext i8 %5 to i32
  tail call void @llvm.prefetch.p0(ptr %sd_log_error, i32 1, i32 3, i32 1) #12
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then
  %6 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %sd_log_error, i32 0, i32 %conv) #12, !srcloc !102
  %asmresult.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool16.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool16.not, label %do.end20, label %__cmpxchg.exit.if.end_crit_edge

__cmpxchg.exit.if.end_crit_edge:                  ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end20:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 110
  %7 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bi_status, align 2
  %conv23 = zext i8 %8 to i32
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 56
  %9 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_jdesc, align 4
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %jd_jid, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %sd_fsname, i32 noundef %conv23, i32 noundef %12) #15
  br label %if.end

if.end:                                           ; preds = %do.end20, %__cmpxchg.exit.if.end_crit_edge
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %sd_flags.i) #12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %sd_flags.i) #12
  %sd_logd_waitq = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 92
  tail call void @__wake_up(ptr noundef %sd_logd_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end25

if.end25:                                         ; preds = %if.end, %entry.if.end25_crit_edge
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %13 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.not.i76.not = icmp eq i16 %14, 0
  br i1 %cmp.not.i76.not, label %if.end25.for.end_crit_edge, label %if.end.i.lr.ph

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %if.end25
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  br label %if.end.i

if.end.i:                                         ; preds = %if.end32.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.079 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %if.end32.if.end.i_crit_edge ]
  %iter_all.sroa.14.078 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select71, %if.end32.if.end.i_crit_edge ]
  %iter_all.sroa.18.077 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %if.end32.if.end.i_crit_edge ]
  %15 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.18.077)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.18.077, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.079, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %16, i32 %iter_all.sroa.14.078
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %16, i32 %iter_all.sroa.14.078, i32 2
  %19 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i54 = lshr i32 %20, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %18, i32 %shr.i.i54
  %and.i.i = and i32 %20, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %16, i32 %iter_all.sroa.14.078, i32 1
  %21 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %22, %iter_all.sroa.18.077
  %23 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #12
  %add.i.i = add i32 %23, %iter_all.sroa.18.077
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %22)
  %cmp15.i.i = icmp eq i32 %add.i.i, %22
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select71 = add nuw nsw i32 %iter_all.sroa.14.078, %inc.i.i
  %24 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %iter_all.sroa.0.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp.i.not.i = icmp eq i32 %25, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !91

if.then.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.7) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !104
  unreachable

PagePrivate.exit:                                 ; preds = %if.end.i.i
  %26 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %iter_all.sroa.0.1, align 4
  %28 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool29.not = icmp eq i32 %28, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %PagePrivate.exit
  %29 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bi_status, align 2
  %31 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %iter_all.sroa.0.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i.i = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i55, label %PagePrivate.exit.i, !prof !91

if.then.i.i55:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.7) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #12, !srcloc !104
  unreachable

PagePrivate.exit.i:                               ; preds = %if.then30
  %33 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %iter_all.sroa.0.1, align 4
  %35 = and i32 %34, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i56 = icmp eq i32 %35, 0
  br i1 %tobool.not.i56, label %do.body4.i, label %do.end9.i, !prof !91

do.body4.i:                                       ; preds = %PagePrivate.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

do.end9.i:                                        ; preds = %PagePrivate.exit.i
  %private.i = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1, i32 0, i32 3
  %36 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %private.i, align 4
  %38 = inttoptr i32 %37 to ptr
  %b_data2.i = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %b_data2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data2.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %and3.i = and i32 %41, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %.sink.i.i)
  %cmp4.i = icmp ult i32 %and3.i, %.sink.i.i
  br i1 %cmp4.i, label %do.end9.i.while.body.i_crit_edge, label %do.end9.i.do.body10.preheader.i_crit_edge

do.end9.i.do.body10.preheader.i_crit_edge:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.preheader.i

do.end9.i.while.body.i_crit_edge:                 ; preds = %do.end9.i
  br label %while.body.i

do.body10.preheader.i:                            ; preds = %while.body.i.do.body10.preheader.i_crit_edge, %do.end9.i.do.body10.preheader.i_crit_edge
  %bh.0.lcssa.i = phi ptr [ %38, %do.end9.i.do.body10.preheader.i_crit_edge ], [ %43, %while.body.i.do.body10.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool11.not.i = icmp eq i8 %30, 0
  br label %do.body10.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end9.i.while.body.i_crit_edge
  %bh.05.i = phi ptr [ %43, %while.body.i.while.body.i_crit_edge ], [ %38, %do.end9.i.while.body.i_crit_edge ]
  %b_this_page.i = getelementptr inbounds %struct.buffer_head, ptr %bh.05.i, i32 0, i32 1
  %42 = ptrtoint ptr %b_this_page.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %b_this_page.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_data.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %and.i = and i32 %46, 4095
  %cmp.i = icmp ult i32 %and.i, %.sink.i.i
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.do.body10.preheader.i_crit_edge

while.body.i.do.body10.preheader.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

do.body10.i:                                      ; preds = %brelse.exit.i.do.body10.i_crit_edge, %do.body10.preheader.i
  %size.0.i = phi i32 [ %sub.i, %brelse.exit.i.do.body10.i_crit_edge ], [ %23, %do.body10.preheader.i ]
  %bh.1.i = phi ptr [ %48, %brelse.exit.i.do.body10.i_crit_edge ], [ %bh.0.lcssa.i, %do.body10.preheader.i ]
  br i1 %tobool11.not.i, label %do.body10.i.if.end13.i_crit_edge, label %if.then12.i

do.body10.i.if.end13.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then12.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mark_buffer_write_io_error(ptr noundef %bh.1.i) #12
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %do.body10.i.if.end13.i_crit_edge
  tail call void @unlock_buffer(ptr noundef %bh.1.i) #12
  %b_this_page14.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 1
  %47 = ptrtoint ptr %b_this_page14.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_this_page14.i, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 4
  %49 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %b_size.i, align 8
  %tobool.not.i.i57 = icmp eq ptr %bh.1.i, null
  br i1 %tobool.not.i.i57, label %if.end13.i.brelse.exit.i_crit_edge, label %if.then.i1.i

if.end13.i.brelse.exit.i_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit.i

if.then.i1.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %bh.1.i) #12
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i1.i, %if.end13.i.brelse.exit.i_crit_edge
  %tobool16.not.i = icmp eq ptr %48, null
  %sub.i = sub i32 %size.0.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool17.not.i = icmp eq i32 %sub.i, 0
  %or.cond.i = select i1 %tobool16.not.i, i1 true, i1 %tobool17.not.i
  br i1 %or.cond.i, label %brelse.exit.i.if.end32_crit_edge, label %brelse.exit.i.do.body10.i_crit_edge

brelse.exit.i.do.body10.i_crit_edge:              ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10.i

brelse.exit.i.if.end32_crit_edge:                 ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.else:                                          ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_page_pool to i32))
  %51 = load ptr, ptr @gfs2_page_pool, align 4
  tail call void @mempool_free(ptr noundef %iter_all.sroa.0.1, ptr noundef %51) #12
  br label %if.end32

if.end32:                                         ; preds = %if.else, %brelse.exit.i.if.end32_crit_edge
  %52 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %53 to i32
  %cmp.not.i = icmp ult i32 %spec.select71, %conv.i
  br i1 %cmp.not.i, label %if.end32.if.end.i_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end32.if.end.i_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %if.end25.for.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #12
  %sd_log_in_flight = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 96
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_in_flight, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %sd_log_in_flight, i32 1, i32 3, i32 1) #12
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_in_flight, ptr %sd_log_in_flight, i32 1, ptr elementtype(i32) %sd_log_in_flight) #12, !srcloc !107
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %54, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then34, label %for.end.if.end35_crit_edge

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %sd_log_flush_wait = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 97
  tail call void @__wake_up(ptr noundef %sd_log_flush_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %for.end.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_find_jhead(ptr noundef %jd, ptr nocapture noundef %head, i1 noundef zeroext %keep_cache) local_unnamed_addr #0 align 64 {
entry:
  %done = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_bsize, align 8
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 5
  %10 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_bsize_shift, align 4
  %sub = sub i32 12, %11
  %shr = lshr i32 2097152, %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %done) #12
  %12 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %done, align 1
  %13 = call ptr @memset(ptr %head, i32 0, i32 48)
  %extent_list = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 1
  %14 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %extent_list, align 4
  %cmp.i.not = icmp eq ptr %15, %extent_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 @gfs2_map_journal_extents(ptr noundef %5, ptr noundef %jd) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wb_err.i = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 11
  %call.i = tail call i32 @errseq_sample(ptr noundef %wb_err.i) #12
  %16 = ptrtoint ptr %extent_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %je.0267 = load ptr, ptr %extent_list, align 8
  %cmp.not268 = icmp eq ptr %je.0267, %extent_list
  br i1 %cmp.not268, label %if.end.if.then103_crit_edge, label %for.body.lr.ph

if.end.if.then103_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103

for.body.lr.ph:                                   ; preds = %if.end
  %sd_fsb2bb_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 7
  %shr78 = lshr i32 4096, %11
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %off.1.lcssa = phi i32 [ %off.0269, %for.body.for.cond.loopexit_crit_edge ], [ %add67, %for.inc.for.cond.loopexit_crit_edge ]
  %bio.1.lcssa = phi ptr [ %bio.0270, %for.body.for.cond.loopexit_crit_edge ], [ %bio.5, %for.inc.for.cond.loopexit_crit_edge ]
  %page.1.lcssa = phi ptr [ %page.0271, %for.body.for.cond.loopexit_crit_edge ], [ %spec.select, %for.inc.for.cond.loopexit_crit_edge ]
  %blocks_read.1.lcssa = phi i32 [ %blocks_read.0272, %for.body.for.cond.loopexit_crit_edge ], [ %blocks_read.2, %for.inc.for.cond.loopexit_crit_edge ]
  %blocks_submitted.1.lcssa = phi i32 [ %blocks_submitted.0273, %for.body.for.cond.loopexit_crit_edge ], [ %blocks_submitted.4, %for.inc.for.cond.loopexit_crit_edge ]
  %block.1.lcssa = phi i32 [ %block.0274, %for.body.for.cond.loopexit_crit_edge ], [ %inc, %for.inc.for.cond.loopexit_crit_edge ]
  %17 = ptrtoint ptr %je.0275 to i32
  call void @__asan_load4_noabort(i32 %17)
  %je.0 = load ptr, ptr %je.0275, align 8
  %cmp.not = icmp eq ptr %je.0, %extent_list
  br i1 %cmp.not, label %for.cond.loopexit.out_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.loopexit.out_crit_edge:                  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %je.0275 = phi ptr [ %je.0267, %for.body.lr.ph ], [ %je.0, %for.cond.loopexit.for.body_crit_edge ]
  %block.0274 = phi i32 [ 0, %for.body.lr.ph ], [ %block.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %blocks_submitted.0273 = phi i32 [ 0, %for.body.lr.ph ], [ %blocks_submitted.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %blocks_read.0272 = phi i32 [ 0, %for.body.lr.ph ], [ %blocks_read.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %page.0271 = phi ptr [ null, %for.body.lr.ph ], [ %page.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %bio.0270 = phi ptr [ null, %for.body.lr.ph ], [ %bio.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %off.0269 = phi i32 [ -1, %for.body.lr.ph ], [ %off.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %lblock = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.0275, i32 0, i32 1
  %blocks = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.0275, i32 0, i32 3
  %conv244 = zext i32 %block.0274 to i64
  %18 = ptrtoint ptr %lblock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lblock, align 8
  %conv10245 = zext i32 %19 to i64
  %20 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %blocks, align 8
  %add246 = add i64 %21, %conv10245
  call void @__sanitizer_cov_trace_cmp8(i64 %add246, i64 %conv244)
  %cmp11247 = icmp ugt i64 %add246, %conv244
  br i1 %cmp11247, label %for.body13.preheader, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.body13.preheader:                             ; preds = %for.body
  %dblock8 = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.0275, i32 0, i32 2
  %22 = ptrtoint ptr %dblock8 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dblock8, align 8
  br label %for.body13

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body13.preheader
  %block.1260 = phi i32 [ %inc, %for.inc.for.body13_crit_edge ], [ %block.0274, %for.body13.preheader ]
  %dblock.0256 = phi i64 [ %inc83, %for.inc.for.body13_crit_edge ], [ %23, %for.body13.preheader ]
  %blocks_submitted.1255 = phi i32 [ %blocks_submitted.4, %for.inc.for.body13_crit_edge ], [ %blocks_submitted.0273, %for.body13.preheader ]
  %blocks_read.1253 = phi i32 [ %blocks_read.2, %for.inc.for.body13_crit_edge ], [ %blocks_read.0272, %for.body13.preheader ]
  %page.1252 = phi ptr [ %spec.select, %for.inc.for.body13_crit_edge ], [ %page.0271, %for.body13.preheader ]
  %bio.1249 = phi ptr [ %bio.5, %for.inc.for.body13_crit_edge ], [ %bio.0270, %for.body13.preheader ]
  %off.1248 = phi i32 [ %add67, %for.inc.for.body13_crit_edge ], [ %off.0269, %for.body13.preheader ]
  %tobool14.not = icmp eq ptr %page.1252, null
  br i1 %tobool14.not, label %if.then15, label %for.body13.if.end21_crit_edge

for.body13.if.end21_crit_edge:                    ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then15:                                        ; preds = %for.body13
  %shr16 = lshr i32 %block.1260, %sub
  %call.i192 = tail call ptr @pagecache_get_page(ptr noundef %7, i32 noundef %shr16, i32 noundef 7, i32 noundef 3136) #12
  %tobool18.not = icmp eq ptr %call.i192, null
  br i1 %tobool18.not, label %if.then19, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %done, align 1
  br label %out

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %for.body13.if.end21_crit_edge
  %off.2 = phi i32 [ %off.1248, %for.body13.if.end21_crit_edge ], [ 0, %if.then15.if.end21_crit_edge ]
  %page.2 = phi ptr [ %page.1252, %for.body13.if.end21_crit_edge ], [ %call.i192, %if.then15.if.end21_crit_edge ]
  %tobool22.not = icmp eq ptr %bio.1249, null
  br i1 %tobool22.not, label %if.end21.if.end51_crit_edge, label %land.lhs.true

if.end21.if.end51_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off.2)
  %tobool23.not = icmp eq i32 %off.2, 0
  %tobool23.not.not = xor i1 %tobool23.not, true
  %add24 = add i32 %blocks_submitted.1255, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %block.1260, i32 %add24)
  %cmp25 = icmp ult i32 %block.1260, %add24
  %or.cond = select i1 %tobool23.not.not, i1 true, i1 %cmp25
  br i1 %or.cond, label %if.then27, label %land.lhs.true.if.then50_crit_edge

land.lhs.true.if.then50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50

if.then27:                                        ; preds = %land.lhs.true
  %25 = ptrtoint ptr %sd_fsb2bb_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sd_fsb2bb_shift, align 4
  %sh_prom = zext i32 %26 to i64
  %shl = shl i64 %dblock.0256, %sh_prom
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio.1249, i32 0, i32 8
  %27 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bi_iter, align 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio.1249, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_size, align 8
  %shr29 = lshr i32 %30, 9
  %conv30 = zext i32 %shr29 to i64
  %add31 = add i64 %28, %conv30
  call void @__sanitizer_cov_trace_cmp8(i64 %add31, i64 %shl)
  %cmp32 = icmp eq i64 %add31, %shl
  br i1 %cmp32, label %if.then34, label %if.end40

if.then34:                                        ; preds = %if.then27
  %call35 = tail call i32 @bio_add_page(ptr noundef nonnull %bio.1249, ptr noundef nonnull %page.2, i32 noundef %9, i32 noundef %off.2) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %9)
  %cmp36 = icmp eq i32 %call35, %9
  %brmerge = select i1 %cmp36, i1 true, i1 %tobool23.not
  br i1 %brmerge, label %cleanup, label %if.then34.cleanup.thread203_crit_edge

if.then34.cleanup.thread203_crit_edge:            ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread203

if.end40:                                         ; preds = %if.then27
  br i1 %tobool23.not, label %if.end40.if.then50_crit_edge, label %if.end40.cleanup.thread203_crit_edge

if.end40.cleanup.thread203_crit_edge:             ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread203

if.end40.if.then50_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50

cleanup.thread203:                                ; preds = %if.end40.cleanup.thread203_crit_edge, %if.then34.cleanup.thread203_crit_edge
  %sub44 = sub i32 4096, %off.2
  %shr45 = lshr i32 %sub44, %11
  %conv.i193 = trunc i32 %shr45 to i16
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %conv.i193, ptr noundef nonnull @fs_bio_set) #12
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %32, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %bio.1249, i32 0, i32 1
  %33 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bi_bdev.i.i, align 4
  %bi_bdev1.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %bi_bdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %bi_bdev1.i.i, align 4
  tail call void @bio_clone_blkg_association(ptr noundef %call.i.i, ptr noundef nonnull %bio.1249) #12
  %36 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bi_iter, align 8
  %38 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bi_size, align 8
  %shr.i = lshr i32 %39, 9
  %conv2.i = zext i32 %shr.i to i64
  %add.i = add i64 %37, %conv2.i
  %bi_iter3.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %bi_iter3.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %add.i, ptr %bi_iter3.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio.1249, i32 0, i32 2
  %41 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bi_opf.i, align 8
  %bi_opf5.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %bi_opf5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %bi_opf5.i, align 8
  %bi_write_hint.i = getelementptr inbounds %struct.bio, ptr %bio.1249, i32 0, i32 5
  %44 = ptrtoint ptr %bi_write_hint.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %bi_write_hint.i, align 8
  %bi_write_hint6.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %bi_write_hint6.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %bi_write_hint6.i, align 8
  tail call void @bio_chain(ptr noundef %call.i.i, ptr noundef nonnull %bio.1249) #12
  tail call void @submit_bio(ptr noundef nonnull %bio.1249) #12
  br label %add_block_to_new_bio

cleanup:                                          ; preds = %if.then34
  br i1 %cmp36, label %cleanup.block_added_crit_edge, label %cleanup.if.then50_crit_edge

cleanup.if.then50_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50

cleanup.block_added_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %block_added

if.then50:                                        ; preds = %cleanup.if.then50_crit_edge, %if.end40.if.then50_crit_edge, %land.lhs.true.if.then50_crit_edge
  tail call void @submit_bio(ptr noundef nonnull %bio.1249) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end21.if.end51_crit_edge
  %blocks_submitted.2 = phi i32 [ %block.1260, %if.then50 ], [ %blocks_submitted.1255, %if.end21.if.end51_crit_edge ]
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 8
  %call.i.i194 = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #12
  %49 = ptrtoint ptr %sd_fsb2bb_shift to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sd_fsb2bb_shift, align 4
  %sh_prom.i = zext i32 %50 to i64
  %shl.i = shl i64 %dblock.0256, %sh_prom.i
  %bi_iter.i195 = getelementptr inbounds %struct.bio, ptr %call.i.i194, i32 0, i32 8
  %51 = ptrtoint ptr %bi_iter.i195 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %shl.i, ptr %bi_iter.i195, align 8
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 26
  %52 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_bdev.i, align 4
  %bi_flags.i.i.i196 = getelementptr inbounds %struct.bio, ptr %call.i.i194, i32 0, i32 3
  %54 = ptrtoint ptr %bi_flags.i.i.i196 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %bi_flags.i.i.i196, align 4
  %conv1.i.i.i197 = and i16 %55, -2049
  store i16 %conv1.i.i.i197, ptr %bi_flags.i.i.i196, align 4
  %bi_bdev.i.i198 = getelementptr inbounds %struct.bio, ptr %call.i.i194, i32 0, i32 1
  %56 = ptrtoint ptr %bi_bdev.i.i198 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bi_bdev.i.i198, align 4
  %cmp.not.i.i = icmp eq ptr %57, %53
  br i1 %cmp.not.i.i, label %if.end51.gfs2_log_alloc_bio.exit_crit_edge, label %if.then.i.i

if.end51.gfs2_log_alloc_bio.exit_crit_edge:       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_alloc_bio.exit

if.then.i.i:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i = and i16 %55, -2177
  %58 = ptrtoint ptr %bi_flags.i.i.i196 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i196, align 4
  br label %gfs2_log_alloc_bio.exit

gfs2_log_alloc_bio.exit:                          ; preds = %if.then.i.i, %if.end51.gfs2_log_alloc_bio.exit_crit_edge
  %59 = ptrtoint ptr %bi_bdev.i.i198 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %53, ptr %bi_bdev.i.i198, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i194) #12
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i.i194, i32 0, i32 10
  %60 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @gfs2_end_log_read, ptr %bi_end_io.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call.i.i194, i32 0, i32 11
  %61 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %5, ptr %bi_private.i, align 4
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call.i.i194, i32 0, i32 2
  %62 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %bi_opf, align 8
  br label %add_block_to_new_bio

add_block_to_new_bio:                             ; preds = %gfs2_log_alloc_bio.exit, %cleanup.thread203
  %bio.4 = phi ptr [ %call.i.i194, %gfs2_log_alloc_bio.exit ], [ %call.i.i, %cleanup.thread203 ]
  %blocks_submitted.3 = phi i32 [ %blocks_submitted.2, %gfs2_log_alloc_bio.exit ], [ %blocks_submitted.1255, %cleanup.thread203 ]
  %call53 = tail call i32 @bio_add_page(ptr noundef %bio.4, ptr noundef nonnull %page.2, i32 noundef %9, i32 noundef %off.2) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call53, i32 %9)
  %cmp54.not = icmp eq i32 %call53, %9
  br i1 %cmp54.not, label %add_block_to_new_bio.block_added_crit_edge, label %do.body60, !prof !95

add_block_to_new_bio.block_added_crit_edge:       ; preds = %add_block_to_new_bio
  call void @__sanitizer_cov_trace_pc() #14
  br label %block_added

do.body60:                                        ; preds = %add_block_to_new_bio
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 576, 0\0A.popsection", ""() #12, !srcloc !109
  unreachable

block_added:                                      ; preds = %add_block_to_new_bio.block_added_crit_edge, %cleanup.block_added_crit_edge
  %bio.5 = phi ptr [ %bio.1249, %cleanup.block_added_crit_edge ], [ %bio.4, %add_block_to_new_bio.block_added_crit_edge ]
  %blocks_submitted.4 = phi i32 [ %blocks_submitted.1255, %cleanup.block_added_crit_edge ], [ %blocks_submitted.3, %add_block_to_new_bio.block_added_crit_edge ]
  %add67 = add i32 %off.2, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add67)
  %cmp68 = icmp eq i32 %add67, 4096
  %spec.select = select i1 %cmp68, ptr null, ptr %page.2
  %add72 = add i32 %blocks_read.1253, %shr
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks_submitted.4, i32 %add72)
  %cmp73.not = icmp ugt i32 %blocks_submitted.4, %add72
  br i1 %cmp73.not, label %if.end76, label %block_added.for.inc_crit_edge

block_added.for.inc_crit_edge:                    ; preds = %block_added
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end76:                                         ; preds = %block_added
  %shr77 = lshr i32 %blocks_read.1253, %sub
  call fastcc void @gfs2_jhead_process_page(ptr noundef %jd, i32 noundef %shr77, ptr noundef %head, ptr noundef nonnull %done)
  %add79 = add i32 %blocks_read.1253, %shr78
  %63 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %done, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool80.not = icmp eq i8 %64, 0
  br i1 %tobool80.not, label %if.end76.for.inc_crit_edge, label %if.end76.out_crit_edge

if.end76.out_crit_edge:                           ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end76.for.inc_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end76.for.inc_crit_edge, %block_added.for.inc_crit_edge
  %blocks_read.2 = phi i32 [ %blocks_read.1253, %block_added.for.inc_crit_edge ], [ %add79, %if.end76.for.inc_crit_edge ]
  %inc = add i32 %block.1260, 1
  %inc83 = add i64 %dblock.0256, 1
  %conv = zext i32 %inc to i64
  %65 = ptrtoint ptr %lblock to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lblock, align 8
  %conv10 = zext i32 %66 to i64
  %67 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %blocks, align 8
  %add = add i64 %68, %conv10
  %cmp11 = icmp ugt i64 %add, %conv
  br i1 %cmp11, label %for.inc.for.body13_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body13

out:                                              ; preds = %if.end76.out_crit_edge, %if.then19, %for.cond.loopexit.out_crit_edge
  %tobool102.not = phi i1 [ false, %if.then19 ], [ true, %if.end76.out_crit_edge ], [ true, %for.cond.loopexit.out_crit_edge ]
  %ret.2 = phi i32 [ -12, %if.then19 ], [ 0, %if.end76.out_crit_edge ], [ 0, %for.cond.loopexit.out_crit_edge ]
  %bio.7 = phi ptr [ %bio.1249, %if.then19 ], [ %bio.5, %if.end76.out_crit_edge ], [ %bio.1.lcssa, %for.cond.loopexit.out_crit_edge ]
  %blocks_read.4 = phi i32 [ %blocks_read.1253, %if.then19 ], [ %add79, %if.end76.out_crit_edge ], [ %blocks_read.1.lcssa, %for.cond.loopexit.out_crit_edge ]
  %block.2 = phi i32 [ %block.1260, %if.then19 ], [ %block.1260, %if.end76.out_crit_edge ], [ %block.1.lcssa, %for.cond.loopexit.out_crit_edge ]
  %tobool94.not = icmp eq ptr %bio.7, null
  br i1 %tobool94.not, label %out.if.end96_crit_edge, label %if.then95

out.if.end96_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then95:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @submit_bio(ptr noundef nonnull %bio.7) #12
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %out.if.end96_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks_read.4, i32 %block.2)
  %cmp97279 = icmp ult i32 %blocks_read.4, %block.2
  br i1 %cmp97279, label %while.body.lr.ph, label %if.end96.while.end_crit_edge

if.end96.while.end_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end96
  %shr100 = lshr i32 4096, %11
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %blocks_read.5280 = phi i32 [ %blocks_read.4, %while.body.lr.ph ], [ %add101, %while.body.while.body_crit_edge ]
  %shr99 = lshr i32 %blocks_read.5280, %sub
  call fastcc void @gfs2_jhead_process_page(ptr noundef %jd, i32 noundef %shr99, ptr noundef %head, ptr noundef nonnull %done)
  %add101 = add i32 %blocks_read.5280, %shr100
  %cmp97 = icmp ult i32 %add101, %block.2
  br i1 %cmp97, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end96.while.end_crit_edge
  br i1 %tobool102.not, label %while.end.if.then103_crit_edge, label %while.end.if.end105_crit_edge

while.end.if.end105_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end105

while.end.if.then103_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then103

if.then103:                                       ; preds = %while.end.if.then103_crit_edge, %if.end.if.then103_crit_edge
  %call.i200 = tail call i32 @errseq_check(ptr noundef %wb_err.i, i32 noundef %call.i) #12
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %while.end.if.end105_crit_edge
  %ret.3 = phi i32 [ %ret.2, %while.end.if.end105_crit_edge ], [ %call.i200, %if.then103 ]
  br i1 %keep_cache, label %if.end105.cleanup109_crit_edge, label %if.then107

if.end105.cleanup109_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup109

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @truncate_inode_pages(ptr noundef %7, i64 noundef 0) #12
  br label %cleanup109

cleanup109:                                       ; preds = %if.then107, %if.end105.cleanup109_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %done) #12
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_map_journal_extents(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_end_log_read(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %0 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i27.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i27.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.030 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %if.end.if.end.i_crit_edge ]
  %iter_all.sroa.11.029 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select24, %if.end.if.end.i_crit_edge ]
  %iter_all.sroa.15.028 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %if.end.if.end.i_crit_edge ]
  %2 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.15.028)
  %tobool.not.i.i10 = icmp eq i32 %iter_all.sroa.15.028, 0
  br i1 %tobool.not.i.i10, label %if.else.i.i, label %if.then.i.i11

if.then.i.i11:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.030, i32 1
  br label %if.end.i.i14

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.029
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.029, i32 2
  %6 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %7, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %5, i32 %shr.i.i
  %and.i.i12 = and i32 %7, 4095
  br label %if.end.i.i14

if.end.i.i14:                                     ; preds = %if.else.i.i, %if.then.i.i11
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i11 ]
  %.sink.i.i = phi i32 [ %and.i.i12, %if.else.i.i ], [ 0, %if.then.i.i11 ]
  %sub.i.i13 = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.11.029, i32 1
  %8 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %9, %iter_all.sroa.15.028
  %10 = tail call i32 @llvm.umin.i32(i32 %sub.i.i13, i32 %sub9.i.i) #12
  %add.i.i = add i32 %10, %iter_all.sroa.15.028
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %9)
  %cmp15.i.i = icmp eq i32 %add.i.i, %9
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select24 = add nuw nsw i32 %iter_all.sroa.11.029, %inc.i.i
  %11 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end.i.i14.if.end_crit_edge, label %if.then

if.end.i.i14.if.end_crit_edge:                    ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %if.end.i.i14
  %call3 = tail call i32 @blk_status_to_errno(i8 noundef zeroext %12) #12
  %13 = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !95

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #12, !srcloc !111
  unreachable

do.body7.i:                                       ; preds = %if.then
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %13, align 4
  %and.i31.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !95

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %17, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %18, %if.end.i.i ]
  %19 = inttoptr i32 %retval.0.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i = icmp eq i32 %21, -1
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %13, align 4
  %and.i32.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !91

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !95

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i34.i = add i32 %23, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %24, %if.end.i36.i ]
  %25 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %25, ptr noundef nonnull @.str.9) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #12, !srcloc !112
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !95

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i41.i = add i32 %23, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %26, %if.end.i43.i ]
  %27 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %27) #12
  %mapping = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mapping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not.i15 = icmp eq i32 %call3, 0
  br i1 %tobool.not.i15, label %SetPageError.exit.if.end_crit_edge, label %if.end.i16, !prof !95

SetPageError.exit.if.end_crit_edge:               ; preds = %SetPageError.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i16:                                       ; preds = %SetPageError.exit
  tail call void @__filemap_set_wb_err(ptr noundef %29, i32 noundef %call3) #12
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool4.not.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i, label %if.end.i16.if.end7.i_crit_edge, label %if.then5.i

if.end.i16.if.end7.i_crit_edge:                   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #14
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 50
  %call.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call3) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i16.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call3)
  %cmp.i = icmp eq i32 %call3, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %29, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #12
  br label %if.end

if.end:                                           ; preds = %if.end7.i, %SetPageError.exit.if.end_crit_edge, %if.end.i.i14.if.end_crit_edge
  tail call void @unlock_page(ptr noundef %iter_all.sroa.0.1) #12
  %34 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %35 to i32
  %cmp.not.i = icmp ult i32 %spec.select24, %conv.i
  br i1 %cmp.not.i, label %if.end.if.end.i_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_jhead_process_page(ptr nocapture noundef readonly %jd, i32 noundef %index, ptr nocapture noundef %head, ptr nocapture noundef %done) unnamed_addr #0 align 64 {
entry:
  %lh.i = alloca %struct.gfs2_log_header_host, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %3, i32 noundef %index, i32 noundef 0, i32 noundef 0) #12
  %4 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i13 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.not.i.i14 = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.not.i.i14, label %if.end.i.i17, label %if.then.i.i16, !prof !95

if.then.i.i16:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i15 = add i32 %6, -1
  br label %_compound_head.exit.i19

if.end.i.i17:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i19

_compound_head.exit.i19:                          ; preds = %if.end.i.i17, %if.then.i.i16
  %retval.0.i.i18 = phi i32 [ %sub.i.i15, %if.then.i.i16 ], [ %7, %if.end.i.i17 ]
  %8 = inttoptr i32 %retval.0.i.i18 to ptr
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %9, align 4
  %and.i.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_locked.exit.i.i, label %if.then.i.i.i.i, !prof !95

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.10) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

folio_test_locked.exit.i.i:                       ; preds = %_compound_head.exit.i19
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %8, align 4
  %and1.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %folio_test_locked.exit.i.i.wait_on_page_locked.exit_crit_edge, label %if.then.i1.i

folio_test_locked.exit.i.i.wait_on_page_locked.exit_crit_edge: ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wait_on_page_locked.exit

if.then.i1.i:                                     ; preds = %folio_test_locked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @folio_wait_bit(ptr noundef %8, i32 noundef 0) #12
  br label %wait_on_page_locked.exit

wait_on_page_locked.exit:                         ; preds = %if.then.i1.i, %folio_test_locked.exit.i.i.wait_on_page_locked.exit_crit_edge
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !95

if.then.i.i:                                      ; preds = %wait_on_page_locked.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %wait_on_page_locked.exit
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, -1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %4, align 4
  %and.i16.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !91

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !95

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i18.i = add i32 %21, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %22, %if.end.i20.i ]
  %23 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.9) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #12, !srcloc !114
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !95

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i25.i = add i32 %21, -1
  br label %PageError.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %call.i to i32
  br label %PageError.exit

PageError.exit:                                   ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %24, %if.end.i27.i ]
  %25 = inttoptr i32 %retval.0.i28.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %if.end, label %PageError.exit.if.end5.sink.split_crit_edge

PageError.exit.if.end5.sink.split_crit_edge:      ; preds = %PageError.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.sink.split

if.end:                                           ; preds = %PageError.exit
  %29 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr = load i8, ptr %done, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool2.not = icmp eq i8 %.pr, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %30 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %jd_inode, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 33
  %34 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %lh.i) #12
  %36 = call ptr @memset(ptr %lh.i, i32 255, i32 48)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %37 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %37, 512
  %38 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %41, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %42 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i1.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 213
  %46 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !116
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %call.i, i32 noundef %or.i.i) #12
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %35, i32 0, i32 5, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then3
  %offset.016.i = phi i32 [ 0, %if.then3 ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %offset.016.i
  %call2.i = call i32 @__get_log_header(ptr noundef %35, ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %lh.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.then.i20, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i20:                                      ; preds = %for.body.i
  %48 = ptrtoint ptr %lh.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %lh.i, align 8
  %50 = ptrtoint ptr %head to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %head, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %51)
  %cmp4.not.i = icmp ult i64 %49, %51
  br i1 %cmp4.not.i, label %if.then.i20.gfs2_jhead_pg_srch.exit_crit_edge, label %if.then5.i

if.then.i20.gfs2_jhead_pg_srch.exit_crit_edge:    ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_jhead_pg_srch.exit

if.then5.i:                                       ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #14
  %52 = call ptr @memcpy(ptr %head, ptr %lh.i, i32 48)
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %for.body.i.for.inc.i_crit_edge
  %53 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %sb_bsize.i, align 8
  %add.i = add i32 %54, %offset.016.i
  %cmp.i = icmp ult i32 %add.i, 4096
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.gfs2_jhead_pg_srch.exit_crit_edge

for.inc.i.gfs2_jhead_pg_srch.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_jhead_pg_srch.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

gfs2_jhead_pg_srch.exit:                          ; preds = %for.inc.i.gfs2_jhead_pg_srch.exit_crit_edge, %if.then.i20.gfs2_jhead_pg_srch.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ true, %if.then.i20.gfs2_jhead_pg_srch.exit_crit_edge ], [ false, %for.inc.i.gfs2_jhead_pg_srch.exit_crit_edge ]
  call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #12
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  %55 = call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i1.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 213
  %59 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %60, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %61 = call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i.i21 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %lh.i) #12
  %frombool = zext i1 %cmp.lcssa.i to i8
  br label %if.end5.sink.split

if.end5.sink.split:                               ; preds = %gfs2_jhead_pg_srch.exit, %PageError.exit.if.end5.sink.split_crit_edge
  %.sink = phi i8 [ %frombool, %gfs2_jhead_pg_srch.exit ], [ 1, %PageError.exit.if.end5.sink.split_crit_edge ]
  %65 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %.sink, ptr %done, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %if.end.if.end5_crit_edge
  %66 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %4, align 4
  %and.i.i22 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %and.i.i22, 0
  br i1 %tobool.not.i.i23, label %if.end.i.i26, label %if.then.i.i25, !prof !95

if.then.i.i25:                                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i24 = add i32 %67, -1
  br label %_compound_head.exit.i28

if.end.i.i26:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i28

_compound_head.exit.i28:                          ; preds = %if.end.i.i26, %if.then.i.i25
  %retval.0.i.i27 = phi i32 [ %sub.i.i24, %if.then.i.i25 ], [ %68, %if.end.i.i26 ]
  %69 = inttoptr i32 %retval.0.i.i27 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %69, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  %70 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i.i.i.i = icmp eq i32 %71, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i29, label %do.end5.i.i.i.i, !prof !91

if.then.i.i.i.i29:                                ; preds = %_compound_head.exit.i28
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %69, ptr noundef nonnull @.str.12) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !119
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i28
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #12
  %72 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %72, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gfs2_jhead_process_page, %if.then.i.i.i.i.i)) #12
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !94

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %69, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #12
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %69) #12
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %73 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %4, align 4
  %and.i.i30 = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool.not.i.i31 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool.not.i.i31, label %if.end.i.i34, label %if.then.i.i33, !prof !95

if.then.i.i33:                                    ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i32 = add i32 %74, -1
  br label %_compound_head.exit.i39

if.end.i.i34:                                     ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i39

_compound_head.exit.i39:                          ; preds = %if.end.i.i34, %if.then.i.i33
  %retval.0.i.i35 = phi i32 [ %sub.i.i32, %if.then.i.i33 ], [ %75, %if.end.i.i34 ]
  %76 = inttoptr i32 %retval.0.i.i35 to ptr
  %_refcount.i.i.i.i.i36 = getelementptr inbounds %struct.page, ptr %76, i32 0, i32 3
  %call.i.i.i.i.i.i.i37 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i36, i32 noundef 4) #12
  %77 = ptrtoint ptr %_refcount.i.i.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %_refcount.i.i.i.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i.i.i.i38 = icmp eq i32 %78, 0
  br i1 %cmp.i.i.i.i38, label %if.then.i.i.i.i40, label %do.end5.i.i.i.i44, !prof !91

if.then.i.i.i.i40:                                ; preds = %_compound_head.exit.i39
  call void @__sanitizer_cov_trace_pc() #14
  call void @dump_page(ptr noundef %76, ptr noundef nonnull @.str.12) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #12, !srcloc !119
  unreachable

do.end5.i.i.i.i44:                                ; preds = %_compound_head.exit.i39
  %call.i.i.i10.i.i.i.i41 = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i36, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !106
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i36, i32 1, i32 3, i32 1) #12
  %79 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i36, ptr %_refcount.i.i.i.i.i36, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i36) #12, !srcloc !107
  %asmresult.i.i.i.i.i.i.i.i.i.i42 = extractvalue { i32, i32 } %79, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i42)
  %cmp.i.i.i.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i42, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gfs2_jhead_process_page, %if.then.i.i.i.i.i46)) #12
          to label %folio_put_testzero.exit.i.i47 [label %if.then.i.i.i.i.i46], !srcloc !94

if.then.i.i.i.i.i46:                              ; preds = %do.end5.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i.i.i.i45 = zext i1 %cmp.i.i.i.i.i.i.i43 to i32
  call void @__page_ref_mod_and_test(ptr noundef %76, i32 noundef -1, i32 noundef %conv.i.i.i.i.i45) #12
  br label %folio_put_testzero.exit.i.i47

folio_put_testzero.exit.i.i47:                    ; preds = %if.then.i.i.i.i.i46, %do.end5.i.i.i.i44
  br i1 %cmp.i.i.i.i.i.i.i43, label %if.then.i4.i48, label %folio_put_testzero.exit.i.i47.put_page.exit49_crit_edge

folio_put_testzero.exit.i.i47.put_page.exit49_crit_edge: ; preds = %folio_put_testzero.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_page.exit49

if.then.i4.i48:                                   ; preds = %folio_put_testzero.exit.i.i47
  call void @__sanitizer_cov_trace_pc() #14
  call void @__put_page(ptr noundef %76) #12
  br label %put_page.exit49

put_page.exit49:                                  ; preds = %if.then.i4.i48, %folio_put_testzero.exit.i.i47.put_page.exit49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_drain_revokes(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_revokes = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 83
  %0 = ptrtoint ptr %sd_log_revokes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sd_log_revokes, align 4
  %cmp.i.not4 = icmp eq ptr %1, %sd_log_revokes
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %15, %list_del_init.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

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
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  %bd_gl = getelementptr i8, ptr %2, i32 -12
  %11 = ptrtoint ptr %bd_gl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_gl, align 4
  tail call void @gfs2_glock_remove_revoke(ptr noundef %12) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %13 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %add.ptr) #12
  %14 = ptrtoint ptr %sd_log_revokes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %sd_log_revokes, align 4
  %cmp.i.not = icmp eq ptr %15, %sd_log_revokes
  br i1 %cmp.i.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_remove_revoke(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gfs2_pin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_write_io_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_clone_blkg_association(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_status_to_errno(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_log_header(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @databuf_lo_before_commit(ptr noundef %sdp, ptr noundef %tr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %tr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sd_ldptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 10
  %0 = ptrtoint ptr %sd_ldptrs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_ldptrs.i, align 8
  %div1.i = lshr i32 %1, 1
  %tr_num_databuf_new = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 6
  %2 = ptrtoint ptr %tr_num_databuf_new to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tr_num_databuf_new, align 4
  %tr_num_databuf_rm = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 8
  %4 = ptrtoint ptr %tr_num_databuf_rm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tr_num_databuf_rm, align 4
  %sub = sub i32 %3, %5
  %tr_databuf = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 11
  tail call fastcc void @gfs2_before_commit(ptr noundef %sdp, i32 noundef %div1.i, i32 noundef %sub, ptr noundef %tr_databuf, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @databuf_lo_after_commit(ptr noundef %sdp, ptr noundef %tr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %tr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tr_databuf = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 11
  %0 = ptrtoint ptr %tr_databuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tr_databuf, align 4
  %cmp.i.not6 = icmp eq ptr %1, %tr_databuf
  br i1 %cmp.i.not6, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %2 = phi ptr [ %14, %list_del_init.exit.while.body_crit_edge ], [ %1, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

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
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @gfs2_unpin(ptr noundef %sdp, ptr noundef %12, ptr noundef nonnull %tr)
  %13 = ptrtoint ptr %tr_databuf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %tr_databuf, align 4
  %cmp.i.not = icmp eq ptr %14, %tr_databuf
  br i1 %cmp.i.not, label %list_del_init.exit.cleanup_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @databuf_lo_scan_elements(ptr noundef %jd, i32 noundef %start, ptr nocapture noundef readonly %ld, ptr nocapture noundef readonly %ptr, i32 noundef %pass) #0 align 64 {
entry:
  %bh_log = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  %ld_data1 = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %ld, i32 0, i32 3
  %4 = ptrtoint ptr %ld_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ld_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh_log) #12
  %6 = ptrtoint ptr %bh_log to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh_log, align 4, !annotation !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pass)
  %cmp.not = icmp eq i32 %pass, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ld_type = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %ld, i32 0, i32 1
  %7 = ptrtoint ptr %ld_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ld_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 302, i32 %8)
  %cmp1.not = icmp eq i32 %8, 302
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not50 = icmp eq i32 %5, 0
  br i1 %tobool.not50, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %inc.i = add i32 %start, 1
  %9 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %jd_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %10)
  %cmp.i = icmp eq i32 %inc.i, %10
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %jd_found_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 10
  %jd_replayed_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %blks.053 = phi i32 [ %5, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %ptr.addr.052 = phi ptr [ %ptr, %for.body.lr.ph ], [ %incdec.ptr2, %for.inc.for.body_crit_edge ]
  %start.addr.051 = phi i32 [ %spec.store.select.i, %for.body.lr.ph ], [ %spec.store.select.i46, %for.inc.for.body_crit_edge ]
  %incdec.ptr = getelementptr i64, ptr %ptr.addr.052, i32 1
  %11 = ptrtoint ptr %ptr.addr.052 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ptr.addr.052, align 8
  %incdec.ptr2 = getelementptr i64, ptr %ptr.addr.052, i32 2
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %incdec.ptr, align 8
  %15 = ptrtoint ptr %jd_found_blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %jd_found_blocks, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %jd_found_blocks, align 8
  %call3 = call i32 @gfs2_revoke_check(ptr noundef %jd, i64 noundef %12, i32 noundef %start.addr.051) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %call7 = call i32 @gfs2_replay_read_block(ptr noundef %jd, i32 noundef %start.addr.051, ptr noundef nonnull %bh_log) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = call ptr @gfs2_meta_new(ptr noundef %3, i64 noundef %12) #12
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call11, i32 0, i32 5
  %17 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data, align 4
  %19 = ptrtoint ptr %bh_log to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh_log, align 4
  %b_data12 = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %b_data12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data12, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %b_size, align 8
  %25 = call ptr @memcpy(ptr %18, ptr %22, i32 %24)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool13.not = icmp eq i64 %14, 0
  br i1 %tobool13.not, label %if.end10.if.end16_crit_edge, label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 18225520, ptr %27, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  call void @mark_buffer_dirty(ptr noundef %call11) #12
  %29 = ptrtoint ptr %bh_log to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bh_log, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end16.brelse.exit_crit_edge, label %if.then.i

if.end16.brelse.exit_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %30) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end16.brelse.exit_crit_edge
  %tobool.not.i40 = icmp eq ptr %call11, null
  br i1 %tobool.not.i40, label %brelse.exit.brelse.exit42_crit_edge, label %if.then.i41

brelse.exit.brelse.exit42_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit42

if.then.i41:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %call11) #12
  br label %brelse.exit42

brelse.exit42:                                    ; preds = %if.then.i41, %brelse.exit.brelse.exit42_crit_edge
  %31 = ptrtoint ptr %jd_replayed_blocks to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %jd_replayed_blocks, align 8
  %inc17 = add i32 %32, 1
  store i32 %inc17, ptr %jd_replayed_blocks, align 8
  br label %for.inc

for.inc:                                          ; preds = %brelse.exit42, %for.body.for.inc_crit_edge
  %inc.i43 = add i32 %start.addr.051, 1
  %33 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %jd_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i43, i32 %34)
  %cmp.i45 = icmp eq i32 %inc.i43, %34
  %spec.store.select.i46 = select i1 %cmp.i45, i32 0, i32 %inc.i43
  %dec = add i32 %blks.053, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_log) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @databuf_lo_after_scan(ptr nocapture noundef readonly %jd, i32 noundef %error, i32 noundef %pass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_gl, align 4
  %call3 = tail call i32 @gfs2_inode_metasync(ptr noundef %7) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pass)
  %cmp.not = icmp eq i32 %pass, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_gl6 = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %i_gl6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gl6, align 4
  %call7 = tail call i32 @gfs2_inode_metasync(ptr noundef %9) #12
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 110
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %10 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jd_jid, align 4
  %jd_replayed_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 12
  %12 = ptrtoint ptr %jd_replayed_blocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jd_replayed_blocks, align 8
  %jd_found_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 10
  %14 = ptrtoint ptr %jd_found_blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %jd_found_blocks, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %sd_fsname, i32 noundef %11, i32 noundef %13, i32 noundef %15) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_before_commit(ptr noundef %sdp, i32 noundef %limit, i32 noundef %total, ptr noundef %blist, i1 noundef zeroext %is_databuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #12
  tail call void @list_sort(ptr noundef null, ptr noundef %blist, ptr noundef nonnull @blocknr_cmp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total)
  %tobool1.not167 = icmp eq i32 %total, 0
  br i1 %tobool1.not167, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %cond3 = select i1 %is_databuf, i32 302, i32 300
  %sd_jdesc.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %sd_log_flush_head.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 103
  %sd_log_tail.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 100
  %sd_log_head.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 102
  br label %while.body

while.body:                                       ; preds = %do.end88.while.body_crit_edge, %while.body.lr.ph
  %total.addr.0168 = phi i32 [ %total, %while.body.lr.ph ], [ %sub, %do.end88.while.body_crit_edge ]
  %0 = phi ptr [ %blist, %while.body.lr.ph ], [ %.pn.lcssa, %do.end88.while.body_crit_edge ]
  %1 = phi ptr [ %blist, %while.body.lr.ph ], [ %.pn140.lcssa, %do.end88.while.body_crit_edge ]
  %2 = tail call i32 @llvm.umin.i32(i32 %total.addr.0168, i32 %limit)
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #12
  %add = add i32 %2, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_page_pool to i32))
  %3 = load ptr, ptr @gfs2_page_pool, align 4
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %3, i32 noundef 3072) #12
  %call1.i = tail call ptr @page_address(ptr noundef %call.i) #12
  %4 = getelementptr inbounds i8, ptr %call1.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 4088)
  %6 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 18225520, ptr %call1.i, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %call1.i, i32 0, i32 1
  %7 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 9, ptr %mh_type.i, align 4
  %mh_format.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %call1.i, i32 0, i32 3
  %8 = ptrtoint ptr %mh_format.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 900, ptr %mh_format.i, align 8
  %ld_type4.i = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %call1.i, i32 0, i32 1
  %9 = ptrtoint ptr %ld_type4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond3, ptr %ld_type4.i, align 8
  %ld_length5.i = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %call1.i, i32 0, i32 2
  %10 = ptrtoint ptr %ld_length5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %ld_length5.i, align 4
  %ld_data16.i = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %call1.i, i32 0, i32 3
  %11 = ptrtoint ptr %ld_data16.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %2, ptr %ld_data16.i, align 8
  %call4 = tail call ptr @page_address(ptr noundef %call.i) #12
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #12
  %add.ptr5 = getelementptr %struct.gfs2_log_descriptor, ptr %call4, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %2, i32 1)
  br label %for.cond

for.cond:                                         ; preds = %if.end19.for.cond_crit_edge, %while.body
  %ptr.0 = phi ptr [ %add.ptr5, %while.body ], [ %ptr.1, %if.end19.for.cond_crit_edge ]
  %n.0 = phi i32 [ 0, %while.body ], [ %inc, %if.end19.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %0, %while.body ], [ %.pn, %if.end19.for.cond_crit_edge ]
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in, align 8
  %bd1.1 = getelementptr i8, ptr %.pn, i32 -16
  %cmp10.not = icmp eq ptr %.pn, %blist
  br i1 %cmp10.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %13 = ptrtoint ptr %bd1.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bd1.1, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %b_blocknr, align 8
  %incdec.ptr = getelementptr i64, ptr %ptr.0, i32 1
  %17 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %ptr.0, align 8
  br i1 %is_databuf, label %if.then12, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then12:                                        ; preds = %for.body
  %18 = ptrtoint ptr %bd1.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bd1.1, align 8
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %19) #12
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_page.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %22 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %22, 512
  %23 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %27 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i1.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i1.i.i.i to ptr
  %task.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task.i.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 213
  %31 = ptrtoint ptr %pagefault_disabled.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pagefault_disabled.i.i.i.i.i, align 8
  %inc.i.i.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i.i.i, ptr %pagefault_disabled.i.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !116
  %call.i.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %21, i32 noundef %or.i.i) #12
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %33 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i = and i32 %35, 4095
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 %and.i
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %37)
  %cmp.i = icmp eq i32 %37, 18225520
  br i1 %cmp.i, label %if.then.i, label %if.then12.gfs2_check_magic.exit_crit_edge

if.then12.gfs2_check_magic.exit_crit_edge:        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_check_magic.exit

if.then.i:                                        ; preds = %if.then12
  %38 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %19, align 4
  %40 = and i32 %39, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.gfs2_check_magic.exit_crit_edge

if.then.i.gfs2_check_magic.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_check_magic.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 17, ptr noundef %19) #12
  br label %gfs2_check_magic.exit

gfs2_check_magic.exit:                            ; preds = %if.then.i.i, %if.then.i.gfs2_check_magic.exit_crit_edge, %if.then12.gfs2_check_magic.exit_crit_edge
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  %41 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i1.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i1.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %task.i.i.i.i, align 8
  %pagefault_disabled.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 213
  %45 = ptrtoint ptr %pagefault_disabled.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pagefault_disabled.i.i.i.i, align 8
  %dec.i.i.i.i = add i32 %46, -1
  store i32 %dec.i.i.i.i, ptr %pagefault_disabled.i.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %47 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  %51 = ptrtoint ptr %bd1.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bd1.1, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  %55 = lshr i32 %54, 17
  %.lobit = and i32 %55, 1
  %56 = zext i32 %.lobit to i64
  %incdec.ptr18 = getelementptr i64, ptr %ptr.0, i32 2
  %57 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %incdec.ptr, align 8
  br label %if.end19

if.end19:                                         ; preds = %gfs2_check_magic.exit, %for.body.if.end19_crit_edge
  %ptr.1 = phi ptr [ %incdec.ptr18, %gfs2_check_magic.exit ], [ %incdec.ptr, %for.body.if.end19_crit_edge ]
  %inc = add nuw i32 %n.0, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end19.for.end_crit_edge, label %if.end19.for.cond_crit_edge

if.end19.for.cond_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %if.end19.for.end_crit_edge ], [ %blist, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #12
  tail call fastcc void @gfs2_log_write_page(ptr noundef %sdp, ptr noundef %call.i)
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #12
  br label %for.cond34

for.cond34:                                       ; preds = %if.end60.for.cond34_crit_edge, %for.end
  %n.1 = phi i32 [ 0, %for.end ], [ %inc61, %if.end60.for.cond34_crit_edge ]
  %.pn140.in = phi ptr [ %1, %for.end ], [ %.pn140, %if.end60.for.cond34_crit_edge ]
  %58 = ptrtoint ptr %.pn140.in to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn140 = load ptr, ptr %.pn140.in, align 8
  %bd2.1 = getelementptr i8, ptr %.pn140, i32 -16
  %cmp36.not = icmp eq ptr %.pn140, %blist
  br i1 %cmp36.not, label %for.cond34.do.end88_crit_edge, label %for.body39

for.cond34.do.end88_crit_edge:                    ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88

for.body39:                                       ; preds = %for.cond34
  %59 = ptrtoint ptr %bd2.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bd2.1, align 8
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %60, i32 0, i32 11
  %call.i.i.i147 = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #12
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #12, !srcloc !93
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #12
  %62 = ptrtoint ptr %bd2.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bd2.1, align 8
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 366) #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %63, i32 noundef 4) #12
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %63, align 4
  %and.i.i.i.i = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %for.body39.if.then.i149_crit_edge

for.body39.if.then.i149_crit_edge:                ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i149

trylock_buffer.exit.i:                            ; preds = %for.body39
  tail call void @llvm.prefetch.p0(ptr %63, i32 1, i32 3, i32 1) #12
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 4, ptr elementtype(i32) %63) #12, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  %67 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.not.i = icmp eq i32 %67, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i149_crit_edge

trylock_buffer.exit.i.if.then.i149_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i149

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_buffer.exit

if.then.i149:                                     ; preds = %trylock_buffer.exit.i.if.then.i149_crit_edge, %for.body39.if.then.i149_crit_edge
  tail call void @__lock_buffer(ptr noundef %63) #12
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i149, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %68 = ptrtoint ptr %bd2.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bd2.1, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  %72 = and i32 %71, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool44.not = icmp eq i32 %72, 0
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %lock_buffer.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_page_pool to i32))
  %73 = load ptr, ptr @gfs2_page_pool, align 4
  %call46 = tail call noalias ptr @mempool_alloc(ptr noundef %73, i32 noundef 3072) #12
  %call47 = tail call ptr @page_address(ptr noundef %call46) #12
  %74 = ptrtoint ptr %bd2.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bd2.1, align 8
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %b_page, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %78 = load i32, ptr @pgprot_kernel, align 4
  %or.i = or i32 %78, 512
  %79 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i.i150 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i150 to ptr
  %preempt_count.i.i.i.i151 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i151 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i151, align 4
  %add.i.i.i = add i32 %82, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i151, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !115
  %83 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i1.i.i152 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i1.i.i152 to ptr
  %task.i.i.i.i153 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %task.i.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task.i.i.i.i153, align 8
  %pagefault_disabled.i.i.i.i154 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 213
  %87 = ptrtoint ptr %pagefault_disabled.i.i.i.i154 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pagefault_disabled.i.i.i.i154, align 8
  %inc.i.i.i.i = add i32 %88, 1
  store i32 %inc.i.i.i.i, ptr %pagefault_disabled.i.i.i.i154, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !116
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %77, i32 noundef %or.i) #12
  %89 = ptrtoint ptr %bd2.1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bd2.1, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %90, i32 0, i32 5
  %91 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %b_data, align 4
  %93 = ptrtoint ptr %92 to i32
  %and = and i32 %93, 4095
  %add.ptr51 = getelementptr i8, ptr %call.i.i, i32 %and
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %90, i32 0, i32 4
  %94 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %b_size, align 8
  %96 = call ptr @memcpy(ptr %call47, ptr %add.ptr51, i32 %95)
  tail call void @kunmap_local_indexed(ptr noundef %call.i.i) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !117
  %97 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i1.i = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i1.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %task.i.i.i, align 8
  %pagefault_disabled.i.i.i = getelementptr inbounds %struct.task_struct, ptr %100, i32 0, i32 213
  %101 = ptrtoint ptr %pagefault_disabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pagefault_disabled.i.i.i, align 8
  %dec.i.i.i = add i32 %102, -1
  store i32 %dec.i.i.i, ptr %pagefault_disabled.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !118
  %103 = tail call i32 @llvm.read_register.i32(metadata !81) #12
  %and.i.i.i.i155 = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i155 to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %106, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %107 = ptrtoint ptr %call47 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %call47, align 4
  %108 = ptrtoint ptr %bd2.1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bd2.1, align 8
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %109) #12
  %110 = ptrtoint ptr %bd2.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bd2.1, align 8
  tail call void @unlock_buffer(ptr noundef %111) #12
  %112 = ptrtoint ptr %bd2.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bd2.1, align 8
  %tobool.not.i = icmp eq ptr %113, null
  br i1 %tobool.not.i, label %if.then45.brelse.exit_crit_edge, label %if.then.i156

if.then45.brelse.exit_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i156:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %113) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i156, %if.then45.brelse.exit_crit_edge
  tail call fastcc void @gfs2_log_write_page(ptr noundef %sdp, ptr noundef %call46)
  br label %if.end60

if.else:                                          ; preds = %lock_buffer.exit
  %114 = ptrtoint ptr %sd_jdesc.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sd_jdesc.i, align 4
  %116 = ptrtoint ptr %sd_log_flush_head.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sd_log_flush_head.i, align 8
  %extent_list.i.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %115, i32 0, i32 1
  %118 = ptrtoint ptr %extent_list.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %je.027.i.i = load ptr, ptr %extent_list.i.i, align 8
  %cmp.not28.i.i = icmp eq ptr %je.027.i.i, %extent_list.i.i
  br i1 %cmp.not28.i.i, label %if.else.gfs2_log_bmap.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.else.gfs2_log_bmap.exit.i_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_bmap.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.else
  %conv.i.i = zext i32 %117 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %je.029.i.i = phi ptr [ %je.027.i.i, %for.body.lr.ph.i.i ], [ %je.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %lblock2.i.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.029.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %lblock2.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %lblock2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %117)
  %cmp3.not.i.i = icmp ugt i32 %120, %117
  br i1 %cmp3.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %conv5.i.i = zext i32 %120 to i64
  %blocks.i.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.029.i.i, i32 0, i32 3
  %121 = ptrtoint ptr %blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %blocks.i.i, align 8
  %add.i.i = add i64 %122, %conv5.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %conv.i.i)
  %cmp6.i.i = icmp ugt i64 %add.i.i, %conv.i.i
  br i1 %cmp6.i.i, label %if.then.i.i158, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i158:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dblock.i.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.029.i.i, i32 0, i32 2
  %123 = ptrtoint ptr %dblock.i.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %dblock.i.i, align 8
  %add9.i.i = sub nsw i64 %conv.i.i, %conv5.i.i
  %sub.i.i157 = add i64 %add9.i.i, %124
  br label %gfs2_log_bmap.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %125 = ptrtoint ptr %je.029.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %je.0.i.i = load ptr, ptr %je.029.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %je.0.i.i, %extent_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.gfs2_log_bmap.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.gfs2_log_bmap.exit.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_bmap.exit.i

gfs2_log_bmap.exit.i:                             ; preds = %for.inc.i.i.gfs2_log_bmap.exit.i_crit_edge, %if.then.i.i158, %if.else.gfs2_log_bmap.exit.i_crit_edge
  %retval.0.i.i = phi i64 [ %sub.i.i157, %if.then.i.i158 ], [ -1, %if.else.gfs2_log_bmap.exit.i_crit_edge ], [ -1, %for.inc.i.i.gfs2_log_bmap.exit.i_crit_edge ]
  %126 = ptrtoint ptr %sd_log_tail.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sd_log_tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %127)
  %cmp.i.i = icmp eq i32 %117, %127
  br i1 %cmp.i.i, label %land.rhs.i.i, label %gfs2_log_bmap.exit.i.gfs2_log_incr_head.exit.i_crit_edge

gfs2_log_bmap.exit.i.gfs2_log_incr_head.exit.i_crit_edge: ; preds = %gfs2_log_bmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_incr_head.exit.i

land.rhs.i.i:                                     ; preds = %gfs2_log_bmap.exit.i
  %128 = ptrtoint ptr %sd_log_head.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sd_log_head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %129)
  %cmp2.not.i.i = icmp eq i32 %117, %129
  br i1 %cmp2.not.i.i, label %land.rhs.i.i.gfs2_log_incr_head.exit.i_crit_edge, label %do.body4.i.i, !prof !95

land.rhs.i.i.gfs2_log_incr_head.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_incr_head.exit.i

do.body4.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #12, !srcloc !100
  unreachable

gfs2_log_incr_head.exit.i:                        ; preds = %land.rhs.i.i.gfs2_log_incr_head.exit.i_crit_edge, %gfs2_log_bmap.exit.i.gfs2_log_incr_head.exit.i_crit_edge
  %inc.i.i = add i32 %117, 1
  %130 = ptrtoint ptr %sd_log_flush_head.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %inc.i.i, ptr %sd_log_flush_head.i, align 8
  %jd_blocks.i.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %115, i32 0, i32 8
  %131 = ptrtoint ptr %jd_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %jd_blocks.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %132)
  %cmp9.i.i = icmp eq i32 %inc.i.i, %132
  %spec.store.select.i.i = select i1 %cmp9.i.i, i32 0, i32 %inc.i.i
  %133 = ptrtoint ptr %sd_log_flush_head.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %spec.store.select.i.i, ptr %sd_log_flush_head.i, align 8
  %b_page.i159 = getelementptr inbounds %struct.buffer_head, ptr %69, i32 0, i32 2
  %134 = ptrtoint ptr %b_page.i159 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %b_page.i159, align 8
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %69, i32 0, i32 4
  %136 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %b_size.i, align 8
  %b_data.i160 = getelementptr inbounds %struct.buffer_head, ptr %69, i32 0, i32 5
  %138 = ptrtoint ptr %b_data.i160 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %b_data.i160, align 4
  %140 = ptrtoint ptr %139 to i32
  %and.i161 = and i32 %140, 4095
  %jd_log_bio.i.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %115, i32 0, i32 5
  %call.i.i162 = tail call fastcc ptr @gfs2_log_get_bio(ptr noundef %sdp, i64 noundef %retval.0.i.i, ptr noundef %jd_log_bio.i.i, i1 noundef zeroext false) #12
  %call1.i.i = tail call i32 @bio_add_page(ptr noundef %call.i.i162, ptr noundef %135, i32 noundef %137, i32 noundef %and.i161) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i8.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i8.i, label %if.then.i9.i, label %gfs2_log_incr_head.exit.i.if.end60_crit_edge

gfs2_log_incr_head.exit.i.if.end60_crit_edge:     ; preds = %gfs2_log_incr_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then.i9.i:                                     ; preds = %gfs2_log_incr_head.exit.i
  %call3.i.i = tail call fastcc ptr @gfs2_log_get_bio(ptr noundef %sdp, i64 noundef %retval.0.i.i, ptr noundef %jd_log_bio.i.i, i1 noundef zeroext true) #12
  %call4.i.i = tail call i32 @bio_add_page(ptr noundef %call3.i.i, ptr noundef %135, i32 noundef %137, i32 noundef %and.i161) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %do.end.i.i, label %if.then.i9.i.if.end60_crit_edge, !prof !91

if.then.i9.i.if.end60_crit_edge:                  ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

do.end.i.i:                                       ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 343, i32 noundef 9, ptr noundef null) #12
  br label %if.end60

if.end60:                                         ; preds = %do.end.i.i, %if.then.i9.i.if.end60_crit_edge, %gfs2_log_incr_head.exit.i.if.end60_crit_edge, %brelse.exit
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #12
  %inc61 = add nuw i32 %n.1, 1
  %exitcond172.not = icmp eq i32 %inc61, %umax
  br i1 %exitcond172.not, label %if.end60.do.end88_crit_edge, label %if.end60.for.cond34_crit_edge

if.end60.for.cond34_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond34

if.end60.do.end88_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88

do.end88:                                         ; preds = %if.end60.do.end88_crit_edge, %for.cond34.do.end88_crit_edge
  %.pn140.lcssa = phi ptr [ %.pn140, %if.end60.do.end88_crit_edge ], [ %blist, %for.cond34.do.end88_crit_edge ]
  %sub = sub i32 %total.addr.0168, %2
  %tobool1.not = icmp eq i32 %sub, 0
  br i1 %tobool1.not, label %do.end88.while.end_crit_edge, label %do.end88.while.body_crit_edge

do.end88.while.body_crit_edge:                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

do.end88.while.end_crit_edge:                     ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %do.end88.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @blocknr_cmp(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %a, i32 -16
  %add.ptr3 = getelementptr i8, ptr %b, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %b_blocknr, align 8
  %4 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr3, align 8
  %b_blocknr5 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %b_blocknr5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %b_blocknr5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %7)
  %cmp = icmp ult i64 %3, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %7)
  %cmp10 = icmp ugt i64 %3, %7
  %. = zext i1 %cmp10 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_log_write_page(ptr noundef %sdp, ptr noundef %page) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 8
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 56
  %2 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_jdesc, align 4
  %sd_log_flush_head = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 103
  %4 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sd_log_flush_head, align 8
  %extent_list.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %extent_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %je.027.i = load ptr, ptr %extent_list.i, align 8
  %cmp.not28.i = icmp eq ptr %je.027.i, %extent_list.i
  br i1 %cmp.not28.i, label %entry.gfs2_log_bmap.exit_crit_edge, label %for.body.lr.ph.i

entry.gfs2_log_bmap.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_bmap.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %conv.i = zext i32 %5 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %je.029.i = phi ptr [ %je.027.i, %for.body.lr.ph.i ], [ %je.0.i, %for.inc.i.for.body.i_crit_edge ]
  %lblock2.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.029.i, i32 0, i32 1
  %7 = ptrtoint ptr %lblock2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lblock2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %5)
  %cmp3.not.i = icmp ugt i32 %8, %5
  br i1 %cmp3.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %conv5.i = zext i32 %8 to i64
  %blocks.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.029.i, i32 0, i32 3
  %9 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %blocks.i, align 8
  %add.i = add i64 %10, %conv5.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp6.i = icmp ugt i64 %add.i, %conv.i
  br i1 %cmp6.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %dblock.i = getelementptr inbounds %struct.gfs2_journal_extent, ptr %je.029.i, i32 0, i32 2
  %11 = ptrtoint ptr %dblock.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %dblock.i, align 8
  %add9.i = sub nsw i64 %conv.i, %conv5.i
  %sub.i = add i64 %add9.i, %12
  br label %gfs2_log_bmap.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %je.029.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %je.0.i = load ptr, ptr %je.029.i, align 8
  %cmp.not.i = icmp eq ptr %je.0.i, %extent_list.i
  br i1 %cmp.not.i, label %for.inc.i.gfs2_log_bmap.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.gfs2_log_bmap.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_bmap.exit

gfs2_log_bmap.exit:                               ; preds = %for.inc.i.gfs2_log_bmap.exit_crit_edge, %if.then.i, %entry.gfs2_log_bmap.exit_crit_edge
  %retval.0.i = phi i64 [ %sub.i, %if.then.i ], [ -1, %entry.gfs2_log_bmap.exit_crit_edge ], [ -1, %for.inc.i.gfs2_log_bmap.exit_crit_edge ]
  %sd_log_tail.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 100
  %14 = ptrtoint ptr %sd_log_tail.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sd_log_tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %15)
  %cmp.i = icmp eq i32 %5, %15
  br i1 %cmp.i, label %land.rhs.i, label %gfs2_log_bmap.exit.gfs2_log_incr_head.exit_crit_edge

gfs2_log_bmap.exit.gfs2_log_incr_head.exit_crit_edge: ; preds = %gfs2_log_bmap.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_incr_head.exit

land.rhs.i:                                       ; preds = %gfs2_log_bmap.exit
  %sd_log_head.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 102
  %16 = ptrtoint ptr %sd_log_head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sd_log_head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %17)
  %cmp2.not.i = icmp eq i32 %5, %17
  br i1 %cmp2.not.i, label %land.rhs.i.gfs2_log_incr_head.exit_crit_edge, label %do.body4.i, !prof !95

land.rhs.i.gfs2_log_incr_head.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_incr_head.exit

do.body4.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 139, 0\0A.popsection", ""() #12, !srcloc !100
  unreachable

gfs2_log_incr_head.exit:                          ; preds = %land.rhs.i.gfs2_log_incr_head.exit_crit_edge, %gfs2_log_bmap.exit.gfs2_log_incr_head.exit_crit_edge
  %inc.i = add i32 %5, 1
  %18 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.i, ptr %sd_log_flush_head, align 8
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %jd_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %20)
  %cmp9.i = icmp eq i32 %inc.i, %20
  %spec.store.select.i = select i1 %cmp9.i, i32 0, i32 %inc.i
  %21 = ptrtoint ptr %sd_log_flush_head to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select.i, ptr %sd_log_flush_head, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %s_blocksize, align 16
  %jd_log_bio.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %3, i32 0, i32 5
  %call.i = tail call fastcc ptr @gfs2_log_get_bio(ptr noundef %sdp, i64 noundef %retval.0.i, ptr noundef %jd_log_bio.i, i1 noundef zeroext false) #12
  %call1.i = tail call i32 @bio_add_page(ptr noundef %call.i, ptr noundef %page, i32 noundef %23, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i7 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i7, label %if.then.i8, label %gfs2_log_incr_head.exit.gfs2_log_write.exit_crit_edge

gfs2_log_incr_head.exit.gfs2_log_write.exit_crit_edge: ; preds = %gfs2_log_incr_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_write.exit

if.then.i8:                                       ; preds = %gfs2_log_incr_head.exit
  %call3.i = tail call fastcc ptr @gfs2_log_get_bio(ptr noundef %sdp, i64 noundef %retval.0.i, ptr noundef %jd_log_bio.i, i1 noundef zeroext true) #12
  %call4.i = tail call i32 @bio_add_page(ptr noundef %call3.i, ptr noundef %page, i32 noundef %23, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end.i, label %if.then.i8.gfs2_log_write.exit_crit_edge, !prof !91

if.then.i8.gfs2_log_write.exit_crit_edge:         ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_log_write.exit

do.end.i:                                         ; preds = %if.then.i8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 343, i32 noundef 9, ptr noundef null) #12
  br label %gfs2_log_write.exit

gfs2_log_write.exit:                              ; preds = %do.end.i, %if.then.i8.gfs2_log_write.exit_crit_edge, %gfs2_log_incr_head.exit.gfs2_log_write.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_unpin(ptr noundef %sdp, ptr noundef %bh, ptr noundef %tr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %0 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_private, align 8
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !91

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #12, !srcloc !123
  unreachable

do.body10:                                        ; preds = %entry
  %4 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bh, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %do.body22, label %do.end30, !prof !91

do.body22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 108, 0\0A.popsection", ""() #12, !srcloc !124
  unreachable

do.end30:                                         ; preds = %do.body10
  tail call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 366) #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh, i32 noundef 4) #12
  %7 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %bh, align 4
  %and.i.i.i.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %do.end30.if.then.i_crit_edge

do.end30.if.then.i_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %do.end30
  tail call void @llvm.prefetch.p0(ptr %bh, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh, ptr %bh, i32 4, ptr elementtype(i32) %bh) #12, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  %10 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %do.end30.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh) #12
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  tail call void @mark_buffer_dirty(ptr noundef %bh) #12
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %bh) #12
  %bd_gl.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %bd_gl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_gl.i, align 4
  %ln_type.i = getelementptr inbounds %struct.gfs2_glock, ptr %12, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %ln_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ln_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i = icmp eq i32 %14, 3
  br i1 %cmp.i, label %if.then32, label %lock_buffer.exit.if.end33_crit_edge

lock_buffer.exit.if.end33_crit_edge:              ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then32:                                        ; preds = %lock_buffer.exit
  %gl_name.i = getelementptr inbounds %struct.gfs2_glock, ptr %12, i32 0, i32 1
  %ln_sbd.i = getelementptr inbounds %struct.gfs2_glock, ptr %12, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ln_sbd.i, align 8
  %call.i = tail call ptr @gfs2_glock2rgrp(ptr noundef %12) #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %b_blocknr.i, align 8
  %21 = ptrtoint ptr %gl_name.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %gl_name.i, align 8
  %sub.i = sub i64 %20, %22
  %conv.i = trunc i64 %sub.i to i32
  %rd_bits.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i, i32 0, i32 13
  %23 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rd_bits.i, align 8
  %add.ptr.i = getelementptr %struct.gfs2_bitmap, ptr %24, i32 %conv.i
  tail call void @rgrp_lock_local(ptr noundef %call.i) #12
  %bi_clone.i = getelementptr %struct.gfs2_bitmap, ptr %24, i32 %conv.i, i32 1
  %25 = ptrtoint ptr %bi_clone.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bi_clone.i, align 4
  %cmp.i64 = icmp eq ptr %26, null
  br i1 %cmp.i64, label %if.then32.maybe_release_space.exit_crit_edge, label %if.end.i

if.then32.maybe_release_space.exit_crit_edge:     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %maybe_release_space.exit

if.end.i:                                         ; preds = %if.then32
  %ar_discard.i = getelementptr inbounds %struct.gfs2_sbd, ptr %16, i32 0, i32 21, i32 3
  %27 = ptrtoint ptr %ar_discard.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i = load i32, ptr %ar_discard.i, align 4
  %28 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then3.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %rd_data0.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %rd_data0.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rd_data0.i, align 8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %call5.i = tail call i32 @gfs2_rgrp_send_discards(ptr noundef %16, i64 noundef %30, ptr noundef %32, ptr noundef %add.ptr.i, i32 noundef 1, ptr noundef null) #12
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %33 = ptrtoint ptr %bi_clone.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bi_clone.i, align 4
  %bi_offset.i = getelementptr %struct.gfs2_bitmap, ptr %24, i32 %conv.i, i32 3
  %35 = ptrtoint ptr %bi_offset.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bi_offset.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %34, i32 %36
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %40, i32 %36
  %bi_bytes.i = getelementptr %struct.gfs2_bitmap, ptr %24, i32 %conv.i, i32 5
  %41 = ptrtoint ptr %bi_bytes.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bi_bytes.i, align 4
  %43 = call ptr @memcpy(ptr %add.ptr8.i, ptr %add.ptr11.i, i32 %42)
  %bi_flags.i = getelementptr %struct.gfs2_bitmap, ptr %24, i32 %conv.i, i32 2
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bi_flags.i) #12
  %rd_free.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i, i32 0, i32 7
  %44 = ptrtoint ptr %rd_free.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rd_free.i, align 4
  %rd_free_clone.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i, i32 0, i32 10
  %46 = ptrtoint ptr %rd_free_clone.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %rd_free_clone.i, align 8
  %rd_reserved.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i, i32 0, i32 9
  %47 = ptrtoint ptr %rd_reserved.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rd_reserved.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %48)
  %cmp13.i = icmp ult i32 %45, %48
  br i1 %cmp13.i, label %do.body18.i, label %do.end24.i, !prof !91

do.body18.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/lops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end24.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %rd_extfail_pt.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i, i32 0, i32 18
  %49 = ptrtoint ptr %rd_extfail_pt.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %45, ptr %rd_extfail_pt.i, align 4
  br label %maybe_release_space.exit

maybe_release_space.exit:                         ; preds = %do.end24.i, %if.then32.maybe_release_space.exit_crit_edge
  tail call void @rgrp_unlock_local(ptr noundef %call.i) #12
  br label %if.end33

if.end33:                                         ; preds = %maybe_release_space.exit, %lock_buffer.exit.if.end33_crit_edge
  %sd_ail_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 104
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock) #12
  %bd_tr = getelementptr inbounds %struct.gfs2_bufdata, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %bd_tr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bd_tr, align 8
  %tobool34.not = icmp eq ptr %51, null
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  %bd_ail_st_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %1, i32 0, i32 5
  %call.i.i65 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bd_ail_st_list) #12
  br i1 %call.i.i65, label %if.end.i.i, label %if.then35.list_del.exit_crit_edge

if.then35.list_del.exit_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %1, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %bd_ail_st_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bd_ail_st_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then35.list_del.exit_crit_edge
  %58 = ptrtoint ptr %bd_ail_st_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %bd_ail_st_list, align 4
  %prev.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %1, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not.i66 = icmp eq ptr %bh, null
  br i1 %tobool.not.i66, label %list_del.exit.if.end36_crit_edge, label %if.then.i67

list_del.exit.if.end36_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then.i67:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %bh) #12
  br label %if.end36

if.else:                                          ; preds = %if.end33
  %60 = ptrtoint ptr %bd_gl.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bd_gl.i, align 4
  %bd_ail_gl_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %1, i32 0, i32 6
  %gl_ail_list = getelementptr inbounds %struct.gfs2_glock, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %gl_ail_list to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %gl_ail_list, align 4
  %call.i.i69 = tail call zeroext i1 @__list_add_valid(ptr noundef %bd_ail_gl_list, ptr noundef %gl_ail_list, ptr noundef %63) #12
  br i1 %call.i.i69, label %if.end.i.i70, label %if.else.list_add.exit_crit_edge

if.else.list_add.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i70:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %bd_ail_gl_list, ptr %prev1.i.i, align 4
  %65 = ptrtoint ptr %bd_ail_gl_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %bd_ail_gl_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %1, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %gl_ail_list, ptr %prev3.i.i, align 4
  %67 = ptrtoint ptr %gl_ail_list to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %bd_ail_gl_list, ptr %gl_ail_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i70, %if.else.list_add.exit_crit_edge
  %gl_ail_count = getelementptr inbounds %struct.gfs2_glock, ptr %61, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gl_ail_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %gl_ail_count, i32 1, i32 3, i32 1) #12
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gl_ail_count, ptr %gl_ail_count, i32 1, ptr elementtype(i32) %gl_ail_count) #12, !srcloc !93
  br label %if.end36

if.end36:                                         ; preds = %list_add.exit, %if.then.i67, %list_del.exit.if.end36_crit_edge
  %69 = ptrtoint ptr %bd_tr to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %tr, ptr %bd_tr, align 8
  %bd_ail_st_list38 = getelementptr inbounds %struct.gfs2_bufdata, ptr %1, i32 0, i32 5
  %tr_ail1_list = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 14
  %70 = ptrtoint ptr %tr_ail1_list to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tr_ail1_list, align 4
  %call.i.i71 = tail call zeroext i1 @__list_add_valid(ptr noundef %bd_ail_st_list38, ptr noundef %tr_ail1_list, ptr noundef %71) #12
  br i1 %call.i.i71, label %if.end.i.i74, label %if.end36.list_add.exit75_crit_edge

if.end36.list_add.exit75_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit75

if.end.i.i74:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i72 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %bd_ail_st_list38, ptr %prev1.i.i72, align 4
  %73 = ptrtoint ptr %bd_ail_st_list38 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %bd_ail_st_list38, align 4
  %prev3.i.i73 = getelementptr inbounds %struct.gfs2_bufdata, ptr %1, i32 0, i32 5, i32 1
  %74 = ptrtoint ptr %prev3.i.i73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %tr_ail1_list, ptr %prev3.i.i73, align 4
  %75 = ptrtoint ptr %tr_ail1_list to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %bd_ail_st_list38, ptr %tr_ail1_list, align 4
  br label %list_add.exit75

list_add.exit75:                                  ; preds = %if.end.i.i74, %if.end36.list_add.exit75_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock) #12
  %76 = ptrtoint ptr %bd_gl.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bd_gl.i, align 4
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %77) #12
  tail call fastcc void @trace_gfs2_pin(ptr noundef %1, i32 noundef 0)
  tail call void @unlock_buffer(ptr noundef %bh) #12
  %sd_log_pinned = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 81
  %call.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_pinned, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sd_log_pinned, i32 1, i32 3, i32 1) #12
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_pinned, ptr %sd_log_pinned, i32 1, ptr elementtype(i32) %sd_log_pinned) #12, !srcloc !126
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_glock2rgrp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rgrp_lock_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_rgrp_send_discards(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rgrp_unlock_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_revoke_check(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_replay_read_block(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_meta_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_inode_metasync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buf_lo_before_commit(ptr noundef %sdp, ptr noundef %tr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %tr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sd_ldptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 10
  %0 = ptrtoint ptr %sd_ldptrs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_ldptrs.i, align 8
  %tr_num_buf_new = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 5
  %2 = ptrtoint ptr %tr_num_buf_new to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tr_num_buf_new, align 4
  %tr_num_buf_rm = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 7
  %4 = ptrtoint ptr %tr_num_buf_rm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tr_num_buf_rm, align 4
  %sub = sub i32 %3, %5
  %tr_buf = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 12
  tail call fastcc void @gfs2_before_commit(ptr noundef %sdp, i32 noundef %1, i32 noundef %sub, ptr noundef %tr_buf, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buf_lo_after_commit(ptr noundef %sdp, ptr noundef %tr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %tr, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tr_buf = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 12
  %0 = ptrtoint ptr %tr_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tr_buf, align 4
  %cmp.i.not6 = icmp eq ptr %1, %tr_buf
  br i1 %cmp.i.not6, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %if.end.while.body_crit_edge
  %2 = phi ptr [ %14, %list_del_init.exit.while.body_crit_edge ], [ %1, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit

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
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  tail call fastcc void @gfs2_unpin(ptr noundef %sdp, ptr noundef %12, ptr noundef nonnull %tr)
  %13 = ptrtoint ptr %tr_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %tr_buf, align 4
  %cmp.i.not = icmp eq ptr %14, %tr_buf
  br i1 %cmp.i.not, label %list_del_init.exit.cleanup_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_del_init.exit.cleanup_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @buf_lo_before_scan(ptr nocapture noundef writeonly %jd, ptr nocapture noundef readnone %head, i32 noundef %pass) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass)
  %cmp.not = icmp eq i32 %pass, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %jd_found_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 10
  %0 = ptrtoint ptr %jd_found_blocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %jd_found_blocks, align 8
  %jd_replayed_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 12
  %1 = ptrtoint ptr %jd_replayed_blocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %jd_replayed_blocks, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buf_lo_scan_elements(ptr noundef %jd, i32 noundef %start, ptr nocapture noundef readonly %ld, ptr nocapture noundef readonly %ptr, i32 noundef %pass) #0 align 64 {
entry:
  %bh_log = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_gl, align 4
  %ld_data1 = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %ld, i32 0, i32 3
  %8 = ptrtoint ptr %ld_data1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ld_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh_log) #12
  %10 = ptrtoint ptr %bh_log to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh_log, align 4, !annotation !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pass)
  %cmp.not = icmp eq i32 %pass, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ld_type = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %ld, i32 0, i32 1
  %11 = ptrtoint ptr %ld_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ld_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %12)
  %cmp3.not = icmp eq i32 %12, 300
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not72 = icmp eq i32 %9, 0
  br i1 %tobool.not72, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %inc.i = add i32 %start, 1
  %13 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %jd_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %14)
  %cmp.i = icmp eq i32 %inc.i, %14
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %jd_found_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 10
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 110
  %jd_jid.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %jd_replayed_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %blks.075 = phi i32 [ %9, %for.body.lr.ph ], [ %dec, %for.inc.for.body_crit_edge ]
  %ptr.addr.074 = phi ptr [ %ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %start.addr.073 = phi i32 [ %spec.store.select.i, %for.body.lr.ph ], [ %spec.store.select.i64, %for.inc.for.body_crit_edge ]
  %incdec.ptr = getelementptr i64, ptr %ptr.addr.074, i32 1
  %15 = ptrtoint ptr %ptr.addr.074 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ptr.addr.074, align 8
  %17 = ptrtoint ptr %jd_found_blocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %jd_found_blocks, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %jd_found_blocks, align 8
  %call4 = call i32 @gfs2_revoke_check(ptr noundef %jd, i64 noundef %16, i32 noundef %start.addr.073) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %call8 = call i32 @gfs2_replay_read_block(ptr noundef %jd, i32 noundef %start.addr.073, ptr noundef nonnull %bh_log) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = call ptr @gfs2_meta_new(ptr noundef %7, i64 noundef %16) #12
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call12, i32 0, i32 5
  %19 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b_data, align 4
  %21 = ptrtoint ptr %bh_log to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bh_log, align 4
  %b_data13 = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %b_data13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data13, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %b_size, align 8
  %27 = call ptr @memcpy(ptr %20, ptr %24, i32 %26)
  %28 = load ptr, ptr %b_data, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %30)
  %cmp.not.i = icmp eq i32 %30, 18225520
  br i1 %cmp.not.i, label %if.else, label %gfs2_meta_check.exit, !prof !95

gfs2_meta_check.exit:                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %call12, i32 0, i32 3
  %31 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %b_blocknr.i, align 8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %sd_fsname.i, i64 noundef %32) #15
  br label %if.end21

if.else:                                          ; preds = %if.end11
  %33 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_data, align 4
  %mh_type = getelementptr inbounds %struct.gfs2_meta_header, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %mh_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mh_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp18 = icmp eq i32 %36, 2
  br i1 %cmp18, label %if.then19, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then19:                                        ; preds = %if.else
  %37 = ptrtoint ptr %bh_log to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bh_log, align 4
  %39 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %jd_inode, align 8
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i.i, align 16
  %b_data.i52 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 5
  %45 = ptrtoint ptr %b_data.i52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data.i52, align 4
  %call1.i = call ptr @gfs2_blk2rgrpd(ptr noundef %44, i64 noundef %16, i1 noundef zeroext false) #12
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then19.if.end20_crit_edge, label %land.lhs.true.i

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true.i:                                  ; preds = %if.then19
  %rd_addr.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call1.i, i32 0, i32 2
  %47 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %16)
  %cmp.i53 = icmp eq i64 %48, %16
  br i1 %cmp.i53, label %land.lhs.true2.i, label %land.lhs.true.i.if.end20_crit_edge

land.lhs.true.i.if.end20_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %rd_bits.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call1.i, i32 0, i32 13
  %49 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rd_bits.i, align 8
  %tobool3.not.i = icmp eq ptr %50, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end20_crit_edge, label %land.lhs.true4.i

land.lhs.true2.i.if.end20_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool6.not.i = icmp eq ptr %52, null
  br i1 %tobool6.not.i, label %land.lhs.true4.i.if.end20_crit_edge, label %do.end.i56

land.lhs.true4.i.if.end20_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

do.end.i56:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname.i54 = getelementptr inbounds %struct.gfs2_sbd, ptr %44, i32 0, i32 110
  %53 = ptrtoint ptr %jd_jid.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %jd_jid.i, align 4
  %b_blocknr.i55 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 3
  %55 = ptrtoint ptr %b_blocknr.i55 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %b_blocknr.i55, align 8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %sd_fsname.i54, i64 noundef %16, i32 noundef %54, i64 noundef %56) #15
  %57 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rd_bits.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %and.i = and i32 %62, 65542
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp ne i32 %and.i, 0
  %cond.i = zext i1 %tobool16.not.i to i32
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %60, align 4
  %shr.i.i.i = lshr i32 %64, 16
  %and1.i.i.i = and i32 %shr.i.i.i, 1
  %rd_igeneration.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call1.i, i32 0, i32 12
  %65 = ptrtoint ptr %rd_igeneration.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %rd_igeneration.i, align 8
  %rg_igeneration.i = getelementptr inbounds %struct.gfs2_rgrp, ptr %46, i32 0, i32 5
  %67 = ptrtoint ptr %rg_igeneration.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %rg_igeneration.i, align 8
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %sd_fsname.i54, i32 noundef %cond.i, i32 noundef %and1.i.i.i, i64 noundef %66, i64 noundef %68) #15
  %rd_gl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call1.i, i32 0, i32 1
  %69 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rd_gl.i, align 4
  call void @gfs2_dump_glock(ptr noundef null, ptr noundef %70, i1 noundef zeroext true) #12
  br label %if.end20

if.end20:                                         ; preds = %do.end.i56, %land.lhs.true4.i.if.end20_crit_edge, %land.lhs.true2.i.if.end20_crit_edge, %land.lhs.true.i.if.end20_crit_edge, %if.then19.if.end20_crit_edge, %if.else.if.end20_crit_edge
  call void @mark_buffer_dirty(ptr noundef %call12) #12
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %gfs2_meta_check.exit
  %error.1 = phi i32 [ 0, %if.end20 ], [ -5, %gfs2_meta_check.exit ]
  %71 = ptrtoint ptr %bh_log to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bh_log, align 4
  %tobool.not.i57 = icmp eq ptr %72, null
  br i1 %tobool.not.i57, label %if.end21.brelse.exit_crit_edge, label %if.then.i

if.end21.brelse.exit_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %72) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end21.brelse.exit_crit_edge
  %tobool.not.i58 = icmp eq ptr %call12, null
  br i1 %tobool.not.i58, label %brelse.exit.brelse.exit60_crit_edge, label %if.then.i59

brelse.exit.brelse.exit60_crit_edge:              ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit60

if.then.i59:                                      ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %call12) #12
  br label %brelse.exit60

brelse.exit60:                                    ; preds = %if.then.i59, %brelse.exit.brelse.exit60_crit_edge
  br i1 %cmp.not.i, label %if.end24, label %brelse.exit60.cleanup_crit_edge

brelse.exit60.cleanup_crit_edge:                  ; preds = %brelse.exit60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %brelse.exit60
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %jd_replayed_blocks to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %jd_replayed_blocks, align 8
  %inc25 = add i32 %74, 1
  store i32 %inc25, ptr %jd_replayed_blocks, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %for.body.for.inc_crit_edge
  %inc.i61 = add i32 %start.addr.073, 1
  %75 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %jd_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i61, i32 %76)
  %cmp.i63 = icmp eq i32 %inc.i61, %76
  %spec.store.select.i64 = select i1 %cmp.i63, i32 0, i32 %inc.i61
  %dec = add i32 %blks.075, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %brelse.exit60.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %error.1, %brelse.exit60.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh_log) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buf_lo_after_scan(ptr nocapture noundef readonly %jd, i32 noundef %error, i32 noundef %pass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_gl, align 4
  %call3 = tail call i32 @gfs2_inode_metasync(ptr noundef %7) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pass)
  %cmp.not = icmp eq i32 %pass, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %i_gl6 = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %i_gl6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gl6, align 4
  %call7 = tail call i32 @gfs2_inode_metasync(ptr noundef %9) #12
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 110
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %10 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %jd_jid, align 4
  %jd_replayed_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 12
  %12 = ptrtoint ptr %jd_replayed_blocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jd_replayed_blocks, align 8
  %jd_found_blocks = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 10
  %14 = ptrtoint ptr %jd_found_blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %jd_found_blocks, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %sd_fsname, i32 noundef %11, i32 noundef %13, i32 noundef %15) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_blk2rgrpd(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dump_glock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @revoke_lo_before_commit(ptr noundef %sdp, ptr nocapture noundef readnone %tr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_revokes = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 83
  tail call void @gfs2_flush_revokes(ptr noundef %sdp) #12
  %sd_log_num_revoke = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 82
  %0 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_log_num_revoke, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @gfs2_struct2blk(ptr noundef %sdp, i32 noundef %1) #12
  %2 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sd_log_num_revoke, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_page_pool to i32))
  %4 = load ptr, ptr @gfs2_page_pool, align 4
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %4, i32 noundef 3072) #12
  %call1.i = tail call ptr @page_address(ptr noundef %call.i) #12
  %5 = getelementptr inbounds i8, ptr %call1.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 4088)
  %7 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 18225520, ptr %call1.i, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %call1.i, i32 0, i32 1
  %8 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9, ptr %mh_type.i, align 4
  %mh_format.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %call1.i, i32 0, i32 3
  %9 = ptrtoint ptr %mh_format.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 900, ptr %mh_format.i, align 8
  %ld_type4.i = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %call1.i, i32 0, i32 1
  %10 = ptrtoint ptr %ld_type4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 301, ptr %ld_type4.i, align 8
  %ld_length5.i = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %call1.i, i32 0, i32 2
  %11 = ptrtoint ptr %ld_length5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %ld_length5.i, align 4
  %ld_data16.i = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %call1.i, i32 0, i32 3
  %12 = ptrtoint ptr %ld_data16.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %3, ptr %ld_data16.i, align 8
  %13 = ptrtoint ptr %sd_log_revokes to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn61 = load ptr, ptr %sd_log_revokes, align 4
  %cmp.not62 = icmp eq ptr %.pn61, %sd_log_revokes
  br i1 %cmp.not62, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 5, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %.pn65 = phi ptr [ %.pn61, %for.body.lr.ph ], [ %.pn, %if.end9.for.body_crit_edge ]
  %offset.064 = phi i32 [ 72, %for.body.lr.ph ], [ %add12, %if.end9.for.body_crit_edge ]
  %page.063 = phi ptr [ %call.i, %for.body.lr.ph ], [ %page.1, %if.end9.for.body_crit_edge ]
  %14 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sd_log_num_revoke, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %sd_log_num_revoke, align 4
  %add = add i32 %offset.064, 8
  %16 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_bsize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp5 = icmp ugt i32 %add, %17
  br i1 %cmp5, label %if.then6, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @gfs2_log_write_page(ptr noundef %sdp, ptr noundef %page.063)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_page_pool to i32))
  %18 = load ptr, ptr @gfs2_page_pool, align 4
  %call7 = tail call noalias ptr @mempool_alloc(ptr noundef %18, i32 noundef 3072) #12
  %call8 = tail call ptr @page_address(ptr noundef %call7) #12
  %19 = getelementptr inbounds i8, ptr %call8, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 4088)
  %21 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 18225520, ptr %call8, align 8
  %mh_type = getelementptr inbounds %struct.gfs2_meta_header, ptr %call8, i32 0, i32 1
  %22 = ptrtoint ptr %mh_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 12, ptr %mh_type, align 4
  %mh_format = getelementptr inbounds %struct.gfs2_meta_header, ptr %call8, i32 0, i32 3
  %23 = ptrtoint ptr %mh_format to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1000, ptr %mh_format, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %for.body.if.end9_crit_edge
  %page.1 = phi ptr [ %call7, %if.then6 ], [ %page.063, %for.body.if.end9_crit_edge ]
  %offset.1 = phi i32 [ 24, %if.then6 ], [ %offset.064, %for.body.if.end9_crit_edge ]
  %bd_blkno = getelementptr i8, ptr %.pn65, i32 -8
  %24 = ptrtoint ptr %bd_blkno to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bd_blkno, align 8
  %call10 = tail call ptr @page_address(ptr noundef %page.1) #12
  %add.ptr11 = getelementptr i8, ptr %call10, i32 %offset.1
  %26 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %add.ptr11, align 8
  %add12 = add i32 %offset.1, 8
  %27 = ptrtoint ptr %.pn65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn65, align 4
  %cmp.not = icmp eq ptr %.pn, %sd_log_revokes
  br i1 %cmp.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %if.end.for.end_crit_edge
  %page.0.lcssa = phi ptr [ %call.i, %if.end.for.end_crit_edge ], [ %page.1, %if.end9.for.end_crit_edge ]
  %28 = ptrtoint ptr %sd_log_num_revoke to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sd_log_num_revoke, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool19.not = icmp eq i32 %29, 0
  br i1 %tobool19.not, label %for.end.if.end27_crit_edge, label %if.then26, !prof !95

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_withdraw_i(ptr noundef %sdp, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.revoke_lo_before_commit, ptr noundef nonnull @.str.1, i32 noundef 897, i1 noundef zeroext false) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.end.if.end27_crit_edge
  tail call fastcc void @gfs2_log_write_page(ptr noundef %sdp, ptr noundef %page.0.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @revoke_lo_after_commit(ptr noundef %sdp, ptr nocapture noundef readnone %tr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_log_revokes.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 83
  %0 = ptrtoint ptr %sd_log_revokes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %sd_log_revokes.i, align 4
  %cmp.i.not4.i = icmp eq ptr %1, %sd_log_revokes.i
  br i1 %cmp.i.not4.i, label %entry.gfs2_drain_revokes.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.gfs2_drain_revokes.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_drain_revokes.exit

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %15, %list_del_init.exit.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %prev.i3.i.i, align 4
  %bd_gl.i = getelementptr i8, ptr %2, i32 -12
  %11 = ptrtoint ptr %bd_gl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bd_gl.i, align 4
  tail call void @gfs2_glock_remove_revoke(ptr noundef %12) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %13 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %add.ptr.i) #12
  %14 = ptrtoint ptr %sd_log_revokes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %sd_log_revokes.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %sd_log_revokes.i
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.gfs2_drain_revokes.exit_crit_edge, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

list_del_init.exit.i.gfs2_drain_revokes.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_drain_revokes.exit

gfs2_drain_revokes.exit:                          ; preds = %list_del_init.exit.i.gfs2_drain_revokes.exit_crit_edge, %entry.gfs2_drain_revokes.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @revoke_lo_before_scan(ptr nocapture noundef writeonly %jd, ptr nocapture noundef readonly %head, i32 noundef %pass) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass)
  %cmp.not = icmp eq i32 %pass, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %jd_found_revokes = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 11
  %0 = ptrtoint ptr %jd_found_revokes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %jd_found_revokes, align 4
  %lh_tail = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 2
  %1 = ptrtoint ptr %lh_tail to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lh_tail, align 4
  %jd_replay_tail = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 14
  %3 = ptrtoint ptr %jd_replay_tail to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %jd_replay_tail, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @revoke_lo_scan_elements(ptr noundef %jd, i32 noundef %start, ptr nocapture noundef readonly %ld, ptr nocapture noundef readnone %ptr, i32 noundef %pass) #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %ld_length = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %ld, i32 0, i32 2
  %6 = ptrtoint ptr %ld_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ld_length, align 4
  %ld_data1 = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %ld, i32 0, i32 3
  %8 = ptrtoint ptr %ld_data1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ld_data1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #12
  %10 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass)
  %cmp.not = icmp eq i32 %pass, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ld_type = getelementptr inbounds %struct.gfs2_log_descriptor, ptr %ld, i32 0, i32 1
  %11 = ptrtoint ptr %ld_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ld_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 301, i32 %12)
  %cmp1.not = icmp ne i32 %12, 301
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not52 = icmp eq i32 %7, 0
  %or.cond = select i1 %cmp1.not, i1 true, i1 %tobool.not52
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %for.body.lr.ph

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 4
  %jd_found_revokes = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 11
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %brelse.exit49.for.body_crit_edge, %for.body.lr.ph
  %tobool6.not58 = phi i1 [ false, %for.body.lr.ph ], [ true, %brelse.exit49.for.body_crit_edge ]
  %offset.057 = phi i32 [ 72, %for.body.lr.ph ], [ 24, %brelse.exit49.for.body_crit_edge ]
  %revokes.056 = phi i32 [ %9, %for.body.lr.ph ], [ %revokes.2, %brelse.exit49.for.body_crit_edge ]
  %blks.055 = phi i32 [ %7, %for.body.lr.ph ], [ %dec22, %brelse.exit49.for.body_crit_edge ]
  %start.addr.053 = phi i32 [ %start, %for.body.lr.ph ], [ %spec.store.select.i, %brelse.exit49.for.body_crit_edge ]
  %call2 = call i32 @gfs2_replay_read_block(ptr noundef %jd, i32 noundef %start.addr.053, ptr noundef nonnull %bh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %for.body
  br i1 %tobool6.not58, label %if.then7, label %if.end5.while.cond.preheader_crit_edge

if.end5.while.cond.preheader_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

if.then7:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mh_type.i, align 4
  %conv.i = trunc i32 %20 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 18225520
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !95

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i32 @gfs2_meta_check_ii(ptr noundef %5, ptr noundef %14, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.revoke_lo_scan_elements, ptr noundef nonnull @.str.1, i32 noundef 956) #12
  br label %while.cond.preheader

if.end.i:                                         ; preds = %if.then7
  %conv3.i = and i32 %20, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv3.i)
  %cmp5.not.i = icmp eq i32 %conv3.i, 12
  br i1 %cmp5.not.i, label %if.end.i.while.cond.preheader_crit_edge, label %if.then13.i, !prof !95

if.end.i.while.cond.preheader_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = call i32 @gfs2_metatype_check_ii(ptr noundef %5, ptr noundef %14, i16 noundef zeroext 12, i16 noundef zeroext %conv.i, ptr noundef nonnull @__func__.revoke_lo_scan_elements, ptr noundef nonnull @.str.1, i32 noundef 956) #12
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then13.i, %if.end.i.while.cond.preheader_crit_edge, %if.then.i, %if.end5.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %if.end17.while.cond_crit_edge, %while.cond.preheader
  %revokes.1 = phi i32 [ %dec, %if.end17.while.cond_crit_edge ], [ %revokes.056, %while.cond.preheader ]
  %offset.1 = phi i32 [ %add, %if.end17.while.cond_crit_edge ], [ %offset.057, %while.cond.preheader ]
  %add = add i32 %offset.1, 8
  %21 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sb_bsize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %22)
  %cmp10.not = icmp ugt i32 %add, %22
  br i1 %cmp10.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.cond
  %23 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 %offset.1
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr, align 8
  %call11 = call i32 @gfs2_revoke_add(ptr noundef %jd, i64 noundef %28, i32 noundef %start.addr.053) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %while.body
  %29 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bh, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then13.cleanup_crit_edge, label %if.then.i44

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i44:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %30) #12
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool14.not = icmp eq i32 %call11, 0
  br i1 %tobool14.not, label %if.else.if.end17_crit_edge, label %if.then15

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %jd_found_revokes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %jd_found_revokes, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %jd_found_revokes, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else.if.end17_crit_edge
  %dec = add i32 %revokes.1, -1
  %tobool18.not = icmp eq i32 %dec, 0
  br i1 %tobool18.not, label %if.end17.while.end_crit_edge, label %if.end17.while.cond_crit_edge

if.end17.while.cond_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %while.cond.while.end_crit_edge
  %revokes.2 = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %revokes.1, %while.cond.while.end_crit_edge ]
  %33 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bh, align 4
  %tobool.not.i46 = icmp eq ptr %34, null
  br i1 %tobool.not.i46, label %while.end.brelse.exit49_crit_edge, label %if.then.i47

while.end.brelse.exit49_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit49

if.then.i47:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %34) #12
  br label %brelse.exit49

brelse.exit49:                                    ; preds = %if.then.i47, %while.end.brelse.exit49_crit_edge
  %inc.i = add i32 %start.addr.053, 1
  %35 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %jd_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %36)
  %cmp.i = icmp eq i32 %inc.i, %36
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %dec22 = add i32 %blks.055, -1
  %tobool.not = icmp eq i32 %dec22, 0
  br i1 %tobool.not, label %brelse.exit49.cleanup_crit_edge, label %brelse.exit49.for.body_crit_edge

brelse.exit49.for.body_crit_edge:                 ; preds = %brelse.exit49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

brelse.exit49.cleanup_crit_edge:                  ; preds = %brelse.exit49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit49.cleanup_crit_edge, %if.then.i44, %if.then13.cleanup_crit_edge, %for.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %call11, %if.then13.cleanup_crit_edge ], [ %call11, %if.then.i44 ], [ %call2, %for.body.cleanup_crit_edge ], [ 0, %brelse.exit49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @revoke_lo_after_scan(ptr noundef %jd, i32 noundef %error, i32 noundef %pass) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 4
  %0 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jd_inode, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pass)
  %cmp.not = icmp eq i32 %pass, 1
  br i1 %cmp.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 110
  %jd_jid = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 7
  %6 = ptrtoint ptr %jd_jid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %jd_jid, align 4
  %jd_found_revokes = getelementptr inbounds %struct.gfs2_jdesc, ptr %jd, i32 0, i32 11
  %8 = ptrtoint ptr %jd_found_revokes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %jd_found_revokes, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %sd_fsname, i32 noundef %7, i32 noundef %9) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %entry.cleanup.sink.split_crit_edge
  tail call void @gfs2_revoke_clean(ptr noundef %jd) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_flush_revokes(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_struct2blk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_revoke_add(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_check_ii(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_metatype_check_ii(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_revoke_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !11, !13, !14, !16, !17, !18, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !71, !72, !74, !76, !78, !79, !80}
!llvm.named.register.sp = !{!81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/lops.c", i32 50, i32 3}
!2 = !{ptr @__func__.gfs2_pin, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gfs2_log_ops, !5, !"gfs2_log_ops", i1 false, i1 false}
!5 = !{!"../fs/gfs2/lops.c", i32 1127, i32 35}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../fs/gfs2/trace_gfs2.h", i32 319, i32 1}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/gfs2/lops.c", i32 211, i32 4}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @gfs2_end_log_write._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @gfs2_end_log_write._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/mm.h", i32 717, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/gfs2/lops.c", i32 1124, i32 13}
!32 = !{ptr @gfs2_databuf_lops, !33, !"gfs2_databuf_lops", i1 false, i1 false}
!33 = !{!"../fs/gfs2/lops.c", i32 1119, i32 41}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/gfs2/lops.c", i32 1080, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @databuf_lo_after_scan._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @databuf_lo_after_scan._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/gfs2/lops.c", i32 1107, i32 13}
!43 = !{ptr @gfs2_buf_lops, !44, !"gfs2_buf_lops", i1 false, i1 false}
!44 = !{!"../fs/gfs2/lops.c", i32 1101, i32 41}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/gfs2/util.h", i32 104, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @gfs2_meta_check._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @gfs2_meta_check._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/gfs2/lops.c", i32 779, i32 3}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @obsolete_rgrp._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @obsolete_rgrp._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/gfs2/lops.c", i32 781, i32 3}
!58 = !{ptr @obsolete_rgrp._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @obsolete_rgrp._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/gfs2/lops.c", i32 859, i32 2}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @buf_lo_after_scan._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @buf_lo_after_scan._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../fs/gfs2/lops.c", i32 1116, i32 13}
!67 = !{ptr @gfs2_revoke_lops, !68, !"gfs2_revoke_lops", i1 false, i1 false}
!68 = !{!"../fs/gfs2/lops.c", i32 1110, i32 41}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/gfs2/lops.c", i32 897, i32 2}
!71 = !{ptr @__func__.revoke_lo_before_commit, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__func__.revoke_lo_scan_elements, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/gfs2/lops.c", i32 956, i32 4}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/gfs2/util.h", i32 126, i32 38}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/gfs2/lops.c", i32 993, i32 2}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @revoke_lo_after_scan._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @revoke_lo_after_scan._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{!"sp"}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 2155499502, i64 2155499980, i64 2155499539, i64 2155499595, i64 2155499629, i64 2155499653, i64 2155499694, i64 2155499715, i64 2155499743, i64 2155499777}
!93 = !{i64 2148446382, i64 2148446408, i64 2148446437, i64 2148446471, i64 2148446502, i64 2148446525}
!94 = !{i64 2148259775, i64 2148259780, i64 2148259793, i64 2148259837, i64 2148259871, i64 2148259892}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2155343011}
!97 = !{i64 2155343204}
!98 = !{i64 2149282455}
!99 = !{i64 2149283491}
!100 = !{i64 2155510658, i64 2155511137, i64 2155510695, i64 2155510751, i64 2155510785, i64 2155510809, i64 2155510850, i64 2155510871, i64 2155510899, i64 2155510933}
!101 = !{i64 2155517899}
!102 = !{i64 955874, i64 955895, i64 955918, i64 955937, i64 955956}
!103 = !{i64 2155518318}
!104 = !{i64 2151158066, i64 2151158557, i64 2151158103, i64 2151158159, i64 2151158193, i64 2151158217, i64 2151158258, i64 2151158279, i64 2151158307, i64 2151158341}
!105 = !{i64 2155515558, i64 2155516037, i64 2155515595, i64 2155515651, i64 2155515685, i64 2155515709, i64 2155515750, i64 2155515771, i64 2155515799, i64 2155515833}
!106 = !{i64 2148534834}
!107 = !{i64 2148449567, i64 2148449599, i64 2148449628, i64 2148449662, i64 2148449693, i64 2148449716}
!108 = !{i64 2148535063}
!109 = !{i64 2155527834, i64 2155528313, i64 2155527871, i64 2155527927, i64 2155527961, i64 2155527985, i64 2155528026, i64 2155528047, i64 2155528075, i64 2155528109}
!110 = !{i8 0, i8 2}
!111 = !{i64 2150760950, i64 2150761123, i64 2150761138, i64 2150761190, i64 2150761249, i64 2150761273, i64 2150761314, i64 2150761335, i64 2150761363, i64 2150761395}
!112 = !{i64 2150761825, i64 2150761998, i64 2150762013, i64 2150762065, i64 2150762124, i64 2150762148, i64 2150762189, i64 2150762210, i64 2150762238, i64 2150762270}
!113 = !{i64 2150699360, i64 2150699851, i64 2150699397, i64 2150699453, i64 2150699487, i64 2150699511, i64 2150699552, i64 2150699573, i64 2150699601, i64 2150699635}
!114 = !{i64 2150752392, i64 2150752883, i64 2150752429, i64 2150752485, i64 2150752519, i64 2150752543, i64 2150752584, i64 2150752605, i64 2150752633, i64 2150752667}
!115 = !{i64 2153714989}
!116 = !{i64 2152609412}
!117 = !{i64 2152609619}
!118 = !{i64 2153717760}
!119 = !{i64 2153236602, i64 2153237085, i64 2153236639, i64 2153236695, i64 2153236729, i64 2153236753, i64 2153236794, i64 2153236815, i64 2153236843, i64 2153236877}
!120 = !{!"auto-init"}
!121 = !{i64 2148455240, i64 2148455272, i64 2148455301, i64 2148455335, i64 2148455366, i64 2148455389}
!122 = !{i64 2148544321}
!123 = !{i64 2155503151, i64 2155503630, i64 2155503188, i64 2155503244, i64 2155503278, i64 2155503302, i64 2155503343, i64 2155503364, i64 2155503392, i64 2155503426}
!124 = !{i64 2155504728, i64 2155505207, i64 2155504765, i64 2155504821, i64 2155504855, i64 2155504879, i64 2155504920, i64 2155504941, i64 2155504969, i64 2155505003}
!125 = !{i64 2155501571, i64 2155502049, i64 2155501608, i64 2155501664, i64 2155501698, i64 2155501722, i64 2155501763, i64 2155501784, i64 2155501812, i64 2155501846}
!126 = !{i64 2148448847, i64 2148448873, i64 2148448902, i64 2148448936, i64 2148448967, i64 2148448990}
