; ModuleID = '/llk/IR_all_yes/fs/gfs2/rgrp.c_pt.bc'
source_filename = "../fs/gfs2/rgrp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
%struct.rb_node = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.gfs2_bitmap = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
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
%struct.gfs2_rindex = type { i64, i32, i32, i64, i32, i32, [64 x i8] }
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
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.83 }
%union.anon.83 = type { i32 }
%struct.gfs2_rgrp = type { %struct.gfs2_meta_header, i32, i32, i32, %union.anon.84, i64, i64, i32, i32, i32, [60 x i8] }
%union.anon.84 = type { i32 }
%struct.gfs2_rgrp_lvb = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.fstrim_range = type { i64, i64, i64 }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
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
%struct.gfs2_rbm = type { ptr, i32, i32 }
%struct.gfs2_alloc_parms = type { i64, i32, i32, i64 }
%struct.gfs2_dinode = type { %struct.gfs2_meta_header, %struct.gfs2_inum, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i16, i16, i32, i16, i16, i32, %struct.gfs2_inum, i64, i32, i32, i32, [44 x i8] }
%struct.gfs2_inum = type { i64, i64 }
%struct.gfs2_rgrp_list = type { i32, i32, ptr, ptr }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"free data mismatch:  %u != %u\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.gfs2_rgrp_verify = private unnamed_addr constant [17 x i8] c"gfs2_rgrp_verify\00", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/gfs2/rgrp.c\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"used data mismatch:  %u != %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"used metadata mismatch:  %u != %u\0A\00", [61 x i8] zeroinitializer }, align 32
@gfs2_rgrpd_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__func__.gfs2_rgrp_go_instantiate = private unnamed_addr constant [25 x i8] c"gfs2_rgrp_go_instantiate\00", align 1
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"!bi->bi_clone\00", [18 x i8] zeroinitializer }, align 32
@gfs2_rgrp_send_discards._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 1370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014gfs2: fsid=%s: error %d on discard request, turning discards off for this filesystem\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gfs2_rgrp_send_discards\00", [40 x i8] zeroinitializer }, align 32
@gfs2_rgrp_send_discards._entry_ptr = internal global ptr @gfs2_rgrp_send_discards._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"target\00", [25 x i8] zeroinitializer }, align 32
@__func__.gfs2_inplace_reserve = private unnamed_addr constant [21 x i8] c"gfs2_inplace_reserve\00", align 1
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s R: n:%llu f:%02x b:%u/%u i:%u q:%u r:%u e:%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s  L: f:%02x b:%u i:%u\0A\00", [39 x i8] zeroinitializer }, align 32
@gfs2_alloc_blocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.1, i32 2445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014gfs2: fsid=%s: inum=%llu error=%d, nblocks=%u, full=%d fail_pt=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gfs2_alloc_blocks\00", [46 x i8] zeroinitializer }, align 32
@gfs2_alloc_blocks._entry_ptr = internal global ptr @gfs2_alloc_blocks._entry, section ".printk_index", align 4
@gfs2_alloc_blocks._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.1, i32 2467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014gfs2: fsid=%s: nblocks=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@gfs2_alloc_blocks._entry_ptr.14 = internal global ptr @gfs2_alloc_blocks._entry.12, section ".printk_index", align 4
@__func__.gfs2_free_di = private unnamed_addr constant [13 x i8] c"gfs2_free_di\00", align 1
@gfs2_check_blk_type.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"!rlist->rl_ghs\00", [17 x i8] zeroinitializer }, align 32
@__func__.gfs2_rlist_add = private unnamed_addr constant [15 x i8] c"gfs2_rlist_add\00", align 1
@gfs2_rlist_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.gfs2_rlist_add, ptr @.str.1, i32 2686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013gfs2: fsid=%s: rlist_add: no rgrp for block %llu\0A\00", [44 x i8] zeroinitializer }, align 32
@gfs2_rlist_add._entry_ptr = internal global ptr @gfs2_rlist_add._entry, section ".printk_index", align 4
@__tracepoint_gfs2_rs = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/gfs2/trace_gfs2.h\00", [43 x i8] zeroinitializer }, align 32
@trace_gfs2_rs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@gfs2_ri_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.1, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013gfs2: fsid=%s: no resource groups found in the file system.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gfs2_ri_update\00", [17 x i8] zeroinitializer }, align 32
@gfs2_ri_update._entry_ptr = internal global ptr @gfs2_ri_update._entry, section ".printk_index", align 4
@read_rindex_entry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&rgd->rd_rsspin\00", [16 x i8] zeroinitializer }, align 32
@read_rindex_entry.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rgd->rd_mutex\00", [17 x i8] zeroinitializer }, align 32
@gfs2_rgrp_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@__func__.compute_bitstructs = private unnamed_addr constant [19 x i8] c"compute_bitstructs\00", align 1
@.str.25 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"ri_addr = %llu\0Ari_length = %u\0Ari_data0 = %llu\0Ari_data = %u\0Ari_bitbytes = %u\0Astart=%u len=%u offset=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gl->gl_object == NULL\00", [42 x i8] zeroinitializer }, align 32
@__func__.glock_set_object = private unnamed_addr constant [17 x i8] c"glock_set_object\00", align 1
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/gfs2/glock.h\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"magic number\00", [19 x i8] zeroinitializer }, align 32
@gfs2_bit_search.search = internal constant { [4 x i64], [32 x i8] } { [4 x i64] [i64 -1, i64 -6148914691236517206, i64 6148914691236517205, i64 0], [32 x i8] zeroinitializer }, align 32
@gfs2_rgrp_lvb_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.1, i32 1119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014gfs2: fsid=%s: GFS2: rgd: %llu lvb flag mismatch %u/%u\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gfs2_rgrp_lvb_valid\00", [44 x i8] zeroinitializer }, align 32
@gfs2_rgrp_lvb_valid._entry_ptr = internal global ptr @gfs2_rgrp_lvb_valid._entry, section ".printk_index", align 4
@gfs2_rgrp_lvb_valid._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.1, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014gfs2: fsid=%s: GFS2: rgd: %llu lvb free mismatch %u/%u\00", [39 x i8] zeroinitializer }, align 32
@gfs2_rgrp_lvb_valid._entry_ptr.33 = internal global ptr @gfs2_rgrp_lvb_valid._entry.31, section ".printk_index", align 4
@gfs2_rgrp_lvb_valid._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.1, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014gfs2: fsid=%s: GFS2: rgd: %llu lvb dinode mismatch %u/%u\00", [37 x i8] zeroinitializer }, align 32
@gfs2_rgrp_lvb_valid._entry_ptr.36 = internal global ptr @gfs2_rgrp_lvb_valid._entry.34, section ".printk_index", align 4
@gfs2_rgrp_lvb_valid._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.1, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014gfs2: fsid=%s: GFS2: rgd: %llu lvb igen mismatch %llu/%llu\00", [35 x i8] zeroinitializer }, align 32
@gfs2_rgrp_lvb_valid._entry_ptr.39 = internal global ptr @gfs2_rgrp_lvb_valid._entry.37, section ".printk_index", align 4
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rgd_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@try_rgrp_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gfs2_iopen_glops = external dso_local constant %struct.gfs2_glock_operations, align 4
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s  B: n:%llu s:%llu f:%u\0A\00", [37 x i8] zeroinitializer }, align 32
@gfs2_set_alloc_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@gfs2_setbit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.1, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014gfs2: fsid=%s: buf_blk = 0x%x old_state=%d, new_state=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gfs2_setbit\00", [20 x i8] zeroinitializer }, align 32
@gfs2_setbit._entry_ptr = internal global ptr @gfs2_setbit._entry, section ".printk_index", align 4
@gfs2_setbit._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.1, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014gfs2: fsid=%s: rgrp=0x%llx bi_start=0x%x biblk: 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@gfs2_setbit._entry_ptr.48 = internal global ptr @gfs2_setbit._entry.46, section ".printk_index", align 4
@gfs2_setbit._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.1, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014gfs2: fsid=%s: bi_offset=0x%x bi_bytes=0x%x block=0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@gfs2_setbit._entry_ptr.51 = internal global ptr @gfs2_setbit._entry.49, section ".printk_index", align 4
@__tracepoint_gfs2_block_alloc = external dso_local global %struct.tracepoint, align 4
@trace_gfs2_block_alloc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@gfs2_rgrp_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.1, i32 2329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014gfs2: fsid=%s: rgrp %llu has an error, marking it readonly until umount\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gfs2_rgrp_error\00", [16 x i8] zeroinitializer }, align 32
@gfs2_rgrp_error._entry_ptr = internal global ptr @gfs2_rgrp_error._entry, section ".printk_index", align 4
@gfs2_rgrp_error._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.1, i32 2330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014gfs2: fsid=%s: umount on all nodes and run fsck.gfs2 to fix the error\0A\00", [55 x i8] zeroinitializer }, align 32
@gfs2_rgrp_error._entry_ptr.56 = internal global ptr @gfs2_rgrp_error._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsid=%s: \00", [22 x i8] zeroinitializer }, align 32
@rgblk_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 96]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 486, i32 16 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 488, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 494, i32 16 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 501, i32 16 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1256, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1370, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 2060, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 2303, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 2311, i32 23 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 2442, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 2467, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 2666, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 2685, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [24 x i8] c"../fs/gfs2/trace_gfs2.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 589, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 108, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1006, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 922, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 923, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 816, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"../fs/gfs2/glock.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 306, i32 6 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"../fs/gfs2/util.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 126, i32 38 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 182, i32 19 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1117, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1123, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1129, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 1136, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 156, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 624, i32 22 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 111, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 113, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 116, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 2328, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 2330, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [18 x i8] c"../fs/gfs2/rgrp.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 2331, i32 21 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @gfs2_alloc_blocks._entry, ptr @gfs2_alloc_blocks._entry.12, ptr @gfs2_alloc_blocks._entry_ptr, ptr @gfs2_alloc_blocks._entry_ptr.14, ptr @gfs2_rgrp_error._entry, ptr @gfs2_rgrp_error._entry.54, ptr @gfs2_rgrp_error._entry_ptr, ptr @gfs2_rgrp_error._entry_ptr.56, ptr @gfs2_rgrp_lvb_valid._entry, ptr @gfs2_rgrp_lvb_valid._entry.31, ptr @gfs2_rgrp_lvb_valid._entry.34, ptr @gfs2_rgrp_lvb_valid._entry.37, ptr @gfs2_rgrp_lvb_valid._entry_ptr, ptr @gfs2_rgrp_lvb_valid._entry_ptr.33, ptr @gfs2_rgrp_lvb_valid._entry_ptr.36, ptr @gfs2_rgrp_lvb_valid._entry_ptr.39, ptr @gfs2_rgrp_send_discards._entry, ptr @gfs2_rgrp_send_discards._entry_ptr, ptr @gfs2_ri_update._entry, ptr @gfs2_ri_update._entry_ptr, ptr @gfs2_rlist_add._entry, ptr @gfs2_rlist_add._entry_ptr, ptr @gfs2_setbit._entry, ptr @gfs2_setbit._entry.46, ptr @gfs2_setbit._entry.49, ptr @gfs2_setbit._entry_ptr, ptr @gfs2_setbit._entry_ptr.48, ptr @gfs2_setbit._entry_ptr.51, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @read_rindex_entry.__key, ptr @.str.22, ptr @read_rindex_entry.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @gfs2_bit_search.search, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_rgrp_send_discards._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_alloc_blocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_alloc_blocks._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_rlist_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_ri_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_rindex_entry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_rindex_entry.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_bit_search.search to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_rgrp_lvb_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_rgrp_lvb_valid._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_rgrp_lvb_valid._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_rgrp_lvb_valid._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_setbit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_setbit._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_setbit._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_rgrp_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_rgrp_error._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_rgrp_verify(ptr noundef %rgd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_sbd = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 14
  %0 = ptrtoint ptr %rd_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_sbd, align 4
  %rd_length = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 4
  %2 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp68.not = icmp eq i32 %3, 0
  br i1 %cmp68.not, label %entry.for.end7_crit_edge, label %for.body.lr.ph

entry.for.end7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end7

for.body.lr.ph:                                   ; preds = %entry
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 13
  %4 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd_bits, align 8
  br label %for.body

for.body:                                         ; preds = %gfs2_bitcount.exit.3.for.body_crit_edge, %for.body.lr.ph
  %count.sroa.0.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add798390, %gfs2_bitcount.exit.3.for.body_crit_edge ]
  %count.sroa.7.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add.18489, %gfs2_bitcount.exit.3.for.body_crit_edge ]
  %count.sroa.11.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add.291, %gfs2_bitcount.exit.3.for.body_crit_edge ]
  %count.sroa.15.0 = phi i32 [ 0, %for.body.lr.ph ], [ %add.3, %gfs2_bitcount.exit.3.for.body_crit_edge ]
  %buf.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %gfs2_bitcount.exit.3.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.gfs2_bitmap, ptr %5, i32 %buf.069
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  %bi_offset = getelementptr %struct.gfs2_bitmap, ptr %5, i32 %buf.069, i32 3
  %10 = ptrtoint ptr %bi_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 %11
  %bi_bytes = getelementptr %struct.gfs2_bitmap, ptr %5, i32 %buf.069, i32 5
  %12 = ptrtoint ptr %bi_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_bytes, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr4, i32 %13
  %cmp1.i = icmp ugt ptr %add.ptr.i, %add.ptr4
  br i1 %cmp1.i, label %for.body.for.body.i_crit_edge, label %for.body.gfs2_bitcount.exit.3_crit_edge

for.body.gfs2_bitcount.exit.3_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_bitcount.exit.3

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %count.03.i = phi i32 [ %count.4.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %byte.02.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr4, %for.body.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %byte.02.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %byte.02.i, align 1
  %16 = and i8 %15, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp11.i = icmp eq i8 %16, 0
  %inc.i = zext i1 %cmp11.i to i32
  %spec.select.i = add i32 %count.03.i, %inc.i
  %17 = and i8 %15, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp16.i = icmp eq i8 %17, 0
  %inc19.i = zext i1 %cmp16.i to i32
  %count.2.i = add i32 %spec.select.i, %inc19.i
  %18 = and i8 %15, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp24.i = icmp eq i8 %18, 0
  %inc27.i = zext i1 %cmp24.i to i32
  %count.3.i = add i32 %count.2.i, %inc27.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %15)
  %cmp32.i = icmp ult i8 %15, 64
  %inc35.i = zext i1 %cmp32.i to i32
  %count.4.i = add i32 %count.3.i, %inc35.i
  %incdec.ptr.i = getelementptr i8, ptr %byte.02.i, i32 1
  %exitcond.not.i = icmp eq ptr %incdec.ptr.i, %add.ptr.i
  br i1 %exitcond.not.i, label %gfs2_bitcount.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

gfs2_bitcount.exit:                               ; preds = %for.body.i
  %add = add i32 %count.sroa.0.0, %count.4.i
  br i1 %cmp1.i, label %gfs2_bitcount.exit.for.body.i.1_crit_edge, label %gfs2_bitcount.exit.gfs2_bitcount.exit.3_crit_edge

gfs2_bitcount.exit.gfs2_bitcount.exit.3_crit_edge: ; preds = %gfs2_bitcount.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_bitcount.exit.3

gfs2_bitcount.exit.for.body.i.1_crit_edge:        ; preds = %gfs2_bitcount.exit
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %gfs2_bitcount.exit.for.body.i.1_crit_edge
  %count.03.i.1 = phi i32 [ %count.4.i.1, %for.body.i.1.for.body.i.1_crit_edge ], [ 0, %gfs2_bitcount.exit.for.body.i.1_crit_edge ]
  %byte.02.i.1 = phi ptr [ %incdec.ptr.i.1, %for.body.i.1.for.body.i.1_crit_edge ], [ %add.ptr4, %gfs2_bitcount.exit.for.body.i.1_crit_edge ]
  %19 = ptrtoint ptr %byte.02.i.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %byte.02.i.1, align 1
  %21 = and i8 %20, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp11.i.1 = icmp eq i8 %21, 1
  %inc.i.1 = zext i1 %cmp11.i.1 to i32
  %spec.select.i.1 = add i32 %count.03.i.1, %inc.i.1
  %22 = and i8 %20, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp16.i.1 = icmp eq i8 %22, 4
  %inc19.i.1 = zext i1 %cmp16.i.1 to i32
  %count.2.i.1 = add i32 %spec.select.i.1, %inc19.i.1
  %23 = and i8 %20, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %23)
  %cmp24.i.1 = icmp eq i8 %23, 16
  %inc27.i.1 = zext i1 %cmp24.i.1 to i32
  %count.3.i.1 = add i32 %count.2.i.1, %inc27.i.1
  %24 = and i8 %20, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %24)
  %cmp32.i.1 = icmp eq i8 %24, 64
  %inc35.i.1 = zext i1 %cmp32.i.1 to i32
  %count.4.i.1 = add i32 %count.3.i.1, %inc35.i.1
  %incdec.ptr.i.1 = getelementptr i8, ptr %byte.02.i.1, i32 1
  %exitcond.not.i.1 = icmp eq ptr %incdec.ptr.i.1, %add.ptr.i
  br i1 %exitcond.not.i.1, label %gfs2_bitcount.exit.1, label %for.body.i.1.for.body.i.1_crit_edge

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.1

gfs2_bitcount.exit.1:                             ; preds = %for.body.i.1
  %add.1 = add i32 %count.sroa.7.0, %count.4.i.1
  br i1 %cmp1.i, label %gfs2_bitcount.exit.1.for.body.i.2_crit_edge, label %gfs2_bitcount.exit.1.gfs2_bitcount.exit.3_crit_edge

gfs2_bitcount.exit.1.gfs2_bitcount.exit.3_crit_edge: ; preds = %gfs2_bitcount.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_bitcount.exit.3

gfs2_bitcount.exit.1.for.body.i.2_crit_edge:      ; preds = %gfs2_bitcount.exit.1
  br label %for.body.i.2

for.body.i.2:                                     ; preds = %for.body.i.2.for.body.i.2_crit_edge, %gfs2_bitcount.exit.1.for.body.i.2_crit_edge
  %count.03.i.2 = phi i32 [ %count.4.i.2, %for.body.i.2.for.body.i.2_crit_edge ], [ 0, %gfs2_bitcount.exit.1.for.body.i.2_crit_edge ]
  %byte.02.i.2 = phi ptr [ %incdec.ptr.i.2, %for.body.i.2.for.body.i.2_crit_edge ], [ %add.ptr4, %gfs2_bitcount.exit.1.for.body.i.2_crit_edge ]
  %25 = ptrtoint ptr %byte.02.i.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %byte.02.i.2, align 1
  %27 = and i8 %26, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp11.i.2 = icmp eq i8 %27, 2
  %inc.i.2 = zext i1 %cmp11.i.2 to i32
  %spec.select.i.2 = add i32 %count.03.i.2, %inc.i.2
  %28 = and i8 %26, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %28)
  %cmp16.i.2 = icmp eq i8 %28, 8
  %inc19.i.2 = zext i1 %cmp16.i.2 to i32
  %count.2.i.2 = add i32 %spec.select.i.2, %inc19.i.2
  %29 = and i8 %26, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %29)
  %cmp24.i.2 = icmp eq i8 %29, 32
  %inc27.i.2 = zext i1 %cmp24.i.2 to i32
  %count.3.i.2 = add i32 %count.2.i.2, %inc27.i.2
  %30 = and i8 %26, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %30)
  %cmp32.i.2 = icmp eq i8 %30, -128
  %inc35.i.2 = zext i1 %cmp32.i.2 to i32
  %count.4.i.2 = add i32 %count.3.i.2, %inc35.i.2
  %incdec.ptr.i.2 = getelementptr i8, ptr %byte.02.i.2, i32 1
  %exitcond.not.i.2 = icmp eq ptr %incdec.ptr.i.2, %add.ptr.i
  br i1 %exitcond.not.i.2, label %gfs2_bitcount.exit.2, label %for.body.i.2.for.body.i.2_crit_edge

for.body.i.2.for.body.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.2

gfs2_bitcount.exit.2:                             ; preds = %for.body.i.2
  %add.2 = add i32 %count.sroa.11.0, %count.4.i.2
  br i1 %cmp1.i, label %gfs2_bitcount.exit.2.for.body.i.3_crit_edge, label %gfs2_bitcount.exit.2.gfs2_bitcount.exit.3_crit_edge

gfs2_bitcount.exit.2.gfs2_bitcount.exit.3_crit_edge: ; preds = %gfs2_bitcount.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_bitcount.exit.3

gfs2_bitcount.exit.2.for.body.i.3_crit_edge:      ; preds = %gfs2_bitcount.exit.2
  br label %for.body.i.3

for.body.i.3:                                     ; preds = %for.body.i.3.for.body.i.3_crit_edge, %gfs2_bitcount.exit.2.for.body.i.3_crit_edge
  %count.03.i.3 = phi i32 [ %count.4.i.3, %for.body.i.3.for.body.i.3_crit_edge ], [ 0, %gfs2_bitcount.exit.2.for.body.i.3_crit_edge ]
  %byte.02.i.3 = phi ptr [ %incdec.ptr.i.3, %for.body.i.3.for.body.i.3_crit_edge ], [ %add.ptr4, %gfs2_bitcount.exit.2.for.body.i.3_crit_edge ]
  %31 = ptrtoint ptr %byte.02.i.3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %byte.02.i.3, align 1
  %33 = and i8 %32, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp11.i.3 = icmp eq i8 %33, 3
  %inc.i.3 = zext i1 %cmp11.i.3 to i32
  %spec.select.i.3 = add i32 %count.03.i.3, %inc.i.3
  %34 = and i8 %32, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %34)
  %cmp16.i.3 = icmp eq i8 %34, 12
  %inc19.i.3 = zext i1 %cmp16.i.3 to i32
  %count.2.i.3 = add i32 %spec.select.i.3, %inc19.i.3
  %35 = and i8 %32, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %35)
  %cmp24.i.3 = icmp eq i8 %35, 48
  %inc27.i.3 = zext i1 %cmp24.i.3 to i32
  %count.3.i.3 = add i32 %count.2.i.3, %inc27.i.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %32)
  %cmp32.i.3 = icmp ugt i8 %32, -65
  %inc35.i.3 = zext i1 %cmp32.i.3 to i32
  %count.4.i.3 = add i32 %count.3.i.3, %inc35.i.3
  %incdec.ptr.i.3 = getelementptr i8, ptr %byte.02.i.3, i32 1
  %exitcond.not.i.3 = icmp eq ptr %incdec.ptr.i.3, %add.ptr.i
  br i1 %exitcond.not.i.3, label %for.body.i.3.gfs2_bitcount.exit.3_crit_edge, label %for.body.i.3.for.body.i.3_crit_edge

for.body.i.3.for.body.i.3_crit_edge:              ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.3

for.body.i.3.gfs2_bitcount.exit.3_crit_edge:      ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_bitcount.exit.3

gfs2_bitcount.exit.3:                             ; preds = %for.body.i.3.gfs2_bitcount.exit.3_crit_edge, %gfs2_bitcount.exit.2.gfs2_bitcount.exit.3_crit_edge, %gfs2_bitcount.exit.1.gfs2_bitcount.exit.3_crit_edge, %gfs2_bitcount.exit.gfs2_bitcount.exit.3_crit_edge, %for.body.gfs2_bitcount.exit.3_crit_edge
  %add.291 = phi i32 [ %add.2, %gfs2_bitcount.exit.2.gfs2_bitcount.exit.3_crit_edge ], [ %count.sroa.11.0, %gfs2_bitcount.exit.1.gfs2_bitcount.exit.3_crit_edge ], [ %count.sroa.11.0, %gfs2_bitcount.exit.gfs2_bitcount.exit.3_crit_edge ], [ %count.sroa.11.0, %for.body.gfs2_bitcount.exit.3_crit_edge ], [ %add.2, %for.body.i.3.gfs2_bitcount.exit.3_crit_edge ]
  %add798390 = phi i32 [ %add, %gfs2_bitcount.exit.2.gfs2_bitcount.exit.3_crit_edge ], [ %add, %gfs2_bitcount.exit.1.gfs2_bitcount.exit.3_crit_edge ], [ %add, %gfs2_bitcount.exit.gfs2_bitcount.exit.3_crit_edge ], [ %count.sroa.0.0, %for.body.gfs2_bitcount.exit.3_crit_edge ], [ %add, %for.body.i.3.gfs2_bitcount.exit.3_crit_edge ]
  %add.18489 = phi i32 [ %add.1, %gfs2_bitcount.exit.2.gfs2_bitcount.exit.3_crit_edge ], [ %add.1, %gfs2_bitcount.exit.1.gfs2_bitcount.exit.3_crit_edge ], [ %count.sroa.7.0, %gfs2_bitcount.exit.gfs2_bitcount.exit.3_crit_edge ], [ %count.sroa.7.0, %for.body.gfs2_bitcount.exit.3_crit_edge ], [ %add.1, %for.body.i.3.gfs2_bitcount.exit.3_crit_edge ]
  %count.0.lcssa.i.3 = phi i32 [ 0, %gfs2_bitcount.exit.2.gfs2_bitcount.exit.3_crit_edge ], [ 0, %gfs2_bitcount.exit.1.gfs2_bitcount.exit.3_crit_edge ], [ 0, %gfs2_bitcount.exit.gfs2_bitcount.exit.3_crit_edge ], [ 0, %for.body.gfs2_bitcount.exit.3_crit_edge ], [ %count.4.i.3, %for.body.i.3.gfs2_bitcount.exit.3_crit_edge ]
  %add.3 = add i32 %count.sroa.15.0, %count.0.lcssa.i.3
  %inc6 = add nuw i32 %buf.069, 1
  %exitcond.not = icmp eq i32 %inc6, %3
  br i1 %exitcond.not, label %gfs2_bitcount.exit.3.for.end7_crit_edge, label %gfs2_bitcount.exit.3.for.body_crit_edge

gfs2_bitcount.exit.3.for.body_crit_edge:          ; preds = %gfs2_bitcount.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

gfs2_bitcount.exit.3.for.end7_crit_edge:          ; preds = %gfs2_bitcount.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end7

for.end7:                                         ; preds = %gfs2_bitcount.exit.3.for.end7_crit_edge, %entry.for.end7_crit_edge
  %count.sroa.0.1 = phi i32 [ 0, %entry.for.end7_crit_edge ], [ %add798390, %gfs2_bitcount.exit.3.for.end7_crit_edge ]
  %count.sroa.7.1 = phi i32 [ 0, %entry.for.end7_crit_edge ], [ %add.18489, %gfs2_bitcount.exit.3.for.end7_crit_edge ]
  %count.sroa.11.1 = phi i32 [ 0, %entry.for.end7_crit_edge ], [ %add.291, %gfs2_bitcount.exit.3.for.end7_crit_edge ]
  %count.sroa.15.1 = phi i32 [ 0, %entry.for.end7_crit_edge ], [ %add.3, %gfs2_bitcount.exit.3.for.end7_crit_edge ]
  %rd_free = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 7
  %36 = ptrtoint ptr %rd_free to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rd_free, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.sroa.0.1, i32 %37)
  %cmp9.not = icmp eq i32 %count.sroa.0.1, %37
  br i1 %cmp9.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %count.sroa.0.1, i32 noundef %37) #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.end7
  %rd_data = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 5
  %38 = ptrtoint ptr %rd_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rd_data, align 4
  %rd_dinodes = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 11
  %40 = ptrtoint ptr %rd_dinodes to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rd_dinodes, align 4
  %42 = add i32 %count.sroa.0.1, %41
  %sub14 = sub i32 %39, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %count.sroa.7.1, i32 %sub14)
  %cmp16.not = icmp eq i32 %count.sroa.7.1, %sub14
  br i1 %cmp16.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %count.sroa.7.1, i32 noundef %sub14) #12
  br label %cleanup.sink.split

if.end20:                                         ; preds = %if.end
  %add23 = add i32 %count.sroa.15.1, %count.sroa.11.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add23, i32 %41)
  %cmp25.not = icmp eq i32 %add23, %41
  br i1 %cmp25.not, label %if.end20.cleanup_crit_edge, label %if.then27

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %add23, i32 noundef %41) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then27, %if.then18, %if.then
  %.sink = phi i32 [ 503, %if.then27 ], [ 496, %if.then18 ], [ 488, %if.then ]
  tail call void @gfs2_consist_rgrpd_i(ptr noundef %rgd, ptr noundef nonnull @__func__.gfs2_rgrp_verify, ptr noundef nonnull @.str.1, i32 noundef %.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end20.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_lm(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_consist_rgrpd_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_blk2rgrpd(ptr noundef %sdp, i64 noundef %blk, i1 noundef zeroext %exact) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_rindex_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %sd_rindex_spin) #12
  %sd_rindex_tree = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 49
  %0 = ptrtoint ptr %sd_rindex_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_rindex_tree, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end4.while.cond_crit_edge, %entry
  %n.0 = phi ptr [ %1, %entry ], [ %next.0, %if.end4.while.cond_crit_edge ]
  %tobool.not = icmp eq ptr %n.0, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %rd_addr = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0, i32 0, i32 2
  %2 = ptrtoint ptr %rd_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rd_addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %blk)
  %cmp = icmp ugt i64 %3, %blk
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %n.0, i32 0, i32 2
  br label %if.end4

if.else:                                          ; preds = %while.body
  %rd_data0 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0, i32 0, i32 3
  %4 = ptrtoint ptr %rd_data0 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %rd_data0, align 8
  %rd_data = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0, i32 0, i32 5
  %6 = ptrtoint ptr %rd_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_data, align 4
  %conv = zext i32 %7 to i64
  %add = add i64 %5, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %blk)
  %cmp1.not = icmp ugt i64 %add, %blk
  br i1 %cmp1.not, label %if.else.if.then7_crit_edge, label %if.then3

if.else.if.then7_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %n.0, i32 0, i32 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then
  %next.0.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then3 ]
  %8 = ptrtoint ptr %next.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %next.0 = load ptr, ptr %next.0.in, align 4
  %cmp5 = icmp eq ptr %next.0, null
  br i1 %cmp5, label %if.end4.if.then7_crit_edge, label %if.end4.while.cond_crit_edge

if.end4.while.cond_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.then7:                                         ; preds = %if.end4.if.then7_crit_edge, %if.else.if.then7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin) #12
  br i1 %exact, label %if.then10, label %if.then7.if.end24_crit_edge

if.then7.if.end24_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then10:                                        ; preds = %if.then7
  %9 = ptrtoint ptr %rd_addr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rd_addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %blk)
  %cmp12 = icmp ugt i64 %10, %blk
  br i1 %cmp12, label %if.then10.cleanup_crit_edge, label %if.end15

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.then10
  %rd_data016 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0, i32 0, i32 3
  %11 = ptrtoint ptr %rd_data016 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rd_data016, align 8
  %rd_data17 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0, i32 0, i32 5
  %13 = ptrtoint ptr %rd_data17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rd_data17, align 4
  %conv18 = zext i32 %14 to i64
  %add19 = add i64 %12, %conv18
  call void @__sanitizer_cov_trace_cmp8(i64 %add19, i64 %blk)
  %cmp20.not = icmp ugt i64 %add19, %blk
  br i1 %cmp20.not, label %if.end15.if.end24_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end24:                                         ; preds = %if.end15.if.end24_crit_edge, %if.then7.if.end24_crit_edge
  br label %cleanup

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end24, %if.end15.cleanup_crit_edge, %if.then10.cleanup_crit_edge
  %retval.0 = phi ptr [ %n.0, %if.end24 ], [ null, %while.end ], [ null, %if.then10.cleanup_crit_edge ], [ null, %if.end15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_rgrpd_get_first(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_rindex_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %sd_rindex_spin) #12
  %sd_rindex_tree = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 49
  %call = tail call ptr @rb_first(ptr noundef %sd_rindex_tree) #12
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin) #12
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_rgrpd_get_next(ptr noundef %rgd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_sbd = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 14
  %0 = ptrtoint ptr %rd_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_sbd, align 4
  %sd_rindex_spin = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %sd_rindex_spin) #12
  %call = tail call ptr @rb_next(ptr noundef %rgd) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sd_rindex_tree = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 49
  %call1 = tail call ptr @rb_first(ptr noundef %sd_rindex_tree) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n.0 = phi ptr [ %call1, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %cmp3 = icmp eq ptr %n.0, %rgd
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin) #12
  %.n.0 = select i1 %cmp3, ptr null, ptr %n.0, !prof !149
  ret ptr %.n.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @check_and_update_goal(ptr nocapture noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_goal = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 11
  %0 = ptrtoint ptr %i_goal to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_goal, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sd_rindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i) #12
  %sd_rindex_tree.i = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 49
  %6 = ptrtoint ptr %sd_rindex_tree.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_rindex_tree.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end4.i.while.cond.i_crit_edge, %lor.lhs.false
  %n.0.i = phi ptr [ %7, %lor.lhs.false ], [ %next.0.i, %if.end4.i.while.cond.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %rd_addr.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %1)
  %cmp.i = icmp ugt i64 %9, %1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i, i32 0, i32 2
  br label %if.end4.i

if.else.i:                                        ; preds = %while.body.i
  %rd_data0.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 3
  %10 = ptrtoint ptr %rd_data0.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rd_data0.i, align 8
  %rd_data.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 5
  %12 = ptrtoint ptr %rd_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rd_data.i, align 4
  %conv.i = zext i32 %13 to i64
  %add.i = add i64 %11, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %1)
  %cmp1.not.i = icmp ugt i64 %add.i, %1
  br i1 %cmp1.not.i, label %if.else.i.if.then7.i_crit_edge, label %if.then3.i

if.else.i.if.then7.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i, i32 0, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i
  %next.0.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %14 = ptrtoint ptr %next.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %next.0.i = load ptr, ptr %next.0.in.i, align 4
  %cmp5.i = icmp eq ptr %next.0.i, null
  br i1 %cmp5.i, label %if.end4.i.if.then7.i_crit_edge, label %if.end4.i.while.cond.i_crit_edge

if.end4.i.while.cond.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i.if.then7.i_crit_edge, %if.else.i.if.then7.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  %15 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %1)
  %cmp12.i = icmp ugt i64 %16, %1
  br i1 %cmp12.i, label %if.then7.i.if.then_crit_edge, label %if.end15.i

if.then7.i.if.then_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end15.i:                                       ; preds = %if.then7.i
  %rd_data016.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %rd_data016.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rd_data016.i, align 8
  %rd_data17.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 5
  %19 = ptrtoint ptr %rd_data17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rd_data17.i, align 4
  %conv18.i = zext i32 %20 to i64
  %add19.i = add i64 %18, %conv18.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add19.i, i64 %1)
  %cmp20.not.i = icmp ugt i64 %add19.i, %1
  br i1 %cmp20.not.i, label %if.end15.i.if.end_crit_edge, label %if.end15.i.if.then_crit_edge

if.end15.i.if.then_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end15.i.if.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  br label %if.then

if.then:                                          ; preds = %while.end.i, %if.end15.i.if.then_crit_edge, %if.then7.i.if.then_crit_edge, %entry.if.then_crit_edge
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %21 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_no_addr, align 8
  %23 = ptrtoint ptr %i_goal to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %i_goal, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end15.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_free_clones(ptr nocapture noundef readonly %rgd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_length = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 4
  %0 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd_length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %x.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_bits, align 8
  %bi_clone = getelementptr %struct.gfs2_bitmap, ptr %3, i32 %x.07, i32 1
  %4 = ptrtoint ptr %bi_clone to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_clone, align 4
  tail call void @kfree(ptr noundef %5) #12
  %6 = ptrtoint ptr %bi_clone to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %bi_clone, align 4
  %inc = add nuw i32 %x.07, 1
  %7 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rd_length, align 8
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_rs_deltree(ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rs_rgd = getelementptr inbounds %struct.gfs2_blkreserv, ptr %rs, i32 0, i32 1
  %0 = ptrtoint ptr %rs_rgd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rs_rgd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %entry
  %rd_rsspin = getelementptr inbounds %struct.gfs2_rgrpd, ptr %1, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %rd_rsspin) #12
  %2 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rs, align 8
  %4 = ptrtoint ptr %rs to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %4)
  %cmp.i.not.i = icmp eq i32 %3, %4
  br i1 %cmp.i.not.i, label %if.then.__rs_deltree.exit_crit_edge, label %if.end.i

if.then.__rs_deltree.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rs_deltree.exit

if.end.i:                                         ; preds = %if.then
  %5 = ptrtoint ptr %rs_rgd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rs_rgd, align 4
  tail call fastcc void @trace_gfs2_rs(ptr noundef %rs, i8 noundef zeroext 1) #12
  %rd_rstree.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %6, i32 0, i32 21
  tail call void @rb_erase(ptr noundef %rs, ptr noundef %rd_rstree.i) #12
  %7 = ptrtoint ptr %rs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %rs, align 8
  %rs_requested.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %rs, i32 0, i32 3
  %8 = ptrtoint ptr %rs_requested.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rs_requested.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i.__rs_deltree.exit_crit_edge, label %do.body.i

if.end.i.__rs_deltree.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rs_deltree.exit

do.body.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %rs_rgd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rs_rgd, align 4
  %rd_requested.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %rd_requested.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rd_requested.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.i = icmp ult i32 %13, %9
  br i1 %cmp.i, label %do.body9.i, label %do.end15.i, !prof !149

do.body9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 650, 0\0A.popsection", ""() #12, !srcloc !150
  unreachable

do.end15.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i32 %13, %9
  %14 = ptrtoint ptr %rd_requested.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub.i, ptr %rd_requested.i, align 8
  %15 = ptrtoint ptr %rs_requested.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rs_requested.i, align 8
  %rd_extfail_pt.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %6, i32 0, i32 18
  %17 = ptrtoint ptr %rd_extfail_pt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rd_extfail_pt.i, align 4
  %add.i = add i32 %18, %16
  store i32 %add.i, ptr %rd_extfail_pt.i, align 4
  store i32 0, ptr %rs_requested.i, align 8
  br label %__rs_deltree.exit

__rs_deltree.exit:                                ; preds = %do.end15.i, %if.end.i.__rs_deltree.exit_crit_edge, %if.then.__rs_deltree.exit_crit_edge
  %rs_requested = getelementptr inbounds %struct.gfs2_blkreserv, ptr %rs, i32 0, i32 3
  %19 = ptrtoint ptr %rs_requested to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rs_requested, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not = icmp eq i32 %20, 0
  br i1 %tobool1.not, label %do.end10, label %do.body5, !prof !151

do.body5:                                         ; preds = %__rs_deltree.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 675, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

do.end10:                                         ; preds = %__rs_deltree.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %rd_rsspin) #12
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_rs_delete(ptr noundef %ip, ptr noundef %wcount) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rw_mutex = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 13
  tail call void @down_write(ptr noundef %i_rw_mutex) #12
  %cmp = icmp eq ptr %wcount, null
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %wcount, i32 noundef 4) #12
  %0 = ptrtoint ptr %wcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %wcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1 = icmp slt i32 %1, 2
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %i_res = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10
  tail call void @gfs2_rs_deltree(ptr noundef %i_res)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  tail call void @up_write(ptr noundef %i_rw_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_clear_rgrpd(ptr noundef %sdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_rindex_tree = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 49
  %call29 = tail call ptr @rb_first(ptr noundef %sd_rindex_tree) #12
  %tobool.not30 = icmp eq ptr %call29, null
  br i1 %tobool.not30, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %return_all_reservations.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %call31 = phi ptr [ %call, %return_all_reservations.exit.while.body_crit_edge ], [ %call29, %entry.while.body_crit_edge ]
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call31, i32 0, i32 1
  %0 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_gl, align 4
  tail call void @rb_erase(ptr noundef nonnull %call31, ptr noundef %sd_rindex_tree) #12
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %while.body.if.end5_crit_edge, label %if.then

while.body.if.end5_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %while.body
  %gl_state = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %gl_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %gl_state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 16384
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_glock_cb(ptr noundef nonnull %1, i32 noundef 0) #12
  %gl_work = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 17
  %call4 = tail call zeroext i1 @flush_delayed_work(ptr noundef %gl_work) #12
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call31, i32 0, i32 4
  %3 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rd_length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9.i = icmp sgt i32 %4, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %if.end.gfs2_rgrp_brelse.exit_crit_edge

if.end.gfs2_rgrp_brelse.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_rgrp_brelse.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %rd_bits.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call31, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %x.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rd_bits.i, align 8
  %add.ptr.i = getelementptr %struct.gfs2_bitmap, ptr %6, i32 %x.010.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %brelse.exit.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

brelse.exit.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %8) #12
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %add.ptr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %brelse.exit.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %x.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %if.end.i.gfs2_rgrp_brelse.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end.i.gfs2_rgrp_brelse.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_rgrp_brelse.exit

gfs2_rgrp_brelse.exit:                            ; preds = %if.end.i.gfs2_rgrp_brelse.exit_crit_edge, %if.end.gfs2_rgrp_brelse.exit_crit_edge
  %10 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd_gl, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %11) #12
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #12
  %gl_object.i = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gl_object.i, align 4
  %cmp.i = icmp eq ptr %13, %call31
  br i1 %cmp.i, label %if.then.i, label %gfs2_rgrp_brelse.exit.glock_clear_object.exit_crit_edge

gfs2_rgrp_brelse.exit.glock_clear_object.exit_crit_edge: ; preds = %gfs2_rgrp_brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %glock_clear_object.exit

if.then.i:                                        ; preds = %gfs2_rgrp_brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %gl_object.i, align 4
  br label %glock_clear_object.exit

glock_clear_object.exit:                          ; preds = %if.then.i, %gfs2_rgrp_brelse.exit.glock_clear_object.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #12
  tail call void @gfs2_glock_put(ptr noundef nonnull %1) #12
  br label %if.end5

if.end5:                                          ; preds = %glock_clear_object.exit, %while.body.if.end5_crit_edge
  %rd_length.i22 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call31, i32 0, i32 4
  %15 = ptrtoint ptr %rd_length.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rd_length.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp6.not.i = icmp eq i32 %16, 0
  br i1 %cmp6.not.i, label %if.end5.gfs2_free_clones.exit_crit_edge, label %for.body.lr.ph.i24

if.end5.gfs2_free_clones.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_clones.exit

for.body.lr.ph.i24:                               ; preds = %if.end5
  %rd_bits.i23 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call31, i32 0, i32 13
  br label %for.body.i27

for.body.i27:                                     ; preds = %for.body.i27.for.body.i27_crit_edge, %for.body.lr.ph.i24
  %x.07.i = phi i32 [ 0, %for.body.lr.ph.i24 ], [ %inc.i25, %for.body.i27.for.body.i27_crit_edge ]
  %17 = ptrtoint ptr %rd_bits.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rd_bits.i23, align 8
  %bi_clone.i = getelementptr %struct.gfs2_bitmap, ptr %18, i32 %x.07.i, i32 1
  %19 = ptrtoint ptr %bi_clone.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bi_clone.i, align 4
  tail call void @kfree(ptr noundef %20) #12
  %21 = ptrtoint ptr %bi_clone.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %bi_clone.i, align 4
  %inc.i25 = add nuw i32 %x.07.i, 1
  %22 = ptrtoint ptr %rd_length.i22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rd_length.i22, align 8
  %cmp.i26 = icmp ult i32 %inc.i25, %23
  br i1 %cmp.i26, label %for.body.i27.for.body.i27_crit_edge, label %for.body.i27.gfs2_free_clones.exit_crit_edge

for.body.i27.gfs2_free_clones.exit_crit_edge:     ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_clones.exit

for.body.i27.for.body.i27_crit_edge:              ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i27

gfs2_free_clones.exit:                            ; preds = %for.body.i27.gfs2_free_clones.exit_crit_edge, %if.end5.gfs2_free_clones.exit_crit_edge
  %rd_rsspin.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call31, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %rd_rsspin.i) #12
  %rd_rstree.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call31, i32 0, i32 21
  %call4.i = tail call ptr @rb_first(ptr noundef %rd_rstree.i) #12
  %tobool.not5.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not5.i, label %gfs2_free_clones.exit.return_all_reservations.exit_crit_edge, label %gfs2_free_clones.exit.while.body.i_crit_edge

gfs2_free_clones.exit.while.body.i_crit_edge:     ; preds = %gfs2_free_clones.exit
  br label %while.body.i

gfs2_free_clones.exit.return_all_reservations.exit_crit_edge: ; preds = %gfs2_free_clones.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_all_reservations.exit

while.body.i:                                     ; preds = %__rs_deltree.exit.i.while.body.i_crit_edge, %gfs2_free_clones.exit.while.body.i_crit_edge
  %call6.i = phi ptr [ %call.i, %__rs_deltree.exit.i.while.body.i_crit_edge ], [ %call4.i, %gfs2_free_clones.exit.while.body.i_crit_edge ]
  %24 = ptrtoint ptr %call6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call6.i, align 8
  %26 = ptrtoint ptr %call6.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %26)
  %cmp.i.not.i.i = icmp eq i32 %25, %26
  br i1 %cmp.i.not.i.i, label %while.body.i.__rs_deltree.exit.i_crit_edge, label %if.end.i.i

while.body.i.__rs_deltree.exit.i_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rs_deltree.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %rs_rgd.i.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %call6.i, i32 0, i32 1
  %27 = ptrtoint ptr %rs_rgd.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rs_rgd.i.i, align 4
  tail call fastcc void @trace_gfs2_rs(ptr noundef nonnull %call6.i, i8 noundef zeroext 1) #12
  %rd_rstree.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %28, i32 0, i32 21
  tail call void @rb_erase(ptr noundef nonnull %call6.i, ptr noundef %rd_rstree.i.i) #12
  %29 = ptrtoint ptr %call6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %call6.i, align 8
  %rs_requested.i.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %call6.i, i32 0, i32 3
  %30 = ptrtoint ptr %rs_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rs_requested.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.__rs_deltree.exit.i_crit_edge, label %do.body.i.i

if.end.i.i.__rs_deltree.exit.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rs_deltree.exit.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %32 = ptrtoint ptr %rs_rgd.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rs_rgd.i.i, align 4
  %rd_requested.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %rd_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rd_requested.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %31)
  %cmp.i.i = icmp ult i32 %35, %31
  br i1 %cmp.i.i, label %do.body9.i.i, label %do.end15.i.i, !prof !149

do.body9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 650, 0\0A.popsection", ""() #12, !srcloc !150
  unreachable

do.end15.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %35, %31
  %36 = ptrtoint ptr %rd_requested.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.i.i, ptr %rd_requested.i.i, align 8
  %37 = ptrtoint ptr %rs_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rs_requested.i.i, align 8
  %rd_extfail_pt.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %28, i32 0, i32 18
  %39 = ptrtoint ptr %rd_extfail_pt.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rd_extfail_pt.i.i, align 4
  %add.i.i = add i32 %40, %38
  store i32 %add.i.i, ptr %rd_extfail_pt.i.i, align 4
  store i32 0, ptr %rs_requested.i.i, align 8
  br label %__rs_deltree.exit.i

__rs_deltree.exit.i:                              ; preds = %do.end15.i.i, %if.end.i.i.__rs_deltree.exit.i_crit_edge, %while.body.i.__rs_deltree.exit.i_crit_edge
  %call.i = tail call ptr @rb_first(ptr noundef %rd_rstree.i) #12
  %tobool.not.i28 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i28, label %__rs_deltree.exit.i.return_all_reservations.exit_crit_edge, label %__rs_deltree.exit.i.while.body.i_crit_edge

__rs_deltree.exit.i.while.body.i_crit_edge:       ; preds = %__rs_deltree.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

__rs_deltree.exit.i.return_all_reservations.exit_crit_edge: ; preds = %__rs_deltree.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return_all_reservations.exit

return_all_reservations.exit:                     ; preds = %__rs_deltree.exit.i.return_all_reservations.exit_crit_edge, %gfs2_free_clones.exit.return_all_reservations.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rd_rsspin.i) #12
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call31, i32 0, i32 13
  %41 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rd_bits, align 8
  tail call void @kfree(ptr noundef %42) #12
  %43 = ptrtoint ptr %rd_bits to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %rd_bits, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_rgrpd_cachep to i32))
  %44 = load ptr, ptr @gfs2_rgrpd_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %44, ptr noundef nonnull %call31) #12
  %call = tail call ptr @rb_first(ptr noundef %sd_rindex_tree) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %return_all_reservations.exit.while.end_crit_edge, label %return_all_reservations.exit.while.body_crit_edge

return_all_reservations.exit.while.body_crit_edge: ; preds = %return_all_reservations.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

return_all_reservations.exit.while.end_crit_edge: ; preds = %return_all_reservations.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %return_all_reservations.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_cb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_rgrp_brelse(ptr nocapture noundef readonly %rgd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_length = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 4
  %0 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd_length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp sgt i32 %1, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %x.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_bits, align 8
  %add.ptr = getelementptr %struct.gfs2_bitmap, ptr %3, i32 %x.010
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %brelse.exit

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

brelse.exit:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %5) #12
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %add.ptr, align 4
  br label %if.end

if.end:                                           ; preds = %brelse.exit, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %x.010, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 1
  %7 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rd_gl, align 4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %8) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @gfs2_ri_total(ptr nocapture noundef readonly %sdp) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [96 x i8], align 1
  %pos = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 41
  %0 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_rindex, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %buf) #12
  %2 = call ptr @memset(ptr %buf, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %3 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %pos, align 8
  %call124 = call fastcc i64 @i_size_read(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp8(i64 96, i64 %call124)
  %cmp25 = icmp slt i64 %call124, 96
  br i1 %cmp25, label %entry.for.end_crit_edge, label %if.end.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end.lr.ph:                                     ; preds = %entry
  %ri_data = getelementptr inbounds %struct.gfs2_rindex, ptr %buf, i32 0, i32 4
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %if.end.lr.ph
  %rgrps.027 = phi i32 [ 0, %if.end.lr.ph ], [ %inc, %for.inc.if.end_crit_edge ]
  %total_data.026 = phi i64 [ 0, %if.end.lr.ph ], [ %add10, %for.inc.if.end_crit_edge ]
  %call3 = call i32 @gfs2_internal_read(ptr noundef %1, ptr noundef nonnull %buf, ptr noundef nonnull %pos, i32 noundef 96) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 96
  br i1 %cmp4.not, label %for.inc, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %if.end
  %4 = ptrtoint ptr %ri_data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %ri_data, align 1
  %conv9 = zext i32 %5 to i64
  %add10 = add i64 %total_data.026, %conv9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  %inc = add i32 %rgrps.027, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos) #12
  %mul = mul i32 %inc, 96
  %conv = zext i32 %mul to i64
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %pos, align 8
  %add = add nuw nsw i64 %conv, 96
  %call1 = call fastcc i64 @i_size_read(ptr noundef %1)
  %cmp = icmp sgt i64 %add, %call1
  br i1 %cmp, label %for.inc.for.end_crit_edge, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %total_data.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %add10, %for.inc.for.end_crit_edge ], [ %total_data.026, %if.end.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %buf) #12
  ret i64 %total_data.0.lcssa
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
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !153
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !154
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !149

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !155
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !156
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !157
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !158
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !159
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_internal_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_rindex_update(ptr nocapture noundef readonly %sdp) local_unnamed_addr #0 align 64 {
entry:
  %ri_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 41
  %0 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_rindex, align 4
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ri_gh) #12
  %sd_rindex_uptodate = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 47
  %4 = call ptr @memset(ptr %ri_gh, i32 255, i32 32)
  %5 = ptrtoint ptr %sd_rindex_uptodate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sd_rindex_uptodate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #12
  %7 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 78
  %11 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %thread_pid.i.i, align 16
  %gl_holders.i = getelementptr inbounds %struct.gfs2_glock, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %gl_holders.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %gh.029.i = load ptr, ptr %gl_holders.i, align 4
  %cmp.not30.i = icmp eq ptr %gh.029.i, %gl_holders.i
  br i1 %cmp.not30.i, label %if.then.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_is_locked_by_me.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %gh.031.i = phi ptr [ %gh.0.i, %for.inc.i.for.body.i_crit_edge ], [ %gh.029.i, %if.then.for.body.i_crit_edge ]
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 6
  %14 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %gh_iflags.i, align 4
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.i

for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_is_locked_by_me.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %17 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %gh_iflags.i, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool6.not.i = icmp eq i32 %19, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %gh_owner_pid.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 2
  %20 = ptrtoint ptr %gh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gh_owner_pid.i, align 4
  %cmp9.i = icmp eq ptr %21, %12
  br i1 %cmp9.i, label %gfs2_glock_is_locked_by_me.exit, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %22 = ptrtoint ptr %gh.031.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %gh.0.i = load ptr, ptr %gh.031.i, align 4
  %cmp.not.i = icmp eq ptr %gh.0.i, %gl_holders.i
  br i1 %cmp.not.i, label %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_is_locked_by_me.exit.thread

gfs2_glock_is_locked_by_me.exit.thread:           ; preds = %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %if.then.gfs2_glock_is_locked_by_me.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #12
  br label %if.then3

gfs2_glock_is_locked_by_me.exit:                  ; preds = %if.end8.i
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #12
  %tobool2.not = icmp eq ptr %gh.031.i, null
  br i1 %tobool2.not, label %gfs2_glock_is_locked_by_me.exit.if.then3_crit_edge, label %gfs2_glock_is_locked_by_me.exit.if.end7_crit_edge

gfs2_glock_is_locked_by_me.exit.if.end7_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

gfs2_glock_is_locked_by_me.exit.if.then3_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

if.then3:                                         ; preds = %gfs2_glock_is_locked_by_me.exit.if.then3_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread
  %23 = tail call ptr @llvm.returnaddress(i32 0) #12
  %24 = ptrtoint ptr %23 to i32
  call void @__gfs2_holder_init(ptr noundef %3, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %ri_gh, i32 noundef %24) #12
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %ri_gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i27 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i27, label %if.then3.if.end7_crit_edge, label %gfs2_glock_nq_init.exit

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

gfs2_glock_nq_init.exit:                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_holder_uninit(ptr noundef nonnull %ri_gh) #12
  br label %cleanup

if.end7:                                          ; preds = %if.then3.if.end7_crit_edge, %gfs2_glock_is_locked_by_me.exit.if.end7_crit_edge
  %tobool2.not31 = phi i1 [ false, %gfs2_glock_is_locked_by_me.exit.if.end7_crit_edge ], [ true, %if.then3.if.end7_crit_edge ]
  %25 = ptrtoint ptr %sd_rindex_uptodate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sd_rindex_uptodate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool9.not = icmp eq i32 %26, 0
  br i1 %tobool9.not, label %if.then10, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = call fastcc i32 @gfs2_ri_update(ptr noundef %1)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %error.1 = phi i32 [ 0, %if.end7.if.end12_crit_edge ], [ %call11, %if.then10 ]
  br i1 %tobool2.not31, label %if.then14, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %ri_gh) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %gfs2_glock_nq_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %gfs2_glock_nq_init.exit ], [ 0, %entry.cleanup_crit_edge ], [ %error.1, %if.then14 ], [ %error.1, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ri_gh) #12
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_glock_nq_init(ptr noundef %gl, i32 noundef %state, i16 noundef zeroext %flags, ptr noundef %gh) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call void @__gfs2_holder_init(ptr noundef %gl, i32 noundef %state, i16 noundef zeroext %flags, ptr noundef %gh, i32 noundef %1) #12
  %call = tail call i32 @gfs2_glock_nq(ptr noundef %gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_holder_uninit(ptr noundef %gh) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_ri_update(ptr noundef %ip) unnamed_addr #0 align 64 {
entry:
  %pos.i = alloca i64, align 8
  %buf.i = alloca %struct.gfs2_rindex, align 8
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
  %ri_length.i = getelementptr inbounds %struct.gfs2_rindex, ptr %buf.i, i32 0, i32 1
  %ri_data0.i = getelementptr inbounds %struct.gfs2_rindex, ptr %buf.i, i32 0, i32 3
  %ri_data.i = getelementptr inbounds %struct.gfs2_rindex, ptr %buf.i, i32 0, i32 4
  %ri_bitbytes.i = getelementptr inbounds %struct.gfs2_rindex, ptr %buf.i, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %read_rindex_entry.exit.do.body_crit_edge, %entry
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pos.i) #12
  %sd_rgrps.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 50
  %8 = ptrtoint ptr %sd_rgrps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sd_rgrps.i, align 8
  %mul.i = mul i32 %9, 96
  %conv.i = zext i32 %mul.i to i64
  %10 = ptrtoint ptr %pos.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv.i, ptr %pos.i, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %buf.i) #12
  %11 = call ptr @memset(ptr %buf.i, i32 255, i32 96)
  %call2.i = call fastcc i64 @i_size_read(ptr noundef %ip) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call2.i, i64 %conv.i)
  %cmp.not.i = icmp sgt i64 %call2.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %do.body.read_rindex_entry.exit.thread.loopexit_crit_edge

do.body.read_rindex_entry.exit.thread.loopexit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_rindex_entry.exit.thread.loopexit

if.end.i:                                         ; preds = %do.body
  %call4.i = call i32 @gfs2_internal_read(ptr noundef %ip, ptr noundef nonnull %buf.i, ptr noundef nonnull %pos.i, i32 noundef 96) #12
  %12 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %if.end.i.read_rindex_entry.exit.thread_crit_edge [
    i32 96, label %if.end10.i
    i32 0, label %if.end.i.read_rindex_entry.exit.thread.loopexit_crit_edge
  ]

if.end.i.read_rindex_entry.exit.thread.loopexit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_rindex_entry.exit.thread.loopexit

if.end.i.read_rindex_entry.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_rindex_entry.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_rgrpd_cachep to i32))
  %13 = load ptr, ptr @gfs2_rgrpd_cachep, align 4
  %call.i.i = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %13, i32 noundef 3392) #12
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end10.i.read_rindex_entry.exit.thread.loopexit_crit_edge, label %if.end13.i

if.end10.i.read_rindex_entry.exit.thread.loopexit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_rindex_entry.exit.thread.loopexit

if.end13.i:                                       ; preds = %if.end10.i
  %rd_sbd.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %rd_sbd.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %7, ptr %rd_sbd.i, align 4
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %buf.i, align 8
  %rd_addr.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %rd_addr.i, align 8
  %18 = ptrtoint ptr %ri_length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ri_length.i, align 8
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rd_length.i, align 8
  %21 = ptrtoint ptr %ri_data0.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ri_data0.i, align 8
  %rd_data0.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %rd_data0.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %rd_data0.i, align 8
  %24 = ptrtoint ptr %ri_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ri_data.i, align 8
  %rd_data.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %rd_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rd_data.i, align 4
  %27 = ptrtoint ptr %ri_bitbytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ri_bitbytes.i, align 4
  %rd_bitbytes.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %rd_bitbytes.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rd_bitbytes.i, align 8
  %rd_rsspin.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 19
  call void @__raw_spin_lock_init(ptr noundef %rd_rsspin.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @read_rindex_entry.__key, i16 noundef signext 3) #12
  %rd_mutex.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 20
  call void @__mutex_init(ptr noundef %rd_mutex.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @read_rindex_entry.__key.23) #12
  %30 = ptrtoint ptr %rd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rd_sbd.i, align 4
  %32 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rd_length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %if.end13.i.fail.i_crit_edge, label %if.end.i.i

if.end13.i.fail.i_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

if.end.i.i:                                       ; preds = %if.end13.i
  %34 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 28) #12
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !149

kcalloc.exit.thread.i.i:                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rd_bits127.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 13
  %36 = ptrtoint ptr %rd_bits127.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rd_bits127.i.i, align 8
  br label %fail.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i
  %37 = extractvalue { i32, i1 } %34, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %37, i32 noundef 3392) #15
  %rd_bits.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 13
  %38 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call8.i.i.i.i, ptr %rd_bits.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end7.i.i.i.i.fail.i_crit_edge, label %for.body.lr.ph.i.i

if.end7.i.i.i.i.fail.i_crit_edge:                 ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

for.body.lr.ph.i.i:                               ; preds = %if.end7.i.i.i.i
  %39 = ptrtoint ptr %rd_bitbytes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rd_bitbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp6.i.i = icmp eq i32 %33, 1
  %sb_bsize27.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %31, i32 0, i32 5, i32 4
  %41 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rd_bits.i.i, align 8
  %bi_flags.peel.i.i = getelementptr %struct.gfs2_bitmap, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %bi_flags.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %bi_flags.peel.i.i, align 4
  br i1 %cmp6.i.i, label %for.end.thread.i.i, label %for.body.peel.next.i.i

for.end.thread.i.i:                               ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %bi_offset.peel.i.i = getelementptr %struct.gfs2_bitmap, ptr %42, i32 0, i32 3
  %44 = ptrtoint ptr %bi_offset.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 128, ptr %bi_offset.peel.i.i, align 4
  %bi_start.peel.i.i = getelementptr %struct.gfs2_bitmap, ptr %42, i32 0, i32 4
  %45 = ptrtoint ptr %bi_start.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %bi_start.peel.i.i, align 4
  %bi_bytes.peel.i.i = getelementptr %struct.gfs2_bitmap, ptr %42, i32 0, i32 5
  %46 = ptrtoint ptr %bi_bytes.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %40, ptr %bi_bytes.peel.i.i, align 4
  %mul.peel.i.i = shl i32 %40, 2
  %bi_blocks.peel.i.i = getelementptr %struct.gfs2_bitmap, ptr %42, i32 0, i32 6
  %47 = ptrtoint ptr %bi_blocks.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul.peel.i.i, ptr %bi_blocks.peel.i.i, align 4
  br label %if.end42.i.i

for.body.peel.next.i.i:                           ; preds = %for.body.lr.ph.i.i
  %48 = ptrtoint ptr %sb_bsize27.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sb_bsize27.i.i, align 8
  %sub.peel.i.i = add i32 %49, -128
  %bi_offset10.peel.i.i = getelementptr %struct.gfs2_bitmap, ptr %42, i32 0, i32 3
  %50 = ptrtoint ptr %bi_offset10.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 128, ptr %bi_offset10.peel.i.i, align 4
  %bi_start11.peel.i.i = getelementptr %struct.gfs2_bitmap, ptr %42, i32 0, i32 4
  %51 = ptrtoint ptr %bi_start11.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %bi_start11.peel.i.i, align 4
  %bi_bytes12.peel.i.i = getelementptr %struct.gfs2_bitmap, ptr %42, i32 0, i32 5
  %52 = ptrtoint ptr %bi_bytes12.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub.peel.i.i, ptr %bi_bytes12.peel.i.i, align 4
  %mul13.peel.i.i = shl i32 %sub.peel.i.i, 2
  %bi_blocks14.peel.i.i = getelementptr %struct.gfs2_bitmap, ptr %42, i32 0, i32 6
  %53 = ptrtoint ptr %bi_blocks14.peel.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul13.peel.i.i, ptr %bi_blocks14.peel.i.i, align 4
  %sub39.peel.i.i = sub i32 %40, %sub.peel.i.i
  br label %if.else15.i.i

if.else15.i.i:                                    ; preds = %if.end38.i.i.if.else15.i.i_crit_edge, %for.body.peel.next.i.i
  %x.0137.i.i = phi i32 [ 1, %for.body.peel.next.i.i ], [ %add.i.i, %if.end38.i.i.if.else15.i.i_crit_edge ]
  %bytes_left.0135.i.i = phi i32 [ %sub39.peel.i.i, %for.body.peel.next.i.i ], [ %sub39.i.i, %if.end38.i.i.if.else15.i.i_crit_edge ]
  %54 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rd_bits.i.i, align 8
  %bi_flags.i.i = getelementptr %struct.gfs2_bitmap, ptr %55, i32 %x.0137.i.i, i32 2
  %56 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %bi_flags.i.i, align 4
  %add.i.i = add nuw i32 %x.0137.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %33)
  %cmp16.i.i = icmp eq i32 %add.i.i, %33
  br i1 %cmp16.i.i, label %if.else15.i.i.if.end38.i.i_crit_edge, label %if.else25.i.i

if.else15.i.i.if.end38.i.i_crit_edge:             ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38.i.i

if.else25.i.i:                                    ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %sb_bsize27.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sb_bsize27.i.i, align 8
  %sub28.i.i = add i32 %58, -24
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else25.i.i, %if.else15.i.i.if.end38.i.i_crit_edge
  %sub28.sink145.i.i = phi i32 [ %sub28.i.i, %if.else25.i.i ], [ %bytes_left.0135.i.i, %if.else15.i.i.if.end38.i.i_crit_edge ]
  %59 = getelementptr %struct.gfs2_bitmap, ptr %55, i32 %x.0137.i.i, i32 3
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 24, ptr %59, align 4
  %61 = ptrtoint ptr %rd_bitbytes.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.i = load i32, ptr %rd_bitbytes.i, align 8
  %sub31.sink.i.i = sub i32 %.pn.i, %bytes_left.0135.i.i
  %bi_start32.i.i = getelementptr %struct.gfs2_bitmap, ptr %55, i32 %x.0137.i.i, i32 4
  %62 = ptrtoint ptr %bi_start32.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub31.sink.i.i, ptr %bi_start32.i.i, align 4
  %bi_bytes33.i.i = getelementptr %struct.gfs2_bitmap, ptr %55, i32 %x.0137.i.i, i32 5
  %63 = ptrtoint ptr %bi_bytes33.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %sub28.sink145.i.i, ptr %bi_bytes33.i.i, align 4
  %mul34.i.i = shl i32 %sub28.sink145.i.i, 2
  %bi_blocks35.i.i = getelementptr %struct.gfs2_bitmap, ptr %55, i32 %x.0137.i.i, i32 6
  %64 = ptrtoint ptr %bi_blocks35.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul34.i.i, ptr %bi_blocks35.i.i, align 4
  %sub39.i.i = sub i32 %bytes_left.0135.i.i, %sub28.sink145.i.i
  br i1 %cmp16.i.i, label %for.end.i.i, label %if.end38.i.i.if.else15.i.i_crit_edge, !llvm.loop !160

if.end38.i.i.if.else15.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else15.i.i

for.end.i.i:                                      ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub39.i.i)
  %tobool40.not.i.i = icmp eq i32 %sub39.i.i, 0
  br i1 %tobool40.not.i.i, label %for.end.i.i.if.end42.i.i_crit_edge, label %if.then41.i.i

for.end.i.i.if.end42.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i.i

if.then41.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_consist_rgrpd_i(ptr noundef %call.i.i, ptr noundef nonnull @__func__.compute_bitstructs, ptr noundef nonnull @.str.1, i32 noundef 810) #12
  br label %fail.i

if.end42.i.i:                                     ; preds = %for.end.i.i.if.end42.i.i_crit_edge, %for.end.thread.i.i
  %65 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rd_bits.i.i, align 8
  %sub44.i.i = add i32 %33, -1
  %bi_start46.i.i = getelementptr %struct.gfs2_bitmap, ptr %66, i32 %sub44.i.i, i32 4
  %67 = ptrtoint ptr %bi_start46.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bi_start46.i.i, align 4
  %bi_bytes47.i.i = getelementptr %struct.gfs2_bitmap, ptr %66, i32 %sub44.i.i, i32 5
  %69 = ptrtoint ptr %bi_bytes47.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bi_bytes47.i.i, align 4
  %add48.i.i = add i32 %70, %68
  %mul49.i.i = shl i32 %add48.i.i, 2
  %71 = ptrtoint ptr %rd_data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rd_data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul49.i.i, i32 %72)
  %cmp50.not.i.i = icmp eq i32 %mul49.i.i, %72
  %73 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %rd_addr.i, align 8
  br i1 %cmp50.not.i.i, label %if.end21.i, label %if.then51.i.i

if.then51.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rd_length.i, align 8
  %77 = ptrtoint ptr %rd_data0.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %rd_data0.i, align 8
  %79 = ptrtoint ptr %rd_bitbytes.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rd_bitbytes.i, align 8
  %bi_offset57.i.i = getelementptr %struct.gfs2_bitmap, ptr %66, i32 %sub44.i.i, i32 3
  %81 = ptrtoint ptr %bi_offset57.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bi_offset57.i.i, align 4
  call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %31, ptr noundef nonnull @.str.25, i64 noundef %74, i32 noundef %76, i64 noundef %78, i32 noundef %72, i32 noundef %80, i32 noundef %68, i32 noundef %70, i32 noundef %82) #12
  call void @gfs2_consist_rgrpd_i(ptr noundef %call.i.i, ptr noundef nonnull @__func__.compute_bitstructs, ptr noundef nonnull @.str.1, i32 noundef 828) #12
  br label %fail.i

if.end21.i:                                       ; preds = %if.end42.i.i
  %rd_gl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 1
  %call23.i = call i32 @gfs2_glock_get(ptr noundef %7, i64 noundef %74, ptr noundef nonnull @gfs2_rgrp_glops, i32 noundef 1, ptr noundef %rd_gl.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end21.i.fail.i_crit_edge

if.end21.i.fail.i_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

if.end26.i:                                       ; preds = %if.end21.i
  %83 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rd_gl.i, align 4
  %sb_lvbptr.i = getelementptr inbounds %struct.gfs2_glock, ptr %84, i32 0, i32 10, i32 3
  %85 = ptrtoint ptr %sb_lvbptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sb_lvbptr.i, align 4
  %rd_rgl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 15
  %87 = ptrtoint ptr %rd_rgl.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %rd_rgl.i, align 8
  %rd_flags.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 17
  %88 = ptrtoint ptr %rd_flags.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rd_flags.i, align 8
  %and.i = and i32 %89, 2147483647
  store i32 %and.i, ptr %rd_flags.i, align 8
  %90 = ptrtoint ptr %rd_data.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rd_data.i, align 4
  %sd_max_rg_data.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 51
  %92 = ptrtoint ptr %sd_max_rg_data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sd_max_rg_data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp29.i = icmp ugt i32 %91, %93
  br i1 %cmp29.i, label %if.then31.i, label %if.end26.i.if.end34.i_crit_edge

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then31.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %sd_max_rg_data.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %91, ptr %sd_max_rg_data.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then31.i, %if.end26.i.if.end34.i_crit_edge
  %sd_rindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 48
  call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i) #12
  %95 = ptrtoint ptr %rd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rd_sbd.i, align 4
  %sd_rindex_tree.i = getelementptr inbounds %struct.gfs2_sbd, ptr %96, i32 0, i32 49
  %97 = ptrtoint ptr %sd_rindex_tree.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sd_rindex_tree.i, align 4
  %tobool.not30.i = icmp eq ptr %98, null
  br i1 %tobool.not30.i, label %if.end34.i.if.then38.i_crit_edge, label %while.body.lr.ph.i

if.end34.i.if.then38.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

while.body.lr.ph.i:                               ; preds = %if.end34.i
  %99 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %rd_addr.i, align 8
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %105)
  %cmp.i27 = icmp ult i64 %100, %105
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 2
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %105)
  %cmp4.i = icmp ugt i64 %100, %105
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 1
  %spec.select.i = select i1 %cmp4.i, ptr %rb_right.i, ptr %newn.031.i
  %newn.2.i = select i1 %cmp.i27, ptr %rb_left.i, ptr %spec.select.i
  %101 = ptrtoint ptr %newn.2.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %newn.2.i, align 4
  %tobool.not.i28 = icmp eq ptr %102, null
  br i1 %tobool.not.i28, label %while.cond.i.if.then38.i_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.cond.i.if.then38.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %103 = phi ptr [ %98, %while.body.lr.ph.i ], [ %102, %while.cond.i.while.body.i_crit_edge ]
  %newn.031.i = phi ptr [ %sd_rindex_tree.i, %while.body.lr.ph.i ], [ %newn.2.i, %while.cond.i.while.body.i_crit_edge ]
  %rd_addr1.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %rd_addr1.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %rd_addr1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %105)
  %.not.i = icmp eq i64 %100, %105
  br i1 %.not.i, label %if.end40.i, label %while.cond.i

if.then38.i:                                      ; preds = %while.cond.i.if.then38.i_crit_edge, %if.end34.i.if.then38.i_crit_edge
  %newn.0.lcssa.i = phi ptr [ %sd_rindex_tree.i, %if.end34.i.if.then38.i_crit_edge ], [ %newn.2.i, %while.cond.i.if.then38.i_crit_edge ]
  %parent.0.lcssa.i = phi ptr [ null, %if.end34.i.if.then38.i_crit_edge ], [ %103, %while.cond.i.if.then38.i_crit_edge ]
  %106 = ptrtoint ptr %parent.0.lcssa.i to i32
  %107 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %call.i.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i.i, i32 0, i32 1
  %108 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %call.i.i, i32 0, i32 2
  %109 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %rb_left.i.i, align 8
  %110 = ptrtoint ptr %newn.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call.i.i, ptr %newn.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef %call.i.i, ptr noundef %sd_rindex_tree.i) #12
  %sd_rgrps.i29 = getelementptr inbounds %struct.gfs2_sbd, ptr %96, i32 0, i32 50
  %111 = ptrtoint ptr %sd_rgrps.i29 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sd_rgrps.i29, align 8
  %inc.i30 = add i32 %112, 1
  store i32 %inc.i30, ptr %sd_rgrps.i29, align 8
  call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  %113 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rd_gl.i, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %114, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #12
  %gl_object.i = getelementptr inbounds %struct.gfs2_glock, ptr %114, i32 0, i32 12
  %115 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %gl_object.i, align 4
  %cmp.not.i24 = icmp eq ptr %116, null
  br i1 %cmp.not.i24, label %if.then38.i.glock_set_object.exit_crit_edge, label %if.then.i, !prof !151

if.then38.i.glock_set_object.exit_crit_edge:      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %glock_set_object.exit

if.then.i:                                        ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #14
  %ln_sbd.i = getelementptr inbounds %struct.gfs2_glock, ptr %114, i32 0, i32 1, i32 1
  %117 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ln_sbd.i, align 8
  call void @gfs2_assert_warn_i(ptr noundef %118, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.glock_set_object, ptr noundef nonnull @.str.27, i32 noundef 306) #12
  call void @gfs2_dump_glock(ptr noundef null, ptr noundef %114, i1 noundef zeroext true) #12
  br label %glock_set_object.exit

glock_set_object.exit:                            ; preds = %if.then.i, %if.then38.i.glock_set_object.exit_crit_edge
  %119 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call.i.i, ptr %gl_object.i, align 4
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #12
  br label %read_rindex_entry.exit

if.end40.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  %120 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rd_gl.i, align 4
  call void @gfs2_glock_put(ptr noundef %121) #12
  br label %fail.i

fail.i:                                           ; preds = %if.end40.i, %if.end21.i.fail.i_crit_edge, %if.then51.i.i, %if.then41.i.i, %if.end7.i.i.i.i.fail.i_crit_edge, %kcalloc.exit.thread.i.i, %if.end13.i.fail.i_crit_edge
  %error.0.i = phi i32 [ %call23.i, %if.end21.i.fail.i_crit_edge ], [ 0, %if.end40.i ], [ -12, %kcalloc.exit.thread.i.i ], [ -12, %if.end7.i.i.i.i.fail.i_crit_edge ], [ -22, %if.end13.i.fail.i_crit_edge ], [ -5, %if.then51.i.i ], [ -5, %if.then41.i.i ]
  %rd_bits.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call.i.i, i32 0, i32 13
  %122 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rd_bits.i, align 8
  call void @kfree(ptr noundef %123) #12
  %124 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %rd_bits.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_rgrpd_cachep to i32))
  %125 = load ptr, ptr @gfs2_rgrpd_cachep, align 4
  call void @kmem_cache_free(ptr noundef %125, ptr noundef nonnull %call.i.i) #12
  br label %read_rindex_entry.exit

read_rindex_entry.exit.thread.loopexit:           ; preds = %if.end10.i.read_rindex_entry.exit.thread.loopexit_crit_edge, %if.end.i.read_rindex_entry.exit.thread.loopexit_crit_edge, %do.body.read_rindex_entry.exit.thread.loopexit_crit_edge
  %retval.0.i.ph.ph = phi i32 [ 1, %do.body.read_rindex_entry.exit.thread.loopexit_crit_edge ], [ 1, %if.end.i.read_rindex_entry.exit.thread.loopexit_crit_edge ], [ -12, %if.end10.i.read_rindex_entry.exit.thread.loopexit_crit_edge ]
  br label %read_rindex_entry.exit.thread

read_rindex_entry.exit.thread:                    ; preds = %read_rindex_entry.exit.thread.loopexit, %if.end.i.read_rindex_entry.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.ph, %read_rindex_entry.exit.thread.loopexit ], [ %call4.i, %if.end.i.read_rindex_entry.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #12
  br label %do.end

read_rindex_entry.exit:                           ; preds = %fail.i, %glock_set_object.exit
  %retval.0.i = phi i32 [ %error.0.i, %fail.i ], [ 0, %glock_set_object.exit ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %buf.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pos.i) #12
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %read_rindex_entry.exit.do.body_crit_edge, label %read_rindex_entry.exit.do.end_crit_edge

read_rindex_entry.exit.do.end_crit_edge:          ; preds = %read_rindex_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

read_rindex_entry.exit.do.body_crit_edge:         ; preds = %read_rindex_entry.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %read_rindex_entry.exit.do.end_crit_edge, %read_rindex_entry.exit.thread
  %retval.0.i35 = phi i32 [ %retval.0.i.ph, %read_rindex_entry.exit.thread ], [ %retval.0.i, %read_rindex_entry.exit.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i35)
  %cmp2 = icmp slt i32 %retval.0.i35, 0
  br i1 %cmp2, label %do.end.cleanup_crit_edge, label %do.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end5:                                          ; preds = %do.end
  %sd_rindex_tree = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 49
  %126 = ptrtoint ptr %sd_rindex_tree to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load volatile ptr, ptr %sd_rindex_tree, align 4
  %cmp6 = icmp eq ptr %127, null
  br i1 %cmp6, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %sd_fsname) #16
  br label %cleanup

if.end13:                                         ; preds = %do.end5
  %sd_rindex_spin.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 48
  call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i.i) #12
  %call.i.i21 = call ptr @rb_first(ptr noundef %sd_rindex_tree) #12
  call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i.i) #12
  %sd_lockstruct.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 23
  %128 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %sd_lockstruct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp45.i = icmp sgt i32 %129, 0
  br i1 %cmp45.i, label %if.end13.for.body.i_crit_edge, label %if.end13.do.body.preheader.i_crit_edge

if.end13.do.body.preheader.i_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader.i

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

do.body.preheader.i:                              ; preds = %gfs2_rgrpd_get_next.exit.i.do.body.preheader.i_crit_edge, %if.end13.do.body.preheader.i_crit_edge
  %rgd.0.lcssa.i = phi ptr [ %call.i.i21, %if.end13.do.body.preheader.i_crit_edge ], [ %.n.0.i.i, %gfs2_rgrpd_get_next.exit.i.do.body.preheader.i_crit_edge ]
  %sd_journals.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 55
  br label %do.body.i

for.body.i:                                       ; preds = %gfs2_rgrpd_get_next.exit.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %i.047.i = phi i32 [ %inc.i, %gfs2_rgrpd_get_next.exit.i.for.body.i_crit_edge ], [ 0, %if.end13.for.body.i_crit_edge ]
  %rgd.046.i = phi ptr [ %.n.0.i.i, %gfs2_rgrpd_get_next.exit.i.for.body.i_crit_edge ], [ %call.i.i21, %if.end13.for.body.i_crit_edge ]
  %rd_sbd.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.046.i, i32 0, i32 14
  %130 = ptrtoint ptr %rd_sbd.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rd_sbd.i.i, align 4
  %sd_rindex_spin.i25.i = getelementptr inbounds %struct.gfs2_sbd, ptr %131, i32 0, i32 48
  call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i25.i) #12
  %call.i26.i = call ptr @rb_next(ptr noundef %rgd.046.i) #12
  %cmp.i.i = icmp eq ptr %call.i26.i, null
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body.i.gfs2_rgrpd_get_next.exit.i_crit_edge

for.body.i.gfs2_rgrpd_get_next.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_rgrpd_get_next.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %sd_rindex_tree.i27.i = getelementptr inbounds %struct.gfs2_sbd, ptr %131, i32 0, i32 49
  %call1.i.i = call ptr @rb_first(ptr noundef %sd_rindex_tree.i27.i) #12
  br label %gfs2_rgrpd_get_next.exit.i

gfs2_rgrpd_get_next.exit.i:                       ; preds = %if.then.i.i, %for.body.i.gfs2_rgrpd_get_next.exit.i_crit_edge
  %n.0.i.i = phi ptr [ %call1.i.i, %if.then.i.i ], [ %call.i26.i, %for.body.i.gfs2_rgrpd_get_next.exit.i_crit_edge ]
  %cmp3.i.i = icmp eq ptr %n.0.i.i, %rgd.046.i
  call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i25.i) #12
  %.n.0.i.i = select i1 %cmp3.i.i, ptr null, ptr %n.0.i.i, !prof !149
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %132 = ptrtoint ptr %sd_lockstruct.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sd_lockstruct.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %133
  br i1 %cmp.i, label %gfs2_rgrpd_get_next.exit.i.for.body.i_crit_edge, label %gfs2_rgrpd_get_next.exit.i.do.body.preheader.i_crit_edge

gfs2_rgrpd_get_next.exit.i.do.body.preheader.i_crit_edge: ; preds = %gfs2_rgrpd_get_next.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader.i

gfs2_rgrpd_get_next.exit.i.for.body.i_crit_edge:  ; preds = %gfs2_rgrpd_get_next.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %rgd.1.i = phi ptr [ %rgd.3.i, %do.cond.i.do.body.i_crit_edge ], [ %rgd.0.lcssa.i, %do.body.preheader.i ]
  %rd_flags.i22 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.1.i, i32 0, i32 17
  %134 = ptrtoint ptr %rd_flags.i22 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rd_flags.i22, align 8
  %or.i = or i32 %135, -2147483648
  store i32 %or.i, ptr %rd_flags.i22, align 8
  %136 = ptrtoint ptr %sd_journals.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sd_journals.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp348.not.i = icmp eq i32 %137, 0
  br i1 %cmp348.not.i, label %do.body.i.do.cond.i_crit_edge, label %do.body.i.for.body4.i_crit_edge

do.body.i.for.body4.i_crit_edge:                  ; preds = %do.body.i
  br label %for.body4.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i

for.cond2.i:                                      ; preds = %gfs2_rgrpd_get_next.exit38.i
  %inc8.i = add nuw i32 %i.150.i, 1
  %138 = ptrtoint ptr %sd_journals.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sd_journals.i, align 8
  %cmp3.i = icmp ult i32 %inc8.i, %139
  br i1 %cmp3.i, label %for.cond2.i.for.body4.i_crit_edge, label %for.cond2.i.do.cond.i_crit_edge

for.cond2.i.do.cond.i_crit_edge:                  ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond.i

for.cond2.i.for.body4.i_crit_edge:                ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.cond2.i.for.body4.i_crit_edge, %do.body.i.for.body4.i_crit_edge
  %i.150.i = phi i32 [ %inc8.i, %for.cond2.i.for.body4.i_crit_edge ], [ 0, %do.body.i.for.body4.i_crit_edge ]
  %rgd.249.i = phi ptr [ %n.0.i35.i, %for.cond2.i.for.body4.i_crit_edge ], [ %rgd.1.i, %do.body.i.for.body4.i_crit_edge ]
  %rd_sbd.i28.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.249.i, i32 0, i32 14
  %140 = ptrtoint ptr %rd_sbd.i28.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rd_sbd.i28.i, align 4
  %sd_rindex_spin.i29.i = getelementptr inbounds %struct.gfs2_sbd, ptr %141, i32 0, i32 48
  call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i29.i) #12
  %call.i30.i = call ptr @rb_next(ptr noundef %rgd.249.i) #12
  %cmp.i31.i = icmp eq ptr %call.i30.i, null
  br i1 %cmp.i31.i, label %if.then.i34.i, label %for.body4.i.gfs2_rgrpd_get_next.exit38.i_crit_edge

for.body4.i.gfs2_rgrpd_get_next.exit38.i_crit_edge: ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_rgrpd_get_next.exit38.i

if.then.i34.i:                                    ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %sd_rindex_tree.i32.i = getelementptr inbounds %struct.gfs2_sbd, ptr %141, i32 0, i32 49
  %call1.i33.i = call ptr @rb_first(ptr noundef %sd_rindex_tree.i32.i) #12
  br label %gfs2_rgrpd_get_next.exit38.i

gfs2_rgrpd_get_next.exit38.i:                     ; preds = %if.then.i34.i, %for.body4.i.gfs2_rgrpd_get_next.exit38.i_crit_edge
  %n.0.i35.i = phi ptr [ %call1.i33.i, %if.then.i34.i ], [ %call.i30.i, %for.body4.i.gfs2_rgrpd_get_next.exit38.i_crit_edge ]
  %cmp3.i36.i = icmp eq ptr %n.0.i35.i, %rgd.249.i
  call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i29.i) #12
  %tobool.not43.i = icmp eq ptr %n.0.i35.i, null
  %tobool.not.i23 = or i1 %cmp3.i36.i, %tobool.not43.i
  %cmp6.i = icmp eq ptr %n.0.i35.i, %rgd.0.lcssa.i
  %or.cond61.i = select i1 %tobool.not.i23, i1 true, i1 %cmp6.i
  br i1 %or.cond61.i, label %gfs2_rgrpd_get_next.exit38.i.set_rgrp_preferences.exit_crit_edge, label %for.cond2.i

gfs2_rgrpd_get_next.exit38.i.set_rgrp_preferences.exit_crit_edge: ; preds = %gfs2_rgrpd_get_next.exit38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_rgrp_preferences.exit

do.cond.i:                                        ; preds = %for.cond2.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %rgd.3.i = phi ptr [ %rgd.1.i, %do.body.i.do.cond.i_crit_edge ], [ %n.0.i35.i, %for.cond2.i.do.cond.i_crit_edge ]
  %tobool10.not.i = icmp eq ptr %rgd.3.i, null
  %cmp11.not.i = icmp eq ptr %rgd.3.i, %rgd.0.lcssa.i
  %or.cond.i = select i1 %tobool10.not.i, i1 true, i1 %cmp11.not.i
  br i1 %or.cond.i, label %do.cond.i.set_rgrp_preferences.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.cond.i.set_rgrp_preferences.exit_crit_edge:    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_rgrp_preferences.exit

set_rgrp_preferences.exit:                        ; preds = %do.cond.i.set_rgrp_preferences.exit_crit_edge, %gfs2_rgrpd_get_next.exit38.i.set_rgrp_preferences.exit_crit_edge
  %sd_rindex_uptodate = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 47
  %142 = ptrtoint ptr %sd_rindex_uptodate to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %sd_rindex_uptodate, align 4
  br label %cleanup

cleanup:                                          ; preds = %set_rgrp_preferences.exit, %do.end10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %do.end10 ], [ 0, %set_rgrp_preferences.exit ], [ %retval.0.i35, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_rgrp_go_instantiate(ptr nocapture noundef readonly %gh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %gh_gl = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 1
  %0 = ptrtoint ptr %gh_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gh_gl, align 4
  %gl_object = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %gl_object to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gl_object, align 4
  %rd_sbd = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %rd_sbd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd_sbd, align 4
  %rd_length = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_length, align 8
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd_bits, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp.not = icmp eq ptr %11, null
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1157.not = icmp eq i32 %7, 0
  br i1 %cmp1157.not, label %for.cond.preheader.for.cond6.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond6.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond6.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rd_addr = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %x.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rd_bits, align 8
  %add.ptr = getelementptr %struct.gfs2_bitmap, ptr %13, i32 %x.0158
  %14 = ptrtoint ptr %rd_addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rd_addr, align 8
  %conv = zext i32 %x.0158 to i64
  %add = add i64 %15, %conv
  %call = tail call i32 @gfs2_meta_read(ptr noundef %1, i64 noundef %add, i32 noundef 0, i32 noundef 0, ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.fail_crit_edge

for.body.fail_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %x.0158, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.cond6.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.cond6.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc.for.cond6.preheader_crit_edge, %for.cond.preheader.for.cond6.preheader_crit_edge
  br label %for.cond6

for.cond6:                                        ; preds = %gfs2_metatype_check_i.exit.for.cond6_crit_edge, %for.cond6.preheader
  %y.0 = phi i32 [ %dec, %gfs2_metatype_check_i.exit.for.cond6_crit_edge ], [ %7, %for.cond6.preheader ]
  %dec = add i32 %y.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %y.0)
  %tobool7.not = icmp eq i32 %y.0, 0
  %16 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rd_bits, align 8
  br i1 %tobool7.not, label %for.end23, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %add.ptr10 = getelementptr %struct.gfs2_bitmap, ptr %17, i32 %dec
  %18 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr10, align 4
  %call12 = tail call i32 @gfs2_meta_wait(ptr noundef %5, ptr noundef %19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %for.body8.fail_crit_edge

for.body8.fail_crit_edge:                         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end15:                                         ; preds = %for.body8
  %20 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool17.not = icmp eq i32 %dec, 0
  %conv18 = select i1 %tobool17.not, i16 2, i16 3
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mh_type.i, align 4
  %conv.i = trunc i32 %27 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 18225520
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !151

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @gfs2_meta_check_ii(ptr noundef %5, ptr noundef %21, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.gfs2_rgrp_go_instantiate, ptr noundef nonnull @.str.1, i32 noundef 1223) #12
  br label %gfs2_metatype_check_i.exit

if.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_cmp2(i16 %conv18, i16 %conv.i)
  %cmp5.not.i = icmp eq i16 %conv18, %conv.i
  br i1 %cmp5.not.i, label %if.end.i.gfs2_metatype_check_i.exit_crit_edge, label %if.then13.i, !prof !151

if.end.i.gfs2_metatype_check_i.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_metatype_check_i.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call14.i = tail call i32 @gfs2_metatype_check_ii(ptr noundef %5, ptr noundef %21, i16 noundef zeroext %conv18, i16 noundef zeroext %conv.i, ptr noundef nonnull @__func__.gfs2_rgrp_go_instantiate, ptr noundef nonnull @.str.1, i32 noundef 1223) #12
  br label %gfs2_metatype_check_i.exit

gfs2_metatype_check_i.exit:                       ; preds = %if.then13.i, %if.end.i.gfs2_metatype_check_i.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call14.i, %if.then13.i ], [ 0, %if.end.i.gfs2_metatype_check_i.exit_crit_edge ]
  %tobool20.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool20.not, label %gfs2_metatype_check_i.exit.for.cond6_crit_edge, label %gfs2_metatype_check_i.exit.fail_crit_edge

gfs2_metatype_check_i.exit.fail_crit_edge:        ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

gfs2_metatype_check_i.exit.for.cond6_crit_edge:   ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond6

for.end23:                                        ; preds = %for.cond6
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %17, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data, align 4
  %rg_flags1.i = getelementptr inbounds %struct.gfs2_rgrp, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %rg_flags1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rg_flags1.i, align 8
  %and.i = and i32 %33, 268435455
  %rd_flags.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 17
  %34 = ptrtoint ptr %rd_flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rd_flags.i, align 8
  %and2.i = and i32 %35, -268435456
  %or.i = or i32 %and2.i, %and.i
  store i32 %or.i, ptr %rd_flags.i, align 8
  %rg_free.i = getelementptr inbounds %struct.gfs2_rgrp, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %rg_free.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rg_free.i, align 4
  %rd_free.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 7
  %38 = ptrtoint ptr %rd_free.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %rd_free.i, align 4
  %rg_dinodes.i = getelementptr inbounds %struct.gfs2_rgrp, ptr %31, i32 0, i32 3
  %39 = ptrtoint ptr %rg_dinodes.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rg_dinodes.i, align 8
  %rd_dinodes.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 11
  %41 = ptrtoint ptr %rd_dinodes.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %rd_dinodes.i, align 4
  %rg_igeneration.i = getelementptr inbounds %struct.gfs2_rgrp, ptr %31, i32 0, i32 5
  %42 = ptrtoint ptr %rg_igeneration.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rg_igeneration.i, align 8
  %rd_igeneration.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 12
  %44 = ptrtoint ptr %rd_igeneration.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %rd_igeneration.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  %45 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rd_length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp324.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %for.cond1.preheader.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.end23
  br i1 %cmp324.not.i, label %for.cond.preheader.i.rgrp_set_bitmap_flags.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.rgrp_set_bitmap_flags.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rgrp_set_bitmap_flags.exit

for.cond1.preheader.i:                            ; preds = %for.end23
  br i1 %cmp324.not.i, label %for.cond1.preheader.i.rgrp_set_bitmap_flags.exit_crit_edge, label %for.cond1.preheader.i.for.body4.i_crit_edge

for.cond1.preheader.i.for.body4.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body4.i

for.cond1.preheader.i.rgrp_set_bitmap_flags.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rgrp_set_bitmap_flags.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %x.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %47 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rd_bits, align 8
  %bi_flags.i = getelementptr %struct.gfs2_bitmap, ptr %48, i32 %x.023.i, i32 2
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bi_flags.i) #12
  %inc.i = add nuw i32 %x.023.i, 1
  %49 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rd_length, align 8
  %cmp.i = icmp ult i32 %inc.i, %50
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rgrp_set_bitmap_flags.exit_crit_edge

for.body.i.rgrp_set_bitmap_flags.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rgrp_set_bitmap_flags.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.cond1.preheader.i.for.body4.i_crit_edge
  %x.125.i = phi i32 [ %inc9.i, %for.body4.i.for.body4.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body4.i_crit_edge ]
  %51 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rd_bits, align 8
  %bi_flags7.i = getelementptr %struct.gfs2_bitmap, ptr %52, i32 %x.125.i, i32 2
  tail call void @_set_bit(i32 noundef 1, ptr noundef %bi_flags7.i) #12
  %inc9.i = add nuw i32 %x.125.i, 1
  %53 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rd_length, align 8
  %cmp3.i = icmp ult i32 %inc9.i, %54
  br i1 %cmp3.i, label %for.body4.i.for.body4.i_crit_edge, label %for.body4.i.rgrp_set_bitmap_flags.exit_crit_edge

for.body4.i.rgrp_set_bitmap_flags.exit_crit_edge: ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rgrp_set_bitmap_flags.exit

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4.i

rgrp_set_bitmap_flags.exit:                       ; preds = %for.body4.i.rgrp_set_bitmap_flags.exit_crit_edge, %for.body.i.rgrp_set_bitmap_flags.exit_crit_edge, %for.cond1.preheader.i.rgrp_set_bitmap_flags.exit_crit_edge, %for.cond.preheader.i.rgrp_set_bitmap_flags.exit_crit_edge
  %55 = ptrtoint ptr %rd_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rd_flags.i, align 8
  %or = or i32 %56, 268435456
  store i32 %or, ptr %rd_flags.i, align 8
  %57 = ptrtoint ptr %rd_free.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rd_free.i, align 4
  %rd_free_clone = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 10
  %59 = ptrtoint ptr %rd_free_clone to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %rd_free_clone, align 8
  %rd_reserved = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 9
  %60 = ptrtoint ptr %rd_reserved to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rd_reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool27.not = icmp eq i32 %61, 0
  br i1 %tobool27.not, label %do.end37, label %if.then30, !prof !151

if.then30:                                        ; preds = %rgrp_set_bitmap_flags.exit
  call void @__sanitizer_cov_trace_pc() #14
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 1
  %62 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rd_gl, align 4
  tail call void @gfs2_dump_glock(ptr noundef null, ptr noundef %63, i1 noundef zeroext true) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1233, 0\0A.popsection", ""() #12, !srcloc !162
  unreachable

do.end37:                                         ; preds = %rgrp_set_bitmap_flags.exit
  %rd_extfail_pt = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 18
  %64 = ptrtoint ptr %rd_extfail_pt to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %58, ptr %rd_extfail_pt, align 4
  %rd_rgl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 15
  %65 = ptrtoint ptr %rd_rgl to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rd_rgl, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %68)
  %cmp39.not = icmp eq i32 %68, 18225520
  br i1 %cmp39.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %do.end37
  %69 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rd_length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp49.not.i = icmp eq i32 %70, 0
  br i1 %cmp49.not.i, label %if.then41.count_unlinked.exit_crit_edge, label %for.body.preheader.i

if.then41.count_unlinked.exit_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_unlinked.exit

for.body.preheader.i:                             ; preds = %if.then41
  %71 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rd_bits, align 8
  br label %for.body.i144

for.body.i144:                                    ; preds = %for.inc.i.for.body.i144_crit_edge, %for.body.preheader.i
  %bi.052.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i144_crit_edge ], [ %72, %for.body.preheader.i ]
  %count.051.i = phi i32 [ %count.1.lcssa.i, %for.inc.i.for.body.i144_crit_edge ], [ 0, %for.body.preheader.i ]
  %i.050.i = phi i32 [ %inc28.i, %for.inc.i.for.body.i144_crit_edge ], [ 0, %for.body.preheader.i ]
  %73 = ptrtoint ptr %bi.052.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bi.052.i, align 4
  %b_data.i142 = getelementptr inbounds %struct.buffer_head, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %b_data.i142 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %b_data.i142, align 4
  %bi_offset.i = getelementptr inbounds %struct.gfs2_bitmap, ptr %bi.052.i, i32 0, i32 3
  %77 = ptrtoint ptr %bi_offset.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bi_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %76, i32 %78
  %79 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %74, align 4
  %and1.i.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i143 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i143, label %do.end.i, label %for.body.i144.if.end.i145_crit_edge, !prof !149

for.body.i144.if.end.i145_crit_edge:              ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i145

do.end.i:                                         ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1155, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i145

if.end.i145:                                      ; preds = %do.end.i, %for.body.i144.if.end.i145_crit_edge
  %bi_blocks.i = getelementptr inbounds %struct.gfs2_bitmap, ptr %bi.052.i, i32 0, i32 6
  %81 = ptrtoint ptr %bi_blocks.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bi_blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp2244.not.i = icmp eq i32 %82, 0
  br i1 %cmp2244.not.i, label %if.end.i145.for.inc.i_crit_edge, label %while.body.lr.ph.i

if.end.i145.for.inc.i_crit_edge:                  ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

while.body.lr.ph.i:                               ; preds = %if.end.i145
  %bi_bytes.i = getelementptr inbounds %struct.gfs2_bitmap, ptr %bi.052.i, i32 0, i32 5
  %83 = ptrtoint ptr %bi_bytes.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bi_bytes.i, align 4
  %add.i.i = add i32 %84, 7
  %and1.i.i = and i32 %add.i.i, -8
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i, i32 %and1.i.i
  %and8.i.i = and i32 %84, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool.not.i.i = icmp eq i32 %and8.i.i, 0
  %mul.neg.i.i = mul nsw i32 %and8.i.i, -8
  %sub.i.i = add nsw i32 %mul.neg.i.i, 64
  %sh_prom10.i.i = zext i32 %sub.i.i to i64
  %shr11.i.i = lshr i64 -1, %sh_prom10.i.i
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %and12.i.i = select i1 %tobool.not.i.i, i64 -1, i64 %shr11.i.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end26.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.146.i = phi i32 [ %count.051.i, %while.body.lr.ph.i ], [ %inc.i146, %if.end26.i.while.body.i_crit_edge ]
  %goal.045.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc27.i, %if.end26.i.while.body.i_crit_edge ]
  %shl.i.i = shl i32 %goal.045.i, 1
  %and.i.i = and i32 %shl.i.i, 62
  %shr.i.i = lshr i32 %goal.045.i, 5
  %add.ptr.i.i = getelementptr i64, ptr %add.ptr.i, i32 %shr.i.i
  %sh_prom.i.i = zext i32 %and.i.i to i64
  %shl3.i.i = shl i64 6148914691236517205, %sh_prom.i.i
  %85 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %add.ptr.i.i, align 8
  %87 = xor i64 %86, 6148914691236517205
  %88 = tail call i64 @llvm.bswap.i64(i64 %87) #12
  %shr.i.i.i = lshr i64 %88, 1
  %and.i.i.i = and i64 %shl3.i.i, %88
  %and1.i.i41.i = and i64 %and.i.i.i, %shr.i.i.i
  %ptr.052.i.i = getelementptr i64, ptr %add.ptr.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i41.i)
  %cmp53.i.i = icmp eq i64 %and1.i.i41.i, 0
  %cmp454.i.i = icmp ult ptr %ptr.052.i.i, %add.ptr2.i.i
  %or.cond55.i.i = and i1 %cmp454.i.i, %cmp53.i.i
  br i1 %or.cond55.i.i, label %while.body.i.while.body.i.i_crit_edge, label %while.body.i.while.end.i.i_crit_edge

while.body.i.while.end.i.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.body.i.while.body.i.i_crit_edge:            ; preds = %while.body.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.i.while.body.i.i_crit_edge
  %ptr.056.i.i = phi ptr [ %ptr.0.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %ptr.052.i.i, %while.body.i.while.body.i.i_crit_edge ]
  %89 = ptrtoint ptr %ptr.056.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %ptr.056.i.i, align 8
  %91 = xor i64 %90, 6148914691236517205
  %92 = tail call i64 @llvm.bswap.i64(i64 %91) #12
  %shr.i48.i.i = lshr i64 %92, 1
  %and.i49.i.i = and i64 %92, 6148914691236517205
  %and1.i50.i.i = and i64 %and.i49.i.i, %shr.i48.i.i
  %ptr.0.i.i = getelementptr i64, ptr %ptr.056.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i50.i.i)
  %cmp.i.i = icmp eq i64 %and1.i50.i.i, 0
  %cmp4.i.i = icmp ult ptr %ptr.0.i.i, %add.ptr2.i.i
  %or.cond.i.i = and i1 %cmp4.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %while.body.i.while.end.i.i_crit_edge
  %add.ptr.pn.lcssa.i.i = phi ptr [ %add.ptr.i.i, %while.body.i.while.end.i.i_crit_edge ], [ %ptr.056.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %tmp.0.lcssa.i.i = phi i64 [ %and1.i.i41.i, %while.body.i.while.end.i.i_crit_edge ], [ %and1.i50.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %ptr.0.lcssa.i.i = phi ptr [ %ptr.052.i.i, %while.body.i.while.end.i.i_crit_edge ], [ %ptr.0.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %cmp7.i.i = icmp eq ptr %ptr.0.lcssa.i.i, %add.ptr2.i.i
  %spec.select.i = select i1 %cmp7.i.i, i64 %and12.i.i, i64 -1
  %tmp.1.i.i = and i64 %spec.select.i, %tmp.0.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tmp.1.i.i)
  %cmp13.i.i = icmp eq i64 %tmp.1.i.i, 0
  br i1 %cmp13.i.i, label %while.end.i.i.for.inc.i_crit_edge, label %if.end15.i.i

while.end.i.i.for.inc.i_crit_edge:                ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end15.i.i:                                     ; preds = %while.end.i.i
  %conv.i.i.i = trunc i64 %tmp.1.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %cmp.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i51.i.i = lshr i64 %tmp.1.i.i, 32
  %conv2.i.i.i = trunc i64 %shr.i51.i.i to i32
  %93 = tail call i32 @llvm.cttz.i32(i32 %conv2.i.i.i, i1 false) #12, !range !163
  %add.i.i.i = add nuw nsw i32 %93, 32
  br label %gfs2_bitfit.exit.i

if.end.i.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = tail call i32 @llvm.cttz.i32(i32 %conv.i.i.i, i1 true) #12, !range !163
  br label %gfs2_bitfit.exit.i

gfs2_bitfit.exit.i:                               ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %94, %if.end.i.i.i ]
  %div44.i.i = lshr i32 %retval.0.i.i.i, 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.pn.lcssa.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %mul18.i.i = shl i32 %sub.ptr.sub.i.i, 2
  %add19.i.i = add i32 %div44.i.i, %mul18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add19.i.i)
  %cmp24.i = icmp eq i32 %add19.i.i, -1
  br i1 %cmp24.i, label %gfs2_bitfit.exit.i.for.inc.i_crit_edge, label %if.end26.i

gfs2_bitfit.exit.i.for.inc.i_crit_edge:           ; preds = %gfs2_bitfit.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end26.i:                                       ; preds = %gfs2_bitfit.exit.i
  %inc.i146 = add i32 %count.146.i, 1
  %inc27.i = add nuw i32 %add19.i.i, 1
  %cmp22.i = icmp ult i32 %inc27.i, %82
  br i1 %cmp22.i, label %if.end26.i.while.body.i_crit_edge, label %if.end26.i.for.inc.i_crit_edge

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end26.i.while.body.i_crit_edge:                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

for.inc.i:                                        ; preds = %if.end26.i.for.inc.i_crit_edge, %gfs2_bitfit.exit.i.for.inc.i_crit_edge, %while.end.i.i.for.inc.i_crit_edge, %if.end.i145.for.inc.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.051.i, %if.end.i145.for.inc.i_crit_edge ], [ %count.146.i, %gfs2_bitfit.exit.i.for.inc.i_crit_edge ], [ %inc.i146, %if.end26.i.for.inc.i_crit_edge ], [ %count.146.i, %while.end.i.i.for.inc.i_crit_edge ]
  %inc28.i = add nuw i32 %i.050.i, 1
  %incdec.ptr.i = getelementptr %struct.gfs2_bitmap, ptr %bi.052.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc28.i, %70
  br i1 %exitcond.not.i, label %for.inc.i.count_unlinked.exit_crit_edge, label %for.inc.i.for.body.i144_crit_edge

for.inc.i.for.body.i144_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i144

for.inc.i.count_unlinked.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %count_unlinked.exit

count_unlinked.exit:                              ; preds = %for.inc.i.count_unlinked.exit_crit_edge, %if.then41.count_unlinked.exit_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %if.then41.count_unlinked.exit_crit_edge ], [ %count.1.lcssa.i, %for.inc.i.count_unlinked.exit_crit_edge ]
  %95 = ptrtoint ptr %rd_rgl to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rd_rgl, align 8
  %rl_unlinked = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %rl_unlinked to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %count.0.lcssa.i, ptr %rl_unlinked, align 8
  %98 = load ptr, ptr %rd_rgl, align 8
  %99 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rd_bits, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %b_data48 = getelementptr inbounds %struct.buffer_head, ptr %102, i32 0, i32 5
  %103 = ptrtoint ptr %b_data48 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %b_data48, align 4
  %105 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 18225520, ptr %98, align 8
  %rg_flags.i = getelementptr inbounds %struct.gfs2_rgrp, ptr %104, i32 0, i32 1
  %106 = ptrtoint ptr %rg_flags.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rg_flags.i, align 8
  %rl_flags.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %98, i32 0, i32 1
  %108 = ptrtoint ptr %rl_flags.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %rl_flags.i, align 4
  %rg_free.i147 = getelementptr inbounds %struct.gfs2_rgrp, ptr %104, i32 0, i32 2
  %109 = ptrtoint ptr %rg_free.i147 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rg_free.i147, align 4
  %rl_free.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %98, i32 0, i32 2
  %111 = ptrtoint ptr %rl_free.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %rl_free.i, align 8
  %rg_dinodes.i148 = getelementptr inbounds %struct.gfs2_rgrp, ptr %104, i32 0, i32 3
  %112 = ptrtoint ptr %rg_dinodes.i148 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rg_dinodes.i148, align 8
  %rl_dinodes.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %98, i32 0, i32 3
  %114 = ptrtoint ptr %rl_dinodes.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %rl_dinodes.i, align 4
  %rg_igeneration.i149 = getelementptr inbounds %struct.gfs2_rgrp, ptr %104, i32 0, i32 5
  %115 = ptrtoint ptr %rg_igeneration.i149 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %rg_igeneration.i149, align 8
  %rl_igeneration.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %98, i32 0, i32 4
  %117 = ptrtoint ptr %rl_igeneration.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %rl_igeneration.i, align 8
  %__pad.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %98, i32 0, i32 6
  %118 = ptrtoint ptr %__pad.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %__pad.i, align 4
  br label %cleanup

if.else:                                          ; preds = %do.end37
  %ar_rgrplvb = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 21, i32 3
  %119 = ptrtoint ptr %ar_rgrplvb to i32
  call void @__asan_load4_noabort(i32 %119)
  %bf.load = load i32, ptr %ar_rgrplvb, align 4
  %120 = and i32 %bf.load, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool49.not = icmp eq i32 %120, 0
  br i1 %tobool49.not, label %if.else.cleanup_crit_edge, label %if.then50

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then50:                                        ; preds = %if.else
  %call51 = tail call fastcc i32 @gfs2_rgrp_lvb_valid(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_consist_rgrpd_i(ptr noundef %3, ptr noundef nonnull @__func__.gfs2_rgrp_go_instantiate, ptr noundef nonnull @.str.1, i32 noundef 1242) #12
  br label %fail

if.end54:                                         ; preds = %if.then50
  %121 = ptrtoint ptr %rd_rgl to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rd_rgl, align 8
  %rl_unlinked56 = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %rl_unlinked56 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rl_unlinked56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp57 = icmp eq i32 %124, 0
  br i1 %cmp57, label %if.then59, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %rd_flags.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rd_flags.i, align 8
  %and = and i32 %126, -268435457
  store i32 %and, ptr %rd_flags.i, align 8
  br label %cleanup

fail:                                             ; preds = %if.then53, %gfs2_metatype_check_i.exit.fail_crit_edge, %for.body8.fail_crit_edge, %for.body.fail_crit_edge
  %x.0156 = phi i32 [ %7, %if.then53 ], [ %7, %for.body8.fail_crit_edge ], [ %7, %gfs2_metatype_check_i.exit.fail_crit_edge ], [ %x.0158, %for.body.fail_crit_edge ]
  %error.0 = phi i32 [ -5, %if.then53 ], [ -5, %gfs2_metatype_check_i.exit.fail_crit_edge ], [ %call12, %for.body8.fail_crit_edge ], [ %call, %for.body.fail_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.0156)
  %tobool65.not160 = icmp eq i32 %x.0156, 0
  br i1 %tobool65.not160, label %fail.cleanup_crit_edge, label %fail.while.body_crit_edge

fail.while.body_crit_edge:                        ; preds = %fail
  br label %while.body

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %if.end83.while.body_crit_edge, %fail.while.body_crit_edge
  %dec64161.in = phi i32 [ %dec64161, %if.end83.while.body_crit_edge ], [ %x.0156, %fail.while.body_crit_edge ]
  %dec64161 = add i32 %dec64161.in, -1
  %127 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rd_bits, align 8
  %add.ptr67 = getelementptr %struct.gfs2_bitmap, ptr %128, i32 %dec64161
  %129 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr67, align 4
  %tobool.not.i150 = icmp eq ptr %130, null
  br i1 %tobool.not.i150, label %while.body.brelse.exit_crit_edge, label %if.then.i151

while.body.brelse.exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %brelse.exit

if.then.i151:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__brelse(ptr noundef nonnull %130) #12
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i151, %while.body.brelse.exit_crit_edge
  %131 = ptrtoint ptr %add.ptr67 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %add.ptr67, align 4
  %bi_clone = getelementptr %struct.gfs2_bitmap, ptr %128, i32 %dec64161, i32 1
  %132 = ptrtoint ptr %bi_clone to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %bi_clone, align 4
  %tobool70.not = icmp eq ptr %133, null
  br i1 %tobool70.not, label %brelse.exit.if.end83_crit_edge, label %if.then82, !prof !151

brelse.exit.if.end83_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then82:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.gfs2_rgrp_go_instantiate, ptr noundef nonnull @.str.1, i32 noundef 1256) #12
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %brelse.exit.if.end83_crit_edge
  %tobool65.not = icmp eq i32 %dec64161, 0
  br i1 %tobool65.not, label %if.end83.cleanup_crit_edge, label %if.end83.while.body_crit_edge

if.end83.while.body_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end83.cleanup_crit_edge, %fail.cleanup_crit_edge, %if.then59, %if.end54.cleanup_crit_edge, %if.else.cleanup_crit_edge, %count_unlinked.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %if.end54.cleanup_crit_edge ], [ 0, %count_unlinked.exit ], [ %error.0, %fail.cleanup_crit_edge ], [ %error.0, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_read(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dump_glock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_rgrp_lvb_valid(ptr nocapture noundef readonly %rgd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_rgl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 15
  %0 = ptrtoint ptr %rd_rgl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_rgl, align 8
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 13
  %2 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_bits, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %rd_sbd = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 14
  %8 = ptrtoint ptr %rd_sbd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd_sbd, align 4
  %rl_flags = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %rl_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rl_flags, align 4
  %rg_flags = getelementptr inbounds %struct.gfs2_rgrp, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %rg_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rg_flags, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp eq i32 %11, %13
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %9, i32 0, i32 110
  %rd_addr = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 2
  %14 = ptrtoint ptr %rd_addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rd_addr, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %sd_fsname, i64 noundef %15, i32 noundef %11, i32 noundef %13) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %valid.0 = phi i32 [ 0, %do.end ], [ 1, %entry.if.end_crit_edge ]
  %rl_free = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %rl_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rl_free, align 8
  %rg_free = getelementptr inbounds %struct.gfs2_rgrp, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %rg_free to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rg_free, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp3.not = icmp eq i32 %17, %19
  br i1 %cmp3.not, label %if.end.if.end15_crit_edge, label %do.end7

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname9 = getelementptr inbounds %struct.gfs2_sbd, ptr %9, i32 0, i32 110
  %rd_addr11 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 2
  %20 = ptrtoint ptr %rd_addr11 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rd_addr11, align 8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %sd_fsname9, i64 noundef %21, i32 noundef %17, i32 noundef %19) #16
  br label %if.end15

if.end15:                                         ; preds = %do.end7, %if.end.if.end15_crit_edge
  %valid.1 = phi i32 [ 0, %do.end7 ], [ %valid.0, %if.end.if.end15_crit_edge ]
  %rl_dinodes = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %rl_dinodes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rl_dinodes, align 4
  %rg_dinodes = getelementptr inbounds %struct.gfs2_rgrp, ptr %7, i32 0, i32 3
  %24 = ptrtoint ptr %rg_dinodes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rg_dinodes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp16.not = icmp eq i32 %23, %25
  br i1 %cmp16.not, label %if.end15.if.end28_crit_edge, label %do.end20

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname22 = getelementptr inbounds %struct.gfs2_sbd, ptr %9, i32 0, i32 110
  %rd_addr24 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 2
  %26 = ptrtoint ptr %rd_addr24 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rd_addr24, align 8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %sd_fsname22, i64 noundef %27, i32 noundef %23, i32 noundef %25) #16
  br label %if.end28

if.end28:                                         ; preds = %do.end20, %if.end15.if.end28_crit_edge
  %valid.2 = phi i32 [ 0, %do.end20 ], [ %valid.1, %if.end15.if.end28_crit_edge ]
  %rl_igeneration = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %rl_igeneration to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rl_igeneration, align 8
  %rg_igeneration = getelementptr inbounds %struct.gfs2_rgrp, ptr %7, i32 0, i32 5
  %30 = ptrtoint ptr %rg_igeneration to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rg_igeneration, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp29.not = icmp eq i64 %29, %31
  br i1 %cmp29.not, label %if.end28.if.end41_crit_edge, label %do.end33

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.end33:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname35 = getelementptr inbounds %struct.gfs2_sbd, ptr %9, i32 0, i32 110
  %rd_addr37 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 2
  %32 = ptrtoint ptr %rd_addr37 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rd_addr37, align 8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %sd_fsname35, i64 noundef %33, i64 noundef %29, i64 noundef %31) #16
  br label %if.end41

if.end41:                                         ; preds = %do.end33, %if.end28.if.end41_crit_edge
  %valid.3 = phi i32 [ 0, %do.end33 ], [ %valid.2, %if.end28.if.end41_crit_edge ]
  ret i32 %valid.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_warn_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_rgrp_send_discards(ptr noundef %sdp, i64 noundef %offset, ptr noundef readonly %bh, ptr nocapture noundef readonly %bi, i32 noundef %minlen, ptr noundef writeonly %ptrimmed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdp, align 8
  %bi_bytes = getelementptr inbounds %struct.gfs2_bitmap, ptr %bi, i32 0, i32 5
  %2 = ptrtoint ptr %bi_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp172.not = icmp eq i32 %3, 0
  br i1 %cmp172.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = zext i32 %minlen to i64
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bi_clone = getelementptr inbounds %struct.gfs2_bitmap, ptr %bi, i32 0, i32 1
  %bi_offset = getelementptr inbounds %struct.gfs2_bitmap, ptr %bi, i32 0, i32 3
  %tobool3.not = icmp eq ptr %bh, null
  %b_data4 = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %bi_start = getelementptr inbounds %struct.gfs2_bitmap, ptr %bi, i32 0, i32 4
  %conv43 = zext i32 %minlen to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %trimmed.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %trimmed.6.ph, %for.inc.for.body_crit_edge ]
  %x.0176 = phi i32 [ 0, %for.body.lr.ph ], [ %inc60, %for.inc.for.body_crit_edge ]
  %nr_blks.0174 = phi i64 [ 0, %for.body.lr.ph ], [ %nr_blks.5.ph, %for.inc.for.body_crit_edge ]
  %start.0173 = phi i64 [ 0, %for.body.lr.ph ], [ %start.4.ph, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %bi_clone to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_clone, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %cond.false, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %bi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %b_data, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.false ], [ %5, %for.body.cond.end_crit_edge ]
  %10 = ptrtoint ptr %bi_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_offset, align 4
  %add.ptr = getelementptr i8, ptr %cond, i32 %11
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %x.0176
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %b_data4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data4, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 %11
  %add.ptr7 = getelementptr i8, ptr %add.ptr6, i32 %x.0176
  %14 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr7, align 1
  %16 = lshr i8 %15, 1
  %or = or i8 %16, %15
  %neg = xor i8 %or, -1
  %17 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr2, align 1
  %19 = lshr i8 %18, 1
  %or12 = or i8 %19, %18
  %and = and i8 %or12, %neg
  br label %if.end

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr2, align 1
  %22 = lshr i8 %21, 1
  %or17 = or i8 %22, %21
  %neg18 = xor i8 %or17, -1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %diff.0 = phi i8 [ %and, %if.then ], [ %neg18, %if.else ]
  %23 = and i8 %diff.0, 85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp24 = icmp eq i8 %23, 0
  br i1 %cmp24, label %if.end.for.inc_crit_edge, label %if.end27

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end27:                                         ; preds = %if.end
  %24 = ptrtoint ptr %bi_start to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_start, align 4
  %add = add i32 %25, %x.0176
  %mul = shl i32 %add, 2
  %conv28 = zext i32 %mul to i64
  %add29 = add i64 %conv28, %offset
  br label %while.body

while.body:                                       ; preds = %if.end55.while.body_crit_edge, %if.end27
  %diff.1168 = phi i8 [ %23, %if.end27 ], [ %32, %if.end55.while.body_crit_edge ]
  %trimmed.1167 = phi i32 [ %trimmed.0178, %if.end27 ], [ %trimmed.5, %if.end55.while.body_crit_edge ]
  %nr_blks.1165 = phi i64 [ %nr_blks.0174, %if.end27 ], [ %nr_blks.4, %if.end55.while.body_crit_edge ]
  %start.1164 = phi i64 [ %start.0173, %if.end27 ], [ %start.3, %if.end55.while.body_crit_edge ]
  %blk.0161 = phi i64 [ %add29, %if.end27 ], [ %inc59, %if.end55.while.body_crit_edge ]
  %26 = and i8 %diff.1168, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool33.not = icmp eq i8 %26, 0
  br i1 %tobool33.not, label %while.body.if.end55_crit_edge, label %if.then34

while.body.if.end55_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nr_blks.1165)
  %cmp35 = icmp eq i64 %nr_blks.1165, 0
  br i1 %cmp35, label %if.then34.if.end54_crit_edge, label %if.end38

if.then34.if.end54_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.end38:                                         ; preds = %if.then34
  %add39 = add i64 %nr_blks.1165, %start.1164
  call void @__sanitizer_cov_trace_cmp8(i64 %add39, i64 %blk.0161)
  %cmp40.not = icmp eq i64 %add39, %blk.0161
  br i1 %cmp40.not, label %if.end38.if.end54_crit_edge, label %if.then42

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_cmp8(i64 %nr_blks.1165, i64 %conv43)
  %cmp44.not = icmp ult i64 %nr_blks.1165, %conv43
  br i1 %cmp44.not, label %if.then42.if.end54_crit_edge, label %if.then46

if.then42.if.end54_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then46:                                        ; preds = %if.then42
  %27 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_bdev.i, align 4
  %29 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %s_blocksize_bits.i, align 4
  %conv.i = zext i8 %30 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl i64 %start.1164, %sh_prom.i
  %shl5.i = shl i64 %nr_blks.1165, %sh_prom.i
  %call.i = tail call i32 @blkdev_issue_discard(ptr noundef %28, i64 noundef %shl.i, i64 noundef %shl5.i, i32 noundef 3136, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool47.not = icmp eq i32 %call.i, 0
  br i1 %tobool47.not, label %if.end49, label %if.then46.fail_crit_edge

if.then46.fail_crit_edge:                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end49:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %31 = trunc i64 %nr_blks.1165 to i32
  %conv52 = add i32 %trimmed.1167, %31
  br label %if.end54

if.end54:                                         ; preds = %if.end49, %if.then42.if.end54_crit_edge, %if.end38.if.end54_crit_edge, %if.then34.if.end54_crit_edge
  %start.2 = phi i64 [ %start.1164, %if.end38.if.end54_crit_edge ], [ %blk.0161, %if.then42.if.end54_crit_edge ], [ %blk.0161, %if.end49 ], [ %blk.0161, %if.then34.if.end54_crit_edge ]
  %nr_blks.3 = phi i64 [ %nr_blks.1165, %if.end38.if.end54_crit_edge ], [ 0, %if.then42.if.end54_crit_edge ], [ 0, %if.end49 ], [ 0, %if.then34.if.end54_crit_edge ]
  %trimmed.4 = phi i32 [ %trimmed.1167, %if.end38.if.end54_crit_edge ], [ %trimmed.1167, %if.then42.if.end54_crit_edge ], [ %conv52, %if.end49 ], [ %trimmed.1167, %if.then34.if.end54_crit_edge ]
  %inc = add i64 %nr_blks.3, 1
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %while.body.if.end55_crit_edge
  %start.3 = phi i64 [ %start.2, %if.end54 ], [ %start.1164, %while.body.if.end55_crit_edge ]
  %nr_blks.4 = phi i64 [ %inc, %if.end54 ], [ %nr_blks.1165, %while.body.if.end55_crit_edge ]
  %trimmed.5 = phi i32 [ %trimmed.4, %if.end54 ], [ %trimmed.1167, %while.body.if.end55_crit_edge ]
  %32 = lshr i8 %diff.1168, 2
  %inc59 = add i64 %blk.0161, 1
  %tobool30.not = icmp ult i8 %diff.1168, 4
  br i1 %tobool30.not, label %if.end55.for.inc_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end55.for.inc_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %if.end55.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %start.4.ph = phi i64 [ %start.0173, %if.end.for.inc_crit_edge ], [ %start.3, %if.end55.for.inc_crit_edge ]
  %nr_blks.5.ph = phi i64 [ %nr_blks.0174, %if.end.for.inc_crit_edge ], [ %nr_blks.4, %if.end55.for.inc_crit_edge ]
  %trimmed.6.ph = phi i32 [ %trimmed.0178, %if.end.for.inc_crit_edge ], [ %trimmed.5, %if.end55.for.inc_crit_edge ]
  %inc60 = add nuw i32 %x.0176, 1
  %33 = ptrtoint ptr %bi_bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bi_bytes, align 4
  %cmp = icmp ult i32 %inc60, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %conv61.pre-phi = phi i64 [ %.pre, %entry.for.end_crit_edge ], [ %conv43, %for.inc.for.end_crit_edge ]
  %start.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %start.4.ph, %for.inc.for.end_crit_edge ]
  %nr_blks.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %nr_blks.5.ph, %for.inc.for.end_crit_edge ]
  %trimmed.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %trimmed.6.ph, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %nr_blks.0.lcssa, i64 %conv61.pre-phi)
  %cmp62.not = icmp ult i64 %nr_blks.0.lcssa, %conv61.pre-phi
  br i1 %cmp62.not, label %for.end.if.end72_crit_edge, label %if.then64

for.end.if.end72_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then64:                                        ; preds = %for.end
  %s_bdev.i136 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 26
  %35 = ptrtoint ptr %s_bdev.i136 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_bdev.i136, align 4
  %s_blocksize_bits.i137 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %s_blocksize_bits.i137 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %s_blocksize_bits.i137, align 4
  %conv.i138 = zext i8 %38 to i32
  %sub.i139 = add nsw i32 %conv.i138, -9
  %sh_prom.i140 = zext i32 %sub.i139 to i64
  %shl.i141 = shl i64 %start.0.lcssa, %sh_prom.i140
  %shl5.i142 = shl i64 %nr_blks.0.lcssa, %sh_prom.i140
  %call.i143 = tail call i32 @blkdev_issue_discard(ptr noundef %36, i64 noundef %shl.i141, i64 noundef %shl5.i142, i32 noundef 3136, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool66.not = icmp eq i32 %call.i143, 0
  br i1 %tobool66.not, label %if.end68, label %if.then64.fail_crit_edge

if.then64.fail_crit_edge:                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end68:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  %39 = trunc i64 %nr_blks.0.lcssa to i32
  %conv71 = add i32 %trimmed.0.lcssa, %39
  br label %if.end72

if.end72:                                         ; preds = %if.end68, %for.end.if.end72_crit_edge
  %trimmed.7 = phi i32 [ %conv71, %if.end68 ], [ %trimmed.0.lcssa, %for.end.if.end72_crit_edge ]
  %tobool73.not = icmp eq ptr %ptrimmed, null
  br i1 %tobool73.not, label %if.end72.cleanup85_crit_edge, label %if.then74

if.end72.cleanup85_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup85

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %conv75 = zext i32 %trimmed.7 to i64
  %40 = ptrtoint ptr %ptrimmed to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv75, ptr %ptrimmed, align 8
  br label %cleanup85

fail:                                             ; preds = %if.then64.fail_crit_edge, %if.then46.fail_crit_edge
  %rv.7 = phi i32 [ %call.i143, %if.then64.fail_crit_edge ], [ %call.i, %if.then46.fail_crit_edge ]
  %ar_discard = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 21, i32 3
  %41 = ptrtoint ptr %ar_discard to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load = load i32, ptr %ar_discard, align 4
  %42 = and i32 %bf.load, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool77.not = icmp eq i32 %42, 0
  br i1 %tobool77.not, label %fail.if.end80_crit_edge, label %do.end

fail.if.end80_crit_edge:                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

do.end:                                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 110
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %sd_fsname, i32 noundef %rv.7) #16
  br label %if.end80

if.end80:                                         ; preds = %do.end, %fail.if.end80_crit_edge
  %43 = ptrtoint ptr %ar_discard to i32
  call void @__asan_load4_noabort(i32 %43)
  %bf.load83 = load i32, ptr %ar_discard, align 4
  %bf.clear84 = and i32 %bf.load83, -2097153
  store i32 %bf.clear84, ptr %ar_discard, align 4
  br label %cleanup85

cleanup85:                                        ; preds = %if.end80, %if.then74, %if.end72.cleanup85_crit_edge
  %retval.0 = phi i32 [ -5, %if.end80 ], [ 0, %if.then74 ], [ 0, %if.end72.cleanup85_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_fitrim(ptr nocapture noundef readonly %filp, ptr noundef %argp) local_unnamed_addr #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  %r = alloca %struct.fstrim_range, align 8
  %amt = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_queue.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #12
  %12 = call ptr @memset(ptr %gh, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %r) #12
  %13 = getelementptr inbounds %struct.fstrim_range, ptr %r, i32 0, i32 1
  %14 = getelementptr inbounds %struct.fstrim_range, ptr %r, i32 0, i32 2
  %15 = call ptr @memset(ptr %r, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %amt) #12
  %16 = ptrtoint ptr %amt to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %amt, align 8, !annotation !164
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 5
  %17 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_bsize_shift, align 4
  %call3 = tail call zeroext i1 @capable(i32 noundef 21) #12
  br i1 %call3, label %if.end, label %entry.cleanup80_crit_edge

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.end:                                           ; preds = %entry
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 4
  %19 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %sd_flags, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end.cleanup80_crit_edge, label %if.end6

if.end.cleanup80_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.end6:                                          ; preds = %if.end
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 11
  %22 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %queue_flags, align 4
  %24 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not = icmp eq i32 %24, 0
  br i1 %tobool8.not, label %if.end6.cleanup80_crit_edge, label %if.then.i

if.end6.cleanup80_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.then.i:                                        ; preds = %if.end6
  tail call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %argp, i32 24, i32 -1226833920) #17
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !151

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %r, i32 noundef 24) #12
  %26 = call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !165
  %and.i.i.i.i = and i32 %28, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %r, ptr noundef %argp, i32 noundef 24) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #12, !srcloc !166
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end14, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !151

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.then.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %r, i32 %sub.i.i
  %29 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup80

if.end14:                                         ; preds = %if.end.i.i
  %call15 = call i32 @gfs2_rindex_update(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup80_crit_edge

if.end14.cleanup80_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.end18:                                         ; preds = %if.end14
  %30 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %r, align 8
  %sh_prom = zext i32 %18 to i64
  %shr = lshr i64 %31, %sh_prom
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %13, align 8
  %shr21 = lshr i64 %33, %sh_prom
  %add = add i64 %shr21, %shr
  %34 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %14, align 8
  %discard_granularity = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37, i32 18
  %36 = ptrtoint ptr %discard_granularity to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %discard_granularity, align 4
  %conv = zext i32 %37 to i64
  %38 = call i64 @llvm.umax.i64(i64 %35, i64 %conv)
  %shr25 = lshr i64 %38, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shr)
  %cmp26.not = icmp ugt i64 %add, %shr
  br i1 %cmp26.not, label %lor.lhs.false, label %if.end18.cleanup80_crit_edge

if.end18.cleanup80_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

lor.lhs.false:                                    ; preds = %if.end18
  %sd_max_rg_data = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 51
  %39 = ptrtoint ptr %sd_max_rg_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sd_max_rg_data, align 4
  %conv28 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr25, i64 %conv28)
  %cmp29 = icmp ugt i64 %shr25, %conv28
  br i1 %cmp29, label %lor.lhs.false.cleanup80_crit_edge, label %if.end32

lor.lhs.false.cleanup80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.end32:                                         ; preds = %lor.lhs.false
  %call33 = call ptr @gfs2_blk2rgrpd(ptr noundef %5, i64 noundef %shr, i1 noundef zeroext false)
  %call34 = call ptr @gfs2_blk2rgrpd(ptr noundef %5, i64 noundef %add, i1 noundef zeroext false)
  %call35 = call ptr @gfs2_rgrpd_get_first(ptr noundef %5)
  %call36 = call ptr @gfs2_rgrpd_get_next(ptr noundef %call34)
  %cmp37 = icmp eq ptr %call35, %call36
  br i1 %cmp37, label %land.lhs.true, label %if.end32.if.end44_crit_edge

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true:                                    ; preds = %if.end32
  %rd_data0 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call34, i32 0, i32 3
  %41 = ptrtoint ptr %rd_data0 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rd_data0, align 8
  %rd_data = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call34, i32 0, i32 5
  %43 = ptrtoint ptr %rd_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rd_data, align 4
  %conv39 = zext i32 %44 to i64
  %add40 = add i64 %42, %conv39
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %add40)
  %cmp41 = icmp ugt i64 %shr, %add40
  br i1 %cmp41, label %land.lhs.true.cleanup80_crit_edge, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

land.lhs.true.cleanup80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

if.end44:                                         ; preds = %land.lhs.true.if.end44_crit_edge, %if.end32.if.end44_crit_edge
  %rd_gl171 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call33, i32 0, i32 1
  %45 = ptrtoint ptr %rd_gl171 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rd_gl171, align 4
  %call45172 = call fastcc i32 @gfs2_glock_nq_init(ptr noundef %46, i32 noundef 1, i16 noundef zeroext 32, ptr noundef nonnull %gh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45172)
  %tobool46.not173 = icmp eq i32 %call45172, 0
  br i1 %tobool46.not173, label %if.end48.lr.ph, label %if.end44.out_crit_edge

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end48.lr.ph:                                   ; preds = %if.end44
  %conv54 = trunc i64 %shr25 to i32
  br label %if.end48

if.end48:                                         ; preds = %if.end72.if.end48_crit_edge, %if.end48.lr.ph
  %rd_gl177 = phi ptr [ %rd_gl171, %if.end48.lr.ph ], [ %rd_gl, %if.end72.if.end48_crit_edge ]
  %trimmed.0176 = phi i64 [ 0, %if.end48.lr.ph ], [ %trimmed.3, %if.end72.if.end48_crit_edge ]
  %rgd.0174 = phi ptr [ %call33, %if.end48.lr.ph ], [ %call73, %if.end72.if.end48_crit_edge ]
  %rd_flags = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.0174, i32 0, i32 17
  %47 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rd_flags, align 8
  %and = and i32 %48, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %for.cond.preheader, label %if.end48.if.end68_crit_edge

if.end48.if.end68_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

for.cond.preheader:                               ; preds = %if.end48
  %rd_length = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.0174, i32 0, i32 4
  %49 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rd_length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp51168.not = icmp eq i32 %50, 0
  br i1 %cmp51168.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.0174, i32 0, i32 13
  %rd_mutex.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.0174, i32 0, i32 20
  %rd_data053 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.0174, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %x.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %trimmed.1169 = phi i64 [ %trimmed.0176, %for.body.lr.ph ], [ %add59, %for.inc.for.body_crit_edge ]
  %51 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rd_bits, align 8
  %add.ptr = getelementptr %struct.gfs2_bitmap, ptr %52, i32 %x.0170
  call void @mutex_lock_nested(ptr noundef %rd_mutex.i, i32 noundef 0) #12
  %53 = ptrtoint ptr %rd_data053 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rd_data053, align 8
  %call55 = call i32 @gfs2_rgrp_send_discards(ptr noundef %5, i64 noundef %54, ptr noundef null, ptr noundef %add.ptr, i32 noundef %conv54, ptr noundef nonnull %amt)
  call void @mutex_unlock(ptr noundef %rd_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #12
  br label %out

for.inc:                                          ; preds = %for.body
  %55 = ptrtoint ptr %amt to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %amt, align 8
  %add59 = add i64 %56, %trimmed.1169
  %inc = add nuw i32 %x.0170, 1
  %57 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rd_length, align 8
  %cmp51 = icmp ult i32 %inc, %58
  br i1 %cmp51, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %trimmed.1.lcssa = phi i64 [ %trimmed.0176, %for.cond.preheader.for.end_crit_edge ], [ %add59, %for.inc.for.end_crit_edge ]
  %call60 = call i32 @gfs2_trans_begin(ptr noundef %5, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %for.end.if.end68_crit_edge

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then63:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %rd_bits64 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.0174, i32 0, i32 13
  %59 = ptrtoint ptr %rd_bits64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rd_bits64, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %rd_mutex.i157 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd.0174, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %rd_mutex.i157, i32 noundef 0) #12
  %63 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rd_flags, align 8
  %or = or i32 %64, 16
  store i32 %or, ptr %rd_flags, align 8
  %65 = ptrtoint ptr %rd_gl177 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rd_gl177, align 4
  call void @gfs2_trans_add_meta(ptr noundef %66, ptr noundef %62) #12
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %62, i32 0, i32 5
  %67 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %b_data, align 4
  call fastcc void @gfs2_rgrp_out(ptr noundef %rgd.0174, ptr noundef %68)
  call void @mutex_unlock(ptr noundef %rd_mutex.i157) #12
  call void @gfs2_trans_end(ptr noundef %5) #12
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %for.end.if.end68_crit_edge, %if.end48.if.end68_crit_edge
  %ret.0 = phi i32 [ 0, %if.end48.if.end68_crit_edge ], [ 0, %if.then63 ], [ %call60, %for.end.if.end68_crit_edge ]
  %trimmed.3 = phi i64 [ %trimmed.0176, %if.end48.if.end68_crit_edge ], [ %trimmed.1.lcssa, %if.then63 ], [ %trimmed.1.lcssa, %for.end.if.end68_crit_edge ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #12
  %cmp69 = icmp eq ptr %rgd.0174, %call34
  br i1 %cmp69, label %if.end68.out_crit_edge, label %if.end72

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end72:                                         ; preds = %if.end68
  %call73 = call ptr @gfs2_rgrpd_get_next(ptr noundef %rgd.0174)
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call73, i32 0, i32 1
  %69 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rd_gl, align 4
  %call45 = call fastcc i32 @gfs2_glock_nq_init(ptr noundef %70, i32 noundef 1, i16 noundef zeroext 32, ptr noundef nonnull %gh)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end72.if.end48_crit_edge, label %if.end72.out_crit_edge

if.end72.out_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end72.if.end48_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

out:                                              ; preds = %if.end72.out_crit_edge, %if.end68.out_crit_edge, %cleanup, %if.end44.out_crit_edge
  %ret.1 = phi i32 [ %call55, %cleanup ], [ %call45172, %if.end44.out_crit_edge ], [ %call45, %if.end72.out_crit_edge ], [ %ret.0, %if.end68.out_crit_edge ]
  %trimmed.4 = phi i64 [ %trimmed.1169, %cleanup ], [ 0, %if.end44.out_crit_edge ], [ %trimmed.3, %if.end68.out_crit_edge ], [ %trimmed.3, %if.end72.out_crit_edge ]
  %shl = shl i64 %trimmed.4, %sh_prom
  %71 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %shl, ptr %13, align 8
  call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 174) #12
  %call.i.i149 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i149, label %out.cleanup80_crit_edge, label %copy_to_user.exit

out.cleanup80_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup80

copy_to_user.exit:                                ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i154 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %r, i32 noundef 24) #12
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %argp, ptr noundef nonnull %r, i32 noundef 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool77.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool77.not, i32 %ret.1, i32 -14
  br label %cleanup80

cleanup80:                                        ; preds = %copy_to_user.exit, %out.cleanup80_crit_edge, %land.lhs.true.cleanup80_crit_edge, %lor.lhs.false.cleanup80_crit_edge, %if.end18.cleanup80_crit_edge, %if.end14.cleanup80_crit_edge, %if.then11.i.i, %if.end6.cleanup80_crit_edge, %if.end.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup80_crit_edge ], [ -30, %if.end.cleanup80_crit_edge ], [ -95, %if.end6.cleanup80_crit_edge ], [ %call15, %if.end14.cleanup80_crit_edge ], [ -22, %lor.lhs.false.cleanup80_crit_edge ], [ -22, %if.end18.cleanup80_crit_edge ], [ -22, %land.lhs.true.cleanup80_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %out.cleanup80_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %amt) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %r) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rgrp_lock_local(ptr noundef %rgd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_mutex = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rd_mutex, i32 noundef 0) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rgrp_unlock_local(ptr noundef %rgd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_mutex = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 20
  tail call void @mutex_unlock(ptr noundef %rd_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_trans_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_rgrp_out(ptr noundef %rgd, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_sbd.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 14
  %0 = ptrtoint ptr %rd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_sbd.i, align 4
  %sd_rindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i) #12
  %call.i = tail call ptr @rb_next(ptr noundef %rgd) #12
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i, label %entry.gfs2_rgrpd_get_next.exit_crit_edge

entry.gfs2_rgrpd_get_next.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_rgrpd_get_next.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sd_rindex_tree.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 49
  %call1.i = tail call ptr @rb_first(ptr noundef %sd_rindex_tree.i) #12
  br label %gfs2_rgrpd_get_next.exit

gfs2_rgrpd_get_next.exit:                         ; preds = %if.then.i, %entry.gfs2_rgrpd_get_next.exit_crit_edge
  %n.0.i = phi ptr [ %call1.i, %if.then.i ], [ %call.i, %entry.gfs2_rgrpd_get_next.exit_crit_edge ]
  %cmp3.i = icmp eq ptr %n.0.i, %rgd
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  %rd_flags = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 17
  %2 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_flags, align 8
  %and = and i32 %3, 268435455
  %rg_flags = getelementptr inbounds %struct.gfs2_rgrp, ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %rg_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %rg_flags, align 8
  %rd_free = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 7
  %5 = ptrtoint ptr %rd_free to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rd_free, align 4
  %rg_free = getelementptr inbounds %struct.gfs2_rgrp, ptr %buf, i32 0, i32 2
  %7 = ptrtoint ptr %rg_free to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rg_free, align 4
  %rd_dinodes = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 11
  %8 = ptrtoint ptr %rd_dinodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_dinodes, align 4
  %rg_dinodes = getelementptr inbounds %struct.gfs2_rgrp, ptr %buf, i32 0, i32 3
  %10 = ptrtoint ptr %rg_dinodes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rg_dinodes, align 8
  %cmp36 = icmp eq ptr %n.0.i, null
  %cmp = or i1 %cmp3.i, %cmp36
  br i1 %cmp, label %gfs2_rgrpd_get_next.exit.if.end6.sink.split_crit_edge, label %if.else

gfs2_rgrpd_get_next.exit.if.end6.sink.split_crit_edge: ; preds = %gfs2_rgrpd_get_next.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.sink.split

if.else:                                          ; preds = %gfs2_rgrpd_get_next.exit
  %rd_addr = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %rd_addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rd_addr, align 8
  %rd_addr1 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 2
  %13 = ptrtoint ptr %rd_addr1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rd_addr1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp2 = icmp ugt i64 %12, %14
  br i1 %cmp2, label %if.then3, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i64 %12, %14
  %conv = trunc i64 %sub to i32
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then3, %gfs2_rgrpd_get_next.exit.if.end6.sink.split_crit_edge
  %conv.sink = phi i32 [ %conv, %if.then3 ], [ 0, %gfs2_rgrpd_get_next.exit.if.end6.sink.split_crit_edge ]
  %15 = getelementptr inbounds %struct.gfs2_rgrp, ptr %buf, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.sink, ptr %15, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge
  %rd_igeneration = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 12
  %17 = ptrtoint ptr %rd_igeneration to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rd_igeneration, align 8
  %rg_igeneration = getelementptr inbounds %struct.gfs2_rgrp, ptr %buf, i32 0, i32 5
  %19 = ptrtoint ptr %rg_igeneration to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %rg_igeneration, align 8
  %rd_data0 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 3
  %20 = ptrtoint ptr %rd_data0 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rd_data0, align 8
  %rg_data0 = getelementptr inbounds %struct.gfs2_rgrp, ptr %buf, i32 0, i32 6
  %22 = ptrtoint ptr %rg_data0 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %rg_data0, align 8
  %rd_data = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 5
  %23 = ptrtoint ptr %rd_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rd_data, align 4
  %rg_data = getelementptr inbounds %struct.gfs2_rgrp, ptr %buf, i32 0, i32 7
  %25 = ptrtoint ptr %rg_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %rg_data, align 8
  %rd_bitbytes = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 6
  %26 = ptrtoint ptr %rd_bitbytes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rd_bitbytes, align 8
  %rg_bitbytes = getelementptr inbounds %struct.gfs2_rgrp, ptr %buf, i32 0, i32 8
  %28 = ptrtoint ptr %rg_bitbytes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rg_bitbytes, align 4
  %rg_crc = getelementptr inbounds %struct.gfs2_rgrp, ptr %buf, i32 0, i32 9
  %29 = ptrtoint ptr %rg_crc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rg_crc, align 8
  %call.i35 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %buf, i32 noundef 128) #18
  %xor.i = xor i32 %call.i35, -1
  %30 = ptrtoint ptr %rg_crc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %xor.i, ptr %rg_crc, align 8
  %rg_reserved = getelementptr inbounds %struct.gfs2_rgrp, ptr %buf, i32 0, i32 10
  %31 = call ptr @memset(ptr %rg_reserved, i32 0, i32 60)
  %rd_rgl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 15
  %32 = ptrtoint ptr %rd_rgl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rd_rgl, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 18225520, ptr %33, align 8
  %35 = ptrtoint ptr %rg_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rg_flags, align 8
  %rl_flags.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %33, i32 0, i32 1
  %37 = ptrtoint ptr %rl_flags.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rl_flags.i, align 4
  %38 = ptrtoint ptr %rg_free to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rg_free, align 4
  %rl_free.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %33, i32 0, i32 2
  %40 = ptrtoint ptr %rl_free.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rl_free.i, align 8
  %41 = ptrtoint ptr %rg_dinodes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rg_dinodes, align 8
  %rl_dinodes.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %33, i32 0, i32 3
  %43 = ptrtoint ptr %rl_dinodes.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rl_dinodes.i, align 4
  %44 = ptrtoint ptr %rg_igeneration to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rg_igeneration, align 8
  %rl_igeneration.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %33, i32 0, i32 4
  %46 = ptrtoint ptr %rl_igeneration.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %rl_igeneration.i, align 8
  %__pad.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %33, i32 0, i32 6
  %47 = ptrtoint ptr %__pad.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %__pad.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_inplace_reserve(ptr noundef %ip, ptr nocapture noundef readonly %ap) local_unnamed_addr #0 align 64 {
entry:
  %gl.i = alloca ptr, align 4
  %rbm.i400 = alloca %struct.gfs2_rbm, align 4
  %rbm.i = alloca %struct.gfs2_rbm, align 4
  %extlen.i = alloca i32, align 4
  %skip.i = alloca i32, align 4
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
  %i_res = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10
  %4 = ptrtoint ptr %ap to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ap, align 8
  %conv = trunc i64 %5 to i32
  %rs_reserved = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 4
  %6 = ptrtoint ptr %rs_reserved to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rs_reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end9, label %do.body4, !prof !151

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2056, 0\0A.popsection", ""() #12, !srcloc !168
  unreachable

do.end9:                                          ; preds = %entry
  %ar_rgrplvb = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 21, i32 3
  %8 = ptrtoint ptr %ar_rgrplvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %ar_rgrplvb, align 4
  %9 = and i32 %bf.load, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  %spec.select = select i1 %tobool10.not, i16 32, i16 288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool13.not = icmp eq i32 %conv, 0
  br i1 %tobool13.not, label %if.then23, label %if.end30, !prof !149

if.then23:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.gfs2_inplace_reserve, ptr noundef nonnull @.str.1, i32 noundef 2060) #12
  br label %cleanup242

if.end30:                                         ; preds = %do.end9
  %10 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_res, align 8
  %12 = ptrtoint ptr %i_res to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp.i.not = icmp eq i32 %11, %12
  %rs_rgd33 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %rs_rgd33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rs_rgd33, align 4
  br i1 %cmp.i.not, label %if.else, label %if.end30.if.end45_crit_edge

if.end30.if.end45_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.else:                                          ; preds = %if.end30
  %tobool34.not = icmp eq ptr %14, null
  br i1 %tobool34.not, label %if.else.if.else40_crit_edge, label %land.lhs.true

if.else.if.else40_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else40

land.lhs.true:                                    ; preds = %if.else
  %i_goal = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 11
  %15 = ptrtoint ptr %i_goal to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_goal, align 8
  %rd_data0.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %rd_data0.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rd_data0.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %16)
  %cmp.not.i = icmp ugt i64 %18, %16
  br i1 %cmp.not.i, label %land.lhs.true.if.else40_crit_edge, label %rgrp_contains_block.exit

land.lhs.true.if.else40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else40

rgrp_contains_block.exit:                         ; preds = %land.lhs.true
  %rd_data.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %14, i32 0, i32 5
  %19 = ptrtoint ptr %rd_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rd_data.i, align 4
  %conv.i = zext i32 %20 to i64
  %add.i = add i64 %18, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %16)
  %cmp2.i.not = icmp ugt i64 %add.i, %16
  br i1 %cmp2.i.not, label %rgrp_contains_block.exit.if.end45_crit_edge, label %rgrp_contains_block.exit.if.else40_crit_edge

rgrp_contains_block.exit.if.else40_crit_edge:     ; preds = %rgrp_contains_block.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else40

rgrp_contains_block.exit.if.end45_crit_edge:      ; preds = %rgrp_contains_block.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.else40:                                        ; preds = %rgrp_contains_block.exit.if.else40_crit_edge, %land.lhs.true.if.else40_crit_edge, %if.else.if.else40_crit_edge
  tail call void @check_and_update_goal(ptr noundef %ip)
  %i_goal41 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 11
  %21 = ptrtoint ptr %i_goal41 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_goal41, align 8
  %sd_rindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i) #12
  %sd_rindex_tree.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 49
  %23 = ptrtoint ptr %sd_rindex_tree.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd_rindex_tree.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end4.i.while.cond.i_crit_edge, %if.else40
  %n.0.i = phi ptr [ %24, %if.else40 ], [ %next.0.i, %if.end4.i.while.cond.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %rd_addr.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %22)
  %cmp.i355 = icmp ugt i64 %26, %22
  br i1 %cmp.i355, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i, i32 0, i32 2
  br label %if.end4.i

if.else.i:                                        ; preds = %while.body.i
  %rd_data0.i356 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %rd_data0.i356 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rd_data0.i356, align 8
  %rd_data.i357 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 5
  %29 = ptrtoint ptr %rd_data.i357 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rd_data.i357, align 4
  %conv.i358 = zext i32 %30 to i64
  %add.i359 = add i64 %28, %conv.i358
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i359, i64 %22)
  %cmp1.not.i = icmp ugt i64 %add.i359, %22
  br i1 %cmp1.not.i, label %if.else.i.if.then7.i_crit_edge, label %if.then3.i

if.else.i.if.then7.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i, i32 0, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i
  %next.0.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %31 = ptrtoint ptr %next.0.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %next.0.i = load ptr, ptr %next.0.in.i, align 4
  %cmp5.i = icmp eq ptr %next.0.i, null
  br i1 %cmp5.i, label %if.end4.i.if.then7.i_crit_edge, label %if.end4.i.while.cond.i_crit_edge

if.end4.i.while.cond.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i.if.then7.i_crit_edge, %if.else.i.if.then7.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  %32 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %22)
  %cmp12.i = icmp ugt i64 %33, %22
  br i1 %cmp12.i, label %if.then7.i.gfs2_blk2rgrpd.exit_crit_edge, label %if.end15.i

if.then7.i.gfs2_blk2rgrpd.exit_crit_edge:         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_blk2rgrpd.exit

if.end15.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %rd_data016.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 3
  %34 = ptrtoint ptr %rd_data016.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rd_data016.i, align 8
  %rd_data17.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 5
  %36 = ptrtoint ptr %rd_data17.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rd_data17.i, align 4
  %conv18.i = zext i32 %37 to i64
  %add19.i = add i64 %35, %conv18.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add19.i, i64 %22)
  %cmp20.not.i = icmp ugt i64 %add19.i, %22
  %spec.select463 = select i1 %cmp20.not.i, ptr %n.0.i, ptr null
  br label %gfs2_blk2rgrpd.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  br label %gfs2_blk2rgrpd.exit

gfs2_blk2rgrpd.exit:                              ; preds = %while.end.i, %if.end15.i, %if.then7.i.gfs2_blk2rgrpd.exit_crit_edge
  %retval.0.i = phi ptr [ null, %while.end.i ], [ null, %if.then7.i.gfs2_blk2rgrpd.exit_crit_edge ], [ %spec.select463, %if.end15.i ]
  %38 = ptrtoint ptr %rs_rgd33 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i, ptr %rs_rgd33, align 4
  br label %if.end45

if.end45:                                         ; preds = %gfs2_blk2rgrpd.exit, %rgrp_contains_block.exit.if.end45_crit_edge, %if.end30.if.end45_crit_edge
  %begin.0 = phi ptr [ %retval.0.i, %gfs2_blk2rgrpd.exit ], [ %14, %rgrp_contains_block.exit.if.end45_crit_edge ], [ %14, %if.end30.if.end45_crit_edge ]
  %39 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %ip, align 8
  %41 = and i16 %40, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %41)
  %cmp = icmp eq i16 %41, 16384
  br i1 %cmp, label %land.lhs.true49, label %if.end45.if.end54_crit_edge

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.lhs.true49:                                  ; preds = %if.end45
  %aflags = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 2
  %42 = ptrtoint ptr %aflags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %aflags, align 4
  %and50 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %land.lhs.true49.if.end54_crit_edge, label %if.then52

land.lhs.true49.if.end54_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then52:                                        ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 33
  %46 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skip.i) #12
  %48 = ptrtoint ptr %skip.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %skip.i, align 4, !annotation !164
  call void @get_random_bytes(ptr noundef nonnull %skip.i, i32 noundef 4) #12
  %49 = ptrtoint ptr %skip.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %skip.i, align 4
  %sd_rgrps.i = getelementptr inbounds %struct.gfs2_sbd, ptr %47, i32 0, i32 50
  %51 = ptrtoint ptr %sd_rgrps.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sd_rgrps.i, align 8
  %rem.i = urem i32 %50, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skip.i) #12
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %land.lhs.true49.if.end54_crit_edge, %if.end45.if.end54_crit_edge
  %skip.0 = phi i32 [ %rem.i, %if.then52 ], [ 0, %land.lhs.true49.if.end54_crit_edge ], [ 0, %if.end45.if.end54_crit_edge ]
  %rs_rgd55 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 1
  %53 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rs_rgd55, align 4
  %cmp56 = icmp eq ptr %54, null
  br i1 %cmp56, label %if.end54.cleanup242_crit_edge, label %while.cond.preheader

if.end54.cleanup242_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup242

while.cond.preheader:                             ; preds = %if.end54
  %i_rgd_gh = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 9
  %gh_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 9, i32 1
  %55 = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm.i, i32 0, i32 1
  %56 = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm.i, i32 0, i32 2
  %rs_requested.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 3
  %i_sizehint.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 12
  %i_goal.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 11
  %rs_start.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 2
  %rb_right.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 0, i32 1
  %rb_left.i.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 0, i32 2
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %57 = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm.i400, i32 0, i32 1
  %58 = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm.i400, i32 0, i32 2
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 41
  %sd_rindex_uptodate = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 47
  %min_target = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader
  %skip.1483 = phi i32 [ %skip.0, %while.cond.preheader ], [ %skip.6, %cleanup.while.body_crit_edge ]
  %loops.0482 = phi i32 [ 0, %while.cond.preheader ], [ %loops.1, %cleanup.while.body_crit_edge ]
  %target.0481 = phi i32 [ %conv, %while.cond.preheader ], [ %target.3, %cleanup.while.body_crit_edge ]
  %last_unlinked.0477 = phi i64 [ -1, %while.cond.preheader ], [ %last_unlinked.6, %cleanup.while.body_crit_edge ]
  %59 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rs_rgd55, align 4
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rd_gl, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %62, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #12
  %63 = call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 78
  %67 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %thread_pid.i.i, align 16
  %gl_holders.i = getelementptr inbounds %struct.gfs2_glock, ptr %62, i32 0, i32 6
  %69 = ptrtoint ptr %gl_holders.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %gh.029.i = load ptr, ptr %gl_holders.i, align 4
  %cmp.not30.i = icmp eq ptr %gh.029.i, %gl_holders.i
  br i1 %cmp.not30.i, label %while.body.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %while.body.for.body.i_crit_edge

while.body.for.body.i_crit_edge:                  ; preds = %while.body
  br label %for.body.i

while.body.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_is_locked_by_me.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.body.for.body.i_crit_edge
  %gh.031.i = phi ptr [ %gh.0.i, %for.inc.i.for.body.i_crit_edge ], [ %gh.029.i, %while.body.for.body.i_crit_edge ]
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 6
  %70 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %gh_iflags.i, align 4
  %72 = and i32 %71, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i360 = icmp eq i32 %72, 0
  br i1 %tobool.not.i360, label %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.i

for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_is_locked_by_me.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %73 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %gh_iflags.i, align 4
  %75 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool6.not.i = icmp eq i32 %75, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %gh_owner_pid.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 2
  %76 = ptrtoint ptr %gh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gh_owner_pid.i, align 4
  %cmp9.i = icmp eq ptr %77, %68
  br i1 %cmp9.i, label %gfs2_glock_is_locked_by_me.exit, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %78 = ptrtoint ptr %gh.031.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %gh.0.i = load ptr, ptr %gh.031.i, align 4
  %cmp.not.i361 = icmp eq ptr %gh.0.i, %gl_holders.i
  br i1 %cmp.not.i361, label %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_glock_is_locked_by_me.exit.thread

gfs2_glock_is_locked_by_me.exit.thread:           ; preds = %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %while.body.gfs2_glock_is_locked_by_me.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #12
  br label %if.else69

gfs2_glock_is_locked_by_me.exit:                  ; preds = %if.end8.i
  call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #12
  %tobool64.not = icmp eq ptr %gh.031.i, null
  br i1 %tobool64.not, label %gfs2_glock_is_locked_by_me.exit.if.else69_crit_edge, label %if.then67

gfs2_glock_is_locked_by_me.exit.if.else69_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else69

if.then67:                                        ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #14
  %79 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rs_rgd55, align 4
  %rd_mutex.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %80, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %rd_mutex.i, i32 noundef 0) #12
  br label %if.end143

if.else69:                                        ; preds = %gfs2_glock_is_locked_by_me.exit.if.else69_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.1483)
  %tobool70.not = icmp eq i32 %skip.1483, 0
  br i1 %tobool70.not, label %if.end74, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i32 %skip.1483, -1
  br label %next_rgrp

if.end74:                                         ; preds = %if.else69
  %81 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %i_res, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %12)
  %cmp.i362.not = icmp eq i32 %82, %12
  br i1 %cmp.i362.not, label %if.then76, label %if.end74.if.end96_crit_edge

if.end74.if.end96_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then76:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0482)
  %cmp77 = icmp eq i32 %loops.0482, 0
  br i1 %cmp77, label %land.lhs.true79, label %if.end84

land.lhs.true79:                                  ; preds = %if.then76
  %83 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rs_rgd55, align 4
  %rd_gl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rd_gl.i, align 4
  %gl_state.i = getelementptr inbounds %struct.gfs2_glock, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %gl_state.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load.i = load i16, ptr %gl_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i)
  %cmp.not.i363 = icmp ult i16 %bf.load.i, 16384
  br i1 %cmp.not.i363, label %land.lhs.true79.fast_to_acquire.exit_crit_edge, label %land.lhs.true.i

land.lhs.true79.fast_to_acquire.exit_crit_edge:   ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #14
  br label %fast_to_acquire.exit

land.lhs.true.i:                                  ; preds = %land.lhs.true79
  %gl_holders.i364 = getelementptr inbounds %struct.gfs2_glock, ptr %86, i32 0, i32 6
  %88 = ptrtoint ptr %gl_holders.i364 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile ptr, ptr %gl_holders.i364, align 4
  %cmp.i.not.i = icmp eq ptr %89, %gl_holders.i364
  br i1 %cmp.i.not.i, label %land.lhs.true1.i, label %land.lhs.true.i.fast_to_acquire.exit_crit_edge

land.lhs.true.i.fast_to_acquire.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fast_to_acquire.exit

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %86, align 4
  %92 = and i32 %91, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool3.not.i = icmp eq i32 %92, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true1.i.fast_to_acquire.exit_crit_edge

land.lhs.true1.i.fast_to_acquire.exit_crit_edge:  ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fast_to_acquire.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true1.i
  %93 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %86, align 4
  %95 = and i32 %94, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool7.not.i = icmp eq i32 %95, 0
  br i1 %tobool7.not.i, label %land.lhs.true4.i.land.lhs.true87_crit_edge, label %land.lhs.true4.i.fast_to_acquire.exit_crit_edge

land.lhs.true4.i.fast_to_acquire.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fast_to_acquire.exit

land.lhs.true4.i.land.lhs.true87_crit_edge:       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true87

fast_to_acquire.exit:                             ; preds = %land.lhs.true4.i.fast_to_acquire.exit_crit_edge, %land.lhs.true1.i.fast_to_acquire.exit_crit_edge, %land.lhs.true.i.fast_to_acquire.exit_crit_edge, %land.lhs.true79.fast_to_acquire.exit_crit_edge
  %rd_flags.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %84, i32 0, i32 17
  %96 = ptrtoint ptr %rd_flags.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rd_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %tobool82.not = icmp sgt i32 %97, -1
  br i1 %tobool82.not, label %fast_to_acquire.exit.next_rgrp_crit_edge, label %fast_to_acquire.exit.land.lhs.true87_crit_edge

fast_to_acquire.exit.land.lhs.true87_crit_edge:   ; preds = %fast_to_acquire.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true87

fast_to_acquire.exit.next_rgrp_crit_edge:         ; preds = %fast_to_acquire.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_rgrp

if.end84:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %loops.0482)
  %cmp85 = icmp slt i32 %loops.0482, 2
  br i1 %cmp85, label %if.end84.land.lhs.true87_crit_edge, label %if.end84.if.end96_crit_edge

if.end84.if.end96_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.end84.land.lhs.true87_crit_edge:               ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true87

land.lhs.true87:                                  ; preds = %if.end84.land.lhs.true87_crit_edge, %fast_to_acquire.exit.land.lhs.true87_crit_edge, %land.lhs.true4.i.land.lhs.true87_crit_edge
  %call.i.i = call i64 @ktime_get_with_offset(i32 noundef 0) #12
  %98 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rs_rgd55, align 4
  %rd_gl.i367 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %rd_gl.i367 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rd_gl.i367, align 4
  %gl_dstamp.i = getelementptr inbounds %struct.gfs2_glock, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %gl_dstamp.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %gl_dstamp.i, align 8
  %sub.i = sub i64 %call.i.i, %103
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000000, i64 %sub.i)
  %cmp.i368 = icmp ugt i64 %sub.i, 1000000000
  br i1 %cmp.i368, label %land.lhs.true90, label %land.lhs.true87.if.end96_crit_edge

land.lhs.true87.if.end96_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

land.lhs.true90:                                  ; preds = %land.lhs.true87
  %104 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rs_rgd55, align 4
  %call92 = call fastcc zeroext i1 @gfs2_rgrp_congested(ptr noundef %105, i32 noundef %loops.0482)
  br i1 %call92, label %land.lhs.true90.next_rgrp_crit_edge, label %land.lhs.true90.if.end96_crit_edge

land.lhs.true90.if.end96_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

land.lhs.true90.next_rgrp_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_rgrp

if.end96:                                         ; preds = %land.lhs.true90.if.end96_crit_edge, %land.lhs.true87.if.end96_crit_edge, %if.end84.if.end96_crit_edge, %if.end74.if.end96_crit_edge
  %106 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rs_rgd55, align 4
  %rd_gl98 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %rd_gl98 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rd_gl98, align 4
  %110 = call ptr @llvm.returnaddress(i32 0) #12
  %111 = ptrtoint ptr %110 to i32
  call void @__gfs2_holder_init(ptr noundef %109, i32 noundef 1, i16 noundef zeroext %spec.select, ptr noundef %i_rgd_gh, i32 noundef %111) #12
  %call.i = call i32 @gfs2_glock_nq(ptr noundef %i_rgd_gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i369 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i369, label %if.end109, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_holder_uninit(ptr noundef %i_rgd_gh) #12
  br label %cleanup242

if.end109:                                        ; preds = %if.end96
  %112 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rs_rgd55, align 4
  %rd_mutex.i372 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %113, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %rd_mutex.i372, i32 noundef 0) #12
  %114 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %i_res, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %12)
  %cmp.i373.not = icmp eq i32 %115, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %loops.0482)
  %cmp113 = icmp slt i32 %loops.0482, 2
  %or.cond = select i1 %cmp.i373.not, i1 %cmp113, i1 false
  br i1 %or.cond, label %land.lhs.true115, label %if.end109.if.end120_crit_edge

if.end109.if.end120_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

land.lhs.true115:                                 ; preds = %if.end109
  %116 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rs_rgd55, align 4
  %call117 = call fastcc zeroext i1 @gfs2_rgrp_congested(ptr noundef %117, i32 noundef %loops.0482)
  br i1 %call117, label %land.lhs.true115.skip_rgrp_crit_edge, label %land.lhs.true115.if.end120_crit_edge

land.lhs.true115.if.end120_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

land.lhs.true115.skip_rgrp_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_rgrp

if.end120:                                        ; preds = %land.lhs.true115.if.end120_crit_edge, %if.end109.if.end120_crit_edge
  %118 = ptrtoint ptr %ar_rgrplvb to i32
  call void @__asan_load4_noabort(i32 %118)
  %bf.load123 = load i32, ptr %ar_rgrplvb, align 4
  %119 = and i32 %bf.load123, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool126.not = icmp eq i32 %119, 0
  br i1 %tobool126.not, label %if.end120.if.end143_crit_edge, label %if.then127

if.end120.if.end143_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then127:                                       ; preds = %if.end120
  %120 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rs_rgd55, align 4
  %122 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %gh_gl.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %123, align 4
  %126 = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i374 = icmp eq i32 %126, 0
  br i1 %tobool.not.i374, label %if.then127.if.end143_crit_edge, label %if.end.i376

if.then127.if.end143_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.end.i376:                                      ; preds = %if.then127
  %rd_rgl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 15
  %127 = ptrtoint ptr %rd_rgl.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rd_rgl.i, align 8
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %130)
  %cmp.not.i375 = icmp eq i32 %130, 18225520
  br i1 %cmp.not.i375, label %if.end3.i, label %update_rgrp_lvb.exit

if.end3.i:                                        ; preds = %if.end.i376
  %rl_flags5.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %128, i32 0, i32 1
  %131 = ptrtoint ptr %rl_flags5.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %rl_flags5.i, align 4
  %and.i = and i32 %132, 268435455
  %rd_flags.i377 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 17
  %133 = ptrtoint ptr %rd_flags.i377 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rd_flags.i377, align 8
  %and6.i = and i32 %134, -536870912
  %or.i = or i32 %and6.i, %and.i
  %or8.i = or i32 %or.i, 268435456
  store i32 %or8.i, ptr %rd_flags.i377, align 8
  %rl_unlinked.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %128, i32 0, i32 5
  %135 = ptrtoint ptr %rl_unlinked.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rl_unlinked.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp10.i = icmp eq i32 %136, 0
  %spec.store.select.i = select i1 %cmp10.i, i32 %or.i, i32 %or8.i
  %137 = ptrtoint ptr %rd_flags.i377 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %spec.store.select.i, ptr %rd_flags.i377, align 8
  %rl_free.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %128, i32 0, i32 2
  %138 = ptrtoint ptr %rl_free.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %rl_free.i, align 8
  %rd_free.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 7
  %140 = ptrtoint ptr %rd_free.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %rd_free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i.i = icmp eq i32 %139, 0
  %rd_length2.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 4
  %141 = ptrtoint ptr %rd_length2.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rd_length2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp324.not.i.i = icmp eq i32 %142, 0
  br i1 %tobool.not.i.i, label %for.cond1.preheader.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end3.i
  br i1 %cmp324.not.i.i, label %for.cond.preheader.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rgrp_set_bitmap_flags.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %rd_bits.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 13
  br label %for.body.i.i

for.cond1.preheader.i.i:                          ; preds = %if.end3.i
  br i1 %cmp324.not.i.i, label %for.cond1.preheader.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge, label %for.body4.lr.ph.i.i

for.cond1.preheader.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rgrp_set_bitmap_flags.exit.i

for.body4.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %rd_bits5.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 13
  br label %for.body4.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %x.023.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %143 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %rd_bits.i.i, align 8
  %bi_flags.i.i = getelementptr %struct.gfs2_bitmap, ptr %144, i32 %x.023.i.i, i32 2
  call void @_clear_bit(i32 noundef 1, ptr noundef %bi_flags.i.i) #12
  %inc.i.i = add nuw i32 %x.023.i.i, 1
  %145 = ptrtoint ptr %rd_length2.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %rd_length2.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %146
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge

for.body.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rgrp_set_bitmap_flags.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body4.i.i:                                    ; preds = %for.body4.i.i.for.body4.i.i_crit_edge, %for.body4.lr.ph.i.i
  %x.125.i.i = phi i32 [ 0, %for.body4.lr.ph.i.i ], [ %inc9.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ]
  %147 = ptrtoint ptr %rd_bits5.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rd_bits5.i.i, align 8
  %bi_flags7.i.i = getelementptr %struct.gfs2_bitmap, ptr %148, i32 %x.125.i.i, i32 2
  call void @_set_bit(i32 noundef 1, ptr noundef %bi_flags7.i.i) #12
  %inc9.i.i = add nuw i32 %x.125.i.i, 1
  %149 = ptrtoint ptr %rd_length2.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rd_length2.i.i, align 8
  %cmp3.i.i = icmp ult i32 %inc9.i.i, %150
  br i1 %cmp3.i.i, label %for.body4.i.i.for.body4.i.i_crit_edge, label %for.body4.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge

for.body4.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge: ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rgrp_set_bitmap_flags.exit.i

for.body4.i.i.for.body4.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4.i.i

rgrp_set_bitmap_flags.exit.i:                     ; preds = %for.body4.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge, %for.body.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge, %for.cond1.preheader.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge, %for.cond.preheader.i.i.rgrp_set_bitmap_flags.exit.i_crit_edge
  %151 = ptrtoint ptr %rd_free.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rd_free.i, align 4
  %rd_free_clone.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 10
  %153 = ptrtoint ptr %rd_free_clone.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %rd_free_clone.i, align 8
  %rd_reserved.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 9
  %154 = ptrtoint ptr %rd_reserved.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %rd_reserved.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool17.not.i = icmp eq i32 %155, 0
  br i1 %tobool17.not.i, label %do.end27.i, label %if.then20.i, !prof !151

if.then20.i:                                      ; preds = %rgrp_set_bitmap_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %rd_gl.i378 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 1
  %156 = ptrtoint ptr %rd_gl.i378 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rd_gl.i378, align 4
  call void @gfs2_dump_glock(ptr noundef null, ptr noundef %157, i1 noundef zeroext true) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1280, 0\0A.popsection", ""() #12, !srcloc !169
  unreachable

do.end27.i:                                       ; preds = %rgrp_set_bitmap_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %rd_extfail_pt.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 18
  %158 = ptrtoint ptr %rd_extfail_pt.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %152, ptr %rd_extfail_pt.i, align 4
  %159 = ptrtoint ptr %rd_rgl.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %rd_rgl.i, align 8
  %rl_dinodes.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %rl_dinodes.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %rl_dinodes.i, align 4
  %rd_dinodes.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 11
  %163 = ptrtoint ptr %rd_dinodes.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %rd_dinodes.i, align 4
  %rl_igeneration.i = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %160, i32 0, i32 4
  %164 = ptrtoint ptr %rl_igeneration.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %rl_igeneration.i, align 8
  %rd_igeneration.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %121, i32 0, i32 12
  %166 = ptrtoint ptr %rd_igeneration.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %rd_igeneration.i, align 8
  br label %if.end143

update_rgrp_lvb.exit:                             ; preds = %if.end.i376
  %call2.i = call i32 @gfs2_instantiate(ptr noundef %i_rgd_gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool131.not = icmp eq i32 %call2.i, 0
  br i1 %tobool131.not, label %update_rgrp_lvb.exit.if.end143_crit_edge, label %if.then138, !prof !151

update_rgrp_lvb.exit.if.end143_crit_edge:         ; preds = %update_rgrp_lvb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end143

if.then138:                                       ; preds = %update_rgrp_lvb.exit
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %rs_rgd55, align 4
  %rd_mutex.i380 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %168, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %rd_mutex.i380) #12
  call void @gfs2_glock_dq_uninit(ptr noundef %i_rgd_gh) #12
  br label %cleanup242

if.end143:                                        ; preds = %update_rgrp_lvb.exit.if.end143_crit_edge, %do.end27.i, %if.then127.if.end143_crit_edge, %if.end120.if.end143_crit_edge, %if.then67
  %tobool64.not450 = phi i1 [ false, %if.then67 ], [ true, %update_rgrp_lvb.exit.if.end143_crit_edge ], [ true, %if.end120.if.end143_crit_edge ], [ true, %do.end27.i ], [ true, %if.then127.if.end143_crit_edge ]
  %skip.3 = phi i32 [ %skip.1483, %if.then67 ], [ 0, %update_rgrp_lvb.exit.if.end143_crit_edge ], [ 0, %if.end120.if.end143_crit_edge ], [ 0, %do.end27.i ], [ 0, %if.then127.if.end143_crit_edge ]
  %169 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %rs_rgd55, align 4
  %rd_flags = getelementptr inbounds %struct.gfs2_rgrpd, ptr %170, i32 0, i32 17
  %171 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %rd_flags, align 8
  %and145 = and i32 %172, 1073741832
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %lor.lhs.false, label %if.end143.skip_rgrp_crit_edge

if.end143.skip_rgrp_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_rgrp

lor.lhs.false:                                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %loops.0482)
  %cmp147 = icmp eq i32 %loops.0482, 0
  br i1 %cmp147, label %land.lhs.true149, label %lor.lhs.false.if.end154_crit_edge

lor.lhs.false.if.end154_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

land.lhs.true149:                                 ; preds = %lor.lhs.false
  %rd_extfail_pt = getelementptr inbounds %struct.gfs2_rgrpd, ptr %170, i32 0, i32 18
  %173 = ptrtoint ptr %rd_extfail_pt to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rd_extfail_pt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %target.0481, i32 %174)
  %cmp151 = icmp ugt i32 %target.0481, %174
  br i1 %cmp151, label %land.lhs.true149.skip_rgrp_crit_edge, label %land.lhs.true149.if.end154_crit_edge

land.lhs.true149.if.end154_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154

land.lhs.true149.skip_rgrp_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_rgrp

if.end154:                                        ; preds = %land.lhs.true149.if.end154_crit_edge, %lor.lhs.false.if.end154_crit_edge
  %175 = ptrtoint ptr %ar_rgrplvb to i32
  call void @__asan_load4_noabort(i32 %175)
  %bf.load157 = load i32, ptr %ar_rgrplvb, align 4
  %176 = and i32 %bf.load157, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool160.not = icmp eq i32 %176, 0
  br i1 %tobool160.not, label %if.end154.if.end167_crit_edge, label %if.then161

if.end154.if.end167_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.then161:                                       ; preds = %if.end154
  %call163 = call i32 @gfs2_instantiate(ptr noundef %i_rgd_gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.then161.if.end167_crit_edge, label %if.then161.skip_rgrp_crit_edge

if.then161.skip_rgrp_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_rgrp

if.then161.if.end167_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.end167:                                        ; preds = %if.then161.if.end167_crit_edge, %if.end154.if.end167_crit_edge
  %177 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %i_res, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %12)
  %cmp.i381.not = icmp eq i32 %178, %12
  br i1 %cmp.i381.not, label %if.then169, label %if.end167.if.end171_crit_edge

if.end167.if.end171_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171

if.then169:                                       ; preds = %if.end167
  %179 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rs_rgd55, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rbm.i) #12
  %181 = ptrtoint ptr %rbm.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %180, ptr %rbm.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extlen.i) #12
  %rd_rsspin.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 19
  call void @_raw_spin_lock(ptr noundef %rd_rsspin.i) #12
  %rd_requested.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 8
  %182 = ptrtoint ptr %rd_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rd_requested.i.i, align 8
  %184 = ptrtoint ptr %rs_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %rs_requested.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %183, i32 %185)
  %cmp.i.i382 = icmp ult i32 %183, %185
  br i1 %cmp.i.i382, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.then169
  %.b53.i.i = load i1, ptr @rgd_free.__already_done, align 1
  br i1 %.b53.i.i, label %land.rhs.i.i.rgd_free.exit.i_crit_edge, label %if.then.i.i, !prof !151

land.rhs.i.i.rgd_free.exit.i_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rgd_free.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rgd_free.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1541, i32 noundef 9, ptr noundef null) #12
  br label %rgd_free.exit.i

if.end37.i.i:                                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %183, %185
  %rd_free_clone.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 10
  %186 = ptrtoint ptr %rd_free_clone.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %rd_free_clone.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %sub.i.i)
  %cmp40.i.i = icmp ult i32 %187, %sub.i.i
  %spec.store.select.i.i = select i1 %cmp40.i.i, i32 0, i32 %sub.i.i
  %sub44.i.i = sub i32 %187, %spec.store.select.i.i
  br label %rgd_free.exit.i

rgd_free.exit.i:                                  ; preds = %if.end37.i.i, %if.then.i.i, %land.rhs.i.i.rgd_free.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %sub44.i.i, %if.end37.i.i ], [ 0, %if.then.i.i ], [ 0, %land.rhs.i.i.rgd_free.exit.i_crit_edge ]
  %rd_free_clone.i383 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 10
  %188 = ptrtoint ptr %rd_free_clone.i383 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %rd_free_clone.i383, align 8
  %190 = ptrtoint ptr %rd_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rd_requested.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %191)
  %cmp.i384 = icmp ult i32 %189, %191
  %spec.store.select.i385 = select i1 %cmp.i384, i32 0, i32 %retval.0.i.i
  %rd_reserved.i386 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 9
  %192 = ptrtoint ptr %rd_reserved.i386 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rd_reserved.i386, align 4
  %sub.i387 = sub i32 %189, %193
  %194 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %rs_rgd55, align 4
  %cmp3.i = icmp eq ptr %195, %180
  br i1 %cmp3.i, label %if.then4.i, label %rgd_free.exit.i.if.end5.i_crit_edge

rgd_free.exit.i.if.end5.i_crit_edge:              ; preds = %rgd_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then4.i:                                       ; preds = %rgd_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %196 = ptrtoint ptr %rs_reserved to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %rs_reserved, align 4
  %add.i389 = add i32 %197, %sub.i387
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %rgd_free.exit.i.if.end5.i_crit_edge
  %blocks_available.0.i = phi i32 [ %add.i389, %if.then4.i ], [ %sub.i387, %rgd_free.exit.i.if.end5.i_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %rd_rsspin.i) #12
  %198 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %ip, align 8
  %200 = and i16 %199, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %200)
  %cmp7.i = icmp eq i16 %200, 16384
  br i1 %cmp7.i, label %if.end5.i.if.end28.i_crit_edge, label %if.else.i390

if.end5.i.if.end28.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.else.i390:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %i_sizehint.i, i32 noundef 4) #12
  %201 = ptrtoint ptr %i_sizehint.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load volatile i32, ptr %i_sizehint.i, align 4
  %203 = ptrtoint ptr %ap to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %ap, align 8
  %conv11.i = trunc i64 %204 to i32
  %205 = call i32 @llvm.umax.i32(i32 %202, i32 %conv11.i) #12
  %206 = call i32 @llvm.umax.i32(i32 %205, i32 32) #12
  %207 = call i32 @llvm.umin.i32(i32 %206, i32 %spec.store.select.i385) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i390, %if.end5.i.if.end28.i_crit_edge
  %storemerge.i = phi i32 [ %207, %if.else.i390 ], [ 1, %if.end5.i.if.end28.i_crit_edge ]
  %208 = ptrtoint ptr %extlen.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %storemerge.i, ptr %extlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i385, i32 %storemerge.i)
  %cmp29.i = icmp ult i32 %spec.store.select.i385, %storemerge.i
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks_available.0.i, i32 %storemerge.i)
  %cmp31.i = icmp ult i32 %blocks_available.0.i, %storemerge.i
  %or.cond.i = select i1 %cmp29.i, i1 true, i1 %cmp31.i
  br i1 %or.cond.i, label %if.end28.i.rg_mblk_search.exit_crit_edge, label %if.end34.i

if.end28.i.rg_mblk_search.exit_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rg_mblk_search.exit

if.end34.i:                                       ; preds = %if.end28.i
  %209 = ptrtoint ptr %i_goal.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %i_goal.i, align 8
  %rd_data0.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 3
  %211 = ptrtoint ptr %rd_data0.i.i to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %rd_data0.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %212, i64 %210)
  %cmp.not.i.i = icmp ugt i64 %212, %210
  br i1 %cmp.not.i.i, label %if.end34.i.if.else38.i_crit_edge, label %rgrp_contains_block.exit.i

if.end34.i.if.else38.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38.i

rgrp_contains_block.exit.i:                       ; preds = %if.end34.i
  %rd_data.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 5
  %213 = ptrtoint ptr %rd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %rd_data.i.i, align 4
  %conv.i.i = zext i32 %214 to i64
  %add.i.i = add i64 %212, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %210)
  %cmp2.i.not.i = icmp ugt i64 %add.i.i, %210
  br i1 %cmp2.i.not.i, label %rgrp_contains_block.exit.i.if.end41.i_crit_edge, label %rgrp_contains_block.exit.i.if.else38.i_crit_edge

rgrp_contains_block.exit.i.if.else38.i_crit_edge: ; preds = %rgrp_contains_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else38.i

rgrp_contains_block.exit.i.if.end41.i_crit_edge:  ; preds = %rgrp_contains_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41.i

if.else38.i:                                      ; preds = %rgrp_contains_block.exit.i.if.else38.i_crit_edge, %if.end34.i.if.else38.i_crit_edge
  %rd_last_alloc.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 16
  %215 = ptrtoint ptr %rd_last_alloc.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %rd_last_alloc.i, align 4
  %conv39.i = zext i32 %216 to i64
  %add40.i = add i64 %212, %conv39.i
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.else38.i, %rgrp_contains_block.exit.i.if.end41.i_crit_edge
  %goal.0.i = phi i64 [ %add40.i, %if.else38.i ], [ %210, %rgrp_contains_block.exit.i.if.end41.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %goal.0.i, i64 %212)
  %cmp.not.i.i.i = icmp ult i64 %goal.0.i, %212
  br i1 %cmp.not.i.i.i, label %if.end41.i.do.end.i_crit_edge, label %rgrp_contains_block.exit.i.i

if.end41.i.do.end.i_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

rgrp_contains_block.exit.i.i:                     ; preds = %if.end41.i
  %rd_data.i.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 5
  %217 = ptrtoint ptr %rd_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %rd_data.i.i.i, align 4
  %conv.i.i.i = zext i32 %218 to i64
  %add.i.i.i = add i64 %212, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %goal.0.i)
  %cmp2.i.not.i.i = icmp ugt i64 %add.i.i.i, %goal.0.i
  br i1 %cmp2.i.not.i.i, label %if.end.i.i, label %rgrp_contains_block.exit.i.i.do.end.i_crit_edge

rgrp_contains_block.exit.i.i.do.end.i_crit_edge:  ; preds = %rgrp_contains_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.end.i.i:                                       ; preds = %rgrp_contains_block.exit.i.i
  %219 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %56, align 4
  %sub.i128.i = sub i64 %goal.0.i, %212
  %conv.i129.i = trunc i64 %sub.i128.i to i32
  %220 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %conv.i129.i, ptr %55, align 4
  %rd_bits.i.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 13
  %221 = ptrtoint ptr %rd_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %rd_bits.i.i.i, align 8
  %bi_blocks.i.i = getelementptr inbounds %struct.gfs2_bitmap, ptr %222, i32 0, i32 6
  %223 = ptrtoint ptr %bi_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %bi_blocks.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %224, i32 %conv.i129.i)
  %cmp.i130.i = icmp ugt i32 %224, %conv.i129.i
  br i1 %cmp.i130.i, label %if.end.i.i.if.end68.i_crit_edge, label %if.end6.i.i

if.end.i.i.if.end68.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i131.i = add i32 %conv.i129.i, 416
  %rd_sbd.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 14
  %225 = ptrtoint ptr %rd_sbd.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %rd_sbd.i.i, align 4
  %sd_blocks_per_bitmap.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %226, i32 0, i32 16
  %227 = ptrtoint ptr %sd_blocks_per_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %sd_blocks_per_bitmap.i.i, align 8
  %div.i.i = udiv i32 %add.i131.i, %228
  %229 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %div.i.i, ptr %56, align 4
  %mul.i.i = mul i32 %div.i.i, %228
  %sub16.i.i = sub i32 %add.i131.i, %mul.i.i
  %230 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %sub16.i.i, ptr %55, align 4
  br label %if.end68.i

do.end.i:                                         ; preds = %rgrp_contains_block.exit.i.i.do.end.i_crit_edge, %if.end41.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1596, i32 noundef 9, ptr noundef null) #12
  br label %rg_mblk_search.exit

if.end68.i:                                       ; preds = %if.end6.i.i, %if.end.i.i.if.end68.i_crit_edge
  %call70.i = call fastcc i32 @gfs2_rbm_find(ptr noundef nonnull %rbm.i, i8 noundef zeroext 0, ptr noundef nonnull %extlen.i, ptr noundef %i_res, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %cmp71.i = icmp eq i32 %call70.i, 0
  br i1 %cmp71.i, label %if.then73.i, label %if.else75.i

if.then73.i:                                      ; preds = %if.end68.i
  %231 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %55, align 4
  %233 = ptrtoint ptr %rbm.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %rbm.i, align 4
  %rd_data.i134.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %234, i32 0, i32 5
  %235 = ptrtoint ptr %rd_data.i134.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %rd_data.i134.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %236)
  %cmp.not.i135.i = icmp ult i32 %232, %236
  br i1 %cmp.not.i135.i, label %gfs2_rbm_to_block.exit.i, label %do.body2.i.i, !prof !151

do.body2.i.i:                                     ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

gfs2_rbm_to_block.exit.i:                         ; preds = %if.then73.i
  %rd_data0.i136.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %234, i32 0, i32 3
  %237 = ptrtoint ptr %rd_data0.i136.i to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %rd_data0.i136.i, align 8
  %rd_bits.i.i137.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %234, i32 0, i32 13
  %239 = ptrtoint ptr %rd_bits.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %rd_bits.i.i137.i, align 8
  %241 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %56, align 4
  %bi_start.i.i = getelementptr %struct.gfs2_bitmap, ptr %240, i32 %242, i32 4
  %243 = ptrtoint ptr %bi_start.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %bi_start.i.i, align 4
  %mul.i138.i = shl i32 %244, 2
  %conv.i139.i = zext i32 %mul.i138.i to i64
  %conv8.i.i = zext i32 %232 to i64
  %add.i140.i = add i64 %238, %conv8.i.i
  %add9.i.i = add i64 %add.i140.i, %conv.i139.i
  %245 = ptrtoint ptr %rs_start.i to i32
  call void @__asan_store8_noabort(i32 %245)
  store i64 %add9.i.i, ptr %rs_start.i, align 8
  %246 = ptrtoint ptr %extlen.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %extlen.i, align 4
  %248 = ptrtoint ptr %rs_requested.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %rs_requested.i.i, align 8
  %249 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %rs_rgd55, align 4
  %251 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %i_res, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %252, i32 %12)
  %cmp.i.not.i.i = icmp eq i32 %252, %12
  br i1 %cmp.i.not.i.i, label %do.end7.i.i, label %do.body2.i141.i, !prof !151

do.body2.i141.i:                                  ; preds = %gfs2_rbm_to_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1494, 0\0A.popsection", ""() #12, !srcloc !171
  unreachable

do.end7.i.i:                                      ; preds = %gfs2_rbm_to_block.exit.i
  %rd_rsspin.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %250, i32 0, i32 19
  call void @_raw_spin_lock(ptr noundef %rd_rsspin.i.i) #12
  %rd_rstree.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %250, i32 0, i32 21
  %253 = ptrtoint ptr %rd_rstree.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %rd_rstree.i.i, align 4
  %tobool8.not78.i.i = icmp eq ptr %254, null
  br i1 %tobool8.not78.i.i, label %do.end7.i.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

do.end7.i.i.while.end.i.i_crit_edge:              ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %do.end7.i.i
  %255 = ptrtoint ptr %rs_start.i to i32
  call void @__asan_load8_noabort(i32 %255)
  %256 = load i64, ptr %rs_start.i, align 8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %257 = phi ptr [ %254, %while.body.lr.ph.i.i ], [ %265, %cleanup.i.i.while.body.i.i_crit_edge ]
  %rs_start.i.i.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %rs_start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %258)
  %259 = load i64, ptr %rs_start.i.i.i, align 8
  %rs_requested.i.i.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %257, i32 0, i32 3
  %260 = ptrtoint ptr %rs_requested.i.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %rs_requested.i.i.i, align 8
  %conv.i.i143.i = zext i32 %261 to i64
  %add.i.i144.i = add i64 %259, %conv.i.i143.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i144.i, i64 %256)
  %cmp.not.i.i145.i = icmp ugt i64 %add.i.i144.i, %256
  br i1 %cmp.not.i.i145.i, label %rs_cmp.exit.i.i, label %if.then10.i.i

rs_cmp.exit.i.i:                                  ; preds = %while.body.i.i
  %262 = ptrtoint ptr %rs_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %rs_requested.i.i, align 8
  %conv3.i.i.i = zext i32 %263 to i64
  %add4.i.i.i = add i64 %256, %conv3.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %259, i64 %add4.i.i.i)
  %cmp5.not.i.not.i.i = icmp ult i64 %259, %add4.i.i.i
  br i1 %cmp5.not.i.not.i.i, label %cleanup.thread.i.i, label %if.then12.i.i

if.then10.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %257, i32 0, i32 1
  br label %cleanup.i.i

if.then12.i.i:                                    ; preds = %rs_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %257, i32 0, i32 2
  br label %cleanup.i.i

cleanup.thread.i.i:                               ; preds = %rs_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %rd_rsspin.i.i) #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1510, i32 noundef 9, ptr noundef null) #12
  br label %rg_mblk_search.exit

cleanup.i.i:                                      ; preds = %if.then12.i.i, %if.then10.i.i
  %newn.2.i.i = phi ptr [ %rb_right.i.i, %if.then10.i.i ], [ %rb_left.i.i, %if.then12.i.i ]
  %264 = ptrtoint ptr %newn.2.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %newn.2.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %265, null
  br i1 %tobool8.not.i.i, label %while.cond.while.end_crit_edge.i.i, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

while.cond.while.end_crit_edge.i.i:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast.le.i.i = ptrtoint ptr %257 to i32
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.while.end_crit_edge.i.i, %do.end7.i.i.while.end.i.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %do.end7.i.i.while.end.i.i_crit_edge ]
  %newn.0.lcssa.i.i = phi ptr [ %newn.2.i.i, %while.cond.while.end_crit_edge.i.i ], [ %rd_rstree.i.i, %do.end7.i.i.while.end.i.i_crit_edge ]
  %266 = ptrtoint ptr %i_res to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %parent.0.lcssa.i.i, ptr %i_res, align 4
  %267 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %268 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %269 = ptrtoint ptr %newn.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %i_res, ptr %newn.0.lcssa.i.i, align 4
  call void @rb_insert_color(ptr noundef %i_res, ptr noundef %rd_rstree.i.i) #12
  %270 = ptrtoint ptr %rs_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %rs_requested.i.i, align 8
  %rd_requested.i146.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %250, i32 0, i32 8
  %272 = ptrtoint ptr %rd_requested.i146.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %rd_requested.i146.i, align 8
  %add.i147.i = add i32 %273, %271
  store i32 %add.i147.i, ptr %rd_requested.i146.i, align 8
  call void @_raw_spin_unlock(ptr noundef %rd_rsspin.i.i) #12
  call fastcc void @trace_gfs2_rs(ptr noundef %i_res, i8 noundef zeroext 2) #12
  br label %rg_mblk_search.exit

if.else75.i:                                      ; preds = %if.end68.i
  %rd_last_alloc76.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %180, i32 0, i32 16
  %274 = ptrtoint ptr %rd_last_alloc76.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %rd_last_alloc76.i, align 4
  %conv77.i = zext i32 %275 to i64
  %276 = ptrtoint ptr %rd_data0.i.i to i32
  call void @__asan_load8_noabort(i32 %276)
  %277 = load i64, ptr %rd_data0.i.i, align 8
  %add79.i = add i64 %277, %conv77.i
  call void @__sanitizer_cov_trace_cmp8(i64 %goal.0.i, i64 %add79.i)
  %cmp80.i = icmp eq i64 %goal.0.i, %add79.i
  br i1 %cmp80.i, label %if.then82.i, label %if.else75.i.rg_mblk_search.exit_crit_edge

if.else75.i.rg_mblk_search.exit_crit_edge:        ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rg_mblk_search.exit

if.then82.i:                                      ; preds = %if.else75.i
  call void @__sanitizer_cov_trace_pc() #14
  %278 = ptrtoint ptr %rd_last_alloc76.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 0, ptr %rd_last_alloc76.i, align 4
  br label %rg_mblk_search.exit

rg_mblk_search.exit:                              ; preds = %if.then82.i, %if.else75.i.rg_mblk_search.exit_crit_edge, %while.end.i.i, %cleanup.thread.i.i, %do.end.i, %if.end28.i.rg_mblk_search.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extlen.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rbm.i) #12
  br label %if.end171

if.end171:                                        ; preds = %rg_mblk_search.exit, %if.end167.if.end171_crit_edge
  %279 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %i_res, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %12)
  %cmp.i391.not = icmp eq i32 %280, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %loops.0482)
  %cmp174 = icmp slt i32 %loops.0482, 1
  %or.cond350 = select i1 %cmp.i391.not, i1 %cmp174, i1 false
  br i1 %or.cond350, label %if.end171.check_rgrp_crit_edge, label %if.end177

if.end171.check_rgrp_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_rgrp

if.end177:                                        ; preds = %if.end171
  %281 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %rs_rgd55, align 4
  %rd_rsspin = getelementptr inbounds %struct.gfs2_rgrpd, ptr %282, i32 0, i32 19
  call void @_raw_spin_lock(ptr noundef %rd_rsspin) #12
  %rd_requested.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %282, i32 0, i32 8
  %283 = ptrtoint ptr %rd_requested.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %rd_requested.i, align 8
  %285 = ptrtoint ptr %rs_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %rs_requested.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %284, i32 %286)
  %cmp.i392 = icmp ult i32 %284, %286
  br i1 %cmp.i392, label %land.rhs.i393, label %if.end37.i

land.rhs.i393:                                    ; preds = %if.end177
  %.b53.i = load i1, ptr @rgd_free.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i393.rgd_free.exit_crit_edge, label %if.then.i394, !prof !151

land.rhs.i393.rgd_free.exit_crit_edge:            ; preds = %land.rhs.i393
  call void @__sanitizer_cov_trace_pc() #14
  br label %rgd_free.exit

if.then.i394:                                     ; preds = %land.rhs.i393
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rgd_free.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1541, i32 noundef 9, ptr noundef null) #12
  br label %rgd_free.exit

if.end37.i:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i395 = sub i32 %284, %286
  %rd_free_clone.i396 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %282, i32 0, i32 10
  %287 = ptrtoint ptr %rd_free_clone.i396 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %rd_free_clone.i396, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %sub.i395)
  %cmp40.i = icmp ult i32 %288, %sub.i395
  %spec.store.select.i397 = select i1 %cmp40.i, i32 0, i32 %sub.i395
  %sub44.i = sub i32 %288, %spec.store.select.i397
  br label %rgd_free.exit

rgd_free.exit:                                    ; preds = %if.end37.i, %if.then.i394, %land.rhs.i393.rgd_free.exit_crit_edge
  %retval.0.i398 = phi i32 [ %sub44.i, %if.end37.i ], [ 0, %if.then.i394 ], [ 0, %land.rhs.i393.rgd_free.exit_crit_edge ]
  %rd_free_clone = getelementptr inbounds %struct.gfs2_rgrpd, ptr %282, i32 0, i32 10
  %289 = ptrtoint ptr %rd_free_clone to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %rd_free_clone, align 8
  %rd_reserved = getelementptr inbounds %struct.gfs2_rgrpd, ptr %282, i32 0, i32 9
  %291 = ptrtoint ptr %rd_reserved to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %rd_reserved, align 4
  %sub = sub i32 %290, %292
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i398, i32 %target.0481)
  %cmp180 = icmp ult i32 %retval.0.i398, %target.0481
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %target.0481)
  %cmp183 = icmp ult i32 %sub, %target.0481
  %or.cond351 = select i1 %cmp180, i1 true, i1 %cmp183
  br i1 %or.cond351, label %if.then185, label %if.end187

if.then185:                                       ; preds = %rgd_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock(ptr noundef %rd_rsspin) #12
  br label %check_rgrp

if.end187:                                        ; preds = %rgd_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  %rd_reserved.le = getelementptr inbounds %struct.gfs2_rgrpd, ptr %282, i32 0, i32 9
  %293 = ptrtoint ptr %ap to i32
  call void @__asan_load8_noabort(i32 %293)
  %294 = load i64, ptr %ap, align 8
  %conv189 = trunc i64 %294 to i32
  %295 = call i32 @llvm.umin.i32(i32 %sub, i32 %conv189)
  %296 = ptrtoint ptr %rs_reserved to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %295, ptr %rs_reserved, align 4
  %297 = ptrtoint ptr %rd_reserved.le to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %rd_reserved.le, align 4
  %add = add i32 %298, %295
  store i32 %add, ptr %rd_reserved.le, align 4
  call void @_raw_spin_unlock(ptr noundef %rd_rsspin) #12
  %299 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %rs_rgd55, align 4
  %rd_mutex.i399 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %300, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %rd_mutex.i399) #12
  br label %cleanup242

check_rgrp:                                       ; preds = %if.then185, %if.end171.check_rgrp_crit_edge
  %301 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %rs_rgd55, align 4
  %rd_flags202 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %302, i32 0, i32 17
  %303 = ptrtoint ptr %rd_flags202 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %rd_flags202, align 8
  %and203 = and i32 %304, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %check_rgrp.skip_rgrp_crit_edge, label %if.then205

check_rgrp.skip_rgrp_crit_edge:                   ; preds = %check_rgrp
  call void @__sanitizer_cov_trace_pc() #14
  br label %skip_rgrp

if.then205:                                       ; preds = %check_rgrp
  %305 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %305)
  %306 = load i64, ptr %i_no_addr, align 8
  %rd_sbd.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %302, i32 0, i32 14
  %307 = ptrtoint ptr %rd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %rd_sbd.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gl.i) #12
  %309 = ptrtoint ptr %gl.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr inttoptr (i32 -1 to ptr), ptr %gl.i, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rbm.i400) #12
  %310 = ptrtoint ptr %rbm.i400 to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %302, ptr %rbm.i400, align 4
  %311 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 0, ptr %57, align 4
  %312 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 0, ptr %58, align 4
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end61.i.while.cond.outer.i_crit_edge, %if.then205
  %last_unlinked.1 = phi i64 [ %last_unlinked.0477, %if.then205 ], [ %add9.i.i414, %if.end61.i.while.cond.outer.i_crit_edge ]
  %found.0.ph.i = phi i32 [ 0, %if.then205 ], [ %found.1.i, %if.end61.i.while.cond.outer.i_crit_edge ]
  br label %while.cond.i402.outer

while.cond.i402.outer:                            ; preds = %if.end53.i.while.cond.i402.outer_crit_edge, %while.cond.outer.i
  %last_unlinked.2.ph = phi i64 [ %add9.i.i414, %if.end53.i.while.cond.i402.outer_crit_edge ], [ %last_unlinked.1, %while.cond.outer.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %last_unlinked.2.ph)
  %cmp47.not.i = icmp ne i64 %last_unlinked.2.ph, -1
  br label %while.cond.i402

while.cond.i402:                                  ; preds = %if.end46.i.while.cond.i402_crit_edge, %while.cond.i402.outer
  %call.i401 = call fastcc i32 @gfs2_rbm_find(ptr noundef nonnull %rbm.i400, i8 noundef zeroext 2, ptr noundef null, ptr noundef null, i1 noundef zeroext true) #12
  %313 = zext i32 %call.i401 to i64
  call void @__sanitizer_cov_trace_switch(i64 %313, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call.i401, label %land.rhs.i403 [
    i32 -28, label %while.cond.i402.while.end.i435_crit_edge
    i32 0, label %if.end41.critedge.i
  ]

while.cond.i402.while.end.i435_crit_edge:         ; preds = %while.cond.i402
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i435

land.rhs.i403:                                    ; preds = %while.cond.i402
  %.b84.i = load i1, ptr @try_rgrp_unlink.__already_done, align 1
  br i1 %.b84.i, label %land.rhs.i403.while.end.i435_crit_edge, label %if.then9.i, !prof !151

land.rhs.i403.while.end.i435_crit_edge:           ; preds = %land.rhs.i403
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i435

if.then9.i:                                       ; preds = %land.rhs.i403
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @try_rgrp_unlink.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1856, i32 noundef 9, ptr noundef null) #12
  br label %while.end.i435

if.end41.critedge.i:                              ; preds = %while.cond.i402
  %314 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %57, align 4
  %316 = ptrtoint ptr %rbm.i400 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %rbm.i400, align 4
  %rd_data.i.i404 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %317, i32 0, i32 5
  %318 = ptrtoint ptr %rd_data.i.i404 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %rd_data.i.i404, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %315, i32 %319)
  %cmp.not.i.i405 = icmp ult i32 %315, %319
  br i1 %cmp.not.i.i405, label %gfs2_rbm_to_block.exit.i417, label %do.body2.i.i406, !prof !151

do.body2.i.i406:                                  ; preds = %if.end41.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

gfs2_rbm_to_block.exit.i417:                      ; preds = %if.end41.critedge.i
  %rd_data0.i.i407 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %317, i32 0, i32 3
  %320 = ptrtoint ptr %rd_data0.i.i407 to i32
  call void @__asan_load8_noabort(i32 %320)
  %321 = load i64, ptr %rd_data0.i.i407, align 8
  %rd_bits.i.i.i408 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %317, i32 0, i32 13
  %322 = ptrtoint ptr %rd_bits.i.i.i408 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %rd_bits.i.i.i408, align 8
  %324 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %58, align 4
  %bi_start.i.i409 = getelementptr %struct.gfs2_bitmap, ptr %323, i32 %325, i32 4
  %326 = ptrtoint ptr %bi_start.i.i409 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %bi_start.i.i409, align 4
  %mul.i.i410 = shl i32 %327, 2
  %conv.i.i411 = zext i32 %mul.i.i410 to i64
  %conv8.i.i412 = zext i32 %315 to i64
  %add.i.i413 = add i64 %321, %conv8.i.i412
  %add9.i.i414 = add i64 %add.i.i413, %conv.i.i411
  %add.i415 = add i64 %add9.i.i414, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i415, i64 %321)
  %cmp.not.i.i.i416 = icmp ult i64 %add.i415, %321
  br i1 %cmp.not.i.i.i416, label %gfs2_rbm_to_block.exit.i417.while.end.i435_crit_edge, label %rgrp_contains_block.exit.i.i421

gfs2_rbm_to_block.exit.i417.while.end.i435_crit_edge: ; preds = %gfs2_rbm_to_block.exit.i417
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i435

rgrp_contains_block.exit.i.i421:                  ; preds = %gfs2_rbm_to_block.exit.i417
  %conv.i.i.i418 = zext i32 %319 to i64
  %add.i.i.i419 = add i64 %321, %conv.i.i.i418
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i419, i64 %add.i415)
  %cmp2.i.not.i.i420 = icmp ugt i64 %add.i.i.i419, %add.i415
  br i1 %cmp2.i.not.i.i420, label %if.end.i.i425, label %rgrp_contains_block.exit.i.i421.while.end.i435_crit_edge

rgrp_contains_block.exit.i.i421.while.end.i435_crit_edge: ; preds = %rgrp_contains_block.exit.i.i421
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i435

if.end.i.i425:                                    ; preds = %rgrp_contains_block.exit.i.i421
  %328 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 0, ptr %58, align 4
  %sub.i.i422 = sub i64 %add.i415, %321
  %conv.i87.i = trunc i64 %sub.i.i422 to i32
  %329 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %conv.i87.i, ptr %57, align 4
  %bi_blocks.i.i423 = getelementptr inbounds %struct.gfs2_bitmap, ptr %323, i32 0, i32 6
  %330 = ptrtoint ptr %bi_blocks.i.i423 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %bi_blocks.i.i423, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %331, i32 %conv.i87.i)
  %cmp.i.i424 = icmp ugt i32 %331, %conv.i87.i
  br i1 %cmp.i.i424, label %if.end.i.i425.if.end46.i_crit_edge, label %if.end6.i.i430

if.end.i.i425.if.end46.i_crit_edge:               ; preds = %if.end.i.i425
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

if.end6.i.i430:                                   ; preds = %if.end.i.i425
  call void @__sanitizer_cov_trace_pc() #14
  %add.i90.i = add i32 %conv.i87.i, 416
  %rd_sbd.i.i426 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %317, i32 0, i32 14
  %332 = ptrtoint ptr %rd_sbd.i.i426 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %rd_sbd.i.i426, align 4
  %sd_blocks_per_bitmap.i.i427 = getelementptr inbounds %struct.gfs2_sbd, ptr %333, i32 0, i32 16
  %334 = ptrtoint ptr %sd_blocks_per_bitmap.i.i427 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %sd_blocks_per_bitmap.i.i427, align 8
  %div.i.i428 = udiv i32 %add.i90.i, %335
  %336 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %div.i.i428, ptr %58, align 4
  %mul.i91.i = mul i32 %div.i.i428, %335
  %sub16.i.i429 = sub i32 %add.i90.i, %mul.i91.i
  %337 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %sub16.i.i429, ptr %57, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end6.i.i430, %if.end.i.i425.if.end46.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %add9.i.i414, i64 %last_unlinked.2.ph)
  %cmp48.not.i = icmp ule i64 %add9.i.i414, %last_unlinked.2.ph
  %or.cond.i431 = select i1 %cmp47.not.i, i1 %cmp48.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %add9.i.i414, i64 %306)
  %cmp51.i = icmp eq i64 %add9.i.i414, %306
  %or.cond86.i = select i1 %or.cond.i431, i1 true, i1 %cmp51.i
  br i1 %or.cond86.i, label %if.end46.i.while.cond.i402_crit_edge, label %if.end53.i

if.end46.i.while.cond.i402_crit_edge:             ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i402

if.end53.i:                                       ; preds = %if.end46.i
  %call54.i = call i32 @gfs2_glock_get(ptr noundef %308, i64 noundef %add9.i.i414, ptr noundef nonnull @gfs2_iopen_glops, i32 noundef 1, ptr noundef nonnull %gl.i) #12
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end53.i.while.cond.i402.outer_crit_edge

if.end53.i.while.cond.i402.outer_crit_edge:       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i402.outer

if.end57.i:                                       ; preds = %if.end53.i
  %338 = ptrtoint ptr %gl.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %gl.i, align 4
  %gl_object.i = getelementptr inbounds %struct.gfs2_glock, ptr %339, i32 0, i32 12
  %340 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %gl_object.i, align 4
  %tobool58.not.i = icmp eq ptr %341, null
  br i1 %tobool58.not.i, label %lor.lhs.false.i, label %if.end57.i.if.then60.i_crit_edge

if.end57.i.if.then60.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60.i

lor.lhs.false.i:                                  ; preds = %if.end57.i
  %call59.i = call zeroext i1 @gfs2_queue_delete_work(ptr noundef %339, i32 noundef 0) #12
  br i1 %call59.i, label %if.else.i432, label %lor.lhs.false.i.if.then60.i_crit_edge

lor.lhs.false.i.if.then60.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then60.i

if.then60.i:                                      ; preds = %lor.lhs.false.i.if.then60.i_crit_edge, %if.end57.i.if.then60.i_crit_edge
  %342 = ptrtoint ptr %gl.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %gl.i, align 4
  call void @gfs2_glock_put(ptr noundef %343) #12
  br label %if.end61.i

if.else.i432:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %found.0.ph.i, 1
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.else.i432, %if.then60.i
  %found.1.i = phi i32 [ %found.0.ph.i, %if.then60.i ], [ %inc.i, %if.else.i432 ]
  %cmp62.i = icmp sgt i32 %found.1.i, 4
  br i1 %cmp62.i, label %if.end61.i.try_rgrp_unlink.exit_crit_edge, label %if.end61.i.while.cond.outer.i_crit_edge

if.end61.i.while.cond.outer.i_crit_edge:          ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.i

if.end61.i.try_rgrp_unlink.exit_crit_edge:        ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %try_rgrp_unlink.exit

while.end.i435:                                   ; preds = %rgrp_contains_block.exit.i.i421.while.end.i435_crit_edge, %gfs2_rbm_to_block.exit.i417.while.end.i435_crit_edge, %if.then9.i, %land.rhs.i403.while.end.i435_crit_edge, %while.cond.i402.while.end.i435_crit_edge
  %344 = ptrtoint ptr %rd_flags202 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %rd_flags202, align 8
  %and.i434 = and i32 %345, -268435457
  store i32 %and.i434, ptr %rd_flags202, align 8
  br label %try_rgrp_unlink.exit

try_rgrp_unlink.exit:                             ; preds = %while.end.i435, %if.end61.i.try_rgrp_unlink.exit_crit_edge
  %last_unlinked.4 = phi i64 [ %last_unlinked.2.ph, %while.end.i435 ], [ %add9.i.i414, %if.end61.i.try_rgrp_unlink.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rbm.i400) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gl.i) #12
  br label %skip_rgrp

skip_rgrp:                                        ; preds = %try_rgrp_unlink.exit, %check_rgrp.skip_rgrp_crit_edge, %if.then161.skip_rgrp_crit_edge, %land.lhs.true149.skip_rgrp_crit_edge, %if.end143.skip_rgrp_crit_edge, %land.lhs.true115.skip_rgrp_crit_edge
  %tobool64.not449 = phi i1 [ true, %land.lhs.true115.skip_rgrp_crit_edge ], [ %tobool64.not450, %land.lhs.true149.skip_rgrp_crit_edge ], [ %tobool64.not450, %check_rgrp.skip_rgrp_crit_edge ], [ %tobool64.not450, %try_rgrp_unlink.exit ], [ %tobool64.not450, %if.then161.skip_rgrp_crit_edge ], [ %tobool64.not450, %if.end143.skip_rgrp_crit_edge ]
  %last_unlinked.5 = phi i64 [ %last_unlinked.0477, %land.lhs.true115.skip_rgrp_crit_edge ], [ %last_unlinked.0477, %land.lhs.true149.skip_rgrp_crit_edge ], [ %last_unlinked.0477, %check_rgrp.skip_rgrp_crit_edge ], [ %last_unlinked.4, %try_rgrp_unlink.exit ], [ %last_unlinked.0477, %if.then161.skip_rgrp_crit_edge ], [ %last_unlinked.0477, %if.end143.skip_rgrp_crit_edge ]
  %skip.4 = phi i32 [ 0, %land.lhs.true115.skip_rgrp_crit_edge ], [ %skip.3, %land.lhs.true149.skip_rgrp_crit_edge ], [ %skip.3, %check_rgrp.skip_rgrp_crit_edge ], [ %skip.3, %try_rgrp_unlink.exit ], [ %skip.3, %if.then161.skip_rgrp_crit_edge ], [ %skip.3, %if.end143.skip_rgrp_crit_edge ]
  %346 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %rs_rgd55, align 4
  %rd_mutex.i436 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %347, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %rd_mutex.i436) #12
  %348 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %i_res, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %349, i32 %12)
  %cmp.i437.not = icmp eq i32 %349, %12
  br i1 %cmp.i437.not, label %skip_rgrp.if.end211_crit_edge, label %if.then210

skip_rgrp.if.end211_crit_edge:                    ; preds = %skip_rgrp
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end211

if.then210:                                       ; preds = %skip_rgrp
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_rs_deltree(ptr noundef %i_res)
  br label %if.end211

if.end211:                                        ; preds = %if.then210, %skip_rgrp.if.end211_crit_edge
  br i1 %tobool64.not449, label %if.then213, label %if.end211.next_rgrp_crit_edge

if.end211.next_rgrp_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_rgrp

if.then213:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_glock_dq_uninit(ptr noundef %i_rgd_gh) #12
  br label %next_rgrp

next_rgrp:                                        ; preds = %if.then213, %if.end211.next_rgrp_crit_edge, %land.lhs.true90.next_rgrp_crit_edge, %fast_to_acquire.exit.next_rgrp_crit_edge, %land.lhs.true71
  %last_unlinked.6 = phi i64 [ %last_unlinked.5, %if.then213 ], [ %last_unlinked.5, %if.end211.next_rgrp_crit_edge ], [ %last_unlinked.0477, %fast_to_acquire.exit.next_rgrp_crit_edge ], [ %last_unlinked.0477, %land.lhs.true90.next_rgrp_crit_edge ], [ %last_unlinked.0477, %land.lhs.true71 ]
  %skip.5 = phi i32 [ %skip.4, %if.then213 ], [ %skip.4, %if.end211.next_rgrp_crit_edge ], [ 0, %fast_to_acquire.exit.next_rgrp_crit_edge ], [ 0, %land.lhs.true90.next_rgrp_crit_edge ], [ %dec, %land.lhs.true71 ]
  %350 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %rs_rgd55, align 4
  %rd_sbd.i438 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %351, i32 0, i32 14
  %352 = ptrtoint ptr %rd_sbd.i438 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %rd_sbd.i438, align 4
  %sd_rindex_spin.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %353, i32 0, i32 48
  call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i.i) #12
  %call.i.i439 = call ptr @rb_next(ptr noundef %351) #12
  %cmp.i.i440 = icmp eq ptr %call.i.i439, null
  br i1 %cmp.i.i440, label %if.then.i.i441, label %next_rgrp.gfs2_rgrpd_get_next.exit.i_crit_edge

next_rgrp.gfs2_rgrpd_get_next.exit.i_crit_edge:   ; preds = %next_rgrp
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_rgrpd_get_next.exit.i

if.then.i.i441:                                   ; preds = %next_rgrp
  call void @__sanitizer_cov_trace_pc() #14
  %sd_rindex_tree.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %353, i32 0, i32 49
  %call1.i.i = call ptr @rb_first(ptr noundef %sd_rindex_tree.i.i) #12
  br label %gfs2_rgrpd_get_next.exit.i

gfs2_rgrpd_get_next.exit.i:                       ; preds = %if.then.i.i441, %next_rgrp.gfs2_rgrpd_get_next.exit.i_crit_edge
  %n.0.i.i = phi ptr [ %call1.i.i, %if.then.i.i441 ], [ %call.i.i439, %next_rgrp.gfs2_rgrpd_get_next.exit.i_crit_edge ]
  %cmp3.i.i442 = icmp eq ptr %n.0.i.i, %351
  call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i.i) #12
  %cmp14.i = icmp eq ptr %n.0.i.i, null
  %cmp.i443 = or i1 %cmp3.i.i442, %cmp14.i
  br i1 %cmp.i443, label %if.then.i444, label %gfs2_rgrpd_get_next.exit.i.gfs2_select_rgrp.exit_crit_edge

gfs2_rgrpd_get_next.exit.i.gfs2_select_rgrp.exit_crit_edge: ; preds = %gfs2_rgrpd_get_next.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_select_rgrp.exit

if.then.i444:                                     ; preds = %gfs2_rgrpd_get_next.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i.i) #12
  %sd_rindex_tree.i12.i = getelementptr inbounds %struct.gfs2_sbd, ptr %353, i32 0, i32 49
  %call.i13.i = call ptr @rb_first(ptr noundef %sd_rindex_tree.i12.i) #12
  call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i.i) #12
  br label %gfs2_select_rgrp.exit

gfs2_select_rgrp.exit:                            ; preds = %if.then.i444, %gfs2_rgrpd_get_next.exit.i.gfs2_select_rgrp.exit_crit_edge
  %rgd.0.i = phi ptr [ %call.i13.i, %if.then.i444 ], [ %n.0.i.i, %gfs2_rgrpd_get_next.exit.i.gfs2_select_rgrp.exit_crit_edge ]
  %354 = ptrtoint ptr %rs_rgd55 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %rgd.0.i, ptr %rs_rgd55, align 4
  %cmp2.not.i.not = icmp eq ptr %rgd.0.i, %begin.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip.5)
  %tobool220.not = icmp eq i32 %skip.5, 0
  %or.cond354 = select i1 %cmp2.not.i.not, i1 %tobool220.not, i1 false
  br i1 %or.cond354, label %if.end222, label %gfs2_select_rgrp.exit.cleanup_crit_edge

gfs2_select_rgrp.exit.cleanup_crit_edge:          ; preds = %gfs2_select_rgrp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end222:                                        ; preds = %gfs2_select_rgrp.exit
  %inc = add i32 %loops.0482, 1
  %355 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %sd_rindex, align 4
  %cmp224 = icmp eq ptr %356, %ip
  br i1 %cmp224, label %land.lhs.true226, label %if.end222.if.end233_crit_edge

if.end222.if.end233_crit_edge:                    ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end233

land.lhs.true226:                                 ; preds = %if.end222
  %357 = ptrtoint ptr %sd_rindex_uptodate to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %sd_rindex_uptodate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %tobool227.not = icmp eq i32 %358, 0
  br i1 %tobool227.not, label %if.then228, label %land.lhs.true226.if.end233_crit_edge

land.lhs.true226.if.end233_crit_edge:             ; preds = %land.lhs.true226
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end233

if.then228:                                       ; preds = %land.lhs.true226
  %call229 = call fastcc i32 @gfs2_ri_update(ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.then228.if.end233_crit_edge, label %if.then228.cleanup242_crit_edge

if.then228.cleanup242_crit_edge:                  ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup242

if.then228.if.end233_crit_edge:                   ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end233

if.end233:                                        ; preds = %if.then228.if.end233_crit_edge, %land.lhs.true226.if.end233_crit_edge, %if.end222.if.end233_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp234 = icmp eq i32 %inc, 2
  br i1 %cmp234, label %if.then236, label %if.end233.cleanup_crit_edge

if.end233.cleanup_crit_edge:                      ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then236:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #14
  %359 = ptrtoint ptr %min_target to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %min_target, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %tobool237.not = icmp eq i32 %360, 0
  %spec.select353 = select i1 %tobool237.not, i32 %target.0481, i32 %360
  call void @gfs2_log_flush(ptr noundef %3, ptr noundef null, i32 noundef 524290) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then236, %if.end233.cleanup_crit_edge, %gfs2_select_rgrp.exit.cleanup_crit_edge
  %target.3 = phi i32 [ %target.0481, %gfs2_select_rgrp.exit.cleanup_crit_edge ], [ %spec.select353, %if.then236 ], [ %target.0481, %if.end233.cleanup_crit_edge ]
  %loops.1 = phi i32 [ %loops.0482, %gfs2_select_rgrp.exit.cleanup_crit_edge ], [ 2, %if.then236 ], [ %inc, %if.end233.cleanup_crit_edge ]
  %skip.6 = phi i32 [ %skip.5, %gfs2_select_rgrp.exit.cleanup_crit_edge ], [ 0, %if.then236 ], [ 0, %if.end233.cleanup_crit_edge ]
  %cmp60 = icmp slt i32 %loops.1, 3
  br i1 %cmp60, label %cleanup.while.body_crit_edge, label %cleanup.cleanup242_crit_edge

cleanup.cleanup242_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup242

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup242:                                       ; preds = %cleanup.cleanup242_crit_edge, %if.then228.cleanup242_crit_edge, %if.end187, %if.then138, %gfs2_glock_nq_init.exit, %if.end54.cleanup242_crit_edge, %if.then23
  %retval.2 = phi i32 [ -22, %if.then23 ], [ -57, %if.end54.cleanup242_crit_edge ], [ %call.i, %gfs2_glock_nq_init.exit ], [ %call2.i, %if.then138 ], [ 0, %if.end187 ], [ %call229, %if.then228.cleanup242_crit_edge ], [ -28, %cleanup.cleanup242_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @gfs2_rgrp_congested(ptr nocapture noundef readonly %rgd, i32 noundef %loops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 1
  %0 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_gl, align 4
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ln_sbd, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %7, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call400 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call400, i32 %8)
  %cmp401 = icmp ult i32 %call400, %8
  br i1 %cmp401, label %do.body1.lr.ph, label %entry.do.body10_crit_edge

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10

do.body1.lr.ph:                                   ; preds = %entry
  %sd_lkstats = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %sd_lkstats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_lkstats, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %do.body1.lr.ph
  %call404 = phi i32 [ %call400, %do.body1.lr.ph ], [ %call, %do.body1.do.body1_crit_edge ]
  %nonzero.0403 = phi i32 [ 0, %do.body1.lr.ph ], [ %nonzero.1, %do.body1.do.body1_crit_edge ]
  %a_srttb.0402 = phi i64 [ 0, %do.body1.lr.ph ], [ %add9, %do.body1.do.body1_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call404
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add = add i32 %13, %11
  %14 = inttoptr i32 %add to ptr
  %arrayidx6 = getelementptr [10 x %struct.gfs2_lkstats], ptr %14, i32 0, i32 3, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not = icmp ne i64 %16, 0
  %add9 = add i64 %16, %a_srttb.0402
  %inc = zext i1 %tobool.not to i32
  %nonzero.1 = add i32 %nonzero.0403, %inc
  %call = tail call i32 @cpumask_next(i32 noundef %call404, ptr noundef nonnull @__cpu_present_mask) #18
  %cmp = icmp ult i32 %call, %8
  br i1 %cmp, label %do.body1.do.body1_crit_edge, label %do.body1.do.body10_crit_edge

do.body1.do.body10_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

do.body10:                                        ; preds = %do.body1.do.body10_crit_edge, %entry.do.body10_crit_edge
  %a_srttb.0.lcssa = phi i64 [ 0, %entry.do.body10_crit_edge ], [ %add9, %do.body1.do.body10_crit_edge ]
  %nonzero.0.lcssa = phi i32 [ 0, %entry.do.body10_crit_edge ], [ %nonzero.1, %do.body1.do.body10_crit_edge ]
  %sd_lkstats16 = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %sd_lkstats16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sd_lkstats16, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i to ptr
  %cpu19 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu19, align 4
  %arrayidx20 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx20, align 4
  %add21 = add i32 %25, %19
  %26 = inttoptr i32 %add21 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonzero.0.lcssa)
  %tobool24.not = icmp eq i32 %nonzero.0.lcssa, 0
  br i1 %tobool24.not, label %do.body10.if.end212_crit_edge, label %if.else194

do.body10.if.end212_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end212

if.else194:                                       ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %a_srttb.0.lcssa)
  %cmp196 = icmp ult i64 %a_srttb.0.lcssa, 4294967296
  br i1 %cmp196, label %if.then200, label %if.else206, !prof !151

if.then200:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #14
  %conv201 = trunc i64 %a_srttb.0.lcssa to i32
  %div204 = udiv i32 %conv201, %nonzero.0.lcssa
  %conv205 = zext i32 %div204 to i64
  br label %if.end212

if.else206:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #14
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %nonzero.0.lcssa, i64 %a_srttb.0.lcssa) #17, !srcloc !173
  %asmresult1.i = extractvalue { i64, i64 } %27, 1
  br label %if.end212

if.end212:                                        ; preds = %if.else206, %if.then200, %do.body10.if.end212_crit_edge
  %a_srttb.2 = phi i64 [ %a_srttb.0.lcssa, %do.body10.if.end212_crit_edge ], [ %conv205, %if.then200 ], [ %asmresult1.i, %if.else206 ]
  %arrayidx214 = getelementptr [10 x %struct.gfs2_lkstats], ptr %26, i32 0, i32 3, i32 0, i32 6
  %28 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx214, align 8
  %arrayidx216 = getelementptr [10 x %struct.gfs2_lkstats], ptr %26, i32 0, i32 3, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx216, align 8
  %arrayidx218 = getelementptr %struct.gfs2_glock, ptr %1, i32 0, i32 9, i32 0, i32 3
  %32 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx218, align 8
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !174
  %34 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i371 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i371 to ptr
  %preempt_count.i.i372 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i372 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i372, align 4
  %sub.i = add i32 %37, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i372, align 4
  %arrayidx228 = getelementptr %struct.gfs2_glock, ptr %1, i32 0, i32 9, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx228, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp229 = icmp eq i64 %39, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %cmp231 = icmp eq i64 %29, 0
  %or.cond = select i1 %cmp229, i1 true, i1 %cmp231
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %a_srttb.2)
  %cmp234 = icmp eq i64 %a_srttb.2, 0
  %or.cond399 = select i1 %or.cond, i1 true, i1 %cmp234
  br i1 %or.cond399, label %if.end212.cleanup_crit_edge, label %if.end237

if.end212.cleanup_crit_edge:                      ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end237:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx225 = getelementptr %struct.gfs2_glock, ptr %1, i32 0, i32 9, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx225, align 8
  %add219 = add i64 %33, %31
  %sub238 = sub i64 %a_srttb.2, %41
  %mul239 = mul i64 %sub238, %sub238
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %39)
  %cmp241 = icmp ult i64 %39, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %29)
  %cmp244 = icmp ult i64 %29, 8
  %or.cond370 = select i1 %cmp241, i1 true, i1 %cmp244
  %var.0.v = select i1 %or.cond370, i64 2, i64 1
  %var.0 = shl i64 %add219, %var.0.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %loops)
  %cmp249 = icmp eq i32 %loops, 1
  %mul252 = zext i1 %cmp249 to i64
  %var.1 = shl i64 %var.0, %mul252
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub238)
  %cmp254 = icmp slt i64 %sub238, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %mul239, i64 %var.1)
  %cmp256 = icmp ugt i64 %mul239, %var.1
  %42 = select i1 %cmp254, i1 %cmp256, i1 false
  br label %cleanup

cleanup:                                          ; preds = %if.end237, %if.end212.cleanup_crit_edge
  %retval.0 = phi i1 [ %42, %if.end237 ], [ false, %if.end212.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_instantiate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_inplace_release(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rs_reserved = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 4
  %0 = ptrtoint ptr %rs_reserved to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rs_reserved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then:                                          ; preds = %entry
  %rs_rgd = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %rs_rgd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rs_rgd, align 4
  %rd_rsspin = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %rd_rsspin) #12
  %rd_reserved = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %rd_reserved to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd_reserved, align 4
  %6 = ptrtoint ptr %rs_reserved to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rs_reserved, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %if.then4, label %do.end10, !prof !149

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd_gl, align 4
  tail call void @gfs2_dump_glock(ptr noundef null, ptr noundef %9, i1 noundef zeroext true) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2210, 0\0A.popsection", ""() #12, !srcloc !175
  unreachable

do.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %5, %7
  %10 = ptrtoint ptr %rd_reserved to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %rd_reserved, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rd_rsspin) #12
  %11 = ptrtoint ptr %rs_reserved to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rs_reserved, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end10, %entry.if.end15_crit_edge
  %gh_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gh_gl.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %if.end15.if.end18_crit_edge, label %if.then16

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then16:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %i_rgd_gh = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 9
  tail call void @gfs2_glock_dq_uninit(ptr noundef %i_rgd_gh) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end15.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_rgrp_dump(ptr noundef %seq, ptr noundef %rgd, ptr noundef %fs_id_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_rsspin = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %rd_rsspin) #12
  %rd_addr = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 2
  %0 = ptrtoint ptr %rd_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rd_addr, align 8
  %rd_flags = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 17
  %2 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_flags, align 8
  %rd_free = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 7
  %4 = ptrtoint ptr %rd_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd_free, align 4
  %rd_free_clone = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 10
  %6 = ptrtoint ptr %rd_free_clone to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_free_clone, align 8
  %rd_dinodes = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 11
  %8 = ptrtoint ptr %rd_dinodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_dinodes, align 4
  %rd_requested = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 8
  %10 = ptrtoint ptr %rd_requested to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rd_requested, align 8
  %rd_reserved = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 9
  %12 = ptrtoint ptr %rd_reserved to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rd_reserved, align 4
  %rd_extfail_pt = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 18
  %14 = ptrtoint ptr %rd_extfail_pt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rd_extfail_pt, align 4
  tail call void (ptr, ptr, ...) @gfs2_print_dbg(ptr noundef %seq, ptr noundef nonnull @.str.8, ptr noundef %fs_id_buf, i64 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15) #12
  %rd_sbd = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 14
  %16 = ptrtoint ptr %rd_sbd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rd_sbd, align 4
  %ar_rgrplvb = getelementptr inbounds %struct.gfs2_sbd, ptr %17, i32 0, i32 21, i32 3
  %18 = ptrtoint ptr %ar_rgrplvb to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %ar_rgrplvb, align 4
  %19 = and i32 %bf.load, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rd_rgl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 15
  %20 = ptrtoint ptr %rd_rgl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rd_rgl, align 8
  %rl_flags = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %rl_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rl_flags, align 4
  %rl_free = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %rl_free to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rl_free, align 8
  %rl_dinodes = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %21, i32 0, i32 3
  %26 = ptrtoint ptr %rl_dinodes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rl_dinodes, align 4
  tail call void (ptr, ptr, ...) @gfs2_print_dbg(ptr noundef %seq, ptr noundef nonnull @.str.9, ptr noundef %fs_id_buf, i32 noundef %23, i32 noundef %25, i32 noundef %27) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rd_rstree = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 21
  %call = tail call ptr @rb_first(ptr noundef %rd_rstree) #12
  %tobool1.not24 = icmp eq ptr %call, null
  br i1 %tobool1.not24, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %n.025 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %if.end.for.body_crit_edge ]
  %i_no_addr.i = getelementptr i8, ptr %n.025, i32 -112
  %28 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_no_addr.i, align 8
  %rs_start.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %n.025, i32 0, i32 2
  %30 = ptrtoint ptr %rs_start.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rs_start.i, align 8
  %rs_requested.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %n.025, i32 0, i32 3
  %32 = ptrtoint ptr %rs_requested.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rs_requested.i, align 8
  tail call void (ptr, ptr, ...) @gfs2_print_dbg(ptr noundef %seq, ptr noundef nonnull @.str.43, ptr noundef %fs_id_buf, i64 noundef %29, i64 noundef %31, i32 noundef %33) #12
  %call2 = tail call ptr @rb_next(ptr noundef nonnull %n.025) #12
  %tobool1.not = icmp eq ptr %call2, null
  br i1 %tobool1.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rd_rsspin) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_print_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_alloc_blocks(ptr noundef %ip, ptr nocapture noundef writeonly %bn, ptr nocapture noundef %nblocks, i1 noundef zeroext %dinode, ptr nocapture noundef writeonly %generation) local_unnamed_addr #0 align 64 {
entry:
  %fs_id_buf.i = alloca [277 x i8], align 1
  %pos.i = alloca %struct.gfs2_rbm, align 4
  %dibh = alloca ptr, align 4
  %rbm = alloca %struct.gfs2_rbm, align 4
  %minext = alloca i32, align 4
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
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rbm) #12
  %5 = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 1
  %6 = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 2
  %i_res = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10
  %rs_rgd = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %rs_rgd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rs_rgd, align 4
  %9 = ptrtoint ptr %rbm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %rbm, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %5, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minext) #12
  %12 = ptrtoint ptr %minext to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %minext, align 4
  %rs_reserved = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 4
  %13 = ptrtoint ptr %rs_reserved to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rs_reserved, align 4
  %15 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nblocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp = icmp ult i32 %14, %16
  br i1 %cmp, label %do.body3, label %do.end8, !prof !149

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2428, 0\0A.popsection", ""() #12, !srcloc !176
  unreachable

do.end8:                                          ; preds = %entry
  %rd_mutex.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %8, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rd_mutex.i, i32 noundef 0) #12
  %17 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_res, align 8
  %19 = ptrtoint ptr %i_res to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %19)
  %cmp.i.not = icmp eq i32 %18, %19
  br i1 %cmp.i.not, label %do.end8.if.then18_crit_edge, label %if.end9.i

do.end8.if.then18_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.end9.i:                                        ; preds = %do.end8
  %rs_start.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %rs_start.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rs_start.i, align 8
  %22 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rbm, align 4
  %rd_data0.i.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %rd_data0.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rd_data0.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %25)
  %cmp.not.i.i.i = icmp ult i64 %21, %25
  br i1 %cmp.not.i.i.i, label %if.end9.i.land.rhs.i_crit_edge, label %rgrp_contains_block.exit.i.i

if.end9.i.land.rhs.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

rgrp_contains_block.exit.i.i:                     ; preds = %if.end9.i
  %rd_data.i.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %rd_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rd_data.i.i.i, align 4
  %conv.i.i.i = zext i32 %27 to i64
  %add.i.i.i = add i64 %25, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %21)
  %cmp2.i.not.i.i = icmp ugt i64 %add.i.i.i, %21
  br i1 %cmp2.i.not.i.i, label %if.end.i.i, label %rgrp_contains_block.exit.i.i.land.rhs.i_crit_edge

rgrp_contains_block.exit.i.i.land.rhs.i_crit_edge: ; preds = %rgrp_contains_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rgrp_contains_block.exit.i.i
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %6, align 4
  %sub.i.i = sub i64 %21, %25
  %conv.i66.i = trunc i64 %sub.i.i to i32
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i66.i, ptr %5, align 4
  %rd_bits.i.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %23, i32 0, i32 13
  %30 = ptrtoint ptr %rd_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rd_bits.i.i.i, align 8
  %bi_blocks.i.i = getelementptr inbounds %struct.gfs2_bitmap, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %bi_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bi_blocks.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv.i66.i)
  %cmp.i67.i = icmp ugt i32 %33, %conv.i66.i
  br i1 %cmp.i67.i, label %if.end.i.i.if.end16_crit_edge, label %if.end6.i.i

if.end.i.i.if.end16_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i68.i = add i32 %conv.i66.i, 416
  %rd_sbd.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %23, i32 0, i32 14
  %34 = ptrtoint ptr %rd_sbd.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rd_sbd.i.i, align 4
  %sd_blocks_per_bitmap.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %sd_blocks_per_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sd_blocks_per_bitmap.i.i, align 8
  %div.i.i = udiv i32 %add.i68.i, %37
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div.i.i, ptr %6, align 4
  %mul.i.i = mul i32 %div.i.i, %37
  %sub16.i.i = sub i32 %add.i68.i, %mul.i.i
  br label %if.end16.sink.split

land.rhs.i:                                       ; preds = %rgrp_contains_block.exit.i.i.land.rhs.i_crit_edge, %if.end9.i.land.rhs.i_crit_edge
  %.b64.i = load i1, ptr @gfs2_set_alloc_start.__already_done, align 1
  br i1 %.b64.i, label %land.rhs.i.if.then52.i_crit_edge, label %if.then21.i, !prof !151

land.rhs.i.if.then52.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52.i

if.then21.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gfs2_set_alloc_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2401, i32 noundef 9, ptr noundef null) #12
  br label %if.then52.i

if.then52.i:                                      ; preds = %if.then21.i, %land.rhs.i.if.then52.i_crit_edge
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %6, align 4
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then52.i, %if.end6.i.i
  %.sink = phi i32 [ 0, %if.then52.i ], [ %sub16.i.i, %if.end6.i.i ]
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %5, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.end.i.i.if.end16_crit_edge
  %call15 = call fastcc i32 @gfs2_rbm_find(ptr noundef nonnull %rbm, i8 noundef zeroext 0, ptr noundef nonnull %minext, ptr noundef %i_res, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call15)
  %cmp17 = icmp eq i32 %call15, -28
  br i1 %cmp17, label %if.end16.if.then18_crit_edge, label %if.end16.if.end21_crit_edge

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %do.end8.if.then18_crit_edge
  %41 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_res, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %19)
  %cmp.i.not.i247 = icmp eq i32 %42, %19
  br i1 %cmp.i.not.i247, label %if.else.i250, label %if.then.i249

if.then.i249:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %rs_start.i248 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 2
  %43 = ptrtoint ptr %rs_start.i248 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rs_start.i248, align 8
  br label %if.end9.i268

if.else.i250:                                     ; preds = %if.then18
  br i1 %dinode, label %if.else.i250.if.else6.i264_crit_edge, label %land.lhs.true.i254

if.else.i250.if.else6.i264_crit_edge:             ; preds = %if.else.i250
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else6.i264

land.lhs.true.i254:                               ; preds = %if.else.i250
  %45 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rbm, align 4
  %i_goal.i251 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 11
  %47 = ptrtoint ptr %i_goal.i251 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_goal.i251, align 8
  %rd_data0.i.i252 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %46, i32 0, i32 3
  %49 = ptrtoint ptr %rd_data0.i.i252 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %rd_data0.i.i252, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %48)
  %cmp.not.i.i253 = icmp ugt i64 %50, %48
  br i1 %cmp.not.i.i253, label %land.lhs.true.i254.if.else6.i264_crit_edge, label %rgrp_contains_block.exit.i259

land.lhs.true.i254.if.else6.i264_crit_edge:       ; preds = %land.lhs.true.i254
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else6.i264

rgrp_contains_block.exit.i259:                    ; preds = %land.lhs.true.i254
  %rd_data.i.i255 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %46, i32 0, i32 5
  %51 = ptrtoint ptr %rd_data.i.i255 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rd_data.i.i255, align 4
  %conv.i.i256 = zext i32 %52 to i64
  %add.i.i257 = add i64 %50, %conv.i.i256
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i257, i64 %48)
  %cmp2.i.not.i258 = icmp ugt i64 %add.i.i257, %48
  br i1 %cmp2.i.not.i258, label %rgrp_contains_block.exit.i259.if.end9.i268_crit_edge, label %rgrp_contains_block.exit.i259.if.else6.i264_crit_edge

rgrp_contains_block.exit.i259.if.else6.i264_crit_edge: ; preds = %rgrp_contains_block.exit.i259
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else6.i264

rgrp_contains_block.exit.i259.if.end9.i268_crit_edge: ; preds = %rgrp_contains_block.exit.i259
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i268

if.else6.i264:                                    ; preds = %rgrp_contains_block.exit.i259.if.else6.i264_crit_edge, %land.lhs.true.i254.if.else6.i264_crit_edge, %if.else.i250.if.else6.i264_crit_edge
  %53 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rbm, align 4
  %rd_last_alloc.i260 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %rd_last_alloc.i260 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rd_last_alloc.i260, align 4
  %conv.i261 = zext i32 %56 to i64
  %rd_data0.i262 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %54, i32 0, i32 3
  %57 = ptrtoint ptr %rd_data0.i262 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rd_data0.i262, align 8
  %add.i263 = add i64 %58, %conv.i261
  br label %if.end9.i268

if.end9.i268:                                     ; preds = %if.else6.i264, %rgrp_contains_block.exit.i259.if.end9.i268_crit_edge, %if.then.i249
  %goal.0.i265 = phi i64 [ %44, %if.then.i249 ], [ %add.i263, %if.else6.i264 ], [ %48, %rgrp_contains_block.exit.i259.if.end9.i268_crit_edge ]
  %59 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rbm, align 4
  %rd_data0.i.i.i266 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %rd_data0.i.i.i266 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %rd_data0.i.i.i266, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %goal.0.i265, i64 %62)
  %cmp.not.i.i.i267 = icmp ult i64 %goal.0.i265, %62
  br i1 %cmp.not.i.i.i267, label %if.end9.i268.land.rhs.i291_crit_edge, label %rgrp_contains_block.exit.i.i273

if.end9.i268.land.rhs.i291_crit_edge:             ; preds = %if.end9.i268
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i291

rgrp_contains_block.exit.i.i273:                  ; preds = %if.end9.i268
  %rd_data.i.i.i269 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %60, i32 0, i32 5
  %63 = ptrtoint ptr %rd_data.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rd_data.i.i.i269, align 4
  %conv.i.i.i270 = zext i32 %64 to i64
  %add.i.i.i271 = add i64 %62, %conv.i.i.i270
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i271, i64 %goal.0.i265)
  %cmp2.i.not.i.i272 = icmp ugt i64 %add.i.i.i271, %goal.0.i265
  br i1 %cmp2.i.not.i.i272, label %if.end.i.i281, label %rgrp_contains_block.exit.i.i273.land.rhs.i291_crit_edge

rgrp_contains_block.exit.i.i273.land.rhs.i291_crit_edge: ; preds = %rgrp_contains_block.exit.i.i273
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i291

if.end.i.i281:                                    ; preds = %rgrp_contains_block.exit.i.i273
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %6, align 4
  %sub.i.i275 = sub i64 %goal.0.i265, %62
  %conv.i66.i276 = trunc i64 %sub.i.i275 to i32
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conv.i66.i276, ptr %5, align 4
  %rd_bits.i.i.i278 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %60, i32 0, i32 13
  %67 = ptrtoint ptr %rd_bits.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rd_bits.i.i.i278, align 8
  %bi_blocks.i.i279 = getelementptr inbounds %struct.gfs2_bitmap, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %bi_blocks.i.i279 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bi_blocks.i.i279, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %conv.i66.i276)
  %cmp.i67.i280 = icmp ugt i32 %70, %conv.i66.i276
  br i1 %cmp.i67.i280, label %if.end.i.i281.gfs2_set_alloc_start.exit296_crit_edge, label %if.end6.i.i289

if.end.i.i281.gfs2_set_alloc_start.exit296_crit_edge: ; preds = %if.end.i.i281
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_set_alloc_start.exit296

if.end6.i.i289:                                   ; preds = %if.end.i.i281
  call void @__sanitizer_cov_trace_pc() #14
  %add.i68.i282 = add i32 %conv.i66.i276, 416
  %rd_sbd.i.i283 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %60, i32 0, i32 14
  %71 = ptrtoint ptr %rd_sbd.i.i283 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rd_sbd.i.i283, align 4
  %sd_blocks_per_bitmap.i.i284 = getelementptr inbounds %struct.gfs2_sbd, ptr %72, i32 0, i32 16
  %73 = ptrtoint ptr %sd_blocks_per_bitmap.i.i284 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sd_blocks_per_bitmap.i.i284, align 8
  %div.i.i285 = udiv i32 %add.i68.i282, %74
  %75 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %div.i.i285, ptr %6, align 4
  %mul.i.i287 = mul i32 %div.i.i285, %74
  %sub16.i.i288 = sub i32 %add.i68.i282, %mul.i.i287
  br label %gfs2_set_alloc_start.exit296.sink.split

land.rhs.i291:                                    ; preds = %rgrp_contains_block.exit.i.i273.land.rhs.i291_crit_edge, %if.end9.i268.land.rhs.i291_crit_edge
  %.b64.i290 = load i1, ptr @gfs2_set_alloc_start.__already_done, align 1
  br i1 %.b64.i290, label %land.rhs.i291.if.then52.i295_crit_edge, label %if.then21.i292, !prof !151

land.rhs.i291.if.then52.i295_crit_edge:           ; preds = %land.rhs.i291
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then52.i295

if.then21.i292:                                   ; preds = %land.rhs.i291
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gfs2_set_alloc_start.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2401, i32 noundef 9, ptr noundef null) #12
  br label %if.then52.i295

if.then52.i295:                                   ; preds = %if.then21.i292, %land.rhs.i291.if.then52.i295_crit_edge
  %76 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %6, align 4
  br label %gfs2_set_alloc_start.exit296.sink.split

gfs2_set_alloc_start.exit296.sink.split:          ; preds = %if.then52.i295, %if.end6.i.i289
  %sub16.i.i288.sink = phi i32 [ %sub16.i.i288, %if.end6.i.i289 ], [ 0, %if.then52.i295 ]
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub16.i.i288.sink, ptr %5, align 4
  br label %gfs2_set_alloc_start.exit296

gfs2_set_alloc_start.exit296:                     ; preds = %gfs2_set_alloc_start.exit296.sink.split, %if.end.i.i281.gfs2_set_alloc_start.exit296_crit_edge
  %call20 = call fastcc i32 @gfs2_rbm_find(ptr noundef nonnull %rbm, i8 noundef zeroext 0, ptr noundef nonnull %minext, ptr noundef null, i1 noundef zeroext false)
  br label %if.end21

if.end21:                                         ; preds = %gfs2_set_alloc_start.exit296, %if.end16.if.end21_crit_edge
  %error.1 = phi i32 [ %call20, %gfs2_set_alloc_start.exit296 ], [ %call15, %if.end16.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool22.not = icmp eq i32 %error.1, 0
  br i1 %tobool22.not, label %if.end31, label %do.end26

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %78 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %i_no_addr, align 8
  %80 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %nblocks, align 4
  %82 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rbm, align 4
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %83, i32 0, i32 13
  %84 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rd_bits, align 8
  %bi_flags = getelementptr inbounds %struct.gfs2_bitmap, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %bi_flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %bi_flags, align 4
  %shr.i = lshr i32 %87, 1
  %and1.i = and i32 %shr.i, 1
  %rd_extfail_pt = getelementptr inbounds %struct.gfs2_rgrpd, ptr %83, i32 0, i32 18
  %88 = ptrtoint ptr %rd_extfail_pt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rd_extfail_pt, align 4
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %sd_fsname, i64 noundef %79, i32 noundef %error.1, i32 noundef %81, i32 noundef %and1.i, i32 noundef %89) #16
  br label %rgrp_error

if.end31:                                         ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pos.i) #12
  %90 = getelementptr inbounds %struct.gfs2_rbm, ptr %pos.i, i32 0, i32 1
  %91 = getelementptr inbounds %struct.gfs2_rbm, ptr %pos.i, i32 0, i32 2
  %92 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rbm, align 4
  %94 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %pos.i, align 4
  %95 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nblocks, align 4
  store i32 1, ptr %nblocks, align 4
  %97 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %5, align 4
  %rd_data.i.i298 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %93, i32 0, i32 5
  %99 = ptrtoint ptr %rd_data.i.i298 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rd_data.i.i298, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp.not.i.i299 = icmp ult i32 %98, %100
  br i1 %cmp.not.i.i299, label %gfs2_rbm_to_block.exit.i, label %do.body2.i.i, !prof !151

do.body2.i.i:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

gfs2_rbm_to_block.exit.i:                         ; preds = %if.end31
  %rd_data0.i.i300 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %93, i32 0, i32 3
  %101 = ptrtoint ptr %rd_data0.i.i300 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %rd_data0.i.i300, align 8
  %rd_bits.i.i.i301 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %93, i32 0, i32 13
  %103 = ptrtoint ptr %rd_bits.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rd_bits.i.i.i301, align 8
  %105 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %6, align 4
  %bi_start.i.i = getelementptr %struct.gfs2_bitmap, ptr %104, i32 %106, i32 4
  %107 = ptrtoint ptr %bi_start.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bi_start.i.i, align 4
  %rd_gl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %93, i32 0, i32 1
  %109 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rd_gl.i, align 4
  %add.ptr.i.i = getelementptr %struct.gfs2_bitmap, ptr %104, i32 %106
  %111 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr.i.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %110, ptr noundef %112) #12
  %conv.i302 = select i1 %dinode, i8 3, i8 1
  call fastcc void @gfs2_setbit(ptr noundef nonnull %rbm, i1 noundef zeroext true, i8 noundef zeroext %conv.i302) #12
  %113 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nblocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %96)
  %cmp46.i = icmp ult i32 %114, %96
  br i1 %cmp46.i, label %while.body.lr.ph.i, label %gfs2_rbm_to_block.exit.i.gfs2_alloc_extent.exit_crit_edge

gfs2_rbm_to_block.exit.i.gfs2_alloc_extent.exit_crit_edge: ; preds = %gfs2_rbm_to_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_alloc_extent.exit

while.body.lr.ph.i:                               ; preds = %gfs2_rbm_to_block.exit.i
  %conv8.i.i = zext i32 %98 to i64
  %add.i.i305 = add i64 %102, %conv8.i.i
  %mul.i.i306 = shl i32 %108, 2
  %conv.i.i307 = zext i32 %mul.i.i306 to i64
  %add9.i.i = add i64 %add.i.i305, %conv.i.i307
  %rd_sbd.i.i308 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %93, i32 0, i32 14
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %block.047.in.i = phi i64 [ %add9.i.i, %while.body.lr.ph.i ], [ %block.047.i, %if.end.i.while.body.i_crit_edge ]
  %block.047.i = add i64 %block.047.in.i, 1
  %115 = ptrtoint ptr %rd_data0.i.i300 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %rd_data0.i.i300, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %block.047.i, i64 %116)
  %cmp.not.i.i.i309 = icmp ult i64 %block.047.i, %116
  br i1 %cmp.not.i.i.i309, label %while.body.i.gfs2_alloc_extent.exit_crit_edge, label %rgrp_contains_block.exit.i.i313

while.body.i.gfs2_alloc_extent.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_alloc_extent.exit

rgrp_contains_block.exit.i.i313:                  ; preds = %while.body.i
  %117 = ptrtoint ptr %rd_data.i.i298 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %rd_data.i.i298, align 4
  %conv.i.i.i310 = zext i32 %118 to i64
  %add.i.i.i311 = add i64 %116, %conv.i.i.i310
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i311, i64 %block.047.i)
  %cmp2.i.not.i.i312 = icmp ugt i64 %add.i.i.i311, %block.047.i
  br i1 %cmp2.i.not.i.i312, label %if.end.i.i316, label %rgrp_contains_block.exit.i.i313.gfs2_alloc_extent.exit_crit_edge

rgrp_contains_block.exit.i.i313.gfs2_alloc_extent.exit_crit_edge: ; preds = %rgrp_contains_block.exit.i.i313
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_alloc_extent.exit

if.end.i.i316:                                    ; preds = %rgrp_contains_block.exit.i.i313
  %119 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %91, align 4
  %sub.i.i314 = sub i64 %block.047.i, %116
  %conv.i27.i = trunc i64 %sub.i.i314 to i32
  %120 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv.i27.i, ptr %90, align 4
  %121 = ptrtoint ptr %rd_bits.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rd_bits.i.i.i301, align 8
  %bi_blocks.i.i315 = getelementptr inbounds %struct.gfs2_bitmap, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %bi_blocks.i.i315 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bi_blocks.i.i315, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %conv.i27.i)
  %cmp.i.i = icmp ugt i32 %124, %conv.i27.i
  br i1 %cmp.i.i, label %if.end.i.i316.lor.lhs.false.i_crit_edge, label %if.end6.i.i320

if.end.i.i316.lor.lhs.false.i_crit_edge:          ; preds = %if.end.i.i316
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

if.end6.i.i320:                                   ; preds = %if.end.i.i316
  call void @__sanitizer_cov_trace_pc() #14
  %add.i30.i = add i32 %conv.i27.i, 416
  %125 = ptrtoint ptr %rd_sbd.i.i308 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rd_sbd.i.i308, align 4
  %sd_blocks_per_bitmap.i.i317 = getelementptr inbounds %struct.gfs2_sbd, ptr %126, i32 0, i32 16
  %127 = ptrtoint ptr %sd_blocks_per_bitmap.i.i317 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sd_blocks_per_bitmap.i.i317, align 8
  %div.i.i318 = udiv i32 %add.i30.i, %128
  %129 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %div.i.i318, ptr %91, align 4
  %mul.i31.i = mul i32 %div.i.i318, %128
  %sub16.i.i319 = sub i32 %add.i30.i, %mul.i31.i
  %130 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %sub16.i.i319, ptr %90, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end6.i.i320, %if.end.i.i316.lor.lhs.false.i_crit_edge
  %131 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %91, align 4
  %add.ptr.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %122, i32 %132
  %bi_clone.i.i = getelementptr %struct.gfs2_bitmap, ptr %122, i32 %132, i32 1
  %133 = ptrtoint ptr %bi_clone.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bi_clone.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %134, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.gfs2_testbit.exit.i_crit_edge

lor.lhs.false.i.gfs2_testbit.exit.i_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_testbit.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %135 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr.i.i.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %136, i32 0, i32 5
  %137 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %b_data.i.i, align 4
  br label %gfs2_testbit.exit.i

gfs2_testbit.exit.i:                              ; preds = %if.else.i.i, %lor.lhs.false.i.gfs2_testbit.exit.i_crit_edge
  %buffer.0.i.i = phi ptr [ %138, %if.else.i.i ], [ %134, %lor.lhs.false.i.gfs2_testbit.exit.i_crit_edge ]
  %bi_offset.i.i = getelementptr %struct.gfs2_bitmap, ptr %122, i32 %132, i32 3
  %139 = ptrtoint ptr %bi_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bi_offset.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %buffer.0.i.i, i32 %140
  %141 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %90, align 4
  %div12.i.i = lshr i32 %142, 2
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i34.i, i32 %div12.i.i
  %rem.i.i = shl i32 %142, 1
  %mul.i36.i = and i32 %rem.i.i, 6
  %143 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %add.ptr3.i.i, align 1
  %conv.i37.i = zext i8 %144 to i32
  %145 = shl nuw nsw i32 3, %mul.i36.i
  %146 = and i32 %145, %conv.i37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp9.not.i = icmp eq i32 %146, 0
  br i1 %cmp9.not.i, label %if.end.i, label %gfs2_testbit.exit.i.gfs2_alloc_extent.exit_crit_edge

gfs2_testbit.exit.i.gfs2_alloc_extent.exit_crit_edge: ; preds = %gfs2_testbit.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_alloc_extent.exit

if.end.i:                                         ; preds = %gfs2_testbit.exit.i
  %147 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %rd_gl.i, align 4
  %149 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %148, ptr noundef %150) #12
  call fastcc void @gfs2_setbit(ptr noundef nonnull %pos.i, i1 noundef zeroext true, i8 noundef zeroext 1) #12
  %151 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %nblocks, align 4
  %inc15.i = add i32 %152, 1
  store i32 %inc15.i, ptr %nblocks, align 4
  %cmp.i321 = icmp ult i32 %inc15.i, %96
  br i1 %cmp.i321, label %if.end.i.while.body.i_crit_edge, label %if.end.i.gfs2_alloc_extent.exit_crit_edge

if.end.i.gfs2_alloc_extent.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_alloc_extent.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

gfs2_alloc_extent.exit:                           ; preds = %if.end.i.gfs2_alloc_extent.exit_crit_edge, %gfs2_testbit.exit.i.gfs2_alloc_extent.exit_crit_edge, %rgrp_contains_block.exit.i.i313.gfs2_alloc_extent.exit_crit_edge, %while.body.i.gfs2_alloc_extent.exit_crit_edge, %gfs2_rbm_to_block.exit.i.gfs2_alloc_extent.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pos.i) #12
  %153 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %5, align 4
  %155 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rbm, align 4
  %rd_data.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %156, i32 0, i32 5
  %157 = ptrtoint ptr %rd_data.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rd_data.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %158)
  %cmp.not.i = icmp ult i32 %154, %158
  br i1 %cmp.not.i, label %gfs2_rbm_to_block.exit, label %do.body2.i, !prof !151

do.body2.i:                                       ; preds = %gfs2_alloc_extent.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

gfs2_rbm_to_block.exit:                           ; preds = %gfs2_alloc_extent.exit
  %rd_data0.i323 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %156, i32 0, i32 3
  %159 = ptrtoint ptr %rd_data0.i323 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %rd_data0.i323, align 8
  %rd_bits.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %156, i32 0, i32 13
  %161 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %rd_bits.i.i, align 8
  %163 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %6, align 4
  %bi_start.i = getelementptr %struct.gfs2_bitmap, ptr %162, i32 %164, i32 4
  %165 = ptrtoint ptr %bi_start.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %bi_start.i, align 4
  %mul.i = shl i32 %166, 2
  %conv.i325 = zext i32 %mul.i to i64
  %conv8.i = zext i32 %154 to i64
  %add.i326 = add i64 %160, %conv8.i
  %add9.i = add i64 %add.i326, %conv.i325
  %sub = sub i64 %add9.i, %160
  %conv = trunc i64 %sub to i32
  %rd_last_alloc = getelementptr inbounds %struct.gfs2_rgrpd, ptr %156, i32 0, i32 16
  %167 = ptrtoint ptr %rd_last_alloc to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %conv, ptr %rd_last_alloc, align 4
  br i1 %dinode, label %gfs2_rbm_to_block.exit.if.end46_crit_edge, label %if.then37

gfs2_rbm_to_block.exit.if.end46_crit_edge:        ; preds = %gfs2_rbm_to_block.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then37:                                        ; preds = %gfs2_rbm_to_block.exit
  %168 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %nblocks, align 4
  %conv38 = zext i32 %169 to i64
  %add = add i64 %add9.i, -1
  %sub39 = add i64 %add, %conv38
  %i_goal = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 11
  %170 = ptrtoint ptr %i_goal to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %sub39, ptr %i_goal, align 8
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %171 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %i_no_addr.i, align 8
  %call.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %172, ptr noundef nonnull %dibh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp41 = icmp eq i32 %call.i, 0
  br i1 %cmp41, label %if.then43, label %if.then37.if.end46_crit_edge

if.then37.if.end46_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then43:                                        ; preds = %if.then37
  %173 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dibh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %174, i32 0, i32 5
  %175 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %b_data, align 4
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %177 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i_gl, align 4
  call void @gfs2_trans_add_meta(ptr noundef %178, ptr noundef %174) #12
  %179 = ptrtoint ptr %i_goal to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %i_goal, align 8
  %di_goal_data = getelementptr inbounds %struct.gfs2_dinode, ptr %176, i32 0, i32 14
  %181 = ptrtoint ptr %di_goal_data to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 %180, ptr %di_goal_data, align 8
  %di_goal_meta = getelementptr inbounds %struct.gfs2_dinode, ptr %176, i32 0, i32 13
  %182 = ptrtoint ptr %di_goal_meta to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %180, ptr %di_goal_meta, align 8
  %183 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dibh, align 4
  %tobool.not.i = icmp eq ptr %184, null
  br i1 %tobool.not.i, label %if.then43.if.end46_crit_edge, label %if.then.i327

if.then43.if.end46_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.then.i327:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  call void @__brelse(ptr noundef nonnull %184) #12
  br label %if.end46

if.end46:                                         ; preds = %if.then.i327, %if.then43.if.end46_crit_edge, %if.then37.if.end46_crit_edge, %gfs2_rbm_to_block.exit.if.end46_crit_edge
  %185 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %rbm, align 4
  %rd_rsspin = getelementptr inbounds %struct.gfs2_rgrpd, ptr %186, i32 0, i32 19
  call void @_raw_spin_lock(ptr noundef %rd_rsspin) #12
  %187 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %nblocks, align 4
  %189 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %rbm, align 4
  %191 = ptrtoint ptr %rs_reserved to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %rs_reserved, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %188)
  %cmp.i330 = icmp ult i32 %192, %188
  br i1 %cmp.i330, label %do.body3.i, label %do.end8.i, !prof !149

do.body3.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2353, 0\0A.popsection", ""() #12, !srcloc !177
  unreachable

do.end8.i:                                        ; preds = %if.end46
  %sub.i = sub i32 %192, %188
  %193 = ptrtoint ptr %rs_reserved to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %sub.i, ptr %rs_reserved, align 4
  %194 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %i_res, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %195, i32 %19)
  %cmp.i.not.i331 = icmp eq i32 %195, %19
  br i1 %cmp.i.not.i331, label %do.end8.i.gfs2_adjust_reservation.exit_crit_edge, label %if.then10.i

do.end8.i.gfs2_adjust_reservation.exit_crit_edge: ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_adjust_reservation.exit

if.then10.i:                                      ; preds = %do.end8.i
  %196 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %5, align 4
  %rd_data.i.i333 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %190, i32 0, i32 5
  %198 = ptrtoint ptr %rd_data.i.i333 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %rd_data.i.i333, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %199)
  %cmp.not.i.i334 = icmp ult i32 %197, %199
  br i1 %cmp.not.i.i334, label %gfs2_rbm_to_block.exit.i346, label %do.body2.i.i335, !prof !151

do.body2.i.i335:                                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

gfs2_rbm_to_block.exit.i346:                      ; preds = %if.then10.i
  %rd_data0.i.i336 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %190, i32 0, i32 3
  %200 = ptrtoint ptr %rd_data0.i.i336 to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %rd_data0.i.i336, align 8
  %rd_bits.i.i.i337 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %190, i32 0, i32 13
  %202 = ptrtoint ptr %rd_bits.i.i.i337 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rd_bits.i.i.i337, align 8
  %204 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %6, align 4
  %bi_start.i.i339 = getelementptr %struct.gfs2_bitmap, ptr %203, i32 %205, i32 4
  %206 = ptrtoint ptr %bi_start.i.i339 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %bi_start.i.i339, align 4
  %mul.i.i340 = shl i32 %207, 2
  %conv.i.i341 = zext i32 %mul.i.i340 to i64
  %conv8.i.i342 = zext i32 %197 to i64
  %add.i.i343 = add i64 %201, %conv8.i.i342
  %add9.i.i344 = add i64 %add.i.i343, %conv.i.i341
  %rs_start.i345 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 2
  %208 = ptrtoint ptr %rs_start.i345 to i32
  call void @__asan_load8_noabort(i32 %208)
  %209 = load i64, ptr %rs_start.i345, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %209, i64 %add9.i.i344)
  %cmp12.i = icmp eq i64 %209, %add9.i.i344
  br i1 %cmp12.i, label %if.then13.i, label %gfs2_rbm_to_block.exit.i346.if.end29.i_crit_edge

gfs2_rbm_to_block.exit.i346.if.end29.i_crit_edge: ; preds = %gfs2_rbm_to_block.exit.i346
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then13.i:                                      ; preds = %gfs2_rbm_to_block.exit.i346
  %conv.i347 = zext i32 %188 to i64
  %add.i348 = add i64 %add9.i.i344, %conv.i347
  %210 = ptrtoint ptr %rs_start.i345 to i32
  call void @__asan_store8_noabort(i32 %210)
  store i64 %add.i348, ptr %rs_start.i345, align 8
  %rs_requested.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 3
  %211 = ptrtoint ptr %rs_requested.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %rs_requested.i, align 8
  %213 = call i32 @llvm.umin.i32(i32 %212, i32 %188) #12
  %sub18.i = sub i32 %212, %213
  %214 = ptrtoint ptr %rs_requested.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %sub18.i, ptr %rs_requested.i, align 8
  %rd_requested.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %190, i32 0, i32 8
  %215 = ptrtoint ptr %rd_requested.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %rd_requested.i, align 8
  %sub19.i = sub i32 %216, %213
  store i32 %sub19.i, ptr %rd_requested.i, align 8
  call fastcc void @trace_gfs2_rs(ptr noundef %i_res, i8 noundef zeroext 3) #12
  %217 = ptrtoint ptr %rs_start.i345 to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %rs_start.i345, align 8
  %219 = ptrtoint ptr %rd_data0.i.i336 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %rd_data0.i.i336, align 8
  %221 = ptrtoint ptr %rd_data.i.i333 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %rd_data.i.i333, align 4
  %conv21.i = zext i32 %222 to i64
  %add22.i = add i64 %220, %conv21.i
  call void @__sanitizer_cov_trace_cmp8(i64 %218, i64 %add22.i)
  %cmp23.i = icmp ult i64 %218, %add22.i
  br i1 %cmp23.i, label %land.lhs.true.i351, label %if.then13.i.if.end28.i_crit_edge

if.then13.i.if.end28.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

land.lhs.true.i351:                               ; preds = %if.then13.i
  %223 = ptrtoint ptr %rs_requested.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %rs_requested.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool26.not.i = icmp eq i32 %224, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i351.if.end28.i_crit_edge, label %land.lhs.true.i351.gfs2_adjust_reservation.exit_crit_edge

land.lhs.true.i351.gfs2_adjust_reservation.exit_crit_edge: ; preds = %land.lhs.true.i351
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_adjust_reservation.exit

land.lhs.true.i351.if.end28.i_crit_edge:          ; preds = %land.lhs.true.i351
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.end28.i:                                       ; preds = %land.lhs.true.i351.if.end28.i_crit_edge, %if.then13.i.if.end28.i_crit_edge
  %i_sizehint.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_sizehint.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %i_sizehint.i, i32 1, i32 3, i32 1) #12
  %225 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_sizehint.i, ptr %i_sizehint.i, i32 64, ptr elementtype(i32) %i_sizehint.i) #12, !srcloc !178
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end28.i, %gfs2_rbm_to_block.exit.i346.if.end29.i_crit_edge
  %226 = ptrtoint ptr %i_res to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %i_res, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %227, i32 %19)
  %cmp.i.not.i.i = icmp eq i32 %227, %19
  br i1 %cmp.i.not.i.i, label %if.end29.i.gfs2_adjust_reservation.exit_crit_edge, label %if.end.i.i352

if.end29.i.gfs2_adjust_reservation.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_adjust_reservation.exit

if.end.i.i352:                                    ; preds = %if.end29.i
  %228 = ptrtoint ptr %rs_rgd to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %rs_rgd, align 4
  call fastcc void @trace_gfs2_rs(ptr noundef %i_res, i8 noundef zeroext 1) #12
  %rd_rstree.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %229, i32 0, i32 21
  call void @rb_erase(ptr noundef %i_res, ptr noundef %rd_rstree.i.i) #12
  %230 = ptrtoint ptr %i_res to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %19, ptr %i_res, align 8
  %rs_requested.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 3
  %231 = ptrtoint ptr %rs_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %rs_requested.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool.not.i.i = icmp eq i32 %232, 0
  br i1 %tobool.not.i.i, label %if.end.i.i352.gfs2_adjust_reservation.exit_crit_edge, label %do.body.i.i

if.end.i.i352.gfs2_adjust_reservation.exit_crit_edge: ; preds = %if.end.i.i352
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_adjust_reservation.exit

do.body.i.i:                                      ; preds = %if.end.i.i352
  %233 = ptrtoint ptr %rs_rgd to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %rs_rgd, align 4
  %rd_requested.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %234, i32 0, i32 8
  %235 = ptrtoint ptr %rd_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %rd_requested.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %232)
  %cmp.i63.i = icmp ult i32 %236, %232
  br i1 %cmp.i63.i, label %do.body9.i.i, label %do.end15.i.i, !prof !149

do.body9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 650, 0\0A.popsection", ""() #12, !srcloc !150
  unreachable

do.end15.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i353 = sub i32 %236, %232
  %237 = ptrtoint ptr %rd_requested.i.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %sub.i.i353, ptr %rd_requested.i.i, align 8
  %238 = ptrtoint ptr %rs_requested.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %rs_requested.i.i, align 8
  %rd_extfail_pt.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %229, i32 0, i32 18
  %240 = ptrtoint ptr %rd_extfail_pt.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %rd_extfail_pt.i.i, align 4
  %add.i64.i = add i32 %241, %239
  store i32 %add.i64.i, ptr %rd_extfail_pt.i.i, align 4
  store i32 0, ptr %rs_requested.i.i, align 8
  br label %gfs2_adjust_reservation.exit

gfs2_adjust_reservation.exit:                     ; preds = %do.end15.i.i, %if.end.i.i352.gfs2_adjust_reservation.exit_crit_edge, %if.end29.i.gfs2_adjust_reservation.exit_crit_edge, %land.lhs.true.i351.gfs2_adjust_reservation.exit_crit_edge, %do.end8.i.gfs2_adjust_reservation.exit_crit_edge
  %242 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %rbm, align 4
  %rd_free = getelementptr inbounds %struct.gfs2_rgrpd, ptr %243, i32 0, i32 7
  %244 = ptrtoint ptr %rd_free to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %rd_free, align 4
  %246 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %nblocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %245, i32 %247)
  %cmp49 = icmp ult i32 %245, %247
  br i1 %cmp49, label %gfs2_adjust_reservation.exit.do.end57_crit_edge, label %lor.lhs.false

gfs2_adjust_reservation.exit.do.end57_crit_edge:  ; preds = %gfs2_adjust_reservation.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

lor.lhs.false:                                    ; preds = %gfs2_adjust_reservation.exit
  %rd_reserved = getelementptr inbounds %struct.gfs2_rgrpd, ptr %243, i32 0, i32 9
  %248 = ptrtoint ptr %rd_reserved to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %rd_reserved, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %249, i32 %247)
  %cmp52 = icmp ult i32 %249, %247
  br i1 %cmp52, label %lor.lhs.false.do.end57_crit_edge, label %do.body87

lor.lhs.false.do.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

do.end57:                                         ; preds = %lor.lhs.false.do.end57_crit_edge, %gfs2_adjust_reservation.exit.do.end57_crit_edge
  %sd_fsname59 = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %sd_fsname59, i32 noundef %247) #16
  %250 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %rbm, align 4
  %rd_rsspin63 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %251, i32 0, i32 19
  call void @_raw_spin_unlock(ptr noundef %rd_rsspin63) #12
  br label %rgrp_error

do.body87:                                        ; preds = %lor.lhs.false
  %rd_free_clone = getelementptr inbounds %struct.gfs2_rgrpd, ptr %243, i32 0, i32 10
  %252 = ptrtoint ptr %rd_free_clone to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %rd_free_clone, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %253, i32 %247)
  %cmp89 = icmp ult i32 %253, %247
  br i1 %cmp89, label %if.then97, label %do.end131, !prof !149

if.then97:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #14
  %rd_gl99 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %243, i32 0, i32 1
  %254 = ptrtoint ptr %rd_gl99 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %rd_gl99, align 4
  call void @gfs2_dump_glock(ptr noundef null, ptr noundef %255, i1 noundef zeroext true) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2472, 0\0A.popsection", ""() #12, !srcloc !179
  unreachable

do.end131:                                        ; preds = %do.body87
  %sub134 = sub i32 %249, %247
  %256 = ptrtoint ptr %rd_reserved to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %sub134, ptr %rd_reserved, align 4
  %257 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %nblocks, align 4
  %sub137 = sub i32 %253, %258
  %259 = ptrtoint ptr %rd_free_clone to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %sub137, ptr %rd_free_clone, align 8
  %260 = load i32, ptr %nblocks, align 4
  %sub140 = sub i32 %245, %260
  %261 = ptrtoint ptr %rd_free to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %sub140, ptr %rd_free, align 4
  %rd_rsspin142 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %243, i32 0, i32 19
  call void @_raw_spin_unlock(ptr noundef %rd_rsspin142) #12
  br i1 %dinode, label %if.then144, label %do.end131.if.end155_crit_edge

do.end131.if.end155_crit_edge:                    ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

if.then144:                                       ; preds = %do.end131
  %262 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %rbm, align 4
  %rd_dinodes = getelementptr inbounds %struct.gfs2_rgrpd, ptr %263, i32 0, i32 11
  %264 = ptrtoint ptr %rd_dinodes to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %rd_dinodes, align 4
  %inc = add i32 %265, 1
  store i32 %inc, ptr %rd_dinodes, align 4
  %rd_igeneration = getelementptr inbounds %struct.gfs2_rgrpd, ptr %263, i32 0, i32 12
  %266 = ptrtoint ptr %rd_igeneration to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %rd_igeneration, align 8
  %inc147 = add i64 %267, 1
  store i64 %inc147, ptr %rd_igeneration, align 8
  %268 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %267, ptr %generation, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %267)
  %cmp148 = icmp eq i64 %267, 0
  br i1 %cmp148, label %if.then150, label %if.then144.if.end155_crit_edge

if.then144.if.end155_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end155

if.then150:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #14
  %269 = ptrtoint ptr %rd_igeneration to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %rd_igeneration, align 8
  %inc153 = add i64 %270, 1
  store i64 %inc153, ptr %rd_igeneration, align 8
  %271 = ptrtoint ptr %generation to i32
  call void @__asan_store8_noabort(i32 %271)
  store i64 %270, ptr %generation, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then150, %if.then144.if.end155_crit_edge, %do.end131.if.end155_crit_edge
  %272 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %rbm, align 4
  %rd_gl157 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %rd_gl157 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %rd_gl157, align 4
  %rd_bits159 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %273, i32 0, i32 13
  %276 = ptrtoint ptr %rd_bits159 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %rd_bits159, align 8
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %277, align 4
  call void @gfs2_trans_add_meta(ptr noundef %275, ptr noundef %279) #12
  %280 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %rbm, align 4
  %rd_bits162 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %281, i32 0, i32 13
  %282 = ptrtoint ptr %rd_bits162 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %rd_bits162, align 8
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %283, align 4
  %b_data165 = getelementptr inbounds %struct.buffer_head, ptr %285, i32 0, i32 5
  %286 = ptrtoint ptr %b_data165 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %b_data165, align 4
  call fastcc void @gfs2_rgrp_out(ptr noundef %281, ptr noundef %287)
  %288 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %rbm, align 4
  %rd_mutex.i354 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %289, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %rd_mutex.i354) #12
  %290 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %nblocks, align 4
  %conv167 = zext i32 %291 to i64
  %sub168 = sub nsw i64 0, %conv167
  %292 = zext i1 %dinode to i64
  call void @gfs2_statfs_change(ptr noundef %3, i64 noundef 0, i64 noundef %sub168, i64 noundef %292) #12
  br i1 %dinode, label %if.then173, label %if.end155.if.end174_crit_edge

if.end155.if.end174_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

if.then173:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  %293 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %nblocks, align 4
  call void @gfs2_trans_remove_revoke(ptr noundef %3, i64 noundef %add9.i, i32 noundef %294) #12
  br label %if.end174

if.end174:                                        ; preds = %if.then173, %if.end155.if.end174_crit_edge
  %cond182 = phi i8 [ 3, %if.then173 ], [ 1, %if.end155.if.end174_crit_edge ]
  %295 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %nblocks, align 4
  %conv175 = zext i32 %296 to i64
  %i_uid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %297 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %297)
  %.unpack = load i32, ptr %i_uid, align 4
  %298 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %299 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %299)
  %.unpack245 = load i32, ptr %i_gid, align 8
  %300 = insertvalue [1 x i32] undef, i32 %.unpack245, 0
  call void @gfs2_quota_change(ptr noundef %ip, i64 noundef %conv175, [1 x i32] %298, [1 x i32] %300) #12
  %301 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %rbm, align 4
  %303 = ptrtoint ptr %nblocks to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %nblocks, align 4
  call fastcc void @trace_gfs2_block_alloc(ptr noundef %ip, ptr noundef %302, i64 noundef %add9.i, i32 noundef %304, i8 noundef zeroext %cond182)
  %305 = ptrtoint ptr %bn to i32
  call void @__asan_store8_noabort(i32 %305)
  store i64 %add9.i, ptr %bn, align 8
  br label %cleanup

rgrp_error:                                       ; preds = %do.end57, %do.end26
  %306 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %rbm, align 4
  %rd_mutex.i355 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %307, i32 0, i32 20
  call void @mutex_unlock(ptr noundef %rd_mutex.i355) #12
  %308 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %rbm, align 4
  %rd_sbd.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %309, i32 0, i32 14
  %310 = ptrtoint ptr %rd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %rd_sbd.i, align 4
  call void @llvm.lifetime.start.p0(i64 277, ptr nonnull %fs_id_buf.i) #12
  %312 = call ptr @memset(ptr %fs_id_buf.i, i32 255, i32 277)
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %311, i32 0, i32 110
  %rd_addr.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %309, i32 0, i32 2
  %313 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %313)
  %314 = load i64, ptr %rd_addr.i, align 8
  %call.i356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %sd_fsname.i, i64 noundef %314) #16
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %sd_fsname.i) #16
  %call11.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %fs_id_buf.i, ptr noundef nonnull @.str.57, ptr noundef %sd_fsname.i) #12
  call void @gfs2_rgrp_dump(ptr noundef null, ptr noundef %309, ptr noundef nonnull %fs_id_buf.i) #12
  %rd_flags.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %309, i32 0, i32 17
  %315 = ptrtoint ptr %rd_flags.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %rd_flags.i, align 8
  %or.i = or i32 %316, 1073741824
  store i32 %or.i, ptr %rd_flags.i, align 8
  call void @llvm.lifetime.end.p0(i64 277, ptr nonnull %fs_id_buf.i) #12
  br label %cleanup

cleanup:                                          ; preds = %rgrp_error, %if.end174
  %retval.0 = phi i32 [ -5, %rgrp_error ], [ 0, %if.end174 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minext) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rbm) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_rbm_find(ptr nocapture noundef %rbm, i8 noundef zeroext %state, ptr noundef %minext, ptr noundef readnone %rs, i1 noundef zeroext %nowrap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bii = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 2
  %0 = ptrtoint ptr %bii to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bii, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %offset = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp1, %land.rhs ]
  %5 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rbm, align 4
  %offset9 = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 1
  %7 = ptrtoint ptr %offset9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp eq i32 %8, 0
  %conv.neg = sext i1 %cmp10 to i32
  %sub = add i32 %1, %conv.neg
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %cmp13 = icmp eq i8 %state, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %state)
  %cmp40.not = icmp eq i8 %state, 2
  %idxprom.i.i = zext i8 %state to i32
  %arrayidx.i.i = getelementptr [4 x i64], ptr @gfs2_bit_search.search, i32 0, i32 %idxprom.i.i
  %tobool66.not = icmp eq ptr %rs, null
  %tobool67.not = icmp eq ptr %minext, null
  %or.cond202 = or i1 %tobool67.not, %tobool66.not
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %land.end
  %maxext.sroa.10.0.ph = phi i32 [ 0, %land.end ], [ %maxext.sroa.10.0.ph.be, %while.cond.outer.backedge ]
  %maxext.sroa.8.0.ph = phi i32 [ 0, %land.end ], [ %maxext.sroa.8.0.ph.be, %while.cond.outer.backedge ]
  %maxext.sroa.6.0.ph = phi i32 [ 0, %land.end ], [ %maxext.sroa.6.0.ph.be, %while.cond.outer.backedge ]
  %maxext.sroa.0.0.ph = phi ptr [ %6, %land.end ], [ %maxext.sroa.0.0.ph.be, %while.cond.outer.backedge ]
  %wrapped.0.off0.ph = phi i1 [ false, %land.end ], [ %wrapped.0.off0.ph.be, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %next_iter.while.cond_crit_edge, %while.cond.outer
  %wrapped.0.off0 = phi i1 [ false, %next_iter.while.cond_crit_edge ], [ %wrapped.0.off0.ph, %while.cond.outer ]
  %9 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rbm, align 4
  %rd_bits.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rd_bits.i, align 8
  %13 = ptrtoint ptr %bii to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bii, align 4
  %bi_flags = getelementptr %struct.gfs2_bitmap, ptr %12, i32 %14, i32 2
  %15 = ptrtoint ptr %bi_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %bi_flags, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp ne i32 %17, 0
  %or.cond = and i1 %cmp13, %tobool.not
  br i1 %or.cond, label %while.cond.res_covered_end_of_rgrp_crit_edge, label %if.end

while.cond.res_covered_end_of_rgrp_crit_edge:     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %res_covered_end_of_rgrp

if.end:                                           ; preds = %while.cond
  %add.ptr.i = getelementptr %struct.gfs2_bitmap, ptr %12, i32 %14
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  %bi_offset = getelementptr %struct.gfs2_bitmap, ptr %12, i32 %14, i32 3
  %22 = ptrtoint ptr %bi_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bi_offset, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %23
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %19, align 4
  %and1.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool16.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool16.not, label %do.end, label %if.end.if.end32_crit_edge, !prof !149

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1765, i32 noundef 9, ptr noundef null) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.end.if.end32_crit_edge
  br i1 %cmp40.not, label %if.end32.if.end48_crit_edge, label %land.lhs.true42

if.end32.if.end48_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

land.lhs.true42:                                  ; preds = %if.end32
  %bi_clone = getelementptr %struct.gfs2_bitmap, ptr %12, i32 %14, i32 1
  %26 = ptrtoint ptr %bi_clone to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bi_clone, align 4
  %tobool43.not = icmp eq ptr %27, null
  br i1 %tobool43.not, label %land.lhs.true42.if.end48_crit_edge, label %if.then44

land.lhs.true42.if.end48_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %bi_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bi_offset, align 4
  %add.ptr47 = getelementptr i8, ptr %27, i32 %29
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %land.lhs.true42.if.end48_crit_edge, %if.end32.if.end48_crit_edge
  %buffer.0 = phi ptr [ %add.ptr47, %if.then44 ], [ %add.ptr, %land.lhs.true42.if.end48_crit_edge ], [ %add.ptr, %if.end32.if.end48_crit_edge ]
  %bi_bytes = getelementptr %struct.gfs2_bitmap, ptr %12, i32 %14, i32 5
  %30 = ptrtoint ptr %bi_bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_bytes, align 4
  %32 = ptrtoint ptr %offset9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset9, align 4
  %shl.i = shl i32 %33, 1
  %and.i = and i32 %shl.i, 62
  %shr.i203 = lshr i32 %33, 5
  %add.ptr.i204 = getelementptr i64, ptr %buffer.0, i32 %shr.i203
  %add.i = add i32 %31, 7
  %and1.i205 = and i32 %add.i, -8
  %add.ptr2.i = getelementptr i8, ptr %buffer.0, i32 %and1.i205
  %sh_prom.i = zext i32 %and.i to i64
  %shl3.i = shl i64 6148914691236517205, %sh_prom.i
  %34 = ptrtoint ptr %add.ptr.i204 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.i204, align 8
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #12
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i.i, align 8
  %xor.i.i = xor i64 %36, %38
  %shr.i.i = lshr i64 %xor.i.i, 1
  %and.i.i = and i64 %shl3.i, %xor.i.i
  %and1.i.i206 = and i64 %and.i.i, %shr.i.i
  %ptr.052.i = getelementptr i64, ptr %add.ptr.i204, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i206)
  %cmp53.i = icmp eq i64 %and1.i.i206, 0
  %cmp454.i = icmp ult ptr %ptr.052.i, %add.ptr2.i
  %or.cond55.i = and i1 %cmp454.i, %cmp53.i
  br i1 %or.cond55.i, label %if.end48.while.body.i_crit_edge, label %if.end48.while.end.i_crit_edge

if.end48.while.end.i_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.end48.while.body.i_crit_edge:                  ; preds = %if.end48
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end48.while.body.i_crit_edge
  %ptr.056.i = phi ptr [ %ptr.0.i, %while.body.i.while.body.i_crit_edge ], [ %ptr.052.i, %if.end48.while.body.i_crit_edge ]
  %39 = ptrtoint ptr %ptr.056.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %ptr.056.i, align 8
  %41 = tail call i64 @llvm.bswap.i64(i64 %40) #12
  %xor.i47.i = xor i64 %41, %38
  %shr.i48.i = lshr i64 %xor.i47.i, 1
  %and.i49.i = and i64 %xor.i47.i, 6148914691236517205
  %and1.i50.i = and i64 %and.i49.i, %shr.i48.i
  %ptr.0.i = getelementptr i64, ptr %ptr.056.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i50.i)
  %cmp.i = icmp eq i64 %and1.i50.i, 0
  %cmp4.i = icmp ult ptr %ptr.0.i, %add.ptr2.i
  %or.cond.i = and i1 %cmp4.i, %cmp.i
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end48.while.end.i_crit_edge
  %add.ptr.pn.lcssa.i = phi ptr [ %add.ptr.i204, %if.end48.while.end.i_crit_edge ], [ %ptr.056.i, %while.body.i.while.end.i_crit_edge ]
  %tmp.0.lcssa.i = phi i64 [ %and1.i.i206, %if.end48.while.end.i_crit_edge ], [ %and1.i50.i, %while.body.i.while.end.i_crit_edge ]
  %ptr.0.lcssa.i = phi ptr [ %ptr.052.i, %if.end48.while.end.i_crit_edge ], [ %ptr.0.i, %while.body.i.while.end.i_crit_edge ]
  %cmp7.i = icmp eq ptr %ptr.0.lcssa.i, %add.ptr2.i
  br i1 %cmp7.i, label %land.lhs.true.i, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.end.i
  %and8.i = and i32 %31, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.neg.i = mul nsw i32 %and8.i, -8
  %sub.i = add nsw i32 %mul.neg.i, 64
  %sh_prom10.i = zext i32 %sub.i to i64
  %shr11.i = lshr i64 -1, %sh_prom10.i
  %and12.i = and i64 %tmp.0.lcssa.i, %shr11.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %while.end.i.if.end.i_crit_edge
  %tmp.1.i = phi i64 [ %and12.i, %if.then.i ], [ %tmp.0.lcssa.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %tmp.0.lcssa.i, %while.end.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tmp.1.i)
  %cmp13.i = icmp eq i64 %tmp.1.i, 0
  br i1 %cmp13.i, label %if.end.i.if.then53_crit_edge, label %if.end15.i

if.end.i.if.then53_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

if.end15.i:                                       ; preds = %if.end.i
  %conv.i.i = trunc i64 %tmp.1.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i51.i = lshr i64 %tmp.1.i, 32
  %conv2.i.i = trunc i64 %shr.i51.i to i32
  %42 = tail call i32 @llvm.cttz.i32(i32 %conv2.i.i, i1 false) #12, !range !163
  %add.i.i = add nuw nsw i32 %42, 32
  br label %gfs2_bitfit.exit

if.end.i.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %43 = tail call i32 @llvm.cttz.i32(i32 %conv.i.i, i1 true) #12, !range !163
  br label %gfs2_bitfit.exit

gfs2_bitfit.exit:                                 ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %43, %if.end.i.i ]
  %div44.i = lshr i32 %retval.0.i.i, 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.pn.lcssa.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buffer.0 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %mul18.i = shl i32 %sub.ptr.sub.i, 2
  %add19.i = add i32 %div44.i, %mul18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add19.i)
  %cmp51 = icmp eq i32 %add19.i, -1
  br i1 %cmp51, label %gfs2_bitfit.exit.if.then53_crit_edge, label %if.end64

gfs2_bitfit.exit.if.then53_crit_edge:             ; preds = %gfs2_bitfit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

if.then53:                                        ; preds = %gfs2_bitfit.exit.if.then53_crit_edge, %if.end.i.if.then53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp59 = icmp eq i32 %33, 0
  %or.cond272 = select i1 %cmp13, i1 %cmp59, i1 false
  br i1 %or.cond272, label %if.then61, label %if.then53.res_covered_end_of_rgrp_crit_edge

if.then53.res_covered_end_of_rgrp_crit_edge:      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %res_covered_end_of_rgrp

if.then61:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 1, ptr noundef %bi_flags) #12
  br label %res_covered_end_of_rgrp

if.end64:                                         ; preds = %gfs2_bitfit.exit
  %44 = ptrtoint ptr %offset9 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add19.i, ptr %offset9, align 4
  br i1 %or.cond202, label %if.end64.cleanup_crit_edge, label %if.end69

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end69:                                         ; preds = %if.end64
  %45 = ptrtoint ptr %minext to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %minext, align 4
  %47 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rbm, align 4
  %rd_data.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %rd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rd_data.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i, i32 %50)
  %cmp.not.i.i = icmp ult i32 %add19.i, %50
  br i1 %cmp.not.i.i, label %gfs2_rbm_to_block.exit.i, label %do.body2.i.i, !prof !151

do.body2.i.i:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

gfs2_rbm_to_block.exit.i:                         ; preds = %if.end69
  %rd_data0.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %rd_data0.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rd_data0.i.i, align 8
  %rd_bits.i.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %48, i32 0, i32 13
  %53 = ptrtoint ptr %rd_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rd_bits.i.i.i, align 8
  %55 = ptrtoint ptr %bii to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bii, align 4
  %bi_start.i.i = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %56, i32 4
  %57 = ptrtoint ptr %bi_start.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bi_start.i.i, align 4
  %mul.i.i = shl i32 %58, 2
  %conv.i.i207 = zext i32 %mul.i.i to i64
  %conv8.i.i = zext i32 %add19.i to i64
  %add.i.i208 = add i64 %52, %conv8.i.i
  %add9.i.i = add i64 %add.i.i208, %conv.i.i207
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i209 = icmp ugt i32 %46, 1
  br i1 %cmp.i209, label %if.then.i211, label %gfs2_rbm_to_block.exit.i.if.end4.i_crit_edge

gfs2_rbm_to_block.exit.i.if.end4.i_crit_edge:     ; preds = %gfs2_rbm_to_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i211:                                     ; preds = %gfs2_rbm_to_block.exit.i
  %and.i.i210 = and i32 %add19.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i210)
  %tobool.not.i.i = icmp eq i32 %and.i.i210, 0
  br i1 %tobool.not.i.i, label %if.then.i211.if.end.i.i212_crit_edge, label %land.lhs.true.i.i

if.then.i211.if.end.i.i212_crit_edge:             ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i212

land.lhs.true.i.i:                                ; preds = %if.then.i211
  %rd_length.i.i.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %48, i32 0, i32 4
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %54 to i32
  %59 = or i32 %add19.i, -4
  %60 = add i32 %59, %46
  %bi_clone.i.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %56, i32 1
  %61 = ptrtoint ptr %bi_clone.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bi_clone.i.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %62, null
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.i.i.i, label %land.lhs.true.i.i.gfs2_testbit.exit.i.i.i_crit_edge

land.lhs.true.i.i.gfs2_testbit.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_testbit.exit.i.i.i

if.else.i.i.i.i:                                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %56
  %63 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i.i.i.i.i, align 4
  %b_data.i.i.i.i = getelementptr inbounds %struct.buffer_head, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %b_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %b_data.i.i.i.i, align 4
  br label %gfs2_testbit.exit.i.i.i

gfs2_testbit.exit.i.i.i:                          ; preds = %if.else.i.i.i.i, %land.lhs.true.i.i.gfs2_testbit.exit.i.i.i_crit_edge
  %buffer.0.i.i.i.i = phi ptr [ %66, %if.else.i.i.i.i ], [ %62, %land.lhs.true.i.i.gfs2_testbit.exit.i.i.i_crit_edge ]
  %bi_offset.i.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %56, i32 3
  %67 = ptrtoint ptr %bi_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bi_offset.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %buffer.0.i.i.i.i, i32 %68
  %div12.i.i.i.i = lshr i32 %add19.i, 2
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %div12.i.i.i.i
  %rem.i.i.i.i = shl i32 %add19.i, 1
  %mul.i.i.i.i = and i32 %rem.i.i.i.i, 6
  %69 = ptrtoint ptr %add.ptr3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr3.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %70 to i32
  %71 = shl nuw nsw i32 3, %mul.i.i.i.i
  %72 = and i32 %71, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp1.not.i.i.i = icmp eq i32 %72, 0
  br i1 %cmp1.not.i.i.i, label %if.end.i.i.i, label %gfs2_testbit.exit.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge

gfs2_testbit.exit.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %gfs2_testbit.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.end.i.i.i:                                     ; preds = %gfs2_testbit.exit.i.i.i
  %dec.i.i.i = add i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %cmp3.i.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %if.end6.i.i.i

if.end.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %add.i.i.i.i = add i32 %add19.i, 1
  %bi_blocks.i.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %56, i32 6
  %73 = ptrtoint ptr %bi_blocks.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bi_blocks.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %74)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %74
  br i1 %cmp.i.i.i.i, label %if.end6.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i.i

if.end6.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end6.i.i.i
  %add.ptr.i15.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %56
  %75 = ptrtoint ptr %rd_length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rd_length.i.i.i.i, align 8
  %add.ptr8.i.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %76
  %incdec.ptr45.i.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %add.ptr.i15.i.i.i, i32 1
  %cmp946.i.i.i.i = icmp eq ptr %incdec.ptr45.i.i.i.i, %add.ptr8.i.i.i.i
  br i1 %cmp946.i.i.i.i, label %if.end.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %if.end11.preheader.i.i.i.i

if.end.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.end11.preheader.i.i.i.i:                       ; preds = %if.end.i.i.i.i
  %sub6.i.i.i.i = sub i32 %add.i.i.i.i, %74
  br label %if.end11.i.i.i.i

if.end11.i.i.i.i:                                 ; preds = %if.end18.i.i.i.i.if.end11.i.i.i.i_crit_edge, %if.end11.preheader.i.i.i.i
  %incdec.ptr49.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i, %if.end18.i.i.i.i.if.end11.i.i.i.i_crit_edge ], [ %incdec.ptr45.i.i.i.i, %if.end11.preheader.i.i.i.i ]
  %bi.048.i.i.i.i = phi ptr [ %incdec.ptr49.i.i.i.i, %if.end18.i.i.i.i.if.end11.i.i.i.i_crit_edge ], [ %add.ptr.i15.i.i.i, %if.end11.preheader.i.i.i.i ]
  %blocks.addr.047.i.i.i.i = phi i32 [ %sub20.i.i.i.i, %if.end18.i.i.i.i.if.end11.i.i.i.i_crit_edge ], [ %sub6.i.i.i.i, %if.end11.preheader.i.i.i.i ]
  %bi_blocks12.i.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %bi.048.i.i.i.i, i32 1, i32 6
  %77 = ptrtoint ptr %bi_blocks12.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bi_blocks12.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks.addr.047.i.i.i.i, i32 %78)
  %cmp13.i.i.i.i = icmp ult i32 %blocks.addr.047.i.i.i.i, %78
  br i1 %cmp13.i.i.i.i, label %if.then14.i.i.i.i, label %if.end18.i.i.i.i

if.then14.i.i.i.i:                                ; preds = %if.end11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %incdec.ptr49.i.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i.i, 28
  br label %for.inc.i.i.i

if.end18.i.i.i.i:                                 ; preds = %if.end11.i.i.i.i
  %sub20.i.i.i.i = sub i32 %blocks.addr.047.i.i.i.i, %78
  %incdec.ptr.i.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %incdec.ptr49.i.i.i.i, i32 1
  %cmp9.i.i.i.i = icmp eq ptr %incdec.ptr.i.i.i.i, %add.ptr8.i.i.i.i
  br i1 %cmp9.i.i.i.i, label %if.end18.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %if.end18.i.i.i.i.if.end11.i.i.i.i_crit_edge

if.end18.i.i.i.i.if.end11.i.i.i.i_crit_edge:      ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i.i.i

if.end18.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %if.end18.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

for.inc.i.i.i:                                    ; preds = %if.then14.i.i.i.i, %if.end6.i.i.i.for.inc.i.i.i_crit_edge
  %rbm.sroa.26.1.i.i = phi i32 [ %sub.ptr.div.i.i.i.i, %if.then14.i.i.i.i ], [ %56, %if.end6.i.i.i.for.inc.i.i.i_crit_edge ]
  %rbm.sroa.11.1.i.i = phi i32 [ %blocks.addr.047.i.i.i.i, %if.then14.i.i.i.i ], [ %add.i.i.i.i, %if.end6.i.i.i.for.inc.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i210)
  %cmp.i.i.i = icmp ne i32 %and.i.i210, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i210)
  %exitcond.not.i.i.i = icmp eq i32 %and.i.i210, 3
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %for.body.i.i.i.1

for.inc.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

for.body.i.i.i.1:                                 ; preds = %for.inc.i.i.i
  %bi_clone.i.i.i.i.1 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %rbm.sroa.26.1.i.i, i32 1
  %79 = ptrtoint ptr %bi_clone.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bi_clone.i.i.i.i.1, align 4
  %tobool1.not.i.i.i.i.1 = icmp eq ptr %80, null
  br i1 %tobool1.not.i.i.i.i.1, label %if.else.i.i.i.i.1, label %for.body.i.i.i.1.gfs2_testbit.exit.i.i.i.1_crit_edge

for.body.i.i.i.1.gfs2_testbit.exit.i.i.i.1_crit_edge: ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_testbit.exit.i.i.i.1

if.else.i.i.i.i.1:                                ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i.i.1 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %rbm.sroa.26.1.i.i
  %81 = ptrtoint ptr %add.ptr.i.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i.i.i.i.i.1, align 4
  %b_data.i.i.i.i.1 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %b_data.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %b_data.i.i.i.i.1, align 4
  br label %gfs2_testbit.exit.i.i.i.1

gfs2_testbit.exit.i.i.i.1:                        ; preds = %if.else.i.i.i.i.1, %for.body.i.i.i.1.gfs2_testbit.exit.i.i.i.1_crit_edge
  %buffer.0.i.i.i.i.1 = phi ptr [ %84, %if.else.i.i.i.i.1 ], [ %80, %for.body.i.i.i.1.gfs2_testbit.exit.i.i.i.1_crit_edge ]
  %bi_offset.i.i.i.i.1 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %rbm.sroa.26.1.i.i, i32 3
  %85 = ptrtoint ptr %bi_offset.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bi_offset.i.i.i.i.1, align 4
  %add.ptr.i.i.i.i.1 = getelementptr i8, ptr %buffer.0.i.i.i.i.1, i32 %86
  %div12.i.i.i.i.1 = lshr i32 %rbm.sroa.11.1.i.i, 2
  %add.ptr3.i.i.i.i.1 = getelementptr i8, ptr %add.ptr.i.i.i.i.1, i32 %div12.i.i.i.i.1
  %rem.i.i.i.i.1 = shl i32 %rbm.sroa.11.1.i.i, 1
  %mul.i.i.i.i.1 = and i32 %rem.i.i.i.i.1, 6
  %87 = ptrtoint ptr %add.ptr3.i.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %add.ptr3.i.i.i.i.1, align 1
  %conv.i.i.i.i.1 = zext i8 %88 to i32
  %89 = shl nuw nsw i32 3, %mul.i.i.i.i.1
  %90 = and i32 %89, %conv.i.i.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp1.not.i.i.i.1 = icmp eq i32 %90, 0
  br i1 %cmp1.not.i.i.i.1, label %if.end.i.i.i.1, label %gfs2_testbit.exit.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge

gfs2_testbit.exit.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %gfs2_testbit.exit.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.end.i.i.i.1:                                   ; preds = %gfs2_testbit.exit.i.i.i.1
  %dec.i.i.i.1 = add i32 %46, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.1)
  %cmp3.i.i.i.1 = icmp eq i32 %dec.i.i.i.1, 0
  br i1 %cmp3.i.i.i.1, label %if.end.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %if.end6.i.i.i.1

if.end.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.end6.i.i.i.1:                                  ; preds = %if.end.i.i.i.1
  %add.i.i.i.i.1 = add i32 %rbm.sroa.11.1.i.i, 1
  %bi_blocks.i.i.i.i.1 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %rbm.sroa.26.1.i.i, i32 6
  %91 = ptrtoint ptr %bi_blocks.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bi_blocks.i.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.1, i32 %92)
  %cmp.i.i.i.i.1 = icmp ult i32 %add.i.i.i.i.1, %92
  br i1 %cmp.i.i.i.i.1, label %if.end6.i.i.i.1.for.inc.i.i.i.1_crit_edge, label %if.end.i.i.i.i.1

if.end6.i.i.i.1.for.inc.i.i.i.1_crit_edge:        ; preds = %if.end6.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i.i.1

if.end.i.i.i.i.1:                                 ; preds = %if.end6.i.i.i.1
  %add.ptr.i15.i.i.i.1 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %rbm.sroa.26.1.i.i
  %93 = ptrtoint ptr %rd_length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rd_length.i.i.i.i, align 8
  %add.ptr8.i.i.i.i.1 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %94
  %incdec.ptr45.i.i.i.i.1 = getelementptr %struct.gfs2_bitmap, ptr %add.ptr.i15.i.i.i.1, i32 1
  %cmp946.i.i.i.i.1 = icmp eq ptr %incdec.ptr45.i.i.i.i.1, %add.ptr8.i.i.i.i.1
  br i1 %cmp946.i.i.i.i.1, label %if.end.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %if.end11.preheader.i.i.i.i.1

if.end.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.end11.preheader.i.i.i.i.1:                     ; preds = %if.end.i.i.i.i.1
  %sub6.i.i.i.i.1 = sub i32 %add.i.i.i.i.1, %92
  br label %if.end11.i.i.i.i.1

if.end11.i.i.i.i.1:                               ; preds = %if.end18.i.i.i.i.1.if.end11.i.i.i.i.1_crit_edge, %if.end11.preheader.i.i.i.i.1
  %incdec.ptr49.i.i.i.i.1 = phi ptr [ %incdec.ptr.i.i.i.i.1, %if.end18.i.i.i.i.1.if.end11.i.i.i.i.1_crit_edge ], [ %incdec.ptr45.i.i.i.i.1, %if.end11.preheader.i.i.i.i.1 ]
  %bi.048.i.i.i.i.1 = phi ptr [ %incdec.ptr49.i.i.i.i.1, %if.end18.i.i.i.i.1.if.end11.i.i.i.i.1_crit_edge ], [ %add.ptr.i15.i.i.i.1, %if.end11.preheader.i.i.i.i.1 ]
  %blocks.addr.047.i.i.i.i.1 = phi i32 [ %sub20.i.i.i.i.1, %if.end18.i.i.i.i.1.if.end11.i.i.i.i.1_crit_edge ], [ %sub6.i.i.i.i.1, %if.end11.preheader.i.i.i.i.1 ]
  %bi_blocks12.i.i.i.i.1 = getelementptr %struct.gfs2_bitmap, ptr %bi.048.i.i.i.i.1, i32 1, i32 6
  %95 = ptrtoint ptr %bi_blocks12.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bi_blocks12.i.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks.addr.047.i.i.i.i.1, i32 %96)
  %cmp13.i.i.i.i.1 = icmp ult i32 %blocks.addr.047.i.i.i.i.1, %96
  br i1 %cmp13.i.i.i.i.1, label %if.then14.i.i.i.i.1, label %if.end18.i.i.i.i.1

if.end18.i.i.i.i.1:                               ; preds = %if.end11.i.i.i.i.1
  %sub20.i.i.i.i.1 = sub i32 %blocks.addr.047.i.i.i.i.1, %96
  %incdec.ptr.i.i.i.i.1 = getelementptr %struct.gfs2_bitmap, ptr %incdec.ptr49.i.i.i.i.1, i32 1
  %cmp9.i.i.i.i.1 = icmp eq ptr %incdec.ptr.i.i.i.i.1, %add.ptr8.i.i.i.i.1
  br i1 %cmp9.i.i.i.i.1, label %if.end18.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %if.end18.i.i.i.i.1.if.end11.i.i.i.i.1_crit_edge

if.end18.i.i.i.i.1.if.end11.i.i.i.i.1_crit_edge:  ; preds = %if.end18.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i.i.i.1

if.end18.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %if.end18.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.then14.i.i.i.i.1:                              ; preds = %if.end11.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast.i.i.i.i.1 = ptrtoint ptr %incdec.ptr49.i.i.i.i.1 to i32
  %sub.ptr.sub.i.i.i.i.1 = sub i32 %sub.ptr.lhs.cast.i.i.i.i.1, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i.1 = sdiv exact i32 %sub.ptr.sub.i.i.i.i.1, 28
  br label %for.inc.i.i.i.1

for.inc.i.i.i.1:                                  ; preds = %if.then14.i.i.i.i.1, %if.end6.i.i.i.1.for.inc.i.i.i.1_crit_edge
  %rbm.sroa.26.1.i.i.1 = phi i32 [ %sub.ptr.div.i.i.i.i.1, %if.then14.i.i.i.i.1 ], [ %rbm.sroa.26.1.i.i, %if.end6.i.i.i.1.for.inc.i.i.i.1_crit_edge ]
  %rbm.sroa.11.1.i.i.1 = phi i32 [ %blocks.addr.047.i.i.i.i.1, %if.then14.i.i.i.i.1 ], [ %add.i.i.i.i.1, %if.end6.i.i.i.1.for.inc.i.i.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i210)
  %cmp.i.i.i.1 = icmp ult i32 %and.i.i210, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i210)
  %exitcond.not.i.i.i.1 = icmp eq i32 %and.i.i210, 2
  br i1 %exitcond.not.i.i.i.1, label %for.inc.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %for.body.i.i.i.2

for.inc.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

for.body.i.i.i.2:                                 ; preds = %for.inc.i.i.i.1
  %bi_clone.i.i.i.i.2 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %rbm.sroa.26.1.i.i.1, i32 1
  %97 = ptrtoint ptr %bi_clone.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bi_clone.i.i.i.i.2, align 4
  %tobool1.not.i.i.i.i.2 = icmp eq ptr %98, null
  br i1 %tobool1.not.i.i.i.i.2, label %if.else.i.i.i.i.2, label %for.body.i.i.i.2.gfs2_testbit.exit.i.i.i.2_crit_edge

for.body.i.i.i.2.gfs2_testbit.exit.i.i.i.2_crit_edge: ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_testbit.exit.i.i.i.2

if.else.i.i.i.i.2:                                ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i.i.i.2 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %rbm.sroa.26.1.i.i.1
  %99 = ptrtoint ptr %add.ptr.i.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr.i.i.i.i.i.2, align 4
  %b_data.i.i.i.i.2 = getelementptr inbounds %struct.buffer_head, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %b_data.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %b_data.i.i.i.i.2, align 4
  br label %gfs2_testbit.exit.i.i.i.2

gfs2_testbit.exit.i.i.i.2:                        ; preds = %if.else.i.i.i.i.2, %for.body.i.i.i.2.gfs2_testbit.exit.i.i.i.2_crit_edge
  %buffer.0.i.i.i.i.2 = phi ptr [ %102, %if.else.i.i.i.i.2 ], [ %98, %for.body.i.i.i.2.gfs2_testbit.exit.i.i.i.2_crit_edge ]
  %bi_offset.i.i.i.i.2 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %rbm.sroa.26.1.i.i.1, i32 3
  %103 = ptrtoint ptr %bi_offset.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bi_offset.i.i.i.i.2, align 4
  %add.ptr.i.i.i.i.2 = getelementptr i8, ptr %buffer.0.i.i.i.i.2, i32 %104
  %div12.i.i.i.i.2 = lshr i32 %rbm.sroa.11.1.i.i.1, 2
  %add.ptr3.i.i.i.i.2 = getelementptr i8, ptr %add.ptr.i.i.i.i.2, i32 %div12.i.i.i.i.2
  %rem.i.i.i.i.2 = shl i32 %rbm.sroa.11.1.i.i.1, 1
  %mul.i.i.i.i.2 = and i32 %rem.i.i.i.i.2, 6
  %105 = ptrtoint ptr %add.ptr3.i.i.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %add.ptr3.i.i.i.i.2, align 1
  %conv.i.i.i.i.2 = zext i8 %106 to i32
  %107 = shl nuw nsw i32 3, %mul.i.i.i.i.2
  %108 = and i32 %107, %conv.i.i.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp1.not.i.i.i.2 = icmp eq i32 %108, 0
  br i1 %cmp1.not.i.i.i.2, label %if.end.i.i.i.2, label %gfs2_testbit.exit.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge

gfs2_testbit.exit.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %gfs2_testbit.exit.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.end.i.i.i.2:                                   ; preds = %gfs2_testbit.exit.i.i.i.2
  %dec.i.i.i.2 = add i32 %46, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.2)
  %cmp3.i.i.i.2 = icmp eq i32 %dec.i.i.i.2, 0
  br i1 %cmp3.i.i.i.2, label %if.end.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %if.end6.i.i.i.2

if.end.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.end6.i.i.i.2:                                  ; preds = %if.end.i.i.i.2
  %add.i.i.i.i.2 = add i32 %rbm.sroa.11.1.i.i.1, 1
  %bi_blocks.i.i.i.i.2 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %rbm.sroa.26.1.i.i.1, i32 6
  %109 = ptrtoint ptr %bi_blocks.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bi_blocks.i.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.2, i32 %110)
  %cmp.i.i.i.i.2 = icmp ult i32 %add.i.i.i.i.2, %110
  br i1 %cmp.i.i.i.i.2, label %if.end6.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %if.end.i.i.i.i.2

if.end6.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %if.end6.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.end.i.i.i.i.2:                                 ; preds = %if.end6.i.i.i.2
  %add.ptr.i15.i.i.i.2 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %rbm.sroa.26.1.i.i.1
  %111 = ptrtoint ptr %rd_length.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rd_length.i.i.i.i, align 8
  %add.ptr8.i.i.i.i.2 = getelementptr %struct.gfs2_bitmap, ptr %54, i32 %112
  %incdec.ptr45.i.i.i.i.2 = getelementptr %struct.gfs2_bitmap, ptr %add.ptr.i15.i.i.i.2, i32 1
  %cmp946.i.i.i.i.2 = icmp eq ptr %incdec.ptr45.i.i.i.i.2, %add.ptr8.i.i.i.i.2
  br i1 %cmp946.i.i.i.i.2, label %if.end.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %if.end11.preheader.i.i.i.i.2

if.end.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.end11.preheader.i.i.i.i.2:                     ; preds = %if.end.i.i.i.i.2
  %sub6.i.i.i.i.2 = sub i32 %add.i.i.i.i.2, %110
  br label %if.end11.i.i.i.i.2

if.end11.i.i.i.i.2:                               ; preds = %if.end18.i.i.i.i.2.if.end11.i.i.i.i.2_crit_edge, %if.end11.preheader.i.i.i.i.2
  %incdec.ptr49.i.i.i.i.2 = phi ptr [ %incdec.ptr.i.i.i.i.2, %if.end18.i.i.i.i.2.if.end11.i.i.i.i.2_crit_edge ], [ %incdec.ptr45.i.i.i.i.2, %if.end11.preheader.i.i.i.i.2 ]
  %bi.048.i.i.i.i.2 = phi ptr [ %incdec.ptr49.i.i.i.i.2, %if.end18.i.i.i.i.2.if.end11.i.i.i.i.2_crit_edge ], [ %add.ptr.i15.i.i.i.2, %if.end11.preheader.i.i.i.i.2 ]
  %blocks.addr.047.i.i.i.i.2 = phi i32 [ %sub20.i.i.i.i.2, %if.end18.i.i.i.i.2.if.end11.i.i.i.i.2_crit_edge ], [ %sub6.i.i.i.i.2, %if.end11.preheader.i.i.i.i.2 ]
  %bi_blocks12.i.i.i.i.2 = getelementptr %struct.gfs2_bitmap, ptr %bi.048.i.i.i.i.2, i32 1, i32 6
  %113 = ptrtoint ptr %bi_blocks12.i.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %bi_blocks12.i.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks.addr.047.i.i.i.i.2, i32 %114)
  %cmp13.i.i.i.i.2 = icmp ult i32 %blocks.addr.047.i.i.i.i.2, %114
  br i1 %cmp13.i.i.i.i.2, label %if.then14.i.i.i.i.2, label %if.end18.i.i.i.i.2

if.end18.i.i.i.i.2:                               ; preds = %if.end11.i.i.i.i.2
  %sub20.i.i.i.i.2 = sub i32 %blocks.addr.047.i.i.i.i.2, %114
  %incdec.ptr.i.i.i.i.2 = getelementptr %struct.gfs2_bitmap, ptr %incdec.ptr49.i.i.i.i.2, i32 1
  %cmp9.i.i.i.i.2 = icmp eq ptr %incdec.ptr.i.i.i.i.2, %add.ptr8.i.i.i.i.2
  br i1 %cmp9.i.i.i.i.2, label %if.end18.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge, label %if.end18.i.i.i.i.2.if.end11.i.i.i.i.2_crit_edge

if.end18.i.i.i.i.2.if.end11.i.i.i.i.2_crit_edge:  ; preds = %if.end18.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i.i.i.2

if.end18.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge: ; preds = %if.end18.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_unaligned_extlen.exit.i.i

if.then14.i.i.i.i.2:                              ; preds = %if.end11.i.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast.i.i.i.i.2 = ptrtoint ptr %incdec.ptr49.i.i.i.i.2 to i32
  %sub.ptr.sub.i.i.i.i.2 = sub i32 %sub.ptr.lhs.cast.i.i.i.i.2, %sub.ptr.rhs.cast.i.i.i.i
  %sub.ptr.div.i.i.i.i.2 = sdiv exact i32 %sub.ptr.sub.i.i.i.i.2, 28
  br label %gfs2_unaligned_extlen.exit.i.i

gfs2_unaligned_extlen.exit.i.i:                   ; preds = %if.then14.i.i.i.i.2, %if.end18.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge, %if.end.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge, %if.end6.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge, %if.end.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge, %gfs2_testbit.exit.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge, %for.inc.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge, %if.end18.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge, %if.end.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge, %if.end.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge, %gfs2_testbit.exit.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge, %for.inc.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge, %if.end18.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge, %if.end.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge, %if.end.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge, %gfs2_testbit.exit.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge
  %len.addr.1.i.i = phi i32 [ %dec.i.i.i, %if.end18.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %dec.i.i.i.1, %if.end18.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %dec.i.i.i.2, %if.end18.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %46, %gfs2_testbit.exit.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %dec.i.i.i, %if.end.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %60, %for.inc.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ 0, %if.end.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %dec.i.i.i, %gfs2_testbit.exit.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ 0, %if.end.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %dec.i.i.i.1, %if.end.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %60, %for.inc.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %dec.i.i.i.1, %gfs2_testbit.exit.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ 0, %if.end.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %dec.i.i.i.2, %if.end.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %60, %if.then14.i.i.i.i.2 ], [ %60, %if.end6.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ]
  %rbm.sroa.26.2.i.i = phi i32 [ %56, %if.end18.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.26.1.i.i, %if.end18.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.26.1.i.i.1, %if.end18.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %56, %gfs2_testbit.exit.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %56, %if.end.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.26.1.i.i, %for.inc.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %56, %if.end.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.26.1.i.i, %gfs2_testbit.exit.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.26.1.i.i, %if.end.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.26.1.i.i, %if.end.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.26.1.i.i.1, %for.inc.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.26.1.i.i.1, %gfs2_testbit.exit.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.26.1.i.i.1, %if.end.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.26.1.i.i.1, %if.end.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %sub.ptr.div.i.i.i.i.2, %if.then14.i.i.i.i.2 ], [ %rbm.sroa.26.1.i.i.1, %if.end6.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ]
  %rbm.sroa.11.2.i.i = phi i32 [ %add19.i, %if.end18.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.11.1.i.i, %if.end18.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.11.1.i.i.1, %if.end18.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %add19.i, %gfs2_testbit.exit.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %add19.i, %if.end.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.11.1.i.i, %for.inc.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %add19.i, %if.end.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.11.1.i.i, %gfs2_testbit.exit.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.11.1.i.i, %if.end.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.11.1.i.i, %if.end.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.11.1.i.i.1, %for.inc.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.11.1.i.i.1, %gfs2_testbit.exit.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.11.1.i.i.1, %if.end.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %rbm.sroa.11.1.i.i.1, %if.end.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %blocks.addr.047.i.i.i.i.2, %if.then14.i.i.i.i.2 ], [ %add.i.i.i.i.2, %if.end6.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ]
  %cmp22.i.i.i = phi i1 [ true, %if.end18.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %cmp.i.i.i, %if.end18.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %cmp.i.i.i.1, %if.end18.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ true, %gfs2_testbit.exit.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ true, %if.end.i.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %cmp.i.i.i, %for.inc.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ true, %if.end.i.i.i.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %cmp.i.i.i, %gfs2_testbit.exit.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %cmp.i.i.i, %if.end.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %cmp.i.i.i, %if.end.i.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %cmp.i.i.i.1, %for.inc.i.i.i.1.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %cmp.i.i.i.1, %gfs2_testbit.exit.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %cmp.i.i.i.1, %if.end.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ %cmp.i.i.i.1, %if.end.i.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ], [ false, %if.then14.i.i.i.i.2 ], [ false, %if.end6.i.i.i.2.gfs2_unaligned_extlen.exit.i.i_crit_edge ]
  br i1 %cmp22.i.i.i, label %gfs2_unaligned_extlen.exit.i.i.gfs2_free_extlen.exit.i_crit_edge, label %gfs2_unaligned_extlen.exit.i.i.if.end.i.i212_crit_edge

gfs2_unaligned_extlen.exit.i.i.if.end.i.i212_crit_edge: ; preds = %gfs2_unaligned_extlen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i212

gfs2_unaligned_extlen.exit.i.i.gfs2_free_extlen.exit.i_crit_edge: ; preds = %gfs2_unaligned_extlen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_extlen.exit.i

if.end.i.i212:                                    ; preds = %gfs2_unaligned_extlen.exit.i.i.if.end.i.i212_crit_edge, %if.then.i211.if.end.i.i212_crit_edge
  %len.addr.2.i.i = phi i32 [ %46, %if.then.i211.if.end.i.i212_crit_edge ], [ %len.addr.1.i.i, %gfs2_unaligned_extlen.exit.i.i.if.end.i.i212_crit_edge ]
  %rbm.sroa.26.3.i.i = phi i32 [ %56, %if.then.i211.if.end.i.i212_crit_edge ], [ %rbm.sroa.26.2.i.i, %gfs2_unaligned_extlen.exit.i.i.if.end.i.i212_crit_edge ]
  %rbm.sroa.11.3.i.i = phi i32 [ %add19.i, %if.then.i211.if.end.i.i212_crit_edge ], [ %rbm.sroa.11.2.i.i, %gfs2_unaligned_extlen.exit.i.i.if.end.i.i212_crit_edge ]
  %rd_sbd.i.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %48, i32 0, i32 14
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end57.i.i.while.cond.i.i_crit_edge, %if.end.i.i212
  %len.addr.3.i.i = phi i32 [ %len.addr.2.i.i, %if.end.i.i212 ], [ %sub52.i.i, %if.end57.i.i.while.cond.i.i_crit_edge ]
  %rbm.sroa.26.4.i.i = phi i32 [ %rbm.sroa.26.3.i.i, %if.end.i.i212 ], [ %rbm.sroa.26.5.ph.i.i, %if.end57.i.i.while.cond.i.i_crit_edge ]
  %rbm.sroa.11.4.i.i = phi i32 [ %rbm.sroa.11.3.i.i, %if.end.i.i212 ], [ %rbm.sroa.11.5.ph.i.i, %if.end57.i.i.while.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.3.i.i)
  %cmp.i.i213 = icmp ugt i32 %len.addr.3.i.i, 3
  br i1 %cmp.i.i213, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %and9.i.i = and i32 %rbm.sroa.11.4.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %do.end20.i.i, label %do.body14.i.i, !prof !151

do.body14.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 398, 0\0A.popsection", ""() #12, !srcloc !180
  unreachable

do.end20.i.i:                                     ; preds = %while.body.i.i
  %115 = ptrtoint ptr %rd_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rd_bits.i.i.i, align 8
  %bi_clone.i.i = getelementptr %struct.gfs2_bitmap, ptr %116, i32 %rbm.sroa.26.4.i.i, i32 1
  %117 = ptrtoint ptr %bi_clone.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bi_clone.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %118, null
  %add.ptr.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %116, i32 %rbm.sroa.26.4.i.i
  %119 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i.i.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %b_data.i.i, align 4
  %spec.select.i.i = select i1 %tobool3.not.i.i, ptr %122, ptr %118
  %bi_offset.i.i = getelementptr %struct.gfs2_bitmap, ptr %116, i32 %rbm.sroa.26.4.i.i, i32 3
  %123 = ptrtoint ptr %bi_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bi_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %spec.select.i.i, i32 %124
  %bi_bytes.i.i = getelementptr %struct.gfs2_bitmap, ptr %116, i32 %rbm.sroa.26.4.i.i, i32 5
  %125 = ptrtoint ptr %bi_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bi_bytes.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %126
  %div88.i.i = lshr i32 %rbm.sroa.11.4.i.i, 2
  %add.ptr22.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %div88.i.i
  %div2389.i.i = lshr i32 %len.addr.3.i.i, 2
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr7.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr22.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %127 = tail call i32 @llvm.umin.i32(i32 %div2389.i.i, i32 %sub.ptr.sub.i.i) #12
  %call25.i.i = tail call ptr @memchr_inv(ptr noundef %add.ptr22.i.i, i32 noundef 0, i32 noundef %127) #12
  %cmp26.i.i = icmp eq ptr %call25.i.i, null
  %sub.ptr.lhs.cast29.i.i = ptrtoint ptr %call25.i.i to i32
  %sub.ptr.sub31.i.i = sub i32 %sub.ptr.lhs.cast29.i.i, %sub.ptr.rhs.cast.i.i
  %cond33.i.i = select i1 %cmp26.i.i, i32 %127, i32 %sub.ptr.sub31.i.i
  %mul.i48.i = shl i32 %cond33.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.3.i.i, i32 %mul.i48.i)
  %cmp35.i.i = icmp ult i32 %len.addr.3.i.i, %mul.i48.i
  br i1 %cmp35.i.i, label %do.body43.i.i, label %do.end51.i.i, !prof !149

do.body43.i.i:                                    ; preds = %do.end20.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 404, 0\0A.popsection", ""() #12, !srcloc !181
  unreachable

do.end51.i.i:                                     ; preds = %do.end20.i.i
  %sub52.i.i = sub i32 %len.addr.3.i.i, %mul.i48.i
  %128 = ptrtoint ptr %rd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rd_data.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rbm.sroa.11.4.i.i, i32 %129)
  %cmp.not.i.i.i = icmp ult i32 %rbm.sroa.11.4.i.i, %129
  br i1 %cmp.not.i.i.i, label %gfs2_rbm_to_block.exit.i.i, label %do.body2.i.i.i, !prof !151

do.body2.i.i.i:                                   ; preds = %do.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

gfs2_rbm_to_block.exit.i.i:                       ; preds = %do.end51.i.i
  %130 = ptrtoint ptr %rd_data0.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %rd_data0.i.i, align 8
  %132 = ptrtoint ptr %rd_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rd_bits.i.i.i, align 8
  %bi_start.i.i.i = getelementptr %struct.gfs2_bitmap, ptr %133, i32 %rbm.sroa.26.4.i.i, i32 4
  %134 = ptrtoint ptr %bi_start.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bi_start.i.i.i, align 4
  %mul.i.i.i = shl i32 %135, 2
  %conv.i.i.i = zext i32 %mul.i.i.i to i64
  %conv8.i.i.i = zext i32 %rbm.sroa.11.4.i.i to i64
  %conv.i49.i = zext i32 %mul.i48.i to i64
  %add.i.i.i = add nuw nsw i64 %conv.i49.i, %conv8.i.i.i
  %add9.i.i.i = add i64 %add.i.i.i, %131
  %add.i50.i = add i64 %add9.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i50.i, i64 %131)
  %cmp.not.i.i.i.i = icmp ult i64 %add.i50.i, %131
  br i1 %cmp.not.i.i.i.i, label %gfs2_rbm_to_block.exit.i.i.gfs2_free_extlen.exit.i_crit_edge, label %rgrp_contains_block.exit.i.i.i

gfs2_rbm_to_block.exit.i.i.gfs2_free_extlen.exit.i_crit_edge: ; preds = %gfs2_rbm_to_block.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_extlen.exit.i

rgrp_contains_block.exit.i.i.i:                   ; preds = %gfs2_rbm_to_block.exit.i.i
  %conv.i.i91.i.i = zext i32 %129 to i64
  %add.i.i92.i.i = add i64 %131, %conv.i.i91.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i92.i.i, i64 %add.i50.i)
  %cmp2.i.not.i.i.i = icmp ugt i64 %add.i.i92.i.i, %add.i50.i
  br i1 %cmp2.i.not.i.i.i, label %if.end.i98.i.i, label %rgrp_contains_block.exit.i.i.i.gfs2_free_extlen.exit.i_crit_edge

rgrp_contains_block.exit.i.i.i.gfs2_free_extlen.exit.i_crit_edge: ; preds = %rgrp_contains_block.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_extlen.exit.i

if.end.i98.i.i:                                   ; preds = %rgrp_contains_block.exit.i.i.i
  %sub.i.i.i = sub i64 %add.i50.i, %131
  %conv.i94.i.i = trunc i64 %sub.i.i.i to i32
  %bi_blocks.i.i.i = getelementptr inbounds %struct.gfs2_bitmap, ptr %133, i32 0, i32 6
  %136 = ptrtoint ptr %bi_blocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bi_blocks.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %conv.i94.i.i)
  %cmp.i97.i.i = icmp ugt i32 %137, %conv.i94.i.i
  br i1 %cmp.i97.i.i, label %if.end.i98.i.i.if.end57.i.i_crit_edge, label %if.end6.i101.i.i

if.end.i98.i.i.if.end57.i.i_crit_edge:            ; preds = %if.end.i98.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57.i.i

if.end6.i101.i.i:                                 ; preds = %if.end.i98.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i99.i.i = add i32 %conv.i94.i.i, 416
  %138 = ptrtoint ptr %rd_sbd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rd_sbd.i.i.i, align 4
  %sd_blocks_per_bitmap.i.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %139, i32 0, i32 16
  %140 = ptrtoint ptr %sd_blocks_per_bitmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sd_blocks_per_bitmap.i.i.i, align 8
  %div.i.i.i = udiv i32 %add.i99.i.i, %141
  %mul.i100.i.i = mul i32 %div.i.i.i, %141
  %sub16.i.i.i = sub i32 %add.i99.i.i, %mul.i100.i.i
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.end6.i101.i.i, %if.end.i98.i.i.if.end57.i.i_crit_edge
  %rbm.sroa.26.5.ph.i.i = phi i32 [ %div.i.i.i, %if.end6.i101.i.i ], [ 0, %if.end.i98.i.i.if.end57.i.i_crit_edge ]
  %rbm.sroa.11.5.ph.i.i = phi i32 [ %sub16.i.i.i, %if.end6.i101.i.i ], [ %conv.i94.i.i, %if.end.i98.i.i.if.end57.i.i_crit_edge ]
  br i1 %cmp26.i.i, label %if.end57.i.i.while.cond.i.i_crit_edge, label %if.end57.i.i.for.body.lr.ph.i105.i.i_crit_edge

if.end57.i.i.for.body.lr.ph.i105.i.i_crit_edge:   ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph.i105.i.i

if.end57.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.3.i.i)
  %tobool62.not.i.i = icmp eq i32 %len.addr.3.i.i, 0
  br i1 %tobool62.not.i.i, label %while.end.i.i.gfs2_free_extlen.exit.i_crit_edge, label %while.end.i.i.for.body.lr.ph.i105.i.i_crit_edge

while.end.i.i.for.body.lr.ph.i105.i.i_crit_edge:  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph.i105.i.i

while.end.i.i.gfs2_free_extlen.exit.i_crit_edge:  ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_extlen.exit.i

for.body.lr.ph.i105.i.i:                          ; preds = %while.end.i.i.for.body.lr.ph.i105.i.i_crit_edge, %if.end57.i.i.for.body.lr.ph.i105.i.i_crit_edge
  %n_unaligned.1210.i.i = phi i32 [ %len.addr.3.i.i, %while.end.i.i.for.body.lr.ph.i105.i.i_crit_edge ], [ 3, %if.end57.i.i.for.body.lr.ph.i105.i.i_crit_edge ]
  %rbm.sroa.11.6209.i.i = phi i32 [ %rbm.sroa.11.4.i.i, %while.end.i.i.for.body.lr.ph.i105.i.i_crit_edge ], [ %rbm.sroa.11.5.ph.i.i, %if.end57.i.i.for.body.lr.ph.i105.i.i_crit_edge ]
  %rbm.sroa.26.6208.i.i = phi i32 [ %rbm.sroa.26.4.i.i, %while.end.i.i.for.body.lr.ph.i105.i.i_crit_edge ], [ %rbm.sroa.26.5.ph.i.i, %if.end57.i.i.for.body.lr.ph.i105.i.i_crit_edge ]
  %len.addr.4207.i.i = phi i32 [ %len.addr.3.i.i, %while.end.i.i.for.body.lr.ph.i105.i.i_crit_edge ], [ %sub52.i.i, %if.end57.i.i.for.body.lr.ph.i105.i.i_crit_edge ]
  %142 = ptrtoint ptr %rd_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rd_bits.i.i.i, align 8
  %rd_length.i.i135.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %48, i32 0, i32 4
  %sub.ptr.rhs.cast.i.i149.i.i = ptrtoint ptr %143 to i32
  %144 = sub i32 %len.addr.4207.i.i, %n_unaligned.1210.i.i
  br label %for.body.i111.i.i

for.body.i111.i.i:                                ; preds = %for.inc.i160.i.i.for.body.i111.i.i_crit_edge, %for.body.lr.ph.i105.i.i
  %len.addr.5.i.i = phi i32 [ %len.addr.4207.i.i, %for.body.lr.ph.i105.i.i ], [ %dec.i125.i.i, %for.inc.i160.i.i.for.body.i111.i.i_crit_edge ]
  %rbm.sroa.26.7.i.i = phi i32 [ %rbm.sroa.26.6208.i.i, %for.body.lr.ph.i105.i.i ], [ %rbm.sroa.26.8.i.i, %for.inc.i160.i.i.for.body.i111.i.i_crit_edge ]
  %rbm.sroa.11.7.i.i = phi i32 [ %rbm.sroa.11.6209.i.i, %for.body.lr.ph.i105.i.i ], [ %rbm.sroa.11.8.i.i, %for.inc.i160.i.i.for.body.i111.i.i_crit_edge ]
  %n.024.i107.i.i = phi i32 [ 0, %for.body.lr.ph.i105.i.i ], [ %inc.i157.i.i, %for.inc.i160.i.i.for.body.i111.i.i_crit_edge ]
  %bi_clone.i.i109.i.i = getelementptr %struct.gfs2_bitmap, ptr %143, i32 %rbm.sroa.26.7.i.i, i32 1
  %145 = ptrtoint ptr %bi_clone.i.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %bi_clone.i.i109.i.i, align 4
  %tobool1.not.i.i110.i.i = icmp eq ptr %146, null
  br i1 %tobool1.not.i.i110.i.i, label %if.else.i.i114.i.i, label %for.body.i111.i.i.gfs2_testbit.exit.i124.i.i_crit_edge

for.body.i111.i.i.gfs2_testbit.exit.i124.i.i_crit_edge: ; preds = %for.body.i111.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_testbit.exit.i124.i.i

if.else.i.i114.i.i:                               ; preds = %for.body.i111.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i112.i.i = getelementptr %struct.gfs2_bitmap, ptr %143, i32 %rbm.sroa.26.7.i.i
  %147 = ptrtoint ptr %add.ptr.i.i.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %add.ptr.i.i.i112.i.i, align 4
  %b_data.i.i113.i.i = getelementptr inbounds %struct.buffer_head, ptr %148, i32 0, i32 5
  %149 = ptrtoint ptr %b_data.i.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %b_data.i.i113.i.i, align 4
  br label %gfs2_testbit.exit.i124.i.i

gfs2_testbit.exit.i124.i.i:                       ; preds = %if.else.i.i114.i.i, %for.body.i111.i.i.gfs2_testbit.exit.i124.i.i_crit_edge
  %buffer.0.i.i115.i.i = phi ptr [ %150, %if.else.i.i114.i.i ], [ %146, %for.body.i111.i.i.gfs2_testbit.exit.i124.i.i_crit_edge ]
  %bi_offset.i.i116.i.i = getelementptr %struct.gfs2_bitmap, ptr %143, i32 %rbm.sroa.26.7.i.i, i32 3
  %151 = ptrtoint ptr %bi_offset.i.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bi_offset.i.i116.i.i, align 4
  %add.ptr.i.i117.i.i = getelementptr i8, ptr %buffer.0.i.i115.i.i, i32 %152
  %div12.i.i118.i.i = lshr i32 %rbm.sroa.11.7.i.i, 2
  %add.ptr3.i.i119.i.i = getelementptr i8, ptr %add.ptr.i.i117.i.i, i32 %div12.i.i118.i.i
  %rem.i.i120.i.i = shl i32 %rbm.sroa.11.7.i.i, 1
  %mul.i.i121.i.i = and i32 %rem.i.i120.i.i, 6
  %153 = ptrtoint ptr %add.ptr3.i.i119.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %add.ptr3.i.i119.i.i, align 1
  %conv.i.i122.i.i = zext i8 %154 to i32
  %155 = shl nuw nsw i32 3, %mul.i.i121.i.i
  %156 = and i32 %155, %conv.i.i122.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp1.not.i123.i.i = icmp eq i32 %156, 0
  br i1 %cmp1.not.i123.i.i, label %if.end.i127.i.i, label %gfs2_testbit.exit.i124.i.i.gfs2_free_extlen.exit.i_crit_edge

gfs2_testbit.exit.i124.i.i.gfs2_free_extlen.exit.i_crit_edge: ; preds = %gfs2_testbit.exit.i124.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_extlen.exit.i

if.end.i127.i.i:                                  ; preds = %gfs2_testbit.exit.i124.i.i
  %dec.i125.i.i = add i32 %len.addr.5.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i125.i.i)
  %cmp3.i126.i.i = icmp eq i32 %dec.i125.i.i, 0
  br i1 %cmp3.i126.i.i, label %if.end.i127.i.i.gfs2_free_extlen.exit.i_crit_edge, label %if.end6.i132.i.i

if.end.i127.i.i.gfs2_free_extlen.exit.i_crit_edge: ; preds = %if.end.i127.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_extlen.exit.i

if.end6.i132.i.i:                                 ; preds = %if.end.i127.i.i
  %add.i.i129.i.i = add i32 %rbm.sroa.11.7.i.i, 1
  %bi_blocks.i.i130.i.i = getelementptr %struct.gfs2_bitmap, ptr %143, i32 %rbm.sroa.26.7.i.i, i32 6
  %157 = ptrtoint ptr %bi_blocks.i.i130.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %bi_blocks.i.i130.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i129.i.i, i32 %158)
  %cmp.i.i131.i.i = icmp ult i32 %add.i.i129.i.i, %158
  br i1 %cmp.i.i131.i.i, label %if.end6.i132.i.i.for.inc.i160.i.i_crit_edge, label %if.end.i.i139.i.i

if.end6.i132.i.i.for.inc.i160.i.i_crit_edge:      ; preds = %if.end6.i132.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i160.i.i

if.end.i.i139.i.i:                                ; preds = %if.end6.i132.i.i
  %add.ptr.i15.i134.i.i = getelementptr %struct.gfs2_bitmap, ptr %143, i32 %rbm.sroa.26.7.i.i
  %159 = ptrtoint ptr %rd_length.i.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rd_length.i.i135.i.i, align 8
  %add.ptr8.i.i136.i.i = getelementptr %struct.gfs2_bitmap, ptr %143, i32 %160
  %incdec.ptr45.i.i137.i.i = getelementptr %struct.gfs2_bitmap, ptr %add.ptr.i15.i134.i.i, i32 1
  %cmp946.i.i138.i.i = icmp eq ptr %incdec.ptr45.i.i137.i.i, %add.ptr8.i.i136.i.i
  br i1 %cmp946.i.i138.i.i, label %if.end.i.i139.i.i.gfs2_free_extlen.exit.i_crit_edge, label %if.end11.preheader.i.i141.i.i

if.end.i.i139.i.i.gfs2_free_extlen.exit.i_crit_edge: ; preds = %if.end.i.i139.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_extlen.exit.i

if.end11.preheader.i.i141.i.i:                    ; preds = %if.end.i.i139.i.i
  %sub6.i.i140.i.i = sub i32 %add.i.i129.i.i, %158
  br label %if.end11.i.i147.i.i

if.end11.i.i147.i.i:                              ; preds = %if.end18.i.i156.i.i.if.end11.i.i147.i.i_crit_edge, %if.end11.preheader.i.i141.i.i
  %incdec.ptr49.i.i142.i.i = phi ptr [ %incdec.ptr.i.i154.i.i, %if.end18.i.i156.i.i.if.end11.i.i147.i.i_crit_edge ], [ %incdec.ptr45.i.i137.i.i, %if.end11.preheader.i.i141.i.i ]
  %bi.048.i.i143.i.i = phi ptr [ %incdec.ptr49.i.i142.i.i, %if.end18.i.i156.i.i.if.end11.i.i147.i.i_crit_edge ], [ %add.ptr.i15.i134.i.i, %if.end11.preheader.i.i141.i.i ]
  %blocks.addr.047.i.i144.i.i = phi i32 [ %sub20.i.i153.i.i, %if.end18.i.i156.i.i.if.end11.i.i147.i.i_crit_edge ], [ %sub6.i.i140.i.i, %if.end11.preheader.i.i141.i.i ]
  %bi_blocks12.i.i145.i.i = getelementptr %struct.gfs2_bitmap, ptr %bi.048.i.i143.i.i, i32 1, i32 6
  %161 = ptrtoint ptr %bi_blocks12.i.i145.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bi_blocks12.i.i145.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks.addr.047.i.i144.i.i, i32 %162)
  %cmp13.i.i146.i.i = icmp ult i32 %blocks.addr.047.i.i144.i.i, %162
  br i1 %cmp13.i.i146.i.i, label %if.then14.i.i152.i.i, label %if.end18.i.i156.i.i

if.then14.i.i152.i.i:                             ; preds = %if.end11.i.i147.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast.i.i148.i.i = ptrtoint ptr %incdec.ptr49.i.i142.i.i to i32
  %sub.ptr.sub.i.i150.i.i = sub i32 %sub.ptr.lhs.cast.i.i148.i.i, %sub.ptr.rhs.cast.i.i149.i.i
  %sub.ptr.div.i.i151.i.i = sdiv exact i32 %sub.ptr.sub.i.i150.i.i, 28
  br label %for.inc.i160.i.i

if.end18.i.i156.i.i:                              ; preds = %if.end11.i.i147.i.i
  %sub20.i.i153.i.i = sub i32 %blocks.addr.047.i.i144.i.i, %162
  %incdec.ptr.i.i154.i.i = getelementptr %struct.gfs2_bitmap, ptr %incdec.ptr49.i.i142.i.i, i32 1
  %cmp9.i.i155.i.i = icmp eq ptr %incdec.ptr.i.i154.i.i, %add.ptr8.i.i136.i.i
  br i1 %cmp9.i.i155.i.i, label %if.end18.i.i156.i.i.gfs2_free_extlen.exit.i_crit_edge, label %if.end18.i.i156.i.i.if.end11.i.i147.i.i_crit_edge

if.end18.i.i156.i.i.if.end11.i.i147.i.i_crit_edge: ; preds = %if.end18.i.i156.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i147.i.i

if.end18.i.i156.i.i.gfs2_free_extlen.exit.i_crit_edge: ; preds = %if.end18.i.i156.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_extlen.exit.i

for.inc.i160.i.i:                                 ; preds = %if.then14.i.i152.i.i, %if.end6.i132.i.i.for.inc.i160.i.i_crit_edge
  %rbm.sroa.26.8.i.i = phi i32 [ %sub.ptr.div.i.i151.i.i, %if.then14.i.i152.i.i ], [ %rbm.sroa.26.7.i.i, %if.end6.i132.i.i.for.inc.i160.i.i_crit_edge ]
  %rbm.sroa.11.8.i.i = phi i32 [ %blocks.addr.047.i.i144.i.i, %if.then14.i.i152.i.i ], [ %add.i.i129.i.i, %if.end6.i132.i.i.for.inc.i160.i.i_crit_edge ]
  %inc.i157.i.i = add nuw i32 %n.024.i107.i.i, 1
  %exitcond.not.i159.i.i = icmp eq i32 %inc.i157.i.i, %n_unaligned.1210.i.i
  br i1 %exitcond.not.i159.i.i, label %for.inc.i160.i.i.gfs2_free_extlen.exit.i_crit_edge, label %for.inc.i160.i.i.for.body.i111.i.i_crit_edge

for.inc.i160.i.i.for.body.i111.i.i_crit_edge:     ; preds = %for.inc.i160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i111.i.i

for.inc.i160.i.i.gfs2_free_extlen.exit.i_crit_edge: ; preds = %for.inc.i160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_free_extlen.exit.i

gfs2_free_extlen.exit.i:                          ; preds = %for.inc.i160.i.i.gfs2_free_extlen.exit.i_crit_edge, %if.end18.i.i156.i.i.gfs2_free_extlen.exit.i_crit_edge, %if.end.i.i139.i.i.gfs2_free_extlen.exit.i_crit_edge, %if.end.i127.i.i.gfs2_free_extlen.exit.i_crit_edge, %gfs2_testbit.exit.i124.i.i.gfs2_free_extlen.exit.i_crit_edge, %while.end.i.i.gfs2_free_extlen.exit.i_crit_edge, %rgrp_contains_block.exit.i.i.i.gfs2_free_extlen.exit.i_crit_edge, %gfs2_rbm_to_block.exit.i.i.gfs2_free_extlen.exit.i_crit_edge, %gfs2_unaligned_extlen.exit.i.i.gfs2_free_extlen.exit.i_crit_edge
  %len.addr.7.i.i = phi i32 [ 0, %while.end.i.i.gfs2_free_extlen.exit.i_crit_edge ], [ %len.addr.1.i.i, %gfs2_unaligned_extlen.exit.i.i.gfs2_free_extlen.exit.i_crit_edge ], [ %dec.i125.i.i, %if.end18.i.i156.i.i.gfs2_free_extlen.exit.i_crit_edge ], [ %len.addr.5.i.i, %gfs2_testbit.exit.i124.i.i.gfs2_free_extlen.exit.i_crit_edge ], [ %dec.i125.i.i, %if.end.i.i139.i.i.gfs2_free_extlen.exit.i_crit_edge ], [ %144, %for.inc.i160.i.i.gfs2_free_extlen.exit.i_crit_edge ], [ 0, %if.end.i127.i.i.gfs2_free_extlen.exit.i_crit_edge ], [ %sub52.i.i, %gfs2_rbm_to_block.exit.i.i.gfs2_free_extlen.exit.i_crit_edge ], [ %sub52.i.i, %rgrp_contains_block.exit.i.i.i.gfs2_free_extlen.exit.i_crit_edge ]
  %sub66.i.i = sub i32 %46, %len.addr.7.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub66.i.i, i32 %maxext.sroa.10.0.ph)
  %cmp2.not.i = icmp ugt i32 %sub66.i.i, %maxext.sroa.10.0.ph
  br i1 %cmp2.not.i, label %gfs2_free_extlen.exit.i.if.end4.i_crit_edge, label %gfs2_free_extlen.exit.i.fail.i_crit_edge

gfs2_free_extlen.exit.i.fail.i_crit_edge:         ; preds = %gfs2_free_extlen.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

gfs2_free_extlen.exit.i.if.end4.i_crit_edge:      ; preds = %gfs2_free_extlen.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.end4.i:                                        ; preds = %gfs2_free_extlen.exit.i.if.end4.i_crit_edge, %gfs2_rbm_to_block.exit.i.if.end4.i_crit_edge
  %extlen.0.i = phi i32 [ %sub66.i.i, %gfs2_free_extlen.exit.i.if.end4.i_crit_edge ], [ 1, %gfs2_rbm_to_block.exit.i.if.end4.i_crit_edge ]
  %163 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rbm, align 4
  %rd_rsspin.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %164, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %rd_rsspin.i.i) #12
  %rd_rstree.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %164, i32 0, i32 21
  %165 = ptrtoint ptr %rd_rstree.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %n.064.i.i = load ptr, ptr %rd_rstree.i.i, align 4
  %tobool.not65.i.i = icmp eq ptr %n.064.i.i, null
  br i1 %tobool.not65.i.i, label %if.end4.i.gfs2_next_unreserved_block.exit.thread.i_crit_edge, label %while.body.lr.ph.i.i

if.end4.i.gfs2_next_unreserved_block.exit.thread.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_next_unreserved_block.exit.thread.i

while.body.lr.ph.i.i:                             ; preds = %if.end4.i
  %conv3.i.i.i = zext i32 %extlen.0.i to i64
  %add4.i.i.i = add i64 %add9.i.i, %conv3.i.i.i
  br label %while.body.i54.i

while.body.i54.i:                                 ; preds = %if.end4.i.i.while.body.i54.i_crit_edge, %while.body.lr.ph.i.i
  %n.066.i.i = phi ptr [ %n.064.i.i, %while.body.lr.ph.i.i ], [ %n.0.i.i, %if.end4.i.i.while.body.i54.i_crit_edge ]
  %rs_start.i.i.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %n.066.i.i, i32 0, i32 2
  %166 = ptrtoint ptr %rs_start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %rs_start.i.i.i, align 8
  %rs_requested.i.i.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %n.066.i.i, i32 0, i32 3
  %168 = ptrtoint ptr %rs_requested.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %rs_requested.i.i.i, align 8
  %conv.i.i51.i = zext i32 %169 to i64
  %add.i.i52.i = add i64 %167, %conv.i.i51.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i52.i, i64 %add9.i.i)
  %cmp.not.i.i53.i = icmp ugt i64 %add.i.i52.i, %add9.i.i
  br i1 %cmp.not.i.i53.i, label %rs_cmp.exit.i.i, label %if.then2.i.i

rs_cmp.exit.i.i:                                  ; preds = %while.body.i54.i
  call void @__sanitizer_cov_trace_cmp8(i64 %167, i64 %add4.i.i.i)
  %cmp5.not.i.not.i.i = icmp ult i64 %167, %add4.i.i.i
  br i1 %cmp5.not.i.not.i.i, label %rs_cmp.exit.i.i.while.cond7.i.i_crit_edge, label %if.then.i.i214

rs_cmp.exit.i.i.while.cond7.i.i_crit_edge:        ; preds = %rs_cmp.exit.i.i
  br label %while.cond7.i.i

if.then.i.i214:                                   ; preds = %rs_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.066.i.i, i32 0, i32 2
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %while.body.i54.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.066.i.i, i32 0, i32 1
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then2.i.i, %if.then.i.i214
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i214 ], [ %rb_right.i.i, %if.then2.i.i ]
  %170 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i55.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i55.i, label %if.end4.i.i.gfs2_next_unreserved_block.exit.thread.i_crit_edge, label %if.end4.i.i.while.body.i54.i_crit_edge

if.end4.i.i.while.body.i54.i_crit_edge:           ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i54.i

if.end4.i.i.gfs2_next_unreserved_block.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_next_unreserved_block.exit.thread.i

while.cond7.i.i:                                  ; preds = %while.body11.i.i.while.cond7.i.i_crit_edge, %rs_cmp.exit.i.i.while.cond7.i.i_crit_edge
  %n.2.i.i = phi ptr [ %176, %while.body11.i.i.while.cond7.i.i_crit_edge ], [ %n.066.i.i, %rs_cmp.exit.i.i.while.cond7.i.i_crit_edge ]
  %block.addr.0.i.i = phi i64 [ %add.i43.i.i, %while.body11.i.i.while.cond7.i.i_crit_edge ], [ %add9.i.i, %rs_cmp.exit.i.i.while.cond7.i.i_crit_edge ]
  %rs_start.i40.i.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %n.2.i.i, i32 0, i32 2
  %171 = ptrtoint ptr %rs_start.i40.i.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %rs_start.i40.i.i, align 8
  %rs_requested.i41.i.i = getelementptr inbounds %struct.gfs2_blkreserv, ptr %n.2.i.i, i32 0, i32 3
  %173 = ptrtoint ptr %rs_requested.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rs_requested.i41.i.i, align 8
  %conv.i42.i.i = zext i32 %174 to i64
  %add.i43.i.i = add i64 %172, %conv.i42.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i43.i.i, i64 %block.addr.0.i.i)
  %cmp.not.i44.i.i = icmp ugt i64 %add.i43.i.i, %block.addr.0.i.i
  br i1 %cmp.not.i44.i.i, label %rs_cmp.exit51.i.i, label %while.cond7.i.i.gfs2_next_unreserved_block.exit.i_crit_edge

while.cond7.i.i.gfs2_next_unreserved_block.exit.i_crit_edge: ; preds = %while.cond7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_next_unreserved_block.exit.i

rs_cmp.exit51.i.i:                                ; preds = %while.cond7.i.i
  %add4.i46.i.i = add i64 %block.addr.0.i.i, %conv3.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %172, i64 %add4.i46.i.i)
  %cmp5.not.i47.i.i = icmp uge i64 %172, %add4.i46.i.i
  %cmp10.not.i.i = icmp eq ptr %n.2.i.i, %rs
  %or.cond.i.i = or i1 %cmp10.not.i.i, %cmp5.not.i47.i.i
  br i1 %or.cond.i.i, label %rs_cmp.exit51.i.i.gfs2_next_unreserved_block.exit.i_crit_edge, label %while.body11.i.i

rs_cmp.exit51.i.i.gfs2_next_unreserved_block.exit.i_crit_edge: ; preds = %rs_cmp.exit51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_next_unreserved_block.exit.i

while.body11.i.i:                                 ; preds = %rs_cmp.exit51.i.i
  %rb_right12.i.i = getelementptr inbounds %struct.rb_node, ptr %n.2.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %rb_right12.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rb_right12.i.i, align 4
  %cmp13.i.i = icmp eq ptr %176, null
  br i1 %cmp13.i.i, label %while.body11.i.i.gfs2_next_unreserved_block.exit.i_crit_edge, label %while.body11.i.i.while.cond7.i.i_crit_edge

while.body11.i.i.while.cond7.i.i_crit_edge:       ; preds = %while.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond7.i.i

while.body11.i.i.gfs2_next_unreserved_block.exit.i_crit_edge: ; preds = %while.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_next_unreserved_block.exit.i

gfs2_next_unreserved_block.exit.thread.i:         ; preds = %if.end4.i.i.gfs2_next_unreserved_block.exit.thread.i_crit_edge, %if.end4.i.gfs2_next_unreserved_block.exit.thread.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rd_rsspin.i.i) #12
  br label %if.then7.i

gfs2_next_unreserved_block.exit.i:                ; preds = %while.body11.i.i.gfs2_next_unreserved_block.exit.i_crit_edge, %rs_cmp.exit51.i.i.gfs2_next_unreserved_block.exit.i_crit_edge, %while.cond7.i.i.gfs2_next_unreserved_block.exit.i_crit_edge
  %block.addr.1.i.i = phi i64 [ %block.addr.0.i.i, %while.cond7.i.i.gfs2_next_unreserved_block.exit.i_crit_edge ], [ %block.addr.0.i.i, %rs_cmp.exit51.i.i.gfs2_next_unreserved_block.exit.i_crit_edge ], [ %add.i43.i.i, %while.body11.i.i.gfs2_next_unreserved_block.exit.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %rd_rsspin.i.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %block.addr.1.i.i, i64 %add9.i.i)
  %cmp6.i = icmp eq i64 %block.addr.1.i.i, %add9.i.i
  br i1 %cmp6.i, label %gfs2_next_unreserved_block.exit.i.if.then7.i_crit_edge, label %if.else.i

gfs2_next_unreserved_block.exit.i.if.then7.i_crit_edge: ; preds = %gfs2_next_unreserved_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %gfs2_next_unreserved_block.exit.i.if.then7.i_crit_edge, %gfs2_next_unreserved_block.exit.thread.i
  call void @__sanitizer_cov_trace_cmp4(i32 %extlen.0.i, i32 %46)
  %cmp8.not.i = icmp ult i32 %extlen.0.i, %46
  br i1 %cmp8.not.i, label %if.end10.i, label %if.then7.i.cleanup_crit_edge

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %extlen.0.i, i32 %maxext.sroa.10.0.ph)
  %cmp12.i = icmp ugt i32 %extlen.0.i, %maxext.sroa.10.0.ph
  br i1 %cmp12.i, label %if.then13.i, label %if.end10.i.fail.i_crit_edge

if.end10.i.fail.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %177 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %177)
  %maxext.sroa.0.0.copyload216 = load ptr, ptr %rbm, align 4
  %178 = ptrtoint ptr %offset9 to i32
  call void @__asan_load4_noabort(i32 %178)
  %maxext.sroa.6.0.copyload218 = load i32, ptr %offset9, align 4
  %179 = ptrtoint ptr %bii to i32
  call void @__asan_load4_noabort(i32 %179)
  %maxext.sroa.8.0.copyload220 = load i32, ptr %bii, align 4
  br label %fail.i

if.else.i:                                        ; preds = %gfs2_next_unreserved_block.exit.i
  %sub.i215 = sub i64 %block.addr.1.i.i, %add9.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %sub.i215)
  %cmp18.i = icmp ugt i64 %sub.i215, 4294967295
  %conv.i = trunc i64 %sub.i215 to i32
  br i1 %cmp18.i, label %if.else.i.res_covered_end_of_rgrp.thread_crit_edge, label %if.else.i.fail.i_crit_edge

if.else.i.fail.i_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i

if.else.i.res_covered_end_of_rgrp.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %res_covered_end_of_rgrp.thread

fail.i:                                           ; preds = %if.else.i.fail.i_crit_edge, %if.then13.i, %if.end10.i.fail.i_crit_edge, %gfs2_free_extlen.exit.i.fail.i_crit_edge
  %maxext.sroa.10.1 = phi i32 [ %extlen.0.i, %if.then13.i ], [ %maxext.sroa.10.0.ph, %if.end10.i.fail.i_crit_edge ], [ %maxext.sroa.10.0.ph, %if.else.i.fail.i_crit_edge ], [ %maxext.sroa.10.0.ph, %gfs2_free_extlen.exit.i.fail.i_crit_edge ]
  %maxext.sroa.8.1 = phi i32 [ %maxext.sroa.8.0.copyload220, %if.then13.i ], [ %maxext.sroa.8.0.ph, %if.end10.i.fail.i_crit_edge ], [ %maxext.sroa.8.0.ph, %if.else.i.fail.i_crit_edge ], [ %maxext.sroa.8.0.ph, %gfs2_free_extlen.exit.i.fail.i_crit_edge ]
  %maxext.sroa.6.1 = phi i32 [ %maxext.sroa.6.0.copyload218, %if.then13.i ], [ %maxext.sroa.6.0.ph, %if.end10.i.fail.i_crit_edge ], [ %maxext.sroa.6.0.ph, %if.else.i.fail.i_crit_edge ], [ %maxext.sroa.6.0.ph, %gfs2_free_extlen.exit.i.fail.i_crit_edge ]
  %maxext.sroa.0.1 = phi ptr [ %maxext.sroa.0.0.copyload216, %if.then13.i ], [ %maxext.sroa.0.0.ph, %if.end10.i.fail.i_crit_edge ], [ %maxext.sroa.0.0.ph, %if.else.i.fail.i_crit_edge ], [ %maxext.sroa.0.0.ph, %gfs2_free_extlen.exit.i.fail.i_crit_edge ]
  %extlen.2.i = phi i32 [ %extlen.0.i, %if.then13.i ], [ %extlen.0.i, %if.end10.i.fail.i_crit_edge ], [ %conv.i, %if.else.i.fail.i_crit_edge ], [ %sub66.i.i, %gfs2_free_extlen.exit.i.fail.i_crit_edge ]
  %180 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rbm, align 4
  %rd_bits.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %181, i32 0, i32 13
  %182 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rd_bits.i.i, align 8
  %184 = ptrtoint ptr %bii to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %bii, align 4
  %186 = ptrtoint ptr %offset9 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %offset9, align 4
  %add.i57.i = add i32 %187, %extlen.2.i
  %bi_blocks.i.i = getelementptr %struct.gfs2_bitmap, ptr %183, i32 %185, i32 6
  %188 = ptrtoint ptr %bi_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %bi_blocks.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i57.i, i32 %189)
  %cmp.i58.i = icmp ult i32 %add.i57.i, %189
  br i1 %cmp.i58.i, label %if.then.i59.i, label %if.end.i61.i

if.then.i59.i:                                    ; preds = %fail.i
  %190 = ptrtoint ptr %offset9 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %add.i57.i, ptr %offset9, align 4
  br i1 %wrapped.0.off0, label %if.then.i59.i.land.lhs.true107_crit_edge, label %if.then.i59.i.while.cond.outer.backedge_crit_edge

if.then.i59.i.while.cond.outer.backedge_crit_edge: ; preds = %if.then.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.backedge

if.then.i59.i.land.lhs.true107_crit_edge:         ; preds = %if.then.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true107

if.end.i61.i:                                     ; preds = %fail.i
  %add.ptr.i60.i = getelementptr %struct.gfs2_bitmap, ptr %183, i32 %185
  %rd_length.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %181, i32 0, i32 4
  %191 = ptrtoint ptr %rd_length.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %rd_length.i.i, align 8
  %add.ptr8.i.i = getelementptr %struct.gfs2_bitmap, ptr %183, i32 %192
  %incdec.ptr45.i.i = getelementptr %struct.gfs2_bitmap, ptr %add.ptr.i60.i, i32 1
  %cmp946.i.i = icmp eq ptr %incdec.ptr45.i.i, %add.ptr8.i.i
  br i1 %cmp946.i.i, label %if.end.i61.i.res_covered_end_of_rgrp.thread_crit_edge, label %if.end11.preheader.i.i

if.end.i61.i.res_covered_end_of_rgrp.thread_crit_edge: ; preds = %if.end.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %res_covered_end_of_rgrp.thread

if.end11.preheader.i.i:                           ; preds = %if.end.i61.i
  %sub6.i.i = sub i32 %add.i57.i, %189
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.end18.i.i.if.end11.i.i_crit_edge, %if.end11.preheader.i.i
  %incdec.ptr49.i.i = phi ptr [ %incdec.ptr.i.i, %if.end18.i.i.if.end11.i.i_crit_edge ], [ %incdec.ptr45.i.i, %if.end11.preheader.i.i ]
  %bi.048.i.i = phi ptr [ %incdec.ptr49.i.i, %if.end18.i.i.if.end11.i.i_crit_edge ], [ %add.ptr.i60.i, %if.end11.preheader.i.i ]
  %blocks.addr.047.i.i = phi i32 [ %sub20.i.i, %if.end18.i.i.if.end11.i.i_crit_edge ], [ %sub6.i.i, %if.end11.preheader.i.i ]
  %bi_blocks12.i.i = getelementptr %struct.gfs2_bitmap, ptr %bi.048.i.i, i32 1, i32 6
  %193 = ptrtoint ptr %bi_blocks12.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %bi_blocks12.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks.addr.047.i.i, i32 %194)
  %cmp13.i62.i = icmp ult i32 %blocks.addr.047.i.i, %194
  br i1 %cmp13.i62.i, label %if.then14.i.i, label %if.end18.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  %195 = ptrtoint ptr %offset9 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %blocks.addr.047.i.i, ptr %offset9, align 4
  %196 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rd_bits.i.i, align 8
  %sub.ptr.lhs.cast.i63.i = ptrtoint ptr %incdec.ptr49.i.i to i32
  %sub.ptr.rhs.cast.i64.i = ptrtoint ptr %197 to i32
  %sub.ptr.sub.i65.i = sub i32 %sub.ptr.lhs.cast.i63.i, %sub.ptr.rhs.cast.i64.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i65.i, 28
  %198 = ptrtoint ptr %bii to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %sub.ptr.div.i.i, ptr %bii, align 4
  br i1 %wrapped.0.off0, label %if.then14.i.i.land.lhs.true107_crit_edge, label %if.then14.i.i.while.cond.outer.backedge_crit_edge

if.then14.i.i.while.cond.outer.backedge_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.backedge

if.then14.i.i.land.lhs.true107_crit_edge:         ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true107

if.end18.i.i:                                     ; preds = %if.end11.i.i
  %sub20.i.i = sub i32 %blocks.addr.047.i.i, %194
  %incdec.ptr.i.i = getelementptr %struct.gfs2_bitmap, ptr %incdec.ptr49.i.i, i32 1
  %cmp9.i.i = icmp eq ptr %incdec.ptr.i.i, %add.ptr8.i.i
  br i1 %cmp9.i.i, label %if.end18.i.i.res_covered_end_of_rgrp.thread_crit_edge, label %if.end18.i.i.if.end11.i.i_crit_edge

if.end18.i.i.if.end11.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i.i

if.end18.i.i.res_covered_end_of_rgrp.thread_crit_edge: ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %res_covered_end_of_rgrp.thread

res_covered_end_of_rgrp.thread:                   ; preds = %if.end18.i.i.res_covered_end_of_rgrp.thread_crit_edge, %if.end.i61.i.res_covered_end_of_rgrp.thread_crit_edge, %if.else.i.res_covered_end_of_rgrp.thread_crit_edge
  %maxext.sroa.10.2.ph.ph = phi i32 [ %maxext.sroa.10.1, %if.end.i61.i.res_covered_end_of_rgrp.thread_crit_edge ], [ %maxext.sroa.10.0.ph, %if.else.i.res_covered_end_of_rgrp.thread_crit_edge ], [ %maxext.sroa.10.1, %if.end18.i.i.res_covered_end_of_rgrp.thread_crit_edge ]
  %maxext.sroa.8.2.ph.ph = phi i32 [ %maxext.sroa.8.1, %if.end.i61.i.res_covered_end_of_rgrp.thread_crit_edge ], [ %maxext.sroa.8.0.ph, %if.else.i.res_covered_end_of_rgrp.thread_crit_edge ], [ %maxext.sroa.8.1, %if.end18.i.i.res_covered_end_of_rgrp.thread_crit_edge ]
  %maxext.sroa.6.2.ph.ph = phi i32 [ %maxext.sroa.6.1, %if.end.i61.i.res_covered_end_of_rgrp.thread_crit_edge ], [ %maxext.sroa.6.0.ph, %if.else.i.res_covered_end_of_rgrp.thread_crit_edge ], [ %maxext.sroa.6.1, %if.end18.i.i.res_covered_end_of_rgrp.thread_crit_edge ]
  %maxext.sroa.0.2.ph.ph = phi ptr [ %maxext.sroa.0.1, %if.end.i61.i.res_covered_end_of_rgrp.thread_crit_edge ], [ %maxext.sroa.0.0.ph, %if.else.i.res_covered_end_of_rgrp.thread_crit_edge ], [ %maxext.sroa.0.1, %if.end18.i.i.res_covered_end_of_rgrp.thread_crit_edge ]
  %199 = ptrtoint ptr %bii to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %bii, align 4
  %200 = ptrtoint ptr %offset9 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %offset9, align 4
  br label %if.then97

res_covered_end_of_rgrp:                          ; preds = %if.then61, %if.then53.res_covered_end_of_rgrp_crit_edge, %while.cond.res_covered_end_of_rgrp_crit_edge
  %201 = ptrtoint ptr %offset9 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %offset9, align 4
  %202 = ptrtoint ptr %bii to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %bii, align 4
  %inc = add i32 %203, 1
  store i32 %inc, ptr %bii, align 4
  %204 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %rbm, align 4
  %rd_length = getelementptr inbounds %struct.gfs2_rgrpd, ptr %205, i32 0, i32 4
  %206 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %rd_length, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %207)
  %cmp89 = icmp eq i32 %inc, %207
  %spec.store.select = select i1 %cmp89, i32 0, i32 %inc
  %208 = ptrtoint ptr %bii to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %spec.store.select, ptr %bii, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp95 = icmp eq i32 %spec.store.select, 0
  br i1 %cmp95, label %res_covered_end_of_rgrp.if.then97_crit_edge, label %next_iter

res_covered_end_of_rgrp.if.then97_crit_edge:      ; preds = %res_covered_end_of_rgrp
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then97

if.then97:                                        ; preds = %res_covered_end_of_rgrp.if.then97_crit_edge, %res_covered_end_of_rgrp.thread
  %maxext.sroa.0.3256 = phi ptr [ %maxext.sroa.0.2.ph.ph, %res_covered_end_of_rgrp.thread ], [ %maxext.sroa.0.0.ph, %res_covered_end_of_rgrp.if.then97_crit_edge ]
  %maxext.sroa.6.3255 = phi i32 [ %maxext.sroa.6.2.ph.ph, %res_covered_end_of_rgrp.thread ], [ %maxext.sroa.6.0.ph, %res_covered_end_of_rgrp.if.then97_crit_edge ]
  %maxext.sroa.8.3254 = phi i32 [ %maxext.sroa.8.2.ph.ph, %res_covered_end_of_rgrp.thread ], [ %maxext.sroa.8.0.ph, %res_covered_end_of_rgrp.if.then97_crit_edge ]
  %maxext.sroa.10.3253 = phi i32 [ %maxext.sroa.10.2.ph.ph, %res_covered_end_of_rgrp.thread ], [ %maxext.sroa.10.0.ph, %res_covered_end_of_rgrp.if.then97_crit_edge ]
  %brmerge = or i1 %wrapped.0.off0, %nowrap
  br i1 %brmerge, label %if.then97.while.end_crit_edge, label %if.then97.land.lhs.true107_crit_edge

if.then97.land.lhs.true107_crit_edge:             ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true107

if.then97.while.end_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

next_iter:                                        ; preds = %res_covered_end_of_rgrp
  br i1 %wrapped.0.off0, label %next_iter.land.lhs.true107_crit_edge, label %next_iter.while.cond_crit_edge

next_iter.while.cond_crit_edge:                   ; preds = %next_iter
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

next_iter.land.lhs.true107_crit_edge:             ; preds = %next_iter
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true107

land.lhs.true107:                                 ; preds = %next_iter.land.lhs.true107_crit_edge, %if.then97.land.lhs.true107_crit_edge, %if.then14.i.i.land.lhs.true107_crit_edge, %if.then.i59.i.land.lhs.true107_crit_edge
  %maxext.sroa.0.4268 = phi ptr [ %maxext.sroa.0.1, %if.then.i59.i.land.lhs.true107_crit_edge ], [ %maxext.sroa.0.1, %if.then14.i.i.land.lhs.true107_crit_edge ], [ %maxext.sroa.0.3256, %if.then97.land.lhs.true107_crit_edge ], [ %maxext.sroa.0.0.ph, %next_iter.land.lhs.true107_crit_edge ]
  %maxext.sroa.6.4266 = phi i32 [ %maxext.sroa.6.1, %if.then.i59.i.land.lhs.true107_crit_edge ], [ %maxext.sroa.6.1, %if.then14.i.i.land.lhs.true107_crit_edge ], [ %maxext.sroa.6.3255, %if.then97.land.lhs.true107_crit_edge ], [ %maxext.sroa.6.0.ph, %next_iter.land.lhs.true107_crit_edge ]
  %maxext.sroa.8.4264 = phi i32 [ %maxext.sroa.8.1, %if.then.i59.i.land.lhs.true107_crit_edge ], [ %maxext.sroa.8.1, %if.then14.i.i.land.lhs.true107_crit_edge ], [ %maxext.sroa.8.3254, %if.then97.land.lhs.true107_crit_edge ], [ %maxext.sroa.8.0.ph, %next_iter.land.lhs.true107_crit_edge ]
  %maxext.sroa.10.4262 = phi i32 [ %maxext.sroa.10.1, %if.then.i59.i.land.lhs.true107_crit_edge ], [ %maxext.sroa.10.1, %if.then14.i.i.land.lhs.true107_crit_edge ], [ %maxext.sroa.10.3253, %if.then97.land.lhs.true107_crit_edge ], [ %maxext.sroa.10.0.ph, %next_iter.land.lhs.true107_crit_edge ]
  %209 = ptrtoint ptr %bii to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %bii, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %sub)
  %cmp109 = icmp sgt i32 %210, %sub
  br i1 %cmp109, label %land.lhs.true107.while.end_crit_edge, label %land.lhs.true107.while.cond.outer.backedge_crit_edge

land.lhs.true107.while.cond.outer.backedge_crit_edge: ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.outer.backedge

land.lhs.true107.while.end_crit_edge:             ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.cond.outer.backedge:                        ; preds = %land.lhs.true107.while.cond.outer.backedge_crit_edge, %if.then14.i.i.while.cond.outer.backedge_crit_edge, %if.then.i59.i.while.cond.outer.backedge_crit_edge
  %maxext.sroa.10.0.ph.be = phi i32 [ %maxext.sroa.10.1, %if.then14.i.i.while.cond.outer.backedge_crit_edge ], [ %maxext.sroa.10.1, %if.then.i59.i.while.cond.outer.backedge_crit_edge ], [ %maxext.sroa.10.4262, %land.lhs.true107.while.cond.outer.backedge_crit_edge ]
  %maxext.sroa.8.0.ph.be = phi i32 [ %maxext.sroa.8.1, %if.then14.i.i.while.cond.outer.backedge_crit_edge ], [ %maxext.sroa.8.1, %if.then.i59.i.while.cond.outer.backedge_crit_edge ], [ %maxext.sroa.8.4264, %land.lhs.true107.while.cond.outer.backedge_crit_edge ]
  %maxext.sroa.6.0.ph.be = phi i32 [ %maxext.sroa.6.1, %if.then14.i.i.while.cond.outer.backedge_crit_edge ], [ %maxext.sroa.6.1, %if.then.i59.i.while.cond.outer.backedge_crit_edge ], [ %maxext.sroa.6.4266, %land.lhs.true107.while.cond.outer.backedge_crit_edge ]
  %maxext.sroa.0.0.ph.be = phi ptr [ %maxext.sroa.0.1, %if.then14.i.i.while.cond.outer.backedge_crit_edge ], [ %maxext.sroa.0.1, %if.then.i59.i.while.cond.outer.backedge_crit_edge ], [ %maxext.sroa.0.4268, %land.lhs.true107.while.cond.outer.backedge_crit_edge ]
  %wrapped.0.off0.ph.be = phi i1 [ false, %if.then14.i.i.while.cond.outer.backedge_crit_edge ], [ false, %if.then.i59.i.while.cond.outer.backedge_crit_edge ], [ true, %land.lhs.true107.while.cond.outer.backedge_crit_edge ]
  br label %while.cond.outer

while.end:                                        ; preds = %land.lhs.true107.while.end_crit_edge, %if.then97.while.end_crit_edge
  %maxext.sroa.10.5 = phi i32 [ %maxext.sroa.10.3253, %if.then97.while.end_crit_edge ], [ %maxext.sroa.10.4262, %land.lhs.true107.while.end_crit_edge ]
  %maxext.sroa.8.5 = phi i32 [ %maxext.sroa.8.3254, %if.then97.while.end_crit_edge ], [ %maxext.sroa.8.4264, %land.lhs.true107.while.end_crit_edge ]
  %maxext.sroa.6.5 = phi i32 [ %maxext.sroa.6.3255, %if.then97.while.end_crit_edge ], [ %maxext.sroa.6.4266, %land.lhs.true107.while.end_crit_edge ]
  %maxext.sroa.0.5 = phi ptr [ %maxext.sroa.0.3256, %if.then97.while.end_crit_edge ], [ %maxext.sroa.0.4268, %land.lhs.true107.while.end_crit_edge ]
  br i1 %cmp13, label %land.lhs.true120, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true120:                                 ; preds = %while.end
  br i1 %4, label %land.lhs.true120.land.lhs.true127_crit_edge, label %lor.lhs.false123

land.lhs.true120.land.lhs.true127_crit_edge:      ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true127

lor.lhs.false123:                                 ; preds = %land.lhs.true120
  %211 = ptrtoint ptr %bii to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %bii, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %212, i32 %sub)
  %cmp125 = icmp sgt i32 %212, %sub
  br i1 %cmp125, label %lor.lhs.false123.land.lhs.true127_crit_edge, label %lor.lhs.false123.if.end135_crit_edge

lor.lhs.false123.if.end135_crit_edge:             ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

lor.lhs.false123.land.lhs.true127_crit_edge:      ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true127

land.lhs.true127:                                 ; preds = %lor.lhs.false123.land.lhs.true127_crit_edge, %land.lhs.true120.land.lhs.true127_crit_edge
  %213 = ptrtoint ptr %minext to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %minext, align 4
  %215 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %rbm, align 4
  %rd_extfail_pt = getelementptr inbounds %struct.gfs2_rgrpd, ptr %216, i32 0, i32 18
  %217 = ptrtoint ptr %rd_extfail_pt to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %rd_extfail_pt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %218)
  %cmp129 = icmp ult i32 %214, %218
  br i1 %cmp129, label %if.then131, label %land.lhs.true127.if.end135_crit_edge

land.lhs.true127.if.end135_crit_edge:             ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then131:                                       ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #14
  %sub132 = add i32 %214, -1
  %219 = ptrtoint ptr %rd_extfail_pt to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %sub132, ptr %rd_extfail_pt, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then131, %land.lhs.true127.if.end135_crit_edge, %lor.lhs.false123.if.end135_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxext.sroa.10.5)
  %tobool137.not = icmp eq i32 %maxext.sroa.10.5, 0
  br i1 %tobool137.not, label %if.end135.cleanup_crit_edge, label %if.then138

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then138:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  %220 = ptrtoint ptr %rbm to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %maxext.sroa.0.5, ptr %rbm, align 4
  %221 = ptrtoint ptr %offset9 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %maxext.sroa.6.5, ptr %offset9, align 4
  %222 = ptrtoint ptr %bii to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %maxext.sroa.8.5, ptr %bii, align 4
  %223 = ptrtoint ptr %minext to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %maxext.sroa.10.5, ptr %minext, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then138, %if.end135.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge, %if.end64.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then138 ], [ -28, %while.end.cleanup_crit_edge ], [ -28, %if.end135.cleanup_crit_edge ], [ 0, %if.end64.cleanup_crit_edge ], [ 0, %if.then7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @gfs2_rbm_to_block(ptr nocapture noundef readonly %rbm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %offset = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %2 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rbm, align 4
  %rd_data = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %rd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd_data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.not = icmp ult i32 %1, %5
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !151

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #12, !srcloc !170
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rd_data0 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %rd_data0 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rd_data0, align 8
  %rd_bits.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd_bits.i, align 8
  %bii.i = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 2
  %10 = ptrtoint ptr %bii.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bii.i, align 4
  %bi_start = getelementptr %struct.gfs2_bitmap, ptr %9, i32 %11, i32 4
  %12 = ptrtoint ptr %bi_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bi_start, align 4
  %mul = shl i32 %13, 2
  %conv = zext i32 %mul to i64
  %conv8 = zext i32 %1 to i64
  %add = add i64 %7, %conv8
  %add9 = add i64 %add, %conv
  ret i64 %add9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_statfs_change(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_remove_revoke(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_change(ptr noundef, i64 noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_block_alloc(ptr noundef %ip, ptr noundef %rgd, i64 noundef %block, i32 noundef %len, i8 noundef zeroext %block_state) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_block_alloc, i32 0, i32 1), ptr blockaddress(@trace_gfs2_block_alloc, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !182

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !183
  %call42 = tail call i32 @__traceiter_gfs2_block_alloc(ptr noundef null, ptr noundef %ip, ptr noundef %rgd, i64 noundef %block, i32 noundef %len, i8 noundef zeroext %block_state) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !184
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_block_alloc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_block_alloc, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_gfs2_block_alloc.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gfs2_block_alloc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 586, ptr noundef nonnull @.str.18) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !186
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
define dso_local void @__gfs2_free_blocks(ptr noundef %ip, ptr noundef %rgd, i64 noundef %bstart, i32 noundef %blen, i32 noundef %meta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_mutex.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rd_mutex.i, i32 noundef 0) #12
  tail call fastcc void @rgblk_free(ptr noundef %rgd, i64 noundef %bstart, i32 noundef %blen, i8 noundef zeroext 0)
  tail call fastcc void @trace_gfs2_block_alloc(ptr noundef %ip, ptr noundef %rgd, i64 noundef %bstart, i32 noundef %blen, i8 noundef zeroext 0)
  %rd_free = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 7
  %0 = ptrtoint ptr %rd_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd_free, align 4
  %add = add i32 %1, %blen
  store i32 %add, ptr %rd_free, align 4
  %rd_flags = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 17
  %2 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_flags, align 8
  %and = and i32 %3, -17
  store i32 %and, ptr %rd_flags, align 8
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 1
  %4 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rd_gl, align 4
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 13
  %6 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rd_bits, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %5, ptr noundef %9) #12
  %10 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd_bits, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data, align 4
  tail call fastcc void @gfs2_rgrp_out(ptr noundef %rgd, ptr noundef %15)
  tail call void @mutex_unlock(ptr noundef %rd_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %meta)
  %tobool.not = icmp eq i32 %meta, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %i_depth = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 20
  %16 = ptrtoint ptr %i_depth to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i_depth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool4.not = icmp eq i8 %17, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %18 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not = icmp eq i32 %and.i, 0
  br i1 %tobool7.not, label %lor.lhs.false5.if.end_crit_edge, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false5.if.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @gfs2_journal_wipe(ptr noundef %ip, i64 noundef %bstart, i32 noundef %blen) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false5.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rgblk_free(ptr noundef %rgd, i64 noundef %bstart, i32 noundef %blen, i8 noundef zeroext %new_state) unnamed_addr #0 align 64 {
entry:
  %rbm = alloca %struct.gfs2_rbm, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rbm) #12
  %0 = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 2
  %2 = ptrtoint ptr %rbm to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rgd, ptr %rbm, align 4
  %rd_data0.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 3
  %3 = ptrtoint ptr %rd_data0.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rd_data0.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %bstart)
  %cmp.not.i.i = icmp ugt i64 %4, %bstart
  br i1 %cmp.not.i.i, label %entry.land.rhs_crit_edge, label %rgrp_contains_block.exit.i

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

rgrp_contains_block.exit.i:                       ; preds = %entry
  %rd_data.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 5
  %5 = ptrtoint ptr %rd_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rd_data.i.i, align 4
  %conv.i.i = zext i32 %6 to i64
  %add.i.i = add i64 %4, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %bstart)
  %cmp2.i.not.i = icmp ugt i64 %add.i.i, %bstart
  br i1 %cmp2.i.not.i, label %if.end.i4, label %rgrp_contains_block.exit.i.land.rhs_crit_edge

rgrp_contains_block.exit.i.land.rhs_crit_edge:    ; preds = %rgrp_contains_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.end.i4:                                        ; preds = %rgrp_contains_block.exit.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %sub.i = sub i64 %bstart, %4
  %conv.i = trunc i64 %sub.i to i32
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %0, align 4
  %rd_bits.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 13
  %9 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rd_bits.i.i, align 8
  %bi_blocks.i = getelementptr inbounds %struct.gfs2_bitmap, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %bi_blocks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bi_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv.i)
  %cmp.i3 = icmp ugt i32 %12, %conv.i
  br i1 %cmp.i3, label %if.end.i4.gfs2_rbm_from_block.exit_crit_edge, label %if.end6.i

if.end.i4.gfs2_rbm_from_block.exit_crit_edge:     ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_rbm_from_block.exit

if.end6.i:                                        ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add i32 %conv.i, 416
  %rd_sbd.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 14
  %13 = ptrtoint ptr %rd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rd_sbd.i, align 4
  %sd_blocks_per_bitmap.i = getelementptr inbounds %struct.gfs2_sbd, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %sd_blocks_per_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sd_blocks_per_bitmap.i, align 8
  %div.i = udiv i32 %add.i, %16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.i, ptr %1, align 4
  %mul.i = mul i32 %div.i, %16
  %sub16.i = sub i32 %add.i, %mul.i
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub16.i, ptr %0, align 4
  br label %gfs2_rbm_from_block.exit

gfs2_rbm_from_block.exit:                         ; preds = %if.end6.i, %if.end.i4.gfs2_rbm_from_block.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen)
  %tobool40.not21 = icmp eq i32 %blen, 0
  br i1 %tobool40.not21, label %gfs2_rbm_from_block.exit.cleanup_crit_edge, label %while.body.lr.ph

gfs2_rbm_from_block.exit.cleanup_crit_edge:       ; preds = %gfs2_rbm_from_block.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %gfs2_rbm_from_block.exit
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 1
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 4
  br label %while.body

land.rhs:                                         ; preds = %rgrp_contains_block.exit.i.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b1 = load i1, ptr @rgblk_free.__already_done, align 1
  br i1 %.b1, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !151

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rgblk_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2268, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

while.body:                                       ; preds = %gfs2_rbm_add.exit.while.body_crit_edge, %while.body.lr.ph
  %dec23.in = phi i32 [ %blen, %while.body.lr.ph ], [ %dec23, %gfs2_rbm_add.exit.while.body_crit_edge ]
  %bi_prev.022 = phi ptr [ null, %while.body.lr.ph ], [ %bi_prev.1, %gfs2_rbm_add.exit.while.body_crit_edge ]
  %dec23 = add i32 %dec23.in, -1
  %19 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rd_bits.i.i, align 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %add.ptr.i = getelementptr %struct.gfs2_bitmap, ptr %20, i32 %22
  %cmp.not = icmp eq ptr %add.ptr.i, %bi_prev.022
  br i1 %cmp.not, label %while.body.if.end54_crit_edge, label %if.then42

while.body.if.end54_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then42:                                        ; preds = %while.body
  %bi_clone = getelementptr %struct.gfs2_bitmap, ptr %20, i32 %22, i32 1
  %23 = ptrtoint ptr %bi_clone to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bi_clone, align 4
  %tobool43.not = icmp eq ptr %24, null
  br i1 %tobool43.not, label %if.end8.i, label %if.then42.if.end51_crit_edge

if.then42.if.end51_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.end8.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %b_size, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 35904) #15
  %29 = ptrtoint ptr %bi_clone to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i, ptr %bi_clone, align 4
  %bi_offset = getelementptr %struct.gfs2_bitmap, ptr %20, i32 %22, i32 3
  %30 = ptrtoint ptr %bi_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bi_offset, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %31
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %b_data, align 4
  %add.ptr50 = getelementptr i8, ptr %35, i32 %31
  %bi_bytes = getelementptr %struct.gfs2_bitmap, ptr %20, i32 %22, i32 5
  %36 = ptrtoint ptr %bi_bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bi_bytes, align 4
  %38 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr50, i32 %37)
  br label %if.end51

if.end51:                                         ; preds = %if.end8.i, %if.then42.if.end51_crit_edge
  %39 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rd_gl, align 4
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %40, ptr noundef %42) #12
  br label %if.end54

if.end54:                                         ; preds = %if.end51, %while.body.if.end54_crit_edge
  %bi_prev.1 = phi ptr [ %add.ptr.i, %if.end51 ], [ %bi_prev.022, %while.body.if.end54_crit_edge ]
  call fastcc void @gfs2_setbit(ptr noundef nonnull %rbm, i1 noundef zeroext false, i8 noundef zeroext %new_state)
  %43 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rd_bits.i.i, align 8
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %0, align 4
  %add.i9 = add i32 %46, 1
  %bi_blocks.i10 = getelementptr %struct.gfs2_bitmap, ptr %44, i32 %22, i32 6
  %47 = ptrtoint ptr %bi_blocks.i10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bi_blocks.i10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i9, i32 %48)
  %cmp.i11 = icmp ult i32 %add.i9, %48
  br i1 %cmp.i11, label %if.then.i12, label %if.end.i14

if.then.i12:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add.i9, ptr %0, align 4
  br label %gfs2_rbm_add.exit

if.end.i14:                                       ; preds = %if.end54
  %add.ptr.i13 = getelementptr %struct.gfs2_bitmap, ptr %44, i32 %22
  %50 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rd_length.i, align 8
  %add.ptr8.i = getelementptr %struct.gfs2_bitmap, ptr %44, i32 %51
  %incdec.ptr45.i = getelementptr %struct.gfs2_bitmap, ptr %add.ptr.i13, i32 1
  %cmp946.i = icmp eq ptr %incdec.ptr45.i, %add.ptr8.i
  br i1 %cmp946.i, label %if.end.i14.gfs2_rbm_add.exit_crit_edge, label %if.end11.preheader.i

if.end.i14.gfs2_rbm_add.exit_crit_edge:           ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_rbm_add.exit

if.end11.preheader.i:                             ; preds = %if.end.i14
  %sub6.i = sub i32 %add.i9, %48
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end18.i.if.end11.i_crit_edge, %if.end11.preheader.i
  %incdec.ptr49.i = phi ptr [ %incdec.ptr.i, %if.end18.i.if.end11.i_crit_edge ], [ %incdec.ptr45.i, %if.end11.preheader.i ]
  %bi.048.i = phi ptr [ %incdec.ptr49.i, %if.end18.i.if.end11.i_crit_edge ], [ %add.ptr.i13, %if.end11.preheader.i ]
  %blocks.addr.047.i = phi i32 [ %sub20.i, %if.end18.i.if.end11.i_crit_edge ], [ %sub6.i, %if.end11.preheader.i ]
  %bi_blocks12.i = getelementptr %struct.gfs2_bitmap, ptr %bi.048.i, i32 1, i32 6
  %52 = ptrtoint ptr %bi_blocks12.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bi_blocks12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %blocks.addr.047.i, i32 %53)
  %cmp13.i = icmp ult i32 %blocks.addr.047.i, %53
  br i1 %cmp13.i, label %if.then14.i, label %if.end18.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %blocks.addr.047.i, ptr %0, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr49.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 28
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub.ptr.div.i, ptr %1, align 4
  br label %gfs2_rbm_add.exit

if.end18.i:                                       ; preds = %if.end11.i
  %sub20.i = sub i32 %blocks.addr.047.i, %53
  %incdec.ptr.i = getelementptr %struct.gfs2_bitmap, ptr %incdec.ptr49.i, i32 1
  %cmp9.i = icmp eq ptr %incdec.ptr.i, %add.ptr8.i
  br i1 %cmp9.i, label %if.end18.i.gfs2_rbm_add.exit_crit_edge, label %if.end18.i.if.end11.i_crit_edge

if.end18.i.if.end11.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end18.i.gfs2_rbm_add.exit_crit_edge:           ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %gfs2_rbm_add.exit

gfs2_rbm_add.exit:                                ; preds = %if.end18.i.gfs2_rbm_add.exit_crit_edge, %if.then14.i, %if.end.i14.gfs2_rbm_add.exit_crit_edge, %if.then.i12
  %tobool40.not = icmp eq i32 %dec23, 0
  br i1 %tobool40.not, label %gfs2_rbm_add.exit.cleanup_crit_edge, label %gfs2_rbm_add.exit.while.body_crit_edge

gfs2_rbm_add.exit.while.body_crit_edge:           ; preds = %gfs2_rbm_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

gfs2_rbm_add.exit.cleanup_crit_edge:              ; preds = %gfs2_rbm_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %gfs2_rbm_add.exit.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge, %gfs2_rbm_from_block.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rbm) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_journal_wipe(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_free_meta(ptr noundef %ip, ptr noundef %rgd, i64 noundef %bstart, i32 noundef %blen) local_unnamed_addr #0 align 64 {
entry:
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
  %rd_mutex.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rd_mutex.i.i, i32 noundef 0) #12
  tail call fastcc void @rgblk_free(ptr noundef %rgd, i64 noundef %bstart, i32 noundef %blen, i8 noundef zeroext 0) #12
  tail call fastcc void @trace_gfs2_block_alloc(ptr noundef %ip, ptr noundef %rgd, i64 noundef %bstart, i32 noundef %blen, i8 noundef zeroext 0) #12
  %rd_free.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 7
  %4 = ptrtoint ptr %rd_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd_free.i, align 4
  %add.i = add i32 %5, %blen
  store i32 %add.i, ptr %rd_free.i, align 4
  %rd_flags.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 17
  %6 = ptrtoint ptr %rd_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_flags.i, align 8
  %and.i = and i32 %7, -17
  store i32 %and.i, ptr %rd_flags.i, align 8
  %rd_gl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 1
  %8 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rd_gl.i, align 4
  %rd_bits.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 13
  %10 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd_bits.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %9, ptr noundef %13) #12
  %14 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rd_bits.i, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %b_data.i, align 4
  tail call fastcc void @gfs2_rgrp_out(ptr noundef %rgd, ptr noundef %19) #12
  tail call void @mutex_unlock(ptr noundef %rd_mutex.i.i) #12
  tail call void @gfs2_journal_wipe(ptr noundef %ip, i64 noundef %bstart, i32 noundef %blen) #12
  %conv = zext i32 %blen to i64
  tail call void @gfs2_statfs_change(ptr noundef %3, i64 noundef 0, i64 noundef %conv, i64 noundef 0) #12
  %sub = sub nsw i64 0, %conv
  %i_uid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %20 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack = load i32, ptr %i_uid, align 4
  %21 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %22 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack11 = load i32, ptr %i_gid, align 8
  %23 = insertvalue [1 x i32] undef, i32 %.unpack11, 0
  tail call void @gfs2_quota_change(ptr noundef %ip, i64 noundef %sub, [1 x i32] %21, [1 x i32] %23) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_unlink_di(ptr noundef %inode) local_unnamed_addr #0 align 64 {
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
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 1
  %4 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_no_addr, align 8
  %sd_rindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i) #12
  %sd_rindex_tree.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 49
  %6 = ptrtoint ptr %sd_rindex_tree.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_rindex_tree.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end4.i.while.cond.i_crit_edge, %entry
  %n.0.i = phi ptr [ %7, %entry ], [ %next.0.i, %if.end4.i.while.cond.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %rd_addr.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %5)
  %cmp.i = icmp ugt i64 %9, %5
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i, i32 0, i32 2
  br label %if.end4.i

if.else.i:                                        ; preds = %while.body.i
  %rd_data0.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 3
  %10 = ptrtoint ptr %rd_data0.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rd_data0.i, align 8
  %rd_data.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 5
  %12 = ptrtoint ptr %rd_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rd_data.i, align 4
  %conv.i = zext i32 %13 to i64
  %add.i = add i64 %11, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %5)
  %cmp1.not.i = icmp ugt i64 %add.i, %5
  br i1 %cmp1.not.i, label %if.else.i.if.then7.i_crit_edge, label %if.then3.i

if.else.i.if.then7.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i, i32 0, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i
  %next.0.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %14 = ptrtoint ptr %next.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %next.0.i = load ptr, ptr %next.0.in.i, align 4
  %cmp5.i = icmp eq ptr %next.0.i, null
  br i1 %cmp5.i, label %if.end4.i.if.then7.i_crit_edge, label %if.end4.i.while.cond.i_crit_edge

if.end4.i.while.cond.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i.if.then7.i_crit_edge, %if.else.i.if.then7.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  %15 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %5)
  %cmp12.i = icmp ugt i64 %16, %5
  br i1 %cmp12.i, label %if.then7.i.cleanup_crit_edge, label %if.end15.i

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.i:                                       ; preds = %if.then7.i
  %rd_data016.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %rd_data016.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rd_data016.i, align 8
  %rd_data17.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 5
  %19 = ptrtoint ptr %rd_data17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rd_data17.i, align 4
  %conv18.i = zext i32 %20 to i64
  %add19.i = add i64 %18, %conv18.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add19.i, i64 %5)
  %cmp20.not.i = icmp ugt i64 %add19.i, %5
  br i1 %cmp20.not.i, label %if.end, label %if.end15.i.cleanup_crit_edge

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  br label %cleanup

if.end:                                           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  %rd_mutex.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rd_mutex.i, i32 noundef 0) #12
  tail call fastcc void @rgblk_free(ptr noundef nonnull %n.0.i, i64 noundef %5, i32 noundef 1, i8 noundef zeroext 2)
  tail call fastcc void @trace_gfs2_block_alloc(ptr noundef %inode, ptr noundef nonnull %n.0.i, i64 noundef %5, i32 noundef 1, i8 noundef zeroext 2)
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rd_gl, align 4
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 13
  %23 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rd_bits, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %22, ptr noundef %26) #12
  %27 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rd_bits, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %b_data, align 4
  tail call fastcc void @gfs2_rgrp_out(ptr noundef nonnull %n.0.i, ptr noundef %32)
  %rd_rgl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 15
  %33 = ptrtoint ptr %rd_rgl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rd_rgl, align 8
  %rl_unlinked = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %rl_unlinked to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rl_unlinked, align 4
  %add.i23 = add i32 %36, 1
  store i32 %add.i23, ptr %rl_unlinked, align 4
  tail call void @mutex_unlock(ptr noundef %rd_mutex.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %while.end.i, %if.end15.i.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_free_di(ptr noundef %rgd, ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_sbd = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 14
  %0 = ptrtoint ptr %rd_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rd_sbd, align 4
  %rd_mutex.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %rd_mutex.i, i32 noundef 0) #12
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %2 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_no_addr, align 8
  tail call fastcc void @rgblk_free(ptr noundef %rgd, i64 noundef %3, i32 noundef 1, i8 noundef zeroext 0)
  %rd_dinodes = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 11
  %4 = ptrtoint ptr %rd_dinodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd_dinodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_consist_rgrpd_i(ptr noundef %rgd, ptr noundef nonnull @__func__.gfs2_free_di, ptr noundef nonnull @.str.1, i32 noundef 2580) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %rd_dinodes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_dinodes, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %rd_dinodes, align 4
  %rd_free = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 7
  %8 = ptrtoint ptr %rd_free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_free, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %rd_free, align 4
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 1
  %10 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rd_gl, align 4
  %rd_bits = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 13
  %12 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rd_bits, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %11, ptr noundef %15) #12
  %16 = ptrtoint ptr %rd_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rd_bits, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data, align 4
  tail call fastcc void @gfs2_rgrp_out(ptr noundef %rgd, ptr noundef %21)
  tail call void @mutex_unlock(ptr noundef %rd_mutex.i) #12
  %rd_rgl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %rgd, i32 0, i32 15
  %22 = ptrtoint ptr %rd_rgl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rd_rgl, align 8
  %rl_unlinked = getelementptr inbounds %struct.gfs2_rgrp_lvb, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %rl_unlinked to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rl_unlinked, align 4
  %add.i = add i32 %25, -1
  store i32 %add.i, ptr %rl_unlinked, align 4
  tail call void @gfs2_statfs_change(ptr noundef %1, i64 noundef 0, i64 noundef 1, i64 noundef -1) #12
  %26 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_no_addr, align 8
  tail call fastcc void @trace_gfs2_block_alloc(ptr noundef %ip, ptr noundef %rgd, i64 noundef %27, i32 noundef 1, i8 noundef zeroext 0)
  %i_uid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %28 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %28)
  %.unpack = load i32, ptr %i_uid, align 4
  %29 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %30 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %30)
  %.unpack30 = load i32, ptr %i_gid, align 8
  %31 = insertvalue [1 x i32] undef, i32 %.unpack30, 0
  tail call void @gfs2_quota_change(ptr noundef %ip, i64 noundef -1, [1 x i32] %29, [1 x i32] %31) #12
  %32 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_no_addr, align 8
  tail call void @gfs2_journal_wipe(ptr noundef %ip, i64 noundef %33, i32 noundef 1) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_check_blk_type(ptr noundef %sdp, i64 noundef %no_addr, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %rgd_gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rgd_gh) #12
  %sd_rindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 48
  %0 = call ptr @memset(ptr %rgd_gh, i32 255, i32 32)
  tail call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i) #12
  %sd_rindex_tree.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 49
  %1 = ptrtoint ptr %sd_rindex_tree.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sd_rindex_tree.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end4.i.while.cond.i_crit_edge, %entry
  %n.0.i = phi ptr [ %2, %entry ], [ %next.0.i, %if.end4.i.while.cond.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %rd_addr.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %no_addr)
  %cmp.i = icmp ugt i64 %4, %no_addr
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i, i32 0, i32 2
  br label %if.end4.i

if.else.i:                                        ; preds = %while.body.i
  %rd_data0.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %rd_data0.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %rd_data0.i, align 8
  %rd_data.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 5
  %7 = ptrtoint ptr %rd_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rd_data.i, align 4
  %conv.i = zext i32 %8 to i64
  %add.i = add i64 %6, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %no_addr)
  %cmp1.not.i = icmp ugt i64 %add.i, %no_addr
  br i1 %cmp1.not.i, label %if.else.i.if.then7.i_crit_edge, label %if.then3.i

if.else.i.if.then7.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i, i32 0, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i
  %next.0.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %9 = ptrtoint ptr %next.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %next.0.i = load ptr, ptr %next.0.in.i, align 4
  %cmp5.i = icmp eq ptr %next.0.i, null
  br i1 %cmp5.i, label %if.end4.i.if.then7.i_crit_edge, label %if.end4.i.while.cond.i_crit_edge

if.end4.i.while.cond.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i.if.then7.i_crit_edge, %if.else.i.if.then7.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  %10 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %no_addr)
  %cmp12.i = icmp ugt i64 %11, %no_addr
  br i1 %cmp12.i, label %if.then7.i.fail_crit_edge, label %if.end15.i

if.then7.i.fail_crit_edge:                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end15.i:                                       ; preds = %if.then7.i
  %rd_data016.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 3
  %12 = ptrtoint ptr %rd_data016.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rd_data016.i, align 8
  %rd_data17.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 5
  %14 = ptrtoint ptr %rd_data17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rd_data17.i, align 4
  %conv18.i = zext i32 %15 to i64
  %add19.i = add i64 %13, %conv18.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add19.i, i64 %no_addr)
  %cmp20.not.i = icmp ugt i64 %add19.i, %no_addr
  br i1 %cmp20.not.i, label %if.end, label %if.end15.i.fail_crit_edge

if.end15.i.fail_crit_edge:                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  br label %fail

if.end:                                           ; preds = %if.end15.i
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rd_gl, align 4
  %18 = tail call ptr @llvm.returnaddress(i32 0) #12
  %19 = ptrtoint ptr %18 to i32
  call void @__gfs2_holder_init(ptr noundef %17, i32 noundef 3, i16 noundef zeroext 0, ptr noundef nonnull %rgd_gh, i32 noundef %19) #12
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %rgd_gh) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i61 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i61, label %if.end4, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @gfs2_holder_uninit(ptr noundef nonnull %rgd_gh) #12
  br label %fail

if.end4:                                          ; preds = %if.end
  %20 = ptrtoint ptr %rd_data016.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rd_data016.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %no_addr)
  %cmp.not.i.i = icmp ugt i64 %21, %no_addr
  br i1 %cmp.not.i.i, label %if.end4.land.rhs_crit_edge, label %rgrp_contains_block.exit.i

if.end4.land.rhs_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

rgrp_contains_block.exit.i:                       ; preds = %if.end4
  %22 = ptrtoint ptr %rd_data17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rd_data17.i, align 4
  %conv.i.i = zext i32 %23 to i64
  %add.i.i = add i64 %21, %conv.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %no_addr)
  %cmp2.i.not.i = icmp ugt i64 %add.i.i, %no_addr
  br i1 %cmp2.i.not.i, label %if.end.i, label %rgrp_contains_block.exit.i.land.rhs_crit_edge

rgrp_contains_block.exit.i.land.rhs_crit_edge:    ; preds = %rgrp_contains_block.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.end.i:                                         ; preds = %rgrp_contains_block.exit.i
  %sub.i = sub i64 %no_addr, %21
  %conv.i63 = trunc i64 %sub.i to i32
  %rd_bits.i.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 13
  %24 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rd_bits.i.i, align 8
  %bi_blocks.i = getelementptr inbounds %struct.gfs2_bitmap, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %bi_blocks.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_blocks.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv.i63)
  %cmp.i64 = icmp ugt i32 %27, %conv.i63
  br i1 %cmp.i64, label %if.end.i.if.then46.critedge_crit_edge, label %if.end6.i

if.end.i.if.then46.critedge_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then46.critedge

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.i65 = add i32 %conv.i63, 416
  %rd_sbd.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 14
  %28 = ptrtoint ptr %rd_sbd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rd_sbd.i, align 4
  %sd_blocks_per_bitmap.i = getelementptr inbounds %struct.gfs2_sbd, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %sd_blocks_per_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sd_blocks_per_bitmap.i, align 8
  %div.i = udiv i32 %add.i65, %31
  %mul.i = mul i32 %div.i, %31
  %sub16.i = sub i32 %add.i65, %mul.i
  br label %if.then46.critedge

land.rhs:                                         ; preds = %rgrp_contains_block.exit.i.land.rhs_crit_edge, %if.end4.land.rhs_crit_edge
  %.b59 = load i1, ptr @gfs2_check_blk_type.__already_done, align 1
  br i1 %.b59, label %land.rhs.if.end51_crit_edge, label %if.then15, !prof !151

land.rhs.if.end51_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @gfs2_check_blk_type.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2627, i32 noundef 9, ptr noundef null) #12
  br label %if.end51

if.then46.critedge:                               ; preds = %if.end6.i, %if.end.i.if.then46.critedge_crit_edge
  %rbm.sroa.11.0.ph = phi i32 [ %div.i, %if.end6.i ], [ 0, %if.end.i.if.then46.critedge_crit_edge ]
  %rbm.sroa.6.0.ph = phi i32 [ %sub16.i, %if.end6.i ], [ %conv.i63, %if.end.i.if.then46.critedge_crit_edge ]
  %32 = ptrtoint ptr %rd_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rd_bits.i.i, align 8
  %add.ptr.i.i = getelementptr %struct.gfs2_bitmap, ptr %33, i32 %rbm.sroa.11.0.ph
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_data.i, align 4
  %bi_offset.i = getelementptr %struct.gfs2_bitmap, ptr %33, i32 %rbm.sroa.11.0.ph, i32 3
  %38 = ptrtoint ptr %bi_offset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bi_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 %39
  %div12.i = lshr i32 %rbm.sroa.6.0.ph, 2
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %div12.i
  %rem.i = shl i32 %rbm.sroa.6.0.ph, 1
  %mul.i70 = and i32 %rem.i, 6
  %40 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %add.ptr3.i, align 1
  %conv.i71 = zext i8 %41 to i32
  %shr.i = lshr i32 %conv.i71, %mul.i70
  %conv5.i = and i32 %shr.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %type)
  %cmp.not = icmp eq i32 %conv5.i, %type
  %spec.select = select i1 %cmp.not, i32 0, i32 -116
  br label %if.end51

if.end51:                                         ; preds = %if.then46.critedge, %if.then15, %land.rhs.if.end51_crit_edge
  %error.0 = phi i32 [ -7, %if.then15 ], [ -7, %land.rhs.if.end51_crit_edge ], [ %spec.select, %if.then46.critedge ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %rgd_gh) #12
  br label %fail

fail:                                             ; preds = %if.end51, %gfs2_glock_nq_init.exit, %while.end.i, %if.end15.i.fail_crit_edge, %if.then7.i.fail_crit_edge
  %error.1 = phi i32 [ %call.i, %gfs2_glock_nq_init.exit ], [ %error.0, %if.end51 ], [ -22, %while.end.i ], [ -22, %if.then7.i.fail_crit_edge ], [ -22, %if.end15.i.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rgd_gh) #12
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_rlist_add(ptr nocapture noundef readonly %ip, ptr nocapture noundef %rlist, i64 noundef %block) local_unnamed_addr #0 align 64 {
entry:
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
  %rl_ghs = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 3
  %4 = ptrtoint ptr %rl_ghs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rl_ghs, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end12, label %if.then, !prof !151

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @gfs2_assert_warn_i(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.gfs2_rlist_add, ptr noundef nonnull @.str.1, i32 noundef 2666) #12
  br label %cleanup

if.end12:                                         ; preds = %entry
  %6 = ptrtoint ptr %rlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool13.not = icmp eq i32 %7, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %rl_rgd = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 2
  %8 = ptrtoint ptr %rl_rgd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rl_rgd, align 4
  %sub = add i32 %7, -1
  %arrayidx = getelementptr ptr, ptr %9, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %rd_data0.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %rd_data0.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rd_data0.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %block)
  %cmp.not.i = icmp ugt i64 %13, %block
  br i1 %cmp.not.i, label %if.then14.if.end19_crit_edge, label %rgrp_contains_block.exit

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

rgrp_contains_block.exit:                         ; preds = %if.then14
  %rd_data.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %rd_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rd_data.i, align 4
  %conv.i = zext i32 %15 to i64
  %add.i = add i64 %13, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %block)
  %cmp2.i.not = icmp ugt i64 %add.i, %block
  br i1 %cmp2.i.not, label %rgrp_contains_block.exit.cleanup_crit_edge, label %rgrp_contains_block.exit.if.end19_crit_edge

rgrp_contains_block.exit.if.end19_crit_edge:      ; preds = %rgrp_contains_block.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

rgrp_contains_block.exit.cleanup_crit_edge:       ; preds = %rgrp_contains_block.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %rgrp_contains_block.exit.if.end19_crit_edge, %if.then14.if.end19_crit_edge
  %sd_rindex_spin.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i) #12
  %sd_rindex_tree.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 49
  %16 = ptrtoint ptr %sd_rindex_tree.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd_rindex_tree.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end4.i.while.cond.i_crit_edge, %if.end19
  %n.0.i = phi ptr [ %17, %if.end19 ], [ %next.0.i, %if.end4.i.while.cond.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %while.cond.i.do.end.sink.split_crit_edge, label %while.body.i

while.cond.i.do.end.sink.split_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.sink.split

while.body.i:                                     ; preds = %while.cond.i
  %rd_addr.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %block)
  %cmp.i = icmp ugt i64 %19, %block
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i, i32 0, i32 2
  br label %if.end4.i

if.else.i:                                        ; preds = %while.body.i
  %rd_data0.i124 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 3
  %20 = ptrtoint ptr %rd_data0.i124 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %rd_data0.i124, align 8
  %rd_data.i125 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 5
  %22 = ptrtoint ptr %rd_data.i125 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rd_data.i125, align 4
  %conv.i126 = zext i32 %23 to i64
  %add.i127 = add i64 %21, %conv.i126
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i127, i64 %block)
  %cmp1.not.i = icmp ugt i64 %add.i127, %block
  br i1 %cmp1.not.i, label %if.else.i.if.then7.i_crit_edge, label %if.then3.i

if.else.i.if.then7.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.0.i, i32 0, i32 1
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i
  %next.0.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then3.i ]
  %24 = ptrtoint ptr %next.0.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %next.0.i = load ptr, ptr %next.0.in.i, align 4
  %cmp5.i = icmp eq ptr %next.0.i, null
  br i1 %cmp5.i, label %if.end4.i.if.then7.i_crit_edge, label %if.end4.i.while.cond.i_crit_edge

if.end4.i.while.cond.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end4.i.if.then7.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i.if.then7.i_crit_edge, %if.else.i.if.then7.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i) #12
  %25 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rd_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %block)
  %cmp12.i = icmp ugt i64 %26, %block
  br i1 %cmp12.i, label %if.then7.i.do.end_crit_edge, label %if.end15.i

if.then7.i.do.end_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end15.i:                                       ; preds = %if.then7.i
  %rd_data016.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %rd_data016.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rd_data016.i, align 8
  %rd_data17.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i, i32 0, i32 5
  %29 = ptrtoint ptr %rd_data17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rd_data17.i, align 4
  %conv18.i = zext i32 %30 to i64
  %add19.i = add i64 %28, %conv18.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add19.i, i64 %block)
  %cmp20.not.i = icmp ugt i64 %add19.i, %block
  br i1 %cmp20.not.i, label %if.end15.i.if.end27_crit_edge, label %if.end15.i.do.end_crit_edge

if.end15.i.do.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end15.i.if.end27_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.else:                                          ; preds = %if.end12
  %rs_rgd = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %rs_rgd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rs_rgd, align 4
  %tobool21.not = icmp eq ptr %32, null
  br i1 %tobool21.not, label %if.else.if.then24_crit_edge, label %lor.lhs.false

if.else.if.then24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

lor.lhs.false:                                    ; preds = %if.else
  %rd_data0.i128 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %rd_data0.i128 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rd_data0.i128, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %block)
  %cmp.not.i129 = icmp ugt i64 %34, %block
  br i1 %cmp.not.i129, label %lor.lhs.false.if.then24_crit_edge, label %rgrp_contains_block.exit136

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

rgrp_contains_block.exit136:                      ; preds = %lor.lhs.false
  %rd_data.i130 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %32, i32 0, i32 5
  %35 = ptrtoint ptr %rd_data.i130 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rd_data.i130, align 4
  %conv.i131 = zext i32 %36 to i64
  %add.i132 = add i64 %34, %conv.i131
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i132, i64 %block)
  %cmp2.i133.not = icmp ugt i64 %add.i132, %block
  br i1 %cmp2.i133.not, label %rgrp_contains_block.exit136.if.end27_crit_edge, label %rgrp_contains_block.exit136.if.then24_crit_edge

rgrp_contains_block.exit136.if.then24_crit_edge:  ; preds = %rgrp_contains_block.exit136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then24

rgrp_contains_block.exit136.if.end27_crit_edge:   ; preds = %rgrp_contains_block.exit136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %rgrp_contains_block.exit136.if.then24_crit_edge, %lor.lhs.false.if.then24_crit_edge, %if.else.if.then24_crit_edge
  %sd_rindex_spin.i137 = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 48
  tail call void @_raw_spin_lock(ptr noundef %sd_rindex_spin.i137) #12
  %sd_rindex_tree.i138 = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 49
  %37 = ptrtoint ptr %sd_rindex_tree.i138 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sd_rindex_tree.i138, align 4
  br label %while.cond.i141

while.cond.i141:                                  ; preds = %if.end4.i158.while.cond.i141_crit_edge, %if.then24
  %n.0.i139 = phi ptr [ %38, %if.then24 ], [ %next.0.i156, %if.end4.i158.while.cond.i141_crit_edge ]
  %tobool.not.i140 = icmp eq ptr %n.0.i139, null
  br i1 %tobool.not.i140, label %while.cond.i141.do.end.sink.split_crit_edge, label %while.body.i144

while.cond.i141.do.end.sink.split_crit_edge:      ; preds = %while.cond.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.sink.split

while.body.i144:                                  ; preds = %while.cond.i141
  %rd_addr.i142 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i139, i32 0, i32 2
  %39 = ptrtoint ptr %rd_addr.i142 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %rd_addr.i142, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %block)
  %cmp.i143 = icmp ugt i64 %40, %block
  br i1 %cmp.i143, label %if.then.i146, label %if.else.i152

if.then.i146:                                     ; preds = %while.body.i144
  call void @__sanitizer_cov_trace_pc() #14
  %rb_left.i145 = getelementptr inbounds %struct.rb_node, ptr %n.0.i139, i32 0, i32 2
  br label %if.end4.i158

if.else.i152:                                     ; preds = %while.body.i144
  %rd_data0.i147 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i139, i32 0, i32 3
  %41 = ptrtoint ptr %rd_data0.i147 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rd_data0.i147, align 8
  %rd_data.i148 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i139, i32 0, i32 5
  %43 = ptrtoint ptr %rd_data.i148 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rd_data.i148, align 4
  %conv.i149 = zext i32 %44 to i64
  %add.i150 = add i64 %42, %conv.i149
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i150, i64 %block)
  %cmp1.not.i151 = icmp ugt i64 %add.i150, %block
  br i1 %cmp1.not.i151, label %if.else.i152.if.then7.i159_crit_edge, label %if.then3.i154

if.else.i152.if.then7.i159_crit_edge:             ; preds = %if.else.i152
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i159

if.then3.i154:                                    ; preds = %if.else.i152
  call void @__sanitizer_cov_trace_pc() #14
  %rb_right.i153 = getelementptr inbounds %struct.rb_node, ptr %n.0.i139, i32 0, i32 1
  br label %if.end4.i158

if.end4.i158:                                     ; preds = %if.then3.i154, %if.then.i146
  %next.0.in.i155 = phi ptr [ %rb_left.i145, %if.then.i146 ], [ %rb_right.i153, %if.then3.i154 ]
  %45 = ptrtoint ptr %next.0.in.i155 to i32
  call void @__asan_load4_noabort(i32 %45)
  %next.0.i156 = load ptr, ptr %next.0.in.i155, align 4
  %cmp5.i157 = icmp eq ptr %next.0.i156, null
  br i1 %cmp5.i157, label %if.end4.i158.if.then7.i159_crit_edge, label %if.end4.i158.while.cond.i141_crit_edge

if.end4.i158.while.cond.i141_crit_edge:           ; preds = %if.end4.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i141

if.end4.i158.if.then7.i159_crit_edge:             ; preds = %if.end4.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7.i159

if.then7.i159:                                    ; preds = %if.end4.i158.if.then7.i159_crit_edge, %if.else.i152.if.then7.i159_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i137) #12
  %46 = ptrtoint ptr %rd_addr.i142 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rd_addr.i142, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %block)
  %cmp12.i160 = icmp ugt i64 %47, %block
  br i1 %cmp12.i160, label %if.then7.i159.do.end_crit_edge, label %if.end15.i166

if.then7.i159.do.end_crit_edge:                   ; preds = %if.then7.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end15.i166:                                    ; preds = %if.then7.i159
  %rd_data016.i161 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i139, i32 0, i32 3
  %48 = ptrtoint ptr %rd_data016.i161 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %rd_data016.i161, align 8
  %rd_data17.i162 = getelementptr inbounds %struct.gfs2_rgrpd, ptr %n.0.i139, i32 0, i32 5
  %50 = ptrtoint ptr %rd_data17.i162 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rd_data17.i162, align 4
  %conv18.i163 = zext i32 %51 to i64
  %add19.i164 = add i64 %49, %conv18.i163
  call void @__sanitizer_cov_trace_cmp8(i64 %add19.i164, i64 %block)
  %cmp20.not.i165 = icmp ugt i64 %add19.i164, %block
  br i1 %cmp20.not.i165, label %if.end15.i166.if.end27_crit_edge, label %if.end15.i166.do.end_crit_edge

if.end15.i166.do.end_crit_edge:                   ; preds = %if.end15.i166
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end15.i166.if.end27_crit_edge:                 ; preds = %if.end15.i166
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end27:                                         ; preds = %if.end15.i166.if.end27_crit_edge, %rgrp_contains_block.exit136.if.end27_crit_edge, %if.end15.i.if.end27_crit_edge
  %rgd.0 = phi ptr [ %32, %rgrp_contains_block.exit136.if.end27_crit_edge ], [ %n.0.i, %if.end15.i.if.end27_crit_edge ], [ %n.0.i139, %if.end15.i166.if.end27_crit_edge ]
  %52 = ptrtoint ptr %rlist to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp181.not = icmp eq i32 %53, 0
  br i1 %cmp181.not, label %if.end27.for.end_crit_edge, label %for.body.lr.ph

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end27
  %rl_rgd34 = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 2
  %54 = ptrtoint ptr %rl_rgd34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rl_rgd34, align 4
  br label %for.body

do.end.sink.split:                                ; preds = %while.cond.i141.do.end.sink.split_crit_edge, %while.cond.i.do.end.sink.split_crit_edge
  %sd_rindex_spin.i.sink = phi ptr [ %sd_rindex_spin.i137, %while.cond.i141.do.end.sink.split_crit_edge ], [ %sd_rindex_spin.i, %while.cond.i.do.end.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %sd_rindex_spin.i.sink) #12
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.end15.i166.do.end_crit_edge, %if.then7.i159.do.end_crit_edge, %if.end15.i.do.end_crit_edge, %if.then7.i.do.end_crit_edge
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 110
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %sd_fsname, i64 noundef %block) #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %x.0182 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx35 = getelementptr ptr, ptr %55, i32 %x.0182
  %56 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx35, align 4
  %cmp36 = icmp eq ptr %57, %rgd.0
  br i1 %cmp36, label %do.body38, label %for.inc

do.body38:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx35.le = getelementptr ptr, ptr %55, i32 %x.0182
  %sub43 = add i32 %53, -1
  %arrayidx44 = getelementptr ptr, ptr %55, i32 %sub43
  %58 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx44, align 4
  %60 = ptrtoint ptr %arrayidx35.le to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %arrayidx35.le, align 4
  %61 = ptrtoint ptr %rl_rgd34 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rl_rgd34, align 4
  %63 = ptrtoint ptr %rlist to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rlist, align 4
  %sub49 = add i32 %64, -1
  %arrayidx50 = getelementptr ptr, ptr %62, i32 %sub49
  %65 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %rgd.0, ptr %arrayidx50, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %x.0182, 1
  %exitcond.not = icmp eq i32 %inc, %53
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end27.for.end_crit_edge
  %rl_space = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 1
  %66 = ptrtoint ptr %rl_space to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rl_space, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %67)
  %cmp55 = icmp eq i32 %53, %67
  br i1 %cmp55, label %if.then56, label %for.end.if.end68_crit_edge

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then56:                                        ; preds = %for.end
  %add = add i32 %53, 10
  %68 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #12
  %69 = extractvalue { i32, i1 } %68, 1
  br i1 %69, label %if.then56.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !149

if.then56.kcalloc.exit_crit_edge:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %70 = extractvalue { i32, i1 } %68, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %70, i32 noundef 36160) #15
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %if.then56.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.then56.kcalloc.exit_crit_edge ]
  %rl_rgd59 = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 2
  %71 = ptrtoint ptr %rl_rgd59 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rl_rgd59, align 4
  %tobool60.not = icmp eq ptr %72, null
  br i1 %tobool60.not, label %kcalloc.exit.if.end65_crit_edge, label %if.then61

kcalloc.exit.if.end65_crit_edge:                  ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then61:                                        ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %rl_space to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rl_space, align 4
  %mul = shl i32 %74, 2
  %75 = call ptr @memcpy(ptr %retval.0.i.i, ptr %72, i32 %mul)
  %76 = ptrtoint ptr %rl_rgd59 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rl_rgd59, align 4
  tail call void @kfree(ptr noundef %77) #12
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %kcalloc.exit.if.end65_crit_edge
  %78 = ptrtoint ptr %rl_space to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add, ptr %rl_space, align 4
  %79 = ptrtoint ptr %rl_rgd59 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %retval.0.i.i, ptr %rl_rgd59, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end65, %for.end.if.end68_crit_edge
  %rl_rgd69 = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 2
  %80 = ptrtoint ptr %rl_rgd69 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rl_rgd69, align 4
  %82 = ptrtoint ptr %rlist to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rlist, align 4
  %inc71 = add i32 %83, 1
  store i32 %inc71, ptr %rlist, align 4
  %arrayidx72 = getelementptr ptr, ptr %81, i32 %83
  %84 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %rgd.0, ptr %arrayidx72, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.body38, %do.end, %rgrp_contains_block.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_rlist_alloc(ptr nocapture noundef %rlist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rlist, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 32) #12
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !149

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rl_ghs14 = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 3
  %4 = ptrtoint ptr %rl_ghs14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %rl_ghs14, align 4
  br label %for.body.lr.ph

if.end7.i:                                        ; preds = %entry
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 35904) #15
  %6 = ptrtoint ptr %rlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %rlist, align 4
  %rl_ghs = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 3
  %7 = ptrtoint ptr %rl_ghs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i, ptr %rl_ghs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp11.not = icmp eq i32 %.pr, 0
  br i1 %cmp11.not, label %if.end7.i.for.end_crit_edge, label %if.end7.i.for.body.lr.ph_crit_edge

if.end7.i.for.body.lr.ph_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end7.i.for.end_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7.i.for.body.lr.ph_crit_edge, %kmalloc_array.exit.thread
  %rl_ghs16 = phi ptr [ %rl_ghs14, %kmalloc_array.exit.thread ], [ %rl_ghs, %if.end7.i.for.body.lr.ph_crit_edge ]
  %rl_rgd = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 2
  %8 = tail call ptr @llvm.returnaddress(i32 0) #12
  %9 = ptrtoint ptr %8 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %x.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %rl_rgd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rl_rgd, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %x.012
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rd_gl, align 4
  %16 = ptrtoint ptr %rl_ghs16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rl_ghs16, align 4
  %arrayidx3 = getelementptr %struct.gfs2_holder, ptr %17, i32 %x.012
  tail call void @__gfs2_holder_init(ptr noundef %15, i32 noundef 1, i16 noundef zeroext 32, ptr noundef %arrayidx3, i32 noundef %9) #12
  %inc = add nuw i32 %x.012, 1
  %18 = ptrtoint ptr %rlist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rlist, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end7.i.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_rlist_free(ptr nocapture noundef %rlist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rl_rgd = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 2
  %0 = ptrtoint ptr %rl_rgd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rl_rgd, align 4
  tail call void @kfree(ptr noundef %1) #12
  %rl_ghs = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist, i32 0, i32 3
  %2 = ptrtoint ptr %rl_ghs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rl_ghs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %rlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rlist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %x.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %rl_ghs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rl_ghs, align 4
  %arrayidx = getelementptr %struct.gfs2_holder, ptr %7, i32 %x.012
  tail call void @gfs2_holder_uninit(ptr noundef %arrayidx) #12
  %inc = add nuw i32 %x.012, 1
  %8 = ptrtoint ptr %rlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rlist, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %rl_ghs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rl_ghs, align 4
  tail call void @kfree(ptr noundef %11) #12
  %12 = ptrtoint ptr %rl_ghs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rl_ghs, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_rs(ptr noundef %rs, i8 noundef zeroext %func) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_rs, i32 0, i32 1), ptr blockaddress(@trace_gfs2_rs, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !182

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !151

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !187
  %call42 = tail call i32 @__traceiter_gfs2_rs(ptr noundef null, ptr noundef %rs, i8 noundef zeroext %func) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !188
  %13 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !151

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !139) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_rs, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_rs, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_gfs2_rs.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_gfs2_rs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 633, ptr noundef nonnull @.str.18) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !186
  %31 = tail call i32 @llvm.read_register.i32(metadata !139) #12
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
declare dso_local i32 @__traceiter_gfs2_rs(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_get(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_check_ii(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_metatype_check_ii(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gfs2_queue_delete_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_setbit(ptr nocapture noundef readonly %rbm, i1 noundef zeroext %do_clone, i8 noundef zeroext %new_state) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rbm, align 4
  %rd_bits.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %rd_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rd_bits.i, align 8
  %bii.i = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 2
  %4 = ptrtoint ptr %bii.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bii.i, align 4
  %add.ptr.i = getelementptr %struct.gfs2_bitmap, ptr %3, i32 %5
  %bi_bytes = getelementptr %struct.gfs2_bitmap, ptr %3, i32 %5, i32 5
  %6 = ptrtoint ptr %bi_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_bytes, align 4
  %offset = getelementptr inbounds %struct.gfs2_rbm, ptr %rbm, i32 0, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %rem = shl i32 %9, 1
  %mul = and i32 %rem, 6
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %b_data, align 4
  %bi_offset = getelementptr %struct.gfs2_bitmap, ptr %3, i32 %5, i32 3
  %14 = ptrtoint ptr %bi_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_offset, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %15
  %div123 = lshr i32 %9, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %div123
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %7
  %cmp.not = icmp ult ptr %add.ptr2, %add.ptr7
  br i1 %cmp.not, label %do.end14, label %do.body9, !prof !151

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/rgrp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #12, !srcloc !189
  unreachable

do.end14:                                         ; preds = %entry
  %16 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr2, align 1
  %conv = zext i8 %17 to i32
  %shr = lshr i32 %conv, %mul
  %conv15 = and i32 %shr, 3
  %conv16 = zext i8 %new_state to i32
  %mul17 = shl nuw nsw i32 %conv16, 2
  %add = or i32 %conv15, %mul17
  %18 = lshr i32 59361, %add
  %19 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool19.not.not = icmp eq i32 %19, 0
  br i1 %tobool19.not.not, label %if.end56, label %if.then28, !prof !151

if.then28:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  %rd_sbd = getelementptr inbounds %struct.gfs2_rgrpd, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %rd_sbd to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rd_sbd, align 4
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %21, i32 0, i32 110
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %sd_fsname, i32 noundef %9, i32 noundef %conv15, i32 noundef %conv16) #16
  %22 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rbm, align 4
  %rd_addr = getelementptr inbounds %struct.gfs2_rgrpd, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %rd_addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rd_addr, align 8
  %bi_start = getelementptr %struct.gfs2_bitmap, ptr %3, i32 %5, i32 4
  %26 = ptrtoint ptr %bi_start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bi_start, align 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %b_blocknr, align 8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %sd_fsname, i64 noundef %25, i32 noundef %27, i64 noundef %31) #16
  %32 = ptrtoint ptr %bi_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bi_offset, align 4
  %34 = ptrtoint ptr %bi_bytes to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bi_bytes, align 4
  %call53 = tail call fastcc i64 @gfs2_rbm_to_block(ptr noundef %rbm)
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %sd_fsname, i32 noundef %33, i32 noundef %35, i64 noundef %call53) #16
  tail call void @dump_stack() #16
  %36 = ptrtoint ptr %rbm to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rbm, align 4
  tail call void @gfs2_consist_rgrpd_i(ptr noundef %37, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 120) #12
  br label %cleanup

if.end56:                                         ; preds = %do.end14
  %xor = xor i32 %conv15, %conv16
  %shl = shl i32 %xor, %mul
  %38 = trunc i32 %shl to i8
  %conv61 = xor i8 %17, %38
  %39 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv61, ptr %add.ptr2, align 1
  br i1 %do_clone, label %land.lhs.true, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end56
  %bi_clone = getelementptr %struct.gfs2_bitmap, ptr %3, i32 %5, i32 1
  %40 = ptrtoint ptr %bi_clone to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bi_clone, align 4
  %tobool64.not = icmp eq ptr %41, null
  br i1 %tobool64.not, label %land.lhs.true.cleanup_crit_edge, label %if.then65

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then65:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %bi_offset to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bi_offset, align 4
  %add.ptr68 = getelementptr i8, ptr %41, i32 %43
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset, align 4
  %div70124 = lshr i32 %45, 2
  %add.ptr71 = getelementptr i8, ptr %add.ptr68, i32 %div70124
  %46 = ptrtoint ptr %add.ptr71 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %add.ptr71, align 1
  %conv72 = zext i8 %47 to i32
  %shr73 = lshr i32 %conv72, %mul
  %conv75 = and i32 %shr73, 3
  %xor78 = xor i32 %conv75, %conv16
  %shl79 = shl i32 %xor78, %mul
  %48 = trunc i32 %shl79 to i8
  %conv82 = xor i8 %47, %48
  store i8 %conv82, ptr %add.ptr71, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %land.lhs.true.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then28
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gfs2_block_alloc(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16, !17, !18, !20, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66, !68, !70, !71, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137}
!llvm.named.register.sp = !{!139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/rgrp.c", i32 486, i32 16}
!2 = !{ptr @__func__.gfs2_rgrp_verify, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/gfs2/rgrp.c", i32 488, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/gfs2/rgrp.c", i32 494, i32 16}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/gfs2/rgrp.c", i32 501, i32 16}
!9 = !{ptr @__func__.gfs2_rgrp_go_instantiate, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/gfs2/rgrp.c", i32 1222, i32 7}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/gfs2/rgrp.c", i32 1256, i32 3}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/gfs2/rgrp.c", i32 1370, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @gfs2_rgrp_send_discards._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @gfs2_rgrp_send_discards._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/gfs2/rgrp.c", i32 2060, i32 6}
!20 = !{ptr @__func__.gfs2_inplace_reserve, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/gfs2/rgrp.c", i32 2303, i32 22}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/gfs2/rgrp.c", i32 2311, i32 23}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/gfs2/rgrp.c", i32 2442, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @gfs2_alloc_blocks._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @gfs2_alloc_blocks._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/gfs2/rgrp.c", i32 2467, i32 3}
!32 = !{ptr @gfs2_alloc_blocks._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gfs2_alloc_blocks._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__func__.gfs2_free_di, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/gfs2/rgrp.c", i32 2580, i32 3}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/gfs2/rgrp.c", i32 2627, i32 7}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/gfs2/rgrp.c", i32 2666, i32 6}
!40 = !{ptr @__func__.gfs2_rlist_add, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/gfs2/rgrp.c", i32 2685, i32 3}
!43 = !{ptr @gfs2_rlist_add._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @gfs2_rlist_add._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../fs/gfs2/trace_gfs2.h", i32 589, i32 1}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!49 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/gfs2/rgrp.c", i32 1006, i32 3}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @gfs2_ri_update._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @gfs2_ri_update._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @read_rindex_entry.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../fs/gfs2/rgrp.c", i32 922, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @read_rindex_entry.__key.23, !62, !"__key", i1 false, i1 false}
!62 = !{!"../fs/gfs2/rgrp.c", i32 923, i32 2}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__func__.compute_bitstructs, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/gfs2/rgrp.c", i32 810, i32 3}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/gfs2/rgrp.c", i32 816, i32 4}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/gfs2/glock.h", i32 306, i32 6}
!70 = !{ptr @__func__.glock_set_object, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/gfs2/util.h", i32 126, i32 38}
!74 = !{ptr @gfs2_bit_search.search, !75, !"search", i1 false, i1 false}
!75 = !{!"../fs/gfs2/rgrp.c", i32 182, i32 19}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/gfs2/rgrp.c", i32 1117, i32 3}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @gfs2_rgrp_lvb_valid._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @gfs2_rgrp_lvb_valid._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/gfs2/rgrp.c", i32 1123, i32 3}
!83 = !{ptr @gfs2_rgrp_lvb_valid._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @gfs2_rgrp_lvb_valid._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/gfs2/rgrp.c", i32 1129, i32 3}
!87 = !{ptr @gfs2_rgrp_lvb_valid._entry.34, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @gfs2_rgrp_lvb_valid._entry_ptr.36, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../fs/gfs2/rgrp.c", i32 1136, i32 3}
!91 = !{ptr @gfs2_rgrp_lvb_valid._entry.37, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @gfs2_rgrp_lvb_valid._entry_ptr.39, !90, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!95 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../fs/gfs2/rgrp.c", i32 1541, i32 6}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../fs/gfs2/rgrp.c", i32 1856, i32 7}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/gfs2/rgrp.c", i32 624, i32 22}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../fs/gfs2/rgrp.c", i32 2401, i32 6}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/gfs2/rgrp.c", i32 111, i32 3}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @gfs2_setbit._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @gfs2_setbit._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/gfs2/rgrp.c", i32 113, i32 3}
!115 = !{ptr @gfs2_setbit._entry.46, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @gfs2_setbit._entry_ptr.48, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/gfs2/rgrp.c", i32 116, i32 3}
!119 = !{ptr @gfs2_setbit._entry.49, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @gfs2_setbit._entry_ptr.51, !118, !"_entry_ptr", i1 false, i1 false}
!121 = distinct !{null, !122, !"valid_change", i1 false, i1 false}
!122 = !{!"../fs/gfs2/rgrp.c", i32 73, i32 19}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../fs/gfs2/trace_gfs2.h", i32 545, i32 1}
!125 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/gfs2/rgrp.c", i32 2328, i32 2}
!128 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @gfs2_rgrp_error._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @gfs2_rgrp_error._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/gfs2/rgrp.c", i32 2330, i32 2}
!133 = !{ptr @gfs2_rgrp_error._entry.54, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @gfs2_rgrp_error._entry_ptr.56, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/gfs2/rgrp.c", i32 2331, i32 21}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../fs/gfs2/rgrp.c", i32 2268, i32 6}
!139 = !{!"sp"}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{i64 2155599034, i64 2155599513, i64 2155599071, i64 2155599127, i64 2155599161, i64 2155599185, i64 2155599226, i64 2155599247, i64 2155599275, i64 2155599309}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 2155600607, i64 2155601086, i64 2155600644, i64 2155600700, i64 2155600734, i64 2155600758, i64 2155600799, i64 2155600820, i64 2155600848, i64 2155600882}
!153 = !{i64 1058122, i64 1058183}
!154 = !{i64 1060854}
!155 = !{i64 1061139}
!156 = !{i64 2152986871}
!157 = !{i64 2152986713}
!158 = !{i64 2152987041}
!159 = !{i64 2149832841}
!160 = distinct !{!160, !161}
!161 = !{!"llvm.loop.peeled.count", i32 1}
!162 = !{i64 2155624678, i64 2155625158, i64 2155624715, i64 2155624771, i64 2155624805, i64 2155624829, i64 2155624870, i64 2155624891, i64 2155624919, i64 2155624953}
!163 = !{i32 0, i32 33}
!164 = !{!"auto-init"}
!165 = !{i64 5147914}
!166 = !{i64 5148111}
!167 = !{i64 2152633344}
!168 = !{i64 2155662514, i64 2155662994, i64 2155662551, i64 2155662607, i64 2155662641, i64 2155662665, i64 2155662706, i64 2155662727, i64 2155662755, i64 2155662789}
!169 = !{i64 2155627055, i64 2155627535, i64 2155627092, i64 2155627148, i64 2155627182, i64 2155627206, i64 2155627247, i64 2155627268, i64 2155627296, i64 2155627330}
!170 = !{i64 2155573504, i64 2155573982, i64 2155573541, i64 2155573597, i64 2155573631, i64 2155573655, i64 2155573696, i64 2155573717, i64 2155573745, i64 2155573779}
!171 = !{i64 2155633600, i64 2155634080, i64 2155633637, i64 2155633693, i64 2155633727, i64 2155633751, i64 2155633792, i64 2155633813, i64 2155633841, i64 2155633875}
!172 = !{i64 2155654720}
!173 = !{i64 2148503227, i64 2148503507, i64 2148503841, i64 2148504175}
!174 = !{i64 2155661865}
!175 = !{i64 2155664651, i64 2155665131, i64 2155664688, i64 2155664744, i64 2155664778, i64 2155664802, i64 2155664843, i64 2155664864, i64 2155664892, i64 2155664926}
!176 = !{i64 2155677390, i64 2155681931, i64 2155677427, i64 2155677483, i64 2155677517, i64 2155677541, i64 2155677582, i64 2155677603, i64 2155677631, i64 2155677665}
!177 = !{i64 2155673327, i64 2155673807, i64 2155673364, i64 2155673420, i64 2155673454, i64 2155673478, i64 2155673519, i64 2155673540, i64 2155673568, i64 2155673602}
!178 = !{i64 2148653442, i64 2148653468, i64 2148653497, i64 2148653531, i64 2148653562, i64 2148653585}
!179 = !{i64 2155689286, i64 2155689766, i64 2155689323, i64 2155689379, i64 2155689413, i64 2155689437, i64 2155689478, i64 2155689499, i64 2155689527, i64 2155689561}
!180 = !{i64 2155584763, i64 2155585242, i64 2155584800, i64 2155584856, i64 2155584890, i64 2155584914, i64 2155584955, i64 2155584976, i64 2155585004, i64 2155585038}
!181 = !{i64 2155592139, i64 2155592618, i64 2155592176, i64 2155592232, i64 2155592266, i64 2155592290, i64 2155592331, i64 2155592352, i64 2155592380, i64 2155592414}
!182 = !{i64 2148274168, i64 2148274173, i64 2148274186, i64 2148274230, i64 2148274264, i64 2148274285}
!183 = !{i64 2155532827}
!184 = !{i64 2155533086}
!185 = !{i64 2149998872}
!186 = !{i64 2149999908}
!187 = !{i64 2155549263}
!188 = !{i64 2155549456}
!189 = !{i64 2155575245, i64 2155575724, i64 2155575282, i64 2155575338, i64 2155575372, i64 2155575396, i64 2155575437, i64 2155575458, i64 2155575486, i64 2155575520}
