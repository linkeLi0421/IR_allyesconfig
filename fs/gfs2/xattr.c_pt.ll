; ModuleID = '/llk/IR_all_yes/fs/gfs2/xattr.c_pt.bc'
source_filename = "../fs/gfs2/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.gfs2_ea_request = type { ptr, ptr, i32, i32, i32 }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ea_list = type { ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.71, %struct.list_head, %struct.list_head, %union.anon.72 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.71 = type { %struct.list_head }
%union.anon.72 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.77 }
%union.anon.77 = type { i32 }
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
%struct.gfs2_ea_header = type { i32, i32, i8, i8, i8, i8, i32 }
%struct.ea_find = type { i32, ptr, i32, ptr }
%struct.gfs2_ea_location = type { ptr, ptr, ptr }
%struct.ea_set = type { i32, ptr, ptr, ptr, ptr }
%struct.gfs2_rgrp_list = type { i32, i32, ptr, ptr }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
%struct.gfs2_alloc_parms = type { i64, i32, i32, i64 }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.76, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.anon.76 = type { %struct.delayed_work, i64 }
%struct.rhash_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.59 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@gfs2_xattr_trusted_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.5, i32 4, ptr @gfs2_xattr_trusted_list, ptr @gfs2_xattr_get, ptr @gfs2_xattr_set }, [40 x i8] zeroinitializer }, align 32
@gfs2_xattr_user_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.2, i32 1, ptr null, ptr @gfs2_xattr_get, ptr @gfs2_xattr_set }, [40 x i8] zeroinitializer }, align 32
@gfs2_xattr_security_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.4, i32 3, ptr null, ptr @gfs2_xattr_get, ptr @gfs2_xattr_set }, [40 x i8] zeroinitializer }, align 32
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@gfs2_xattr_handlers_max = dso_local global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @gfs2_xattr_trusted_handler, ptr @gfs2_xattr_user_handler, ptr @gfs2_xattr_security_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr null], [40 x i8] zeroinitializer }, align 32
@gfs2_xattr_handlers_min = dso_local global { ptr, [28 x i8] } { ptr getelementptr inbounds ([6 x ptr], ptr @gfs2_xattr_handlers_max, i32 0, i32 1), [28 x i8] zeroinitializer }, align 32
@__func__.ea_foreach = private unnamed_addr constant [11 x i8] c"ea_foreach\00", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/gfs2/xattr.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.ea_foreach_i = private unnamed_addr constant [13 x i8] c"ea_foreach_i\00", align 1
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"magic number\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"system.\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@__func__.gfs2_iter_unstuffed = private unnamed_addr constant [20 x i8] c"gfs2_iter_unstuffed\00", align 1
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"!data_len\00", [22 x i8] zeroinitializer }, align 32
@__func__.ea_write = private unnamed_addr constant [9 x i8] c"ea_write\00", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"GFS2_EA2NEXT(prev) == ea\00", [39 x i8] zeroinitializer }, align 32
@__func__.ea_set_remove_stuffed = private unnamed_addr constant [22 x i8] c"ea_set_remove_stuffed\00", align 1
@__func__.ea_set_block = private unnamed_addr constant [13 x i8] c"ea_set_block\00", align 1
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"GFS2_EA2NEXT(el->el_prev) == el->el_ea\00", [57 x i8] zeroinitializer }, align 32
@__func__.ea_set_remove_unstuffed = private unnamed_addr constant [24 x i8] c"ea_set_remove_unstuffed\00", align 1
@__func__.ea_dealloc_unstuffed = private unnamed_addr constant [21 x i8] c"ea_dealloc_unstuffed\00", align 1
@__func__.ea_dealloc_indirect = private unnamed_addr constant [20 x i8] c"ea_dealloc_indirect\00", align 1
@__func__.ea_dealloc_block = private unnamed_addr constant [17 x i8] c"ea_dealloc_block\00", align 1
@gfs2_xattr_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.ea_list_i = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [16 x i8] zeroinitializer }, align 32
@switch.table.ea_list_i.9 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 7, i32 9, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1801, i64 1802]
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"gfs2_xattr_trusted_handler\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 1485, i32 35 }
@___asan_gen_.13 = private unnamed_addr constant [24 x i8] c"gfs2_xattr_user_handler\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 1465, i32 35 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"gfs2_xattr_security_handler\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 1472, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"gfs2_xattr_handlers_max\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 1493, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"gfs2_xattr_handlers_min\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 1505, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 140, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"../fs/gfs2/util.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 126, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 368, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 372, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 376, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 380, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 728, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 851, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [19 x i8] c"../fs/gfs2/xattr.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 1078, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"switch.table.ea_list_i\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [25 x i8] c"switch.table.ea_list_i.9\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @gfs2_xattr_trusted_handler, ptr @gfs2_xattr_user_handler, ptr @gfs2_xattr_security_handler, ptr @gfs2_xattr_handlers_max, ptr @gfs2_xattr_handlers_min, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.ea_list_i, ptr @switch.table.ea_list_i.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_xattr_trusted_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_xattr_user_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_xattr_security_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_xattr_handlers_max to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_xattr_handlers_min to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ea_list_i to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ea_list_i.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef %buffer, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %er = alloca %struct.gfs2_ea_request, align 4
  %i_gh = alloca %struct.gfs2_holder, align 4
  %ei = alloca %struct.ea_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %er) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_gh) #10
  %2 = call ptr @memset(ptr %i_gh, i32 255, i32 32)
  %3 = call ptr @memset(ptr %er, i32 0, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 3
  %5 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buffer, ptr %5, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %size, ptr %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gl, align 4
  %10 = tail call ptr @llvm.returnaddress(i32 0) #10
  %11 = ptrtoint ptr %10 to i32
  call void @__gfs2_holder_init(ptr noundef %9, i32 noundef 3, i16 noundef zeroext 8, ptr noundef nonnull %i_gh, i32 noundef %11) #10
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %i_gh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_holder_uninit(ptr noundef nonnull %i_gh) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %i_eattr = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %i_eattr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %i_eattr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool6.not = icmp eq i64 %13, 0
  br i1 %tobool6.not, label %if.end5.if.end13_crit_edge, label %if.then7

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ei) #10
  %14 = getelementptr inbounds %struct.ea_list, ptr %ei, i32 0, i32 1
  %15 = ptrtoint ptr %ei to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %er, ptr %ei, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %14, align 4
  %call8 = call fastcc i32 @ea_foreach(ptr noundef %1, ptr noundef nonnull @ea_list_i, ptr noundef nonnull %ei)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end12_crit_edge

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then7.if.end12_crit_edge
  %error.0 = phi i32 [ %call8, %if.then7.if.end12_crit_edge ], [ %18, %if.then10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ei) #10
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end5.if.end13_crit_edge
  %error.1 = phi i32 [ %error.0, %if.end12 ], [ 0, %if.end5.if.end13_crit_edge ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %i_gh) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %gfs2_glock_nq_init.exit
  %retval.0 = phi i32 [ %error.1, %if.end13 ], [ %call.i, %gfs2_glock_nq_init.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_gh) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %er) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ea_foreach(ptr noundef %ip, ptr nocapture noundef readonly %ea_call, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  %eabh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #10
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %eabh) #10
  %1 = ptrtoint ptr %eabh to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %eabh, align 4, !annotation !56
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  %i_eattr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 4
  %4 = ptrtoint ptr %i_eattr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_eattr, align 8
  %call = call i32 @gfs2_meta_read(ptr noundef %3, i64 noundef %5, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %bh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup25_crit_edge

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

if.end:                                           ; preds = %entry
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %6 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bh, align 4
  %call3 = call fastcc i32 @ea_foreach_i(ptr noundef %ip, ptr noundef %9, ptr noundef %ea_call, ptr noundef %data)
  br label %out

if.end4:                                          ; preds = %if.end
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mh_type.i, align 4
  %conv.i = trunc i32 %21 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 18225520
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !57

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @gfs2_meta_check_ii(ptr noundef %13, ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ea_foreach, ptr noundef nonnull @.str, i32 noundef 140) #10
  br label %gfs2_metatype_check_i.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %conv.i)
  %cmp5.not.i = icmp eq i16 %conv.i, 5
  br i1 %cmp5.not.i, label %if.end.i.if.end9_crit_edge, label %if.then13.i, !prof !57

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = call i32 @gfs2_metatype_check_ii(ptr noundef %13, ptr noundef %15, i16 noundef zeroext 5, i16 noundef zeroext %conv.i, ptr noundef nonnull @__func__.ea_foreach, ptr noundef nonnull @.str, i32 noundef 140) #10
  br label %gfs2_metatype_check_i.exit

gfs2_metatype_check_i.exit:                       ; preds = %if.then13.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call14.i, %if.then13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool7.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool7.not, label %gfs2_metatype_check_i.exit.if.end9_crit_edge, label %gfs2_metatype_check_i.exit.out_crit_edge

gfs2_metatype_check_i.exit.out_crit_edge:         ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

gfs2_metatype_check_i.exit.if.end9_crit_edge:     ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %gfs2_metatype_check_i.exit.if.end9_crit_edge, %if.end.i.if.end9_crit_edge
  %22 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 24
  %26 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i48 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 33
  %28 = ptrtoint ptr %s_fs_info.i48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_fs_info.i48, align 16
  %sd_inptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %sd_inptrs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sd_inptrs, align 4
  %add.ptr12 = getelementptr i64, ptr %add.ptr, i32 %31
  %cmp60 = icmp ult ptr %add.ptr, %add.ptr12
  br i1 %cmp60, label %if.end9.for.body_crit_edge, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

for.cond:                                         ; preds = %brelse.exit
  %incdec.ptr = getelementptr i64, ptr %eablk.061, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr12
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end9.for.body_crit_edge
  %eablk.061 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ %add.ptr, %if.end9.for.body_crit_edge ]
  %32 = ptrtoint ptr %eablk.061 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %eablk.061, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool13.not = icmp eq i64 %33, 0
  br i1 %tobool13.not, label %for.body.out_crit_edge, label %if.end15

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %for.body
  %34 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_gl, align 4
  %call17 = call i32 @gfs2_meta_read(ptr noundef %35, i64 noundef %33, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %eabh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end20:                                         ; preds = %if.end15
  %36 = ptrtoint ptr %eabh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %eabh, align 4
  %call21 = call fastcc i32 @ea_foreach_i(ptr noundef %ip, ptr noundef %37, ptr noundef %ea_call, ptr noundef %data)
  %38 = ptrtoint ptr %eabh to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eabh, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end20.brelse.exit_crit_edge, label %if.then.i49

if.end20.brelse.exit_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i49:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %39) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i49, %if.end20.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.cond, label %brelse.exit.out_crit_edge

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %brelse.exit.out_crit_edge, %if.end15.out_crit_edge, %for.body.out_crit_edge, %for.cond.out_crit_edge, %if.end9.out_crit_edge, %gfs2_metatype_check_i.exit.out_crit_edge, %if.then2
  %error.2 = phi i32 [ %call3, %if.then2 ], [ -5, %gfs2_metatype_check_i.exit.out_crit_edge ], [ 0, %if.end9.out_crit_edge ], [ 0, %for.cond.out_crit_edge ], [ 0, %for.body.out_crit_edge ], [ %call17, %if.end15.out_crit_edge ], [ %call21, %brelse.exit.out_crit_edge ]
  %40 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bh, align 4
  %tobool.not.i51 = icmp eq ptr %41, null
  br i1 %tobool.not.i51, label %out.cleanup25_crit_edge, label %if.then.i52

out.cleanup25_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup25

if.then.i52:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %41) #10
  br label %cleanup25

cleanup25:                                        ; preds = %if.then.i52, %out.cleanup25_crit_edge, %entry.cleanup25_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup25_crit_edge ], [ %error.2, %out.cleanup25_crit_edge ], [ %error.2, %if.then.i52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %eabh) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ea_list_i(ptr nocapture noundef readonly %ip, ptr nocapture noundef readnone %bh, ptr nocapture noundef readonly %ea, ptr nocapture noundef readnone %prev, ptr nocapture noundef %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %ea_type = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 3
  %6 = ptrtoint ptr %ea_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ea_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp4 = icmp ugt i8 %7, 3
  br i1 %cmp4, label %land.rhs, label %do.body.do.end16_crit_edge

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

land.rhs:                                         ; preds = %do.body
  %sb_fs_format = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %sb_fs_format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_fs_format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1801, i32 %9)
  %cmp6 = icmp eq i32 %9, 1801
  br i1 %cmp6, label %do.body10, label %land.rhs.do.end16_crit_edge, !prof !58

land.rhs.do.end16_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.body10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 365, 0\0A.popsection", ""() #10, !srcloc !59
  unreachable

do.end16:                                         ; preds = %land.rhs.do.end16_crit_edge, %do.body.do.end16_crit_edge
  %switch.tableidx = add i8 %7, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 4
  br i1 %10, label %switch.lookup, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %do.end16
  %11 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ea_list_i, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %13 = sext i8 %switch.tableidx to i32
  %switch.gep69 = getelementptr inbounds [4 x i32], ptr @switch.table.ea_list_i.9, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load70 = load i32, ptr %switch.gep69, align 4
  %ea_name_len = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 2
  %15 = ptrtoint ptr %ea_name_len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ea_name_len, align 4
  %conv22 = zext i8 %16 to i32
  %add = add nuw nsw i32 %switch.load70, %conv22
  %add23 = add nuw nsw i32 %add, 1
  %er_data_len = getelementptr inbounds %struct.gfs2_ea_request, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %er_data_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %er_data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool24.not = icmp eq i32 %18, 0
  br i1 %tobool24.not, label %switch.lookup.if.end43_crit_edge, label %if.then25

switch.lookup.if.end43_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then25:                                        ; preds = %switch.lookup
  %ei_size = getelementptr inbounds %struct.ea_list, ptr %private, i32 0, i32 1
  %19 = ptrtoint ptr %ei_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ei_size, align 4
  %add26 = add i32 %20, %add23
  call void @__sanitizer_cov_trace_cmp4(i32 %add26, i32 %18)
  %cmp28 = icmp ugt i32 %add26, %18
  br i1 %cmp28, label %if.then25.cleanup_crit_edge, label %if.end31

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %er_data = getelementptr inbounds %struct.gfs2_ea_request, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %er_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %er_data, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %20
  %23 = call ptr @memcpy(ptr %add.ptr, ptr %switch.load, i32 %switch.load70)
  %24 = load ptr, ptr %er_data, align 4
  %25 = ptrtoint ptr %ei_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ei_size, align 4
  %add.ptr35 = getelementptr i8, ptr %24, i32 %26
  %add.ptr36 = getelementptr i8, ptr %add.ptr35, i32 %switch.load70
  %add.ptr37 = getelementptr %struct.gfs2_ea_header, ptr %ea, i32 1
  %27 = ptrtoint ptr %ea_name_len to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ea_name_len, align 4
  %conv39 = zext i8 %28 to i32
  %29 = call ptr @memcpy(ptr %add.ptr36, ptr %add.ptr37, i32 %conv39)
  %30 = load ptr, ptr %er_data, align 4
  %31 = load i32, ptr %ei_size, align 4
  %sub = add i32 %31, %add
  %arrayidx = getelementptr i8, ptr %30, i32 %sub
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.end31, %switch.lookup.if.end43_crit_edge
  %ei_size44 = getelementptr inbounds %struct.ea_list, ptr %private, i32 0, i32 1
  %33 = ptrtoint ptr %ei_size44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ei_size44, align 4
  %add45 = add i32 %34, %add23
  store i32 %add45, ptr %ei_size44, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then25.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end43 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end16.cleanup_crit_edge ], [ -34, %if.then25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_xattr_acl_get(ptr noundef %ip, ptr noundef %name, ptr nocapture noundef writeonly %ppdata) local_unnamed_addr #0 align 64 {
entry:
  %ef.i = alloca %struct.ea_find, align 4
  %el = alloca %struct.gfs2_ea_location, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %el) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ef.i) #10
  %0 = getelementptr inbounds %struct.ea_find, ptr %ef.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ea_find, ptr %ef.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ea_find, ptr %ef.i, i32 0, i32 3
  %3 = ptrtoint ptr %ef.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %ef.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %0, align 4
  %call.i = tail call i32 @strlen(ptr noundef %name) #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call.i, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %el, ptr %2, align 4
  %7 = call ptr @memset(ptr %el, i32 0, i32 12)
  %call3.i = call fastcc i32 @ea_foreach(ptr noundef %ip, ptr noundef nonnull @ea_find_i, ptr noundef nonnull %ef.i) #10
  %8 = call i32 @llvm.smin.i32(i32 %call3.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ef.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %tobool.not = icmp sgt i32 %call3.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.gfs2_ea_location, ptr %el, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %if.end
  %ea_data_len = getelementptr inbounds %struct.gfs2_ea_header, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ea_data_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ea_data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.end3.out_crit_edge, label %if.end8.i

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end8.i:                                        ; preds = %if.end3
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3136) #14
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %if.end8.i.out_crit_edge, label %if.end12

if.end8.i.out_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end12:                                         ; preds = %if.end8.i
  %call13 = call fastcc i32 @gfs2_ea_get_copy(ptr noundef %ip, ptr noundef nonnull %el, ptr noundef nonnull %call9.i, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %out

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %ppdata to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %ppdata, align 4
  br label %out

out:                                              ; preds = %if.else, %if.then15, %if.end8.i.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ -12, %if.end8.i.out_crit_edge ], [ %call13, %if.then15 ], [ %call13, %if.else ], [ 0, %if.end3.out_crit_edge ], [ 0, %if.end.out_crit_edge ]
  %15 = ptrtoint ptr %el to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %el, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %out.cleanup_crit_edge, label %if.then.i29

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i29:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i29, %out.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %entry.cleanup_crit_edge ], [ %error.0, %out.cleanup_crit_edge ], [ %error.0, %if.then.i29 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %el) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gfs2_ea_get_copy(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %el, ptr noundef writeonly %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %el_ea = getelementptr inbounds %struct.gfs2_ea_location, ptr %el, i32 0, i32 1
  %0 = ptrtoint ptr %el_ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %el_ea, align 4
  %ea_data_len = getelementptr inbounds %struct.gfs2_ea_header, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ea_data_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ea_data_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp = icmp ugt i32 %3, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ea_num_ptrs = getelementptr inbounds %struct.gfs2_ea_header, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ea_num_ptrs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ea_num_ptrs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.gfs2_ea_header, ptr %1, i32 1
  %ea_name_len = getelementptr inbounds %struct.gfs2_ea_header, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ea_name_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ea_name_len, align 4
  %conv = zext i8 %7 to i32
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %conv
  %8 = call ptr @memcpy(ptr %data, ptr %add.ptr5, i32 %3)
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i.i, align 16
  %sd_jbsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %sd_jbsize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sd_jbsize.i, align 4
  %add.i = add i32 %3, -1
  %sub.i = add i32 %add.i, %14
  %div.i = udiv i32 %sub.i, %14
  %ea_name_len.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %ea_name_len.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ea_name_len.i, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div.i, i32 4) #10
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %if.end6.gfs2_iter_unstuffed.exit.thread_crit_edge, label %if.end7.i.i.i, !prof !58

if.end6.gfs2_iter_unstuffed.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit.thread

if.end7.i.i.i:                                    ; preds = %if.end6
  %19 = extractvalue { i32, i1 } %17, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3392) #14
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.gfs2_iter_unstuffed.exit.thread_crit_edge, label %if.end.i

if.end7.i.i.i.gfs2_iter_unstuffed.exit.thread_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit.thread

if.end.i:                                         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub.i)
  %cmp29.not.i = icmp ugt i32 %14, %sub.i
  br i1 %cmp29.not.i, label %if.end.i.gfs2_iter_unstuffed.exit.thread30_crit_edge, label %for.body.lr.ph.i

if.end.i.gfs2_iter_unstuffed.exit.thread30_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit.thread30

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %add.ptr.i = getelementptr %struct.gfs2_ea_header, ptr %1, i32 1
  %conv.i = zext i8 %16 to i32
  %add2.i = add nuw nsw i32 %conv.i, 7
  %and.i = and i32 %add2.i, 504
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %x.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end11.i.for.body.i_crit_edge ]
  %dataptrs.030.i = phi ptr [ %add.ptr3.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end11.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_gl.i, align 4
  %22 = ptrtoint ptr %dataptrs.030.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dataptrs.030.i, align 8
  %add.ptr6.i = getelementptr ptr, ptr %call8.i.i.i, i32 %x.031.i
  %call7.i = tail call i32 @gfs2_meta_read(ptr noundef %21, i64 noundef %23, i32 noundef 0, i32 noundef 0, ptr noundef %add.ptr6.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end11.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.031.i)
  %tobool10.not42.i = icmp eq i32 %x.031.i, 0
  br i1 %tobool10.not42.i, label %while.cond.preheader.i.gfs2_iter_unstuffed.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.gfs2_iter_unstuffed.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit

while.body.i:                                     ; preds = %brelse.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %x.143.i = phi i32 [ %dec.i, %brelse.exit.i.while.body.i_crit_edge ], [ %x.031.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add i32 %x.143.i, -1
  %arrayidx.i = getelementptr ptr, ptr %call8.i.i.i, i32 %dec.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %while.body.i.brelse.exit.i_crit_edge, label %if.then.i.i

while.body.i.brelse.exit.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %25) #10
  br label %brelse.exit.i

brelse.exit.i:                                    ; preds = %if.then.i.i, %while.body.i.brelse.exit.i_crit_edge
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %brelse.exit.i.gfs2_iter_unstuffed.exit_crit_edge, label %brelse.exit.i.while.body.i_crit_edge

brelse.exit.i.while.body.i_crit_edge:             ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

brelse.exit.i.gfs2_iter_unstuffed.exit_crit_edge: ; preds = %brelse.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit

if.end11.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr i64, ptr %dataptrs.030.i, i32 1
  %inc.i = add nuw i32 %x.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end11.i.for.body15.i_crit_edge, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end11.i.for.body15.i_crit_edge:                ; preds = %if.end11.i
  br label %for.body15.i

for.body15.i:                                     ; preds = %brelse.exit12.i.for.body15.i_crit_edge, %if.end11.i.for.body15.i_crit_edge
  %x.236.i = phi i32 [ %inc64.i, %brelse.exit12.i.for.body15.i_crit_edge ], [ 0, %if.end11.i.for.body15.i_crit_edge ]
  %amount.034.i = phi i32 [ %sub61.i, %brelse.exit12.i.for.body15.i_crit_edge ], [ %3, %if.end11.i.for.body15.i_crit_edge ]
  %dout.addr.033.i = phi ptr [ %dout.addr.1.i, %brelse.exit12.i.for.body15.i_crit_edge ], [ %data, %if.end11.i.for.body15.i_crit_edge ]
  %arrayidx16.i = getelementptr ptr, ptr %call8.i.i.i, i32 %x.236.i
  %26 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx16.i, align 4
  %call17.i = tail call i32 @gfs2_meta_wait(ptr noundef %12, ptr noundef %27) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end28.i, label %for.cond20.preheader.i

for.cond20.preheader.i:                           ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_cmp4(i32 %x.236.i, i32 %div.i)
  %cmp2138.i = icmp ult i32 %x.236.i, %div.i
  br i1 %cmp2138.i, label %for.cond20.preheader.i.for.body23.i_crit_edge, label %for.cond20.preheader.i.gfs2_iter_unstuffed.exit_crit_edge

for.cond20.preheader.i.gfs2_iter_unstuffed.exit_crit_edge: ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit

for.cond20.preheader.i.for.body23.i_crit_edge:    ; preds = %for.cond20.preheader.i
  br label %for.body23.i

for.body23.i:                                     ; preds = %brelse.exit3.i.for.body23.i_crit_edge, %for.cond20.preheader.i.for.body23.i_crit_edge
  %x.339.i = phi i32 [ %inc26.i, %brelse.exit3.i.for.body23.i_crit_edge ], [ %x.236.i, %for.cond20.preheader.i.for.body23.i_crit_edge ]
  %arrayidx24.i = getelementptr ptr, ptr %call8.i.i.i, i32 %x.339.i
  %28 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx24.i, align 4
  %tobool.not.i1.i = icmp eq ptr %29, null
  br i1 %tobool.not.i1.i, label %for.body23.i.brelse.exit3.i_crit_edge, label %if.then.i2.i

for.body23.i.brelse.exit3.i_crit_edge:            ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit3.i

if.then.i2.i:                                     ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %29) #10
  br label %brelse.exit3.i

brelse.exit3.i:                                   ; preds = %if.then.i2.i, %for.body23.i.brelse.exit3.i_crit_edge
  %inc26.i = add i32 %x.339.i, 1
  %exitcond55.not.i = icmp eq i32 %inc26.i, %div.i
  br i1 %exitcond55.not.i, label %brelse.exit3.i.gfs2_iter_unstuffed.exit_crit_edge, label %brelse.exit3.i.for.body23.i_crit_edge

brelse.exit3.i.for.body23.i_crit_edge:            ; preds = %brelse.exit3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23.i

brelse.exit3.i.gfs2_iter_unstuffed.exit_crit_edge: ; preds = %brelse.exit3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit

if.end28.i:                                       ; preds = %for.body15.i
  %30 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx16.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %b_data.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %mh_type.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %mh_type.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mh_type.i.i, align 4
  %conv.i.i = trunc i32 %37 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %35)
  %cmp.not.i.i = icmp eq i32 %35, 18225520
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i4.i, !prof !57

if.then.i4.i:                                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @gfs2_meta_check_ii(ptr noundef %12, ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.gfs2_iter_unstuffed, ptr noundef nonnull @.str, i32 noundef 488) #10
  br label %gfs2_metatype_check_i.exit.i

if.end.i.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %conv.i.i)
  %cmp5.not.i.i = icmp eq i16 %conv.i.i, 11
  br i1 %cmp5.not.i.i, label %if.end.i.i.if.end41.i_crit_edge, label %if.then13.i.i, !prof !57

if.end.i.i.if.end41.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i.i = tail call i32 @gfs2_metatype_check_ii(ptr noundef %12, ptr noundef %31, i16 noundef zeroext 11, i16 noundef zeroext %conv.i.i, ptr noundef nonnull @__func__.gfs2_iter_unstuffed, ptr noundef nonnull @.str, i32 noundef 488) #10
  br label %gfs2_metatype_check_i.exit.i

gfs2_metatype_check_i.exit.i:                     ; preds = %if.then13.i.i, %if.then.i4.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i4.i ], [ %call14.i.i, %if.then13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool31.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool31.not.i, label %gfs2_metatype_check_i.exit.i.if.end41.i_crit_edge, label %for.cond33.preheader.i

gfs2_metatype_check_i.exit.i.if.end41.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

for.cond33.preheader.i:                           ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %x.236.i, i32 %div.i)
  %cmp3440.i = icmp ult i32 %x.236.i, %div.i
  br i1 %cmp3440.i, label %for.cond33.preheader.i.for.body36.i_crit_edge, label %for.cond33.preheader.i.gfs2_iter_unstuffed.exit.thread26_crit_edge

for.cond33.preheader.i.gfs2_iter_unstuffed.exit.thread26_crit_edge: ; preds = %for.cond33.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit.thread26

for.cond33.preheader.i.for.body36.i_crit_edge:    ; preds = %for.cond33.preheader.i
  br label %for.body36.i

for.body36.i:                                     ; preds = %brelse.exit8.i.for.body36.i_crit_edge, %for.cond33.preheader.i.for.body36.i_crit_edge
  %x.441.i = phi i32 [ %inc39.i, %brelse.exit8.i.for.body36.i_crit_edge ], [ %x.236.i, %for.cond33.preheader.i.for.body36.i_crit_edge ]
  %arrayidx37.i = getelementptr ptr, ptr %call8.i.i.i, i32 %x.441.i
  %38 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx37.i, align 4
  %tobool.not.i5.i = icmp eq ptr %39, null
  br i1 %tobool.not.i5.i, label %for.body36.i.brelse.exit8.i_crit_edge, label %if.then.i6.i

for.body36.i.brelse.exit8.i_crit_edge:            ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit8.i

if.then.i6.i:                                     ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %39) #10
  br label %brelse.exit8.i

brelse.exit8.i:                                   ; preds = %if.then.i6.i, %for.body36.i.brelse.exit8.i_crit_edge
  %inc39.i = add i32 %x.441.i, 1
  %exitcond56.not.i = icmp eq i32 %inc39.i, %div.i
  br i1 %exitcond56.not.i, label %brelse.exit8.i.gfs2_iter_unstuffed.exit.thread26_crit_edge, label %brelse.exit8.i.for.body36.i_crit_edge

brelse.exit8.i.for.body36.i_crit_edge:            ; preds = %brelse.exit8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body36.i

brelse.exit8.i.gfs2_iter_unstuffed.exit.thread26_crit_edge: ; preds = %brelse.exit8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit.thread26

if.end41.i:                                       ; preds = %gfs2_metatype_check_i.exit.i.if.end41.i_crit_edge, %if.end.i.i.if.end41.i_crit_edge
  %tobool48.not.i = icmp eq ptr %dout.addr.033.i, null
  br i1 %tobool48.not.i, label %if.end41.i.if.end59.i_crit_edge, label %if.then49.i

if.end41.i.if.end59.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

if.then49.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %sd_jbsize.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sd_jbsize.i, align 4
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %amount.034.i) #10
  %43 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx16.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %46, i32 24
  %47 = call ptr @memcpy(ptr %dout.addr.033.i, ptr %add.ptr43.i, i32 %42)
  %48 = ptrtoint ptr %sd_jbsize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sd_jbsize.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %dout.addr.033.i, i32 %49
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then49.i, %if.end41.i.if.end59.i_crit_edge
  %dout.addr.1.i = phi ptr [ %add.ptr51.i, %if.then49.i ], [ null, %if.end41.i.if.end59.i_crit_edge ]
  %50 = ptrtoint ptr %sd_jbsize.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sd_jbsize.i, align 4
  %sub61.i = sub i32 %amount.034.i, %51
  %52 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx16.i, align 4
  %tobool.not.i9.i = icmp eq ptr %53, null
  br i1 %tobool.not.i9.i, label %if.end59.i.brelse.exit12.i_crit_edge, label %if.then.i10.i

if.end59.i.brelse.exit12.i_crit_edge:             ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit12.i

if.then.i10.i:                                    ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %53) #10
  br label %brelse.exit12.i

brelse.exit12.i:                                  ; preds = %if.then.i10.i, %if.end59.i.brelse.exit12.i_crit_edge
  %inc64.i = add nuw i32 %x.236.i, 1
  %exitcond54.not.i = icmp eq i32 %inc64.i, %umax.i
  br i1 %exitcond54.not.i, label %brelse.exit12.i.gfs2_iter_unstuffed.exit.thread30_crit_edge, label %brelse.exit12.i.for.body15.i_crit_edge

brelse.exit12.i.for.body15.i_crit_edge:           ; preds = %brelse.exit12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15.i

brelse.exit12.i.gfs2_iter_unstuffed.exit.thread30_crit_edge: ; preds = %brelse.exit12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit.thread30

gfs2_iter_unstuffed.exit.thread26:                ; preds = %brelse.exit8.i.gfs2_iter_unstuffed.exit.thread26_crit_edge, %for.cond33.preheader.i.gfs2_iter_unstuffed.exit.thread26_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %gfs2_iter_unstuffed.exit.thread

gfs2_iter_unstuffed.exit.thread30:                ; preds = %brelse.exit12.i.gfs2_iter_unstuffed.exit.thread30_crit_edge, %if.end.i.gfs2_iter_unstuffed.exit.thread30_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %cleanup

gfs2_iter_unstuffed.exit:                         ; preds = %brelse.exit3.i.gfs2_iter_unstuffed.exit_crit_edge, %for.cond20.preheader.i.gfs2_iter_unstuffed.exit_crit_edge, %brelse.exit.i.gfs2_iter_unstuffed.exit_crit_edge, %while.cond.preheader.i.gfs2_iter_unstuffed.exit_crit_edge
  %error.2.i = phi i32 [ %call7.i, %while.cond.preheader.i.gfs2_iter_unstuffed.exit_crit_edge ], [ %call17.i, %for.cond20.preheader.i.gfs2_iter_unstuffed.exit_crit_edge ], [ %call17.i, %brelse.exit3.i.gfs2_iter_unstuffed.exit_crit_edge ], [ %call7.i, %brelse.exit.i.gfs2_iter_unstuffed.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2.i)
  %cmp8 = icmp slt i32 %error.2.i, 0
  br i1 %cmp8, label %gfs2_iter_unstuffed.exit.gfs2_iter_unstuffed.exit.thread_crit_edge, label %gfs2_iter_unstuffed.exit.cleanup_crit_edge

gfs2_iter_unstuffed.exit.cleanup_crit_edge:       ; preds = %gfs2_iter_unstuffed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

gfs2_iter_unstuffed.exit.gfs2_iter_unstuffed.exit.thread_crit_edge: ; preds = %gfs2_iter_unstuffed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_iter_unstuffed.exit.thread

gfs2_iter_unstuffed.exit.thread:                  ; preds = %gfs2_iter_unstuffed.exit.gfs2_iter_unstuffed.exit.thread_crit_edge, %gfs2_iter_unstuffed.exit.thread26, %if.end7.i.i.i.gfs2_iter_unstuffed.exit.thread_crit_edge, %if.end6.gfs2_iter_unstuffed.exit.thread_crit_edge
  %retval.0.i24 = phi i32 [ %error.2.i, %gfs2_iter_unstuffed.exit.gfs2_iter_unstuffed.exit.thread_crit_edge ], [ -5, %gfs2_iter_unstuffed.exit.thread26 ], [ -12, %if.end7.i.i.i.gfs2_iter_unstuffed.exit.thread_crit_edge ], [ -12, %if.end6.gfs2_iter_unstuffed.exit.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %gfs2_iter_unstuffed.exit.thread, %gfs2_iter_unstuffed.exit.cleanup_crit_edge, %gfs2_iter_unstuffed.exit.thread30, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then2 ], [ -34, %entry.cleanup_crit_edge ], [ %retval.0.i24, %gfs2_iter_unstuffed.exit.thread ], [ %3, %gfs2_iter_unstuffed.exit.cleanup_crit_edge ], [ %3, %gfs2_iter_unstuffed.exit.thread30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__gfs2_xattr_set(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %ef.i = alloca %struct.ea_find, align 4
  %tmp.i.i = alloca %struct.timespec64, align 8
  %ef.i.i = alloca %struct.ea_find, align 4
  %el.i = alloca %struct.gfs2_ea_location, align 4
  %el = alloca %struct.gfs2_ea_location, align 4
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %el) #10
  %4 = getelementptr inbounds %struct.gfs2_ea_location, ptr %el, i32 0, i32 1
  %call2 = tail call i32 @strlen(ptr noundef %name) #15
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %5 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_flags, align 4
  %7 = and i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call2)
  %cmp = icmp ugt i32 %call2, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp eq ptr %value, null
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %el.i) #10
  %9 = getelementptr inbounds %struct.gfs2_ea_location, ptr %el.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.gfs2_ea_location, ptr %el.i, i32 0, i32 2
  %i_eattr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 4
  %11 = ptrtoint ptr %i_eattr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_eattr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.not.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i, label %if.then9.gfs2_xattr_remove.exit.thread_crit_edge, label %if.end.i

if.then9.gfs2_xattr_remove.exit.thread_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_xattr_remove.exit.thread

if.end.i:                                         ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ef.i.i) #10
  %13 = getelementptr inbounds %struct.ea_find, ptr %ef.i.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.ea_find, ptr %ef.i.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.ea_find, ptr %ef.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %ef.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %type, ptr %ef.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %name, ptr %13, align 4
  %call.i.i = tail call i32 @strlen(ptr noundef %name) #13
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i.i, ptr %14, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %el.i, ptr %15, align 4
  %20 = call ptr @memset(ptr %el.i, i32 0, i32 12)
  %call3.i.i = call fastcc i32 @ea_foreach(ptr noundef %inode, ptr noundef nonnull @ea_find_i, ptr noundef nonnull %ef.i.i) #10
  %21 = call i32 @llvm.smin.i32(i32 %call3.i.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ef.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i.i)
  %tobool1.not.i = icmp sgt i32 %call3.i.i, -1
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.gfs2_xattr_remove.exit_crit_edge

if.end.i.gfs2_xattr_remove.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_xattr_remove.exit

if.end3.i:                                        ; preds = %if.end.i
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %9, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %if.end3.i.gfs2_xattr_remove.exit.thread_crit_edge, label %if.end6.i

if.end3.i.gfs2_xattr_remove.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_xattr_remove.exit.thread

if.end6.i:                                        ; preds = %if.end3.i
  %ea_num_ptrs.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %ea_num_ptrs.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ea_num_ptrs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool8.not.i = icmp eq i8 %25, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end6.i
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %10, align 4
  %28 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 33
  %30 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %call1.i.i = call i32 @gfs2_trans_begin(ptr noundef %31, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then9.i.if.end13.i_crit_edge

if.then9.i.if.end13.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end.i.i:                                       ; preds = %if.then9.i
  %i_gl.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %32 = ptrtoint ptr %i_gl.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_gl.i.i, align 4
  %34 = ptrtoint ptr %el.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %el.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %33, ptr noundef %35) #10
  %tobool2.not.i.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %27, align 4
  %38 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %23, align 4
  %add.i.i = add i32 %39, %37
  store i32 %add.i.i, ptr %27, align 4
  %ea_flags.i.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %23, i32 0, i32 4
  %40 = ptrtoint ptr %ea_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ea_flags.i.i, align 2
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool6.not.i.i = icmp eq i8 %42, 0
  br i1 %tobool6.not.i.i, label %if.then3.i.i.if.end12.i.i_crit_edge, label %if.then7.i.i

if.then3.i.i.if.end12.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then7.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ea_flags8.i.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %27, i32 0, i32 4
  %43 = ptrtoint ptr %ea_flags8.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ea_flags8.i.i, align 2
  %45 = or i8 %44, 1
  store i8 %45, ptr %ea_flags8.i.i, align 2
  br label %if.end12.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ea_type.i.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %23, i32 0, i32 3
  %46 = ptrtoint ptr %ea_type.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %ea_type.i.i, align 1
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.else.i.i, %if.then7.i.i, %if.then3.i.i.if.end12.i.i_crit_edge
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, ptr noundef %inode) #10
  %47 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #10
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 2) #10
  %48 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i35.i.i = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %50 = ptrtoint ptr %s_fs_info.i35.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %s_fs_info.i35.i.i, align 16
  call void @gfs2_trans_end(ptr noundef %51) #10
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end6.i
  %52 = ptrtoint ptr %el.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %el.i, align 4
  %54 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %10, align 4
  %56 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i22.i = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 33
  %58 = ptrtoint ptr %s_fs_info.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %s_fs_info.i.i22.i, align 16
  %call1.i23.i = call i32 @gfs2_rindex_update(ptr noundef %59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call1.i23.i, 0
  br i1 %tobool.not.i24.i, label %if.end.i26.i, label %if.else.i.if.end13.i_crit_edge

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end.i26.i:                                     ; preds = %if.else.i
  %call5.i.i = call i32 @gfs2_quota_hold(ptr noundef %inode, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i25.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i25.i, label %if.end8.i.i, label %if.end.i26.i.if.end13.i_crit_edge

if.end.i26.i.if.end13.i_crit_edge:                ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end8.i.i:                                      ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i.i = call i32 @ea_dealloc_unstuffed(ptr noundef %inode, ptr noundef %53, ptr noundef nonnull %23, ptr noundef %55, ptr noundef null) #10
  call void @gfs2_quota_unhold(ptr noundef %inode) #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end8.i.i, %if.end.i26.i.if.end13.i_crit_edge, %if.else.i.if.end13.i_crit_edge, %if.end12.i.i, %if.then9.i.if.end13.i_crit_edge
  %error.0.i = phi i32 [ %call1.i.i, %if.then9.i.if.end13.i_crit_edge ], [ 0, %if.end12.i.i ], [ %call1.i23.i, %if.else.i.if.end13.i_crit_edge ], [ %call10.i.i, %if.end8.i.i ], [ %call5.i.i, %if.end.i26.i.if.end13.i_crit_edge ]
  %60 = ptrtoint ptr %el.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %el.i, align 4
  %tobool.not.i27.i = icmp eq ptr %61, null
  br i1 %tobool.not.i27.i, label %if.end13.i.gfs2_xattr_remove.exit_crit_edge, label %if.then.i.i

if.end13.i.gfs2_xattr_remove.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_xattr_remove.exit

if.then.i.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %61) #10
  br label %gfs2_xattr_remove.exit

gfs2_xattr_remove.exit.thread:                    ; preds = %if.end3.i.gfs2_xattr_remove.exit.thread_crit_edge, %if.then9.gfs2_xattr_remove.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %el.i) #10
  br label %land.lhs.true

gfs2_xattr_remove.exit:                           ; preds = %if.then.i.i, %if.end13.i.gfs2_xattr_remove.exit_crit_edge, %if.end.i.gfs2_xattr_remove.exit_crit_edge
  %retval.0.i = phi i32 [ %21, %if.end.i.gfs2_xattr_remove.exit_crit_edge ], [ %error.0.i, %if.end13.i.gfs2_xattr_remove.exit_crit_edge ], [ %error.0.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %el.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval.0.i)
  %cmp11 = icmp eq i32 %retval.0.i, -61
  br i1 %cmp11, label %gfs2_xattr_remove.exit.land.lhs.true_crit_edge, label %gfs2_xattr_remove.exit.cleanup_crit_edge

gfs2_xattr_remove.exit.cleanup_crit_edge:         ; preds = %gfs2_xattr_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

gfs2_xattr_remove.exit.land.lhs.true_crit_edge:   ; preds = %gfs2_xattr_remove.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %gfs2_xattr_remove.exit.land.lhs.true_crit_edge, %gfs2_xattr_remove.exit.thread
  %and12 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 -61
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %size)
  %cmp.i = icmp ugt i32 %size, 65536
  br i1 %cmp.i, label %if.end16.cleanup_crit_edge, label %if.end.i100

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i100:                                      ; preds = %if.end16
  %sd_jbsize.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 11
  %62 = ptrtoint ptr %sd_jbsize.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sd_jbsize.i.i, align 4
  %add1.i.i = add nuw nsw i32 %call2, 23
  %add2.i.i = add nuw nsw i32 %add1.i.i, %size
  %and.i.i = and i32 %add2.i.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %63)
  %cmp.not.i.i = icmp ugt i32 %and.i.i, %63
  br i1 %cmp.not.i.i, label %if.end.i.i101, label %if.end.i100.ea_calc_size.exit.i_crit_edge

if.end.i100.ea_calc_size.exit.i_crit_edge:        ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %ea_calc_size.exit.i

if.end.i.i101:                                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #12
  %add4.i.i = add nsw i32 %size, -1
  %sub.i.i = add i32 %add4.i.i, %63
  %div.i.i = udiv i32 %sub.i.i, %63
  %mul.i.i = shl i32 %div.i.i, 3
  %add6.i.i = add i32 %mul.i.i, %add1.i.i
  %and7.i.i = and i32 %add6.i.i, -8
  br label %ea_calc_size.exit.i

ea_calc_size.exit.i:                              ; preds = %if.end.i.i101, %if.end.i100.ea_calc_size.exit.i_crit_edge
  %storemerge.i.i = phi i32 [ %and7.i.i, %if.end.i.i101 ], [ %and.i.i, %if.end.i100.ea_calc_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.i.i, i32 %63)
  %cmp1.i = icmp ugt i32 %storemerge.i.i, %63
  br i1 %cmp1.i, label %ea_calc_size.exit.i.cleanup_crit_edge, label %if.end20

ea_calc_size.exit.i.cleanup_crit_edge:            ; preds = %ea_calc_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %ea_calc_size.exit.i
  %i_eattr = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 4
  %64 = ptrtoint ptr %i_eattr to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %i_eattr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %tobool21.not = icmp eq i64 %65, 0
  br i1 %tobool21.not, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end20
  %and23 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end26, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call fastcc i32 @ea_init(ptr noundef %inode, i32 noundef %type, ptr noundef %name, ptr noundef nonnull %value, i32 noundef %size)
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ef.i) #10
  %66 = getelementptr inbounds %struct.ea_find, ptr %ef.i, i32 0, i32 1
  %67 = getelementptr inbounds %struct.ea_find, ptr %ef.i, i32 0, i32 2
  %68 = getelementptr inbounds %struct.ea_find, ptr %ef.i, i32 0, i32 3
  %69 = ptrtoint ptr %ef.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %type, ptr %ef.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %name, ptr %66, align 4
  %call.i = tail call i32 @strlen(ptr noundef %name) #13
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call.i, ptr %67, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %el, ptr %68, align 4
  %73 = call ptr @memset(ptr %el, i32 0, i32 12)
  %call3.i = call fastcc i32 @ea_foreach(ptr noundef %inode, ptr noundef nonnull @ea_find_i, ptr noundef nonnull %ef.i) #10
  %74 = call i32 @llvm.smin.i32(i32 %call3.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ef.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %tobool30.not = icmp sgt i32 %call3.i, -1
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %4, align 4
  %tobool33.not = icmp eq ptr %76, null
  br i1 %tobool33.not, label %if.end54, label %if.then34

if.then34:                                        ; preds = %if.end32
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 18
  %77 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %i_diskflags, align 4
  %and35 = and i32 %78, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.then34
  %79 = ptrtoint ptr %el to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %el, align 4
  %tobool.not.i103 = icmp eq ptr %80, null
  br i1 %tobool.not.i103, label %if.then37.cleanup_crit_edge, label %if.then.i

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %80) #10
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  %and39 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.then41, label %if.end38.if.end52_crit_edge

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then41:                                        ; preds = %if.end38
  %ea_num_ptrs = getelementptr inbounds %struct.gfs2_ea_header, ptr %76, i32 0, i32 5
  %81 = ptrtoint ptr %ea_num_ptrs to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ea_num_ptrs, align 1
  %call45 = call fastcc i32 @ea_set_i(ptr noundef %inode, i32 noundef %type, ptr noundef %name, ptr noundef nonnull %value, i32 noundef %size, ptr noundef nonnull %el)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp ne i32 %call45, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool43.not = icmp eq i8 %82, 0
  %or.cond99 = select i1 %tobool46.not, i1 true, i1 %tobool43.not
  br i1 %or.cond99, label %if.then41.if.end52_crit_edge, label %if.then49

if.then41.if.end52_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then49:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @ea_set_remove_unstuffed(ptr noundef %inode, ptr noundef nonnull %el)
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then41.if.end52_crit_edge, %if.end38.if.end52_crit_edge
  %error.1 = phi i32 [ -17, %if.end38.if.end52_crit_edge ], [ 0, %if.then49 ], [ %call45, %if.then41.if.end52_crit_edge ]
  %83 = ptrtoint ptr %el to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %el, align 4
  %tobool.not.i105 = icmp eq ptr %84, null
  br i1 %tobool.not.i105, label %if.end52.cleanup_crit_edge, label %if.then.i106

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i106:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %84) #10
  br label %cleanup

if.end54:                                         ; preds = %if.end32
  %and55 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then57, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %call58 = call fastcc i32 @ea_set_i(ptr noundef %inode, i32 noundef %type, ptr noundef %name, ptr noundef nonnull %value, i32 noundef %size, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end54.cleanup_crit_edge, %if.then.i106, %if.end52.cleanup_crit_edge, %if.then.i, %if.then37.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end26, %if.then22.cleanup_crit_edge, %ea_calc_size.exit.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %land.lhs.true, %gfs2_xattr_remove.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ -1, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ], [ %retval.0.i, %gfs2_xattr_remove.exit.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ], [ -61, %if.then22.cleanup_crit_edge ], [ %74, %if.end28.cleanup_crit_edge ], [ -61, %if.end54.cleanup_crit_edge ], [ %call58, %if.then57 ], [ -1, %if.then37.cleanup_crit_edge ], [ -1, %if.then.i ], [ %error.1, %if.end52.cleanup_crit_edge ], [ %error.1, %if.then.i106 ], [ -34, %if.end16.cleanup_crit_edge ], [ -34, %ea_calc_size.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %el) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ea_init(ptr noundef %ip, i32 noundef %type, ptr noundef %name, ptr noundef %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %er = alloca %struct.gfs2_ea_request, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %er) #10
  %0 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 3
  %3 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_fs_info.i, align 16
  %sd_jbsize = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %sd_jbsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sd_jbsize, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type, ptr %3, align 4
  %11 = ptrtoint ptr %er to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %er, align 4
  %call1 = tail call i32 @strlen(ptr noundef %name) #15
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call1, ptr %1, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %0, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size, ptr %2, align 4
  %add4 = add i32 %size, 23
  %add5 = add i32 %add4, %call1
  %and = and i32 %add5, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %9)
  %cmp = icmp ugt i32 %and, %9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add7 = add i32 %size, -1
  %sub = add i32 %add7, %9
  %div = udiv i32 %sub, %9
  %add8 = add i32 %div, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %blks.0 = phi i32 [ %add8, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %call9 = call fastcc i32 @ea_alloc_skeleton(ptr noundef %ip, ptr noundef nonnull %er, i32 noundef %blks.0, ptr noundef nonnull @ea_init_i, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %er) #10
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ea_set_i(ptr noundef %ip, i32 noundef %type, ptr noundef %name, ptr noundef %value, i32 noundef %size, ptr noundef %el) unnamed_addr #0 align 64 {
entry:
  %er = alloca %struct.gfs2_ea_request, align 4
  %es = alloca %struct.ea_set, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %er) #10
  %0 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 3
  %3 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %es) #10
  %4 = getelementptr inbounds %struct.ea_set, ptr %es, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ea_set, ptr %es, i32 0, i32 2
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %type, ptr %3, align 4
  %7 = ptrtoint ptr %er to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %er, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %value, ptr %0, align 4
  %call = tail call i32 @strlen(ptr noundef %name) #15
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %2, align 4
  %11 = call ptr @memset(ptr %es, i32 0, i32 20)
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %er, ptr %4, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %el, ptr %5, align 4
  %call1 = call fastcc i32 @ea_foreach(ptr noundef %ip, ptr noundef nonnull @ea_set_simple, ptr noundef nonnull %es)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp sgt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %14 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool4.not, i32 3, i32 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %add9 = add i32 %17, 23
  %add10 = add i32 %add9, %19
  %and11 = and i32 %add10, -8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %20 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %sd_jbsize = getelementptr inbounds %struct.gfs2_sbd, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %sd_jbsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sd_jbsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and11, i32 %25)
  %cmp13 = icmp ugt i32 %and11, %25
  br i1 %cmp13, label %if.then14, label %if.end3.if.end24_crit_edge

if.end3.if.end24_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then14:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %add19 = add i32 %19, -1
  %sub = add i32 %add19, %25
  %div = udiv i32 %sub, %25
  %add23 = add i32 %div, %spec.select
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.end3.if.end24_crit_edge
  %blks.1 = phi i32 [ %add23, %if.then14 ], [ %spec.select, %if.end3.if.end24_crit_edge ]
  %call25 = call fastcc i32 @ea_alloc_skeleton(ptr noundef %ip, ptr noundef nonnull %er, i32 noundef %blks.1, ptr noundef nonnull @ea_set_block, ptr noundef %el)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %es) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %er) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ea_set_remove_unstuffed(ptr noundef %ip, ptr nocapture noundef %el) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %el_prev = getelementptr inbounds %struct.gfs2_ea_location, ptr %el, i32 0, i32 2
  %0 = ptrtoint ptr %el_prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %el_prev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %land.lhs.true

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %el_ea = getelementptr inbounds %struct.gfs2_ea_location, ptr %el, i32 0, i32 1
  %4 = ptrtoint ptr %el_ea to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %el_ea, align 4
  %cmp.not = icmp eq ptr %add.ptr, %5
  br i1 %cmp.not, label %land.lhs.true.if.end22_crit_edge, label %if.then

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %el_prev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %el_prev, align 4
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %8
  %cmp13.not = icmp eq ptr %add.ptr11, %5
  br i1 %cmp13.not, label %if.then.if.end22_crit_edge, label %if.then18, !prof !57

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  tail call void @gfs2_assert_withdraw_i(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ea_set_remove_unstuffed, ptr noundef nonnull @.str, i32 noundef 1079, i1 noundef zeroext false) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.then.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  %13 = ptrtoint ptr %el to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %el, align 4
  %el_ea23 = getelementptr inbounds %struct.gfs2_ea_location, ptr %el, i32 0, i32 1
  %15 = ptrtoint ptr %el_ea23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %el_ea23, align 4
  %17 = ptrtoint ptr %el_prev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %el_prev, align 4
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %19 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 33
  %21 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_fs_info.i.i, align 16
  %call1.i = tail call i32 @gfs2_rindex_update(ptr noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.ea_remove_unstuffed.exit_crit_edge

if.end22.ea_remove_unstuffed.exit_crit_edge:      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %ea_remove_unstuffed.exit

if.end.i:                                         ; preds = %if.end22
  %call5.i = tail call i32 @gfs2_quota_hold(ptr noundef %ip, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.ea_remove_unstuffed.exit_crit_edge

if.end.i.ea_remove_unstuffed.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ea_remove_unstuffed.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call10.i = tail call i32 @ea_dealloc_unstuffed(ptr noundef %ip, ptr noundef %14, ptr noundef %16, ptr noundef %18, ptr noundef null) #10
  tail call void @gfs2_quota_unhold(ptr noundef %ip) #10
  br label %ea_remove_unstuffed.exit

ea_remove_unstuffed.exit:                         ; preds = %if.end8.i, %if.end.i.ea_remove_unstuffed.exit_crit_edge, %if.end22.ea_remove_unstuffed.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_ea_dealloc(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %dibh.i34 = alloca ptr, align 4
  %gh.i = alloca %struct.gfs2_holder, align 4
  %rlist.i = alloca %struct.gfs2_rgrp_list, align 4
  %indbh.i = alloca ptr, align 4
  %dibh.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @gfs2_rindex_update(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @gfs2_quota_hold(ptr noundef %ip, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc i32 @ea_foreach(ptr noundef %ip, ptr noundef nonnull @ea_dealloc_unstuffed, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_quota_crit_edge

if.end8.out_quota_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_quota

if.end12:                                         ; preds = %if.end8
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %4 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  %6 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rlist.i) #10
  %10 = getelementptr inbounds %struct.gfs2_rgrp_list, ptr %rlist.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %indbh.i) #10
  %11 = ptrtoint ptr %indbh.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -1 to ptr), ptr %indbh.i, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i) #10
  %12 = ptrtoint ptr %dibh.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i, align 4, !annotation !56
  %call1.i = tail call i32 @gfs2_rindex_update(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then14.ea_dealloc_indirect.exit.thread_crit_edge

if.then14.ea_dealloc_indirect.exit.thread_crit_edge: ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %ea_dealloc_indirect.exit.thread

if.end.i:                                         ; preds = %if.then14
  %13 = call ptr @memset(ptr %rlist.i, i32 0, i32 16)
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %14 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_gl.i, align 4
  %i_eattr.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 4
  %16 = ptrtoint ptr %i_eattr.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %i_eattr.i, align 8
  %call2.i = call i32 @gfs2_meta_read(ptr noundef %15, i64 noundef %17, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %indbh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.ea_dealloc_indirect.exit.thread_crit_edge

if.end.i.ea_dealloc_indirect.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ea_dealloc_indirect.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %18 = ptrtoint ptr %indbh.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %indbh.i, align 4
  %b_data.i.i = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %b_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %b_data.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %mh_type.i.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %mh_type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mh_type.i.i, align 4
  %conv.i.i = trunc i32 %25 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %23)
  %cmp.not.i.i = icmp eq i32 %23, 18225520
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !57

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call i32 @gfs2_meta_check_ii(ptr noundef %9, ptr noundef %19, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ea_dealloc_indirect, ptr noundef nonnull @.str, i32 noundef 1286) #10
  br label %gfs2_metatype_check_i.exit.i

if.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %conv.i.i)
  %cmp5.not.i.i = icmp eq i16 %conv.i.i, 5
  br i1 %cmp5.not.i.i, label %if.end.i.i.if.end9.i_crit_edge, label %if.then13.i.i, !prof !57

if.end.i.i.if.end9.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i.i = call i32 @gfs2_metatype_check_ii(ptr noundef %9, ptr noundef %19, i16 noundef zeroext 5, i16 noundef zeroext %conv.i.i, ptr noundef nonnull @__func__.ea_dealloc_indirect, ptr noundef nonnull @.str, i32 noundef 1286) #10
  br label %gfs2_metatype_check_i.exit.i

gfs2_metatype_check_i.exit.i:                     ; preds = %if.then13.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call14.i.i, %if.then13.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool7.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool7.not.i, label %gfs2_metatype_check_i.exit.i.if.end9.i_crit_edge, label %gfs2_metatype_check_i.exit.i.out.i_crit_edge

gfs2_metatype_check_i.exit.i.out.i_crit_edge:     ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

gfs2_metatype_check_i.exit.i.if.end9.i_crit_edge: ; preds = %gfs2_metatype_check_i.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %gfs2_metatype_check_i.exit.i.if.end9.i_crit_edge, %if.end.i.i.if.end9.i_crit_edge
  %26 = ptrtoint ptr %indbh.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %indbh.i, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 24
  %sd_inptrs.i = getelementptr inbounds %struct.gfs2_sbd, ptr %9, i32 0, i32 9
  %30 = ptrtoint ptr %sd_inptrs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sd_inptrs.i, align 4
  %add.ptr10.i = getelementptr i64, ptr %add.ptr.i, i32 %31
  %cmp194.i = icmp ult ptr %add.ptr.i, %add.ptr10.i
  br i1 %cmp194.i, label %if.end9.i.for.body.i_crit_edge, label %if.end9.i.out.i_crit_edge

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %blks.0198.i = phi i32 [ %inc21.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %blen.0197.i = phi i32 [ %blen.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %bstart.0196.i = phi i64 [ %bstart.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %eablk.0195.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end9.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %eablk.0195.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %eablk.0195.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool11.not.i = icmp eq i64 %33, 0
  br i1 %tobool11.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end13.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end13.i:                                       ; preds = %for.body.i
  %conv.i = zext i32 %blen.0197.i to i64
  %add.i = add i64 %bstart.0196.i, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %33)
  %cmp14.i = icmp eq i64 %add.i, %33
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %blen.0197.i, 1
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bstart.0196.i)
  %tobool17.not.i = icmp eq i64 %bstart.0196.i, 0
  br i1 %tobool17.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.then18.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then18.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_rlist_add(ptr noundef %ip, ptr noundef nonnull %rlist.i, i64 noundef %bstart.0196.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then18.i, %if.else.i.for.inc.i_crit_edge, %if.then16.i
  %bstart.1.i = phi i64 [ %bstart.0196.i, %if.then16.i ], [ %33, %if.then18.i ], [ %33, %if.else.i.for.inc.i_crit_edge ]
  %blen.1.i = phi i32 [ %inc.i, %if.then16.i ], [ 1, %if.then18.i ], [ 1, %if.else.i.for.inc.i_crit_edge ]
  %inc21.i = add i32 %blks.0198.i, 1
  %incdec.ptr.i = getelementptr i64, ptr %eablk.0195.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr10.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %bstart.0.lcssa.i = phi i64 [ %bstart.1.i, %for.inc.i.for.end.i_crit_edge ], [ %bstart.0196.i, %for.body.i.for.end.i_crit_edge ]
  %blks.0.lcssa.i = phi i32 [ %inc21.i, %for.inc.i.for.end.i_crit_edge ], [ %blks.0198.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bstart.0.lcssa.i)
  %tobool22.not.i = icmp eq i64 %bstart.0.lcssa.i, 0
  br i1 %tobool22.not.i, label %for.end.i.out.i_crit_edge, label %if.then23.i

for.end.i.out.i_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

if.then23.i:                                      ; preds = %for.end.i
  call void @gfs2_rlist_add(ptr noundef %ip, ptr noundef nonnull %rlist.i, i64 noundef %bstart.0.lcssa.i) #10
  call void @gfs2_rlist_alloc(ptr noundef nonnull %rlist.i) #10
  %34 = ptrtoint ptr %rlist.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rlist.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp27202.not.i = icmp eq i32 %35, 0
  br i1 %cmp27202.not.i, label %if.then23.i.for.end34.i_crit_edge, label %if.then23.i.for.body29.i_crit_edge

if.then23.i.for.body29.i_crit_edge:               ; preds = %if.then23.i
  br label %for.body29.i

if.then23.i.for.end34.i_crit_edge:                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end34.i

for.body29.i:                                     ; preds = %for.body29.i.for.body29.i_crit_edge, %if.then23.i.for.body29.i_crit_edge
  %x.0204.i = phi i32 [ %inc33.i, %for.body29.i.for.body29.i_crit_edge ], [ 0, %if.then23.i.for.body29.i_crit_edge ]
  %rg_blocks.0203.i = phi i32 [ %add31.i, %for.body29.i.for.body29.i_crit_edge ], [ 0, %if.then23.i.for.body29.i_crit_edge ]
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %10, align 4
  %gh_gl.i = getelementptr %struct.gfs2_holder, ptr %37, i32 %x.0204.i, i32 1
  %38 = ptrtoint ptr %gh_gl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %gh_gl.i, align 4
  %call30.i = call ptr @gfs2_glock2rgrp(ptr noundef %39) #10
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call30.i, i32 0, i32 4
  %40 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rd_length.i, align 8
  %add31.i = add i32 %41, %rg_blocks.0203.i
  %inc33.i = add nuw i32 %x.0204.i, 1
  %42 = ptrtoint ptr %rlist.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rlist.i, align 4
  %cmp27.i = icmp ult i32 %inc33.i, %43
  br i1 %cmp27.i, label %for.body29.i.for.body29.i_crit_edge, label %for.end34.loopexit.i

for.body29.i.for.body29.i_crit_edge:              ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29.i

for.end34.loopexit.i:                             ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i = add i32 %add31.i, 5
  br label %for.end34.i

for.end34.i:                                      ; preds = %for.end34.loopexit.i, %if.then23.i.for.end34.i_crit_edge
  %rg_blocks.0.lcssa.i = phi i32 [ 5, %if.then23.i.for.end34.i_crit_edge ], [ %phi.bo.i, %for.end34.loopexit.i ]
  %.lcssa.i = phi i32 [ 0, %if.then23.i.for.end34.i_crit_edge ], [ %43, %for.end34.loopexit.i ]
  %44 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %10, align 4
  %call37.i = call i32 @gfs2_glock_nq_m(i32 noundef %.lcssa.i, ptr noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %for.end34.i.out_rlist_free.i_crit_edge

for.end34.i.out_rlist_free.i_crit_edge:           ; preds = %for.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_rlist_free.i

if.end40.i:                                       ; preds = %for.end34.i
  %call45.i = call i32 @gfs2_trans_begin(ptr noundef %9, i32 noundef %rg_blocks.0.lcssa.i, i32 noundef %blks.0.lcssa.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end48.i, label %if.end40.i.out_gunlock.i_crit_edge

if.end40.i.out_gunlock.i_crit_edge:               ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_gunlock.i

if.end48.i:                                       ; preds = %if.end40.i
  %46 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_gl.i, align 4
  %48 = ptrtoint ptr %indbh.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %indbh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %47, ptr noundef %49) #10
  %50 = ptrtoint ptr %indbh.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %indbh.i, align 4
  %b_data50.i = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %b_data50.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_data50.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %53, i32 24
  %cmp53207.i = icmp ult ptr %add.ptr51.i, %add.ptr10.i
  br i1 %cmp53207.i, label %for.body55.lr.ph.i, label %if.end48.i.if.end81.i_crit_edge

if.end48.i.if.end81.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

for.body55.lr.ph.i:                               ; preds = %if.end48.i
  %i_blkbits.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  br label %for.body55.i

for.body55.i:                                     ; preds = %for.inc76.i.for.body55.i_crit_edge, %for.body55.lr.ph.i
  %blen.3211.i = phi i32 [ 0, %for.body55.lr.ph.i ], [ %blen.4.i, %for.inc76.i.for.body55.i_crit_edge ]
  %bstart.4210.i = phi i64 [ 0, %for.body55.lr.ph.i ], [ %bstart.5.i, %for.inc76.i.for.body55.i_crit_edge ]
  %eablk.1209.i = phi ptr [ %add.ptr51.i, %for.body55.lr.ph.i ], [ %incdec.ptr77.i, %for.inc76.i.for.body55.i_crit_edge ]
  %rgd.0208.i = phi ptr [ null, %for.body55.lr.ph.i ], [ %rgd.1.i, %for.inc76.i.for.body55.i_crit_edge ]
  %54 = ptrtoint ptr %eablk.1209.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %eablk.1209.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %tobool57.not.i = icmp eq i64 %55, 0
  br i1 %tobool57.not.i, label %for.body55.i.for.end78.i_crit_edge, label %if.end59.i

for.body55.i.for.end78.i_crit_edge:               ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78.i

if.end59.i:                                       ; preds = %for.body55.i
  %conv60.i = zext i32 %blen.3211.i to i64
  %add61.i = add i64 %bstart.4210.i, %conv60.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add61.i, i64 %55)
  %cmp62.i = icmp eq i64 %add61.i, %55
  br i1 %cmp62.i, label %if.then64.i, label %if.else66.i

if.then64.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc65.i = add i32 %blen.3211.i, 1
  br label %if.end71.i

if.else66.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bstart.4210.i)
  %tobool67.not.i = icmp eq i64 %bstart.4210.i, 0
  br i1 %tobool67.not.i, label %if.else66.i.if.end69.i_crit_edge, label %if.then68.i

if.else66.i.if.end69.i_crit_edge:                 ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

if.then68.i:                                      ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_free_meta(ptr noundef %ip, ptr noundef %rgd.0208.i, i64 noundef %bstart.4210.i, i32 noundef %blen.3211.i) #10
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then68.i, %if.else66.i.if.end69.i_crit_edge
  %call70.i = call ptr @gfs2_blk2rgrpd(ptr noundef %9, i64 noundef %55, i1 noundef zeroext true) #10
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end69.i, %if.then64.i
  %rgd.1.i = phi ptr [ %rgd.0208.i, %if.then64.i ], [ %call70.i, %if.end69.i ]
  %bstart.5.i = phi i64 [ %bstart.4210.i, %if.then64.i ], [ %55, %if.end69.i ]
  %blen.4.i = phi i32 [ %inc65.i, %if.then64.i ], [ 1, %if.end69.i ]
  %56 = ptrtoint ptr %eablk.1209.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %eablk.1209.i, align 8
  %57 = ptrtoint ptr %i_blkbits.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %i_blkbits.i.i, align 2
  %conv.i164.i = zext i8 %58 to i32
  %sub.i.i = add nsw i32 %conv.i164.i, -9
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl nsw i64 -1, %sh_prom.i.i
  %59 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %i_blocks.i.i, align 8
  %sub2.i.i = sub i64 0, %shl.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %sub2.i.i)
  %cmp3.i.i = icmp ult i64 %60, %sub2.i.i
  br i1 %cmp3.i.i, label %if.then.i165.i, label %for.inc76.i, !prof !58

if.then.i165.i:                                   ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 33
  %63 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @gfs2_assert_i(ptr noundef %64) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !60
  unreachable

for.inc76.i:                                      ; preds = %if.end71.i
  %add.i.i = add i64 %shl.i.i, %60
  %65 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add.i.i, ptr %i_blocks.i.i, align 8
  %incdec.ptr77.i = getelementptr i64, ptr %eablk.1209.i, i32 1
  %cmp53.i = icmp ult ptr %incdec.ptr77.i, %add.ptr10.i
  br i1 %cmp53.i, label %for.inc76.i.for.body55.i_crit_edge, label %for.inc76.i.for.end78.i_crit_edge

for.inc76.i.for.end78.i_crit_edge:                ; preds = %for.inc76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end78.i

for.inc76.i.for.body55.i_crit_edge:               ; preds = %for.inc76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body55.i

for.end78.i:                                      ; preds = %for.inc76.i.for.end78.i_crit_edge, %for.body55.i.for.end78.i_crit_edge
  %rgd.0.lcssa.i = phi ptr [ %rgd.1.i, %for.inc76.i.for.end78.i_crit_edge ], [ %rgd.0208.i, %for.body55.i.for.end78.i_crit_edge ]
  %bstart.4.lcssa.i = phi i64 [ %bstart.5.i, %for.inc76.i.for.end78.i_crit_edge ], [ %bstart.4210.i, %for.body55.i.for.end78.i_crit_edge ]
  %blen.3.lcssa.i = phi i32 [ %blen.4.i, %for.inc76.i.for.end78.i_crit_edge ], [ %blen.3211.i, %for.body55.i.for.end78.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bstart.4.lcssa.i)
  %tobool79.not.i = icmp eq i64 %bstart.4.lcssa.i, 0
  br i1 %tobool79.not.i, label %for.end78.i.if.end81.i_crit_edge, label %if.then80.i

for.end78.i.if.end81.i_crit_edge:                 ; preds = %for.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81.i

if.then80.i:                                      ; preds = %for.end78.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_free_meta(ptr noundef %ip, ptr noundef %rgd.0.lcssa.i, i64 noundef %bstart.4.lcssa.i, i32 noundef %blen.3.lcssa.i) #10
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.then80.i, %for.end78.i.if.end81.i_crit_edge, %if.end48.i.if.end81.i_crit_edge
  %66 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %i_diskflags, align 4
  %and.i = and i32 %67, -9
  store i32 %and.i, ptr %i_diskflags, align 4
  %i_no_addr.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %68 = ptrtoint ptr %i_no_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %i_no_addr.i.i, align 8
  %call.i166.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %69, ptr noundef nonnull %dibh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166.i)
  %tobool83.not.i = icmp eq i32 %call.i166.i, 0
  br i1 %tobool83.not.i, label %if.then84.i, label %if.end81.i.if.end87.i_crit_edge

if.end81.i.if.end87.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.then84.i:                                      ; preds = %if.end81.i
  %70 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i_gl.i, align 4
  %72 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dibh.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %71, ptr noundef %73) #10
  %74 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dibh.i, align 4
  %b_data86.i = getelementptr inbounds %struct.buffer_head, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %b_data86.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %b_data86.i, align 4
  call void @gfs2_dinode_out(ptr noundef %ip, ptr noundef %77) #10
  %78 = ptrtoint ptr %dibh.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dibh.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %if.then84.i.if.end87.i_crit_edge, label %if.then.i167.i

if.then84.i.if.end87.i_crit_edge:                 ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.then.i167.i:                                   ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %79) #10
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then.i167.i, %if.then84.i.if.end87.i_crit_edge, %if.end81.i.if.end87.i_crit_edge
  call void @gfs2_trans_end(ptr noundef %9) #10
  br label %out_gunlock.i

out_gunlock.i:                                    ; preds = %if.end87.i, %if.end40.i.out_gunlock.i_crit_edge
  %error.0.i = phi i32 [ %call45.i, %if.end40.i.out_gunlock.i_crit_edge ], [ %call.i166.i, %if.end87.i ]
  %80 = ptrtoint ptr %rlist.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rlist.i, align 4
  %82 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %10, align 4
  call void @gfs2_glock_dq_m(i32 noundef %81, ptr noundef %83) #10
  br label %out_rlist_free.i

out_rlist_free.i:                                 ; preds = %out_gunlock.i, %for.end34.i.out_rlist_free.i_crit_edge
  %error.1.i = phi i32 [ %call37.i, %for.end34.i.out_rlist_free.i_crit_edge ], [ %error.0.i, %out_gunlock.i ]
  call void @gfs2_rlist_free(ptr noundef nonnull %rlist.i) #10
  br label %out.i

out.i:                                            ; preds = %out_rlist_free.i, %for.end.i.out.i_crit_edge, %if.end9.i.out.i_crit_edge, %gfs2_metatype_check_i.exit.i.out.i_crit_edge
  %error.2.i = phi i32 [ %error.1.i, %out_rlist_free.i ], [ 0, %for.end.i.out.i_crit_edge ], [ -5, %gfs2_metatype_check_i.exit.i.out.i_crit_edge ], [ 0, %if.end9.i.out.i_crit_edge ]
  %84 = ptrtoint ptr %indbh.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %indbh.i, align 4
  %tobool.not.i169.i = icmp eq ptr %85, null
  br i1 %tobool.not.i169.i, label %out.i.ea_dealloc_indirect.exit_crit_edge, label %if.then.i170.i

out.i.ea_dealloc_indirect.exit_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ea_dealloc_indirect.exit

if.then.i170.i:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %85) #10
  br label %ea_dealloc_indirect.exit

ea_dealloc_indirect.exit.thread:                  ; preds = %if.end.i.ea_dealloc_indirect.exit.thread_crit_edge, %if.then14.ea_dealloc_indirect.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call2.i, %if.end.i.ea_dealloc_indirect.exit.thread_crit_edge ], [ %call1.i, %if.then14.ea_dealloc_indirect.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %indbh.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rlist.i) #10
  br label %out_quota

ea_dealloc_indirect.exit:                         ; preds = %if.then.i170.i, %out.i.ea_dealloc_indirect.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %indbh.i) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rlist.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.2.i)
  %tobool16.not = icmp eq i32 %error.2.i, 0
  br i1 %tobool16.not, label %ea_dealloc_indirect.exit.if.end19_crit_edge, label %ea_dealloc_indirect.exit.out_quota_crit_edge

ea_dealloc_indirect.exit.out_quota_crit_edge:     ; preds = %ea_dealloc_indirect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_quota

ea_dealloc_indirect.exit.if.end19_crit_edge:      ; preds = %ea_dealloc_indirect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %ea_dealloc_indirect.exit.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %86 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i36 = getelementptr inbounds %struct.super_block, ptr %87, i32 0, i32 33
  %88 = ptrtoint ptr %s_fs_info.i.i36 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %s_fs_info.i.i36, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh.i34) #10
  %90 = ptrtoint ptr %dibh.i34 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh.i34, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh.i) #10
  %91 = call ptr @memset(ptr %gh.i, i32 255, i32 32)
  %call1.i37 = call i32 @gfs2_rindex_update(ptr noundef %89) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %if.end.i42, label %if.end19.ea_dealloc_block.exit_crit_edge

if.end19.ea_dealloc_block.exit_crit_edge:         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %ea_dealloc_block.exit

if.end.i42:                                       ; preds = %if.end19
  %i_eattr.i39 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 4
  %92 = ptrtoint ptr %i_eattr.i39 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %i_eattr.i39, align 8
  %call2.i40 = call ptr @gfs2_blk2rgrpd(ptr noundef %89, i64 noundef %93, i1 noundef zeroext true) #10
  %tobool3.not.i41 = icmp eq ptr %call2.i40, null
  br i1 %tobool3.not.i41, label %if.then4.i, label %if.end5.i45

if.then4.i:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_consist_inode_i(ptr noundef %ip, ptr noundef nonnull @__func__.ea_dealloc_block, ptr noundef nonnull @.str, i32 noundef 1396) #10
  br label %ea_dealloc_block.exit

if.end5.i45:                                      ; preds = %if.end.i42
  %rd_gl.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call2.i40, i32 0, i32 1
  %94 = ptrtoint ptr %rd_gl.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rd_gl.i, align 4
  %96 = call ptr @llvm.returnaddress(i32 0) #10
  %97 = ptrtoint ptr %96 to i32
  call void @__gfs2_holder_init(ptr noundef %95, i32 noundef 1, i16 noundef zeroext 32, ptr noundef nonnull %gh.i, i32 noundef %97) #10
  %call.i.i43 = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i43)
  %tobool.not.i.i44 = icmp eq i32 %call.i.i43, 0
  br i1 %tobool.not.i.i44, label %if.end9.i47, label %gfs2_glock_nq_init.exit.i

gfs2_glock_nq_init.exit.i:                        ; preds = %if.end5.i45
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh.i) #10
  br label %ea_dealloc_block.exit

if.end9.i47:                                      ; preds = %if.end5.i45
  %call10.i = call i32 @gfs2_trans_begin(ptr noundef %89, i32 noundef 6, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i46 = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i46, label %if.end13.i56, label %if.end9.i47.out_gunlock.i63_crit_edge

if.end9.i47.out_gunlock.i63_crit_edge:            ; preds = %if.end9.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_gunlock.i63

if.end13.i56:                                     ; preds = %if.end9.i47
  %98 = ptrtoint ptr %i_eattr.i39 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %i_eattr.i39, align 8
  call void @gfs2_free_meta(ptr noundef %ip, ptr noundef nonnull %call2.i40, i64 noundef %99, i32 noundef 1) #10
  %100 = ptrtoint ptr %i_eattr.i39 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 0, ptr %i_eattr.i39, align 8
  %i_blkbits.i.i48 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %101 = ptrtoint ptr %i_blkbits.i.i48 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %i_blkbits.i.i48, align 2
  %conv.i.i49 = zext i8 %102 to i32
  %sub.i.i50 = add nsw i32 %conv.i.i49, -9
  %sh_prom.i.i51 = zext i32 %sub.i.i50 to i64
  %shl.i.i52 = shl nsw i64 -1, %sh_prom.i.i51
  %i_blocks.i.i53 = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %103 = ptrtoint ptr %i_blocks.i.i53 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %i_blocks.i.i53, align 8
  %sub2.i.i54 = sub i64 0, %shl.i.i52
  call void @__sanitizer_cov_trace_cmp8(i64 %104, i64 %sub2.i.i54)
  %cmp3.i.i55 = icmp ult i64 %104, %sub2.i.i54
  br i1 %cmp3.i.i55, label %if.then.i45.i, label %gfs2_add_inode_blocks.exit.i, !prof !58

if.then.i45.i:                                    ; preds = %if.end13.i56
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i57 = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 33
  %107 = ptrtoint ptr %s_fs_info.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %s_fs_info.i.i.i57, align 16
  call void @gfs2_assert_i(ptr noundef %108) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !60
  unreachable

gfs2_add_inode_blocks.exit.i:                     ; preds = %if.end13.i56
  %add.i.i58 = add i64 %shl.i.i52, %104
  %109 = ptrtoint ptr %i_blocks.i.i53 to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %add.i.i58, ptr %i_blocks.i.i53, align 8
  %i_no_addr.i.i59 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %110 = ptrtoint ptr %i_no_addr.i.i59 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %i_no_addr.i.i59, align 8
  %call.i46.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %111, ptr noundef nonnull %dibh.i34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool18.not.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %gfs2_add_inode_blocks.exit.i.if.end20.i_crit_edge

gfs2_add_inode_blocks.exit.i.if.end20.i_crit_edge: ; preds = %gfs2_add_inode_blocks.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then19.i:                                      ; preds = %gfs2_add_inode_blocks.exit.i
  %i_gl.i60 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %112 = ptrtoint ptr %i_gl.i60 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i_gl.i60, align 4
  %114 = ptrtoint ptr %dibh.i34 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dibh.i34, align 4
  call void @gfs2_trans_add_meta(ptr noundef %113, ptr noundef %115) #10
  %116 = ptrtoint ptr %dibh.i34 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dibh.i34, align 4
  %b_data.i61 = getelementptr inbounds %struct.buffer_head, ptr %117, i32 0, i32 5
  %118 = ptrtoint ptr %b_data.i61 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %b_data.i61, align 4
  call void @gfs2_dinode_out(ptr noundef %ip, ptr noundef %119) #10
  %120 = ptrtoint ptr %dibh.i34 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dibh.i34, align 4
  %tobool.not.i47.i = icmp eq ptr %121, null
  br i1 %tobool.not.i47.i, label %if.then19.i.if.end20.i_crit_edge, label %if.then.i48.i

if.then19.i.if.end20.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then.i48.i:                                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %121) #10
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then.i48.i, %if.then19.i.if.end20.i_crit_edge, %gfs2_add_inode_blocks.exit.i.if.end20.i_crit_edge
  call void @gfs2_trans_end(ptr noundef %89) #10
  br label %out_gunlock.i63

out_gunlock.i63:                                  ; preds = %if.end20.i, %if.end9.i47.out_gunlock.i63_crit_edge
  %error.0.i62 = phi i32 [ %call10.i, %if.end9.i47.out_gunlock.i63_crit_edge ], [ %call.i46.i, %if.end20.i ]
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh.i) #10
  br label %ea_dealloc_block.exit

ea_dealloc_block.exit:                            ; preds = %out_gunlock.i63, %gfs2_glock_nq_init.exit.i, %if.then4.i, %if.end19.ea_dealloc_block.exit_crit_edge
  %retval.0.i64 = phi i32 [ %error.0.i62, %out_gunlock.i63 ], [ -5, %if.then4.i ], [ %call1.i37, %if.end19.ea_dealloc_block.exit_crit_edge ], [ %call.i.i43, %gfs2_glock_nq_init.exit.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh.i34) #10
  br label %out_quota

out_quota:                                        ; preds = %ea_dealloc_block.exit, %ea_dealloc_indirect.exit.out_quota_crit_edge, %ea_dealloc_indirect.exit.thread, %if.end8.out_quota_crit_edge
  %error.0 = phi i32 [ %call9, %if.end8.out_quota_crit_edge ], [ %error.2.i, %ea_dealloc_indirect.exit.out_quota_crit_edge ], [ %retval.0.i64, %ea_dealloc_block.exit ], [ %retval.0.i.ph, %ea_dealloc_indirect.exit.thread ]
  call void @gfs2_quota_unhold(ptr noundef %ip) #10
  br label %cleanup

cleanup:                                          ; preds = %out_quota, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_quota ], [ %call1, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_rindex_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_hold(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ea_dealloc_unstuffed(ptr noundef %ip, ptr noundef %bh, ptr nocapture noundef %ea, ptr noundef %prev, ptr noundef readnone %private) #0 align 64 {
entry:
  %rg_gh = alloca %struct.gfs2_holder, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rg_gh) #10
  %4 = call ptr @memset(ptr %rg_gh, i32 255, i32 32)
  %call1 = tail call i32 @gfs2_rindex_update(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %ea_num_ptrs = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 5
  %5 = ptrtoint ptr %ea_num_ptrs to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ea_num_ptrs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr %struct.gfs2_ea_header, ptr %ea, i32 1
  %ea_name_len = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 2
  %7 = ptrtoint ptr %ea_name_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ea_name_len, align 4
  %conv = zext i8 %8 to i32
  %add = add nuw nsw i32 %conv, 7
  %and = and i32 %add, 504
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %and
  %conv7 = zext i8 %6 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4
  %x.0156 = phi i32 [ 0, %if.end4 ], [ %inc12, %for.body.for.body_crit_edge ]
  %blks.0155 = phi i32 [ 0, %if.end4 ], [ %spec.select149, %for.body.for.body_crit_edge ]
  %bn.0154 = phi i64 [ 0, %if.end4 ], [ %spec.select, %for.body.for.body_crit_edge ]
  %dataptrs.0153 = phi ptr [ %add.ptr5, %if.end4 ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %dataptrs.0153 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dataptrs.0153, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool9.not = icmp eq i64 %10, 0
  %spec.select = select i1 %tobool9.not, i64 %bn.0154, i64 %10
  %not.tobool9.not = xor i1 %tobool9.not, true
  %inc = zext i1 %not.tobool9.not to i32
  %spec.select149 = add i32 %blks.0155, %inc
  %inc12 = add nuw nsw i32 %x.0156, 1
  %incdec.ptr = getelementptr i64, ptr %dataptrs.0153, i32 1
  %exitcond.not = icmp eq i32 %inc12, %conv7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select149)
  %tobool13.not = icmp eq i32 %spec.select149, 0
  br i1 %tobool13.not, label %for.end.cleanup_crit_edge, label %if.end15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %call16 = tail call ptr @gfs2_blk2rgrpd(ptr noundef %3, i64 noundef %spec.select, i1 noundef zeroext true) #10
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gfs2_consist_inode_i(ptr noundef %ip, ptr noundef nonnull @__func__.ea_dealloc_unstuffed, ptr noundef nonnull @.str, i32 noundef 264) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %rd_gl = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call16, i32 0, i32 1
  %11 = ptrtoint ptr %rd_gl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rd_gl, align 4
  %13 = tail call ptr @llvm.returnaddress(i32 0) #10
  %14 = ptrtoint ptr %13 to i32
  call void @__gfs2_holder_init(ptr noundef %12, i32 noundef 1, i16 noundef zeroext 32, ptr noundef nonnull %rg_gh, i32 noundef %14) #10
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %rg_gh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end23, label %gfs2_glock_nq_init.exit

gfs2_glock_nq_init.exit:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_holder_uninit(ptr noundef nonnull %rg_gh) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %rd_length = getelementptr inbounds %struct.gfs2_rgrpd, ptr %call16, i32 0, i32 4
  %15 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rd_length, align 8
  %add27 = add i32 %16, 5
  %call28 = call i32 @gfs2_trans_begin(ptr noundef %3, i32 noundef %add27, i32 noundef %spec.select149) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end23.out_gunlock_crit_edge

if.end23.out_gunlock_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_gunlock

if.end31:                                         ; preds = %if.end23
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %17 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_gl, align 4
  call void @gfs2_trans_add_meta(ptr noundef %18, ptr noundef %bh) #10
  %19 = ptrtoint ptr %ea_num_ptrs to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ea_num_ptrs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp41158.not = icmp eq i8 %20, 0
  br i1 %cmp41158.not, label %if.end31.if.end64_crit_edge, label %for.body43.lr.ph

if.end31.if.end64_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

for.body43.lr.ph:                                 ; preds = %if.end31
  %21 = ptrtoint ptr %ea_name_len to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ea_name_len, align 4
  %conv34 = zext i8 %22 to i32
  %add35 = add nuw nsw i32 %conv34, 7
  %and36 = and i32 %add35, 504
  %add.ptr37 = getelementptr i8, ptr %add.ptr, i32 %and36
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  br label %for.body43

for.body43:                                       ; preds = %gfs2_add_inode_blocks.exit.for.body43_crit_edge, %for.body43.lr.ph
  %x.1162 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc59, %gfs2_add_inode_blocks.exit.for.body43_crit_edge ]
  %blen.0161 = phi i32 [ 0, %for.body43.lr.ph ], [ %blen.1, %gfs2_add_inode_blocks.exit.for.body43_crit_edge ]
  %bstart.0160 = phi i64 [ 0, %for.body43.lr.ph ], [ %bstart.1, %gfs2_add_inode_blocks.exit.for.body43_crit_edge ]
  %dataptrs.1159 = phi ptr [ %add.ptr37, %for.body43.lr.ph ], [ %incdec.ptr60, %gfs2_add_inode_blocks.exit.for.body43_crit_edge ]
  %23 = ptrtoint ptr %dataptrs.1159 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dataptrs.1159, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool44.not = icmp eq i64 %24, 0
  br i1 %tobool44.not, label %for.body43.for.end61_crit_edge, label %if.end46

for.body43.for.end61_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end61

if.end46:                                         ; preds = %for.body43
  %conv47 = zext i32 %blen.0161 to i64
  %add48 = add i64 %bstart.0160, %conv47
  call void @__sanitizer_cov_trace_cmp8(i64 %add48, i64 %24)
  %cmp49 = icmp eq i64 %add48, %24
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %inc52 = add i32 %blen.0161, 1
  br label %if.end56

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bstart.0160)
  %tobool53.not = icmp eq i64 %bstart.0160, 0
  br i1 %tobool53.not, label %if.else.if.end56_crit_edge, label %if.then54

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_free_meta(ptr noundef %ip, ptr noundef nonnull %call16, i64 noundef %bstart.0160, i32 noundef %blen.0161) #10
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.else.if.end56_crit_edge, %if.then51
  %bstart.1 = phi i64 [ %bstart.0160, %if.then51 ], [ %24, %if.then54 ], [ %24, %if.else.if.end56_crit_edge ]
  %blen.1 = phi i32 [ %inc52, %if.then51 ], [ 1, %if.then54 ], [ 1, %if.else.if.end56_crit_edge ]
  %25 = ptrtoint ptr %dataptrs.1159 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %dataptrs.1159, align 8
  %26 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %27 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl nsw i64 -1, %sh_prom.i
  %28 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_blocks.i, align 8
  %sub2.i = sub i64 0, %shl.i
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %sub2.i)
  %cmp3.i = icmp ult i64 %29, %sub2.i
  br i1 %cmp3.i, label %if.then.i150, label %gfs2_add_inode_blocks.exit, !prof !58

if.then.i150:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @gfs2_assert_i(ptr noundef %33) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !60
  unreachable

gfs2_add_inode_blocks.exit:                       ; preds = %if.end56
  %34 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_blocks.i, align 8
  %add.i = add i64 %35, %shl.i
  store i64 %add.i, ptr %i_blocks.i, align 8
  %inc59 = add nuw nsw i32 %x.1162, 1
  %incdec.ptr60 = getelementptr i64, ptr %dataptrs.1159, i32 1
  %36 = ptrtoint ptr %ea_num_ptrs to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ea_num_ptrs, align 1
  %conv40 = zext i8 %37 to i32
  %cmp41 = icmp ult i32 %inc59, %conv40
  br i1 %cmp41, label %gfs2_add_inode_blocks.exit.for.body43_crit_edge, label %gfs2_add_inode_blocks.exit.for.end61_crit_edge

gfs2_add_inode_blocks.exit.for.end61_crit_edge:   ; preds = %gfs2_add_inode_blocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end61

gfs2_add_inode_blocks.exit.for.body43_crit_edge:  ; preds = %gfs2_add_inode_blocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body43

for.end61:                                        ; preds = %gfs2_add_inode_blocks.exit.for.end61_crit_edge, %for.body43.for.end61_crit_edge
  %bstart.0.lcssa = phi i64 [ %bstart.1, %gfs2_add_inode_blocks.exit.for.end61_crit_edge ], [ %bstart.0160, %for.body43.for.end61_crit_edge ]
  %blen.0.lcssa = phi i32 [ %blen.1, %gfs2_add_inode_blocks.exit.for.end61_crit_edge ], [ %blen.0161, %for.body43.for.end61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %bstart.0.lcssa)
  %tobool62.not = icmp eq i64 %bstart.0.lcssa, 0
  br i1 %tobool62.not, label %for.end61.if.end64_crit_edge, label %if.then63

for.end61.if.end64_crit_edge:                     ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then63:                                        ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_free_meta(ptr noundef %ip, ptr noundef nonnull %call16, i64 noundef %bstart.0.lcssa, i32 noundef %blen.0.lcssa) #10
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %for.end61.if.end64_crit_edge, %if.end31.if.end64_crit_edge
  %tobool65.not = icmp ne ptr %prev, null
  %tobool66.not = icmp eq ptr %private, null
  %or.cond = and i1 %tobool65.not, %tobool66.not
  br i1 %or.cond, label %if.then67, label %if.else79

if.then67:                                        ; preds = %if.end64
  %38 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %prev, align 4
  %40 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ea, align 4
  %add69 = add i32 %41, %39
  store i32 %add69, ptr %prev, align 4
  %ea_flags = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 4
  %42 = ptrtoint ptr %ea_flags to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ea_flags, align 2
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool73.not = icmp eq i8 %44, 0
  br i1 %tobool73.not, label %if.then67.if.end81_crit_edge, label %if.then74

if.then67.if.end81_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then74:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  %ea_flags75 = getelementptr inbounds %struct.gfs2_ea_header, ptr %prev, i32 0, i32 4
  %45 = ptrtoint ptr %ea_flags75 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ea_flags75, align 2
  %47 = or i8 %46, 1
  store i8 %47, ptr %ea_flags75, align 2
  br label %if.end81

if.else79:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %ea_type = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 3
  %48 = ptrtoint ptr %ea_type to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %ea_type, align 1
  %49 = ptrtoint ptr %ea_num_ptrs to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %ea_num_ptrs, align 1
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.then74, %if.then67.if.end81_crit_edge
  %i_ctime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %ip) #10
  %50 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 2) #10
  call void @gfs2_trans_end(ptr noundef %3) #10
  br label %out_gunlock

out_gunlock:                                      ; preds = %if.end81, %if.end23.out_gunlock_crit_edge
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %rg_gh) #10
  br label %cleanup

cleanup:                                          ; preds = %out_gunlock, %gfs2_glock_nq_init.exit, %if.then18, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %out_gunlock ], [ -5, %if.then18 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ %call.i, %gfs2_glock_nq_init.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rg_gh) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_unhold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__gfs2_holder_init(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_holder_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_read(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ea_foreach_i(ptr noundef %ip, ptr noundef %bh, ptr nocapture noundef readonly %ea_call, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 5
  %4 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %b_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mh_type.i, align 4
  %conv.i = trunc i32 %9 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 18225520
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !57

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @gfs2_meta_check_ii(ptr noundef %3, ptr noundef %bh, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ea_foreach_i, ptr noundef nonnull @.str, i32 noundef 95) #10
  br label %gfs2_metatype_check_i.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv.i)
  %cmp5.not.i = icmp eq i16 %conv.i, 10
  br i1 %cmp5.not.i, label %if.end.i.if.end_crit_edge, label %if.then13.i, !prof !57

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = tail call i32 @gfs2_metatype_check_ii(ptr noundef %3, ptr noundef %bh, i16 noundef zeroext 10, i16 noundef zeroext %conv.i, ptr noundef nonnull @__func__.ea_foreach_i, ptr noundef nonnull @.str, i32 noundef 95) #10
  br label %gfs2_metatype_check_i.exit

gfs2_metatype_check_i.exit:                       ; preds = %if.then13.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call14.i, %if.then13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %gfs2_metatype_check_i.exit.if.end_crit_edge, label %gfs2_metatype_check_i.exit.cleanup_crit_edge

gfs2_metatype_check_i.exit.cleanup_crit_edge:     ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

gfs2_metatype_check_i.exit.if.end_crit_edge:      ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %gfs2_metatype_check_i.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %10 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %b_data.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 24
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not75 = icmp eq i32 %13, 0
  br i1 %tobool4.not75, label %if.end.fail_crit_edge, label %if.end6.lr.ph

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end6.lr.ph:                                    ; preds = %if.end
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 4
  %sb_fs_format.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 5, i32 2
  br label %if.end6

if.end6:                                          ; preds = %for.inc.if.end6_crit_edge, %if.end6.lr.ph
  %14 = phi i32 [ %13, %if.end6.lr.ph ], [ %34, %for.inc.if.end6_crit_edge ]
  %prev.077 = phi ptr [ null, %if.end6.lr.ph ], [ %ea.076, %for.inc.if.end6_crit_edge ]
  %ea.076 = phi ptr [ %add.ptr, %if.end6.lr.ph ], [ %add.ptr35, %for.inc.if.end6_crit_edge ]
  %15 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data.i, align 4
  %cmp.not = icmp ugt ptr %16, %ea.076
  br i1 %cmp.not, label %if.end6.fail_crit_edge, label %land.lhs.true

if.end6.fail_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

land.lhs.true:                                    ; preds = %if.end6
  %add.ptr9 = getelementptr i8, ptr %ea.076, i32 %14
  %17 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %b_size, align 8
  %add.ptr11 = getelementptr i8, ptr %16, i32 %18
  %cmp12.not = icmp ugt ptr %add.ptr9, %add.ptr11
  br i1 %cmp12.not, label %land.lhs.true.fail_crit_edge, label %if.end14

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end14:                                         ; preds = %land.lhs.true
  %19 = ptrtoint ptr %sb_fs_format.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_fs_format.i, align 8
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end14.fail_crit_edge [
    i32 1802, label %if.end14.if.end17_crit_edge
    i32 1801, label %gfs2_eatype_valid.exit
  ]

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end14.fail_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

gfs2_eatype_valid.exit:                           ; preds = %if.end14
  %ea_type = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea.076, i32 0, i32 3
  %22 = ptrtoint ptr %ea_type to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ea_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp.i = icmp ult i8 %23, 4
  br i1 %cmp.i, label %gfs2_eatype_valid.exit.if.end17_crit_edge, label %gfs2_eatype_valid.exit.fail_crit_edge

gfs2_eatype_valid.exit.fail_crit_edge:            ; preds = %gfs2_eatype_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

gfs2_eatype_valid.exit.if.end17_crit_edge:        ; preds = %gfs2_eatype_valid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %gfs2_eatype_valid.exit.if.end17_crit_edge, %if.end14.if.end17_crit_edge
  %call18 = tail call i32 %ea_call(ptr noundef %ip, ptr noundef %bh, ptr noundef %ea.076, ptr noundef %prev.077, ptr noundef %data) #10, !callees !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %ea_flags = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea.076, i32 0, i32 4
  %24 = ptrtoint ptr %ea_flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ea_flags, align 2
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool22.not = icmp eq i8 %26, 0
  %27 = ptrtoint ptr %ea.076 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ea.076, align 4
  %add.ptr35 = getelementptr i8, ptr %ea.076, i32 %28
  br i1 %tobool22.not, label %for.inc, label %if.then23

if.then23:                                        ; preds = %if.end21
  %29 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data.i, align 4
  %31 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %b_size, align 8
  %add.ptr28 = getelementptr i8, ptr %30, i32 %32
  %cmp29.not = icmp eq ptr %add.ptr35, %add.ptr28
  br i1 %cmp29.not, label %if.then23.cleanup_crit_edge, label %if.then23.fail_crit_edge

if.then23.fail_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.end21
  %33 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr35, align 4
  %tobool4.not = icmp eq i32 %34, 0
  br i1 %tobool4.not, label %for.inc.fail_crit_edge, label %for.inc.if.end6_crit_edge

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.inc.fail_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

fail:                                             ; preds = %for.inc.fail_crit_edge, %if.then23.fail_crit_edge, %gfs2_eatype_valid.exit.fail_crit_edge, %if.end14.fail_crit_edge, %land.lhs.true.fail_crit_edge, %if.end6.fail_crit_edge, %if.end.fail_crit_edge
  tail call void @gfs2_consist_inode_i(ptr noundef %ip, ptr noundef nonnull @__func__.ea_foreach_i, ptr noundef nonnull @.str, i32 noundef 121) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %gfs2_metatype_check_i.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %fail ], [ -5, %gfs2_metatype_check_i.exit.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_consist_inode_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_check_ii(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_metatype_check_ii(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ea_find_i(ptr nocapture noundef readnone %ip, ptr noundef %bh, ptr noundef %ea, ptr noundef %prev, ptr nocapture noundef readonly %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ea_type = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 3
  %0 = ptrtoint ptr %ea_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ea_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp4 = icmp eq i32 %3, %conv
  br i1 %cmp4, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %ea_name_len = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 2
  %4 = ptrtoint ptr %ea_name_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ea_name_len, align 4
  %conv7 = zext i8 %5 to i32
  %namel = getelementptr inbounds %struct.ea_find, ptr %private, i32 0, i32 2
  %6 = ptrtoint ptr %namel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %namel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv7)
  %cmp8 = icmp eq i32 %7, %conv7
  br i1 %cmp8, label %land.lhs.true, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then6
  %add.ptr = getelementptr %struct.gfs2_ea_header, ptr %ea, i32 1
  %name = getelementptr inbounds %struct.ea_find, ptr %private, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %bcmp = tail call i32 @bcmp(ptr %add.ptr, ptr %9, i32 %conv7) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then12, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %ef_el = getelementptr inbounds %struct.ea_find, ptr %private, i32 0, i32 3
  %10 = ptrtoint ptr %ef_el to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ef_el, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #10, !srcloc !62
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bh, ptr %11, align 4
  %el_ea = getelementptr inbounds %struct.gfs2_ea_location, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %el_ea to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ea, ptr %el_ea, align 4
  %el_prev = getelementptr inbounds %struct.gfs2_ea_location, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %el_prev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %prev, ptr %el_prev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %land.lhs.true.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_trans_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ea_alloc_skeleton(ptr noundef %ip, ptr noundef %er, i32 noundef %blks, ptr nocapture noundef readonly %skeleton_call, ptr noundef %private) unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.gfs2_alloc_parms, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #10
  %0 = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 1
  %conv = zext i32 %blks to i64
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %ap, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %0, align 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call i32 @gfs2_rindex_update(ptr noundef %6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.gfs2_alloc_parms, ptr %ap, i32 0, i32 3
  %8 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 4294967295, ptr %7, align 8
  %call1.i = tail call zeroext i1 @capable(i32 noundef 24) #10
  br i1 %call1.i, label %if.end.if.end5_crit_edge, label %lor.lhs.false.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

lor.lhs.false.i:                                  ; preds = %if.end
  %ar_quota.i = getelementptr inbounds %struct.gfs2_sbd, ptr %11, i32 0, i32 21, i32 3
  %13 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i = load i32, ptr %ar_quota.i, align 4
  %14 = and i32 %bf.load.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.end5_crit_edge, label %if.end.i

lor.lhs.false.i.if.end5_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @gfs2_quota_lock(ptr noundef %ip, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %15 = ptrtoint ptr %ar_quota.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load10.i = load i32, ptr %ar_quota.i, align 4
  %16 = and i32 %bf.load10.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %16)
  %cmp13.not.i = icmp eq i32 %16, 134217728
  br i1 %cmp13.not.i, label %if.end15.i, label %if.end7.i.if.end5_crit_edge

if.end7.i.if.end5_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end15.i:                                       ; preds = %if.end7.i
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %17 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack.i = load i32, ptr %i_uid.i, align 4
  %18 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %19 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack36.i = load i32, ptr %i_gid.i, align 8
  %20 = insertvalue [1 x i32] undef, i32 %.unpack36.i, 0
  %call20.i = call i32 @gfs2_quota_check(ptr noundef %ip, [1 x i32] %18, [1 x i32] %20, ptr noundef nonnull %ap) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end15.i.if.end5_crit_edge, label %if.end15.i.cleanup.sink.split_crit_edge

if.end15.i.cleanup.sink.split_crit_edge:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end15.i.if.end5_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %if.end15.i.if.end5_crit_edge, %if.end7.i.if.end5_crit_edge, %lor.lhs.false.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call6 = call i32 @gfs2_inplace_reserve(ptr noundef %ip, ptr noundef nonnull %ap) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end5
  %21 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i51 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i51, align 16
  %rs_rgd.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %rs_rgd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rs_rgd.i, align 4
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rd_length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %blks)
  %cmp.i52 = icmp ugt i32 %28, %blks
  %add.i = add i32 %blks, 1
  %retval.0.i53 = select i1 %cmp.i52, i32 %add.i, i32 %28
  %add = add i32 %blks, 4
  %add15 = add i32 %add, %retval.0.i53
  %call16 = call i32 @gfs2_trans_begin(ptr noundef %24, i32 noundef %add15, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end9.out_ipres_crit_edge

if.end9.out_ipres_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ipres

if.end19:                                         ; preds = %if.end9
  %call20 = call i32 %skeleton_call(ptr noundef %ip, ptr noundef %er, ptr noundef %private) #10, !callees !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_end_trans_crit_edge

if.end19.out_end_trans_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_end_trans

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %i_ctime = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %ip) #10
  %29 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 2) #10
  br label %out_end_trans

out_end_trans:                                    ; preds = %if.end23, %if.end19.out_end_trans_crit_edge
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i55 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i55, align 16
  call void @gfs2_trans_end(ptr noundef %33) #10
  br label %out_ipres

out_ipres:                                        ; preds = %out_end_trans, %if.end9.out_ipres_crit_edge
  %error.0 = phi i32 [ %call16, %if.end9.out_ipres_crit_edge ], [ %call20, %out_end_trans ]
  call void @gfs2_inplace_release(ptr noundef %ip) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_ipres, %if.end5.cleanup.sink.split_crit_edge, %if.end15.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call20.i, %if.end15.i.cleanup.sink.split_crit_edge ], [ %call6, %if.end5.cleanup.sink.split_crit_edge ], [ %error.0, %out_ipres ]
  call void @gfs2_quota_unlock(ptr noundef %ip) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call5.i, %if.end.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ea_init_i(ptr noundef %ip, ptr nocapture noundef readonly %er, ptr nocapture noundef readnone %private) #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #10
  %0 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !56
  %call = call fastcc i32 @ea_alloc_blk(ptr noundef %ip, ptr noundef nonnull %bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bh, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %b_blocknr, align 8
  %i_eattr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 4
  %5 = ptrtoint ptr %i_eattr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %i_eattr, align 8
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 24
  %call1 = tail call fastcc i32 @ea_write(ptr noundef %ip, ptr noundef %add.ptr, ptr noundef %er)
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__brelse(ptr noundef nonnull %2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_inplace_reserve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_inplace_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_quota_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_lock(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_quota_check(ptr noundef, [1 x i32], [1 x i32], ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ea_alloc_blk(ptr noundef %ip, ptr nocapture noundef %bhp) unnamed_addr #0 align 64 {
entry:
  %n = alloca i32, align 4
  %block = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #10
  %4 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %n, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block) #10
  %5 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %block, align 8, !annotation !56
  %call1 = call i32 @gfs2_alloc_blocks(ptr noundef %ip, ptr noundef nonnull %block, ptr noundef nonnull %n, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %block, align 8
  call void @gfs2_trans_remove_revoke(ptr noundef %3, i64 noundef %7, i32 noundef 1) #10
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %8 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gl, align 4
  %10 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %block, align 8
  %call2 = call ptr @gfs2_meta_new(ptr noundef %9, i64 noundef %11) #10
  %12 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2, ptr %bhp, align 4
  %13 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_gl, align 4
  call void @gfs2_trans_add_meta(ptr noundef %14, ptr noundef %call2) #10
  %15 = ptrtoint ptr %bhp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bhp, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %b_data.i, align 4
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 10, ptr %mh_type.i, align 4
  %mh_format.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %18, i32 0, i32 3
  %20 = ptrtoint ptr %mh_format.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1600, ptr %mh_format.i, align 8
  %21 = load ptr, ptr %bhp, align 4
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %23)
  %cmp.i = icmp ult i32 %23, 24
  br i1 %cmp.i, label %do.body2.i, label %gfs2_buffer_clear_tail.exit, !prof !58

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

gfs2_buffer_clear_tail.exit:                      ; preds = %if.end
  %b_data.i22 = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %b_data.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_data.i22, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 24
  %sub.i = add i32 %23, -24
  %26 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %27 = ptrtoint ptr %bhp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bhp, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 24
  %sd_jbsize = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 11
  %31 = ptrtoint ptr %sd_jbsize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sd_jbsize, align 4
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %add.ptr, align 4
  %ea_type = getelementptr i8, ptr %30, i32 33
  %34 = ptrtoint ptr %ea_type to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %ea_type, align 1
  %ea_flags = getelementptr i8, ptr %30, i32 34
  %35 = ptrtoint ptr %ea_flags to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %ea_flags, align 2
  %ea_num_ptrs = getelementptr i8, ptr %30, i32 35
  %36 = ptrtoint ptr %ea_num_ptrs to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %ea_num_ptrs, align 1
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %37 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %38 to i32
  %sub.i23 = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i23 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i23)
  %cmp.i24.not = icmp eq i32 %sub.i23, 63
  br i1 %cmp.i24.not, label %lor.rhs.i, label %gfs2_buffer_clear_tail.exit.gfs2_add_inode_blocks.exit_crit_edge

gfs2_buffer_clear_tail.exit.gfs2_add_inode_blocks.exit_crit_edge: ; preds = %gfs2_buffer_clear_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_add_inode_blocks.exit

lor.rhs.i:                                        ; preds = %gfs2_buffer_clear_tail.exit
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %39 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_blocks.i, align 8
  %sub2.i = sub i64 0, %shl.i
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %sub2.i)
  %cmp3.i = icmp ult i64 %40, %sub2.i
  br i1 %cmp3.i, label %if.then.i, label %lor.rhs.i.gfs2_add_inode_blocks.exit_crit_edge, !prof !58

lor.rhs.i.gfs2_add_inode_blocks.exit_crit_edge:   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_add_inode_blocks.exit

if.then.i:                                        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 33
  %43 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @gfs2_assert_i(ptr noundef %44) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !60
  unreachable

gfs2_add_inode_blocks.exit:                       ; preds = %lor.rhs.i.gfs2_add_inode_blocks.exit_crit_edge, %gfs2_buffer_clear_tail.exit.gfs2_add_inode_blocks.exit_crit_edge
  %i_blocks11.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %45 = ptrtoint ptr %i_blocks11.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %i_blocks11.i, align 8
  %add.i = add i64 %46, %shl.i
  store i64 %add.i, ptr %i_blocks11.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %gfs2_add_inode_blocks.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ea_write(ptr noundef %ip, ptr nocapture noundef %ea, ptr nocapture noundef readonly %er) unnamed_addr #0 align 64 {
entry:
  %block = alloca i64, align 8
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %er_data_len = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 3
  %4 = ptrtoint ptr %er_data_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %er_data_len, align 4
  %ea_data_len = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 1
  %6 = ptrtoint ptr %ea_data_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ea_data_len, align 4
  %er_name_len = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 2
  %7 = ptrtoint ptr %er_name_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %er_name_len, align 4
  %conv = trunc i32 %8 to i8
  %ea_name_len = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 2
  %9 = ptrtoint ptr %ea_name_len to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %ea_name_len, align 4
  %er_type = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 4
  %10 = ptrtoint ptr %er_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %er_type, align 4
  %conv1 = trunc i32 %11 to i8
  %ea_type = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 3
  %12 = ptrtoint ptr %ea_type to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv1, ptr %ea_type, align 1
  %__pad = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 6
  %13 = ptrtoint ptr %__pad to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %__pad, align 4
  %add.ptr = getelementptr %struct.gfs2_ea_header, ptr %ea, i32 1
  %14 = ptrtoint ptr %er to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %er, align 4
  %16 = load i32, ptr %er_name_len, align 4
  %17 = call ptr @memcpy(ptr %add.ptr, ptr %15, i32 %16)
  %18 = load i32, ptr %er_name_len, align 4
  %19 = load i32, ptr %er_data_len, align 4
  %add5 = add i32 %18, 23
  %add6 = add i32 %add5, %19
  %and = and i32 %add6, -8
  %sd_jbsize = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %sd_jbsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sd_jbsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %21)
  %cmp.not = icmp ugt i32 %and, %21
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ea_num_ptrs = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 5
  %22 = ptrtoint ptr %ea_num_ptrs to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ea_num_ptrs, align 1
  %conv10 = and i32 %8, 255
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %conv10
  %er_data = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 1
  %23 = ptrtoint ptr %er_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %er_data, align 4
  %25 = ptrtoint ptr %er_data_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %er_data_len, align 4
  %27 = call ptr @memcpy(ptr %add.ptr11, ptr %24, i32 %26)
  br label %cleanup75

if.else:                                          ; preds = %entry
  %er_data19 = getelementptr inbounds %struct.gfs2_ea_request, ptr %er, i32 0, i32 1
  %28 = ptrtoint ptr %er_data19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %er_data19, align 4
  %add23 = add i32 %19, -1
  %sub = add i32 %add23, %21
  %div = udiv i32 %sub, %21
  %conv25 = trunc i32 %div to i8
  %ea_num_ptrs26 = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 5
  %30 = ptrtoint ptr %ea_num_ptrs26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv25, ptr %ea_num_ptrs26, align 1
  %conv28147 = and i32 %div, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28147)
  %cmp29148.not = icmp eq i32 %conv28147, 0
  br i1 %cmp29148.not, label %if.else.for.end_crit_edge, label %for.body.lr.ph

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %conv15 = and i32 %8, 255
  %add16 = add nuw nsw i32 %conv15, 7
  %and17 = and i32 %add16, 504
  %add.ptr18 = getelementptr i8, ptr %add.ptr, i32 %and17
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %x.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %data_len.0151 = phi i32 [ %19, %for.body.lr.ph ], [ %sub52, %for.inc.for.body_crit_edge ]
  %data.0150 = phi ptr [ %29, %for.body.lr.ph ], [ %add.ptr51, %for.inc.for.body_crit_edge ]
  %dataptr.0149 = phi ptr [ %add.ptr18, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %block) #10
  %31 = ptrtoint ptr %block to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 -1, ptr %block, align 8, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #10
  %32 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %n, align 4
  %call31 = call i32 @gfs2_alloc_blocks(ptr noundef %ip, ptr noundef nonnull %block, ptr noundef nonnull %n, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.end, label %cleanup67

if.end:                                           ; preds = %for.body
  %33 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %block, align 8
  call void @gfs2_trans_remove_revoke(ptr noundef %3, i64 noundef %34, i32 noundef 1) #10
  %35 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_gl, align 4
  %37 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %block, align 8
  %call33 = call ptr @gfs2_meta_new(ptr noundef %36, i64 noundef %38) #10
  %39 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_gl, align 4
  call void @gfs2_trans_add_meta(ptr noundef %40, ptr noundef %call33) #10
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call33, i32 0, i32 5
  %41 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data.i, align 4
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 11, ptr %mh_type.i, align 4
  %mh_format.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %42, i32 0, i32 3
  %44 = ptrtoint ptr %mh_format.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1700, ptr %mh_format.i, align 8
  %45 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %46 to i32
  %sub.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i)
  %cmp.i.not = icmp eq i32 %sub.i, 63
  br i1 %cmp.i.not, label %lor.rhs.i, label %if.end.gfs2_add_inode_blocks.exit_crit_edge

if.end.gfs2_add_inode_blocks.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_add_inode_blocks.exit

lor.rhs.i:                                        ; preds = %if.end
  %47 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %i_blocks.i, align 8
  %sub2.i = sub i64 0, %shl.i
  call void @__sanitizer_cov_trace_cmp8(i64 %48, i64 %sub2.i)
  %cmp3.i = icmp ult i64 %48, %sub2.i
  br i1 %cmp3.i, label %if.then.i, label %lor.rhs.i.gfs2_add_inode_blocks.exit_crit_edge, !prof !58

lor.rhs.i.gfs2_add_inode_blocks.exit_crit_edge:   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_add_inode_blocks.exit

if.then.i:                                        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 33
  %51 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @gfs2_assert_i(ptr noundef %52) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !60
  unreachable

gfs2_add_inode_blocks.exit:                       ; preds = %lor.rhs.i.gfs2_add_inode_blocks.exit_crit_edge, %if.end.gfs2_add_inode_blocks.exit_crit_edge
  %53 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %i_blocks.i, align 8
  %add.i = add i64 %54, %shl.i
  store i64 %add.i, ptr %i_blocks.i, align 8
  %55 = ptrtoint ptr %sd_jbsize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sd_jbsize, align 4
  %57 = call i32 @llvm.umin.i32(i32 %data_len.0151, i32 %56)
  %58 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %b_data.i, align 4
  %add.ptr40 = getelementptr i8, ptr %59, i32 24
  %60 = call ptr @memcpy(ptr %add.ptr40, ptr %data.0150, i32 %57)
  %61 = ptrtoint ptr %sd_jbsize to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sd_jbsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %57)
  %cmp42 = icmp ugt i32 %62, %57
  br i1 %cmp42, label %if.then44, label %gfs2_add_inode_blocks.exit.if.end50_crit_edge

gfs2_add_inode_blocks.exit.if.end50_crit_edge:    ; preds = %gfs2_add_inode_blocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then44:                                        ; preds = %gfs2_add_inode_blocks.exit
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %b_data.i, align 4
  %add.ptr46 = getelementptr i8, ptr %64, i32 24
  %add.ptr47 = getelementptr i8, ptr %add.ptr46, i32 %57
  %sub49 = sub i32 %62, %57
  %65 = call ptr @memset(ptr %add.ptr47, i32 0, i32 %sub49)
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %gfs2_add_inode_blocks.exit.if.end50_crit_edge
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %call33, i32 0, i32 3
  %66 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %b_blocknr, align 8
  %incdec.ptr = getelementptr i64, ptr %dataptr.0149, i32 1
  %68 = ptrtoint ptr %dataptr.0149 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %dataptr.0149, align 8
  %add.ptr51 = getelementptr i8, ptr %data.0150, i32 %57
  %sub52 = sub i32 %data_len.0151, %57
  %tobool.not.i = icmp eq ptr %call33, null
  br i1 %tobool.not.i, label %if.end50.for.inc_crit_edge, label %if.then.i134

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i134:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %call33) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then.i134, %if.end50.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #10
  %inc = add nuw nsw i32 %x.0152, 1
  %69 = ptrtoint ptr %ea_num_ptrs26 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ea_num_ptrs26, align 1
  %conv28 = zext i8 %70 to i32
  %cmp29 = icmp ult i32 %inc, %conv28
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge
  %data_len.0.lcssa = phi i32 [ %19, %if.else.for.end_crit_edge ], [ %sub52, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len.0.lcssa)
  %tobool56.not = icmp eq i32 %data_len.0.lcssa, 0
  br i1 %tobool56.not, label %for.end.cleanup75_crit_edge, label %if.then62, !prof !57

for.end.cleanup75_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup75

if.then62:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_assert_withdraw_i(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ea_write, ptr noundef nonnull @.str, i32 noundef 728, i1 noundef zeroext false) #10
  br label %cleanup75

cleanup67:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %block) #10
  br label %cleanup75

cleanup75:                                        ; preds = %cleanup67, %if.then62, %for.end.cleanup75_crit_edge, %if.then
  %retval.3 = phi i32 [ %call31, %cleanup67 ], [ 0, %if.then ], [ 0, %for.end.cleanup75_crit_edge ], [ 0, %if.then62 ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_alloc_blocks(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_remove_revoke(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_meta_new(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_i(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_withdraw_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ea_set_simple(ptr noundef %ip, ptr noundef %bh, ptr noundef %ea, ptr noundef %prev, ptr noundef %private) #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %es_er = getelementptr inbounds %struct.ea_set, ptr %private, i32 0, i32 1
  %4 = ptrtoint ptr %es_er to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %es_er, align 4
  %er_name_len = getelementptr inbounds %struct.gfs2_ea_request, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %er_name_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %er_name_len, align 4
  %er_data_len = getelementptr inbounds %struct.gfs2_ea_request, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %er_data_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %er_data_len, align 4
  %sd_jbsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %sd_jbsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sd_jbsize.i, align 4
  %add1.i = add i32 %7, 23
  %add2.i = add i32 %add1.i, %9
  %and.i = and i32 %add2.i, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %11)
  %cmp.not.i = icmp ugt i32 %and.i, %11
  br i1 %cmp.not.i, label %if.end.i, label %entry.ea_calc_size.exit_crit_edge

entry.ea_calc_size.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ea_calc_size.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add4.i = add i32 %9, -1
  %sub.i = add i32 %add4.i, %11
  %div.i = udiv i32 %sub.i, %11
  %mul.i = shl i32 %div.i, 3
  %add6.i = add i32 %mul.i, %add1.i
  %and7.i = and i32 %add6.i, -8
  br label %ea_calc_size.exit

ea_calc_size.exit:                                ; preds = %if.end.i, %entry.ea_calc_size.exit_crit_edge
  %storemerge.i = phi i32 [ %and7.i, %if.end.i ], [ %and.i, %entry.ea_calc_size.exit_crit_edge ]
  %ea_type = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 3
  %12 = ptrtoint ptr %ea_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ea_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ea, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %ea_calc_size.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %storemerge.i)
  %cmp4 = icmp ult i32 %15, %storemerge.i
  br i1 %cmp4, label %if.then.cleanup51_crit_edge, label %if.end

if.then.cleanup51_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end:                                           ; preds = %if.then
  %ea_num_ptrs = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 5
  %16 = ptrtoint ptr %ea_num_ptrs to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ea_num_ptrs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.if.end27_crit_edge, label %if.then7

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #10
  %call1.i = tail call i32 @gfs2_rindex_update(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i87, label %ea_remove_unstuffed.exit.thread

ea_remove_unstuffed.exit.thread:                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #10
  br label %cleanup51

if.end.i87:                                       ; preds = %if.then7
  %call5.i = tail call i32 @gfs2_quota_hold(ptr noundef %ip, [1 x i32] [i32 -1], [1 x i32] [i32 -1]) #10
  %18 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call5.i, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %ea_remove_unstuffed.exit, label %ea_remove_unstuffed.exit.thread101

ea_remove_unstuffed.exit.thread101:               ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #10
  br label %cleanup51

ea_remove_unstuffed.exit:                         ; preds = %if.end.i87
  %call10.i = call i32 @ea_dealloc_unstuffed(ptr noundef %ip, ptr noundef %bh, ptr noundef %ea, ptr noundef %prev, ptr noundef nonnull %error.i) #10
  %19 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call10.i, ptr %error.i, align 4
  call void @gfs2_quota_unhold(ptr noundef %ip) #10
  %20 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool9.not = icmp eq i32 %.pr, 0
  br i1 %tobool9.not, label %ea_remove_unstuffed.exit.if.end27_crit_edge, label %ea_remove_unstuffed.exit.cleanup51_crit_edge

ea_remove_unstuffed.exit.cleanup51_crit_edge:     ; preds = %ea_remove_unstuffed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

ea_remove_unstuffed.exit.if.end27_crit_edge:      ; preds = %ea_remove_unstuffed.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.else:                                          ; preds = %ea_calc_size.exit
  %ea_name_len = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 2
  %21 = ptrtoint ptr %ea_name_len to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ea_name_len, align 4
  %conv14 = zext i8 %22 to i32
  %ea_num_ptrs15 = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 5
  %23 = ptrtoint ptr %ea_num_ptrs15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ea_num_ptrs15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool16.not = icmp eq i8 %24, 0
  br i1 %tobool16.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %ea_data_len = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 1
  %25 = ptrtoint ptr %ea_data_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ea_data_len, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv18 = zext i8 %24 to i32
  %mul = shl nuw nsw i32 %conv18, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %mul, %cond.false ]
  %add19 = add nuw nsw i32 %conv14, 23
  %add20 = add i32 %add19, %cond
  %and = and i32 %add20, -8
  %sub = sub i32 %15, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %storemerge.i)
  %cmp21.not = icmp ult i32 %sub, %storemerge.i
  br i1 %cmp21.not, label %cond.end.cleanup51_crit_edge, label %cond.end.if.end27_crit_edge

cond.end.if.end27_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

cond.end.cleanup51_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end27:                                         ; preds = %cond.end.if.end27_crit_edge, %ea_remove_unstuffed.exit.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %storemerge = phi i32 [ 0, %ea_remove_unstuffed.exit.if.end27_crit_edge ], [ 0, %if.end.if.end27_crit_edge ], [ 1, %cond.end.if.end27_crit_edge ]
  %27 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge, ptr %private, align 4
  br i1 %cmp.not.i, label %if.else34, label %if.then29

if.then29:                                        ; preds = %if.end27
  %28 = ptrtoint ptr %es_er to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %es_er, align 4
  %30 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i90 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 33
  %32 = ptrtoint ptr %s_fs_info.i.i90 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %s_fs_info.i.i90, align 16
  %call1.i91 = call i32 @gfs2_trans_begin(ptr noundef %33, i32 noundef 3, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i91)
  %tobool.not.i92 = icmp eq i32 %call1.i91, 0
  br i1 %tobool.not.i92, label %if.end.i93, label %if.then29.cleanup51_crit_edge

if.then29.cleanup51_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.end.i93:                                       ; preds = %if.then29
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %34 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_gl.i, align 4
  call void @gfs2_trans_add_meta(ptr noundef %35, ptr noundef %bh) #10
  %36 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool2.not.i = icmp eq i32 %37, 0
  br i1 %tobool2.not.i, label %if.end.i93.if.end5.i_crit_edge, label %if.then3.i

if.end.i93.if.end5.i_crit_edge:                   ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i93
  %ea_name_len.i.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 2
  %38 = ptrtoint ptr %ea_name_len.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ea_name_len.i.i, align 4
  %ea_num_ptrs.i.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 5
  %40 = ptrtoint ptr %ea_num_ptrs.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ea_num_ptrs.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %ea_data_len.i.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 1
  %42 = ptrtoint ptr %ea_data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ea_data_len.i.i, align 4
  br label %ea_split_ea.exit.i

cond.false.i.i:                                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i = zext i8 %41 to i32
  %mul.i.i = shl nuw nsw i32 %conv2.i.i, 3
  br label %ea_split_ea.exit.i

ea_split_ea.exit.i:                               ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %43, %cond.true.i.i ], [ %mul.i.i, %cond.false.i.i ]
  %conv.i.i = zext i8 %39 to i32
  %add3.i.i = add nuw nsw i32 %conv.i.i, 23
  %add4.i.i = add i32 %add3.i.i, %cond.i.i
  %and.i.i = and i32 %add4.i.i, -8
  %add.ptr.i.i = getelementptr i8, ptr %ea, i32 %and.i.i
  %44 = ptrtoint ptr %ea to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ea, align 4
  %sub.i.i = sub i32 %45, %and.i.i
  %ea_flags.i.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %ea, i32 0, i32 4
  %46 = ptrtoint ptr %ea_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ea_flags.i.i, align 2
  %48 = and i8 %47, 1
  store i32 %and.i.i, ptr %ea, align 4
  %xor27.i.i = and i8 %47, -2
  store i8 %xor27.i.i, ptr %ea_flags.i.i, align 2
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.i.i, ptr %add.ptr.i.i, align 4
  %ea_flags13.i.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %add.ptr.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %ea_flags13.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %48, ptr %ea_flags13.i.i, align 2
  br label %if.end5.i

if.end5.i:                                        ; preds = %ea_split_ea.exit.i, %if.end.i93.if.end5.i_crit_edge
  %ea.addr.0.i = phi ptr [ %add.ptr.i.i, %ea_split_ea.exit.i ], [ %ea, %if.end.i93.if.end5.i_crit_edge ]
  %call6.i = call fastcc i32 @ea_write(ptr noundef %ip, ptr noundef %ea.addr.0.i, ptr noundef %29) #10
  %es_el.i = getelementptr inbounds %struct.ea_set, ptr %private, i32 0, i32 2
  %51 = ptrtoint ptr %es_el.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %es_el.i, align 4
  %tobool7.not.i = icmp eq ptr %52, null
  br i1 %tobool7.not.i, label %if.end5.i.ea_set_simple_noalloc.exit.thread_crit_edge, label %if.then8.i

if.end5.i.ea_set_simple_noalloc.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ea_set_simple_noalloc.exit.thread

if.then8.i:                                       ; preds = %if.end5.i
  %el_ea.i.i = getelementptr inbounds %struct.gfs2_ea_location, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %el_ea.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %el_ea.i.i, align 4
  %el_prev.i.i = getelementptr inbounds %struct.gfs2_ea_location, ptr %52, i32 0, i32 2
  %55 = ptrtoint ptr %el_prev.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %el_prev.i.i, align 4
  %57 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %i_gl.i, align 4
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %52, align 4
  call void @gfs2_trans_add_meta(ptr noundef %58, ptr noundef %60) #10
  %tobool.not.i30.i = icmp eq ptr %56, null
  br i1 %tobool.not.i30.i, label %if.then8.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.then8.i.if.then.i.i_crit_edge:                 ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then8.i
  %ea_num_ptrs.i31.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %54, i32 0, i32 5
  %61 = ptrtoint ptr %ea_num_ptrs.i31.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %ea_num_ptrs.i31.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool1.not.i.i = icmp eq i8 %62, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then8.i.if.then.i.i_crit_edge
  %ea_type.i.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %54, i32 0, i32 3
  %63 = ptrtoint ptr %ea_type.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %ea_type.i.i, align 1
  br label %ea_set_simple_noalloc.exit.thread

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  %64 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %56, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %56, i32 %65
  %cmp.not.i.i = icmp eq ptr %add.ptr.i32.i, %54
  br i1 %cmp.not.i.i, label %if.else.i.i.if.end17.i.i_crit_edge, label %if.then2.i.i

if.else.i.i.if.end17.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  %66 = ptrtoint ptr %add.ptr.i32.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr.i32.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr.i32.i, i32 %67
  %cmp7.not.i.i = icmp eq ptr %add.ptr6.i.i, %54
  br i1 %cmp7.not.i.i, label %if.then2.i.i.if.end17.i.i_crit_edge, label %if.then12.i.i, !prof !57

if.then2.i.i.if.end17.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i.i

if.then12.i.i:                                    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %69, i32 0, i32 33
  %70 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @gfs2_assert_withdraw_i(ptr noundef %71, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ea_set_remove_stuffed, ptr noundef nonnull @.str, i32 noundef 851, i1 noundef zeroext false) #10
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then12.i.i, %if.then2.i.i.if.end17.i.i_crit_edge, %if.else.i.i.if.end17.i.i_crit_edge
  %prev.0.i.i = phi ptr [ %56, %if.else.i.i.if.end17.i.i_crit_edge ], [ %add.ptr.i32.i, %if.then12.i.i ], [ %add.ptr.i32.i, %if.then2.i.i.if.end17.i.i_crit_edge ]
  %72 = ptrtoint ptr %prev.0.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %prev.0.i.i, align 4
  %74 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %54, align 4
  %add.i.i = add i32 %75, %73
  store i32 %add.i.i, ptr %prev.0.i.i, align 4
  %ea_flags.i33.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %54, i32 0, i32 4
  %76 = ptrtoint ptr %ea_flags.i33.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ea_flags.i33.i, align 2
  %78 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool21.not.i.i = icmp eq i8 %78, 0
  br i1 %tobool21.not.i.i, label %if.end17.i.i.ea_set_simple_noalloc.exit.thread_crit_edge, label %if.then22.i.i

if.end17.i.i.ea_set_simple_noalloc.exit.thread_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ea_set_simple_noalloc.exit.thread

if.then22.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %ea_flags23.i.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %prev.0.i.i, i32 0, i32 4
  %79 = ptrtoint ptr %ea_flags23.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ea_flags23.i.i, align 2
  %81 = or i8 %80, 1
  store i8 %81, ptr %ea_flags23.i.i, align 2
  br label %ea_set_simple_noalloc.exit.thread

ea_set_simple_noalloc.exit.thread:                ; preds = %if.then22.i.i, %if.end17.i.i.ea_set_simple_noalloc.exit.thread_crit_edge, %if.then.i.i, %if.end5.i.ea_set_simple_noalloc.exit.thread_crit_edge
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef %ip) #10
  %82 = call ptr @memcpy(ptr %i_ctime.i, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @__mark_inode_dirty(ptr noundef %ip, i32 noundef 2) #10
  %83 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i35.i = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 33
  %85 = ptrtoint ptr %s_fs_info.i35.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %s_fs_info.i35.i, align 16
  call void @gfs2_trans_end(ptr noundef %86) #10
  br label %if.end50

if.else34:                                        ; preds = %if.end27
  %es_bh = getelementptr inbounds %struct.ea_set, ptr %private, i32 0, i32 3
  %87 = ptrtoint ptr %es_bh to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %bh, ptr %es_bh, align 4
  %es_ea = getelementptr inbounds %struct.ea_set, ptr %private, i32 0, i32 4
  %88 = ptrtoint ptr %es_ea to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %ea, ptr %es_ea, align 4
  %89 = ptrtoint ptr %es_er to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %es_er, align 4
  %er_data_len36 = getelementptr inbounds %struct.gfs2_ea_request, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %er_data_len36 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %er_data_len36, align 4
  %93 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i95 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 33
  %95 = ptrtoint ptr %s_fs_info.i95 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i95, align 16
  %sd_jbsize = getelementptr inbounds %struct.gfs2_sbd, ptr %96, i32 0, i32 11
  %97 = ptrtoint ptr %sd_jbsize to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sd_jbsize, align 4
  %add39 = add i32 %92, -1
  %sub40 = add i32 %add39, %98
  %div = udiv i32 %sub40, %98
  %add44 = add i32 %div, 2
  %call46 = call fastcc i32 @ea_alloc_skeleton(ptr noundef %ip, ptr noundef %90, i32 noundef %add44, ptr noundef nonnull @ea_set_simple_alloc, ptr noundef %private)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else34.if.end50_crit_edge, label %if.else34.cleanup51_crit_edge

if.else34.cleanup51_crit_edge:                    ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup51

if.else34.if.end50_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50:                                         ; preds = %if.else34.if.end50_crit_edge, %ea_set_simple_noalloc.exit.thread
  br label %cleanup51

cleanup51:                                        ; preds = %if.end50, %if.else34.cleanup51_crit_edge, %if.then29.cleanup51_crit_edge, %cond.end.cleanup51_crit_edge, %ea_remove_unstuffed.exit.cleanup51_crit_edge, %ea_remove_unstuffed.exit.thread101, %ea_remove_unstuffed.exit.thread, %if.then.cleanup51_crit_edge
  %retval.1 = phi i32 [ 1, %if.end50 ], [ %call46, %if.else34.cleanup51_crit_edge ], [ 0, %if.then.cleanup51_crit_edge ], [ %.pr, %ea_remove_unstuffed.exit.cleanup51_crit_edge ], [ 0, %cond.end.cleanup51_crit_edge ], [ %call1.i, %ea_remove_unstuffed.exit.thread ], [ %call5.i, %ea_remove_unstuffed.exit.thread101 ], [ %call1.i91, %if.then29.cleanup51_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ea_set_block(ptr noundef %ip, ptr nocapture noundef readonly %er, ptr noundef readonly %private) #0 align 64 {
entry:
  %indbh = alloca ptr, align 4
  %newbh = alloca ptr, align 4
  %blk = alloca i64, align 8
  %n = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %indbh) #10
  %4 = ptrtoint ptr %indbh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %indbh, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %newbh) #10
  %5 = ptrtoint ptr %newbh to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %newbh, align 4, !annotation !56
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %6 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %8 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_gl, align 4
  %i_eattr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 4
  %10 = ptrtoint ptr %i_eattr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_eattr, align 8
  %call1 = call i32 @gfs2_meta_read(ptr noundef %9, i64 noundef %11, i32 noundef 16, i32 noundef 0, ptr noundef nonnull %indbh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup48_crit_edge

if.then.cleanup48_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %indbh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %indbh, align 4
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_data.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mh_type.i, align 4
  %conv.i = trunc i32 %19 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 18225520
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !57

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @gfs2_meta_check_ii(ptr noundef %3, ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ea_set_block, ptr noundef nonnull @.str, i32 noundef 984) #10
  br label %gfs2_metatype_check_i.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %conv.i)
  %cmp5.not.i = icmp eq i16 %conv.i, 5
  br i1 %cmp5.not.i, label %if.end.i.if.end7_crit_edge, label %if.then13.i, !prof !57

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call14.i = call i32 @gfs2_metatype_check_ii(ptr noundef %3, ptr noundef %13, i16 noundef zeroext 5, i16 noundef zeroext %conv.i, ptr noundef nonnull @__func__.ea_set_block, ptr noundef nonnull @.str, i32 noundef 984) #10
  br label %gfs2_metatype_check_i.exit

gfs2_metatype_check_i.exit:                       ; preds = %if.then13.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call14.i, %if.then13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %gfs2_metatype_check_i.exit.if.end7_crit_edge, label %gfs2_metatype_check_i.exit.out_crit_edge

gfs2_metatype_check_i.exit.out_crit_edge:         ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

gfs2_metatype_check_i.exit.if.end7_crit_edge:     ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %gfs2_metatype_check_i.exit.if.end7_crit_edge, %if.end.i.if.end7_crit_edge
  %20 = ptrtoint ptr %indbh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %indbh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 24
  %sd_inptrs = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %sd_inptrs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sd_inptrs, align 4
  %add.ptr8 = getelementptr i64, ptr %add.ptr, i32 %25
  %cmp118 = icmp ult ptr %add.ptr, %add.ptr8
  br i1 %cmp118, label %if.end7.for.body_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %eablk.0119 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end7.for.body_crit_edge ]
  %26 = ptrtoint ptr %eablk.0119 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %eablk.0119, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool9.not = icmp eq i64 %27, 0
  br i1 %tobool9.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i64, ptr %eablk.0119, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end7.for.end_crit_edge
  %eablk.0.lcssa = phi ptr [ %add.ptr, %if.end7.for.end_crit_edge ], [ %eablk.0119, %for.body.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %cmp12 = icmp eq ptr %eablk.0.lcssa, %add.ptr8
  br i1 %cmp12, label %for.end.out_crit_edge, label %cleanup

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cleanup:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_gl, align 4
  call void @gfs2_trans_add_meta(ptr noundef %29, ptr noundef %21) #10
  br label %if.end34

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blk) #10
  %30 = ptrtoint ptr %blk to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 -1, ptr %blk, align 8, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #10
  %31 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %n, align 4
  %call16 = call i32 @gfs2_alloc_blocks(ptr noundef %ip, ptr noundef nonnull %blk, ptr noundef nonnull %n, i1 noundef zeroext false, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup30

if.end19:                                         ; preds = %if.else
  %32 = ptrtoint ptr %blk to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %blk, align 8
  call void @gfs2_trans_remove_revoke(ptr noundef %3, i64 noundef %33, i32 noundef 1) #10
  %i_gl20 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %34 = ptrtoint ptr %i_gl20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_gl20, align 4
  %36 = ptrtoint ptr %blk to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %blk, align 8
  %call21 = call ptr @gfs2_meta_new(ptr noundef %35, i64 noundef %37) #10
  %38 = ptrtoint ptr %indbh to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call21, ptr %indbh, align 4
  %39 = ptrtoint ptr %i_gl20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_gl20, align 4
  call void @gfs2_trans_add_meta(ptr noundef %40, ptr noundef %call21) #10
  %b_data.i88 = getelementptr inbounds %struct.buffer_head, ptr %call21, i32 0, i32 5
  %41 = ptrtoint ptr %b_data.i88 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b_data.i88, align 4
  %mh_type.i89 = getelementptr inbounds %struct.gfs2_meta_header, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %mh_type.i89 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %mh_type.i89, align 4
  %mh_format.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %42, i32 0, i32 3
  %44 = ptrtoint ptr %mh_format.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 500, ptr %mh_format.i, align 8
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %call21, i32 0, i32 4
  %45 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %b_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %46)
  %cmp.i = icmp ult i32 %46, 24
  br i1 %cmp.i, label %do.body2.i, label %gfs2_buffer_clear_tail.exit, !prof !58

do.body2.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 21, 0\0A.popsection", ""() #10, !srcloc !64
  unreachable

gfs2_buffer_clear_tail.exit:                      ; preds = %if.end19
  %47 = ptrtoint ptr %b_data.i88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %b_data.i88, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 24
  %sub.i = add i32 %46, -24
  %49 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  %50 = ptrtoint ptr %indbh to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %indbh, align 4
  %b_data23 = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %b_data23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %b_data23, align 4
  %add.ptr24 = getelementptr i8, ptr %53, i32 24
  %i_eattr25 = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 4
  %54 = ptrtoint ptr %i_eattr25 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %i_eattr25, align 8
  %56 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %add.ptr24, align 8
  %57 = ptrtoint ptr %blk to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %blk, align 8
  store i64 %58, ptr %i_eattr25, align 8
  %59 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %i_diskflags, align 4
  %or = or i32 %60, 8
  store i32 %or, ptr %i_diskflags, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 20
  %61 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %i_blkbits.i, align 2
  %conv.i91 = zext i8 %62 to i32
  %sub.i92 = add nsw i32 %conv.i91, -9
  %sh_prom.i = zext i32 %sub.i92 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i92)
  %cmp.i93.not = icmp eq i32 %sub.i92, 63
  br i1 %cmp.i93.not, label %lor.rhs.i, label %gfs2_buffer_clear_tail.exit.cleanup30.thread_crit_edge

gfs2_buffer_clear_tail.exit.cleanup30.thread_crit_edge: ; preds = %gfs2_buffer_clear_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30.thread

lor.rhs.i:                                        ; preds = %gfs2_buffer_clear_tail.exit
  %i_blocks.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %63 = ptrtoint ptr %i_blocks.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_blocks.i, align 8
  %sub2.i = sub i64 0, %shl.i
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %sub2.i)
  %cmp3.i = icmp ult i64 %64, %sub2.i
  br i1 %cmp3.i, label %if.then.i94, label %lor.rhs.i.cleanup30.thread_crit_edge, !prof !58

lor.rhs.i.cleanup30.thread_crit_edge:             ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup30.thread

if.then.i94:                                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %66, i32 0, i32 33
  %67 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @gfs2_assert_i(ptr noundef %68) #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/inode.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #10, !srcloc !60
  unreachable

cleanup30.thread:                                 ; preds = %lor.rhs.i.cleanup30.thread_crit_edge, %gfs2_buffer_clear_tail.exit.cleanup30.thread_crit_edge
  %i_blocks11.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %69 = ptrtoint ptr %i_blocks11.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %i_blocks11.i, align 8
  %add.i = add i64 %70, %shl.i
  store i64 %add.i, ptr %i_blocks11.i, align 8
  %incdec.ptr29 = getelementptr i8, ptr %53, i32 32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blk) #10
  br label %if.end34

cleanup30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blk) #10
  br label %cleanup48

if.end34:                                         ; preds = %cleanup30.thread, %cleanup
  %eablk.3 = phi ptr [ %eablk.0.lcssa, %cleanup ], [ %incdec.ptr29, %cleanup30.thread ]
  %call35 = call fastcc i32 @ea_alloc_blk(ptr noundef %ip, ptr noundef nonnull %newbh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end38:                                         ; preds = %if.end34
  %71 = ptrtoint ptr %newbh to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %newbh, align 4
  %b_blocknr = getelementptr inbounds %struct.buffer_head, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %b_blocknr to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %b_blocknr, align 8
  %75 = ptrtoint ptr %eablk.3 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %eablk.3, align 8
  %b_data39 = getelementptr inbounds %struct.buffer_head, ptr %72, i32 0, i32 5
  %76 = ptrtoint ptr %b_data39 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %b_data39, align 4
  %add.ptr40 = getelementptr i8, ptr %77, i32 24
  %call41 = call fastcc i32 @ea_write(ptr noundef %ip, ptr noundef %add.ptr40, ptr noundef %er)
  %tobool.not.i = icmp eq ptr %72, null
  br i1 %tobool.not.i, label %if.end38.brelse.exit_crit_edge, label %if.then.i95

if.end38.brelse.exit_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %brelse.exit

if.then.i95:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %72) #10
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i95, %if.end38.brelse.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %brelse.exit.out_crit_edge

brelse.exit.out_crit_edge:                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end44:                                         ; preds = %brelse.exit
  %tobool45.not = icmp eq ptr %private, null
  br i1 %tobool45.not, label %if.end44.out_crit_edge, label %if.then46

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then46:                                        ; preds = %if.end44
  %el_ea.i = getelementptr inbounds %struct.gfs2_ea_location, ptr %private, i32 0, i32 1
  %78 = ptrtoint ptr %el_ea.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %el_ea.i, align 4
  %el_prev.i = getelementptr inbounds %struct.gfs2_ea_location, ptr %private, i32 0, i32 2
  %80 = ptrtoint ptr %el_prev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %el_prev.i, align 4
  %i_gl.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %82 = ptrtoint ptr %i_gl.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i_gl.i, align 4
  %84 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %private, align 4
  call void @gfs2_trans_add_meta(ptr noundef %83, ptr noundef %85) #10
  %tobool.not.i97 = icmp eq ptr %81, null
  br i1 %tobool.not.i97, label %if.then46.if.then.i98_crit_edge, label %lor.lhs.false.i

if.then46.if.then.i98_crit_edge:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i98

lor.lhs.false.i:                                  ; preds = %if.then46
  %ea_num_ptrs.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %79, i32 0, i32 5
  %86 = ptrtoint ptr %ea_num_ptrs.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ea_num_ptrs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool1.not.i = icmp eq i8 %87, 0
  br i1 %tobool1.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i98_crit_edge

lor.lhs.false.i.if.then.i98_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i98

if.then.i98:                                      ; preds = %lor.lhs.false.i.if.then.i98_crit_edge, %if.then46.if.then.i98_crit_edge
  %ea_type.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %79, i32 0, i32 3
  %88 = ptrtoint ptr %ea_type.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %ea_type.i, align 1
  br label %out

if.else.i:                                        ; preds = %lor.lhs.false.i
  %89 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %81, align 4
  %add.ptr.i99 = getelementptr i8, ptr %81, i32 %90
  %cmp.not.i100 = icmp eq ptr %add.ptr.i99, %79
  br i1 %cmp.not.i100, label %if.else.i.if.end17.i_crit_edge, label %if.then2.i

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then2.i:                                       ; preds = %if.else.i
  %91 = ptrtoint ptr %add.ptr.i99 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i99, align 4
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i99, i32 %92
  %cmp7.not.i = icmp eq ptr %add.ptr6.i, %79
  br i1 %cmp7.not.i, label %if.then2.i.if.end17.i_crit_edge, label %if.then12.i, !prof !57

if.then2.i.if.end17.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i102 = getelementptr inbounds %struct.super_block, ptr %94, i32 0, i32 33
  %95 = ptrtoint ptr %s_fs_info.i.i102 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %s_fs_info.i.i102, align 16
  call void @gfs2_assert_withdraw_i(ptr noundef %96, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ea_set_remove_stuffed, ptr noundef nonnull @.str, i32 noundef 851, i1 noundef zeroext false) #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %if.then2.i.if.end17.i_crit_edge, %if.else.i.if.end17.i_crit_edge
  %prev.0.i = phi ptr [ %81, %if.else.i.if.end17.i_crit_edge ], [ %add.ptr.i99, %if.then12.i ], [ %add.ptr.i99, %if.then2.i.if.end17.i_crit_edge ]
  %97 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %prev.0.i, align 4
  %99 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %79, align 4
  %add.i103 = add i32 %100, %98
  store i32 %add.i103, ptr %prev.0.i, align 4
  %ea_flags.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %79, i32 0, i32 4
  %101 = ptrtoint ptr %ea_flags.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ea_flags.i, align 2
  %103 = and i8 %102, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool21.not.i = icmp eq i8 %103, 0
  br i1 %tobool21.not.i, label %if.end17.i.out_crit_edge, label %if.then22.i

if.end17.i.out_crit_edge:                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %ea_flags23.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %prev.0.i, i32 0, i32 4
  %104 = ptrtoint ptr %ea_flags23.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %ea_flags23.i, align 2
  %106 = or i8 %105, 1
  store i8 %106, ptr %ea_flags23.i, align 2
  br label %out

out:                                              ; preds = %if.then22.i, %if.end17.i.out_crit_edge, %if.then.i98, %if.end44.out_crit_edge, %brelse.exit.out_crit_edge, %if.end34.out_crit_edge, %for.end.out_crit_edge, %gfs2_metatype_check_i.exit.out_crit_edge
  %error.1 = phi i32 [ %call35, %if.end34.out_crit_edge ], [ %call41, %brelse.exit.out_crit_edge ], [ 0, %if.end44.out_crit_edge ], [ 0, %if.then.i98 ], [ 0, %if.end17.i.out_crit_edge ], [ 0, %if.then22.i ], [ -28, %for.end.out_crit_edge ], [ -5, %gfs2_metatype_check_i.exit.out_crit_edge ]
  %107 = ptrtoint ptr %indbh to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %indbh, align 4
  %tobool.not.i104 = icmp eq ptr %108, null
  br i1 %tobool.not.i104, label %out.cleanup48_crit_edge, label %if.then.i105

out.cleanup48_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup48

if.then.i105:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %108) #10
  br label %cleanup48

cleanup48:                                        ; preds = %if.then.i105, %out.cleanup48_crit_edge, %cleanup30, %if.then.cleanup48_crit_edge
  %retval.2 = phi i32 [ %call16, %cleanup30 ], [ %error.1, %out.cleanup48_crit_edge ], [ %error.1, %if.then.i105 ], [ %call1, %if.then.cleanup48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %newbh) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %indbh) #10
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ea_set_simple_alloc(ptr noundef %ip, ptr nocapture noundef readonly %er, ptr nocapture noundef readonly %private) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %es_ea = getelementptr inbounds %struct.ea_set, ptr %private, i32 0, i32 4
  %0 = ptrtoint ptr %es_ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %es_ea, align 4
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  %es_bh = getelementptr inbounds %struct.ea_set, ptr %private, i32 0, i32 3
  %4 = ptrtoint ptr %es_bh to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %es_bh, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %3, ptr noundef %5) #10
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %ea_name_len.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ea_name_len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ea_name_len.i, align 4
  %ea_num_ptrs.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ea_num_ptrs.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ea_num_ptrs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %ea_data_len.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %ea_data_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ea_data_len.i, align 4
  br label %ea_split_ea.exit

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i = zext i8 %11 to i32
  %mul.i = shl nuw nsw i32 %conv2.i, 3
  br label %ea_split_ea.exit

ea_split_ea.exit:                                 ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %13, %cond.true.i ], [ %mul.i, %cond.false.i ]
  %conv.i = zext i8 %9 to i32
  %add3.i = add nuw nsw i32 %conv.i, 23
  %add4.i = add i32 %add3.i, %cond.i
  %and.i = and i32 %add4.i, -8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %and.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %sub.i = sub i32 %15, %and.i
  %ea_flags.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %ea_flags.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ea_flags.i, align 2
  %18 = and i8 %17, 1
  store i32 %and.i, ptr %1, align 4
  %xor27.i = and i8 %17, -2
  store i8 %xor27.i, ptr %ea_flags.i, align 2
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub.i, ptr %add.ptr.i, align 4
  %ea_flags13.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %add.ptr.i, i32 0, i32 4
  %20 = ptrtoint ptr %ea_flags13.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %ea_flags13.i, align 2
  br label %if.end

if.end:                                           ; preds = %ea_split_ea.exit, %entry.if.end_crit_edge
  %ea.0 = phi ptr [ %add.ptr.i, %ea_split_ea.exit ], [ %1, %entry.if.end_crit_edge ]
  %call1 = tail call fastcc i32 @ea_write(ptr noundef %ip, ptr noundef %ea.0, ptr noundef %er)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %es_el = getelementptr inbounds %struct.ea_set, ptr %private, i32 0, i32 2
  %21 = ptrtoint ptr %es_el to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %es_el, align 4
  %tobool5.not = icmp eq ptr %22, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %el_ea.i = getelementptr inbounds %struct.gfs2_ea_location, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %el_ea.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %el_ea.i, align 4
  %el_prev.i = getelementptr inbounds %struct.gfs2_ea_location, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %el_prev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %el_prev.i, align 4
  %27 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_gl, align 4
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %22, align 4
  tail call void @gfs2_trans_add_meta(ptr noundef %28, ptr noundef %30) #10
  %tobool.not.i19 = icmp eq ptr %26, null
  br i1 %tobool.not.i19, label %if.then6.if.then.i_crit_edge, label %lor.lhs.false.i

if.then6.if.then.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then6
  %ea_num_ptrs.i20 = getelementptr inbounds %struct.gfs2_ea_header, ptr %24, i32 0, i32 5
  %31 = ptrtoint ptr %ea_num_ptrs.i20 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ea_num_ptrs.i20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool1.not.i = icmp eq i8 %32, 0
  br i1 %tobool1.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then6.if.then.i_crit_edge
  %ea_type.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %24, i32 0, i32 3
  %33 = ptrtoint ptr %ea_type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %ea_type.i, align 1
  br label %cleanup

if.else.i:                                        ; preds = %lor.lhs.false.i
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %26, align 4
  %add.ptr.i21 = getelementptr i8, ptr %26, i32 %35
  %cmp.not.i = icmp eq ptr %add.ptr.i21, %24
  br i1 %cmp.not.i, label %if.else.i.if.end17.i_crit_edge, label %if.then2.i

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then2.i:                                       ; preds = %if.else.i
  %36 = ptrtoint ptr %add.ptr.i21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i21, align 4
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i21, i32 %37
  %cmp7.not.i = icmp eq ptr %add.ptr6.i, %24
  br i1 %cmp7.not.i, label %if.then2.i.if.end17.i_crit_edge, label %if.then12.i, !prof !57

if.then2.i.if.end17.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then12.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %38 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 33
  %40 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_fs_info.i.i, align 16
  tail call void @gfs2_assert_withdraw_i(ptr noundef %41, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ea_set_remove_stuffed, ptr noundef nonnull @.str, i32 noundef 851, i1 noundef zeroext false) #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then12.i, %if.then2.i.if.end17.i_crit_edge, %if.else.i.if.end17.i_crit_edge
  %prev.0.i = phi ptr [ %26, %if.else.i.if.end17.i_crit_edge ], [ %add.ptr.i21, %if.then12.i ], [ %add.ptr.i21, %if.then2.i.if.end17.i_crit_edge ]
  %42 = ptrtoint ptr %prev.0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %prev.0.i, align 4
  %44 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %24, align 4
  %add.i = add i32 %45, %43
  store i32 %add.i, ptr %prev.0.i, align 4
  %ea_flags.i22 = getelementptr inbounds %struct.gfs2_ea_header, ptr %24, i32 0, i32 4
  %46 = ptrtoint ptr %ea_flags.i22 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ea_flags.i22, align 2
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool21.not.i = icmp eq i8 %48, 0
  br i1 %tobool21.not.i, label %if.end17.i.cleanup_crit_edge, label %if.then22.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %ea_flags23.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %prev.0.i, i32 0, i32 4
  %49 = ptrtoint ptr %ea_flags23.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ea_flags23.i, align 2
  %51 = or i8 %50, 1
  store i8 %51, ptr %ea_flags23.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then22.i, %if.end17.i.cleanup_crit_edge, %if.then.i, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_blk2rgrpd(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_free_meta(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rlist_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rlist_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gfs2_glock2rgrp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_glock_nq_m(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dinode_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_glock_dq_m(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rlist_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @gfs2_xattr_trusted_list(ptr nocapture noundef readnone %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #10
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_xattr_get(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  %ef.i.i = alloca %struct.ea_find, align 4
  %el.i = alloca %struct.gfs2_ea_location, align 4
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #10
  %0 = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 1
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %1 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !46) #10
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 78
  %8 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread_pid.i.i, align 16
  %gl_holders.i = getelementptr inbounds %struct.gfs2_glock, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %gl_holders.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %gh.029.i = load ptr, ptr %gl_holders.i, align 4
  %cmp.not30.i = icmp eq ptr %gh.029.i, %gl_holders.i
  br i1 %cmp.not30.i, label %entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_glock_is_locked_by_me.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %gh.031.i = phi ptr [ %gh.0.i, %for.inc.i.for.body.i_crit_edge ], [ %gh.029.i, %entry.for.body.i_crit_edge ]
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 6
  %11 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %gh_iflags.i, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.i

for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_glock_is_locked_by_me.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %14 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %gh_iflags.i, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.i = icmp eq i32 %16, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %gh_owner_pid.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 2
  %17 = ptrtoint ptr %gh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gh_owner_pid.i, align 4
  %cmp9.i = icmp eq ptr %18, %9
  br i1 %cmp9.i, label %gfs2_glock_is_locked_by_me.exit, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %gh.031.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %gh.0.i = load ptr, ptr %gh.031.i, align 4
  %cmp.not.i = icmp eq ptr %gh.0.i, %gl_holders.i
  br i1 %cmp.not.i, label %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_glock_is_locked_by_me.exit.thread

gfs2_glock_is_locked_by_me.exit.thread:           ; preds = %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %entry.gfs2_glock_is_locked_by_me.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #10
  br label %if.then

gfs2_glock_is_locked_by_me.exit:                  ; preds = %if.end8.i
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #10
  %tobool.not = icmp eq ptr %gh.031.i, null
  br i1 %tobool.not, label %gfs2_glock_is_locked_by_me.exit.if.then_crit_edge, label %if.else

gfs2_glock_is_locked_by_me.exit.if.then_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %gfs2_glock_is_locked_by_me.exit.if.then_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread
  %20 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_gl, align 4
  %22 = tail call ptr @llvm.returnaddress(i32 0) #10
  %23 = ptrtoint ptr %22 to i32
  call void @__gfs2_holder_init(ptr noundef %21, i32 noundef 3, i16 noundef zeroext 8, ptr noundef nonnull %gh, i32 noundef %23) #10
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i17 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i17, label %if.then.if.end6_crit_edge, label %gfs2_glock_nq_init.exit

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

gfs2_glock_nq_init.exit:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #10
  br label %cleanup

if.else:                                          ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %0, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then.if.end6_crit_edge
  %flags = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %el.i) #10
  %27 = getelementptr inbounds %struct.gfs2_ea_location, ptr %el.i, i32 0, i32 1
  %i_eattr.i = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 4
  %28 = ptrtoint ptr %i_eattr.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_eattr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool.not.i19 = icmp eq i64 %29, 0
  br i1 %tobool.not.i19, label %if.end6.__gfs2_xattr_get.exit_crit_edge, label %if.end.i20

if.end6.__gfs2_xattr_get.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %__gfs2_xattr_get.exit

if.end.i20:                                       ; preds = %if.end6
  %call1.i = call i32 @strlen(ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call1.i)
  %cmp.i = icmp ugt i32 %call1.i, 255
  br i1 %cmp.i, label %if.end.i20.__gfs2_xattr_get.exit_crit_edge, label %if.end3.i

if.end.i20.__gfs2_xattr_get.exit_crit_edge:       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #12
  br label %__gfs2_xattr_get.exit

if.end3.i:                                        ; preds = %if.end.i20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ef.i.i) #10
  %30 = getelementptr inbounds %struct.ea_find, ptr %ef.i.i, i32 0, i32 1
  %31 = getelementptr inbounds %struct.ea_find, ptr %ef.i.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.ea_find, ptr %ef.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %ef.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %26, ptr %ef.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %name, ptr %30, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call1.i, ptr %31, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %el.i, ptr %32, align 4
  %37 = call ptr @memset(ptr %el.i, i32 0, i32 12)
  %call3.i.i = call fastcc i32 @ea_foreach(ptr noundef %inode, ptr noundef nonnull @ea_find_i, ptr noundef nonnull %ef.i.i) #10
  %38 = call i32 @llvm.smin.i32(i32 %call3.i.i, i32 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ef.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i.i)
  %tobool5.not.i = icmp sgt i32 %call3.i.i, -1
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.__gfs2_xattr_get.exit_crit_edge

if.end3.i.__gfs2_xattr_get.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__gfs2_xattr_get.exit

if.end7.i:                                        ; preds = %if.end3.i
  %39 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %27, align 4
  %tobool8.not.i = icmp eq ptr %40, null
  br i1 %tobool8.not.i, label %if.end7.i.__gfs2_xattr_get.exit_crit_edge, label %if.end10.i

if.end7.i.__gfs2_xattr_get.exit_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__gfs2_xattr_get.exit

if.end10.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool11.not.i = icmp eq i32 %size, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = call fastcc i32 @gfs2_ea_get_copy(ptr noundef %inode, ptr noundef nonnull %el.i, ptr noundef %buffer, i32 noundef %size) #10
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %ea_data_len.i = getelementptr inbounds %struct.gfs2_ea_header, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %ea_data_len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ea_data_len.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i, %if.then12.i
  %error.0.i = phi i32 [ %call13.i, %if.then12.i ], [ %42, %if.else.i ]
  %43 = ptrtoint ptr %el.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %el.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i, label %if.end15.i.__gfs2_xattr_get.exit_crit_edge, label %if.then.i.i

if.end15.i.__gfs2_xattr_get.exit_crit_edge:       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__gfs2_xattr_get.exit

if.then.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %44) #10
  br label %__gfs2_xattr_get.exit

__gfs2_xattr_get.exit:                            ; preds = %if.then.i.i, %if.end15.i.__gfs2_xattr_get.exit_crit_edge, %if.end7.i.__gfs2_xattr_get.exit_crit_edge, %if.end3.i.__gfs2_xattr_get.exit_crit_edge, %if.end.i20.__gfs2_xattr_get.exit_crit_edge, %if.end6.__gfs2_xattr_get.exit_crit_edge
  %retval.0.i = phi i32 [ -61, %if.end6.__gfs2_xattr_get.exit_crit_edge ], [ -22, %if.end.i20.__gfs2_xattr_get.exit_crit_edge ], [ %38, %if.end3.i.__gfs2_xattr_get.exit_crit_edge ], [ -61, %if.end7.i.__gfs2_xattr_get.exit_crit_edge ], [ %error.0.i, %if.end15.i.__gfs2_xattr_get.exit_crit_edge ], [ %error.0.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %el.i) #10
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %tobool.i.not = icmp eq ptr %46, null
  br i1 %tobool.i.not, label %__gfs2_xattr_get.exit.cleanup_crit_edge, label %if.then9

__gfs2_xattr_get.exit.cleanup_crit_edge:          ; preds = %__gfs2_xattr_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %__gfs2_xattr_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %__gfs2_xattr_get.exit.cleanup_crit_edge, %gfs2_glock_nq_init.exit
  %retval.0 = phi i32 [ %call.i, %gfs2_glock_nq_init.exit ], [ %retval.0.i, %if.then9 ], [ %retval.0.i, %__gfs2_xattr_get.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_xattr_set(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %gh = alloca %struct.gfs2_holder, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %gh) #10
  %0 = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 1
  %1 = call ptr @memset(ptr %gh, i32 255, i32 32)
  %call1 = tail call i32 @gfs2_qa_get(ptr noundef %inode) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %inode, i32 0, i32 6
  %2 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_gl, align 4
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !46) #10
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 78
  %8 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thread_pid.i.i, align 16
  %gl_holders.i = getelementptr inbounds %struct.gfs2_glock, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %gl_holders.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %gh.029.i = load ptr, ptr %gl_holders.i, align 4
  %cmp.not30.i = icmp eq ptr %gh.029.i, %gl_holders.i
  br i1 %cmp.not30.i, label %if.end.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_glock_is_locked_by_me.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %gh.031.i = phi ptr [ %gh.0.i, %for.inc.i.for.body.i_crit_edge ], [ %gh.029.i, %if.end.for.body.i_crit_edge ]
  %gh_iflags.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 6
  %11 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %gh_iflags.i, align 4
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %if.end.i

for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_glock_is_locked_by_me.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %14 = ptrtoint ptr %gh_iflags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %gh_iflags.i, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not.i = icmp eq i32 %16, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  %gh_owner_pid.i = getelementptr inbounds %struct.gfs2_holder, ptr %gh.031.i, i32 0, i32 2
  %17 = ptrtoint ptr %gh_owner_pid.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gh_owner_pid.i, align 4
  %cmp9.i = icmp eq ptr %18, %9
  br i1 %cmp9.i, label %gfs2_glock_is_locked_by_me.exit, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end8.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %gh.031.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %gh.0.i = load ptr, ptr %gh.031.i, align 4
  %cmp.not.i = icmp eq ptr %gh.0.i, %gl_holders.i
  br i1 %cmp.not.i, label %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_glock_is_locked_by_me.exit.thread

gfs2_glock_is_locked_by_me.exit.thread:           ; preds = %for.inc.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %for.body.i.gfs2_glock_is_locked_by_me.exit.thread_crit_edge, %if.end.gfs2_glock_is_locked_by_me.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #10
  br label %if.then4

gfs2_glock_is_locked_by_me.exit:                  ; preds = %if.end8.i
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #10
  %tobool3.not = icmp eq ptr %gh.031.i, null
  br i1 %tobool3.not, label %gfs2_glock_is_locked_by_me.exit.if.then4_crit_edge, label %if.else

gfs2_glock_is_locked_by_me.exit.if.then4_crit_edge: ; preds = %gfs2_glock_is_locked_by_me.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then4:                                         ; preds = %gfs2_glock_is_locked_by_me.exit.if.then4_crit_edge, %gfs2_glock_is_locked_by_me.exit.thread
  %20 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_gl, align 4
  %22 = tail call ptr @llvm.returnaddress(i32 0) #10
  %23 = ptrtoint ptr %22 to i32
  call void @__gfs2_holder_init(ptr noundef %21, i32 noundef 1, i16 noundef zeroext 0, ptr noundef nonnull %gh, i32 noundef %23) #10
  %call.i = call i32 @gfs2_glock_nq(ptr noundef nonnull %gh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i71 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i71, label %if.then4.if.end51_crit_edge, label %gfs2_glock_nq_init.exit

if.then4.if.end51_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

gfs2_glock_nq_init.exit:                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_holder_uninit(ptr noundef nonnull %gh) #10
  br label %out

if.else:                                          ; preds = %gfs2_glock_is_locked_by_me.exit
  %24 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_gl, align 4
  %gl_state = getelementptr inbounds %struct.gfs2_glock, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %gl_state to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %gl_state, align 8
  %bf.lshr.mask = and i16 %bf.load, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask)
  %cmp.not = icmp eq i16 %bf.lshr.mask, 16384
  br i1 %cmp.not, label %if.end50, label %land.rhs

land.rhs:                                         ; preds = %if.else
  %.b69 = load i1, ptr @gfs2_xattr_set.__already_done, align 1
  br i1 %.b69, label %land.rhs.out_crit_edge, label %if.then18, !prof !57

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gfs2_xattr_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1248, i32 noundef 9, ptr noundef null) #10
  br label %out

if.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %0, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then4.if.end51_crit_edge
  %flags52 = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %28 = ptrtoint ptr %flags52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags52, align 4
  %call53 = call i32 @__gfs2_xattr_set(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags, i32 noundef %29)
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %0, align 4
  %tobool.i.not = icmp eq ptr %31, null
  br i1 %tobool.i.not, label %if.end51.out_crit_edge, label %if.then55

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_glock_dq_uninit(ptr noundef nonnull %gh) #10
  br label %out

out:                                              ; preds = %if.then55, %if.end51.out_crit_edge, %if.then18, %land.rhs.out_crit_edge, %gfs2_glock_nq_init.exit
  %ret.0 = phi i32 [ %call53, %if.then55 ], [ %call53, %if.end51.out_crit_edge ], [ %call.i, %gfs2_glock_nq_init.exit ], [ -5, %if.then18 ], [ -5, %land.rhs.out_crit_edge ]
  call void @gfs2_qa_put(ptr noundef %inode) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %gh) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_qa_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_qa_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @gfs2_xattr_handlers_max, !1, !"gfs2_xattr_handlers_max", i1 false, i1 false}
!1 = !{!"../fs/gfs2/xattr.c", i32 1493, i32 29}
!2 = !{ptr @gfs2_xattr_handlers_min, !3, !"gfs2_xattr_handlers_min", i1 false, i1 false}
!3 = !{!"../fs/gfs2/xattr.c", i32 1505, i32 30}
!4 = !{ptr @__func__.ea_foreach, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/gfs2/xattr.c", i32 140, i32 6}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.ea_foreach_i, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/gfs2/xattr.c", i32 95, i32 6}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/gfs2/util.h", i32 126, i32 38}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/gfs2/xattr.c", i32 368, i32 12}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/gfs2/xattr.c", i32 372, i32 12}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/gfs2/xattr.c", i32 376, i32 12}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/gfs2/xattr.c", i32 380, i32 12}
!19 = !{ptr @__func__.gfs2_iter_unstuffed, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/gfs2/xattr.c", i32 488, i32 7}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/gfs2/xattr.c", i32 728, i32 3}
!23 = !{ptr @__func__.ea_write, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/gfs2/xattr.c", i32 851, i32 3}
!26 = !{ptr @__func__.ea_set_remove_stuffed, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__func__.ea_set_block, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/gfs2/xattr.c", i32 984, i32 7}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/gfs2/xattr.c", i32 1078, i32 3}
!31 = !{ptr @__func__.ea_set_remove_unstuffed, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__func__.ea_dealloc_unstuffed, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/gfs2/xattr.c", i32 264, i32 3}
!34 = !{ptr @__func__.ea_dealloc_indirect, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/gfs2/xattr.c", i32 1286, i32 6}
!36 = !{ptr @__func__.ea_dealloc_block, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/gfs2/xattr.c", i32 1396, i32 3}
!38 = !{ptr @gfs2_xattr_trusted_handler, !39, !"gfs2_xattr_trusted_handler", i1 false, i1 false}
!39 = !{!"../fs/gfs2/xattr.c", i32 1485, i32 35}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../fs/gfs2/xattr.c", i32 1248, i32 7}
!42 = !{ptr @gfs2_xattr_user_handler, !43, !"gfs2_xattr_user_handler", i1 false, i1 false}
!43 = !{!"../fs/gfs2/xattr.c", i32 1465, i32 35}
!44 = !{ptr @gfs2_xattr_security_handler, !45, !"gfs2_xattr_security_handler", i1 false, i1 false}
!45 = !{!"../fs/gfs2/xattr.c", i32 1472, i32 35}
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
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2154204932, i64 2154205412, i64 2154204969, i64 2154205025, i64 2154205059, i64 2154205083, i64 2154205124, i64 2154205145, i64 2154205173, i64 2154205207}
!60 = !{i64 2154179873, i64 2154180352, i64 2154179910, i64 2154179966, i64 2154180000, i64 2154180024, i64 2154180065, i64 2154180086, i64 2154180114, i64 2154180148}
!61 = !{ptr @ea_dealloc_unstuffed, ptr @ea_find_i, ptr @ea_list_i, ptr @ea_set_simple}
!62 = !{i64 2148612157, i64 2148612183, i64 2148612212, i64 2148612246, i64 2148612277, i64 2148612300}
!63 = !{ptr @ea_init_i, ptr @ea_set_block, ptr @ea_set_simple_alloc}
!64 = !{i64 2154185255, i64 2154185736, i64 2154185292, i64 2154185348, i64 2154185382, i64 2154185406, i64 2154185447, i64 2154185468, i64 2154185496, i64 2154185530}
