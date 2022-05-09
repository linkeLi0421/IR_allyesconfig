; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_ioctl.c_pt.bc'
source_filename = "../fs/xfs/xfs_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%struct.atomic_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.xfs_handle = type { %union.anon, %struct.xfs_fid }
%union.anon = type { i64 }
%struct.xfs_fid = type { i16, i16, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.xfs_fsop_handlereq = type { i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%union.anon.81 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, ptr, %struct.address_space, %struct.list_head, %union.anon.85, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.83 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.84 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.85 = type { ptr }
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
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xfs_fid64 = type <{ i64, i32, i64, i32 }>
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.65, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%struct.llist_node = type { ptr }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.65 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.xfs_attr_list_context = type { ptr, ptr, %struct.xfs_attrlist_cursor_kern, ptr, i32, i8, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.xfs_attrlist_cursor_kern = type { i32, i32, i32, i16, i8, i8 }
%struct.xfs_attrlist = type { i32, i32, [1 x i32] }
%struct.xfs_attrlist_ent = type { i32, [1 x i8] }
%struct.xfs_da_args = type { ptr, ptr, i32, i8, ptr, i32, i32, i32, i32, i64, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_bstat = type { i64, i16, i16, i32, i32, i32, i32, i64, %struct.xfs_bstime, %struct.xfs_bstime, %struct.xfs_bstime, i64, i32, i32, i32, i32, i16, i16, i16, i16, i16, [2 x i8], i32, i32, i16, i16 }
%struct.xfs_bstime = type { i32, i32 }
%struct.xfs_ibulk = type { ptr, ptr, ptr, i64, i32, i32, i32 }
%struct.xfs_inogrp = type { i64, i32, i64 }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.92, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.91, i16, i8, i32 }
%union.anon.91 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%union.anon.92 = type { i32 }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.__xfsstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.xfs_swapext = type { i64, i64, i64, i64, i64, [16 x i8], %struct.xfs_bstat }
%struct.dioattr = type { i32, i32, i32 }
%struct.xfs_fsop_counts = type { i64, i64, i64, i64 }
%struct.xfs_fsop_resblks = type { i64, i64 }
%struct.xfs_growfs_data = type { i64, i32 }
%struct.xfs_growfs_log = type { i32, i32 }
%struct.xfs_growfs_rt = type { i64, i32 }
%struct.xfs_error_injection = type { i32, i32 }
%struct.xfs_fs_eofblocks = type { i32, i32, i32, i32, i32, i32, i64, [12 x i64] }
%struct.xfs_icwalk = type { i32, %struct.kuid_t, %struct.kgid_t, i32, i64, i32 }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.xfs_fsop_bulkreq = type { ptr, i32, ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.xfs_bulk_ireq = type { i64, i32, i32, i32, i32, [5 x i64] }
%struct.xfs_bulkstat_req = type { %struct.xfs_bulk_ireq, [0 x %struct.xfs_bulkstat] }
%struct.xfs_bulkstat = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, [7 x i64] }
%struct.xfs_inumbers_req = type { %struct.xfs_bulk_ireq, [0 x %struct.xfs_inumbers] }
%struct.xfs_inumbers = type { i64, i64, i8, i8, [6 x i8] }
%struct.xfs_fsop_geom = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [17 x i64] }
%struct.xfs_ag_geometry = type { i32, i32, i32, i32, i32, i32, i32, i32, [12 x i64] }
%struct.getbmapx = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.kgetbmap = type { i64, i64, i64, i32 }
%struct.xfs_fsmap_head = type { i32, i32, i32, i32, [2 x %struct.xfs_fsmap] }
%struct.xfs_fsmap = type { i32, i32, i64, i64, i64, i64 }
%struct.fsmap_head = type { i32, i32, i32, i32, [6 x i64], [2 x %struct.fsmap], [0 x %struct.fsmap] }
%struct.fsmap = type { i32, i32, i64, i64, i64, i64, [3 x i64] }
%struct.xfs_scrub_metadata = type { i32, i32, i64, i32, i32, [5 x i64] }
%struct.xfs_fsop_attrlist_handlereq = type { %struct.xfs_fsop_handlereq, %struct.xfs_attrlist_cursor, i32, i32, ptr }
%struct.xfs_attrlist_cursor = type { [4 x i32] }
%struct.xfs_fsop_attrmulti_handlereq = type { %struct.xfs_fsop_handlereq, i32, ptr }
%struct.xfs_attr_multiop = type { i32, i32, ptr, ptr, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.38 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.38 = type { %struct.callback_head }

@xfs_file_operations = external dso_local constant %struct.file_operations, align 4
@xfs_file_ioctl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s should use fallocate; XFS_IOC_{ALLOC,FREE}SP ioctl unsupported\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_ioctl.c\00", [45 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!context->seen_enough\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"context->count >= 0\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"context->count < (ATTR_MAX_VALUELEN/8)\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"context->firstu >= sizeof(*alist)\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"context->firstu <= context->bufsize\00", [60 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_list_full = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_attr_list_full.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_attr_list_add = external dso_local global %struct.tracepoint, align 4
@trace_xfs_attr_list_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_ioctl_setattr = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ioctl_setattr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@xfsstats = external dso_local local_unnamed_addr global %struct.xstats, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__tracepoint_xfs_file_ioctl = external dso_local global %struct.tracepoint, align 4
@trace_xfs_file_ioctl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_getfsmap_low_key = external dso_local global %struct.tracepoint, align 4
@trace_xfs_getfsmap_low_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_getfsmap_high_key = external dso_local global %struct.tracepoint, align 4
@trace_xfs_getfsmap_high_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_ioc_free_eofblocks = external dso_local global %struct.tracepoint, align 4
@trace_xfs_ioc_free_eofblocks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 16384, i64 32768, i64 40960]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [44 x i64] [i64 42, i64 32, i64 1074288751, i64 1074288756, i64 1074288757, i64 1074813038, i64 1074813040, i64 1076123771, i64 1076910090, i64 1076910091, i64 1076910116, i64 1076910117, i64 1077434490, i64 1090556978, i64 2147768445, i64 2147776001, i64 2148292638, i64 2148554867, i64 2149341229, i64 2149603441, i64 2151700607, i64 2151700608, i64 2154846308, i64 2154846332, i64 2155894842, i64 2164283518, i64 2164298801, i64 3222296677, i64 3222296678, i64 3222296679, i64 3222296690, i64 3222820985, i64 3223083112, i64 3223083113, i64 3223083114, i64 3223083115, i64 3223083116, i64 3223345190, i64 3223345196, i64 3223345208, i64 3225442364, i64 3229636669, i64 3232258157, i64 3233830971]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 3222296678, i64 3222296679]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 3223345190, i64 3223345196, i64 3223345208]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967171]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 16384, i64 32768]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1897, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1934, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 230, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 214, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 174, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 315, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 316, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 317, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 318, i32 2 }
@___asan_gen_.53 = private constant [22 x i8] c"../fs/xfs/xfs_ioctl.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 319, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 136, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 108, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 49, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 34, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_find_handle(i32 noundef %cmd, ptr nocapture noundef readonly %hreq) local_unnamed_addr #0 align 64 {
entry:
  %hsize = alloca i32, align 4
  %handle = alloca %struct.xfs_handle, align 8
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hsize) #13
  %0 = ptrtoint ptr %hsize to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hsize, align 4, !annotation !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %handle) #13
  %1 = getelementptr inbounds %struct.xfs_handle, ptr %handle, i32 0, i32 1
  %2 = getelementptr inbounds %struct.xfs_handle, ptr %handle, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds %struct.xfs_handle, ptr %handle, i32 0, i32 1, i32 2
  %4 = getelementptr inbounds %struct.xfs_handle, ptr %handle, i32 0, i32 1, i32 3
  %5 = call ptr @memset(ptr %handle, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #13
  %6 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !70
  %7 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1071884182, i32 %cmd)
  %cmp = icmp eq i32 %cmd, -1071884182
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %hreq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hreq, align 4
  %call.i = tail call i32 @__fdget(i32 noundef %10) #13, !noalias !71
  %and.i.i = and i32 %call.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %11 = inttoptr i32 %and.i.i to ptr
  %f_inode.i = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 2
  %phi.bo = and i32 %call.i, 1
  br label %if.end9

if.else:                                          ; preds = %entry
  %path3 = getelementptr inbounds %struct.xfs_fsop_handlereq, ptr %hreq, i32 0, i32 1
  %12 = ptrtoint ptr %path3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %path3, align 4
  %call.i84 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %13, i32 noundef 0, ptr noundef nonnull %path, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool5.not = icmp eq i32 %call.i84, 0
  br i1 %tobool5.not, label %if.end7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end
  %inode.0.in = phi ptr [ %f_inode.i, %if.end ], [ %d_inode.i, %if.end7 ]
  %f.sroa.0.0 = phi ptr [ %11, %if.end ], [ null, %if.end7 ]
  %f.sroa.7.0 = phi i32 [ %phi.bo, %if.end ], [ 0, %if.end7 ]
  %16 = ptrtoint ptr %inode.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %inode.0 = load ptr, ptr %inode.0.in, align 8
  %add.ptr.i = getelementptr i8, ptr %inode.0, i32 -312
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode.0, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_magic = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %s_magic to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %s_magic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1481003842, i32 %20)
  %cmp11.not = icmp eq i32 %20, 1481003842
  br i1 %cmp11.not, label %if.end13, label %if.end9.out_put_crit_edge

if.end9.out_put_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end13:                                         ; preds = %if.end9
  %21 = ptrtoint ptr %inode.0 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %inode.0, align 8
  %23 = and i16 %22, -4096
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i16 %23, label %if.end13.out_put_crit_edge [
    i16 -32768, label %if.end13.if.end28_crit_edge
    i16 16384, label %if.end13.if.end28_crit_edge90
    i16 -24576, label %if.end13.if.end28_crit_edge91
  ]

if.end13.if.end28_crit_edge91:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end13.if.end28_crit_edge90:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end13.out_put_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end28:                                         ; preds = %if.end13.if.end28_crit_edge, %if.end13.if.end28_crit_edge90, %if.end13.if.end28_crit_edge91
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %m_fixedfsid = getelementptr inbounds %struct.xfs_mount, ptr %26, i32 0, i32 59
  %27 = ptrtoint ptr %m_fixedfsid to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %m_fixedfsid, align 4
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1071884184, i32 %cmd)
  %cmp29 = icmp eq i32 %cmd, -1071884184
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %30 = call ptr @memset(ptr %1, i32 0, i32 16)
  br label %if.end37

if.else32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 14, ptr %1, align 8
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %2, align 2
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode.0, i32 0, i32 49
  %33 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_generation, align 8
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %3, align 4
  %i_ino = getelementptr i8, ptr %inode.0, i32 -296
  %36 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %i_ino, align 8
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %4, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.then31
  %storemerge = phi i32 [ 24, %if.else32 ], [ 8, %if.then31 ]
  %39 = ptrtoint ptr %hsize to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge, ptr %hsize, align 4
  %ohandle = getelementptr inbounds %struct.xfs_fsop_handlereq, ptr %hreq, i32 0, i32 5
  %40 = ptrtoint ptr %ohandle to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ohandle, align 4
  call void @__check_object_size(ptr noundef nonnull %handle, i32 noundef %storemerge, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end37.out_put_crit_edge, label %if.end.i.i

if.end37.out_put_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end.i.i:                                       ; preds = %if.end37
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %41, i32 %storemerge, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.out_put_crit_edge

if.end.i.i.out_put_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %handle, i32 noundef %storemerge) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %41, ptr noundef nonnull %handle, i32 noundef %storemerge) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool39.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %copy_to_user.exit.out_put_crit_edge

copy_to_user.exit.out_put_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

lor.lhs.false:                                    ; preds = %copy_to_user.exit
  %ohandlen = getelementptr inbounds %struct.xfs_fsop_handlereq, ptr %hreq, i32 0, i32 6
  %43 = ptrtoint ptr %ohandlen to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ohandlen, align 4
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i74 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i74, label %lor.lhs.false.out_put_crit_edge, label %if.end.i.i78

lor.lhs.false.out_put_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

if.end.i.i78:                                     ; preds = %lor.lhs.false
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %44, i32 4, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i76 = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i76)
  %cmp.i6.i77 = icmp eq i32 %asmresult.i.i76, 0
  br i1 %cmp.i6.i77, label %copy_to_user.exit83, label %if.end.i.i78.out_put_crit_edge

if.end.i.i78.out_put_crit_edge:                   ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put

copy_to_user.exit83:                              ; preds = %if.end.i.i78
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i79 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hsize, i32 noundef 4) #13
  %call.i12.i.i80 = call i32 @arm_copy_to_user(ptr noundef %44, ptr noundef nonnull %hsize, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i80)
  %tobool41.not = icmp eq i32 %call.i12.i.i80, 0
  %spec.select = select i1 %tobool41.not, i32 0, i32 -14
  br label %out_put

out_put:                                          ; preds = %copy_to_user.exit83, %if.end.i.i78.out_put_crit_edge, %lor.lhs.false.out_put_crit_edge, %copy_to_user.exit.out_put_crit_edge, %if.end.i.i.out_put_crit_edge, %if.end37.out_put_crit_edge, %if.end13.out_put_crit_edge, %if.end9.out_put_crit_edge
  %error.0 = phi i32 [ -22, %if.end9.out_put_crit_edge ], [ -14, %copy_to_user.exit.out_put_crit_edge ], [ -9, %if.end13.out_put_crit_edge ], [ -14, %if.end37.out_put_crit_edge ], [ -14, %if.end.i.i.out_put_crit_edge ], [ -14, %lor.lhs.false.out_put_crit_edge ], [ -14, %if.end.i.i78.out_put_crit_edge ], [ %spec.select, %copy_to_user.exit83 ]
  br i1 %cmp, label %if.then46, label %if.else47

if.then46:                                        ; preds = %out_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %f.sroa.7.0)
  %tobool.not.i = icmp eq i32 %f.sroa.7.0, 0
  br i1 %tobool.not.i, label %if.then46.cleanup_crit_edge, label %if.then.i85

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i85:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #15
  call void @fput(ptr noundef %f.sroa.0.0) #13
  br label %cleanup

if.else47:                                        ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #15
  call void @path_put(ptr noundef nonnull %path) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else47, %if.then.i85, %if.then46.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %if.then.cleanup_crit_edge ], [ %call.i84, %if.else.cleanup_crit_edge ], [ %error.0, %if.else47 ], [ %error.0, %if.then46.cleanup_crit_edge ], [ %error.0, %if.then.i85 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %handle) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hsize) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xfs_handle_to_dentry(ptr nocapture noundef readonly %parfilp, ptr noundef %uhandle, i32 noundef %hlen) local_unnamed_addr #0 align 64 {
entry:
  %handle = alloca %struct.xfs_handle, align 8
  %fid = alloca %struct.xfs_fid64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %handle) #13
  %0 = getelementptr inbounds %struct.xfs_handle, ptr %handle, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xfs_handle, ptr %handle, i32 0, i32 1, i32 2
  %2 = getelementptr inbounds %struct.xfs_handle, ptr %handle, i32 0, i32 1, i32 3
  %3 = call ptr @memset(ptr %handle, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fid) #13
  %4 = getelementptr inbounds %struct.xfs_fid64, ptr %fid, i32 0, i32 1
  %f_inode.i = getelementptr inbounds %struct.file, ptr %parfilp, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %fid, i32 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %5, align 8
  %7 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 8
  %11 = and i16 %10, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %11)
  %cmp = icmp eq i16 %11, 16384
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %hlen)
  %cmp3.not = icmp eq i32 %hlen, 24
  br i1 %cmp3.not, label %if.end8.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uhandle, i32 24, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %handle, i32 noundef 24) #13
  %13 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %handle, ptr noundef %uhandle, i32 noundef 24) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i26 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 24, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i26
  %add.ptr.i.i = getelementptr i8, ptr %handle, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i26)
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %0, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %18)
  %cmp13.not = icmp eq i16 %18, 14
  br i1 %cmp13.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %19 = getelementptr inbounds i8, ptr %fid, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 12)
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %2, align 8
  %23 = ptrtoint ptr %fid to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %fid, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %4, align 8
  %f_path = getelementptr inbounds %struct.file, ptr %parfilp, i32 0, i32 1
  %27 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %f_path, align 8
  %call20 = call ptr @exportfs_decode_fh(ptr noundef %28, ptr noundef nonnull %fid, i32 noundef 3, i32 noundef 129, ptr noundef nonnull @xfs_handle_acceptable, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end11.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call20, %if.end17 ], [ inttoptr (i32 -20 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then11.i.i ], [ inttoptr (i32 -22 to ptr), %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fid) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %handle) #13
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @exportfs_decode_fh(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_handle_acceptable(ptr nocapture noundef readnone %context, ptr nocapture noundef readnone %dentry) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_open_by_handle(ptr nocapture noundef readonly %parfilp, ptr nocapture noundef readonly %hreq) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %cred1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 99
  %4 = ptrtoint ptr %cred1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cred1, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #13
  %6 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %call2 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc ptr @xfs_handlereq_to_dentry(ptr noundef %parfilp, ptr noundef %hreq)
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call3, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 8
  %12 = and i16 %11, -4096
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %12, label %if.end7.out_dput_crit_edge [
    i16 -32768, label %if.end7.if.end16_crit_edge
    i16 16384, label %if.end7.if.end16_crit_edge109
  ]

if.end7.if.end16_crit_edge109:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end7.out_dput_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dput

if.end16:                                         ; preds = %if.end7.if.end16_crit_edge, %if.end7.if.end16_crit_edge109
  %oflags = getelementptr inbounds %struct.xfs_fsop_handlereq, ptr %hreq, i32 0, i32 2
  %14 = ptrtoint ptr %oflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %oflags, align 4
  %add = add i32 %15, 1
  %16 = and i32 %15, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %16)
  %17 = icmp eq i32 %16, 1024
  %and23 = and i32 %add, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond104 = select i1 %17, i1 true, i1 %tobool24.not
  br i1 %or.cond104, label %if.end16.if.end29_crit_edge, label %land.lhs.true25

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.end16
  %i_flags = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %18 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags, align 4
  %and26 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %land.lhs.true25.if.end29_crit_edge, label %land.lhs.true25.out_dput_crit_edge

land.lhs.true25.out_dput_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dput

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true25.if.end29_crit_edge, %if.end16.if.end29_crit_edge
  br i1 %tobool24.not, label %if.end29.if.end47_crit_edge, label %land.lhs.true32

if.end29.if.end47_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

land.lhs.true32:                                  ; preds = %if.end29
  %i_flags33 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %i_flags33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_flags33, align 4
  %and34 = and i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end37, label %land.lhs.true32.out_dput_crit_edge

land.lhs.true32.out_dput_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dput

if.end37:                                         ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %12)
  %cmp41.not = icmp eq i16 %12, 16384
  br i1 %cmp41.not, label %if.end37.out_dput_crit_edge, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.end37.out_dput_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dput

if.end47:                                         ; preds = %if.end37.if.end47_crit_edge, %if.end29.if.end47_crit_edge
  %call48 = tail call i32 @get_unused_fd_flags(i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end47.out_dput_crit_edge, label %if.end52

if.end47.out_dput_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dput

if.end52:                                         ; preds = %if.end47
  %f_path = getelementptr inbounds %struct.file, ptr %parfilp, i32 0, i32 1
  %22 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %f_path, align 8
  %24 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %path, align 4
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call3, ptr %6, align 4
  %26 = ptrtoint ptr %oflags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oflags, align 4
  %call56 = call ptr @dentry_open(ptr noundef nonnull %path, i32 noundef %27, ptr noundef %5) #13
  call void @dput(ptr noundef %call3) #13
  %cmp.i105 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15
  call void @put_unused_fd(i32 noundef %call48) #13
  %28 = ptrtoint ptr %call56 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end52
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %9, align 8
  %31 = and i16 %30, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %31)
  %cmp64 = icmp eq i16 %31, -32768
  br i1 %cmp64, label %if.then66, label %if.end60.if.end69_crit_edge

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #15
  %f_flags = getelementptr inbounds %struct.file, ptr %call56, i32 0, i32 7
  %32 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f_flags, align 4
  %or67 = or i32 %33, 262144
  store i32 %or67, ptr %f_flags, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %call56, i32 0, i32 8
  %34 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %f_mode, align 8
  %or68 = or i32 %35, 2048
  store i32 %or68, ptr %f_mode, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end60.if.end69_crit_edge
  call void @fd_install(i32 noundef %call48, ptr noundef %call56) #13
  br label %cleanup

out_dput:                                         ; preds = %if.end47.out_dput_crit_edge, %if.end37.out_dput_crit_edge, %land.lhs.true32.out_dput_crit_edge, %land.lhs.true25.out_dput_crit_edge, %if.end7.out_dput_crit_edge
  %error.0 = phi i32 [ -1, %if.end7.out_dput_crit_edge ], [ -1, %land.lhs.true25.out_dput_crit_edge ], [ -1, %land.lhs.true32.out_dput_crit_edge ], [ -21, %if.end37.out_dput_crit_edge ], [ %call48, %if.end47.out_dput_crit_edge ]
  tail call void @dput(ptr noundef %call3) #13
  br label %cleanup

cleanup:                                          ; preds = %out_dput, %if.end69, %if.then58, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then5 ], [ %error.0, %out_dput ], [ %28, %if.then58 ], [ %call48, %if.end69 ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xfs_handlereq_to_dentry(ptr nocapture noundef readonly %parfilp, ptr nocapture noundef readonly %hreq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ihandle = getelementptr inbounds %struct.xfs_fsop_handlereq, ptr %hreq, i32 0, i32 3
  %0 = ptrtoint ptr %ihandle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ihandle, align 4
  %ihandlen = getelementptr inbounds %struct.xfs_fsop_handlereq, ptr %hreq, i32 0, i32 4
  %2 = ptrtoint ptr %ihandlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ihandlen, align 4
  %call = tail call ptr @xfs_handle_to_dentry(ptr noundef %parfilp, ptr noundef %1, i32 noundef %3)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_readlink_by_handle(ptr nocapture noundef readonly %parfilp, ptr nocapture noundef readonly %hreq) local_unnamed_addr #0 align 64 {
entry:
  %olen = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %olen) #13
  %0 = ptrtoint ptr %olen to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %olen, align 4, !annotation !70
  %call = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @xfs_handlereq_to_dentry(ptr noundef %parfilp, ptr noundef %hreq)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 8
  %and.i.i = and i32 %3, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i.i)
  %cmp.i21 = icmp eq i32 %and.i.i, 6291456
  br i1 %cmp.i21, label %if.end8, label %if.end5.out_dput_crit_edge

if.end5.out_dput_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dput

if.end8:                                          ; preds = %if.end5
  %ohandlen = getelementptr inbounds %struct.xfs_fsop_handlereq, ptr %hreq, i32 0, i32 6
  %4 = ptrtoint ptr %ohandlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ohandlen, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.if.then11.i.i_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 4, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %olen, i32 noundef 4) #13
  %7 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %olen, ptr noundef %5, i32 noundef 4) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.if.then11.i.i_crit_edge
  %res.0.i.i24 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end8.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i24
  %add.ptr.i.i = getelementptr i8, ptr %olen, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i24)
  br label %out_dput

if.end11:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ohandle = getelementptr inbounds %struct.xfs_fsop_handlereq, ptr %hreq, i32 0, i32 5
  %11 = ptrtoint ptr %ohandle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ohandle, align 4
  %13 = ptrtoint ptr %olen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %olen, align 4
  %call12 = call i32 @vfs_readlink(ptr noundef %call1, ptr noundef %12, i32 noundef %14) #13
  br label %out_dput

out_dput:                                         ; preds = %if.end11, %if.then11.i.i, %if.end5.out_dput_crit_edge
  %error.0 = phi i32 [ %call12, %if.end11 ], [ -22, %if.end5.out_dput_crit_edge ], [ -14, %if.then11.i.i ]
  call void @dput(ptr noundef %call1) #13
  br label %cleanup

cleanup:                                          ; preds = %out_dput, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ %error.0, %out_dput ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %olen) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_readlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ioc_attr_list(ptr noundef %dp, ptr noundef %ubuf, i32 noundef %bufsize, i32 noundef %flags, ptr noundef %ucursor) local_unnamed_addr #0 align 64 {
entry:
  %context = alloca %struct.xfs_attr_list_context, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %context) #13
  %0 = call ptr @memset(ptr %context, i32 0, i32 68)
  %1 = add i32 %bufsize, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65525, i32 %1)
  %2 = icmp ult i32 %1, -65525
  %and = and i32 %flags, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %or.cond70.not = or i1 %2, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %flags)
  %cmp4 = icmp eq i32 %flags, 10
  %or.cond71 = or i1 %cmp4, %or.cond70.not
  br i1 %or.cond71, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %entry
  %cursor = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end6.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end6.if.then11.i.i_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end6
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ucursor, i32 16, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %cursor, i32 noundef 16) #13
  %4 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %cursor, ptr noundef %ucursor, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end9, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end6.if.then11.i.i_crit_edge
  %res.0.i.i101 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end6.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i101
  %add.ptr.i.i = getelementptr i8, ptr %cursor, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i101)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i
  %pad1 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %pad1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pad1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool11.not = icmp eq i16 %9, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false12:                                  ; preds = %if.end9
  %pad2 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %pad2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pad2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  br i1 %tobool15.not, label %if.end17, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false12
  %initted = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %initted to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %initted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end17.if.end29_crit_edge

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end17
  %14 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cursor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false22:                                  ; preds = %land.lhs.true
  %blkno = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %blkno to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blkno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool24.not = icmp eq i32 %17, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false25:                                  ; preds = %lor.lhs.false22
  %offset = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 2, i32 2
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not = icmp eq i32 %19, 0
  br i1 %tobool27.not, label %lor.lhs.false25.if.end29_crit_edge, label %lor.lhs.false25.cleanup_crit_edge

lor.lhs.false25.cleanup_crit_edge:                ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false25.if.end29_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.end29:                                         ; preds = %lor.lhs.false25.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %call.i.i98 = call noalias ptr @kvmalloc_node(i32 noundef %bufsize, i32 noundef 3520, i32 noundef -1) #17
  %tobool31.not = icmp eq ptr %call.i.i98, null
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %dp34 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 1
  %20 = ptrtoint ptr %dp34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dp, ptr %dp34, align 4
  %resynch = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 11
  %21 = ptrtoint ptr %resynch to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %resynch, align 4
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = lshr i32 %flags, 1
  %22 = and i32 %and1.i, 4
  %retval.0.i = select i1 %tobool.not.i, i32 %22, i32 2
  %attr_filter = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 10
  %23 = ptrtoint ptr %attr_filter to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %attr_filter, align 4
  %buffer36 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 3
  %24 = ptrtoint ptr %buffer36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i.i98, ptr %buffer36, align 4
  %and37 = and i32 %bufsize, -4
  %bufsize38 = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 8
  %25 = ptrtoint ptr %bufsize38 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and37, ptr %bufsize38, align 4
  %firstu = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 9
  %26 = ptrtoint ptr %firstu to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and37, ptr %firstu, align 4
  %put_listent = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 12
  %27 = ptrtoint ptr %put_listent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @xfs_ioc_attr_put_listent, ptr %put_listent, align 4
  %28 = ptrtoint ptr %call.i.i98 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %call.i.i98, align 4
  %al_more = getelementptr inbounds %struct.xfs_attrlist, ptr %call.i.i98, i32 0, i32 1
  %29 = ptrtoint ptr %al_more to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %al_more, align 4
  %al_offset = getelementptr inbounds %struct.xfs_attrlist, ptr %call.i.i98, i32 0, i32 2
  %30 = ptrtoint ptr %al_offset to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and37, ptr %al_offset, align 4
  %call42 = call i32 @xfs_attr_list(ptr noundef nonnull %context) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then.i.i.i, label %if.end33.out_free_crit_edge

if.end33.out_free_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then.i.i.i:                                    ; preds = %if.end33
  call void @__check_object_size(ptr noundef nonnull %call.i.i98, i32 noundef %bufsize, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i76 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i76, label %if.then.i.i.i.if.then52_crit_edge, label %if.end.i.i79

if.then.i.i.i.if.then52_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.end.i.i79:                                     ; preds = %if.then.i.i.i
  %31 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %bufsize, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i77 = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i77)
  %cmp.i6.i78 = icmp eq i32 %asmresult.i.i77, 0
  br i1 %cmp.i6.i78, label %copy_to_user.exit, label %if.end.i.i79.if.then52_crit_edge

if.end.i.i79.if.then52_crit_edge:                 ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

copy_to_user.exit:                                ; preds = %if.end.i.i79
  %call.i.i.i80 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i.i98, i32 noundef %bufsize) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %ubuf, ptr noundef nonnull %call.i.i98, i32 noundef %bufsize) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool47.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool47.not, label %if.end8.i.i86, label %copy_to_user.exit.if.then52_crit_edge

copy_to_user.exit.if.then52_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

if.end8.i.i86:                                    ; preds = %copy_to_user.exit
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i88 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i88, label %if.end8.i.i86.if.then52_crit_edge, label %copy_to_user.exit97

if.end8.i.i86.if.then52_crit_edge:                ; preds = %if.end8.i.i86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

copy_to_user.exit97:                              ; preds = %if.end8.i.i86
  %call.i.i.i93 = call zeroext i1 @__kasan_check_read(ptr noundef %cursor, i32 noundef 16) #13
  %call.i12.i.i94 = call i32 @arm_copy_to_user(ptr noundef %ucursor, ptr noundef %cursor, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i94)
  %tobool51.not = icmp eq i32 %call.i12.i.i94, 0
  br i1 %tobool51.not, label %copy_to_user.exit97.out_free_crit_edge, label %copy_to_user.exit97.if.then52_crit_edge

copy_to_user.exit97.if.then52_crit_edge:          ; preds = %copy_to_user.exit97
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then52

copy_to_user.exit97.out_free_crit_edge:           ; preds = %copy_to_user.exit97
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then52:                                        ; preds = %copy_to_user.exit97.if.then52_crit_edge, %if.end8.i.i86.if.then52_crit_edge, %copy_to_user.exit.if.then52_crit_edge, %if.end.i.i79.if.then52_crit_edge, %if.then.i.i.i.if.then52_crit_edge
  br label %out_free

out_free:                                         ; preds = %if.then52, %copy_to_user.exit97.out_free_crit_edge, %if.end33.out_free_crit_edge
  %error.0 = phi i32 [ %call42, %if.end33.out_free_crit_edge ], [ -14, %if.then52 ], [ 0, %copy_to_user.exit97.out_free_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i98) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end29.cleanup_crit_edge, %lor.lhs.false25.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_free ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %lor.lhs.false25.cleanup_crit_edge ], [ -22, %lor.lhs.false22.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %context) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_ioc_attr_put_listent(ptr noundef %context, i32 noundef %flags, ptr nocapture noundef readonly %name, i32 noundef %namelen, i32 noundef %valuelen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %seen_enough = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 4
  %2 = ptrtoint ptr %seen_enough to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seen_enough, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.false, !prof !76

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 315) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %count = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 6
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %cond.end.cond.end12_crit_edge, label %cond.false11, !prof !76

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 316) #13
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %count, align 4
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.end.cond.end12_crit_edge
  %7 = phi i32 [ %5, %cond.end.cond.end12_crit_edge ], [ %.pr, %cond.false11 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %7)
  %cmp14 = icmp slt i32 %7, 8192
  br i1 %cmp14, label %cond.end12.cond.end23_crit_edge, label %cond.false22, !prof !76

cond.end12.cond.end23_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 317) #13
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false22, %cond.end12.cond.end23_crit_edge
  %firstu = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 9
  %8 = ptrtoint ptr %firstu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %firstu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %9)
  %cmp24 = icmp ugt i32 %9, 11
  br i1 %cmp24, label %cond.end23.cond.end33_crit_edge, label %cond.false32, !prof !76

cond.end23.cond.end33_crit_edge:                  ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end33

cond.false32:                                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 318) #13
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.end23.cond.end33_crit_edge
  %10 = ptrtoint ptr %firstu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %firstu, align 4
  %bufsize = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 8
  %12 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp35.not = icmp sgt i32 %11, %13
  br i1 %cmp35.not, label %cond.false43, label %cond.end33.cond.end44_crit_edge, !prof !80

cond.end33.cond.end44_crit_edge:                  ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end44

cond.false43:                                     ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 319) #13
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %cond.end33.cond.end44_crit_edge
  %attr_filter = getelementptr inbounds %struct.xfs_attr_list_context, ptr %context, i32 0, i32 10
  %14 = ptrtoint ptr %attr_filter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %attr_filter, align 4
  %and = and i32 %flags, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and)
  %cmp45.not = icmp eq i32 %15, %and
  br i1 %cmp45.not, label %if.end, label %cond.end44.cleanup_crit_edge

cond.end44.cleanup_crit_edge:                     ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end44
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %mul = shl i32 %17, 2
  %add = add i32 %mul, 12
  %notlhs = sub i32 -5, %namelen
  %add49.neg = and i32 %notlhs, -4
  %18 = ptrtoint ptr %firstu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %firstu, align 4
  %sub51 = add i32 %19, %add49.neg
  store i32 %sub51, ptr %firstu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub51, i32 %add)
  %cmp53 = icmp slt i32 %sub51, %add
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @trace_xfs_attr_list_full(ptr noundef %context)
  %al_more = getelementptr inbounds %struct.xfs_attrlist, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %al_more to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %al_more, align 4
  %21 = ptrtoint ptr %seen_enough to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %seen_enough, align 4
  br label %cleanup

if.end56:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 %sub51
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %valuelen, ptr %add.ptr, align 4
  %a_name = getelementptr inbounds %struct.xfs_attrlist_ent, ptr %add.ptr, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %a_name, ptr %name, i32 %namelen)
  %arrayidx = getelementptr [1 x i8], ptr %a_name, i32 0, i32 %namelen
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx, align 1
  %27 = ptrtoint ptr %firstu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %firstu, align 4
  %29 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr %count, align 4
  %arrayidx62 = getelementptr %struct.xfs_attrlist, ptr %1, i32 0, i32 2, i32 %30
  %31 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %arrayidx62, align 4
  %32 = load i32, ptr %count, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %1, align 4
  tail call fastcc void @trace_xfs_attr_list_add(ptr noundef %context)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then54, %cond.end44.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ioc_attrmulti_one(ptr noundef %parfilp, ptr noundef %inode, i32 noundef %opcode, ptr noundef %uname, ptr noundef %value, ptr nocapture noundef %len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %args.i30 = alloca %struct.xfs_da_args, align 8
  %args.i = alloca %struct.xfs_da_args, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %0 = and i32 %flags, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %0)
  %.not = icmp eq i32 %0, 10
  br i1 %.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @strndup_user(ptr noundef %uname, i32 noundef 256) #13
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %2 = zext i32 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %opcode, label %if.end6.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb8
    i32 2, label %if.end6.sw.bb9_crit_edge
  ]

if.end6.sw.bb9_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb9

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %args.i) #13
  %3 = call ptr @memset(ptr %args.i, i32 0, i32 112)
  %name1.i = getelementptr inbounds %struct.xfs_da_args, ptr %args.i, i32 0, i32 1
  %4 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %name1.i, align 4
  %namelen.i = getelementptr inbounds %struct.xfs_da_args, ptr %args.i, i32 0, i32 2
  %call.i = tail call i32 @strlen(ptr noundef %call) #18
  %5 = ptrtoint ptr %namelen.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %namelen.i, align 8
  %valuelen.i = getelementptr inbounds %struct.xfs_da_args, ptr %args.i, i32 0, i32 5
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %valuelen.i, align 4
  %attr_filter.i = getelementptr inbounds %struct.xfs_da_args, ptr %args.i, i32 0, i32 6
  %and1.i.i = lshr i32 %flags, 1
  %9 = and i32 %and1.i.i, 4
  %retval.0.i.i = select i1 %tobool.not, i32 %9, i32 2
  %10 = ptrtoint ptr %attr_filter.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.i, ptr %attr_filter.i, align 8
  %attr_flags.i = getelementptr inbounds %struct.xfs_da_args, ptr %args.i, i32 0, i32 7
  %and.i21.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i22.i = icmp eq i32 %and.i21.i, 0
  %and1.i23.i = lshr i32 %flags, 4
  %11 = and i32 %and1.i23.i, 2
  %retval.0.i24.i = select i1 %tobool.not.i22.i, i32 %11, i32 1
  %12 = ptrtoint ptr %attr_flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i24.i, ptr %attr_flags.i, align 4
  %dp.i = getelementptr inbounds %struct.xfs_da_args, ptr %args.i, i32 0, i32 10
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -312
  %13 = ptrtoint ptr %dp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i.i, ptr %dp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp.i29 = icmp ugt i32 %7, 65536
  br i1 %cmp.i29, label %sw.bb.xfs_attrmulti_attr_get.exit_crit_edge, label %if.end.i

sw.bb.xfs_attrmulti_attr_get.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attrmulti_attr_get.exit

if.end.i:                                         ; preds = %sw.bb
  %call5.i = call i32 @xfs_attr_get(ptr noundef nonnull %args.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.out_kfree.i_crit_edge

if.end.i.out_kfree.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_kfree.i

if.end7.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %valuelen.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %valuelen.i, align 4
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %len, align 4
  %value.i = getelementptr inbounds %struct.xfs_da_args, ptr %args.i, i32 0, i32 4
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.i.i.i = icmp slt i32 %15, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end7.i
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.out_kfree.i_crit_edge, label %if.then27.i.i.i, !prof !76

land.rhs16.i.i.i.out_kfree.i_crit_edge:           ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_kfree.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %out_kfree.i

if.then.i.i.i.i:                                  ; preds = %if.end7.i
  call void @__check_object_size(ptr noundef %18, i32 noundef %15, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %value, i32 %15, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %18, i32 noundef %15) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %value, ptr noundef %18, i32 noundef %15) #13
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %15, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %15, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool11.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i = select i1 %tobool11.not.i, i32 0, i32 -14
  br label %out_kfree.i

out_kfree.i:                                      ; preds = %copy_to_user.exit.i, %if.then27.i.i.i, %land.rhs16.i.i.i.out_kfree.i_crit_edge, %if.end.i.out_kfree.i_crit_edge
  %error.0.i = phi i32 [ %call5.i, %if.end.i.out_kfree.i_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.out_kfree.i_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  %value14.i = getelementptr inbounds %struct.xfs_da_args, ptr %args.i, i32 0, i32 4
  %20 = ptrtoint ptr %value14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value14.i, align 8
  call void @kvfree(ptr noundef %21) #13
  br label %xfs_attrmulti_attr_get.exit

xfs_attrmulti_attr_get.exit:                      ; preds = %out_kfree.i, %sw.bb.xfs_attrmulti_attr_get.exit_crit_edge
  %retval.0.i = phi i32 [ %error.0.i, %out_kfree.i ], [ -22, %sw.bb.xfs_attrmulti_attr_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %args.i) #13
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %len, align 4
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb8, %if.end6.sw.bb9_crit_edge
  %value.addr.0 = phi ptr [ %value, %if.end6.sw.bb9_crit_edge ], [ null, %sw.bb8 ]
  %call10 = tail call i32 @mnt_want_write_file(ptr noundef %parfilp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end13:                                         ; preds = %sw.bb9
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %args.i30) #13
  %25 = call ptr @memset(ptr %args.i30, i32 0, i32 112)
  %name1.i31 = getelementptr inbounds %struct.xfs_da_args, ptr %args.i30, i32 0, i32 1
  %26 = ptrtoint ptr %name1.i31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %name1.i31, align 4
  %namelen.i32 = getelementptr inbounds %struct.xfs_da_args, ptr %args.i30, i32 0, i32 2
  %call.i33 = tail call i32 @strlen(ptr noundef %call) #18
  %27 = ptrtoint ptr %namelen.i32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.i33, ptr %namelen.i32, align 8
  %attr_filter.i34 = getelementptr inbounds %struct.xfs_da_args, ptr %args.i30, i32 0, i32 6
  %and1.i.i37 = lshr i32 %flags, 1
  %28 = and i32 %and1.i.i37, 4
  %retval.0.i.i38 = select i1 %tobool.not, i32 %28, i32 2
  %29 = ptrtoint ptr %attr_filter.i34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i38, ptr %attr_filter.i34, align 8
  %attr_flags.i39 = getelementptr inbounds %struct.xfs_da_args, ptr %args.i30, i32 0, i32 7
  %and.i40.i = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40.i)
  %tobool.not.i41.i = icmp eq i32 %and.i40.i, 0
  %and1.i42.i = lshr i32 %flags, 4
  %30 = and i32 %and1.i42.i, 2
  %retval.0.i43.i = select i1 %tobool.not.i41.i, i32 %30, i32 1
  %31 = ptrtoint ptr %attr_flags.i39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i43.i, ptr %attr_flags.i39, align 4
  %dp.i40 = getelementptr inbounds %struct.xfs_da_args, ptr %args.i30, i32 0, i32 10
  %add.ptr.i.i41 = getelementptr i8, ptr %inode, i32 -312
  %32 = ptrtoint ptr %dp.i40 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i.i41, ptr %dp.i40, align 8
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %33 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %i_flags.i, align 4
  %35 = and i32 %34, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %if.end.i42, label %if.end13.xfs_attrmulti_attr_set.exit_crit_edge

if.end13.xfs_attrmulti_attr_set.exit_crit_edge:   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attrmulti_attr_set.exit

if.end.i42:                                       ; preds = %if.end13
  %tobool8.not.i = icmp eq ptr %value.addr.0, null
  br i1 %tobool8.not.i, label %if.end.i42.if.end19.i_crit_edge, label %if.then9.i

if.end.i42.if.end19.i_crit_edge:                  ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i

if.then9.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %24)
  %cmp.i43 = icmp ugt i32 %24, 65536
  br i1 %cmp.i43, label %if.then9.i.xfs_attrmulti_attr_set.exit_crit_edge, label %if.end11.i

if.then9.i.xfs_attrmulti_attr_set.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_attrmulti_attr_set.exit

if.end11.i:                                       ; preds = %if.then9.i
  %call12.i = tail call ptr @memdup_user(ptr noundef nonnull %value.addr.0, i32 noundef %24) #13
  %value.i44 = getelementptr inbounds %struct.xfs_da_args, ptr %args.i30, i32 0, i32 4
  %37 = ptrtoint ptr %value.i44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call12.i, ptr %value.i44, align 8
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then15.i, label %if.end18.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = ptrtoint ptr %call12.i to i32
  br label %xfs_attrmulti_attr_set.exit

if.end18.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %valuelen.i45 = getelementptr inbounds %struct.xfs_da_args, ptr %args.i30, i32 0, i32 5
  %39 = ptrtoint ptr %valuelen.i45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %24, ptr %valuelen.i45, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end18.i, %if.end.i42.if.end19.i_crit_edge
  %call20.i = call i32 @xfs_attr_set(ptr noundef nonnull %args.i30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp ne i32 %call20.i, 0
  %or.cond39.i = or i1 %tobool.not, %tobool21.not.i
  br i1 %or.cond39.i, label %if.end19.i.if.end25.i_crit_edge, label %if.then24.i

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_forget_acl(ptr noundef %inode, ptr noundef %call) #13
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %if.end19.i.if.end25.i_crit_edge
  %value26.i = getelementptr inbounds %struct.xfs_da_args, ptr %args.i30, i32 0, i32 4
  %40 = ptrtoint ptr %value26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value26.i, align 8
  call void @kfree(ptr noundef %41) #13
  br label %xfs_attrmulti_attr_set.exit

xfs_attrmulti_attr_set.exit:                      ; preds = %if.end25.i, %if.then15.i, %if.then9.i.xfs_attrmulti_attr_set.exit_crit_edge, %if.end13.xfs_attrmulti_attr_set.exit_crit_edge
  %retval.0.i46 = phi i32 [ %38, %if.then15.i ], [ %call20.i, %if.end25.i ], [ -1, %if.end13.xfs_attrmulti_attr_set.exit_crit_edge ], [ -22, %if.then9.i.xfs_attrmulti_attr_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %args.i30) #13
  call void @mnt_drop_write_file(ptr noundef %parfilp) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %xfs_attrmulti_attr_set.exit, %sw.bb9.sw.epilog_crit_edge, %xfs_attrmulti_attr_get.exit, %if.end6.sw.epilog_crit_edge
  %error.0 = phi i32 [ %call10, %sw.bb9.sw.epilog_crit_edge ], [ %retval.0.i46, %xfs_attrmulti_attr_set.exit ], [ %retval.0.i, %xfs_attrmulti_attr_get.exit ], [ -22, %if.end6.sw.epilog_crit_edge ]
  call void @kfree(ptr noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %error.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_fsbulkstat_one_fmt(ptr nocapture noundef %breq, ptr noundef %bstat) #0 align 64 {
entry:
  %bs1 = alloca %struct.xfs_bstat, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %bs1) #13
  %0 = call ptr @memset(ptr %bs1, i32 255, i32 112)
  %1 = ptrtoint ptr %breq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %breq, align 8
  call void @xfs_bulkstat_to_bstat(ptr noundef %2, ptr noundef nonnull %bs1, ptr noundef %bstat) #13
  %ubuffer = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 2
  %3 = ptrtoint ptr %ubuffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ubuffer, align 8
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %5 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 112, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bs1, i32 noundef 112) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %bs1, i32 noundef 112) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %if.end, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %ubuffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ubuffer, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 112
  store ptr %add.ptr.i, ptr %ubuffer, align 8
  %ocount.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 5
  %8 = ptrtoint ptr %ocount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ocount.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %ocount.i, align 4
  %icount.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 4
  %10 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %icount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %11)
  %cmp.i = icmp eq i32 %inc.i, %11
  %cond.i = select i1 %cmp.i, i32 -125, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i, %if.end ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %bs1) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bulkstat_to_bstat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_fsinumbers_fmt(ptr nocapture noundef %breq, ptr noundef %igrp) #0 align 64 {
entry:
  %ig1 = alloca %struct.xfs_inogrp, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ig1) #13
  %0 = call ptr @memset(ptr %ig1, i32 255, i32 24)
  call void @xfs_inumbers_to_inogrp(ptr noundef nonnull %ig1, ptr noundef %igrp) #13
  %ubuffer = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 2
  %1 = ptrtoint ptr %ubuffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ubuffer, align 8
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ig1, i32 noundef 24) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %ig1, i32 noundef 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %if.end, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %ubuffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ubuffer, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  store ptr %add.ptr.i, ptr %ubuffer, align 8
  %ocount.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 5
  %6 = ptrtoint ptr %ocount.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ocount.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %ocount.i, align 4
  %icount.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 4
  %8 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %icount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %9)
  %cmp.i = icmp eq i32 %inc.i, %9
  %cond.i = select i1 %cmp.i, i32 -125, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i, %if.end ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %entry.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ig1) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inumbers_to_inogrp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_fileattr_get(ptr nocapture noundef readonly %dentry, ptr noundef %fa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %1, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242880, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 5242880
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -312
  tail call void @xfs_ilock(ptr noundef %add.ptr.i, i32 noundef 8) #13
  tail call fastcc void @xfs_fill_fsxattr(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef %fa)
  tail call void @xfs_iunlock(ptr noundef %add.ptr.i, i32 noundef 8) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_fill_fsxattr(ptr noundef %ip, i32 noundef %whichfork, ptr noundef %fa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  br i1 %cmp, label %cond.true, label %cond.true2

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end4

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  br label %cond.end4

cond.end4:                                        ; preds = %cond.true2, %cond.true
  %cond5 = phi ptr [ %i_df, %cond.true ], [ %3, %cond.true2 ]
  %call = tail call i32 @xfs_ip2xflags(ptr noundef %ip) #13
  tail call void @fileattr_fill_xflags(ptr noundef %fa, i32 noundef %call) #13
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %4 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_diflags, align 2
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #15
  %i_extsize = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %6 = ptrtoint ptr %i_extsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_extsize, align 4
  %conv6 = zext i32 %7 to i64
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %9 to i64
  %shl = shl i64 %conv6, %sh_prom
  %conv8 = trunc i64 %shl to i32
  br label %if.end36.sink.split

if.else:                                          ; preds = %cond.end4
  %and11 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else.if.end36_crit_edge, label %if.then13

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then13:                                        ; preds = %if.else
  %and16 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then13.if.else25_crit_edge, label %land.lhs.true

if.then13.if.else25_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else25

land.lhs.true:                                    ; preds = %if.then13
  %i_extsize18 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %10 = ptrtoint ptr %i_extsize18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_extsize18, align 4
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_rextsize, align 16
  %rem = urem i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp20.not = icmp eq i32 %rem, 0
  br i1 %cmp20.not, label %land.lhs.true.if.else25_crit_edge, label %if.then22

land.lhs.true.if.else25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else25

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %fsx_xflags = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %14 = ptrtoint ptr %fsx_xflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsx_xflags, align 4
  %and23 = and i32 %15, -6145
  store i32 %and23, ptr %fsx_xflags, align 4
  br label %if.end36.sink.split

if.else25:                                        ; preds = %land.lhs.true.if.else25_crit_edge, %if.then13.if.else25_crit_edge
  %i_extsize26 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %16 = ptrtoint ptr %i_extsize26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_extsize26, align 4
  %conv27 = zext i32 %17 to i64
  %sb_blocklog29 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %sb_blocklog29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sb_blocklog29, align 8
  %sh_prom31 = zext i8 %19 to i64
  %shl32 = shl i64 %conv27, %sh_prom31
  %conv33 = trunc i64 %shl32 to i32
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.else25, %if.then22, %if.then
  %conv33.sink = phi i32 [ %conv33, %if.else25 ], [ 0, %if.then22 ], [ %conv8, %if.then ]
  %fsx_extsize34 = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %20 = ptrtoint ptr %fsx_extsize34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv33.sink, ptr %fsx_extsize34, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.else.if.end36_crit_edge
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %21 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_diflags2, align 8
  %and37 = and i64 %22, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37)
  %tobool38.not = icmp eq i64 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end47_crit_edge, label %if.then39

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %23 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 22
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %conv40 = zext i32 %25 to i64
  %sb_blocklog42 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %26 = ptrtoint ptr %sb_blocklog42 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sb_blocklog42, align 8
  %sh_prom44 = zext i8 %27 to i64
  %shl45 = shl i64 %conv40, %sh_prom44
  %conv46 = trunc i64 %shl45 to i32
  %fsx_cowextsize = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %28 = ptrtoint ptr %fsx_cowextsize to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv46, ptr %fsx_cowextsize, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.end36.if.end47_crit_edge
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %29 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i_projid, align 8
  %fsx_projid = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %31 = ptrtoint ptr %fsx_projid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %fsx_projid, align 4
  %tobool48.not = icmp eq ptr %cond5, null
  br i1 %tobool48.not, label %if.end47.if.end56_crit_edge, label %land.lhs.true49

if.end47.if.end56_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

land.lhs.true49:                                  ; preds = %if.end47
  %if_format.i = getelementptr inbounds %struct.xfs_ifork, ptr %cond5, i32 0, i32 6
  %32 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp.i = icmp eq i8 %33, 3
  br i1 %cmp.i, label %xfs_need_iread_extents.exit, label %land.lhs.true49.if.then51_crit_edge

land.lhs.true49.if.then51_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

xfs_need_iread_extents.exit:                      ; preds = %land.lhs.true49
  %if_height.i = getelementptr inbounds %struct.xfs_ifork, ptr %cond5, i32 0, i32 3
  %34 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp2.i = icmp eq i32 %35, 0
  br i1 %cmp2.i, label %if.end.i, label %xfs_need_iread_extents.exit.if.then51_crit_edge

xfs_need_iread_extents.exit.if.then51_crit_edge:  ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then51

if.then51:                                        ; preds = %xfs_need_iread_extents.exit.if.then51_crit_edge, %land.lhs.true49.if.then51_crit_edge
  %call52 = tail call i32 @xfs_iext_count(ptr noundef nonnull %cond5) #13
  br label %if.end56

if.end.i:                                         ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #15
  %if_nextents.i = getelementptr inbounds %struct.xfs_ifork, ptr %cond5, i32 0, i32 7
  %36 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %if_nextents.i, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end.i, %if.then51, %if.end47.if.end56_crit_edge
  %retval.0.i.sink = phi i32 [ %call52, %if.then51 ], [ %37, %if.end.i ], [ 0, %if.end47.if.end56_crit_edge ]
  %fsx_nextents55 = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 3
  %38 = ptrtoint ptr %fsx_nextents55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i.sink, ptr %fsx_nextents55, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_fileattr_set(ptr noundef %mnt_userns, ptr nocapture noundef readonly %dentry, ptr nocapture noundef readonly %fa) local_unnamed_addr #0 align 64 {
entry:
  %tp.i = alloca ptr, align 4
  %pdqp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdqp) #13
  %4 = ptrtoint ptr %pdqp to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pdqp, align 4
  tail call fastcc void @trace_xfs_ioctl_setattr(ptr noundef %add.ptr.i)
  %5 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dentry, align 8
  %and.i.i = and i32 %6, 7340032
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242880, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 5242880
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %fsx_valid = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %7 = ptrtoint ptr %fsx_valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %fsx_valid, align 4
  %8 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %bf.cast.not = icmp eq i8 %8, 0
  br i1 %bf.cast.not, label %if.then3, label %if.end.i

if.then3:                                         ; preds = %if.end
  %9 = ptrtoint ptr %fa to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fa, align 4
  %and = and i32 %10, -570425593
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3.if.end26_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then3.if.end26_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end.i:                                         ; preds = %if.end
  %fsx_projid.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %11 = ptrtoint ptr %fsx_projid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fsx_projid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %12)
  %cmp.i167 = icmp ugt i32 %12, 65535
  br i1 %cmp.i167, label %land.lhs.true.i, label %if.end.i.land.lhs.true_crit_edge

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %if.end.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %14, i32 0, i32 61
  %15 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_features.i.i, align 8
  %and.i.i168 = and i64 %16, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i168)
  %tobool.i.not.i = icmp eq i64 %and.i.i168, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.land.lhs.true_crit_edge

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %land.lhs.true.i.land.lhs.true_crit_edge, %if.end.i.land.lhs.true_crit_edge
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 60
  %17 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_qflags, align 4
  %and16 = and i32 %18, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end26_crit_edge, label %if.then18

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then18:                                        ; preds = %land.lhs.true
  %i_uid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %i_gid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %fsx_projid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fsx_projid.i, align 4
  %21 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %i_uid, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %23 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack166 = load i32, ptr %i_gid, align 8
  %24 = insertvalue [1 x i32] undef, i32 %.unpack166, 0
  %call22 = call i32 @xfs_qm_vop_dqalloc(ptr noundef %add.ptr.i, [1 x i32] %22, [1 x i32] %24, i32 noundef %20, i32 noundef 8, ptr noundef null, ptr noundef null, ptr noundef nonnull %pdqp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then18.if.end26_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end26:                                         ; preds = %if.then18.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.then3.if.end26_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %1, align 8
  %27 = and i16 %26, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %27)
  %cmp.i170 = icmp eq i16 %27, 16384
  br i1 %cmp.i170, label %if.end26.xfs_ioctl_setattr_prepare_dax.exit_crit_edge, label %if.end.i172

if.end26.xfs_ioctl_setattr_prepare_dax.exit_crit_edge: ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_ioctl_setattr_prepare_dax.exit

if.end.i172:                                      ; preds = %if.end26
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %m_features.i.i171 = getelementptr inbounds %struct.xfs_mount, ptr %29, i32 0, i32 61
  %30 = ptrtoint ptr %m_features.i.i171 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %m_features.i.i171, align 8
  %32 = and i64 %31, 3458764513820540928
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %.not.i = icmp eq i64 %32, 0
  br i1 %.not.i, label %if.end7.i, label %if.end.i172.xfs_ioctl_setattr_prepare_dax.exit_crit_edge

if.end.i172.xfs_ioctl_setattr_prepare_dax.exit_crit_edge: ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_ioctl_setattr_prepare_dax.exit

if.end7.i:                                        ; preds = %if.end.i172
  %fsx_xflags.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %33 = ptrtoint ptr %fsx_xflags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fsx_xflags.i, align 4
  %and8.i = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i = icmp eq i32 %and8.i, 0
  %i_diflags216.i = getelementptr i8, ptr %1, i32 -24
  %35 = ptrtoint ptr %i_diflags216.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_diflags216.i, align 8
  %and17.i = and i64 %36, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17.i)
  %tobool18.not.i = icmp eq i64 %and17.i, 0
  br i1 %tobool.not.i, label %land.lhs.true15.i, label %land.lhs.true.i173

land.lhs.true.i173:                               ; preds = %if.end7.i
  br i1 %tobool18.not.i, label %land.lhs.true.i173.if.then19.i_crit_edge, label %land.lhs.true.i173.xfs_ioctl_setattr_prepare_dax.exit_crit_edge

land.lhs.true.i173.xfs_ioctl_setattr_prepare_dax.exit_crit_edge: ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_ioctl_setattr_prepare_dax.exit

land.lhs.true.i173.if.then19.i_crit_edge:         ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19.i

land.lhs.true15.i:                                ; preds = %if.end7.i
  br i1 %tobool18.not.i, label %land.lhs.true15.i.xfs_ioctl_setattr_prepare_dax.exit_crit_edge, label %land.lhs.true15.i.if.then19.i_crit_edge

land.lhs.true15.i.if.then19.i_crit_edge:          ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then19.i

land.lhs.true15.i.xfs_ioctl_setattr_prepare_dax.exit_crit_edge: ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_ioctl_setattr_prepare_dax.exit

if.then19.i:                                      ; preds = %land.lhs.true15.i.if.then19.i_crit_edge, %land.lhs.true.i173.if.then19.i_crit_edge
  call void @d_mark_dontcache(ptr noundef %1) #13
  br label %xfs_ioctl_setattr_prepare_dax.exit

xfs_ioctl_setattr_prepare_dax.exit:               ; preds = %if.then19.i, %land.lhs.true15.i.xfs_ioctl_setattr_prepare_dax.exit_crit_edge, %land.lhs.true.i173.xfs_ioctl_setattr_prepare_dax.exit_crit_edge, %if.end.i172.xfs_ioctl_setattr_prepare_dax.exit_crit_edge, %if.end26.xfs_ioctl_setattr_prepare_dax.exit_crit_edge
  %37 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdqp, align 4
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp.i) #13
  %41 = ptrtoint ptr %tp.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp.i, align 4, !annotation !70
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %40, i32 0, i32 66
  %42 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %m_opstate.i.i, align 4
  %44 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.not.i174 = icmp eq i32 %44, 0
  br i1 %tobool.i.not.i174, label %if.end.i175, label %xfs_ioctl_setattr_prepare_dax.exit.out_error.i_crit_edge

xfs_ioctl_setattr_prepare_dax.exit.out_error.i_crit_edge: ; preds = %xfs_ioctl_setattr_prepare_dax.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_error.i

if.end.i175:                                      ; preds = %xfs_ioctl_setattr_prepare_dax.exit
  %45 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %m_opstate.i.i, align 4
  %47 = and i32 %46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i19.not.i = icmp eq i32 %47, 0
  br i1 %tobool.i19.not.i, label %if.end3.i, label %if.end.i175.out_error.i_crit_edge

if.end.i175.out_error.i_crit_edge:                ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_error.i

if.end3.i:                                        ; preds = %if.end.i175
  %call4.i = call zeroext i1 @capable(i32 noundef 3) #13
  %call5.i = call i32 @xfs_trans_alloc_ichange(ptr noundef %add.ptr.i, ptr noundef null, ptr noundef null, ptr noundef %38, i1 noundef zeroext %call4.i, ptr noundef nonnull %tp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i176 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i176, label %if.end7.i179, label %if.end3.i.out_error.i_crit_edge

if.end3.i.out_error.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_error.i

if.end7.i179:                                     ; preds = %if.end3.i
  %m_features.i.i177 = getelementptr inbounds %struct.xfs_mount, ptr %40, i32 0, i32 61
  %48 = ptrtoint ptr %m_features.i.i177 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %m_features.i.i177, align 8
  %and.i.i178 = and i64 %49, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i178)
  %tobool.i20.not.i = icmp eq i64 %and.i.i178, 0
  br i1 %tobool.i20.not.i, label %if.end7.i179.if.end10.i_crit_edge, label %if.then9.i

if.end7.i179.if.end10.i_crit_edge:                ; preds = %if.end7.i179
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end7.i179
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tp.i, align 4
  %t_flags.i = getelementptr inbounds %struct.xfs_trans, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %t_flags.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %t_flags.i, align 4
  %or.i = or i32 %53, 8
  store i32 %or.i, ptr %t_flags.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end7.i179.if.end10.i_crit_edge
  %54 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tp.i, align 4
  br label %xfs_ioctl_setattr_get_trans.exit

out_error.i:                                      ; preds = %if.end3.i.out_error.i_crit_edge, %if.end.i175.out_error.i_crit_edge, %xfs_ioctl_setattr_prepare_dax.exit.out_error.i_crit_edge
  %error.0.i = phi i32 [ -30, %xfs_ioctl_setattr_prepare_dax.exit.out_error.i_crit_edge ], [ -5, %if.end.i175.out_error.i_crit_edge ], [ %call5.i, %if.end3.i.out_error.i_crit_edge ]
  %56 = inttoptr i32 %error.0.i to ptr
  br label %xfs_ioctl_setattr_get_trans.exit

xfs_ioctl_setattr_get_trans.exit:                 ; preds = %out_error.i, %if.end10.i
  %retval.0.i180 = phi ptr [ %56, %out_error.i ], [ %55, %if.end10.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i) #13
  %cmp.i181 = icmp ugt ptr %retval.0.i180, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then29, label %if.end31

if.then29:                                        ; preds = %xfs_ioctl_setattr_get_trans.exit
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %retval.0.i180 to i32
  br label %cleanup.sink.split

if.end31:                                         ; preds = %xfs_ioctl_setattr_get_trans.exit
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 8
  %60 = ptrtoint ptr %fsx_valid to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i183 = load i8, ptr %fsx_valid, align 4
  %61 = and i8 %bf.load.i183, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %bf.cast.not.i184 = icmp eq i8 %61, 0
  br i1 %bf.cast.not.i184, label %if.end31.if.end35_crit_edge, label %if.end.i187

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end.i187:                                      ; preds = %if.end31
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %1, align 8
  %64 = and i16 %63, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %64)
  %cmp.i186 = icmp eq i16 %64, -32768
  br i1 %cmp.i186, label %land.lhs.true.i189, label %if.end.i187.if.end9.i_crit_edge

if.end.i187.if.end9.i_crit_edge:                  ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

land.lhs.true.i189:                               ; preds = %if.end.i187
  %if_nextents.i = getelementptr i8, ptr %1, i32 -236
  %65 = ptrtoint ptr %if_nextents.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %if_nextents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i188 = icmp eq i32 %66, 0
  br i1 %tobool.not.i188, label %land.lhs.true.i189.if.end9.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i189.if.end9.i_crit_edge:           ; preds = %land.lhs.true.i189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i189
  %i_extsize.i = getelementptr i8, ptr %1, i32 -36
  %67 = ptrtoint ptr %i_extsize.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %i_extsize.i, align 4
  %conv3.i = zext i32 %68 to i64
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_sb, ptr %59, i32 0, i32 20
  %69 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sb_blocklog.i, align 8
  %sh_prom.i = zext i8 %70 to i64
  %shl.i = shl i64 %conv3.i, %sh_prom.i
  %fsx_extsize.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %71 = ptrtoint ptr %fsx_extsize.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fsx_extsize.i, align 4
  %conv5.i = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i, i64 %conv5.i)
  %cmp6.not.i = icmp eq i64 %shl.i, %conv5.i
  br i1 %cmp6.not.i, label %land.lhs.true2.i.if.end9.i_crit_edge, label %land.lhs.true2.i.error_trans_cancel_crit_edge

land.lhs.true2.i.error_trans_cancel_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_trans_cancel

land.lhs.true2.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9.i

if.end9.i:                                        ; preds = %land.lhs.true2.i.if.end9.i_crit_edge, %land.lhs.true.i189.if.end9.i_crit_edge, %if.end.i187.if.end9.i_crit_edge
  %fsx_extsize10.i = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %73 = ptrtoint ptr %fsx_extsize10.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fsx_extsize10.i, align 4
  %m_blockmask.i = getelementptr inbounds %struct.xfs_mount, ptr %59, i32 0, i32 31
  %75 = ptrtoint ptr %m_blockmask.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %m_blockmask.i, align 8
  %and11.i = and i32 %76, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.error_trans_cancel_crit_edge

if.end9.i.error_trans_cancel_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_trans_cancel

if.end14.i:                                       ; preds = %if.end9.i
  %fsx_xflags.i190 = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %77 = ptrtoint ptr %fsx_xflags.i190 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %fsx_xflags.i190, align 4
  %call15.i = call fastcc zeroext i16 @xfs_flags2diflags(ptr noundef %add.ptr.i, i32 noundef %78) #13
  %79 = and i16 %call15.i, 4352
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %79)
  %.not.i191 = icmp eq i16 %79, 4352
  br i1 %.not.i191, label %if.then23.i, label %if.end14.i.if.end36.i_crit_edge

if.end14.i.if.end36.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i

if.then23.i:                                      ; preds = %if.end14.i
  %sb_rextsize.i = getelementptr inbounds %struct.xfs_sb, ptr %59, i32 0, i32 10
  %80 = ptrtoint ptr %sb_rextsize.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sb_rextsize.i, align 16
  %conv25.i = zext i32 %81 to i64
  %sb_blocklog27.i = getelementptr inbounds %struct.xfs_sb, ptr %59, i32 0, i32 20
  %82 = ptrtoint ptr %sb_blocklog27.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sb_blocklog27.i, align 8
  %sh_prom29.i = zext i8 %83 to i64
  %shl30.i = shl i64 %conv25.i, %sh_prom29.i
  %conv31.i = trunc i64 %shl30.i to i32
  %rem.i = urem i32 %74, %conv31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool33.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool33.not.i, label %if.then23.i.if.end36.i_crit_edge, label %if.then23.i.error_trans_cancel_crit_edge

if.then23.i.error_trans_cancel_crit_edge:         ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_trans_cancel

if.then23.i.if.end36.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then23.i.if.end36.i_crit_edge, %if.end14.i.if.end36.i_crit_edge
  %conv39.i = zext i32 %74 to i64
  %conv41.i = zext i32 %76 to i64
  %add.i = add nuw nsw i64 %conv41.i, %conv39.i
  %sb_blocklog43.i = getelementptr inbounds %struct.xfs_sb, ptr %59, i32 0, i32 20
  %84 = ptrtoint ptr %sb_blocklog43.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %sb_blocklog43.i, align 8
  %sh_prom45.i = zext i8 %85 to i64
  %shr.i = lshr i64 %add.i, %sh_prom45.i
  %conv46.i = trunc i64 %shr.i to i32
  %call49.i = call ptr @xfs_inode_validate_extsize(ptr noundef %59, i32 noundef %conv46.i, i16 noundef zeroext %63, i16 noundef zeroext %call15.i) #13
  %cmp50.not.i = icmp eq ptr %call49.i, null
  br i1 %cmp50.not.i, label %if.end36.i.if.end35_crit_edge, label %if.end36.i.error_trans_cancel_crit_edge

if.end36.i.error_trans_cancel_crit_edge:          ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_trans_cancel

if.end36.i.if.end35_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end35

if.end35:                                         ; preds = %if.end36.i.if.end35_crit_edge, %if.end31.if.end35_crit_edge
  %call36 = call fastcc i32 @xfs_ioctl_setattr_check_cowextsize(ptr noundef %add.ptr.i, ptr noundef %fa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.error_trans_cancel_crit_edge

if.end35.error_trans_cancel_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_trans_cancel

if.end39:                                         ; preds = %if.end35
  %call40 = call fastcc i32 @xfs_ioctl_setattr_xflags(ptr noundef %retval.0.i180, ptr noundef %add.ptr.i, ptr noundef %fa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.error_trans_cancel_crit_edge

if.end39.error_trans_cancel_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %error_trans_cancel

if.end43:                                         ; preds = %if.end39
  %86 = ptrtoint ptr %fsx_valid to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load45 = load i8, ptr %fsx_valid, align 4
  %87 = and i8 %bf.load45, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %bf.cast48.not = icmp eq i8 %87, 0
  br i1 %bf.cast48.not, label %if.end43.skip_xattr_crit_edge, label %if.end50

if.end43.skip_xattr_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_xattr

if.end50:                                         ; preds = %if.end43
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %1, align 8
  %90 = and i16 %89, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool53.not = icmp eq i16 %90, 0
  br i1 %tobool53.not, label %if.end50.if.end63_crit_edge, label %land.lhs.true54

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

land.lhs.true54:                                  ; preds = %if.end50
  %call56 = call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %mnt_userns, ptr noundef %1, i32 noundef 4) #13
  br i1 %call56, label %land.lhs.true54.if.end63_crit_edge, label %if.then57

land.lhs.true54.if.end63_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

if.then57:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %1, align 8
  %93 = and i16 %92, -3073
  store i16 %93, ptr %1, align 8
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %land.lhs.true54.if.end63_crit_edge, %if.end50.if.end63_crit_edge
  %i_projid = getelementptr i8, ptr %1, i32 -40
  %94 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %i_projid, align 8
  %fsx_projid64 = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 4
  %96 = ptrtoint ptr %fsx_projid64 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fsx_projid64, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp.not = icmp eq i32 %95, %97
  br i1 %cmp.not, label %if.end63.if.end75_crit_edge, label %if.then66

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then66:                                        ; preds = %if.end63
  %m_qflags67 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 60
  %98 = ptrtoint ptr %m_qflags67 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %m_qflags67, align 4
  %and68 = and i32 %99, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.then66.if.end72_crit_edge, label %if.then70

if.then66.if.end72_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.then70:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #15
  %i_pdquot = getelementptr i8, ptr %1, i32 -300
  %100 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdqp, align 4
  %call71 = call ptr @xfs_qm_vop_chown(ptr noundef %retval.0.i180, ptr noundef %add.ptr.i, ptr noundef %i_pdquot, ptr noundef %101) #13
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.then66.if.end72_crit_edge
  %olddquot.0 = phi ptr [ %call71, %if.then70 ], [ null, %if.then66.if.end72_crit_edge ]
  %102 = ptrtoint ptr %fsx_projid64 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fsx_projid64, align 4
  %104 = ptrtoint ptr %i_projid to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %i_projid, align 8
  br label %if.end75

if.end75:                                         ; preds = %if.end72, %if.end63.if.end75_crit_edge
  %olddquot.1 = phi ptr [ %olddquot.0, %if.end72 ], [ null, %if.end63.if.end75_crit_edge ]
  %i_diflags = getelementptr i8, ptr %1, i32 -26
  %105 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %i_diflags, align 2
  %107 = and i16 %106, 6144
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %107)
  %tobool78.not = icmp eq i16 %107, 0
  br i1 %tobool78.not, label %if.end75.if.end85_crit_edge, label %if.then79

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  %fsx_extsize = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 2
  %108 = ptrtoint ptr %fsx_extsize to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %fsx_extsize, align 4
  %conv80 = zext i32 %109 to i64
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 31
  %110 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %m_blockmask, align 8
  %conv81 = zext i32 %111 to i64
  %add = add nuw nsw i64 %conv81, %conv80
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 20
  %112 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %113 to i64
  %shr = lshr i64 %add, %sh_prom
  %conv83 = trunc i64 %shr to i32
  br label %if.end85

if.end85:                                         ; preds = %if.then79, %if.end75.if.end85_crit_edge
  %conv83.sink = phi i32 [ %conv83, %if.then79 ], [ 0, %if.end75.if.end85_crit_edge ]
  %114 = getelementptr i8, ptr %1, i32 -36
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv83.sink, ptr %114, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 61
  %116 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %117, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end85.skip_xattr_crit_edge, label %if.then87

if.end85.skip_xattr_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_xattr

if.then87:                                        ; preds = %if.end85
  %i_diflags2 = getelementptr i8, ptr %1, i32 -24
  %118 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %i_diflags2, align 8
  %and88 = and i64 %119, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and88)
  %tobool89.not = icmp eq i64 %and88, 0
  br i1 %tobool89.not, label %if.then87.skip_xattr.sink.split_crit_edge, label %if.then90

if.then87.skip_xattr.sink.split_crit_edge:        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #15
  br label %skip_xattr.sink.split

if.then90:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #15
  %fsx_cowextsize = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %120 = ptrtoint ptr %fsx_cowextsize to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %fsx_cowextsize, align 4
  %conv91 = zext i32 %121 to i64
  %m_blockmask92 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 31
  %122 = ptrtoint ptr %m_blockmask92 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %m_blockmask92, align 8
  %conv93 = zext i32 %123 to i64
  %add94 = add nuw nsw i64 %conv93, %conv91
  %sb_blocklog96 = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 20
  %124 = ptrtoint ptr %sb_blocklog96 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %sb_blocklog96, align 8
  %sh_prom98 = zext i8 %125 to i64
  %shr99 = lshr i64 %add94, %sh_prom98
  %conv100 = trunc i64 %shr99 to i32
  br label %skip_xattr.sink.split

skip_xattr.sink.split:                            ; preds = %if.then90, %if.then87.skip_xattr.sink.split_crit_edge
  %.sink = phi i32 [ %conv100, %if.then90 ], [ 0, %if.then87.skip_xattr.sink.split_crit_edge ]
  %126 = getelementptr i8, ptr %1, i32 -32
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %.sink, ptr %126, align 8
  br label %skip_xattr

skip_xattr:                                       ; preds = %skip_xattr.sink.split, %if.end85.skip_xattr_crit_edge, %if.end43.skip_xattr_crit_edge
  %olddquot.2 = phi ptr [ %olddquot.1, %if.end85.skip_xattr_crit_edge ], [ null, %if.end43.skip_xattr_crit_edge ], [ %olddquot.1, %skip_xattr.sink.split ]
  %call104 = call i32 @xfs_trans_commit(ptr noundef %retval.0.i180) #13
  call void @xfs_qm_dqrele(ptr noundef %olddquot.2) #13
  br label %cleanup.sink.split

error_trans_cancel:                               ; preds = %if.end39.error_trans_cancel_crit_edge, %if.end35.error_trans_cancel_crit_edge, %if.end36.i.error_trans_cancel_crit_edge, %if.then23.i.error_trans_cancel_crit_edge, %if.end9.i.error_trans_cancel_crit_edge, %land.lhs.true2.i.error_trans_cancel_crit_edge
  %error.0 = phi i32 [ %call36, %if.end35.error_trans_cancel_crit_edge ], [ %call40, %if.end39.error_trans_cancel_crit_edge ], [ -22, %if.end36.i.error_trans_cancel_crit_edge ], [ -22, %if.then23.i.error_trans_cancel_crit_edge ], [ -22, %land.lhs.true2.i.error_trans_cancel_crit_edge ], [ -22, %if.end9.i.error_trans_cancel_crit_edge ]
  call void @xfs_trans_cancel(ptr noundef %retval.0.i180) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %error_trans_cancel, %skip_xattr, %if.then29
  %retval.0.ph = phi i32 [ %call104, %skip_xattr ], [ %57, %if.then29 ], [ %error.0, %error_trans_cancel ]
  %128 = ptrtoint ptr %pdqp to i32
  call void @__asan_load4_noabort(i32 %128)
  %.sink200 = load ptr, ptr %pdqp, align 4
  call void @xfs_qm_dqrele(ptr noundef %.sink200) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then18.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -95, %if.then3.cleanup_crit_edge ], [ %call22, %if.then18.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdqp) #13
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_ioctl_setattr(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ioctl_setattr, i32 0, i32 1), ptr blockaddress(@trace_xfs_ioctl_setattr, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !82
  %call42 = tail call i32 @__traceiter_xfs_ioctl_setattr(ptr noundef null, ptr noundef %ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !83
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ioctl_setattr, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ioctl_setattr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ioctl_setattr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_ioctl_setattr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 768, ptr noundef nonnull @.str.12) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
declare dso_local i32 @xfs_qm_vop_dqalloc(ptr noundef, [1 x i32], [1 x i32], i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioctl_setattr_check_cowextsize(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %fa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %fsx_valid = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 6
  %2 = ptrtoint ptr %fsx_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %fsx_valid, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %fsx_cowextsize = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 5
  %4 = ptrtoint ptr %fsx_cowextsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fsx_cowextsize, align 4
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_blockmask, align 8
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %fsx_xflags = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %8 = ptrtoint ptr %fsx_xflags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fsx_xflags, align 4
  %call = tail call fastcc zeroext i16 @xfs_flags2diflags(ptr noundef %ip, i32 noundef %9)
  %call4 = tail call fastcc i64 @xfs_flags2diflags2(ptr noundef %ip, i32 noundef %9)
  %conv = zext i32 %5 to i64
  %conv8 = zext i32 %7 to i64
  %add = add nuw nsw i64 %conv8, %conv
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %11 to i64
  %shr = lshr i64 %add, %sh_prom
  %conv10 = trunc i64 %shr to i32
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %12 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %i_vnode.i, align 8
  %call12 = tail call ptr @xfs_inode_validate_cowextsize(ptr noundef %1, i32 noundef %conv10, i16 noundef zeroext %13, i16 noundef zeroext %call, i64 noundef %call4) #13
  %cmp.not = icmp eq ptr %call12, null
  %cond = select i1 %cmp.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end2 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioctl_setattr_xflags(ptr noundef %tp, ptr noundef %ip, ptr nocapture noundef readonly %fa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %4 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_delayed_blks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool1.not = icmp eq i64 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %6 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_diflags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %land.lhs.true.land.end_crit_edge, label %land.rhs

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool4 = icmp ne ptr %10, null
  %phi.cast = zext i1 %tobool4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge
  %11 = phi i32 [ 0, %land.lhs.true.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %fsx_xflags = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %12 = ptrtoint ptr %fsx_xflags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fsx_xflags, align 4
  %and5 = and i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and5)
  %cmp.not = icmp eq i32 %11, %and5
  br i1 %cmp.not, label %land.end.if.end_crit_edge, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.end.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %fsx_xflags7 = getelementptr inbounds %struct.fileattr, ptr %fa, i32 0, i32 1
  %14 = ptrtoint ptr %fsx_xflags7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fsx_xflags7, align 4
  %and8 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end31_crit_edge, label %if.then10

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then10:                                        ; preds = %if.end
  %sb_rblocks = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %sb_rblocks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %sb_rblocks, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp11 = icmp eq i64 %17, 0
  br i1 %cmp11, label %if.then10.cleanup_crit_edge, label %lor.lhs.false13

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false13:                                  ; preds = %if.then10
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sb_rextsize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp15 = icmp eq i32 %19, 0
  br i1 %cmp15, label %lor.lhs.false13.cleanup_crit_edge, label %lor.lhs.false17

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false13
  %i_extsize = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 21
  %20 = ptrtoint ptr %i_extsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_extsize, align 4
  %rem = urem i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool20.not = icmp eq i32 %rem, 0
  br i1 %tobool20.not, label %land.lhs.true27, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true27:                                  ; preds = %lor.lhs.false17
  %i_diflags2.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %22 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_diflags2.i, align 8
  %and.i = and i64 %23, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true27.if.end31_crit_edge, label %if.then29

land.lhs.true27.if.end31_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #15
  %and30 = and i64 %23, -3
  %24 = ptrtoint ptr %i_diflags2.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %and30, ptr %i_diflags2.i, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %land.lhs.true27.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %25 = ptrtoint ptr %fsx_xflags7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fsx_xflags7, align 4
  %and33 = and i32 %26, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end39_crit_edge, label %land.lhs.true35

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true35:                                  ; preds = %if.end31
  %i_diflags2.i96 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %27 = ptrtoint ptr %i_diflags2.i96 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_diflags2.i96, align 8
  %and.i97 = and i64 %28, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i97)
  %tobool.i98.not = icmp eq i64 %and.i97, 0
  br i1 %tobool.i98.not, label %land.lhs.true35.if.end39_crit_edge, label %land.lhs.true35.cleanup_crit_edge

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true35.if.end39_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true35.if.end39_crit_edge, %if.end31.if.end39_crit_edge
  %call41 = tail call fastcc i64 @xfs_flags2diflags2(ptr noundef %ip, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call41)
  %tobool42.not = icmp eq i64 %call41, 0
  br i1 %tobool42.not, label %if.end39.if.end46_crit_edge, label %land.lhs.true43

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

land.lhs.true43:                                  ; preds = %if.end39
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %29 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %m_features.i, align 8
  %and.i99 = and i64 %30, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i99)
  %tobool.i100.not = icmp eq i64 %and.i99, 0
  br i1 %tobool.i100.not, label %land.lhs.true43.cleanup_crit_edge, label %land.lhs.true43.if.end46_crit_edge

land.lhs.true43.if.end46_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true43.if.end46_crit_edge, %if.end39.if.end46_crit_edge
  %call48 = tail call fastcc zeroext i16 @xfs_flags2diflags(ptr noundef %ip, i32 noundef %26)
  %i_diflags49 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %31 = ptrtoint ptr %i_diflags49 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %call48, ptr %i_diflags49, align 2
  %i_diflags250 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %32 = ptrtoint ptr %i_diflags250 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %call41, ptr %i_diflags250, align 8
  tail call void @xfs_diflags_to_iflags(ptr noundef %ip, i1 noundef zeroext false) #13
  tail call void @xfs_trans_ichgtime(ptr noundef %tp, ptr noundef %ip, i32 noundef 2) #13
  tail call void @xfs_trans_log_inode(ptr noundef %tp, ptr noundef %ip, i32 noundef 1) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfsstats to i32))
  %33 = load ptr, ptr @xfsstats, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i101 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i101 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  %add = add i32 %40, %34
  %41 = inttoptr i32 %add to ptr
  %xs_ig_attrchg = getelementptr inbounds %struct.__xfsstats, ptr %41, i32 0, i32 32
  %42 = ptrtoint ptr %xs_ig_attrchg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xs_ig_attrchg, align 8
  %inc = add i32 %43, 1
  store i32 %inc, ptr %xs_ig_attrchg, align 8
  %m_stats = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 92
  %44 = ptrtoint ptr %m_stats to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %m_stats, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = load i32, ptr %cpu, align 4
  %arrayidx63 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx63, align 4
  %add64 = add i32 %49, %46
  %50 = inttoptr i32 %add64 to ptr
  %xs_ig_attrchg65 = getelementptr inbounds %struct.__xfsstats, ptr %50, i32 0, i32 32
  %51 = ptrtoint ptr %xs_ig_attrchg65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %xs_ig_attrchg65, align 8
  %inc66 = add i32 %52, 1
  store i32 %inc66, ptr %xs_ig_attrchg65, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %land.lhs.true43.cleanup_crit_edge, %land.lhs.true35.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -22, %land.end.cleanup_crit_edge ], [ -22, %lor.lhs.false17.cleanup_crit_edge ], [ -22, %lor.lhs.false13.cleanup_crit_edge ], [ -22, %if.then10.cleanup_crit_edge ], [ -22, %land.lhs.true35.cleanup_crit_edge ], [ -22, %land.lhs.true43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_qm_vop_chown(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_dqrele(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_ioc_swapext(ptr noundef %sxp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sx_fdtarget = getelementptr inbounds %struct.xfs_swapext, ptr %sxp, i32 0, i32 1
  %0 = ptrtoint ptr %sx_fdtarget to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sx_fdtarget, align 8
  %conv = trunc i64 %1 to i32
  %call.i = tail call i32 @__fdget(i32 noundef %conv) #13, !noalias !86
  %and.i.i = and i32 %call.i, -4
  %2 = inttoptr i32 %and.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %f_mode = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %f_mode, align 8
  %5 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %.not = icmp eq i32 %5, 3
  br i1 %.not, label %lor.lhs.false8, label %if.end.out_put_file_crit_edge

if.end.out_put_file_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_file

lor.lhs.false8:                                   ; preds = %if.end
  %f_flags = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and10 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false8.out_put_file_crit_edge

lor.lhs.false8.out_put_file_crit_edge:            ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_file

if.end13:                                         ; preds = %lor.lhs.false8
  %sx_fdtmp = getelementptr inbounds %struct.xfs_swapext, ptr %sxp, i32 0, i32 2
  %8 = ptrtoint ptr %sx_fdtmp to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sx_fdtmp, align 8
  %conv15 = trunc i64 %9 to i32
  %call.i99 = tail call i32 @__fdget(i32 noundef %conv15) #13, !noalias !89
  %and.i.i100 = and i32 %call.i99, -4
  %10 = inttoptr i32 %and.i.i100 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i100)
  %tobool17.not = icmp eq i32 %and.i.i100, 0
  br i1 %tobool17.not, label %if.end13.out_put_file_crit_edge, label %if.end19

if.end13.out_put_file_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_file

if.end19:                                         ; preds = %if.end13
  %f_mode21 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %f_mode21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_mode21, align 8
  %13 = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %.not111 = icmp eq i32 %13, 3
  br i1 %.not111, label %lor.lhs.false29, label %if.end19.out_put_tmp_file_crit_edge

if.end19.out_put_tmp_file_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_tmp_file

lor.lhs.false29:                                  ; preds = %if.end19
  %f_flags31 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 7
  %14 = ptrtoint ptr %f_flags31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags31, align 4
  %and32 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end35, label %lor.lhs.false29.out_put_tmp_file_crit_edge

lor.lhs.false29.out_put_tmp_file_crit_edge:       ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_tmp_file

if.end35:                                         ; preds = %lor.lhs.false29
  %f_inode.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %16 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f_inode.i, align 8
  %i_flags = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_flags, align 4
  %and37 = and i32 %19, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %if.end35.out_put_tmp_file_crit_edge

if.end35.out_put_tmp_file_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_tmp_file

lor.lhs.false39:                                  ; preds = %if.end35
  %f_inode.i103 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 2
  %20 = ptrtoint ptr %f_inode.i103 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f_inode.i103, align 8
  %i_flags42 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %i_flags42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i_flags42, align 4
  %and43 = and i32 %23, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end46, label %lor.lhs.false39.out_put_tmp_file_crit_edge

lor.lhs.false39.out_put_tmp_file_crit_edge:       ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_tmp_file

if.end46:                                         ; preds = %lor.lhs.false39
  %f_op = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 3
  %24 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %f_op, align 4
  %cmp.not = icmp eq ptr %25, @xfs_file_operations
  br i1 %cmp.not, label %lor.lhs.false49, label %if.end46.out_put_tmp_file_crit_edge

if.end46.out_put_tmp_file_crit_edge:              ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_tmp_file

lor.lhs.false49:                                  ; preds = %if.end46
  %f_op51 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 3
  %26 = ptrtoint ptr %f_op51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %f_op51, align 4
  %cmp52.not = icmp eq ptr %27, @xfs_file_operations
  br i1 %cmp52.not, label %if.end55, label %lor.lhs.false49.out_put_tmp_file_crit_edge

lor.lhs.false49.out_put_tmp_file_crit_edge:       ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_tmp_file

if.end55:                                         ; preds = %lor.lhs.false49
  %add.ptr.i = getelementptr i8, ptr %17, i32 -312
  %add.ptr.i106 = getelementptr i8, ptr %21, i32 -312
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %30 = ptrtoint ptr %add.ptr.i106 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i106, align 8
  %cmp63.not = icmp eq ptr %29, %31
  br i1 %cmp63.not, label %if.end66, label %if.end55.out_put_tmp_file_crit_edge

if.end55.out_put_tmp_file_crit_edge:              ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_tmp_file

if.end66:                                         ; preds = %if.end55
  %i_ino = getelementptr i8, ptr %17, i32 -296
  %32 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %i_ino, align 8
  %i_ino67 = getelementptr i8, ptr %21, i32 -296
  %34 = ptrtoint ptr %i_ino67 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_ino67, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp68 = icmp eq i64 %33, %35
  br i1 %cmp68, label %if.end66.out_put_tmp_file_crit_edge, label %if.end71

if.end66.out_put_tmp_file_crit_edge:              ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_tmp_file

if.end71:                                         ; preds = %if.end66
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %29, i32 0, i32 66
  %36 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %m_opstate.i, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not = icmp eq i32 %38, 0
  br i1 %tobool.i.not, label %if.end75, label %if.end71.out_put_tmp_file_crit_edge

if.end71.out_put_tmp_file_crit_edge:              ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_tmp_file

if.end75:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  %call76 = tail call i32 @xfs_swap_extents(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i106, ptr noundef %sxp) #13
  br label %out_put_tmp_file

out_put_tmp_file:                                 ; preds = %if.end75, %if.end71.out_put_tmp_file_crit_edge, %if.end66.out_put_tmp_file_crit_edge, %if.end55.out_put_tmp_file_crit_edge, %lor.lhs.false49.out_put_tmp_file_crit_edge, %if.end46.out_put_tmp_file_crit_edge, %lor.lhs.false39.out_put_tmp_file_crit_edge, %if.end35.out_put_tmp_file_crit_edge, %lor.lhs.false29.out_put_tmp_file_crit_edge, %if.end19.out_put_tmp_file_crit_edge
  %error.0 = phi i32 [ %call76, %if.end75 ], [ -9, %lor.lhs.false29.out_put_tmp_file_crit_edge ], [ -9, %if.end19.out_put_tmp_file_crit_edge ], [ -22, %lor.lhs.false39.out_put_tmp_file_crit_edge ], [ -22, %if.end35.out_put_tmp_file_crit_edge ], [ -22, %lor.lhs.false49.out_put_tmp_file_crit_edge ], [ -22, %if.end46.out_put_tmp_file_crit_edge ], [ -22, %if.end55.out_put_tmp_file_crit_edge ], [ -22, %if.end66.out_put_tmp_file_crit_edge ], [ -5, %if.end71.out_put_tmp_file_crit_edge ]
  %and.i = and i32 %call.i99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %out_put_tmp_file.out_put_file_crit_edge, label %if.then.i

out_put_tmp_file.out_put_file_crit_edge:          ; preds = %out_put_tmp_file
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_put_file

if.then.i:                                        ; preds = %out_put_tmp_file
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fput(ptr noundef nonnull %10) #13
  br label %out_put_file

out_put_file:                                     ; preds = %if.then.i, %out_put_tmp_file.out_put_file_crit_edge, %if.end13.out_put_file_crit_edge, %lor.lhs.false8.out_put_file_crit_edge, %if.end.out_put_file_crit_edge
  %error.1 = phi i32 [ -9, %lor.lhs.false8.out_put_file_crit_edge ], [ -9, %if.end.out_put_file_crit_edge ], [ -22, %if.end13.out_put_file_crit_edge ], [ %error.0, %out_put_tmp_file.out_put_file_crit_edge ], [ %error.0, %if.then.i ]
  %and.i107 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool.not.i108 = icmp eq i32 %and.i107, 0
  br i1 %tobool.not.i108, label %out_put_file.out_crit_edge, label %if.then.i109

out_put_file.out_crit_edge:                       ; preds = %out_put_file
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then.i109:                                     ; preds = %out_put_file
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fput(ptr noundef nonnull %2) #13
  br label %out

out:                                              ; preds = %if.then.i109, %out_put_file.out_crit_edge, %entry.out_crit_edge
  %error.2 = phi i32 [ -22, %entry.out_crit_edge ], [ %error.1, %out_put_file.out_crit_edge ], [ %error.1, %if.then.i109 ]
  ret i32 %error.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_swap_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_file_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %label.i610 = alloca [13 x i8], align 1
  %label.i = alloca [13 x i8], align 1
  %da = alloca %struct.dioattr, align 4
  %hreq = alloca %struct.xfs_fsop_handlereq, align 4
  %hreq67 = alloca %struct.xfs_fsop_handlereq, align 4
  %hreq75 = alloca %struct.xfs_fsop_handlereq, align 4
  %sxp = alloca %struct.xfs_swapext, align 8
  %out = alloca %struct.xfs_fsop_counts, align 8
  %inout = alloca %struct.xfs_fsop_resblks, align 8
  %in = alloca i64, align 8
  %out129 = alloca %struct.xfs_fsop_resblks, align 8
  %in143 = alloca %struct.xfs_growfs_data, align 8
  %in155 = alloca %struct.xfs_growfs_log, align 4
  %in167 = alloca %struct.xfs_growfs_rt, align 8
  %in199 = alloca %struct.xfs_error_injection, align 4
  %eofb = alloca %struct.xfs_fs_eofblocks, align 8
  %icw = alloca %struct.xfs_icwalk, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %4 = inttoptr i32 %p to ptr
  tail call fastcc void @trace_xfs_file_ioctl(ptr noundef %add.ptr.i)
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %entry.cleanup233_crit_edge [
    i32 -1072146311, label %sw.bb
    i32 -2130668495, label %sw.bb3
    i32 1090556978, label %sw.bb5
    i32 1076910090, label %entry.land.end_crit_edge
    i32 1076910091, label %entry.land.end_crit_edge683
    i32 1076910116, label %entry.land.end_crit_edge684
    i32 1076910117, label %entry.land.end_crit_edge685
    i32 -2146674658, label %sw.bb19
    i32 -1072670618, label %entry.sw.bb33_crit_edge
    i32 -1072670619, label %entry.sw.bb33_crit_edge686
    i32 -1072670617, label %entry.sw.bb33_crit_edge687
    i32 -2143266689, label %sw.bb35
    i32 -2143266688, label %sw.bb37
    i32 -2140120988, label %sw.bb39
    i32 -2140120964, label %sw.bb41
    i32 -2130683778, label %sw.bb43
    i32 -1065330627, label %sw.bb45
    i32 -2147191295, label %sw.bb47
    i32 -2145626067, label %sw.bb51
    i32 -1071622106, label %entry.sw.bb53_crit_edge
    i32 -1071622100, label %entry.sw.bb53_crit_edge688
    i32 -1071622088, label %entry.sw.bb53_crit_edge689
    i32 -1061136325, label %sw.bb55
    i32 -1069524932, label %sw.bb57
    i32 -1071884182, label %entry.sw.bb59_crit_edge
    i32 -1071884183, label %entry.sw.bb59_crit_edge690
    i32 -1071884184, label %entry.sw.bb59_crit_edge691
    i32 -1071884181, label %sw.bb66
    i32 -1071884180, label %sw.bb74
    i32 1077434490, label %sw.bb82
    i32 1076123771, label %sw.bb84
    i32 -1062709139, label %sw.bb86
    i32 -2145363855, label %sw.bb97
    i32 -1072670606, label %sw.bb103
    i32 -2146412429, label %sw.bb128
    i32 1074813038, label %sw.bb142
    i32 1074288751, label %sw.bb154
    i32 1074813040, label %sw.bb166
    i32 -2147198851, label %sw.bb178
    i32 1074288756, label %sw.bb198
    i32 1074288757, label %sw.bb209
    i32 -2139072454, label %sw.bb214
  ]

entry.sw.bb59_crit_edge691:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

entry.sw.bb59_crit_edge690:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

entry.sw.bb59_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb59

entry.sw.bb53_crit_edge689:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb53

entry.sw.bb53_crit_edge688:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb53

entry.sw.bb53_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb53

entry.sw.bb33_crit_edge687:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33

entry.sw.bb33_crit_edge686:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33

entry.sw.bb33_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb33

entry.land.end_crit_edge685:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

entry.land.end_crit_edge684:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

entry.land.end_crit_edge683:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

entry.cleanup233_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup233

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @xfs_ioc_trim(ptr noundef %3, ptr noundef %4) #13
  br label %cleanup233

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %label.i) #13
  %6 = getelementptr inbounds i8, ptr %label.i, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %6, align 1
  %m_sb_lock.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock.i) #13
  %sb_fname.i = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 19
  %call.i = call ptr @strncpy(ptr noundef nonnull %label.i, ptr noundef %sb_fname.i, i32 noundef 12) #13
  call void @_raw_spin_unlock(ptr noundef %m_sb_lock.i) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i.i609 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i609, label %sw.bb3.xfs_ioc_getlabel.exit_crit_edge, label %if.end.i.i.i

sw.bb3.xfs_ioc_getlabel.exit_crit_edge:           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_ioc_getlabel.exit

if.end.i.i.i:                                     ; preds = %sw.bb3
  %8 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 13, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.xfs_ioc_getlabel.exit_crit_edge

if.end.i.i.i.xfs_ioc_getlabel.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_ioc_getlabel.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %label.i, i32 noundef 13) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %label.i, i32 noundef 13) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %xfs_ioc_getlabel.exit

xfs_ioc_getlabel.exit:                            ; preds = %copy_to_user.exit.i, %if.end.i.i.i.xfs_ioc_getlabel.exit_crit_edge, %sw.bb3.xfs_ioc_getlabel.exit_crit_edge
  %9 = phi i32 [ -14, %sw.bb3.xfs_ioc_getlabel.exit_crit_edge ], [ -14, %if.end.i.i.i.xfs_ioc_getlabel.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %label.i) #13
  br label %cleanup233

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %label.i610) #13
  %10 = call ptr @memset(ptr %label.i610, i32 255, i32 13)
  %call.i611 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call.i611, label %if.end8.i.i.i, label %sw.bb5.xfs_ioc_setlabel.exit_crit_edge

sw.bb5.xfs_ioc_setlabel.exit_crit_edge:           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_ioc_setlabel.exit

if.end8.i.i.i:                                    ; preds = %sw.bb5
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i.i612 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i612, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 13, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i.i613 = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i613)
  %cmp.i6.i.i614 = icmp eq i32 %asmresult.i.i.i613, 0
  br i1 %cmp.i6.i.i614, label %if.end.i.i.i616, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !76

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.end.i.i.i616:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i615 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %label.i610, i32 noundef 13) #13
  %12 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %label.i610, ptr noundef %4, i32 noundef 13) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.end.i.i.i616.if.then11.i.i.i_crit_edge, !prof !76

if.end.i.i.i616.if.then11.i.i.i_crit_edge:        ; preds = %if.end.i.i.i616
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i616.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i41.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i616.if.then11.i.i.i_crit_edge ], [ 13, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 13, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 13, %res.0.i.i41.i
  %add.ptr.i.i.i = getelementptr i8, ptr %label.i610, i32 %sub.i.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i41.i)
  br label %xfs_ioc_setlabel.exit

if.end3.i:                                        ; preds = %if.end.i.i.i616
  %call5.i = call i32 @strnlen(ptr noundef nonnull %label.i610, i32 noundef 13) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call5.i)
  %cmp.i = icmp ugt i32 %call5.i, 12
  br i1 %cmp.i, label %if.end3.i.xfs_ioc_setlabel.exit_crit_edge, label %if.end7.i

if.end3.i.xfs_ioc_setlabel.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_ioc_setlabel.exit

if.end7.i:                                        ; preds = %if.end3.i
  %call8.i = call i32 @mnt_want_write_file(ptr noundef %filp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.xfs_ioc_setlabel.exit_crit_edge

if.end7.i.xfs_ioc_setlabel.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xfs_ioc_setlabel.exit

if.end11.i:                                       ; preds = %if.end7.i
  %m_sb_lock.i617 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 76
  call void @_raw_spin_lock(ptr noundef %m_sb_lock.i617) #13
  %sb_fname.i618 = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call5.i)
  %16 = icmp ugt i32 %call5.i, 11
  %17 = sub nuw nsw i32 12, %call5.i
  %18 = select i1 %16, i32 0, i32 %17
  %19 = getelementptr i8, ptr %sb_fname.i618, i32 %call5.i
  %20 = call ptr @memset(ptr %19, i32 0, i32 %18)
  %21 = call ptr @memcpy(ptr %sb_fname.i618, ptr %label.i610, i32 %call5.i)
  call void @_raw_spin_unlock(ptr noundef %m_sb_lock.i617) #13
  %call17.i = call i32 @xfs_sync_sb_buf(ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end11.i.out.i_crit_edge

if.end11.i.out.i_crit_edge:                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out.i

if.end20.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  %m_growlock.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 99
  call void @mutex_lock_nested(ptr noundef %m_growlock.i, i32 noundef 0) #13
  %call21.i = call i32 @xfs_update_secondary_sbs(ptr noundef %3) #13
  call void @mutex_unlock(ptr noundef %m_growlock.i) #13
  %m_ddev_targp.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 13
  %22 = ptrtoint ptr %m_ddev_targp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m_ddev_targp.i, align 8
  %bt_bdev.i = getelementptr inbounds %struct.xfs_buftarg, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %bt_bdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bt_bdev.i, align 4
  call void @invalidate_bdev(ptr noundef %25) #13
  br label %out.i

out.i:                                            ; preds = %if.end20.i, %if.end11.i.out.i_crit_edge
  %error.0.i = phi i32 [ %call17.i, %if.end11.i.out.i_crit_edge ], [ %call21.i, %if.end20.i ]
  call void @mnt_drop_write_file(ptr noundef %filp) #13
  br label %xfs_ioc_setlabel.exit

xfs_ioc_setlabel.exit:                            ; preds = %out.i, %if.end7.i.xfs_ioc_setlabel.exit_crit_edge, %if.end3.i.xfs_ioc_setlabel.exit_crit_edge, %if.then11.i.i.i, %sw.bb5.xfs_ioc_setlabel.exit_crit_edge
  %retval.0.i = phi i32 [ %error.0.i, %out.i ], [ -1, %sw.bb5.xfs_ioc_setlabel.exit_crit_edge ], [ -22, %if.end3.i.xfs_ioc_setlabel.exit_crit_edge ], [ %call8.i, %if.end7.i.xfs_ioc_setlabel.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %label.i610) #13
  br label %cleanup233

land.end:                                         ; preds = %entry.land.end_crit_edge, %entry.land.end_crit_edge683, %entry.land.end_crit_edge684, %entry.land.end_crit_edge685
  %.b345 = load i1, ptr @xfs_file_ioctl.__already_done, align 1
  br i1 %.b345, label %land.end.cleanup233_crit_edge, label %if.then, !prof !76

land.end.cleanup233_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup233

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @xfs_file_ioctl.__already_done, align 1
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i619 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i619 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 101
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef %comm) #13
  br label %cleanup233

sw.bb19:                                          ; preds = %entry
  %i_diflags = getelementptr i8, ptr %1, i32 -26
  %30 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %i_diflags, align 2
  %32 = and i16 %31, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool20.not = icmp eq i16 %32, 0
  br i1 %tobool20.not, label %sw.bb19.cond.false_crit_edge, label %land.lhs.true

sw.bb19.cond.false_crit_edge:                     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

land.lhs.true:                                    ; preds = %sw.bb19
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool22.not = icmp eq ptr %36, null
  br i1 %tobool22.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %sw.bb19.cond.false_crit_edge
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %m_ddev_targp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond = phi ptr [ %40, %cond.false ], [ %36, %land.lhs.true.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %da) #13
  %41 = getelementptr inbounds %struct.dioattr, ptr %da, i32 0, i32 1
  %42 = getelementptr inbounds %struct.dioattr, ptr %da, i32 0, i32 2
  %bt_logical_sectorsize = getelementptr inbounds %struct.xfs_buftarg, ptr %cond, i32 0, i32 7
  %43 = ptrtoint ptr %bt_logical_sectorsize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bt_logical_sectorsize, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %41, align 4
  %46 = ptrtoint ptr %da to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %da, align 4
  %neg = sub i32 0, %44
  %and27 = and i32 %neg, 2147483647
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and27, ptr %42, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %cond.end.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

cond.end.copy_to_user.exit.thread_crit_edge:      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %cond.end
  %48 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 12, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %da, i32 noundef 12) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %da, i32 noundef 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool29.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool29.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %cond.end.copy_to_user.exit.thread_crit_edge
  %49 = phi i32 [ -14, %cond.end.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %da) #13
  br label %cleanup233

sw.bb33:                                          ; preds = %entry.sw.bb33_crit_edge, %entry.sw.bb33_crit_edge686, %entry.sw.bb33_crit_edge687
  %call34 = tail call fastcc i32 @xfs_ioc_fsbulkstat(ptr noundef %filp, i32 noundef %cmd, ptr noundef %4)
  br label %cleanup233

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call36 = tail call fastcc i32 @xfs_ioc_bulkstat(ptr noundef %filp, ptr noundef %4)
  br label %cleanup233

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = tail call fastcc i32 @xfs_ioc_inumbers(ptr noundef %3, ptr noundef %4)
  br label %cleanup233

sw.bb39:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = tail call fastcc i32 @xfs_ioc_fsgeometry(ptr noundef %3, ptr noundef %4, i32 noundef 3)
  br label %cleanup233

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = tail call fastcc i32 @xfs_ioc_fsgeometry(ptr noundef %3, ptr noundef %4, i32 noundef 4)
  br label %cleanup233

sw.bb43:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = tail call fastcc i32 @xfs_ioc_fsgeometry(ptr noundef %3, ptr noundef %4, i32 noundef 5)
  br label %cleanup233

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call46 = tail call fastcc i32 @xfs_ioc_ag_geometry(ptr noundef %3, ptr noundef %4)
  br label %cleanup233

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %i_generation = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 49
  %50 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %i_generation, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1934) #13
  %52 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 4
  %54 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !77
  %and.i = and i32 %54, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %55 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %51, i32 -1226833921) #13, !srcloc !92
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #13, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  br label %cleanup233

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call52 = tail call fastcc i32 @xfs_ioc_fsgetxattra(ptr noundef %add.ptr.i, ptr noundef %4)
  br label %cleanup233

sw.bb53:                                          ; preds = %entry.sw.bb53_crit_edge, %entry.sw.bb53_crit_edge688, %entry.sw.bb53_crit_edge689
  %call54 = tail call fastcc i32 @xfs_ioc_getbmap(ptr noundef %filp, i32 noundef %cmd, ptr noundef %4)
  br label %cleanup233

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call56 = tail call fastcc i32 @xfs_ioc_getfsmap(ptr noundef %add.ptr.i, ptr noundef %4)
  br label %cleanup233

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call58 = tail call fastcc i32 @xfs_ioc_scrub_metadata(ptr noundef %filp, ptr noundef %4)
  br label %cleanup233

sw.bb59:                                          ; preds = %entry.sw.bb59_crit_edge, %entry.sw.bb59_crit_edge690, %entry.sw.bb59_crit_edge691
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %hreq) #13
  %56 = call ptr @memset(ptr %hreq, i32 255, i32 28)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i353 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i353, label %sw.bb59.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb59.if.then11.i.i_crit_edge:                  ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb59
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 28, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i354 = extractvalue { i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i354)
  %cmp.i6.i355 = icmp eq i32 %asmresult.i.i354, 0
  br i1 %cmp.i6.i355, label %if.end.i.i357, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i357:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i356 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hreq, i32 noundef 28) #13
  %58 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 4
  %60 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %60, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hreq, ptr noundef %4, i32 noundef 28) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %60) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end63, label %if.end.i.i357.if.then11.i.i_crit_edge, !prof !76

if.end.i.i357.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i357
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i357.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb59.if.then11.i.i_crit_edge
  %res.0.i.i626 = phi i32 [ %call1.i.i.i, %if.end.i.i357.if.then11.i.i_crit_edge ], [ 28, %sw.bb59.if.then11.i.i_crit_edge ], [ 28, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 28, %res.0.i.i626
  %add.ptr.i.i = getelementptr i8, ptr %hreq, i32 %sub.i.i
  %61 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i626)
  br label %cleanup65

if.end63:                                         ; preds = %if.end.i.i357
  call void @__sanitizer_cov_trace_pc() #15
  %call64 = call i32 @xfs_find_handle(i32 noundef %cmd, ptr noundef nonnull %hreq)
  br label %cleanup65

cleanup65:                                        ; preds = %if.end63, %if.then11.i.i
  %retval.1 = phi i32 [ %call64, %if.end63 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %hreq) #13
  br label %cleanup233

sw.bb66:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %hreq67) #13
  %62 = call ptr @memset(ptr %hreq67, i32 255, i32 28)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i363 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i363, label %sw.bb66.if.then11.i.i379_crit_edge, label %land.lhs.true.i.i366

sw.bb66.if.then11.i.i379_crit_edge:               ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i379

land.lhs.true.i.i366:                             ; preds = %sw.bb66
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 28, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i364 = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i364)
  %cmp.i6.i365 = icmp eq i32 %asmresult.i.i364, 0
  br i1 %cmp.i6.i365, label %if.end.i.i376, label %land.lhs.true.i.i366.if.then11.i.i379_crit_edge, !prof !76

land.lhs.true.i.i366.if.then11.i.i379_crit_edge:  ; preds = %land.lhs.true.i.i366
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i379

if.end.i.i376:                                    ; preds = %land.lhs.true.i.i366
  %call.i.i.i367 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hreq67, i32 noundef 28) #13
  %64 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i368 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i368 to ptr
  %cpu_domain.i.i.i.i.i369 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i369) #7, !srcloc !77
  %and.i.i.i.i370 = and i32 %66, -13
  %or.i.i.i.i371 = or i32 %and.i.i.i.i370, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i371) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i372 = call i32 @arm_copy_from_user(ptr noundef nonnull %hreq67, ptr noundef %4, i32 noundef 28) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i372)
  %tobool4.not.i.i375 = icmp eq i32 %call1.i.i.i372, 0
  br i1 %tobool4.not.i.i375, label %if.end71, label %if.end.i.i376.if.then11.i.i379_crit_edge, !prof !76

if.end.i.i376.if.then11.i.i379_crit_edge:         ; preds = %if.end.i.i376
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i379

if.then11.i.i379:                                 ; preds = %if.end.i.i376.if.then11.i.i379_crit_edge, %land.lhs.true.i.i366.if.then11.i.i379_crit_edge, %sw.bb66.if.then11.i.i379_crit_edge
  %res.0.i.i374631 = phi i32 [ %call1.i.i.i372, %if.end.i.i376.if.then11.i.i379_crit_edge ], [ 28, %sw.bb66.if.then11.i.i379_crit_edge ], [ 28, %land.lhs.true.i.i366.if.then11.i.i379_crit_edge ]
  %sub.i.i377 = sub i32 28, %res.0.i.i374631
  %add.ptr.i.i378 = getelementptr i8, ptr %hreq67, i32 %sub.i.i377
  %67 = call ptr @memset(ptr %add.ptr.i.i378, i32 0, i32 %res.0.i.i374631)
  br label %cleanup73

if.end71:                                         ; preds = %if.end.i.i376
  call void @__sanitizer_cov_trace_pc() #15
  %call72 = call i32 @xfs_open_by_handle(ptr noundef %filp, ptr noundef nonnull %hreq67)
  br label %cleanup73

cleanup73:                                        ; preds = %if.end71, %if.then11.i.i379
  %retval.2 = phi i32 [ %call72, %if.end71 ], [ -14, %if.then11.i.i379 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %hreq67) #13
  br label %cleanup233

sw.bb74:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %hreq75) #13
  %68 = call ptr @memset(ptr %hreq75, i32 255, i32 28)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i386 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i386, label %sw.bb74.if.then11.i.i402_crit_edge, label %land.lhs.true.i.i389

sw.bb74.if.then11.i.i402_crit_edge:               ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i402

land.lhs.true.i.i389:                             ; preds = %sw.bb74
  %69 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 28, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i387 = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i387)
  %cmp.i6.i388 = icmp eq i32 %asmresult.i.i387, 0
  br i1 %cmp.i6.i388, label %if.end.i.i399, label %land.lhs.true.i.i389.if.then11.i.i402_crit_edge, !prof !76

land.lhs.true.i.i389.if.then11.i.i402_crit_edge:  ; preds = %land.lhs.true.i.i389
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i402

if.end.i.i399:                                    ; preds = %land.lhs.true.i.i389
  %call.i.i.i390 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hreq75, i32 noundef 28) #13
  %70 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i391 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i.i391 to ptr
  %cpu_domain.i.i.i.i.i392 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 4
  %72 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i392) #7, !srcloc !77
  %and.i.i.i.i393 = and i32 %72, -13
  %or.i.i.i.i394 = or i32 %and.i.i.i.i393, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i394) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i395 = call i32 @arm_copy_from_user(ptr noundef nonnull %hreq75, ptr noundef %4, i32 noundef 28) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i395)
  %tobool4.not.i.i398 = icmp eq i32 %call1.i.i.i395, 0
  br i1 %tobool4.not.i.i398, label %if.end79, label %if.end.i.i399.if.then11.i.i402_crit_edge, !prof !76

if.end.i.i399.if.then11.i.i402_crit_edge:         ; preds = %if.end.i.i399
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i402

if.then11.i.i402:                                 ; preds = %if.end.i.i399.if.then11.i.i402_crit_edge, %land.lhs.true.i.i389.if.then11.i.i402_crit_edge, %sw.bb74.if.then11.i.i402_crit_edge
  %res.0.i.i397636 = phi i32 [ %call1.i.i.i395, %if.end.i.i399.if.then11.i.i402_crit_edge ], [ 28, %sw.bb74.if.then11.i.i402_crit_edge ], [ 28, %land.lhs.true.i.i389.if.then11.i.i402_crit_edge ]
  %sub.i.i400 = sub i32 28, %res.0.i.i397636
  %add.ptr.i.i401 = getelementptr i8, ptr %hreq75, i32 %sub.i.i400
  %73 = call ptr @memset(ptr %add.ptr.i.i401, i32 0, i32 %res.0.i.i397636)
  br label %cleanup81

if.end79:                                         ; preds = %if.end.i.i399
  call void @__sanitizer_cov_trace_pc() #15
  %call80 = call i32 @xfs_readlink_by_handle(ptr noundef %filp, ptr noundef nonnull %hreq75)
  br label %cleanup81

cleanup81:                                        ; preds = %if.end79, %if.then11.i.i402
  %retval.3 = phi i32 [ %call80, %if.end79 ], [ -14, %if.then11.i.i402 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %hreq75) #13
  br label %cleanup233

sw.bb82:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call83 = tail call fastcc i32 @xfs_attrlist_by_handle(ptr noundef %filp, ptr noundef %4)
  br label %cleanup233

sw.bb84:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call85 = tail call fastcc i32 @xfs_attrmulti_by_handle(ptr noundef %filp, ptr noundef %4)
  br label %cleanup233

sw.bb86:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %sxp) #13
  %74 = call ptr @memset(ptr %sxp, i32 255, i32 168)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i409 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i409, label %sw.bb86.if.then11.i.i425_crit_edge, label %land.lhs.true.i.i412

sw.bb86.if.then11.i.i425_crit_edge:               ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i425

land.lhs.true.i.i412:                             ; preds = %sw.bb86
  %75 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 168, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i410 = extractvalue { i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i410)
  %cmp.i6.i411 = icmp eq i32 %asmresult.i.i410, 0
  br i1 %cmp.i6.i411, label %if.end.i.i422, label %land.lhs.true.i.i412.if.then11.i.i425_crit_edge, !prof !76

land.lhs.true.i.i412.if.then11.i.i425_crit_edge:  ; preds = %land.lhs.true.i.i412
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i425

if.end.i.i422:                                    ; preds = %land.lhs.true.i.i412
  %call.i.i.i413 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sxp, i32 noundef 168) #13
  %76 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i414 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i.i414 to ptr
  %cpu_domain.i.i.i.i.i415 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 4
  %78 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i415) #7, !srcloc !77
  %and.i.i.i.i416 = and i32 %78, -13
  %or.i.i.i.i417 = or i32 %and.i.i.i.i416, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i417) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i418 = call i32 @arm_copy_from_user(ptr noundef nonnull %sxp, ptr noundef %4, i32 noundef 168) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i418)
  %tobool4.not.i.i421 = icmp eq i32 %call1.i.i.i418, 0
  br i1 %tobool4.not.i.i421, label %if.end90, label %if.end.i.i422.if.then11.i.i425_crit_edge, !prof !76

if.end.i.i422.if.then11.i.i425_crit_edge:         ; preds = %if.end.i.i422
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i425

if.then11.i.i425:                                 ; preds = %if.end.i.i422.if.then11.i.i425_crit_edge, %land.lhs.true.i.i412.if.then11.i.i425_crit_edge, %sw.bb86.if.then11.i.i425_crit_edge
  %res.0.i.i420641 = phi i32 [ %call1.i.i.i418, %if.end.i.i422.if.then11.i.i425_crit_edge ], [ 168, %sw.bb86.if.then11.i.i425_crit_edge ], [ 168, %land.lhs.true.i.i412.if.then11.i.i425_crit_edge ]
  %sub.i.i423 = sub i32 168, %res.0.i.i420641
  %add.ptr.i.i424 = getelementptr i8, ptr %sxp, i32 %sub.i.i423
  %79 = call ptr @memset(ptr %add.ptr.i.i424, i32 0, i32 %res.0.i.i420641)
  br label %cleanup96

if.end90:                                         ; preds = %if.end.i.i422
  %call91 = call i32 @mnt_want_write_file(ptr noundef %filp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.cleanup96_crit_edge

if.end90.cleanup96_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup96

if.end94:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #15
  %call95 = call i32 @xfs_ioc_swapext(ptr noundef nonnull %sxp)
  call void @mnt_drop_write_file(ptr noundef %filp) #13
  br label %cleanup96

cleanup96:                                        ; preds = %if.end94, %if.end90.cleanup96_crit_edge, %if.then11.i.i425
  %retval.4 = phi i32 [ %call95, %if.end94 ], [ %call91, %if.end90.cleanup96_crit_edge ], [ -14, %if.then11.i.i425 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %sxp) #13
  br label %cleanup233

sw.bb97:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %out) #13
  %80 = call ptr @memset(ptr %out, i32 255, i32 32)
  call void @xfs_fs_counts(ptr noundef %3, ptr noundef nonnull %out) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i432 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i432, label %sw.bb97.copy_to_user.exit440.thread_crit_edge, label %if.end.i.i435

sw.bb97.copy_to_user.exit440.thread_crit_edge:    ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit440.thread

if.end.i.i435:                                    ; preds = %sw.bb97
  %81 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 32, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i433 = extractvalue { i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i433)
  %cmp.i6.i434 = icmp eq i32 %asmresult.i.i433, 0
  br i1 %cmp.i6.i434, label %copy_to_user.exit440, label %if.end.i.i435.copy_to_user.exit440.thread_crit_edge

if.end.i.i435.copy_to_user.exit440.thread_crit_edge: ; preds = %if.end.i.i435
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit440.thread

copy_to_user.exit440:                             ; preds = %if.end.i.i435
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i436 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %out, i32 noundef 32) #13
  %call.i12.i.i437 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %out, i32 noundef 32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i437)
  %tobool99.not = icmp eq i32 %call.i12.i.i437, 0
  %spec.select680 = select i1 %tobool99.not, i32 0, i32 -14
  br label %copy_to_user.exit440.thread

copy_to_user.exit440.thread:                      ; preds = %copy_to_user.exit440, %if.end.i.i435.copy_to_user.exit440.thread_crit_edge, %sw.bb97.copy_to_user.exit440.thread_crit_edge
  %82 = phi i32 [ -14, %sw.bb97.copy_to_user.exit440.thread_crit_edge ], [ -14, %if.end.i.i435.copy_to_user.exit440.thread_crit_edge ], [ %spec.select680, %copy_to_user.exit440 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %out) #13
  br label %cleanup233

sw.bb103:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inout) #13
  %83 = call ptr @memset(ptr %inout, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in) #13
  %call104 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call104, label %if.end106, label %sw.bb103.cleanup126_crit_edge

sw.bb103.cleanup126_crit_edge:                    ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.end106:                                        ; preds = %sw.bb103
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %84 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %m_opstate.i, align 4
  %86 = and i32 %85, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i.not = icmp eq i32 %86, 0
  br i1 %tobool.i.not, label %if.end8.i.i444, label %if.end106.cleanup126_crit_edge

if.end106.cleanup126_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.end8.i.i444:                                   ; preds = %if.end106
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i445 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i445, label %if.end8.i.i444.if.then11.i.i461_crit_edge, label %land.lhs.true.i.i448

if.end8.i.i444.if.then11.i.i461_crit_edge:        ; preds = %if.end8.i.i444
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i461

land.lhs.true.i.i448:                             ; preds = %if.end8.i.i444
  %87 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #16
  %asmresult.i.i446 = extractvalue { i32, i32 } %87, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i446)
  %cmp.i6.i447 = icmp eq i32 %asmresult.i.i446, 0
  br i1 %cmp.i6.i447, label %if.end.i.i458, label %land.lhs.true.i.i448.if.then11.i.i461_crit_edge, !prof !76

land.lhs.true.i.i448.if.then11.i.i461_crit_edge:  ; preds = %land.lhs.true.i.i448
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i461

if.end.i.i458:                                    ; preds = %land.lhs.true.i.i448
  %call.i.i.i449 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %inout, i32 noundef 16) #13
  %88 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i450 = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i.i450 to ptr
  %cpu_domain.i.i.i.i.i451 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 4
  %90 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i451) #7, !srcloc !77
  %and.i.i.i.i452 = and i32 %90, -13
  %or.i.i.i.i453 = or i32 %and.i.i.i.i452, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i453) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i454 = call i32 @arm_copy_from_user(ptr noundef nonnull %inout, ptr noundef %4, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %90) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i454)
  %tobool4.not.i.i457 = icmp eq i32 %call1.i.i.i454, 0
  br i1 %tobool4.not.i.i457, label %if.end113, label %if.end.i.i458.if.then11.i.i461_crit_edge, !prof !76

if.end.i.i458.if.then11.i.i461_crit_edge:         ; preds = %if.end.i.i458
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i461

if.then11.i.i461:                                 ; preds = %if.end.i.i458.if.then11.i.i461_crit_edge, %land.lhs.true.i.i448.if.then11.i.i461_crit_edge, %if.end8.i.i444.if.then11.i.i461_crit_edge
  %res.0.i.i456648 = phi i32 [ %call1.i.i.i454, %if.end.i.i458.if.then11.i.i461_crit_edge ], [ 16, %if.end8.i.i444.if.then11.i.i461_crit_edge ], [ 16, %land.lhs.true.i.i448.if.then11.i.i461_crit_edge ]
  %sub.i.i459 = sub i32 16, %res.0.i.i456648
  %add.ptr.i.i460 = getelementptr i8, ptr %inout, i32 %sub.i.i459
  %91 = call ptr @memset(ptr %add.ptr.i.i460, i32 0, i32 %res.0.i.i456648)
  br label %cleanup126

if.end113:                                        ; preds = %if.end.i.i458
  %call114 = call i32 @mnt_want_write_file(ptr noundef %filp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.end113.cleanup126_crit_edge

if.end113.cleanup126_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.end117:                                        ; preds = %if.end113
  %92 = ptrtoint ptr %inout to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %inout, align 8
  %94 = ptrtoint ptr %in to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %in, align 8
  %call118 = call i32 @xfs_reserve_blocks(ptr noundef %3, ptr noundef nonnull %in, ptr noundef nonnull %inout) #13
  call void @mnt_drop_write_file(ptr noundef %filp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end8.i.i467, label %if.end117.cleanup126_crit_edge

if.end117.cleanup126_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

if.end8.i.i467:                                   ; preds = %if.end117
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i468 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i468, label %if.end8.i.i467.cleanup126_crit_edge, label %copy_to_user.exit476

if.end8.i.i467.cleanup126_crit_edge:              ; preds = %if.end8.i.i467
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup126

copy_to_user.exit476:                             ; preds = %if.end8.i.i467
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i472 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %inout, i32 noundef 16) #13
  %call.i12.i.i473 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %inout, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i473)
  %tobool123.not = icmp eq i32 %call.i12.i.i473, 0
  %spec.select681 = select i1 %tobool123.not, i32 0, i32 -14
  br label %cleanup126

cleanup126:                                       ; preds = %copy_to_user.exit476, %if.end8.i.i467.cleanup126_crit_edge, %if.end117.cleanup126_crit_edge, %if.end113.cleanup126_crit_edge, %if.then11.i.i461, %if.end106.cleanup126_crit_edge, %sw.bb103.cleanup126_crit_edge
  %retval.6 = phi i32 [ -1, %sw.bb103.cleanup126_crit_edge ], [ -30, %if.end106.cleanup126_crit_edge ], [ %call114, %if.end113.cleanup126_crit_edge ], [ %call118, %if.end117.cleanup126_crit_edge ], [ -14, %if.then11.i.i461 ], [ -14, %if.end8.i.i467.cleanup126_crit_edge ], [ %spec.select681, %copy_to_user.exit476 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inout) #13
  br label %cleanup233

sw.bb128:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out129) #13
  %95 = call ptr @memset(ptr %out129, i32 255, i32 16)
  %call130 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call130, label %if.end132, label %sw.bb128.cleanup141_crit_edge

sw.bb128.cleanup141_crit_edge:                    ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup141

if.end132:                                        ; preds = %sw.bb128
  %call133 = call i32 @xfs_reserve_blocks(ptr noundef %3, ptr noundef null, ptr noundef nonnull %out129) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end8.i.i480, label %if.end132.cleanup141_crit_edge

if.end132.cleanup141_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup141

if.end8.i.i480:                                   ; preds = %if.end132
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i481 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i481, label %if.end8.i.i480.cleanup141_crit_edge, label %if.end.i.i484

if.end8.i.i480.cleanup141_crit_edge:              ; preds = %if.end8.i.i480
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup141

if.end.i.i484:                                    ; preds = %if.end8.i.i480
  %96 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i482 = extractvalue { i32, i32 } %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i482)
  %cmp.i6.i483 = icmp eq i32 %asmresult.i.i482, 0
  br i1 %cmp.i6.i483, label %copy_to_user.exit489, label %if.end.i.i484.cleanup141_crit_edge

if.end.i.i484.cleanup141_crit_edge:               ; preds = %if.end.i.i484
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup141

copy_to_user.exit489:                             ; preds = %if.end.i.i484
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i485 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %out129, i32 noundef 16) #13
  %call.i12.i.i486 = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %out129, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i486)
  %tobool138.not = icmp eq i32 %call.i12.i.i486, 0
  %spec.select682 = select i1 %tobool138.not, i32 0, i32 -14
  br label %cleanup141

cleanup141:                                       ; preds = %copy_to_user.exit489, %if.end.i.i484.cleanup141_crit_edge, %if.end8.i.i480.cleanup141_crit_edge, %if.end132.cleanup141_crit_edge, %sw.bb128.cleanup141_crit_edge
  %retval.7 = phi i32 [ -1, %sw.bb128.cleanup141_crit_edge ], [ %call133, %if.end132.cleanup141_crit_edge ], [ -14, %if.end8.i.i480.cleanup141_crit_edge ], [ -14, %if.end.i.i484.cleanup141_crit_edge ], [ %spec.select682, %copy_to_user.exit489 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out129) #13
  br label %cleanup233

sw.bb142:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in143) #13
  %97 = call ptr @memset(ptr %in143, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i494 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i494, label %sw.bb142.if.then11.i.i510_crit_edge, label %land.lhs.true.i.i497

sw.bb142.if.then11.i.i510_crit_edge:              ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i510

land.lhs.true.i.i497:                             ; preds = %sw.bb142
  %98 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i495 = extractvalue { i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i495)
  %cmp.i6.i496 = icmp eq i32 %asmresult.i.i495, 0
  br i1 %cmp.i6.i496, label %if.end.i.i507, label %land.lhs.true.i.i497.if.then11.i.i510_crit_edge, !prof !76

land.lhs.true.i.i497.if.then11.i.i510_crit_edge:  ; preds = %land.lhs.true.i.i497
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i510

if.end.i.i507:                                    ; preds = %land.lhs.true.i.i497
  %call.i.i.i498 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %in143, i32 noundef 16) #13
  %99 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i499 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i.i499 to ptr
  %cpu_domain.i.i.i.i.i500 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 4
  %101 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i500) #7, !srcloc !77
  %and.i.i.i.i501 = and i32 %101, -13
  %or.i.i.i.i502 = or i32 %and.i.i.i.i501, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i502) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i503 = call i32 @arm_copy_from_user(ptr noundef nonnull %in143, ptr noundef %4, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i503)
  %tobool4.not.i.i506 = icmp eq i32 %call1.i.i.i503, 0
  br i1 %tobool4.not.i.i506, label %if.end147, label %if.end.i.i507.if.then11.i.i510_crit_edge, !prof !76

if.end.i.i507.if.then11.i.i510_crit_edge:         ; preds = %if.end.i.i507
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i510

if.then11.i.i510:                                 ; preds = %if.end.i.i507.if.then11.i.i510_crit_edge, %land.lhs.true.i.i497.if.then11.i.i510_crit_edge, %sw.bb142.if.then11.i.i510_crit_edge
  %res.0.i.i505657 = phi i32 [ %call1.i.i.i503, %if.end.i.i507.if.then11.i.i510_crit_edge ], [ 16, %sw.bb142.if.then11.i.i510_crit_edge ], [ 16, %land.lhs.true.i.i497.if.then11.i.i510_crit_edge ]
  %sub.i.i508 = sub i32 16, %res.0.i.i505657
  %add.ptr.i.i509 = getelementptr i8, ptr %in143, i32 %sub.i.i508
  %102 = call ptr @memset(ptr %add.ptr.i.i509, i32 0, i32 %res.0.i.i505657)
  br label %cleanup153

if.end147:                                        ; preds = %if.end.i.i507
  %call148 = call i32 @mnt_want_write_file(ptr noundef %filp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %if.end147.cleanup153_crit_edge

if.end147.cleanup153_crit_edge:                   ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup153

if.end151:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #15
  %call152 = call i32 @xfs_growfs_data(ptr noundef %3, ptr noundef nonnull %in143) #13
  call void @mnt_drop_write_file(ptr noundef %filp) #13
  br label %cleanup153

cleanup153:                                       ; preds = %if.end151, %if.end147.cleanup153_crit_edge, %if.then11.i.i510
  %retval.8 = phi i32 [ %call152, %if.end151 ], [ %call148, %if.end147.cleanup153_crit_edge ], [ -14, %if.then11.i.i510 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in143) #13
  br label %cleanup233

sw.bb154:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in155) #13
  %103 = ptrtoint ptr %in155 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %in155, align 4, !annotation !70
  %104 = getelementptr inbounds %struct.xfs_growfs_log, ptr %in155, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %104, align 4, !annotation !70
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i517 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i517, label %sw.bb154.if.then11.i.i533_crit_edge, label %land.lhs.true.i.i520

sw.bb154.if.then11.i.i533_crit_edge:              ; preds = %sw.bb154
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i533

land.lhs.true.i.i520:                             ; preds = %sw.bb154
  %106 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 8, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i518 = extractvalue { i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i518)
  %cmp.i6.i519 = icmp eq i32 %asmresult.i.i518, 0
  br i1 %cmp.i6.i519, label %if.end.i.i530, label %land.lhs.true.i.i520.if.then11.i.i533_crit_edge, !prof !76

land.lhs.true.i.i520.if.then11.i.i533_crit_edge:  ; preds = %land.lhs.true.i.i520
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i533

if.end.i.i530:                                    ; preds = %land.lhs.true.i.i520
  %call.i.i.i521 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %in155, i32 noundef 8) #13
  %107 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i522 = and i32 %107, -16384
  %108 = inttoptr i32 %and.i.i.i.i.i.i522 to ptr
  %cpu_domain.i.i.i.i.i523 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 4
  %109 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i523) #7, !srcloc !77
  %and.i.i.i.i524 = and i32 %109, -13
  %or.i.i.i.i525 = or i32 %and.i.i.i.i524, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i525) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i526 = call i32 @arm_copy_from_user(ptr noundef nonnull %in155, ptr noundef %4, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %109) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i526)
  %tobool4.not.i.i529 = icmp eq i32 %call1.i.i.i526, 0
  br i1 %tobool4.not.i.i529, label %if.end159, label %if.end.i.i530.if.then11.i.i533_crit_edge, !prof !76

if.end.i.i530.if.then11.i.i533_crit_edge:         ; preds = %if.end.i.i530
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i533

if.then11.i.i533:                                 ; preds = %if.end.i.i530.if.then11.i.i533_crit_edge, %land.lhs.true.i.i520.if.then11.i.i533_crit_edge, %sw.bb154.if.then11.i.i533_crit_edge
  %res.0.i.i528662 = phi i32 [ %call1.i.i.i526, %if.end.i.i530.if.then11.i.i533_crit_edge ], [ 8, %sw.bb154.if.then11.i.i533_crit_edge ], [ 8, %land.lhs.true.i.i520.if.then11.i.i533_crit_edge ]
  %sub.i.i531 = sub i32 8, %res.0.i.i528662
  %add.ptr.i.i532 = getelementptr i8, ptr %in155, i32 %sub.i.i531
  %110 = call ptr @memset(ptr %add.ptr.i.i532, i32 0, i32 %res.0.i.i528662)
  br label %cleanup165

if.end159:                                        ; preds = %if.end.i.i530
  %call160 = call i32 @mnt_want_write_file(ptr noundef %filp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end159.cleanup165_crit_edge

if.end159.cleanup165_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

if.end163:                                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #15
  %call164 = call i32 @xfs_growfs_log(ptr noundef %3, ptr noundef nonnull %in155) #13
  call void @mnt_drop_write_file(ptr noundef %filp) #13
  br label %cleanup165

cleanup165:                                       ; preds = %if.end163, %if.end159.cleanup165_crit_edge, %if.then11.i.i533
  %retval.9 = phi i32 [ %call164, %if.end163 ], [ %call160, %if.end159.cleanup165_crit_edge ], [ -14, %if.then11.i.i533 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in155) #13
  br label %cleanup233

sw.bb166:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in167) #13
  %111 = call ptr @memset(ptr %in167, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i540 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i540, label %sw.bb166.if.then11.i.i556_crit_edge, label %land.lhs.true.i.i543

sw.bb166.if.then11.i.i556_crit_edge:              ; preds = %sw.bb166
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i556

land.lhs.true.i.i543:                             ; preds = %sw.bb166
  %112 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i541 = extractvalue { i32, i32 } %112, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i541)
  %cmp.i6.i542 = icmp eq i32 %asmresult.i.i541, 0
  br i1 %cmp.i6.i542, label %if.end.i.i553, label %land.lhs.true.i.i543.if.then11.i.i556_crit_edge, !prof !76

land.lhs.true.i.i543.if.then11.i.i556_crit_edge:  ; preds = %land.lhs.true.i.i543
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i556

if.end.i.i553:                                    ; preds = %land.lhs.true.i.i543
  %call.i.i.i544 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %in167, i32 noundef 16) #13
  %113 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i545 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i.i.i.i.i545 to ptr
  %cpu_domain.i.i.i.i.i546 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 4
  %115 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i546) #7, !srcloc !77
  %and.i.i.i.i547 = and i32 %115, -13
  %or.i.i.i.i548 = or i32 %and.i.i.i.i547, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i548) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i549 = call i32 @arm_copy_from_user(ptr noundef nonnull %in167, ptr noundef %4, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %115) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i549)
  %tobool4.not.i.i552 = icmp eq i32 %call1.i.i.i549, 0
  br i1 %tobool4.not.i.i552, label %if.end171, label %if.end.i.i553.if.then11.i.i556_crit_edge, !prof !76

if.end.i.i553.if.then11.i.i556_crit_edge:         ; preds = %if.end.i.i553
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i556

if.then11.i.i556:                                 ; preds = %if.end.i.i553.if.then11.i.i556_crit_edge, %land.lhs.true.i.i543.if.then11.i.i556_crit_edge, %sw.bb166.if.then11.i.i556_crit_edge
  %res.0.i.i551667 = phi i32 [ %call1.i.i.i549, %if.end.i.i553.if.then11.i.i556_crit_edge ], [ 16, %sw.bb166.if.then11.i.i556_crit_edge ], [ 16, %land.lhs.true.i.i543.if.then11.i.i556_crit_edge ]
  %sub.i.i554 = sub i32 16, %res.0.i.i551667
  %add.ptr.i.i555 = getelementptr i8, ptr %in167, i32 %sub.i.i554
  %116 = call ptr @memset(ptr %add.ptr.i.i555, i32 0, i32 %res.0.i.i551667)
  br label %cleanup177

if.end171:                                        ; preds = %if.end.i.i553
  %call172 = call i32 @mnt_want_write_file(ptr noundef %filp) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %if.end171.cleanup177_crit_edge

if.end171.cleanup177_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup177

if.end175:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #15
  %call176 = call i32 @xfs_growfs_rt(ptr noundef %3, ptr noundef nonnull %in167) #13
  call void @mnt_drop_write_file(ptr noundef %filp) #13
  br label %cleanup177

cleanup177:                                       ; preds = %if.end175, %if.end171.cleanup177_crit_edge, %if.then11.i.i556
  %retval.10 = phi i32 [ %call176, %if.end175 ], [ %call172, %if.end171.cleanup177_crit_edge ], [ -14, %if.then11.i.i556 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in167) #13
  br label %cleanup233

sw.bb178:                                         ; preds = %entry
  %call180 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call180, label %if.end182, label %sw.bb178.cleanup233_crit_edge

sw.bb178.cleanup233_crit_edge:                    ; preds = %sw.bb178
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup233

if.end182:                                        ; preds = %sw.bb178
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 2096) #13
  %117 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i559 = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i.i559 to ptr
  %cpu_domain.i.i560 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 4
  %119 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i560) #7, !srcloc !77
  %and.i561 = and i32 %119, -13
  %or.i562 = or i32 %and.i561, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i562) #13, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %120 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1226833921) #13, !srcloc !93
  %asmresult = extractvalue { i32, i32 } %120, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #13, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool193.not = icmp eq i32 %asmresult, 0
  br i1 %tobool193.not, label %if.end195, label %if.end182.cleanup233_crit_edge

if.end182.cleanup233_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup233

if.end195:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #15
  %asmresult191 = extractvalue { i32, i32 } %120, 1
  %call196 = tail call i32 @xfs_fs_goingdown(ptr noundef %3, i32 noundef %asmresult191) #13
  br label %cleanup233

sw.bb198:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in199) #13
  %121 = ptrtoint ptr %in199 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %in199, align 4, !annotation !70
  %122 = getelementptr inbounds %struct.xfs_error_injection, ptr %in199, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -1, ptr %122, align 4, !annotation !70
  %call200 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call200, label %if.end8.i.i566, label %sw.bb198.cleanup208_crit_edge

sw.bb198.cleanup208_crit_edge:                    ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup208

if.end8.i.i566:                                   ; preds = %sw.bb198
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i567 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i567, label %if.end8.i.i566.if.then11.i.i583_crit_edge, label %land.lhs.true.i.i570

if.end8.i.i566.if.then11.i.i583_crit_edge:        ; preds = %if.end8.i.i566
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i583

land.lhs.true.i.i570:                             ; preds = %if.end8.i.i566
  %124 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 8, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i568 = extractvalue { i32, i32 } %124, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i568)
  %cmp.i6.i569 = icmp eq i32 %asmresult.i.i568, 0
  br i1 %cmp.i6.i569, label %if.end.i.i580, label %land.lhs.true.i.i570.if.then11.i.i583_crit_edge, !prof !76

land.lhs.true.i.i570.if.then11.i.i583_crit_edge:  ; preds = %land.lhs.true.i.i570
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i583

if.end.i.i580:                                    ; preds = %land.lhs.true.i.i570
  %call.i.i.i571 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %in199, i32 noundef 8) #13
  %125 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i572 = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i.i.i.i572 to ptr
  %cpu_domain.i.i.i.i.i573 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 4
  %127 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i573) #7, !srcloc !77
  %and.i.i.i.i574 = and i32 %127, -13
  %or.i.i.i.i575 = or i32 %and.i.i.i.i574, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i575) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i576 = call i32 @arm_copy_from_user(ptr noundef nonnull %in199, ptr noundef %4, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %127) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i576)
  %tobool4.not.i.i579 = icmp eq i32 %call1.i.i.i576, 0
  br i1 %tobool4.not.i.i579, label %if.end206, label %if.end.i.i580.if.then11.i.i583_crit_edge, !prof !76

if.end.i.i580.if.then11.i.i583_crit_edge:         ; preds = %if.end.i.i580
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i583

if.then11.i.i583:                                 ; preds = %if.end.i.i580.if.then11.i.i583_crit_edge, %land.lhs.true.i.i570.if.then11.i.i583_crit_edge, %if.end8.i.i566.if.then11.i.i583_crit_edge
  %res.0.i.i578672 = phi i32 [ %call1.i.i.i576, %if.end.i.i580.if.then11.i.i583_crit_edge ], [ 8, %if.end8.i.i566.if.then11.i.i583_crit_edge ], [ 8, %land.lhs.true.i.i570.if.then11.i.i583_crit_edge ]
  %sub.i.i581 = sub i32 8, %res.0.i.i578672
  %add.ptr.i.i582 = getelementptr i8, ptr %in199, i32 %sub.i.i581
  %128 = call ptr @memset(ptr %add.ptr.i.i582, i32 0, i32 %res.0.i.i578672)
  br label %cleanup208

if.end206:                                        ; preds = %if.end.i.i580
  call void @__sanitizer_cov_trace_pc() #15
  %129 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %122, align 4
  %call207 = call i32 @xfs_errortag_add(ptr noundef %3, i32 noundef %130) #13
  br label %cleanup208

cleanup208:                                       ; preds = %if.end206, %if.then11.i.i583, %sw.bb198.cleanup208_crit_edge
  %retval.12 = phi i32 [ %call207, %if.end206 ], [ -1, %sw.bb198.cleanup208_crit_edge ], [ -14, %if.then11.i.i583 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in199) #13
  br label %cleanup233

sw.bb209:                                         ; preds = %entry
  %call210 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call210, label %if.end212, label %sw.bb209.cleanup233_crit_edge

sw.bb209.cleanup233_crit_edge:                    ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup233

if.end212:                                        ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #15
  %call213 = tail call i32 @xfs_errortag_clearall(ptr noundef %3) #13
  br label %cleanup233

sw.bb214:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %eofb) #13
  %131 = call ptr @memset(ptr %eofb, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %icw) #13
  %132 = call ptr @memset(ptr %icw, i32 255, i32 32)
  %call215 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call215, label %if.end217, label %sw.bb214.cleanup231_crit_edge

sw.bb214.cleanup231_crit_edge:                    ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup231

if.end217:                                        ; preds = %sw.bb214
  %m_opstate.i620 = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %133 = ptrtoint ptr %m_opstate.i620 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %m_opstate.i620, align 4
  %135 = and i32 %134, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.i621.not = icmp eq i32 %135, 0
  br i1 %tobool.i621.not, label %if.end8.i.i589, label %if.end217.cleanup231_crit_edge

if.end217.cleanup231_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup231

if.end8.i.i589:                                   ; preds = %if.end217
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i590 = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i590, label %if.end8.i.i589.if.then11.i.i606_crit_edge, label %land.lhs.true.i.i593

if.end8.i.i589.if.then11.i.i606_crit_edge:        ; preds = %if.end8.i.i589
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i606

land.lhs.true.i.i593:                             ; preds = %if.end8.i.i589
  %136 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 128, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i591 = extractvalue { i32, i32 } %136, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i591)
  %cmp.i6.i592 = icmp eq i32 %asmresult.i.i591, 0
  br i1 %cmp.i6.i592, label %if.end.i.i603, label %land.lhs.true.i.i593.if.then11.i.i606_crit_edge, !prof !76

land.lhs.true.i.i593.if.then11.i.i606_crit_edge:  ; preds = %land.lhs.true.i.i593
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i606

if.end.i.i603:                                    ; preds = %land.lhs.true.i.i593
  %call.i.i.i594 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %eofb, i32 noundef 128) #13
  %137 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i595 = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i.i.i.i595 to ptr
  %cpu_domain.i.i.i.i.i596 = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 4
  %139 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i596) #7, !srcloc !77
  %and.i.i.i.i597 = and i32 %139, -13
  %or.i.i.i.i598 = or i32 %and.i.i.i.i597, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i598) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i599 = call i32 @arm_copy_from_user(ptr noundef nonnull %eofb, ptr noundef %4, i32 noundef 128) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %139) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i599)
  %tobool4.not.i.i602 = icmp eq i32 %call1.i.i.i599, 0
  br i1 %tobool4.not.i.i602, label %if.end224, label %if.end.i.i603.if.then11.i.i606_crit_edge, !prof !76

if.end.i.i603.if.then11.i.i606_crit_edge:         ; preds = %if.end.i.i603
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i606

if.then11.i.i606:                                 ; preds = %if.end.i.i603.if.then11.i.i606_crit_edge, %land.lhs.true.i.i593.if.then11.i.i606_crit_edge, %if.end8.i.i589.if.then11.i.i606_crit_edge
  %res.0.i.i601677 = phi i32 [ %call1.i.i.i599, %if.end.i.i603.if.then11.i.i606_crit_edge ], [ 128, %if.end8.i.i589.if.then11.i.i606_crit_edge ], [ 128, %land.lhs.true.i.i593.if.then11.i.i606_crit_edge ]
  %sub.i.i604 = sub i32 128, %res.0.i.i601677
  %add.ptr.i.i605 = getelementptr i8, ptr %eofb, i32 %sub.i.i604
  %140 = call ptr @memset(ptr %add.ptr.i.i605, i32 0, i32 %res.0.i.i601677)
  br label %cleanup231

if.end224:                                        ; preds = %if.end.i.i603
  %call225 = call fastcc i32 @xfs_fs_eofblocks_from_user(ptr noundef nonnull %eofb, ptr noundef nonnull %icw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %tobool226.not = icmp eq i32 %call225, 0
  br i1 %tobool226.not, label %if.end228, label %if.end224.cleanup231_crit_edge

if.end224.cleanup231_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup231

if.end228:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #15
  %141 = call ptr @llvm.returnaddress(i32 0)
  %142 = ptrtoint ptr %141 to i32
  call fastcc void @trace_xfs_ioc_free_eofblocks(ptr noundef %3, ptr noundef nonnull %icw, i32 noundef %142)
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 1
  %143 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %m_super, align 8
  call fastcc void @sb_start_write(ptr noundef %144)
  %call229 = call i32 @xfs_blockgc_free_space(ptr noundef %3, ptr noundef nonnull %icw) #13
  %145 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %m_super, align 8
  call fastcc void @sb_end_write(ptr noundef %146)
  br label %cleanup231

cleanup231:                                       ; preds = %if.end228, %if.end224.cleanup231_crit_edge, %if.then11.i.i606, %if.end217.cleanup231_crit_edge, %sw.bb214.cleanup231_crit_edge
  %retval.13 = phi i32 [ %call229, %if.end228 ], [ -1, %sw.bb214.cleanup231_crit_edge ], [ -30, %if.end217.cleanup231_crit_edge ], [ %call225, %if.end224.cleanup231_crit_edge ], [ -14, %if.then11.i.i606 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %icw) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %eofb) #13
  br label %cleanup233

cleanup233:                                       ; preds = %cleanup231, %if.end212, %sw.bb209.cleanup233_crit_edge, %cleanup208, %if.end195, %if.end182.cleanup233_crit_edge, %sw.bb178.cleanup233_crit_edge, %cleanup177, %cleanup165, %cleanup153, %cleanup141, %cleanup126, %copy_to_user.exit440.thread, %cleanup96, %sw.bb84, %sw.bb82, %cleanup81, %cleanup73, %cleanup65, %sw.bb57, %sw.bb55, %sw.bb53, %sw.bb51, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %copy_to_user.exit.thread, %if.then, %land.end.cleanup233_crit_edge, %xfs_ioc_setlabel.exit, %xfs_ioc_getlabel.exit, %sw.bb, %entry.cleanup233_crit_edge
  %retval.14 = phi i32 [ %retval.13, %cleanup231 ], [ %call213, %if.end212 ], [ %retval.12, %cleanup208 ], [ %retval.10, %cleanup177 ], [ %retval.9, %cleanup165 ], [ %retval.8, %cleanup153 ], [ %retval.7, %cleanup141 ], [ %retval.6, %cleanup126 ], [ %82, %copy_to_user.exit440.thread ], [ %retval.4, %cleanup96 ], [ %call85, %sw.bb84 ], [ %call83, %sw.bb82 ], [ %retval.3, %cleanup81 ], [ %retval.2, %cleanup73 ], [ %retval.1, %cleanup65 ], [ %call58, %sw.bb57 ], [ %call56, %sw.bb55 ], [ %call54, %sw.bb53 ], [ %call52, %sw.bb51 ], [ %55, %sw.bb47 ], [ %call46, %sw.bb45 ], [ %call44, %sw.bb43 ], [ %call42, %sw.bb41 ], [ %call40, %sw.bb39 ], [ %call38, %sw.bb37 ], [ %call36, %sw.bb35 ], [ %call34, %sw.bb33 ], [ %49, %copy_to_user.exit.thread ], [ %retval.0.i, %xfs_ioc_setlabel.exit ], [ %9, %xfs_ioc_getlabel.exit ], [ %call2, %sw.bb ], [ -25, %if.then ], [ -25, %land.end.cleanup233_crit_edge ], [ %call196, %if.end195 ], [ -1, %sw.bb178.cleanup233_crit_edge ], [ -14, %if.end182.cleanup233_crit_edge ], [ -1, %sw.bb209.cleanup233_crit_edge ], [ -25, %entry.cleanup233_crit_edge ]
  ret i32 %retval.14
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_file_ioctl(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_ioctl, i32 0, i32 1), ptr blockaddress(@trace_xfs_file_ioctl, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  %call42 = tail call i32 @__traceiter_xfs_file_ioctl(ptr noundef null, ptr noundef %ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !95
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_ioctl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_file_ioctl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_file_ioctl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_file_ioctl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 766, ptr noundef nonnull @.str.12) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
declare dso_local i32 @xfs_ioc_trim(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioc_fsbulkstat(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  %bulkreq = alloca %struct.xfs_fsop_bulkreq, align 4
  %breq = alloca %struct.xfs_ibulk, align 8
  %lastino = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bulkreq) #13
  %4 = getelementptr inbounds %struct.xfs_fsop_bulkreq, ptr %bulkreq, i32 0, i32 1
  %5 = getelementptr inbounds %struct.xfs_fsop_bulkreq, ptr %bulkreq, i32 0, i32 2
  %6 = getelementptr inbounds %struct.xfs_fsop_bulkreq, ptr %bulkreq, i32 0, i32 3
  %7 = call ptr @memset(ptr %bulkreq, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %breq) #13
  %8 = getelementptr inbounds i8, ptr %breq, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 32)
  %10 = ptrtoint ptr %breq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %breq, align 8
  %mnt_userns = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 1
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %11 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !96
  %15 = ptrtoint ptr %mnt_userns to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %mnt_userns, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lastino) #13
  %16 = ptrtoint ptr %lastino to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %lastino, align 8, !annotation !70
  %call4 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %17 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %m_opstate.i, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.not, label %if.end8.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 16, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bulkreq, i32 noundef 16) #13
  %21 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %23, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bulkreq, ptr noundef %arg, i32 noundef 16) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end10, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i126 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i126
  %add.ptr.i.i = getelementptr i8, ptr %bulkreq, i32 %sub.i.i
  %24 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i126)
  br label %cleanup

if.end10:                                         ; preds = %if.end.i.i
  %25 = ptrtoint ptr %bulkreq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bulkreq, align 4
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i82 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i82, label %if.end10.if.then11.i.i98_crit_edge, label %land.lhs.true.i.i85

if.end10.if.then11.i.i98_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i98

land.lhs.true.i.i85:                              ; preds = %if.end10
  %27 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 8, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i83 = extractvalue { i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i83)
  %cmp.i6.i84 = icmp eq i32 %asmresult.i.i83, 0
  br i1 %cmp.i6.i84, label %if.end.i.i95, label %land.lhs.true.i.i85.if.then11.i.i98_crit_edge, !prof !76

land.lhs.true.i.i85.if.then11.i.i98_crit_edge:    ; preds = %land.lhs.true.i.i85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i98

if.end.i.i95:                                     ; preds = %land.lhs.true.i.i85
  %call.i.i.i86 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %lastino, i32 noundef 8) #13
  %28 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i87 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i.i87 to ptr
  %cpu_domain.i.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i88) #7, !srcloc !77
  %and.i.i.i.i89 = and i32 %30, -13
  %or.i.i.i.i90 = or i32 %and.i.i.i.i89, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i90) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i91 = call i32 @arm_copy_from_user(ptr noundef nonnull %lastino, ptr noundef %26, i32 noundef 8) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i91)
  %tobool4.not.i.i94 = icmp eq i32 %call1.i.i.i91, 0
  br i1 %tobool4.not.i.i94, label %if.end14, label %if.end.i.i95.if.then11.i.i98_crit_edge, !prof !76

if.end.i.i95.if.then11.i.i98_crit_edge:           ; preds = %if.end.i.i95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i98

if.then11.i.i98:                                  ; preds = %if.end.i.i95.if.then11.i.i98_crit_edge, %land.lhs.true.i.i85.if.then11.i.i98_crit_edge, %if.end10.if.then11.i.i98_crit_edge
  %res.0.i.i93131 = phi i32 [ %call1.i.i.i91, %if.end.i.i95.if.then11.i.i98_crit_edge ], [ 8, %if.end10.if.then11.i.i98_crit_edge ], [ 8, %land.lhs.true.i.i85.if.then11.i.i98_crit_edge ]
  %sub.i.i96 = sub i32 8, %res.0.i.i93131
  %add.ptr.i.i97 = getelementptr i8, ptr %lastino, i32 %sub.i.i96
  %31 = call ptr @memset(ptr %add.ptr.i.i97, i32 0, i32 %res.0.i.i93131)
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.i95
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp = icmp slt i32 %33, 1
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %if.end14
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %cmp17 = icmp eq ptr %35, null
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %ubuffer21 = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 2
  %36 = ptrtoint ptr %ubuffer21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %ubuffer21, align 8
  %icount23 = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 4
  %37 = ptrtoint ptr %icount23 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %33, ptr %icount23, align 8
  %38 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %cmd, label %if.else34 [
    i32 -1072670617, label %if.then25
    i32 -1072670618, label %if.then30
  ]

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %39 = ptrtoint ptr %lastino to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %lastino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %tobool26.not = icmp eq i64 %40, 0
  %add = add i64 %40, 1
  %spec.select = select i1 %tobool26.not, i64 0, i64 %add
  %startino = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 3
  %41 = ptrtoint ptr %startino to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %spec.select, ptr %startino, align 8
  %call27 = call i32 @xfs_inumbers(ptr noundef nonnull %breq, ptr noundef nonnull @xfs_fsinumbers_fmt) #13
  %42 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %startino, align 8
  %sub = add i64 %43, -1
  %44 = ptrtoint ptr %lastino to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %sub, ptr %lastino, align 8
  br label %if.end46

if.then30:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %lastino to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %lastino, align 8
  %startino31 = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 3
  %47 = ptrtoint ptr %startino31 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %startino31, align 8
  %48 = ptrtoint ptr %icount23 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %icount23, align 8
  %call33 = call i32 @xfs_bulkstat_one(ptr noundef nonnull %breq, ptr noundef nonnull @xfs_fsbulkstat_one_fmt) #13
  br label %if.end46

if.else34:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %49 = ptrtoint ptr %lastino to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %lastino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %tobool35.not = icmp eq i64 %50, 0
  %add37 = add i64 %50, 1
  %spec.select77 = select i1 %tobool35.not, i64 0, i64 %add37
  %startino41 = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 3
  %51 = ptrtoint ptr %startino41 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %spec.select77, ptr %startino41, align 8
  %call42 = call i32 @xfs_bulkstat(ptr noundef nonnull %breq, ptr noundef nonnull @xfs_fsbulkstat_one_fmt) #13
  %52 = ptrtoint ptr %startino41 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %startino41, align 8
  %sub44 = add i64 %53, -1
  %54 = ptrtoint ptr %lastino to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %sub44, ptr %lastino, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else34, %if.then30, %if.then25
  %error.0 = phi i32 [ %call27, %if.then25 ], [ %call33, %if.then30 ], [ %call42, %if.else34 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool47.not = icmp eq i32 %error.0, 0
  br i1 %tobool47.not, label %if.end49, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end49:                                         ; preds = %if.end46
  %55 = ptrtoint ptr %bulkreq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bulkreq, align 4
  %cmp51.not = icmp eq ptr %56, null
  br i1 %cmp51.not, label %if.end49.if.end56_crit_edge, label %if.end8.i.i104

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.end8.i.i104:                                   ; preds = %if.end49
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i105 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i105, label %if.end8.i.i104.cleanup_crit_edge, label %if.end.i.i108

if.end8.i.i104.cleanup_crit_edge:                 ; preds = %if.end8.i.i104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i108:                                    ; preds = %if.end8.i.i104
  %57 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %56, i32 8, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i106 = extractvalue { i32, i32 } %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i106)
  %cmp.i6.i107 = icmp eq i32 %asmresult.i.i106, 0
  br i1 %cmp.i6.i107, label %copy_to_user.exit, label %if.end.i.i108.cleanup_crit_edge

if.end.i.i108.cleanup_crit_edge:                  ; preds = %if.end.i.i108
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i108
  %call.i.i.i109 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %lastino, i32 noundef 8) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %56, ptr noundef nonnull %lastino, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool54.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool54.not, label %copy_to_user.exit.if.end56_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit.if.end56_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.end56:                                         ; preds = %copy_to_user.exit.if.end56_crit_edge, %if.end49.if.end56_crit_edge
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %6, align 4
  %cmp57.not = icmp eq ptr %59, null
  br i1 %cmp57.not, label %if.end56.if.end64_crit_edge, label %land.lhs.true58

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

land.lhs.true58:                                  ; preds = %if.end56
  %ocount60 = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 5
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i115 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i115, label %land.lhs.true58.cleanup_crit_edge, label %if.end.i.i118

land.lhs.true58.cleanup_crit_edge:                ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i118:                                    ; preds = %land.lhs.true58
  %60 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %59, i32 4, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i116 = extractvalue { i32, i32 } %60, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i116)
  %cmp.i6.i117 = icmp eq i32 %asmresult.i.i116, 0
  br i1 %cmp.i6.i117, label %copy_to_user.exit123, label %if.end.i.i118.cleanup_crit_edge

if.end.i.i118.cleanup_crit_edge:                  ; preds = %if.end.i.i118
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit123:                             ; preds = %if.end.i.i118
  %call.i.i.i119 = call zeroext i1 @__kasan_check_read(ptr noundef %ocount60, i32 noundef 4) #13
  %call.i12.i.i120 = call i32 @arm_copy_to_user(ptr noundef nonnull %59, ptr noundef %ocount60, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i120)
  %tobool62.not = icmp eq i32 %call.i12.i.i120, 0
  br i1 %tobool62.not, label %copy_to_user.exit123.if.end64_crit_edge, label %copy_to_user.exit123.cleanup_crit_edge

copy_to_user.exit123.cleanup_crit_edge:           ; preds = %copy_to_user.exit123
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit123.if.end64_crit_edge:          ; preds = %copy_to_user.exit123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.end64:                                         ; preds = %copy_to_user.exit123.if.end64_crit_edge, %if.end56.if.end64_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %copy_to_user.exit123.cleanup_crit_edge, %if.end.i.i118.cleanup_crit_edge, %land.lhs.true58.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i108.cleanup_crit_edge, %if.end8.i.i104.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11.i.i98, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64 ], [ -1, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ %error.0, %if.end46.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit123.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i98 ], [ -14, %if.end8.i.i104.cleanup_crit_edge ], [ -14, %if.end.i.i108.cleanup_crit_edge ], [ -14, %land.lhs.true58.cleanup_crit_edge ], [ -14, %if.end.i.i118.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lastino) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %breq) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bulkreq) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioc_bulkstat(ptr nocapture noundef readonly %file, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  %hdr = alloca %struct.xfs_bulk_ireq, align 8
  %breq = alloca %struct.xfs_ibulk, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -312
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hdr) #13
  %4 = call ptr @memset(ptr %hdr, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %breq) #13
  %5 = getelementptr inbounds i8, ptr %breq, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 32)
  %7 = ptrtoint ptr %breq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %breq, align 8
  %mnt_userns = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 1
  %f_path.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %8 = ptrtoint ptr %f_path.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_path.i, align 8
  %mnt_userns.i.i = getelementptr inbounds %struct.vfsmount, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mnt_userns.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %mnt_userns.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !96
  %12 = ptrtoint ptr %mnt_userns to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %mnt_userns, align 4
  %call4 = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 66
  %13 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %m_opstate.i, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not = icmp eq i32 %15, 0
  br i1 %tobool.i.not, label %if.end8.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 64, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr, i32 noundef 64) #13
  %17 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %19, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr, ptr noundef %arg, i32 noundef 64) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i13 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.0.i.i13
  %add.ptr.i.i = getelementptr i8, ptr %hdr, i32 %sub.i.i
  %20 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i13)
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.i
  %bulkstat = getelementptr inbounds %struct.xfs_bulkstat_req, ptr %arg, i32 0, i32 1
  %call12 = call fastcc i32 @xfs_bulk_ireq_setup(ptr noundef %3, ptr noundef nonnull %hdr, ptr noundef nonnull %breq, ptr noundef %bulkstat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call12)
  %cmp = icmp eq i32 %call12, -125
  br i1 %cmp, label %if.end11.if.end8.i.i4_crit_edge, label %if.end14

if.end11.if.end8.i.i4_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i4

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp15 = icmp slt i32 %call12, 0
  br i1 %cmp15, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %call18 = call i32 @xfs_bulkstat(ptr noundef nonnull %breq, ptr noundef nonnull @xfs_bulkstat_fmt) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.if.end8.i.i4_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end17.if.end8.i.i4_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i4

if.end8.i.i4:                                     ; preds = %if.end17.if.end8.i.i4_crit_edge, %if.end11.if.end8.i.i4_crit_edge
  %startino.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 3
  %21 = ptrtoint ptr %startino.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %startino.i, align 8
  %23 = ptrtoint ptr %hdr to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %hdr, align 8
  %ocount.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 5
  %24 = ptrtoint ptr %ocount.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ocount.i, align 4
  %ocount1.i = getelementptr inbounds %struct.xfs_bulk_ireq, ptr %hdr, i32 0, i32 3
  %26 = ptrtoint ptr %ocount1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ocount1.i, align 8
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i5 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i5, label %if.end8.i.i4.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i4.cleanup_crit_edge:                   ; preds = %if.end8.i.i4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i4
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i9 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hdr, i32 noundef 64) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %hdr, i32 noundef 64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool24.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool24.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i4.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call12, %if.end14.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i4.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %breq) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hdr) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioc_inumbers(ptr noundef %mp, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  %hdr = alloca %struct.xfs_bulk_ireq, align 8
  %breq = alloca %struct.xfs_ibulk, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hdr) #13
  %0 = call ptr @memset(ptr %hdr, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %breq) #13
  %1 = call ptr @memset(ptr %breq, i32 0, i32 40)
  %2 = ptrtoint ptr %breq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mp, ptr %breq, align 8
  %call = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %3 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %m_opstate.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %if.end8.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 64, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr, i32 noundef 64) #13
  %7 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr, ptr noundef %arg, i32 noundef 64) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end8, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i13 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.0.i.i13
  %add.ptr.i.i = getelementptr i8, ptr %hdr, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i13)
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i
  %inumbers = getelementptr inbounds %struct.xfs_inumbers_req, ptr %arg, i32 0, i32 1
  %call9 = call fastcc i32 @xfs_bulk_ireq_setup(ptr noundef %mp, ptr noundef nonnull %hdr, ptr noundef nonnull %breq, ptr noundef %inumbers)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call9)
  %cmp = icmp eq i32 %call9, -125
  br i1 %cmp, label %if.end8.if.end8.i.i4_crit_edge, label %if.end11

if.end8.if.end8.i.i4_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i4

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp12 = icmp slt i32 %call9, 0
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %call15 = call i32 @xfs_inumbers(ptr noundef nonnull %breq, ptr noundef nonnull @xfs_inumbers_fmt) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.if.end8.i.i4_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14.if.end8.i.i4_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i4

if.end8.i.i4:                                     ; preds = %if.end14.if.end8.i.i4_crit_edge, %if.end8.if.end8.i.i4_crit_edge
  %startino.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 3
  %11 = ptrtoint ptr %startino.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %startino.i, align 8
  %13 = ptrtoint ptr %hdr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %hdr, align 8
  %ocount.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 5
  %14 = ptrtoint ptr %ocount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ocount.i, align 4
  %ocount1.i = getelementptr inbounds %struct.xfs_bulk_ireq, ptr %hdr, i32 0, i32 3
  %16 = ptrtoint ptr %ocount1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ocount1.i, align 8
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i5 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i5, label %if.end8.i.i4.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i4.cleanup_crit_edge:                   ; preds = %if.end8.i.i4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i4
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i9 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %hdr, i32 noundef 64) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %hdr, i32 noundef 64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool21.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool21.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i4.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then11.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ %call9, %if.end11.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i4.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %breq) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hdr) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioc_fsgeometry(ptr noundef %mp, ptr noundef %arg, i32 noundef %struct_version) unnamed_addr #4 align 64 {
entry:
  %fsgeo = alloca %struct.xfs_fsop_geom, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %fsgeo) #13
  %0 = call ptr @memset(ptr %fsgeo, i32 255, i32 256)
  call void @xfs_fs_geometry(ptr noundef %mp, ptr noundef nonnull %fsgeo, i32 noundef %struct_version) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %struct_version)
  %1 = icmp slt i32 %struct_version, 5
  br i1 %1, label %entry.if.then.i.i.i_crit_edge, label %if.else3

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

if.else3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @xfs_fsop_geom_health(ptr noundef %mp, ptr noundef nonnull %fsgeo) #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else3, %entry.if.then.i.i.i_crit_edge
  %len.0 = phi i32 [ 256, %if.else3 ], [ 112, %entry.if.then.i.i.i_crit_edge ]
  call void @__check_object_size(ptr noundef nonnull %fsgeo, i32 noundef %len.0, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %2 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 %len.0, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fsgeo, i32 noundef %len.0) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %fsgeo, i32 noundef %len.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ -14, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %phi.sel, %if.then2.i.i ], [ -14, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %fsgeo) #13
  ret i32 %n.addr.0.i
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioc_ag_geometry(ptr noundef %mp, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  %ageo = alloca %struct.xfs_ag_geometry, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ageo) #13
  %0 = call ptr @memset(ptr %ageo, i32 255, i32 128)
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 128, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ageo, i32 noundef 128) #13
  %2 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ageo, ptr noundef %arg, i32 noundef 128) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i31 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 128, %entry.if.then11.i.i_crit_edge ], [ 128, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 128, %res.0.i.i31
  %add.ptr.i.i = getelementptr i8, ptr %ageo, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i31)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %ag_flags = getelementptr inbounds %struct.xfs_ag_geometry, ptr %ageo, i32 0, i32 7
  %6 = ptrtoint ptr %ag_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ag_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ag_reserved = getelementptr inbounds %struct.xfs_ag_geometry, ptr %ageo, i32 0, i32 8
  %call4 = call ptr @memchr_inv(ptr noundef %ag_reserved, i32 noundef 0, i32 noundef 96) #13
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %ageo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ageo, align 8
  %call8 = call i32 @xfs_ag_get_geometry(ptr noundef %mp, i32 noundef %9, ptr noundef nonnull %ageo) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end8.i.i22, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i22:                                    ; preds = %if.end7
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i23 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i23, label %if.end8.i.i22.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i22.cleanup_crit_edge:                  ; preds = %if.end8.i.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i22
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i27 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ageo, i32 noundef 128) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %ageo, i32 noundef 128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool13.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i22.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i22.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ageo) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioc_fsgetxattra(ptr noundef %ip, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  %fa = alloca %struct.fileattr, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fa) #13
  %0 = call ptr @memset(ptr %fa, i32 255, i32 28)
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 8) #13
  call fastcc void @xfs_fill_fsxattr(ptr noundef %ip, i32 noundef 1, ptr noundef nonnull %fa)
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 8) #13
  %call = call i32 @copy_fsxattr_to_user(ptr noundef nonnull %fa, ptr noundef %arg) #13
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fa) #13
  ret i32 %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioc_getbmap(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  %bmx = alloca %struct.getbmapx, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %bmx) #13
  %0 = call ptr @memset(ptr %bmx, i32 0, i32 48)
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 -1071622100, label %sw.bb
    i32 -1071622106, label %entry.if.then.i.i.i_crit_edge
    i32 -1071622088, label %sw.bb2
  ]

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %bmv_iflags = getelementptr inbounds %struct.getbmapx, ptr %bmx, i32 0, i32 5
  %2 = ptrtoint ptr %bmv_iflags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %bmv_iflags, align 8
  br label %if.then.i.i.i

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb2, %sw.bb, %entry.if.then.i.i.i_crit_edge
  %cmp.i = phi i1 [ true, %sw.bb ], [ true, %entry.if.then.i.i.i_crit_edge ], [ false, %sw.bb2 ]
  %recsize.0 = phi i32 [ 32, %sw.bb ], [ 32, %entry.if.then.i.i.i_crit_edge ], [ 48, %sw.bb2 ]
  call void @__check_object_size(ptr noundef nonnull %bmx, i32 noundef %recsize.0, i1 noundef zeroext false) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.then.i.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.then11.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %3 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 %recsize.0, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bmx, i32 noundef %recsize.0) #13
  %4 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %bmx, ptr noundef %arg, i32 noundef %recsize.0) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i_crit_edge
  %res.0.i.i69 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %recsize.0, %if.then.i.i.i.if.then11.i.i_crit_edge ], [ %recsize.0, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %recsize.0, %res.0.i.i69
  %add.ptr.i.i = getelementptr i8, ptr %bmx, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i69)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %bmv_count = getelementptr inbounds %struct.getbmapx, ptr %bmx, i32 0, i32 3
  %8 = ptrtoint ptr %bmv_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bmv_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp slt i32 %9, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %div = udiv i32 2147483647, %recsize.0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %div)
  %cmp6.not = icmp ult i32 %9, %div
  br i1 %cmp6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %10 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 32) #13
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end8.cleanup_crit_edge, label %kvcalloc.exit, !prof !80

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

kvcalloc.exit:                                    ; preds = %if.end8
  %12 = extractvalue { i32, i1 } %10, 0
  %call.i.i.i64 = call noalias ptr @kvmalloc_node(i32 noundef %12, i32 noundef 3520, i32 noundef -1) #17
  %tobool11.not = icmp eq ptr %call.i.i.i64, null
  br i1 %tobool11.not, label %kvcalloc.exit.cleanup_crit_edge, label %if.end13

kvcalloc.exit.cleanup_crit_edge:                  ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end13:                                         ; preds = %kvcalloc.exit
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %13 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %f_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 -312
  %call16 = call i32 @xfs_getbmap(ptr noundef %add.ptr.i, ptr noundef nonnull %bmx, ptr noundef nonnull %call.i.i.i64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then.i.i.i56, label %if.end13.out_free_buf_crit_edge

if.end13.out_free_buf_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

if.then.i.i.i56:                                  ; preds = %if.end13
  call void @__check_object_size(ptr noundef nonnull %bmx, i32 noundef %recsize.0, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i57 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i57, label %if.then.i.i.i56.out_free_buf_crit_edge, label %copy_to_user.exit

if.then.i.i.i56.out_free_buf_crit_edge:           ; preds = %if.then.i.i.i56
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

copy_to_user.exit:                                ; preds = %if.then.i.i.i56
  %call.i.i.i62 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bmx, i32 noundef %recsize.0) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %bmx, i32 noundef %recsize.0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool21.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool21.not, label %for.cond.preheader, label %copy_to_user.exit.out_free_buf_crit_edge

copy_to_user.exit.out_free_buf_crit_edge:         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

for.cond.preheader:                               ; preds = %copy_to_user.exit
  %bmv_entries = getelementptr inbounds %struct.getbmapx, ptr %bmx, i32 0, i32 4
  %15 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bmv_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2481 = icmp sgt i32 %16, 0
  br i1 %cmp2481, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.out_free_buf_crit_edge

for.cond.preheader.out_free_buf_crit_edge:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %arg.addr.085.pn = phi ptr [ %arg.addr.084, %if.end28.for.body_crit_edge ], [ %arg, %for.cond.preheader.for.body_crit_edge ]
  %i.082 = phi i32 [ %inc, %if.end28.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arg.addr.084 = getelementptr i8, ptr %arg.addr.085.pn, i32 %recsize.0
  %add.ptr25 = getelementptr %struct.kgetbmap, ptr %call.i.i.i64, i32 %i.082
  %17 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr25, align 8
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1420) #13
  %19 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i66 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i66 to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !77
  %and.i.i = and i32 %21, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %22 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %arg.addr.084, i64 %18, i32 -1226833921) #13, !srcloc !97
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.out_free_buf_crit_edge

for.body.out_free_buf_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

lor.lhs.false.i:                                  ; preds = %for.body
  %bmv_block.i = getelementptr inbounds %struct.getbmapx, ptr %arg.addr.084, i32 0, i32 1
  %bmv_block7.i = getelementptr %struct.kgetbmap, ptr %call.i.i.i64, i32 %i.082, i32 1
  %23 = ptrtoint ptr %bmv_block7.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bmv_block7.i, align 8
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1421) #13
  %25 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i155.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i155.i to ptr
  %cpu_domain.i.i156.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i156.i) #7, !srcloc !77
  %and.i157.i = and i32 %27, -13
  %or.i158.i = or i32 %and.i157.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i158.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %28 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %bmv_block.i, i64 %24, i32 -1226833921) #13, !srcloc !98
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool19.not.i = icmp eq i32 %28, 0
  br i1 %tobool19.not.i, label %lor.lhs.false20.i, label %lor.lhs.false.i.out_free_buf_crit_edge

lor.lhs.false.i.out_free_buf_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

lor.lhs.false20.i:                                ; preds = %lor.lhs.false.i
  %bmv_length.i = getelementptr inbounds %struct.getbmapx, ptr %arg.addr.084, i32 0, i32 2
  %bmv_length25.i = getelementptr %struct.kgetbmap, ptr %call.i.i.i64, i32 %i.082, i32 2
  %29 = ptrtoint ptr %bmv_length25.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %bmv_length25.i, align 8
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1422) #13
  %31 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i159.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i159.i to ptr
  %cpu_domain.i.i160.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i160.i) #7, !srcloc !77
  %and.i161.i = and i32 %33, -13
  %or.i162.i = or i32 %and.i161.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i162.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %34 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %bmv_length.i, i64 %30, i32 -1226833921) #13, !srcloc !99
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool37.not.i = icmp eq i32 %34, 0
  br i1 %tobool37.not.i, label %lor.lhs.false38.i, label %lor.lhs.false20.i.out_free_buf_crit_edge

lor.lhs.false20.i.out_free_buf_crit_edge:         ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

lor.lhs.false38.i:                                ; preds = %lor.lhs.false20.i
  %bmv_count.i = getelementptr inbounds %struct.getbmapx, ptr %arg.addr.084, i32 0, i32 3
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1423) #13
  %35 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i163.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i163.i to ptr
  %cpu_domain.i.i164.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i164.i) #7, !srcloc !77
  %and.i165.i = and i32 %37, -13
  %or.i166.i = or i32 %and.i165.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i166.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %38 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %bmv_count.i, i32 0, i32 -1226833921) #13, !srcloc !100
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool54.not.i = icmp eq i32 %38, 0
  br i1 %tobool54.not.i, label %lor.lhs.false55.i, label %lor.lhs.false38.i.out_free_buf_crit_edge

lor.lhs.false38.i.out_free_buf_crit_edge:         ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

lor.lhs.false55.i:                                ; preds = %lor.lhs.false38.i
  %bmv_entries.i = getelementptr inbounds %struct.getbmapx, ptr %arg.addr.084, i32 0, i32 4
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1424) #13
  %39 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i167.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i167.i to ptr
  %cpu_domain.i.i168.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 4
  %41 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i168.i) #7, !srcloc !77
  %and.i169.i = and i32 %41, -13
  %or.i170.i = or i32 %and.i169.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i170.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %42 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %bmv_entries.i, i32 0, i32 -1226833921) #13, !srcloc !101
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool71.not.i = icmp eq i32 %42, 0
  br i1 %tobool71.not.i, label %if.end.i, label %lor.lhs.false55.i.out_free_buf_crit_edge

lor.lhs.false55.i.out_free_buf_crit_edge:         ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

if.end.i:                                         ; preds = %lor.lhs.false55.i
  br i1 %cmp.i, label %if.end.i.if.end28_crit_edge, label %if.end73.i

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end73.i:                                       ; preds = %if.end.i
  %bmv_iflags.i = getelementptr inbounds %struct.getbmapx, ptr %arg.addr.084, i32 0, i32 5
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1428) #13
  %43 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i171.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i171.i to ptr
  %cpu_domain.i.i172.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 4
  %45 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i172.i) #7, !srcloc !77
  %and.i173.i = and i32 %45, -13
  %or.i174.i = or i32 %and.i173.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i174.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %46 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %bmv_iflags.i, i32 0, i32 -1226833921) #13, !srcloc !102
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool89.not.i = icmp eq i32 %46, 0
  br i1 %tobool89.not.i, label %lor.lhs.false90.i, label %if.end73.i.out_free_buf_crit_edge

if.end73.i.out_free_buf_crit_edge:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

lor.lhs.false90.i:                                ; preds = %if.end73.i
  %bmv_oflags.i = getelementptr inbounds %struct.getbmapx, ptr %arg.addr.084, i32 0, i32 6
  %bmv_oflags95.i = getelementptr %struct.kgetbmap, ptr %call.i.i.i64, i32 %i.082, i32 3
  %47 = ptrtoint ptr %bmv_oflags95.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bmv_oflags95.i, align 8
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1429) #13
  %49 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i175.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i175.i to ptr
  %cpu_domain.i.i176.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 4
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i176.i) #7, !srcloc !77
  %and.i177.i = and i32 %51, -13
  %or.i178.i = or i32 %and.i177.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i178.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %52 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %bmv_oflags.i, i32 %48, i32 -1226833921) #13, !srcloc !103
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool107.not.i = icmp eq i32 %52, 0
  br i1 %tobool107.not.i, label %lor.lhs.false108.i, label %lor.lhs.false90.i.out_free_buf_crit_edge

lor.lhs.false90.i.out_free_buf_crit_edge:         ; preds = %lor.lhs.false90.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

lor.lhs.false108.i:                               ; preds = %lor.lhs.false90.i
  %bmv_unused1.i = getelementptr inbounds %struct.getbmapx, ptr %arg.addr.084, i32 0, i32 7
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1430) #13
  %53 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i179.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i179.i to ptr
  %cpu_domain.i.i180.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 4
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i180.i) #7, !srcloc !77
  %and.i181.i = and i32 %55, -13
  %or.i182.i = or i32 %and.i181.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i182.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %56 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %bmv_unused1.i, i32 0, i32 -1226833921) #13, !srcloc !104
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool124.not.i = icmp eq i32 %56, 0
  br i1 %tobool124.not.i, label %xfs_getbmap_format.exit, label %lor.lhs.false108.i.out_free_buf_crit_edge

lor.lhs.false108.i.out_free_buf_crit_edge:        ; preds = %lor.lhs.false108.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

xfs_getbmap_format.exit:                          ; preds = %lor.lhs.false108.i
  %bmv_unused2.i = getelementptr inbounds %struct.getbmapx, ptr %arg.addr.084, i32 0, i32 8
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1431) #13
  %57 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i183.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i183.i to ptr
  %cpu_domain.i.i184.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 4
  %59 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i184.i) #7, !srcloc !77
  %and.i185.i = and i32 %59, -13
  %or.i186.i = or i32 %and.i185.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i186.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %60 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %bmv_unused2.i, i32 0, i32 -1226833921) #13, !srcloc !105
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool141.not.i = icmp eq i32 %60, 0
  br i1 %tobool141.not.i, label %xfs_getbmap_format.exit.if.end28_crit_edge, label %xfs_getbmap_format.exit.out_free_buf_crit_edge

xfs_getbmap_format.exit.out_free_buf_crit_edge:   ; preds = %xfs_getbmap_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

xfs_getbmap_format.exit.if.end28_crit_edge:       ; preds = %xfs_getbmap_format.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end28:                                         ; preds = %xfs_getbmap_format.exit.if.end28_crit_edge, %if.end.i.if.end28_crit_edge
  %inc = add nuw nsw i32 %i.082, 1
  %61 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bmv_entries, align 4
  %cmp24 = icmp slt i32 %inc, %62
  br i1 %cmp24, label %if.end28.for.body_crit_edge, label %if.end28.out_free_buf_crit_edge

if.end28.out_free_buf_crit_edge:                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free_buf

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

out_free_buf:                                     ; preds = %if.end28.out_free_buf_crit_edge, %xfs_getbmap_format.exit.out_free_buf_crit_edge, %lor.lhs.false108.i.out_free_buf_crit_edge, %lor.lhs.false90.i.out_free_buf_crit_edge, %if.end73.i.out_free_buf_crit_edge, %lor.lhs.false55.i.out_free_buf_crit_edge, %lor.lhs.false38.i.out_free_buf_crit_edge, %lor.lhs.false20.i.out_free_buf_crit_edge, %lor.lhs.false.i.out_free_buf_crit_edge, %for.body.out_free_buf_crit_edge, %for.cond.preheader.out_free_buf_crit_edge, %copy_to_user.exit.out_free_buf_crit_edge, %if.then.i.i.i56.out_free_buf_crit_edge, %if.end13.out_free_buf_crit_edge
  %error.0 = phi i32 [ %call16, %if.end13.out_free_buf_crit_edge ], [ -14, %copy_to_user.exit.out_free_buf_crit_edge ], [ -14, %if.then.i.i.i56.out_free_buf_crit_edge ], [ 0, %for.cond.preheader.out_free_buf_crit_edge ], [ -14, %xfs_getbmap_format.exit.out_free_buf_crit_edge ], [ 0, %if.end28.out_free_buf_crit_edge ], [ -14, %lor.lhs.false55.i.out_free_buf_crit_edge ], [ -14, %lor.lhs.false38.i.out_free_buf_crit_edge ], [ -14, %lor.lhs.false20.i.out_free_buf_crit_edge ], [ -14, %lor.lhs.false.i.out_free_buf_crit_edge ], [ -14, %for.body.out_free_buf_crit_edge ], [ -14, %lor.lhs.false108.i.out_free_buf_crit_edge ], [ -14, %lor.lhs.false90.i.out_free_buf_crit_edge ], [ -14, %if.end73.i.out_free_buf_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i64) #13
  br label %cleanup

cleanup:                                          ; preds = %out_free_buf, %kvcalloc.exit.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_free_buf ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ -12, %kvcalloc.exit.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -12, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %bmx) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioc_getfsmap(ptr nocapture noundef readonly %ip, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  %xhead = alloca %struct.xfs_fsmap_head, align 8
  %head = alloca %struct.fsmap_head, align 8
  %last_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xhead) #13
  %0 = call ptr @memset(ptr %xhead, i32 0, i32 96)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %head) #13
  %1 = call ptr @memset(ptr %head, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_flags) #13
  %2 = ptrtoint ptr %last_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %last_flags, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 192, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %head, i32 noundef 192) #13
  %4 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %head, ptr noundef %arg, i32 noundef 192) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i200 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 192, %entry.if.then11.i.i_crit_edge ], [ 192, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 192, %res.0.i.i200
  %add.ptr.i.i = getelementptr i8, ptr %head, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i200)
  br label %cleanup111

if.end:                                           ; preds = %if.end.i.i
  %fmh_reserved = getelementptr inbounds %struct.fsmap_head, ptr %head, i32 0, i32 4
  %call1 = call ptr @memchr_inv(ptr noundef %fmh_reserved, i32 noundef 0, i32 noundef 48) #13
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.cleanup111_crit_edge

if.end.cleanup111_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup111

lor.lhs.false:                                    ; preds = %if.end
  %fmh_keys = getelementptr inbounds %struct.fsmap_head, ptr %head, i32 0, i32 5
  %fmr_reserved = getelementptr inbounds %struct.fsmap_head, ptr %head, i32 0, i32 5, i32 0, i32 6
  %call4 = call ptr @memchr_inv(ptr noundef %fmr_reserved, i32 noundef 0, i32 noundef 24) #13
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup111_crit_edge

lor.lhs.false.cleanup111_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup111

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr inbounds %struct.fsmap_head, ptr %head, i32 0, i32 5, i32 1
  %fmr_reserved9 = getelementptr inbounds %struct.fsmap_head, ptr %head, i32 0, i32 5, i32 1, i32 6
  %call11 = call ptr @memchr_inv(ptr noundef %fmr_reserved9, i32 noundef 0, i32 noundef 24) #13
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false6.cleanup111_crit_edge

lor.lhs.false6.cleanup111_crit_edge:              ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup111

if.end14:                                         ; preds = %lor.lhs.false6
  %fmh_count = getelementptr inbounds %struct.fsmap_head, ptr %head, i32 0, i32 2
  %8 = ptrtoint ptr %fmh_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmh_count, align 8
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 2048)
  %11 = shl nuw nsw i32 %10, 6
  %call.i.i.i192 = call noalias ptr @kvmalloc_node(i32 noundef %11, i32 noundef 3520, i32 noundef -1) #17
  %tobool16.not = icmp eq ptr %call.i.i.i192, null
  br i1 %tobool16.not, label %kvcalloc.exit197, label %if.end14.if.end29_crit_edge

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

kvcalloc.exit197:                                 ; preds = %if.end14
  %12 = ptrtoint ptr %fmh_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmh_count, align 8
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 64)
  %15 = shl nuw nsw i32 %14, 6
  %call.i.i.i194 = call noalias ptr @kvmalloc_node(i32 noundef %15, i32 noundef 3520, i32 noundef -1) #17
  %tobool26.not = icmp eq ptr %call.i.i.i194, null
  br i1 %tobool26.not, label %kvcalloc.exit197.cleanup111_crit_edge, label %kvcalloc.exit197.if.end29_crit_edge

kvcalloc.exit197.if.end29_crit_edge:              ; preds = %kvcalloc.exit197
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

kvcalloc.exit197.cleanup111_crit_edge:            ; preds = %kvcalloc.exit197
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup111

if.end29:                                         ; preds = %kvcalloc.exit197.if.end29_crit_edge, %if.end14.if.end29_crit_edge
  %count.0 = phi i32 [ %10, %if.end14.if.end29_crit_edge ], [ %14, %kvcalloc.exit197.if.end29_crit_edge ]
  %recs.0 = phi ptr [ %call.i.i.i192, %if.end14.if.end29_crit_edge ], [ %call.i.i.i194, %kvcalloc.exit197.if.end29_crit_edge ]
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %head, align 8
  %18 = ptrtoint ptr %xhead to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %xhead, align 8
  %fmh_keys31 = getelementptr inbounds %struct.xfs_fsmap_head, ptr %xhead, i32 0, i32 4
  call void @xfs_fsmap_to_internal(ptr noundef %fmh_keys31, ptr noundef %fmh_keys) #13
  %arrayidx36 = getelementptr inbounds %struct.xfs_fsmap_head, ptr %xhead, i32 0, i32 4, i32 1
  call void @xfs_fsmap_to_internal(ptr noundef %arrayidx36, ptr noundef %arrayidx8) #13
  %19 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ip, align 8
  call fastcc void @trace_xfs_getfsmap_low_key(ptr noundef %20, ptr noundef %fmh_keys31)
  %21 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ip, align 8
  call fastcc void @trace_xfs_getfsmap_high_key(ptr noundef %22, ptr noundef %arrayidx36)
  %fmh_entries = getelementptr inbounds %struct.fsmap_head, ptr %head, i32 0, i32 3
  %23 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %fmh_entries, align 4
  %fmh_entries46 = getelementptr inbounds %struct.xfs_fsmap_head, ptr %xhead, i32 0, i32 3
  %fmh_count55 = getelementptr inbounds %struct.xfs_fsmap_head, ptr %xhead, i32 0, i32 2
  %fmh_oflags = getelementptr inbounds %struct.xfs_fsmap_head, ptr %xhead, i32 0, i32 1
  %fmh_oflags61 = getelementptr inbounds %struct.fsmap_head, ptr %head, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end29
  %24 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmh_entries, align 4
  %arrayidx45 = getelementptr %struct.fsmap_head, ptr %arg, i32 0, i32 6, i32 %25
  %26 = ptrtoint ptr %fmh_entries46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %fmh_entries46, align 4
  %27 = ptrtoint ptr %fmh_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmh_count, align 8
  %sub = sub i32 %28, %25
  %29 = call i32 @llvm.umin.i32(i32 %count.0, i32 %sub)
  %30 = ptrtoint ptr %fmh_count55 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %fmh_count55, align 8
  %31 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ip, align 8
  %call57 = call i32 @xfs_getfsmap(ptr noundef %32, ptr noundef nonnull %xhead, ptr noundef %recs.0) #13
  %33 = zext i32 %call57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %call57, label %do.body.out_free_crit_edge [
    i32 0, label %do.body.sw.epilog_crit_edge
    i32 -125, label %sw.bb58
  ]

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.body.out_free_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

sw.bb58:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb58, %do.body.sw.epilog_crit_edge
  %done.1.off0 = phi i1 [ false, %sw.bb58 ], [ true, %do.body.sw.epilog_crit_edge ]
  %34 = ptrtoint ptr %fmh_entries46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fmh_entries46, align 4
  %36 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fmh_entries, align 4
  %add = add i32 %37, %35
  store i32 %add, ptr %fmh_entries, align 4
  %38 = ptrtoint ptr %fmh_oflags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fmh_oflags, align 4
  %40 = ptrtoint ptr %fmh_oflags61 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %fmh_oflags61, align 4
  %41 = ptrtoint ptr %fmh_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fmh_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp63 = icmp eq i32 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp66 = icmp eq i32 %35, 0
  %or.cond = select i1 %cmp63, i1 true, i1 %cmp66
  br i1 %or.cond, label %do.end, label %if.end68

if.end68:                                         ; preds = %sw.epilog
  %mul = shl i32 %35, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end68
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_free_crit_edge, label %if.then27.i.i, !prof !76

land.rhs16.i.i.out_free_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %out_free

if.then.i.i.i:                                    ; preds = %if.end68
  call void @__check_object_size(ptr noundef %recs.0, i32 noundef %mul, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i154 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i154, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i157

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i157:                                    ; preds = %if.then.i.i.i
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx45, i32 %mul, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i155 = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i155)
  %cmp.i6.i156 = icmp eq i32 %asmresult.i.i155, 0
  br i1 %cmp.i6.i156, label %if.then2.i.i, label %if.end.i.i157.copy_to_user.exit_crit_edge

if.end.i.i157.copy_to_user.exit_crit_edge:        ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i158 = call zeroext i1 @__kasan_check_read(ptr noundef %recs.0, i32 noundef %mul) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arrayidx45, ptr noundef %recs.0, i32 noundef %mul) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i157.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i159 = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i157.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i159)
  %tobool71.not = icmp eq i32 %n.addr.0.i159, 0
  br i1 %tobool71.not, label %do.cond, label %copy_to_user.exit.out_free_crit_edge

copy_to_user.exit.out_free_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

do.cond:                                          ; preds = %copy_to_user.exit
  %44 = ptrtoint ptr %fmh_entries46 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fmh_entries46, align 4
  %sub75 = add i32 %45, -1
  %arrayidx76 = getelementptr %struct.fsmap, ptr %recs.0, i32 %sub75
  %fmr_flags = getelementptr %struct.fsmap, ptr %recs.0, i32 %sub75, i32 1
  %46 = ptrtoint ptr %fmr_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fmr_flags, align 4
  %48 = ptrtoint ptr %last_flags to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %last_flags, align 4
  call void @xfs_fsmap_to_internal(ptr noundef %fmh_keys31, ptr noundef %arrayidx76) #13
  %49 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ip, align 8
  call fastcc void @trace_xfs_getfsmap_low_key(ptr noundef %50, ptr noundef %fmh_keys31)
  br i1 %done.1.off0, label %land.lhs.truethread-pre-split, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %51 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fmh_entries, align 4
  %53 = ptrtoint ptr %fmh_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fmh_count, align 8
  %cmp86 = icmp ult i32 %52, %54
  br i1 %cmp86, label %land.rhs.do.body_crit_edge, label %land.rhs.if.end8.i.i180_crit_edge

land.rhs.if.end8.i.i180_crit_edge:                ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i180

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %sw.epilog
  br i1 %done.1.off0, label %do.end.land.lhs.true_crit_edge, label %do.end.if.end8.i.i180_crit_edge

do.end.if.end8.i.i180_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i180

do.end.land.lhs.true_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true

land.lhs.truethread-pre-split:                    ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  %55 = ptrtoint ptr %fmh_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr = load i32, ptr %fmh_count, align 8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.truethread-pre-split, %do.end.land.lhs.true_crit_edge
  %56 = phi i32 [ %.pr, %land.lhs.truethread-pre-split ], [ %42, %do.end.land.lhs.true_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp89.not = icmp eq i32 %56, 0
  br i1 %cmp89.not, label %land.lhs.true.if.end8.i.i180_crit_edge, label %land.lhs.true90

land.lhs.true.if.end8.i.i180_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i180

land.lhs.true90:                                  ; preds = %land.lhs.true
  %57 = ptrtoint ptr %fmh_entries to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fmh_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp92.not = icmp eq i32 %58, 0
  br i1 %cmp92.not, label %land.lhs.true90.if.end8.i.i180_crit_edge, label %if.then93

land.lhs.true90.if.end8.i.i180_crit_edge:         ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i180

if.then93:                                        ; preds = %land.lhs.true90
  %59 = ptrtoint ptr %last_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %last_flags, align 4
  %or = or i32 %60, 32
  store i32 %or, ptr %last_flags, align 4
  %sub96 = add i32 %58, -1
  %fmr_flags98 = getelementptr %struct.fsmap_head, ptr %arg, i32 0, i32 6, i32 %sub96, i32 1
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i166 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i166, label %if.then93.out_free_crit_edge, label %if.end.i.i170

if.then93.out_free_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

if.end.i.i170:                                    ; preds = %if.then93
  %61 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %fmr_flags98, i32 4, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i168 = extractvalue { i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i168)
  %cmp.i6.i169 = icmp eq i32 %asmresult.i.i168, 0
  br i1 %cmp.i6.i169, label %copy_to_user.exit175, label %if.end.i.i170.out_free_crit_edge

if.end.i.i170.out_free_crit_edge:                 ; preds = %if.end.i.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

copy_to_user.exit175:                             ; preds = %if.end.i.i170
  %call.i.i.i171 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %last_flags, i32 noundef 4) #13
  %call.i12.i.i172 = call i32 @arm_copy_to_user(ptr noundef %fmr_flags98, ptr noundef nonnull %last_flags, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i172)
  %tobool100.not = icmp eq i32 %call.i12.i.i172, 0
  br i1 %tobool100.not, label %copy_to_user.exit175.if.end8.i.i180_crit_edge, label %copy_to_user.exit175.out_free_crit_edge

copy_to_user.exit175.out_free_crit_edge:          ; preds = %copy_to_user.exit175
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

copy_to_user.exit175.if.end8.i.i180_crit_edge:    ; preds = %copy_to_user.exit175
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i180

if.end8.i.i180:                                   ; preds = %copy_to_user.exit175.if.end8.i.i180_crit_edge, %land.lhs.true90.if.end8.i.i180_crit_edge, %land.lhs.true.if.end8.i.i180_crit_edge, %do.end.if.end8.i.i180_crit_edge, %land.rhs.if.end8.i.i180_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i182 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i182, label %if.end8.i.i180.out_free_crit_edge, label %copy_to_user.exit191

if.end8.i.i180.out_free_crit_edge:                ; preds = %if.end8.i.i180
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_free

copy_to_user.exit191:                             ; preds = %if.end8.i.i180
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i187 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %head, i32 noundef 192) #13
  %call.i12.i.i188 = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %head, i32 noundef 192) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i188)
  %tobool108.not = icmp eq i32 %call.i12.i.i188, 0
  %spec.select = select i1 %tobool108.not, i32 0, i32 -14
  br label %out_free

out_free:                                         ; preds = %copy_to_user.exit191, %if.end8.i.i180.out_free_crit_edge, %copy_to_user.exit175.out_free_crit_edge, %if.end.i.i170.out_free_crit_edge, %if.then93.out_free_crit_edge, %copy_to_user.exit.out_free_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out_free_crit_edge, %do.body.out_free_crit_edge
  %error.4 = phi i32 [ -14, %copy_to_user.exit175.out_free_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_free_crit_edge ], [ -14, %if.then93.out_free_crit_edge ], [ -14, %if.end.i.i170.out_free_crit_edge ], [ -14, %if.end8.i.i180.out_free_crit_edge ], [ %spec.select, %copy_to_user.exit191 ], [ %call57, %do.body.out_free_crit_edge ], [ -14, %copy_to_user.exit.out_free_crit_edge ]
  call void @kvfree(ptr noundef %recs.0) #13
  br label %cleanup111

cleanup111:                                       ; preds = %out_free, %kvcalloc.exit197.cleanup111_crit_edge, %lor.lhs.false6.cleanup111_crit_edge, %lor.lhs.false.cleanup111_crit_edge, %if.end.cleanup111_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %error.4, %out_free ], [ -22, %lor.lhs.false6.cleanup111_crit_edge ], [ -22, %lor.lhs.false.cleanup111_crit_edge ], [ -22, %if.end.cleanup111_crit_edge ], [ -12, %kvcalloc.exit197.cleanup111_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_flags) #13
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %head) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xhead) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_ioc_scrub_metadata(ptr noundef %file, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  %scrub = alloca %struct.xfs_scrub_metadata, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %scrub) #13
  %0 = call ptr @memset(ptr %scrub, i32 255, i32 64)
  %call = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 64, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %scrub, i32 noundef 64) #13
  %2 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %scrub, ptr noundef %arg, i32 noundef 64) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i27 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.0.i.i27
  %add.ptr.i.i = getelementptr i8, ptr %scrub, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i27)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %call4 = call i32 @xfs_scrub_metadata(ptr noundef %file, ptr noundef nonnull %scrub) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8.i.i18, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i18:                                    ; preds = %if.end3
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i19 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i19, label %if.end8.i.i18.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i18.cleanup_crit_edge:                  ; preds = %if.end8.i.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i18
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i23 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %scrub, i32 noundef 64) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %scrub, i32 noundef 64) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool9.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool9.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i18.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end8.i.i18.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %scrub) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attrlist_by_handle(ptr nocapture noundef readonly %parfilp, ptr noundef %p) unnamed_addr #4 align 64 {
entry:
  %al_hreq = alloca %struct.xfs_fsop_attrlist_handlereq, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %al_hreq) #13
  %0 = call ptr @memset(ptr %al_hreq, i32 255, i32 56)
  %call = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %p, i32 56, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %al_hreq, i32 noundef 56) #13
  %2 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %al_hreq, ptr noundef %p, i32 noundef 56) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i20 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 56, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 56, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 56, %res.0.i.i20
  %add.ptr.i.i = getelementptr i8, ptr %al_hreq, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i20)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %call4 = call fastcc ptr @xfs_handlereq_to_dentry(ptr noundef %parfilp, ptr noundef nonnull %al_hreq)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call4, i32 0, i32 5
  %7 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 -312
  %buffer = getelementptr inbounds %struct.xfs_fsop_attrlist_handlereq, ptr %al_hreq, i32 0, i32 4
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %buflen = getelementptr inbounds %struct.xfs_fsop_attrlist_handlereq, ptr %al_hreq, i32 0, i32 3
  %11 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buflen, align 4
  %flags = getelementptr inbounds %struct.xfs_fsop_attrlist_handlereq, ptr %al_hreq, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %pos = getelementptr inbounds %struct.xfs_fsop_attrlist_handlereq, ptr %p, i32 0, i32 1
  %call11 = call i32 @xfs_ioc_attr_list(ptr noundef %add.ptr.i, ptr noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef %pos)
  call void @dput(ptr noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ %call11, %if.end8 ], [ -1, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %al_hreq) #13
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_attrmulti_by_handle(ptr noundef %parfilp, ptr noundef %arg) unnamed_addr #4 align 64 {
entry:
  %am_hreq = alloca %struct.xfs_fsop_attrmulti_handlereq, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %am_hreq) #13
  %0 = call ptr @memset(ptr %am_hreq, i32 255, i32 36)
  %call = tail call zeroext i1 @capable(i32 noundef 21) #13
  br i1 %call, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 36, i32 -1226833920) #16, !srcloc !75
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !76

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %am_hreq, i32 noundef 36) #13
  %2 = call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !77
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %am_hreq, ptr noundef %arg, i32 noundef 36) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #13, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !76

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i77 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 36, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 36, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 36, %res.0.i.i77
  %add.ptr.i.i = getelementptr i8, ptr %am_hreq, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i77)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %opcount = getelementptr inbounds %struct.xfs_fsop_attrmulti_handlereq, ptr %am_hreq, i32 0, i32 1
  %6 = ptrtoint ptr %opcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 89478484, i32 %7)
  %cmp = icmp ugt i32 %7, 89478484
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %call6 = call fastcc ptr @xfs_handlereq_to_dentry(ptr noundef %parfilp, ptr noundef nonnull %am_hreq)
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %opcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opcount, align 4
  %mul = mul i32 %10, 24
  %11 = add i32 %mul, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %11)
  %12 = icmp ult i32 %11, -65536
  br i1 %12, label %if.end10.out_dput_crit_edge, label %if.end15

if.end10.out_dput_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_dput

if.end15:                                         ; preds = %if.end10
  %ops16 = getelementptr inbounds %struct.xfs_fsop_attrmulti_handlereq, ptr %am_hreq, i32 0, i32 2
  %13 = ptrtoint ptr %ops16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops16, align 4
  %call17 = call ptr @memdup_user(ptr noundef %14, i32 noundef %mul) #13
  %cmp.i74 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then19, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end15
  %15 = ptrtoint ptr %opcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %opcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2380.not = icmp eq i32 %16, 0
  br i1 %cmp2380.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call6, i32 0, i32 5
  br label %for.body

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %call17 to i32
  br label %out_dput

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d_inode.i, align 8
  %arrayidx = getelementptr %struct.xfs_attr_multiop, ptr %call17, i32 %i.081
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %am_attrname = getelementptr %struct.xfs_attr_multiop, ptr %call17, i32 %i.081, i32 2
  %22 = ptrtoint ptr %am_attrname to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %am_attrname, align 4
  %am_attrvalue = getelementptr %struct.xfs_attr_multiop, ptr %call17, i32 %i.081, i32 3
  %24 = ptrtoint ptr %am_attrvalue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %am_attrvalue, align 4
  %am_length = getelementptr %struct.xfs_attr_multiop, ptr %call17, i32 %i.081, i32 4
  %am_flags = getelementptr %struct.xfs_attr_multiop, ptr %call17, i32 %i.081, i32 5
  %26 = ptrtoint ptr %am_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %am_flags, align 4
  %call29 = call i32 @xfs_ioc_attrmulti_one(ptr noundef %parfilp, ptr noundef %19, i32 noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %am_length, i32 noundef %27)
  %am_error = getelementptr %struct.xfs_attr_multiop, ptr %call17, i32 %i.081, i32 1
  %28 = ptrtoint ptr %am_error to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call29, ptr %am_error, align 4
  %inc = add nuw i32 %i.081, 1
  %29 = ptrtoint ptr %opcount to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %opcount, align 4
  %cmp23 = icmp ult i32 %inc, %30
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %31 = ptrtoint ptr %ops16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %for.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !76

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %for.end
  call void @__check_object_size(ptr noundef %call17, i32 noundef %mul, i1 noundef zeroext true) #13
  call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i68 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i68, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i71

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.end.i.i71:                                     ; preds = %if.then.i.i.i
  %33 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %32, i32 %mul, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i69 = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i69)
  %cmp.i6.i70 = icmp eq i32 %asmresult.i.i69, 0
  br i1 %cmp.i6.i70, label %if.then2.i.i, label %if.end.i.i71.copy_to_user.exit_crit_edge

if.end.i.i71.copy_to_user.exit_crit_edge:         ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #15
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i72 = call zeroext i1 @__kasan_check_read(ptr noundef %call17, i32 noundef %mul) #13
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %32, ptr noundef %call17, i32 noundef %mul) #13
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i71.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i73 = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i71.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i73)
  %tobool33.not = icmp eq i32 %n.addr.0.i73, 0
  %spec.select = select i1 %tobool33.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  %34 = phi i32 [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @kfree(ptr noundef %call17) #13
  br label %out_dput

out_dput:                                         ; preds = %copy_to_user.exit.thread, %if.then19, %if.end10.out_dput_crit_edge
  %error.1 = phi i32 [ %17, %if.then19 ], [ %34, %copy_to_user.exit.thread ], [ -7, %if.end10.out_dput_crit_edge ]
  call void @dput(ptr noundef %call6) #13
  br label %cleanup

cleanup:                                          ; preds = %out_dput, %if.then8, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then8 ], [ %error.1, %out_dput ], [ -1, %entry.cleanup_crit_edge ], [ -7, %if.end3.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %am_hreq) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_fs_counts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reserve_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_growfs_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_growfs_log(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_growfs_rt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_fs_goingdown(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_errortag_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_errortag_clearall(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_fs_eofblocks_from_user(ptr noundef %src, ptr nocapture noundef %dst) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %eof_flags = getelementptr inbounds %struct.xfs_fs_eofblocks, ptr %src, i32 0, i32 1
  %2 = ptrtoint ptr %eof_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eof_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %tobool.not = icmp ult i32 %3, 32
  br i1 %tobool.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end2:                                          ; preds = %if.end
  %pad32 = getelementptr inbounds %struct.xfs_fs_eofblocks, ptr %src, i32 0, i32 5
  %call = tail call ptr @memchr_inv(ptr noundef %pad32, i32 noundef 0, i32 noundef 4) #13
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end2.return_crit_edge

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %if.end2
  %pad64 = getelementptr inbounds %struct.xfs_fs_eofblocks, ptr %src, i32 0, i32 7
  %call4 = tail call ptr @memchr_inv(ptr noundef %pad64, i32 noundef 0, i32 noundef 96) #13
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end7, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end7:                                          ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dst, align 8
  %5 = ptrtoint ptr %eof_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eof_flags, align 4
  %and9 = and i32 %6, 1
  store i32 %and9, ptr %dst, align 8
  %7 = load i32, ptr %eof_flags, align 4
  %and15 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end7.if.end20_crit_edge, label %if.then17

if.end7.if.end20_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then17:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %or19 = or i32 %and9, 2
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or19, ptr %dst, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end7.if.end20_crit_edge
  %9 = ptrtoint ptr %eof_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eof_flags, align 4
  %and22 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst, align 8
  %or26 = or i32 %12, 4
  store i32 %or26, ptr %dst, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %13 = ptrtoint ptr %eof_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eof_flags, align 4
  %and29 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end34_crit_edge, label %if.then31

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst, align 8
  %or33 = or i32 %16, 8
  store i32 %or33, ptr %dst, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %17 = ptrtoint ptr %eof_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %eof_flags, align 4
  %and36 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end41_crit_edge, label %if.then38

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst, align 8
  %or40 = or i32 %20, 16
  store i32 %or40, ptr %dst, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34.if.end41_crit_edge
  %eof_prid = getelementptr inbounds %struct.xfs_fs_eofblocks, ptr %src, i32 0, i32 4
  %21 = ptrtoint ptr %eof_prid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %eof_prid, align 8
  %icw_prid = getelementptr inbounds %struct.xfs_icwalk, ptr %dst, i32 0, i32 3
  %23 = ptrtoint ptr %icw_prid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %icw_prid, align 4
  %eof_min_file_size = getelementptr inbounds %struct.xfs_fs_eofblocks, ptr %src, i32 0, i32 6
  %24 = ptrtoint ptr %eof_min_file_size to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %eof_min_file_size, align 8
  %icw_min_file_size = getelementptr inbounds %struct.xfs_icwalk, ptr %dst, i32 0, i32 4
  %26 = ptrtoint ptr %icw_min_file_size to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %icw_min_file_size, align 8
  %icw_uid = getelementptr inbounds %struct.xfs_icwalk, ptr %dst, i32 0, i32 1
  %27 = ptrtoint ptr %icw_uid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %icw_uid, align 4
  %28 = ptrtoint ptr %eof_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eof_flags, align 4
  %and43 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.if.end56_crit_edge, label %if.then45

if.end41.if.end56_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then45:                                        ; preds = %if.end41
  %30 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 99
  %34 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %35, i32 0, i32 25
  %36 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %user_ns, align 4
  %eof_uid = getelementptr inbounds %struct.xfs_fs_eofblocks, ptr %src, i32 0, i32 2
  %38 = ptrtoint ptr %eof_uid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eof_uid, align 8
  %call50 = tail call i32 @make_kuid(ptr noundef %37, i32 noundef %39) #13
  %40 = ptrtoint ptr %icw_uid to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call50, ptr %icw_uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call50)
  %cmp.i.not = icmp eq i32 %call50, -1
  br i1 %cmp.i.not, label %if.then45.return_crit_edge, label %if.then45.if.end56_crit_edge

if.then45.if.end56_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then45.return_crit_edge:                       ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end56:                                         ; preds = %if.then45.if.end56_crit_edge, %if.end41.if.end56_crit_edge
  %icw_gid = getelementptr inbounds %struct.xfs_icwalk, ptr %dst, i32 0, i32 2
  %41 = ptrtoint ptr %icw_gid to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %icw_gid, align 8
  %42 = ptrtoint ptr %eof_flags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %eof_flags, align 4
  %and60 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end56.if.end81_crit_edge, label %if.then62

if.end56.if.end81_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then62:                                        ; preds = %if.end56
  %44 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i109 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i109 to ptr
  %task71 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %task71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %task71, align 8
  %cred72 = getelementptr inbounds %struct.task_struct, ptr %47, i32 0, i32 99
  %48 = ptrtoint ptr %cred72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cred72, align 16
  %user_ns73 = getelementptr inbounds %struct.cred, ptr %49, i32 0, i32 25
  %50 = ptrtoint ptr %user_ns73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user_ns73, align 4
  %eof_gid = getelementptr inbounds %struct.xfs_fs_eofblocks, ptr %src, i32 0, i32 3
  %52 = ptrtoint ptr %eof_gid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %eof_gid, align 4
  %call74 = tail call i32 @make_kgid(ptr noundef %51, i32 noundef %53) #13
  %54 = ptrtoint ptr %icw_gid to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call74, ptr %icw_gid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call74)
  %cmp.i110.not = icmp eq i32 %call74, -1
  br i1 %cmp.i110.not, label %if.then62.return_crit_edge, label %if.then62.if.end81_crit_edge

if.then62.if.end81_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.then62.return_crit_edge:                       ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end81:                                         ; preds = %if.then62.if.end81_crit_edge, %if.end56.if.end81_crit_edge
  br label %return

return:                                           ; preds = %if.end81, %if.then62.return_crit_edge, %if.then45.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end2.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end81 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end2.return_crit_edge ], [ -22, %if.then45.return_crit_edge ], [ -22, %if.then62.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_ioc_free_eofblocks(ptr noundef %mp, ptr noundef %icw, i32 noundef %caller_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ioc_free_eofblocks, i32 0, i32 1), ptr blockaddress(@trace_xfs_ioc_free_eofblocks, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !106
  %call42 = tail call i32 @__traceiter_xfs_ioc_free_eofblocks(ptr noundef null, ptr noundef %mp, ptr noundef %icw, i32 noundef %caller_ip) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ioc_free_eofblocks, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_ioc_free_eofblocks, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_ioc_free_eofblocks.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_ioc_free_eofblocks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 4050, ptr noundef nonnull @.str.12) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sb_start_write(ptr noundef %sb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr1.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 49) #13
  %dep_map.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0) #13
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %1) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !108
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 35, ptr noundef nonnull @.str.17) #13
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i_crit_edge
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i.i.i, label %do.body7.i.i, label %if.else.i.i, !prof !76

do.body7.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !109
  %read_count.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  %add21.i.i = add i32 %20, 1
  store i32 %add21.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !110
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then41.i.i, label %do.body7.i.i.do.end43.i.i_crit_edge, !prof !80

do.body7.i.i.do.end43.i.i_crit_edge:              ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end43.i.i

if.then41.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end43.i.i

do.end43.i.i:                                     ; preds = %if.then41.i.i, %do.body7.i.i.do.end43.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #13, !srcloc !111
  br label %__sb_start_write.exit

if.else.i.i:                                      ; preds = %rcu_sync_is_idle.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call50.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i, i1 noundef zeroext false) #13
  br label %__sb_start_write.exit

__sb_start_write.exit:                            ; preds = %if.else.i.i, %do.end43.i.i
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !112
  %22 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i58.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i58.i.i to ptr
  %preempt_count.i.i59.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i59.i.i, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i59.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_blockgc_free_space(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sb_end_write(ptr noundef %sb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr1.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2
  %dep_map.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 5
  %0 = tail call ptr @llvm.returnaddress(i32 0) #13
  %1 = ptrtoint ptr %0 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %1) #13
  %2 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !113
  %call.i.i.i = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b8.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i, label %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_sync_is_idle.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 35, ptr noundef nonnull @.str.17) #13
  br label %rcu_sync_is_idle.exit.i.i

rcu_sync_is_idle.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_sync_is_idle.exit.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i_crit_edge
  %6 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool7.not.i.i.i, label %do.body3.i.i, label %do.end49.i.i, !prof !76

do.body3.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !109
  %read_count.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %read_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_count.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !110
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool28.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool28.not.i.i, label %if.then37.i.i, label %do.body3.i.i.do.end39.i.i_crit_edge, !prof !80

do.body3.i.i.do.end39.i.i_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39.i.i

if.then37.i.i:                                    ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end39.i.i

do.end39.i.i:                                     ; preds = %if.then37.i.i, %do.body3.i.i.do.end39.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #13, !srcloc !111
  br label %__sb_end_write.exit

do.end49.i.i:                                     ; preds = %rcu_sync_is_idle.exit.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !114
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !109
  %read_count75.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %read_count75.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_count75.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !110
  %and.i.i123.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i)
  %tobool92.not.i.i = icmp eq i32 %and.i.i123.i.i, 0
  br i1 %tobool92.not.i.i, label %if.then101.i.i, label %do.end49.i.i.do.end104.i.i_crit_edge, !prof !80

do.end49.i.i.do.end104.i.i_crit_edge:             ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end104.i.i

if.then101.i.i:                                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end104.i.i

do.end104.i.i:                                    ; preds = %if.then101.i.i, %do.end49.i.i.do.end104.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #13, !srcloc !111
  %writer.i.i = getelementptr %struct.super_block, ptr %sb, i32 0, i32 32, i32 2, i32 0, i32 2
  %call111.i.i = tail call i32 @rcuwait_wake_up(ptr noundef %writer.i.i) #13
  br label %__sb_end_write.exit

__sb_end_write.exit:                              ; preds = %do.end104.i.i, %do.end39.i.i
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !115
  %36 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_attr_list_full(ptr noundef %ctx) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_full, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_list_full, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !116
  %call42 = tail call i32 @__traceiter_xfs_attr_list_full(ptr noundef null, ptr noundef %ctx) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !117
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_full, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_full, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_list_full.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_list_full.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 136, ptr noundef nonnull @.str.12) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
define internal fastcc void @trace_xfs_attr_list_add(ptr noundef %ctx) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_add, i32 0, i32 1), ptr blockaddress(@trace_xfs_attr_list_add, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !118
  %call42 = tail call i32 @__traceiter_xfs_attr_list_add(ptr noundef null, ptr noundef %ctx) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !119
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_add, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_attr_list_add, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_attr_list_add.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_attr_list_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 137, ptr noundef nonnull @.str.12) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
declare dso_local i32 @__traceiter_xfs_attr_list_full(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_attr_list_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_attr_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_forget_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_xflags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ip2xflags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ioctl_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_mark_dontcache(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc_ichange(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i16 @xfs_flags2diflags(ptr nocapture noundef readonly %ip, i32 noundef %xflags) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %0 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_diflags, align 2
  %2 = and i16 %1, 2
  %3 = trunc i32 %xflags to i16
  %4 = and i16 %3, 24824
  %5 = or i16 %4, %2
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %6 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_vnode.i, align 8
  %8 = and i16 %7, -4096
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %8, label %entry.if.end101_crit_edge [
    i16 16384, label %if.then50
    i16 -32768, label %if.then85
  ]

entry.if.end101_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %10 = and i16 %3, 5888
  %11 = or i16 %10, %5
  br label %if.end101

if.then85:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %12 = and i16 %3, 2049
  %13 = or i16 %12, %5
  br label %if.end101

if.end101:                                        ; preds = %if.then85, %if.then50, %entry.if.end101_crit_edge
  %di_flags.11 = phi i16 [ %13, %if.then85 ], [ %11, %if.then50 ], [ %5, %entry.if.end101_crit_edge ]
  ret i16 %di_flags.11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_inode_validate_extsize(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i64 @xfs_flags2diflags2(ptr nocapture noundef readonly %ip, i32 noundef %xflags) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %0 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_diflags2, align 8
  %and = and i64 %1, 10
  %and1 = lshr i32 %xflags, 15
  %2 = and i32 %and1, 1
  %and2 = lshr i32 %xflags, 14
  %3 = and i32 %and2, 4
  %4 = or i32 %3, %2
  %5 = zext i32 %4 to i64
  %6 = or i64 %and, %5
  ret i64 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_inode_validate_cowextsize(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_diflags_to_iflags(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ichgtime(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_file_ioctl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sync_sb_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_update_secondary_sbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inumbers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bulkstat_one(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bulkstat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_bulk_ireq_setup(ptr nocapture noundef readonly %mp, ptr noundef %hdr, ptr nocapture noundef %breq, ptr noundef %ubuffer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %icount = getelementptr inbounds %struct.xfs_bulk_ireq, ptr %hdr, i32 0, i32 2
  %0 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %icount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.xfs_bulk_ireq, ptr %hdr, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %tobool.not = icmp ult i32 %3, 4
  br i1 %tobool.not, label %lor.lhs.false1, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %reserved = getelementptr inbounds %struct.xfs_bulk_ireq, ptr %hdr, i32 0, i32 5
  %call = tail call ptr @memchr_inv(ptr noundef %reserved, i32 noundef 0, i32 noundef 40) #13
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false1.return_crit_edge

lor.lhs.false1.return_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %4 = ptrtoint ptr %hdr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %hdr, align 8
  %startino = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 3
  %6 = ptrtoint ptr %startino to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %startino, align 8
  %ubuffer3 = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 2
  %7 = ptrtoint ptr %ubuffer3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ubuffer, ptr %ubuffer3, align 8
  %8 = ptrtoint ptr %icount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %icount, align 4
  %icount5 = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 4
  %10 = ptrtoint ptr %icount5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %icount5, align 8
  %ocount = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 5
  %11 = ptrtoint ptr %ocount to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %ocount, align 4
  %flags6 = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 6
  %12 = ptrtoint ptr %flags6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags6, align 8
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and8 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end19_crit_edge, label %if.then10

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then10:                                        ; preds = %if.end
  %and12 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then10.return_crit_edge

if.then10.return_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end15:                                         ; preds = %if.then10
  %15 = ptrtoint ptr %hdr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %hdr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %16)
  %cond = icmp eq i64 %16, 1
  br i1 %cond, label %sw.bb, label %if.end15.return_crit_edge

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %sb_rootino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 7
  %17 = ptrtoint ptr %sb_rootino to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sb_rootino, align 8
  %19 = ptrtoint ptr %hdr to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %hdr, align 8
  %20 = ptrtoint ptr %icount5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %icount5, align 8
  br label %if.end19

if.end19:                                         ; preds = %sw.bb, %if.end.if.end19_crit_edge
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and21 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %agno58 = getelementptr inbounds %struct.xfs_bulk_ireq, ptr %hdr, i32 0, i32 4
  %23 = ptrtoint ptr %agno58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %agno58, align 4
  br i1 %tobool22.not, label %if.else57, label %if.then23

if.then23:                                        ; preds = %if.end19
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %25 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sb_agcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp25.not = icmp ult i32 %24, %26
  br i1 %cmp25.not, label %if.end27, label %if.then23.return_crit_edge

if.then23.return_crit_edge:                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end27:                                         ; preds = %if.then23
  %27 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %startino, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %cmp29 = icmp eq i64 %28, 0
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i32 %24 to i64
  %agino_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %29 = ptrtoint ptr %agino_log to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %agino_log, align 8
  %sh_prom = zext i32 %30 to i64
  %shl = shl i64 %conv, %sh_prom
  %31 = ptrtoint ptr %startino to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shl, ptr %startino, align 8
  br label %if.end43

if.else:                                          ; preds = %if.end27
  %agino_log35 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %32 = ptrtoint ptr %agino_log35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %agino_log35, align 8
  %sh_prom36 = zext i32 %33 to i64
  %shr = lshr i64 %28, %sh_prom36
  %conv37 = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv37)
  %cmp39 = icmp ugt i32 %24, %conv37
  br i1 %cmp39, label %if.else.return_crit_edge, label %if.else.if.end43_crit_edge

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end43:                                         ; preds = %if.else.if.end43_crit_edge, %if.then30
  %34 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags6, align 8
  %or45 = or i32 %35, 1
  store i32 %or45, ptr %flags6, align 8
  %36 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %startino, align 8
  %agino_log48 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %38 = ptrtoint ptr %agino_log48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %agino_log48, align 8
  %sh_prom49 = zext i32 %39 to i64
  %shr50 = lshr i64 %37, %sh_prom49
  %conv51 = trunc i64 %shr50 to i32
  %40 = ptrtoint ptr %agno58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %agno58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv51)
  %cmp53 = icmp ult i32 %41, %conv51
  br i1 %cmp53, label %if.end43.return_crit_edge, label %if.end43.if.end62_crit_edge

if.end43.if.end62_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.end43.return_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.else57:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool59.not = icmp eq i32 %24, 0
  br i1 %tobool59.not, label %if.else57.if.end62_crit_edge, label %if.else57.return_crit_edge

if.else57.return_crit_edge:                       ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.else57.if.end62_crit_edge:                     ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.end62:                                         ; preds = %if.else57.if.end62_crit_edge, %if.end43.if.end62_crit_edge
  %42 = ptrtoint ptr %startino to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %startino, align 8
  %agino_log65 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 15
  %44 = ptrtoint ptr %agino_log65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %agino_log65, align 8
  %sh_prom66 = zext i32 %45 to i64
  %shr67 = lshr i64 %43, %sh_prom66
  %conv68 = trunc i64 %shr67 to i32
  %sb_agcount70 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %46 = ptrtoint ptr %sb_agcount70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sb_agcount70, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv68)
  %cmp71.not = icmp ugt i32 %47, %conv68
  %. = select i1 %cmp71.not, i32 0, i32 -125
  br label %return

return:                                           ; preds = %if.end62, %if.else57.return_crit_edge, %if.end43.return_crit_edge, %if.else.return_crit_edge, %if.then23.return_crit_edge, %if.end15.return_crit_edge, %if.then10.return_crit_edge, %lor.lhs.false1.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false1.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ -22, %if.then10.return_crit_edge ], [ -22, %if.end15.return_crit_edge ], [ -22, %if.then23.return_crit_edge ], [ -22, %if.else.return_crit_edge ], [ -125, %if.end43.return_crit_edge ], [ -22, %if.else57.return_crit_edge ], [ %., %if.end62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_bulkstat_fmt(ptr nocapture noundef %breq, ptr noundef %bstat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ubuffer = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 2
  %0 = ptrtoint ptr %ubuffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ubuffer, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.return_crit_edge, label %if.end.i.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 192, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bstat, i32 noundef 192) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %bstat, i32 noundef 192) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %if.end, label %copy_to_user.exit.return_crit_edge

copy_to_user.exit.return_crit_edge:               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %ubuffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ubuffer, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 192
  store ptr %add.ptr.i, ptr %ubuffer, align 8
  %ocount.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 5
  %5 = ptrtoint ptr %ocount.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ocount.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %ocount.i, align 4
  %icount.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 4
  %7 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %icount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %8)
  %cmp.i = icmp eq i32 %inc.i, %8
  %cond.i = select i1 %cmp.i, i32 -125, i32 0
  br label %return

return:                                           ; preds = %if.end, %copy_to_user.exit.return_crit_edge, %if.end.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond.i, %if.end ], [ -14, %copy_to_user.exit.return_crit_edge ], [ -14, %entry.return_crit_edge ], [ -14, %if.end.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_inumbers_fmt(ptr nocapture noundef %breq, ptr noundef %igrp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ubuffer = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 2
  %0 = ptrtoint ptr %ubuffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ubuffer, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 174) #13
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i, label %entry.return_crit_edge, label %if.end.i.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 24, i32 -1226833920) #16, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.return_crit_edge

if.end.i.i.return_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %igrp, i32 noundef 24) #13
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %igrp, i32 noundef 24) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool.not, label %if.end, label %copy_to_user.exit.return_crit_edge

copy_to_user.exit.return_crit_edge:               ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %ubuffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ubuffer, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  store ptr %add.ptr.i, ptr %ubuffer, align 8
  %ocount.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 5
  %5 = ptrtoint ptr %ocount.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ocount.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %ocount.i, align 4
  %icount.i = getelementptr inbounds %struct.xfs_ibulk, ptr %breq, i32 0, i32 4
  %7 = ptrtoint ptr %icount.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %icount.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %8)
  %cmp.i = icmp eq i32 %inc.i, %8
  %cond.i = select i1 %cmp.i, i32 -125, i32 0
  br label %return

return:                                           ; preds = %if.end, %copy_to_user.exit.return_crit_edge, %if.end.i.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %cond.i, %if.end ], [ -14, %copy_to_user.exit.return_crit_edge ], [ -14, %entry.return_crit_edge ], [ -14, %if.end.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_fs_geometry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_fsop_geom_health(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ag_get_geometry(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_fsxattr_to_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_getbmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_fsmap_to_internal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_getfsmap_low_key(ptr noundef %mp, ptr noundef %fsmap) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getfsmap_low_key, i32 0, i32 1), ptr blockaddress(@trace_xfs_getfsmap_low_key, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !120
  %call42 = tail call i32 @__traceiter_xfs_getfsmap_low_key(ptr noundef null, ptr noundef %mp, ptr noundef %fsmap) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !121
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getfsmap_low_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getfsmap_low_key, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_getfsmap_low_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_getfsmap_low_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 3512, ptr noundef nonnull @.str.12) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
define internal fastcc void @trace_xfs_getfsmap_high_key(ptr noundef %mp, ptr noundef %fsmap) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getfsmap_high_key, i32 0, i32 1), ptr blockaddress(@trace_xfs_getfsmap_high_key, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !81

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !76

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !122
  %call42 = tail call i32 @__traceiter_xfs_getfsmap_high_key(ptr noundef null, ptr noundef %mp, ptr noundef %fsmap) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !123
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !76

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getfsmap_high_key, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_getfsmap_high_key, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_getfsmap_high_key.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_xfs_getfsmap_high_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 3513, ptr noundef nonnull @.str.12) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !85
  %31 = tail call i32 @llvm.read_register.i32(metadata !60) #13
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
declare dso_local i32 @xfs_getfsmap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_getfsmap_low_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_getfsmap_high_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_scrub_metadata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_ioc_free_eofblocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !51, !53, !54, !56, !58, !59}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_ioctl.c", i32 189, i32 28}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../fs/xfs/xfs_ioctl.c", i32 1897, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_ioctl.c", i32 1934, i32 10}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/xfs/xfs_ioctl.c", i32 315, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/xfs/xfs_ioctl.c", i32 316, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/xfs/xfs_ioctl.c", i32 317, i32 2}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../fs/xfs/xfs_ioctl.c", i32 318, i32 2}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_ioctl.c", i32 319, i32 2}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../fs/xfs/xfs_trace.h", i32 136, i32 1}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!28 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../fs/xfs/xfs_trace.h", i32 137, i32 1}
!34 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_trace.h", i32 768, i32 1}
!37 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../fs/xfs/xfs_trace.h", i32 766, i32 1}
!40 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_trace.h", i32 3512, i32 1}
!43 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../fs/xfs/xfs_trace.h", i32 3513, i32 1}
!46 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_ioctl.c", i32 1843, i32 28}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_ioctl.c", i32 1850, i32 28}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_trace.h", i32 4050, i32 1}
!53 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"fdget: %agg.result"}
!73 = distinct !{!73, !"fdget"}
!74 = !{i64 2152837329, i64 2152837354}
!75 = !{i64 2152836648, i64 2152836673}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 5332203}
!78 = !{i64 5332400}
!79 = !{i64 2152817633}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2148293538, i64 2148293543, i64 2148293556, i64 2148293600, i64 2148293634, i64 2148293655}
!82 = !{i64 2158085065}
!83 = !{i64 2158085266}
!84 = !{i64 2149995631}
!85 = !{i64 2149996667}
!86 = !{!87}
!87 = distinct !{!87, !88, !"fdget: %agg.result"}
!88 = distinct !{!88, !"fdget"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"fdget: %agg.result"}
!91 = distinct !{!91, !"fdget"}
!92 = !{i64 2166571322, i64 2166571602, i64 2166571936, i64 2166572270}
!93 = !{i64 2166601674, i64 2166601954, i64 2166602288, i64 2166602622}
!94 = !{i64 2158052361}
!95 = !{i64 2158052556}
!96 = !{i64 2153070318}
!97 = !{i64 2166458725, i64 2166459005, i64 2166459339, i64 2166459673}
!98 = !{i64 2166467560, i64 2166467840, i64 2166468174, i64 2166468508}
!99 = !{i64 2166476402, i64 2166476682, i64 2166477016, i64 2166477350}
!100 = !{i64 2166483253, i64 2166483533, i64 2166483867, i64 2166484201}
!101 = !{i64 2166492076, i64 2166492356, i64 2166492690, i64 2166493024}
!102 = !{i64 2166500894, i64 2166501174, i64 2166501508, i64 2166501842}
!103 = !{i64 2166509736, i64 2166510016, i64 2166510350, i64 2166510684}
!104 = !{i64 2166518559, i64 2166518839, i64 2166519173, i64 2166519507}
!105 = !{i64 2166527382, i64 2166527662, i64 2166527996, i64 2166528330}
!106 = !{i64 2165882890}
!107 = !{i64 2165883133}
!108 = !{i64 2153007311}
!109 = !{i64 1070230, i64 1070291}
!110 = !{i64 1072962}
!111 = !{i64 1073247}
!112 = !{i64 2153016161}
!113 = !{i64 2153026115}
!114 = !{i64 2153035610}
!115 = !{i64 2153045087}
!116 = !{i64 2156034644}
!117 = !{i64 2156034849}
!118 = !{i64 2156051188}
!119 = !{i64 2156051391}
!120 = !{i64 2165146665}
!121 = !{i64 2165146886}
!122 = !{i64 2165167860}
!123 = !{i64 2165168083}
