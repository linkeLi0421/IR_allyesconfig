; ModuleID = '/llk/IR_all_yes/fs/gfs2/meta_io.c_pt.bc'
source_filename = "../fs/gfs2/meta_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.60 }
%struct.atomic_t = type { i32 }
%union.anon.60 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon, %union.anon.77, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.77 = type { %struct.atomic_t }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.84, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.7 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.spinlock, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.84 = type { %struct.delayed_work, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.gfs2_sbd = type { ptr, ptr, %struct.kobject, %struct.completion, i32, %struct.gfs2_sb_host, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i64], i32, %struct.gfs2_args, %struct.gfs2_tune, %struct.lm_lockstruct, %struct.gfs2_holder, ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.completion, %struct.completion, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, %struct.spinlock, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32, %struct.spinlock, %struct.rb_root, i32, i32, %struct.list_head, %struct.spinlock, %struct.mutex, i32, ptr, %struct.gfs2_holder, %struct.gfs2_holder, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.completion, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, i32, ptr, %struct.spinlock, i64, %struct.address_space, %struct.spinlock, ptr, i32, %struct.atomic_t, i32, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, i64, i32, %struct.rw_semaphore, %struct.atomic_t, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.gfs2_holder, %struct.atomic_t, %struct.mutex, [270 x i8], [256 x i8], [256 x i8], i32, ptr, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gfs2_sb_host = type { i32, i32, i32, i32, i32, i32, %struct.gfs2_inum_host, %struct.gfs2_inum_host, [64 x i8], [64 x i8] }
%struct.gfs2_inum_host = type { i64, i64 }
%struct.gfs2_args = type { [64 x i8], [64 x i8], [64 x i8], i24, i32, i32, i32, i32 }
%struct.gfs2_tune = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lm_lockstruct = type { i32, i32, ptr, ptr, i32, i32, %struct.dlm_lksb, %struct.dlm_lksb, [32 x i8], %struct.completion, ptr, %struct.spinlock, i32, i32, i32, i32, i32, ptr, ptr }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.rb_root = type { ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.33, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.33 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.12 }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.gfs2_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%union.anon.81 = type { ptr }
%struct.gfs2_bufdata = type { ptr, ptr, i64, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.85 }
%union.anon.85 = type { i32 }

@gfs2_meta_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @gfs2_aspace_writepage, ptr null, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfs2_releasepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gfs2_rgrp_aops = dso_local constant { %struct.address_space_operations, [40 x i8] } { %struct.address_space_operations { ptr @gfs2_aspace_writepage, ptr null, ptr null, ptr @__set_page_dirty_buffers, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gfs2_releasepage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__func__.gfs2_meta_read = private unnamed_addr constant [15 x i8] c"gfs2_meta_read\00", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/gfs2/meta_io.c\00", [46 x i8] zeroinitializer }, align 32
@__func__.gfs2_meta_wait = private unnamed_addr constant [15 x i8] c"gfs2_meta_wait\00", align 1
@gfs2_bufdata_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__func__.gfs2_meta_buffer = private unnamed_addr constant [17 x i8] c"gfs2_meta_buffer\00", align 1
@.str.1 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@__tracepoint_gfs2_pin = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/gfs2/trace_gfs2.h\00", [43 x i8] zeroinitializer }, align 32
@trace_gfs2_pin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"magic number\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"gfs2_meta_aops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 91, i32 39 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"gfs2_rgrp_aops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 97, i32 39 }
@___asan_gen_.16 = private constant [21 x i8] c"../fs/gfs2/meta_io.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 300, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 414, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 452, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 717, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 366, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"../fs/gfs2/trace_gfs2.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 319, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 108, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"../fs/gfs2/util.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 126, i32 38 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @gfs2_meta_aops, ptr @gfs2_rgrp_aops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_meta_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_rgrp_aops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gfs2_aspace_writepage(ptr noundef %page, ptr noundef %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %punt_to_cgroup.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %0 = ptrtoint ptr %punt_to_cgroup.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %punt_to_cgroup.i, align 4
  %1 = and i16 %bf.load.i, 128
  %2 = zext i16 %1 to i32
  %3 = shl nuw nsw i32 %2, 15
  %sync_mode.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 4
  %4 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  %6 = or i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.load.i)
  %7 = icmp ult i16 %bf.load.i, 16384
  %8 = or i32 %3, 1048576
  %spec.select.i = select i1 %7, i32 %3, i32 %8
  %flags.0.i = select i1 %cmp.i, i32 %6, i32 %spec.select.i
  %9 = or i32 %flags.0.i, 12288
  %10 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %12, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %13, %if.end.i.i ]
  %14 = inttoptr i32 %retval.0.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i = icmp eq i32 %16, -1
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %10, align 4
  %and.i16.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i)
  %tobool.not.i17.i = icmp eq i32 %and.i16.i, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end10.i, !prof !40

if.then.i:                                        ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i20.i, label %if.then.i19.i, !prof !39

if.then.i19.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i = add i32 %18, -1
  br label %_compound_head.exit22.i

if.end.i20.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i

_compound_head.exit22.i:                          ; preds = %if.end.i20.i, %if.then.i19.i
  %retval.0.i21.i = phi i32 [ %sub.i18.i, %if.then.i19.i ], [ %19, %if.end.i20.i ]
  %20 = inttoptr i32 %retval.0.i21.i to ptr
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.1) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 414, 0\0A.popsection", ""() #7, !srcloc !41
  unreachable

do.end10.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i17.i, label %if.end.i27.i, label %if.then.i26.i, !prof !39

if.then.i26.i:                                    ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i = add i32 %18, -1
  br label %PageLocked.exit

if.end.i27.i:                                     ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %page to i32
  br label %PageLocked.exit

PageLocked.exit:                                  ; preds = %if.end.i27.i, %if.then.i26.i
  %retval.0.i28.i = phi i32 [ %sub.i25.i, %if.then.i26.i ], [ %21, %if.end.i27.i ]
  %22 = inttoptr i32 %retval.0.i28.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.body6, label %do.body12, !prof !40

do.body6:                                         ; preds = %PageLocked.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #7, !srcloc !42
  unreachable

do.body12:                                        ; preds = %PageLocked.exit
  %25 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i136 = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i136, label %if.then.i137, label %PagePrivate.exit, !prof !40

if.then.i137:                                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.2) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

PagePrivate.exit:                                 ; preds = %do.body12
  %27 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %page, align 4
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool14.not = icmp eq i32 %29, 0
  br i1 %tobool14.not, label %do.body24, label %do.body33, !prof !40

do.body24:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 40, 0\0A.popsection", ""() #7, !srcloc !44
  unreachable

do.body33:                                        ; preds = %PagePrivate.exit
  %30 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp.i.not.i139 = icmp eq i32 %31, -1
  br i1 %cmp.i.not.i139, label %if.then.i140, label %PagePrivate.exit143, !prof !40

if.then.i140:                                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.2) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

PagePrivate.exit143:                              ; preds = %do.body33
  %32 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %page, align 4
  %34 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool35.not = icmp eq i32 %34, 0
  br i1 %tobool35.not, label %do.body45, label %do.end53, !prof !40

do.body45:                                        ; preds = %PagePrivate.exit143
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 42, 0\0A.popsection", ""() #7, !srcloc !45
  unreachable

do.end53:                                         ; preds = %PagePrivate.exit143
  %private = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %private, align 4
  %37 = inttoptr i32 %36 to ptr
  br label %do.body54

do.body54:                                        ; preds = %do.cond72.do.body54_crit_edge, %do.end53
  %bh.0 = phi ptr [ %37, %do.end53 ], [ %52, %do.cond72.do.body54_crit_edge ]
  %38 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %bh.0, align 4
  %40 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool56.not = icmp eq i32 %40, 0
  br i1 %tobool56.not, label %do.body54.do.cond72_crit_edge, label %if.end58

do.body54.do.cond72_crit_edge:                    ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond72

if.end58:                                         ; preds = %do.body54
  %41 = ptrtoint ptr %sync_mode.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sync_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not = icmp eq i32 %42, 0
  br i1 %cmp.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.end58
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 366) #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.0, i32 noundef 4) #7
  %43 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.then60.if.then.i171_crit_edge

if.then60.if.then.i171_crit_edge:                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i171

trylock_buffer.exit.i:                            ; preds = %if.then60
  tail call void @llvm.prefetch.p0(ptr %bh.0, i32 1, i32 3, i32 1) #7
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0, ptr %bh.0, i32 4, ptr elementtype(i32) %bh.0) #7, !srcloc !46
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %46 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.if.end66_crit_edge, label %trylock_buffer.exit.i.if.then.i171_crit_edge

trylock_buffer.exit.i.if.then.i171_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i171

trylock_buffer.exit.i.if.end66_crit_edge:         ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then.i171:                                     ; preds = %trylock_buffer.exit.i.if.then.i171_crit_edge, %if.then60.if.then.i171_crit_edge
  tail call void @__lock_buffer(ptr noundef %bh.0) #7
  br label %if.end66

if.else:                                          ; preds = %if.end58
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bh.0, i32 noundef 4) #7
  %47 = ptrtoint ptr %bh.0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %bh.0, align 4
  %and.i.i.i = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %trylock_buffer.exit, label %if.else.if.then63_crit_edge

if.else.if.then63_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

trylock_buffer.exit:                              ; preds = %if.else
  tail call void @llvm.prefetch.p0(ptr %bh.0, i32 1, i32 3, i32 1) #7
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bh.0, ptr %bh.0, i32 4, ptr elementtype(i32) %bh.0) #7, !srcloc !46
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %50 = and i32 %asmresult.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool62.not.not = icmp eq i32 %50, 0
  br i1 %tobool62.not.not, label %trylock_buffer.exit.if.end66_crit_edge, label %trylock_buffer.exit.if.then63_crit_edge

trylock_buffer.exit.if.then63_crit_edge:          ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

trylock_buffer.exit.if.end66_crit_edge:           ; preds = %trylock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then63:                                        ; preds = %trylock_buffer.exit.if.then63_crit_edge, %if.else.if.then63_crit_edge
  %call64 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %wbc, ptr noundef %page) #7
  br label %do.cond72

if.end66:                                         ; preds = %trylock_buffer.exit.if.end66_crit_edge, %if.then.i171, %trylock_buffer.exit.i.if.end66_crit_edge
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %bh.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool68.not = icmp eq i32 %call.i, 0
  br i1 %tobool68.not, label %if.else70, label %if.then69

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mark_buffer_async_write(ptr noundef %bh.0) #7
  br label %do.cond72

if.else70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unlock_buffer(ptr noundef %bh.0) #7
  br label %do.cond72

do.cond72:                                        ; preds = %if.else70, %if.then69, %if.then63, %do.body54.do.cond72_crit_edge
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.0, i32 0, i32 1
  %51 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %b_this_page, align 4
  %cmp73.not = icmp eq ptr %52, %37
  br i1 %cmp73.not, label %do.body76, label %do.cond72.do.body54_crit_edge

do.cond72.do.body54_crit_edge:                    ; preds = %do.cond72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body54

do.body76:                                        ; preds = %do.cond72
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %10, align 4
  %and.i.i146 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i146)
  %tobool.not.i.i147 = icmp eq i32 %and.i.i146, 0
  br i1 %tobool.not.i.i147, label %if.end.i.i150, label %if.then.i.i149, !prof !39

if.then.i.i149:                                   ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i148 = add i32 %54, -1
  br label %_compound_head.exit.i155

if.end.i.i150:                                    ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %page to i32
  br label %_compound_head.exit.i155

_compound_head.exit.i155:                         ; preds = %if.end.i.i150, %if.then.i.i149
  %retval.0.i.i151 = phi i32 [ %sub.i.i148, %if.then.i.i149 ], [ %55, %if.end.i.i150 ]
  %56 = inttoptr i32 %retval.0.i.i151 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp.i.not.i152 = icmp eq i32 %58, -1
  %59 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %10, align 4
  %and.i16.i153 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16.i153)
  %tobool.not.i17.i154 = icmp eq i32 %and.i16.i153, 0
  br i1 %cmp.i.not.i152, label %if.then.i156, label %do.end10.i162, !prof !40

if.then.i156:                                     ; preds = %_compound_head.exit.i155
  br i1 %tobool.not.i17.i154, label %if.end.i20.i159, label %if.then.i19.i158, !prof !39

if.then.i19.i158:                                 ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i18.i157 = add i32 %60, -1
  br label %_compound_head.exit22.i161

if.end.i20.i159:                                  ; preds = %if.then.i156
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %page to i32
  br label %_compound_head.exit22.i161

_compound_head.exit22.i161:                       ; preds = %if.end.i20.i159, %if.then.i19.i158
  %retval.0.i21.i160 = phi i32 [ %sub.i18.i157, %if.then.i19.i158 ], [ %61, %if.end.i20.i159 ]
  %62 = inttoptr i32 %retval.0.i21.i160 to ptr
  tail call void @dump_page(ptr noundef %62, ptr noundef nonnull @.str.1) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 461, 0\0A.popsection", ""() #7, !srcloc !48
  unreachable

do.end10.i162:                                    ; preds = %_compound_head.exit.i155
  br i1 %tobool.not.i17.i154, label %if.end.i27.i165, label %if.then.i26.i164, !prof !39

if.then.i26.i164:                                 ; preds = %do.end10.i162
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i25.i163 = add i32 %60, -1
  br label %PageWriteback.exit

if.end.i27.i165:                                  ; preds = %do.end10.i162
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %page to i32
  br label %PageWriteback.exit

PageWriteback.exit:                               ; preds = %if.end.i27.i165, %if.then.i26.i164
  %retval.0.i28.i166 = phi i32 [ %sub.i25.i163, %if.then.i26.i164 ], [ %63, %if.end.i27.i165 ]
  %64 = inttoptr i32 %retval.0.i28.i166 to ptr
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %64, align 4
  %67 = and i32 %66, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool78.not = icmp eq i32 %67, 0
  br i1 %tobool78.not, label %do.end94, label %do.body86, !prof !39

do.body86:                                        ; preds = %PageWriteback.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 72, 0\0A.popsection", ""() #7, !srcloc !49
  unreachable

do.end94:                                         ; preds = %PageWriteback.exit
  %call95 = tail call zeroext i1 @set_page_writeback(ptr noundef %page) #7
  br label %do.body96

do.body96:                                        ; preds = %if.end102.do.body96_crit_edge, %do.end94
  %nr_underway.0 = phi i32 [ 0, %do.end94 ], [ %nr_underway.1, %if.end102.do.body96_crit_edge ]
  %bh.1 = phi ptr [ %37, %do.end94 ], [ %69, %if.end102.do.body96_crit_edge ]
  %b_this_page97 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 1
  %68 = ptrtoint ptr %b_this_page97 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %b_this_page97, align 4
  %70 = ptrtoint ptr %bh.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %bh.1, align 4
  %72 = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool99.not = icmp eq i32 %72, 0
  br i1 %tobool99.not, label %do.body96.if.end102_crit_edge, label %if.then100

do.body96.if.end102_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then100:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  %call101 = tail call i32 @submit_bh(i32 noundef 1, i32 noundef %9, ptr noundef %bh.1) #7
  %inc = add i32 %nr_underway.0, 1
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %do.body96.if.end102_crit_edge
  %nr_underway.1 = phi i32 [ %inc, %if.then100 ], [ %nr_underway.0, %do.body96.if.end102_crit_edge ]
  %cmp104.not = icmp eq ptr %69, %37
  br i1 %cmp104.not, label %do.end106, label %if.end102.do.body96_crit_edge

if.end102.do.body96_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body96

do.end106:                                        ; preds = %if.end102
  tail call void @unlock_page(ptr noundef %page) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_underway.1)
  %cmp107 = icmp eq i32 %nr_underway.1, 0
  br i1 %cmp107, label %if.then109, label %do.end106.if.end110_crit_edge

do.end106.if.end110_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then109:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @end_page_writeback(ptr noundef %page) #7
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %do.end106.if.end110_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_buffers(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_releasepage(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_getbuf(ptr noundef %gl, i64 noundef %blkno, i32 noundef %create) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_ops.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 7
  %0 = ptrtoint ptr %gl_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl_ops.i, align 4
  %go_flags.i = getelementptr inbounds %struct.gfs2_glock_operations, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %go_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %go_flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %add.ptr.i = getelementptr %struct.gfs2_glock, ptr %gl, i32 1
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ln_sbd, align 8
  %cmp = icmp eq ptr %retval.0.i, null
  %sd_aspace = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 77
  %spec.select = select i1 %cmp, ptr %sd_aspace, ptr %retval.0.i
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 5
  %6 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_bsize_shift, align 4
  %sub = sub i32 12, %7
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %blkno, %sh_prom
  %conv = trunc i64 %shr to i32
  %shl = shl i32 %conv, %sub
  %8 = trunc i64 %blkno to i32
  %conv3 = sub i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %create)
  %tobool.not = icmp eq i32 %create, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %gfp_mask.i.i = getelementptr inbounds %struct.address_space, ptr %spec.select, i32 0, i32 3
  %9 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i86 = tail call ptr @pagecache_get_page(ptr noundef %spec.select, i32 noundef %conv, i32 noundef 7, i32 noundef %10) #7
  %tobool6.not87 = icmp eq ptr %call.i.i86, null
  br i1 %tobool6.not87, label %for.cond.preheader.if.end8_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  br label %if.end8

if.end8:                                          ; preds = %if.end8.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge
  tail call void @yield() #7
  %11 = ptrtoint ptr %gfp_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gfp_mask.i.i, align 4
  %call.i.i = tail call ptr @pagecache_get_page(ptr noundef %spec.select, i32 noundef %conv, i32 noundef 7, i32 noundef %12) #7
  %tobool6.not = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not, label %if.end8.if.end8_crit_edge, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end8.if.end8_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i.i.lcssa = phi ptr [ %call.i.i86, %for.cond.preheader.for.end_crit_edge ], [ %call.i.i, %if.end8.for.end_crit_edge ]
  %13 = ptrtoint ptr %call.i.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %call.i.i.lcssa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !40

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef nonnull %call.i.i.lcssa, ptr noundef nonnull @.str.2) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

PagePrivate.exit:                                 ; preds = %for.end
  %15 = ptrtoint ptr %call.i.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call.i.i.lcssa, align 4
  %17 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.then11, label %PagePrivate.exit.do.body_crit_edge

PagePrivate.exit.do.body_crit_edge:               ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then11:                                        ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sb_bsize, align 8
  tail call void @create_empty_buffers(ptr noundef nonnull %call.i.i.lcssa, i32 noundef %19, i32 noundef 0) #7
  br label %do.body

if.else:                                          ; preds = %entry
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %spec.select, i32 noundef %conv, i32 noundef 3, i32 noundef 0) #7
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.else.cleanup_crit_edge, label %if.end17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.else
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i72 = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i72, label %if.then.i73, label %PagePrivate.exit76, !prof !40

if.then.i73:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.2) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

PagePrivate.exit76:                               ; preds = %if.end17
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %call.i, align 4
  %24 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool19.not = icmp eq i32 %24, 0
  br i1 %tobool19.not, label %PagePrivate.exit76.out_unlock_crit_edge, label %PagePrivate.exit76.do.body_crit_edge

PagePrivate.exit76.do.body_crit_edge:             ; preds = %PagePrivate.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

PagePrivate.exit76.out_unlock_crit_edge:          ; preds = %PagePrivate.exit76
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

do.body:                                          ; preds = %PagePrivate.exit76.do.body_crit_edge, %if.then11, %PagePrivate.exit.do.body_crit_edge
  %page.0 = phi ptr [ %call.i.i.lcssa, %PagePrivate.exit.do.body_crit_edge ], [ %call.i.i.lcssa, %if.then11 ], [ %call.i, %PagePrivate.exit76.do.body_crit_edge ]
  %25 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %page.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp.i.not.i77 = icmp eq i32 %26, -1
  br i1 %cmp.i.not.i77, label %if.then.i78, label %PagePrivate.exit81, !prof !40

if.then.i78:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef nonnull %page.0, ptr noundef nonnull @.str.2) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

PagePrivate.exit81:                               ; preds = %do.body
  %27 = ptrtoint ptr %page.0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %page.0, align 4
  %29 = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool24.not = icmp eq i32 %29, 0
  br i1 %tobool24.not, label %do.body29, label %do.end35, !prof !40

do.body29:                                        ; preds = %PagePrivate.exit81
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #7, !srcloc !50
  unreachable

do.end35:                                         ; preds = %PagePrivate.exit81
  %private = getelementptr inbounds %struct.page, ptr %page.0, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %private, align 4
  %32 = inttoptr i32 %31 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %tobool37.not88 = icmp eq i32 %conv3, 0
  br i1 %tobool37.not88, label %do.end35.for.end38_crit_edge, label %do.end35.for.inc_crit_edge

do.end35.for.inc_crit_edge:                       ; preds = %do.end35
  br label %for.inc

do.end35.for.end38_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %do.end35.for.inc_crit_edge
  %bufnum.090 = phi i32 [ %dec, %for.inc.for.inc_crit_edge ], [ %conv3, %do.end35.for.inc_crit_edge ]
  %bh.089 = phi ptr [ %34, %for.inc.for.inc_crit_edge ], [ %32, %do.end35.for.inc_crit_edge ]
  %dec = add i32 %bufnum.090, -1
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.089, i32 0, i32 1
  %33 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_this_page, align 4
  %tobool37.not = icmp eq i32 %dec, 0
  br i1 %tobool37.not, label %for.inc.for.end38_crit_edge, label %for.inc.for.inc_crit_edge

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.for.end38_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end38

for.end38:                                        ; preds = %for.inc.for.end38_crit_edge, %do.end35.for.end38_crit_edge
  %bh.0.lcssa = phi ptr [ %32, %do.end35.for.end38_crit_edge ], [ %34, %for.inc.for.end38_crit_edge ]
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #7
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #7, !srcloc !51
  %36 = ptrtoint ptr %bh.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %bh.0.lcssa, align 4
  %38 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool40.not = icmp eq i32 %38, 0
  br i1 %tobool40.not, label %if.then41, label %for.end38.out_unlock_crit_edge

for.end38.out_unlock_crit_edge:                   ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.then41:                                        ; preds = %for.end38
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 8
  %41 = ptrtoint ptr %bh.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %bh.0.lcssa, align 4
  %43 = and i32 %42, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then41.map_bh.exit_crit_edge

if.then41.map_bh.exit_crit_edge:                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %map_bh.exit

if.then.i.i:                                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 4, ptr noundef %bh.0.lcssa) #7
  br label %map_bh.exit

map_bh.exit:                                      ; preds = %if.then.i.i, %if.then41.map_bh.exit_crit_edge
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 26
  %44 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_bdev.i, align 4
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa, i32 0, i32 6
  %46 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %b_bdev.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa, i32 0, i32 3
  %47 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %blkno, ptr %b_blocknr.i, align 8
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 3
  %48 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %s_blocksize.i, align 16
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa, i32 0, i32 4
  %50 = ptrtoint ptr %b_size.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %b_size.i, align 8
  br label %out_unlock

out_unlock:                                       ; preds = %map_bh.exit, %for.end38.out_unlock_crit_edge, %PagePrivate.exit76.out_unlock_crit_edge
  %page.1 = phi ptr [ %page.0, %for.end38.out_unlock_crit_edge ], [ %page.0, %map_bh.exit ], [ %call.i, %PagePrivate.exit76.out_unlock_crit_edge ]
  %bh.1 = phi ptr [ %bh.0.lcssa, %for.end38.out_unlock_crit_edge ], [ %bh.0.lcssa, %map_bh.exit ], [ null, %PagePrivate.exit76.out_unlock_crit_edge ]
  tail call void @unlock_page(ptr noundef %page.1) #7
  %51 = getelementptr inbounds %struct.page, ptr %page.1, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i84 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i84, label %if.end.i.i, label %if.then.i.i85, !prof !39

if.then.i.i85:                                    ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %53, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %page.1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i85
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i85 ], [ %54, %if.end.i.i ]
  %55 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %56 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i.i.i.i = icmp eq i32 %57, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %55, ptr noundef nonnull @.str.3) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gfs2_getbuf, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %55, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_page(ptr noundef %55) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.else.cleanup_crit_edge ], [ %bh.1, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %bh.1, %if.then.i4.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_empty_buffers(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_meta_new(ptr noundef %gl, i64 noundef %blkno) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gfs2_getbuf(ptr noundef %gl, i64 noundef %blkno, i32 noundef 1)
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_data.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 366) #7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call, i32 noundef 4) #7
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %call, align 4
  %and.i.i.i.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %trylock_buffer.exit.i.i, label %entry.if.then.i5.i_crit_edge

entry.if.then.i5.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i5.i

trylock_buffer.exit.i.i:                          ; preds = %entry
  tail call void @llvm.prefetch.p0(ptr %call, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call, ptr %call, i32 4, ptr elementtype(i32) %call) #7, !srcloc !46
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %5 = and i32 %asmresult.i.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.not.i.i, label %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge, label %trylock_buffer.exit.i.i.if.then.i5.i_crit_edge

trylock_buffer.exit.i.i.if.then.i5.i_crit_edge:   ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i5.i

trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge: ; preds = %trylock_buffer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_buffer.exit.i

if.then.i5.i:                                     ; preds = %trylock_buffer.exit.i.i.if.then.i5.i_crit_edge, %entry.if.then.i5.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %call) #7
  br label %lock_buffer.exit.i

lock_buffer.exit.i:                               ; preds = %if.then.i5.i, %trylock_buffer.exit.i.i.lock_buffer.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %call) #7
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %lock_buffer.exit.i.meta_prep_new.exit_crit_edge

lock_buffer.exit.i.meta_prep_new.exit_crit_edge:  ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %meta_prep_new.exit

if.then.i.i:                                      ; preds = %lock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %call) #7
  br label %meta_prep_new.exit

meta_prep_new.exit:                               ; preds = %if.then.i.i, %lock_buffer.exit.i.meta_prep_new.exit_crit_edge
  tail call void @unlock_buffer(ptr noundef %call) #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 18225520, ptr %1, align 8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_meta_read(ptr noundef %gl, i64 noundef %blkno, i32 noundef %flags, i32 noundef %rahead, ptr nocapture noundef %bhp) local_unnamed_addr #0 align 64 {
entry:
  %bhs = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bhs) #7
  %2 = ptrtoint ptr %bhs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bhs, align 4, !annotation !57
  %3 = getelementptr inbounds [2 x ptr], ptr %bhs, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !57
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sd_flags.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.land.lhs.true_crit_edge, !prof !58

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

gfs2_withdrawn.exit:                              ; preds = %entry
  %8 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %sd_flags.i, align 4
  %10 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.i.not = icmp eq i32 %10, 0
  br i1 %tobool3.i.not, label %gfs2_withdrawn.exit.if.end_crit_edge, label %gfs2_withdrawn.exit.land.lhs.true_crit_edge, !prof !39

gfs2_withdrawn.exit.land.lhs.true_crit_edge:      ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

gfs2_withdrawn.exit.if.end_crit_edge:             ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %gfs2_withdrawn.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %11 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sd_flags.i, align 4
  %13 = and i32 %12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %gfs2_withdrawn.exit.if.end_crit_edge
  %call3 = tail call ptr @gfs2_getbuf(ptr noundef %gl, i64 noundef %blkno, i32 noundef 1)
  %14 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call3, ptr %bhp, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 366) #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call3, i32 noundef 4) #7
  %15 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call3, align 4
  %and.i.i.i.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.end
  tail call void @llvm.prefetch.p0(ptr %call3, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call3, ptr %call3, i32 4, ptr elementtype(i32) %call3) #7, !srcloc !46
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %18 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_buffer.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef %call3) #7
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %19 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %call3, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unlock_buffer(ptr noundef %call3) #7
  br label %if.end7

if.else:                                          ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %call3, i32 0, i32 7
  %21 = ptrtoint ptr %b_end_io to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @end_buffer_read_sync, ptr %b_end_io, align 4
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %call3, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #7
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #7, !srcloc !51
  %23 = ptrtoint ptr %bhs to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call3, ptr %bhs, align 4
  %phi.bo = and i32 %flags, 16
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %flags.addr.0 = phi i32 [ 0, %if.then6 ], [ %phi.bo, %if.else ]
  %num.0 = phi i32 [ 0, %if.then6 ], [ 1, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rahead)
  %tobool8.not = icmp eq i32 %rahead, 0
  br i1 %tobool8.not, label %if.end7.if.end19_crit_edge, label %if.then9

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then9:                                         ; preds = %if.end7
  %add = add i64 %blkno, 1
  %call10 = tail call ptr @gfs2_getbuf(ptr noundef %gl, i64 noundef %add, i32 noundef 1)
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 366) #7
  %call.i.i.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %call10, i32 noundef 4) #7
  %24 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %call10, align 4
  %and.i.i.i.i77 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i77)
  %tobool.not.i.i.i.i78 = icmp eq i32 %and.i.i.i.i77, 0
  br i1 %tobool.not.i.i.i.i78, label %trylock_buffer.exit.i81, label %if.then9.if.then.i82_crit_edge

if.then9.if.then.i82_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i82

trylock_buffer.exit.i81:                          ; preds = %if.then9
  tail call void @llvm.prefetch.p0(ptr %call10, i32 1, i32 3, i32 1) #7
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %call10, ptr %call10, i32 4, ptr elementtype(i32) %call10) #7, !srcloc !46
  %asmresult.i.i.i.i.i.i.i79 = extractvalue { i32, i32, i32 } %26, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %27 = and i32 %asmresult.i.i.i.i.i.i.i79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.not.i80 = icmp eq i32 %27, 0
  br i1 %tobool.not.not.i80, label %trylock_buffer.exit.i81.lock_buffer.exit83_crit_edge, label %trylock_buffer.exit.i81.if.then.i82_crit_edge

trylock_buffer.exit.i81.if.then.i82_crit_edge:    ; preds = %trylock_buffer.exit.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i82

trylock_buffer.exit.i81.lock_buffer.exit83_crit_edge: ; preds = %trylock_buffer.exit.i81
  call void @__sanitizer_cov_trace_pc() #9
  br label %lock_buffer.exit83

if.then.i82:                                      ; preds = %trylock_buffer.exit.i81.if.then.i82_crit_edge, %if.then9.if.then.i82_crit_edge
  tail call void @__lock_buffer(ptr noundef %call10) #7
  br label %lock_buffer.exit83

lock_buffer.exit83:                               ; preds = %if.then.i82, %trylock_buffer.exit.i81.lock_buffer.exit83_crit_edge
  %28 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %call10, align 4
  %and1.i.i73 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i73)
  %tobool12.not = icmp eq i32 %and1.i.i73, 0
  br i1 %tobool12.not, label %if.end19.thread, label %if.then13

if.then13:                                        ; preds = %lock_buffer.exit83
  tail call void @unlock_buffer(ptr noundef %call10) #7
  %tobool.not.i84 = icmp eq ptr %call10, null
  br i1 %tobool.not.i84, label %if.then13.if.end19_crit_edge, label %if.then.i85

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then.i85:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %call10) #7
  br label %if.end19

if.end19.thread:                                  ; preds = %lock_buffer.exit83
  call void @__sanitizer_cov_trace_pc() #9
  %b_end_io15 = getelementptr inbounds %struct.buffer_head, ptr %call10, i32 0, i32 7
  %30 = ptrtoint ptr %b_end_io15 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @end_buffer_read_sync, ptr %b_end_io15, align 4
  %inc16 = add nuw nsw i32 %num.0, 1
  %arrayidx17 = getelementptr [2 x ptr], ptr %bhs, i32 0, i32 %num.0
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call10, ptr %arrayidx17, align 4
  br label %while.body.i.preheader

if.end19:                                         ; preds = %if.then.i85, %if.then13.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  br i1 %tobool5.not, label %if.end19.while.body.i.preheader_crit_edge, label %if.end19.gfs2_submit_bhs.exit_crit_edge

if.end19.gfs2_submit_bhs.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %gfs2_submit_bhs.exit

if.end19.while.body.i.preheader_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.end19.while.body.i.preheader_crit_edge, %if.end19.thread
  %num.addr.012.i.ph = phi i32 [ 1, %if.end19.while.body.i.preheader_crit_edge ], [ %inc16, %if.end19.thread ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %num.addr.012.i = phi i32 [ %num.addr.12.i, %while.end.i.while.body.i_crit_edge ], [ %num.addr.012.i.ph, %while.body.i.preheader ]
  %bhs.addr.011.i = phi ptr [ %bhs.addr.14.i, %while.end.i.while.body.i_crit_edge ], [ %bhs, %while.body.i.preheader ]
  %32 = ptrtoint ptr %bhs.addr.011.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bhs.addr.011.i, align 4
  %conv.i = trunc i32 %num.addr.012.i to i16
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %conv.i, ptr noundef nonnull @fs_bio_set) #7
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %b_blocknr.i, align 8
  %b_size.i = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %b_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %b_size.i, align 8
  %shr.i86 = lshr i32 %37, 9
  %conv1.i = zext i32 %shr.i86 to i64
  %mul.i = mul i64 %35, %conv1.i
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %38 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %mul.i, ptr %bi_iter.i, align 8
  %b_bdev.i = getelementptr inbounds %struct.buffer_head, ptr %33, i32 0, i32 6
  %39 = ptrtoint ptr %b_bdev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_bdev.i, align 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %42, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %44, %40
  br i1 %cmp.not.i.i, label %while.body.i.while.body5.preheader.i_crit_edge, label %if.then.i.i

while.body.i.while.body5.preheader.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body5.preheader.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i8.i.i = and i16 %42, -2177
  %45 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %while.body5.preheader.i

while.body5.preheader.i:                          ; preds = %if.then.i.i, %while.body.i.while.body5.preheader.i_crit_edge
  %46 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %40, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i) #7
  br label %while.body5.i

while.body5.i:                                    ; preds = %if.end20.i.while.body5.i_crit_edge, %while.body5.preheader.i
  %num.addr.17.i = phi i32 [ %dec.i, %if.end20.i.while.body5.i_crit_edge ], [ %num.addr.012.i, %while.body5.preheader.i ]
  %bhs.addr.16.i = phi ptr [ %incdec.ptr.i, %if.end20.i.while.body5.i_crit_edge ], [ %bhs.addr.011.i, %while.body5.preheader.i ]
  %47 = ptrtoint ptr %bhs.addr.16.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bhs.addr.16.i, align 4
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %b_page.i, align 8
  %b_size6.i = getelementptr inbounds %struct.buffer_head, ptr %48, i32 0, i32 4
  %51 = ptrtoint ptr %b_size6.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %b_size6.i, align 8
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %48, i32 0, i32 5
  %53 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %b_data.i, align 4
  %55 = ptrtoint ptr %54 to i32
  %and.i = and i32 %55, 4095
  %call7.i = tail call i32 @bio_add_page(ptr noundef %call.i.i, ptr noundef %50, i32 noundef %52, i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i87 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i87, label %do.body.i, label %if.end20.i

do.body.i:                                        ; preds = %while.body5.i
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8, i32 1
  %56 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp9.i = icmp eq i32 %57, 0
  br i1 %cmp9.i, label %do.body14.i, label %do.body.i.while.end.i_crit_edge, !prof !40

do.body.i.while.end.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

do.body14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 231, 0\0A.popsection", ""() #7, !srcloc !59
  unreachable

if.end20.i:                                       ; preds = %while.body5.i
  %incdec.ptr.i = getelementptr ptr, ptr %bhs.addr.16.i, i32 1
  %dec.i = add nsw i32 %num.addr.17.i, -1
  %cmp3.i = icmp sgt i32 %num.addr.17.i, 1
  br i1 %cmp3.i, label %if.end20.i.while.body5.i_crit_edge, label %if.end20.i.while.end.i_crit_edge

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end20.i.while.body5.i_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body5.i

while.end.i:                                      ; preds = %if.end20.i.while.end.i_crit_edge, %do.body.i.while.end.i_crit_edge
  %bhs.addr.14.i = phi ptr [ %bhs.addr.16.i, %do.body.i.while.end.i_crit_edge ], [ %incdec.ptr.i, %if.end20.i.while.end.i_crit_edge ]
  %num.addr.12.i = phi i32 [ %num.addr.17.i, %do.body.i.while.end.i_crit_edge ], [ 0, %if.end20.i.while.end.i_crit_edge ]
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 10
  %58 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @gfs2_meta_read_endio, ptr %bi_end_io.i, align 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 12288, ptr %bi_opf.i.i, align 8
  tail call void @submit_bio(ptr noundef %call.i.i) #7
  %cmp.i = icmp sgt i32 %num.addr.12.i, 0
  br i1 %cmp.i, label %while.end.i.while.body.i_crit_edge, label %while.end.i.gfs2_submit_bhs.exit_crit_edge

while.end.i.gfs2_submit_bhs.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gfs2_submit_bhs.exit

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

gfs2_submit_bhs.exit:                             ; preds = %while.end.i.gfs2_submit_bhs.exit_crit_edge, %if.end19.gfs2_submit_bhs.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.addr.0)
  %tobool21.not = icmp eq i32 %flags.addr.0, 0
  br i1 %tobool21.not, label %gfs2_submit_bhs.exit.cleanup_crit_edge, label %if.end23

gfs2_submit_bhs.exit.cleanup_crit_edge:           ; preds = %gfs2_submit_bhs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %gfs2_submit_bhs.exit
  %60 = ptrtoint ptr %bhp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bhp, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 354) #7
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %61, align 4
  %64 = and i32 %63, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i88 = icmp eq i32 %64, 0
  br i1 %tobool.not.i88, label %if.end23.wait_on_buffer.exit_crit_edge, label %if.then.i89

if.end23.wait_on_buffer.exit_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_on_buffer.exit

if.then.i89:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__wait_on_buffer(ptr noundef %61) #7
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i89, %if.end23.wait_on_buffer.exit_crit_edge
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %61, align 4
  %and1.i.i74 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i74)
  %tobool25.not = icmp eq i32 %and1.i.i74, 0
  br i1 %tobool25.not, label %if.then34, label %wait_on_buffer.exit.cleanup_crit_edge, !prof !40

wait_on_buffer.exit.cleanup_crit_edge:            ; preds = %wait_on_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then34:                                        ; preds = %wait_on_buffer.exit
  %67 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i90 = and i32 %67, -16384
  %68 = inttoptr i32 %and.i90 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %70, i32 0, i32 146
  %71 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %journal_info, align 4
  %tobool36.not = icmp eq ptr %72, null
  br i1 %tobool36.not, label %if.then34.if.end41_crit_edge, label %land.lhs.true37

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true37:                                  ; preds = %if.then34
  %tr_flags = getelementptr inbounds %struct.gfs2_trans, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %tr_flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %tr_flags, align 4
  %75 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool39.not = icmp eq i32 %75, 0
  br i1 %tobool39.not, label %land.lhs.true37.if.end41_crit_edge, label %if.then40

land.lhs.true37.if.end41_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then40:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gfs2_io_error_bh_i(ptr noundef %1, ptr noundef %61, ptr noundef nonnull @__func__.gfs2_meta_read, ptr noundef nonnull @.str, i32 noundef 300, i1 noundef zeroext true) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %land.lhs.true37.if.end41_crit_edge, %if.then34.if.end41_crit_edge
  %tobool.not.i91 = icmp eq ptr %61, null
  br i1 %tobool.not.i91, label %if.end41.cleanup.sink.split_crit_edge, label %if.then.i92

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i92:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %61) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i92, %if.end41.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %76 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %bhp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %wait_on_buffer.exit.cleanup_crit_edge, %gfs2_submit_bhs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %gfs2_submit_bhs.exit.cleanup_crit_edge ], [ 0, %wait_on_buffer.exit.cleanup_crit_edge ], [ -5, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bhs) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_buffer_read_sync(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_io_error_bh_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_meta_wait(ptr noundef %sdp, ptr noundef %bh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %sdp, i32 0, i32 4
  %0 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sd_flags.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %entry.land.lhs.true_crit_edge, !prof !58

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

gfs2_withdrawn.exit:                              ; preds = %entry
  %3 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sd_flags.i, align 4
  %5 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.i.not = icmp eq i32 %5, 0
  br i1 %tobool3.i.not, label %gfs2_withdrawn.exit.if.end_crit_edge, label %gfs2_withdrawn.exit.land.lhs.true_crit_edge, !prof !39

gfs2_withdrawn.exit.land.lhs.true_crit_edge:      ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

gfs2_withdrawn.exit.if.end_crit_edge:             ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %gfs2_withdrawn.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %6 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sd_flags.i, align 4
  %8 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %gfs2_withdrawn.exit.if.end_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 354) #7
  %9 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %bh, align 4
  %11 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i33 = icmp eq i32 %11, 0
  br i1 %tobool.not.i33, label %if.end.wait_on_buffer.exit_crit_edge, label %if.then.i

if.end.wait_on_buffer.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %wait_on_buffer.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__wait_on_buffer(ptr noundef %bh) #7
  br label %wait_on_buffer.exit

wait_on_buffer.exit:                              ; preds = %if.then.i, %if.end.wait_on_buffer.exit_crit_edge
  %12 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %bh, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool4.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool4.not, label %if.then5, label %if.end13

if.then5:                                         ; preds = %wait_on_buffer.exit
  %14 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %journal_info = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 146
  %18 = ptrtoint ptr %journal_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %journal_info, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %if.then5.return_crit_edge, label %land.lhs.true8

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true8:                                   ; preds = %if.then5
  %tr_flags = getelementptr inbounds %struct.gfs2_trans, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %tr_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %tr_flags, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool10.not = icmp eq i32 %22, 0
  br i1 %tobool10.not, label %land.lhs.true8.return_crit_edge, label %if.then11

land.lhs.true8.return_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then11:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gfs2_io_error_bh_i(ptr noundef %sdp, ptr noundef %bh, ptr noundef nonnull @__func__.gfs2_meta_wait, ptr noundef nonnull @.str, i32 noundef 327, i1 noundef zeroext true) #7
  br label %return

if.end13:                                         ; preds = %wait_on_buffer.exit
  %23 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %sd_flags.i, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i35 = icmp eq i32 %25, 0
  br i1 %tobool.not.i35, label %gfs2_withdrawn.exit38, label %if.end13.land.lhs.true21_crit_edge, !prof !58

if.end13.land.lhs.true21_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true21

gfs2_withdrawn.exit38:                            ; preds = %if.end13
  %26 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %sd_flags.i, align 4
  %28 = and i32 %27, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.i36.not = icmp eq i32 %28, 0
  br i1 %tobool3.i36.not, label %gfs2_withdrawn.exit38.if.end24_crit_edge, label %gfs2_withdrawn.exit38.land.lhs.true21_crit_edge, !prof !39

gfs2_withdrawn.exit38.land.lhs.true21_crit_edge:  ; preds = %gfs2_withdrawn.exit38
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true21

gfs2_withdrawn.exit38.if.end24_crit_edge:         ; preds = %gfs2_withdrawn.exit38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true21:                                  ; preds = %gfs2_withdrawn.exit38.land.lhs.true21_crit_edge, %if.end13.land.lhs.true21_crit_edge
  %29 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %sd_flags.i, align 4
  %31 = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i40.not = icmp eq i32 %31, 0
  br i1 %tobool.i40.not, label %land.lhs.true21.return_crit_edge, label %land.lhs.true21.if.end24_crit_edge

land.lhs.true21.if.end24_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true21.return_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end24:                                         ; preds = %land.lhs.true21.if.end24_crit_edge, %gfs2_withdrawn.exit38.if.end24_crit_edge
  br label %return

return:                                           ; preds = %if.end24, %land.lhs.true21.return_crit_edge, %if.then11, %land.lhs.true8.return_crit_edge, %if.then5.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -5, %land.lhs.true.return_crit_edge ], [ -5, %if.then11 ], [ -5, %land.lhs.true8.return_crit_edge ], [ -5, %if.then5.return_crit_edge ], [ -5, %land.lhs.true21.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_remove_from_journal(ptr noundef %bh, i32 noundef %meta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %b_page = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 2
  %0 = ptrtoint ptr %b_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_page, align 8
  %mapping1 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %mapping1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapping1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %a_ops.i, align 4
  %cmp.i = icmp eq ptr %7, @gfs2_meta_aops
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ln_sbd.i = getelementptr %struct.gfs2_glock, ptr %3, i32 -1, i32 1, i32 1
  %8 = ptrtoint ptr %ln_sbd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ln_sbd.i, align 8
  br label %gfs2_mapping2sbd.exit

if.else.i:                                        ; preds = %entry
  %cmp2.i = icmp eq ptr %7, @gfs2_rgrp_aops
  br i1 %cmp2.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %3, i32 -2368
  br label %gfs2_mapping2sbd.exit

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  br label %gfs2_mapping2sbd.exit

gfs2_mapping2sbd.exit:                            ; preds = %if.else5.i, %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %9, %if.then.i ], [ %add.ptr4.i, %if.then3.i ], [ %13, %if.else5.i ]
  %b_private = getelementptr inbounds %struct.buffer_head, ptr %bh, i32 0, i32 8
  %14 = ptrtoint ptr %b_private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %b_private, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 16, ptr noundef %bh) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %gfs2_mapping2sbd.exit.if.end6_crit_edge, label %if.then

gfs2_mapping2sbd.exit.if.end6_crit_edge:          ; preds = %gfs2_mapping2sbd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %gfs2_mapping2sbd.exit
  tail call fastcc void @trace_gfs2_pin(ptr noundef %15)
  %sd_log_pinned = getelementptr inbounds %struct.gfs2_sbd, ptr %retval.0.i, i32 0, i32 81
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_log_pinned, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %sd_log_pinned, i32 1, i32 3, i32 1) #7
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sd_log_pinned, ptr %sd_log_pinned, i32 1, ptr elementtype(i32) %sd_log_pinned) #7, !srcloc !60
  %bd_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %15, i32 0, i32 3
  %call.i.i42 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bd_list) #7
  br i1 %call.i.i42, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %15, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %bd_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bd_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %29 = ptrtoint ptr %bd_list to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %bd_list, ptr %bd_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.gfs2_bufdata, ptr %15, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %bd_list, ptr %prev.i3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %meta)
  %cmp = icmp eq i32 %meta, 1
  %tr_num_databuf_rm = getelementptr inbounds %struct.gfs2_trans, ptr %21, i32 0, i32 8
  %tr_num_buf_rm = getelementptr inbounds %struct.gfs2_trans, ptr %21, i32 0, i32 7
  %tr_num_databuf_rm.sink47 = select i1 %cmp, ptr %tr_num_buf_rm, ptr %tr_num_databuf_rm
  %31 = ptrtoint ptr %tr_num_databuf_rm.sink47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tr_num_databuf_rm.sink47, align 4
  %inc5 = add i32 %32, 1
  store i32 %inc5, ptr %tr_num_databuf_rm.sink47, align 4
  %tr_flags = getelementptr inbounds %struct.gfs2_trans, ptr %21, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %tr_flags) #7
  %tobool.not.i = icmp eq ptr %bh, null
  br i1 %tobool.not.i, label %list_del_init.exit.if.end6_crit_edge, label %if.then.i43

list_del_init.exit.if.end6_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.i43:                                      ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %bh) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then.i43, %list_del_init.exit.if.end6_crit_edge, %gfs2_mapping2sbd.exit.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.end6.if.end24_crit_edge, label %if.then8

if.end6.if.end24_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then8:                                         ; preds = %if.end6
  %bd_tr = getelementptr inbounds %struct.gfs2_bufdata, ptr %15, i32 0, i32 4
  %33 = ptrtoint ptr %bd_tr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bd_tr, align 8
  %tobool9.not = icmp eq ptr %34, null
  br i1 %tobool9.not, label %if.else11, label %if.then10

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gfs2_trans_add_revoke(ptr noundef %retval.0.i, ptr noundef nonnull %15) #7
  br label %if.end24

if.else11:                                        ; preds = %if.then8
  br i1 %tobool.not, label %if.else15, label %if.then13

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %b_private to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %b_private, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_bufdata_cachep to i32))
  %36 = load ptr, ptr @gfs2_bufdata_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef nonnull %15) #7
  br label %if.end24

if.else15:                                        ; preds = %if.else11
  %bd_ail_st_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %15, i32 0, i32 5
  %37 = ptrtoint ptr %bd_ail_st_list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %bd_ail_st_list, align 4
  %cmp.i44.not = icmp eq ptr %38, %bd_ail_st_list
  br i1 %cmp.i44.not, label %if.else15.if.end24_crit_edge, label %land.lhs.true

if.else15.if.end24_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true:                                    ; preds = %if.else15
  %bd_ail_gl_list = getelementptr inbounds %struct.gfs2_bufdata, ptr %15, i32 0, i32 6
  %39 = ptrtoint ptr %bd_ail_gl_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %bd_ail_gl_list, align 4
  %cmp.i45.not = icmp eq ptr %40, %bd_ail_gl_list
  br i1 %cmp.i45.not, label %land.lhs.true.if.end24_crit_edge, label %if.then20

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gfs2_remove_from_ail(ptr noundef nonnull %15) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true.if.end24_crit_edge, %if.else15.if.end24_crit_edge, %if.then13, %if.then10, %if.end6.if.end24_crit_edge
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %bh) #7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %bh) #7
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_gfs2_pin(ptr noundef %bd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_pin, i32 0, i32 1), ptr blockaddress(@trace_gfs2_pin, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !56

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %9 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !61
  %call42 = tail call i32 @__traceiter_gfs2_pin(ptr noundef null, ptr noundef %bd, i32 noundef 0) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !62
  %13 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !39

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  %26 = tail call i32 @llvm.read_register.i32(metadata !29) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_pin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_gfs2_pin, i32 0, i32 7), align 4
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
  %.b1 = load i1, ptr @trace_gfs2_pin.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_gfs2_pin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 347, ptr noundef nonnull @.str.6) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !64
  %31 = tail call i32 @llvm.read_register.i32(metadata !29) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_revoke(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_remove_from_ail(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_journal_wipe(ptr nocapture noundef readonly %ip, i64 noundef %bstart, i32 noundef %blen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %conv.i = zext i32 %blen to i64
  %add.i = add i64 %conv.i, %bstart
  %sd_log_lock.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i.i) #7
  %sd_ail_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 104
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock.i) #7
  %sd_ail1_list.i = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 105
  %4 = ptrtoint ptr %sd_ail1_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_ail1_list.i, align 8
  %cmp.not65.i = icmp eq ptr %5, %sd_ail1_list.i
  br i1 %cmp.not65.i, label %entry.gfs2_ail1_wipe.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.gfs2_ail1_wipe.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %gfs2_ail1_wipe.exit

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn67.i, %sd_ail1_list.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.gfs2_ail1_wipe.exit_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.loopexit.i.gfs2_ail1_wipe.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gfs2_ail1_wipe.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in66.i = phi ptr [ %.pn67.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %5, %entry.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in66.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn67.i = load ptr, ptr %.pn.in66.i, align 4
  %tr_ail1_list.i = getelementptr i8, ptr %.pn.in66.i, i32 28
  %7 = ptrtoint ptr %tr_ail1_list.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tr_ail1_list.i, align 4
  %cmp19.not61.i = icmp eq ptr %8, %tr_ail1_list.i
  br i1 %cmp19.not61.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body.i.for.body22.i_crit_edge

for.body.i.for.body22.i_crit_edge:                ; preds = %for.body.i
  br label %for.body22.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i

for.body22.i:                                     ; preds = %for.inc.i.for.body22.i_crit_edge, %for.body.i.for.body22.i_crit_edge
  %.pn56.in62.i = phi ptr [ %.pn5663.i, %for.inc.i.for.body22.i_crit_edge ], [ %8, %for.body.i.for.body22.i_crit_edge ]
  %9 = ptrtoint ptr %.pn56.in62.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn5663.i = load ptr, ptr %.pn56.in62.i, align 4
  %bd.0.i = getelementptr i8, ptr %.pn56.in62.i, i32 -28
  %10 = ptrtoint ptr %bd.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd.0.i, align 8
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %b_blocknr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %bstart)
  %cmp23.i = icmp uge i64 %13, %bstart
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %add.i)
  %cmp26.not.i = icmp ult i64 %13, %add.i
  %or.cond.i = and i1 %cmp23.i, %cmp26.not.i
  br i1 %or.cond.i, label %if.end.i, label %for.body22.i.for.inc.i_crit_edge

for.body22.i.for.inc.i_crit_edge:                 ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gfs2_remove_from_journal(ptr noundef %11, i32 noundef 0) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body22.i.for.inc.i_crit_edge
  %cmp19.not.i = icmp eq ptr %.pn5663.i, %tr_ail1_list.i
  br i1 %cmp19.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body22.i_crit_edge

for.inc.i.for.body22.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit.i

gfs2_ail1_wipe.exit:                              ; preds = %for.cond.loopexit.i.gfs2_ail1_wipe.exit_crit_edge, %entry.gfs2_ail1_wipe.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blen)
  %tobool.not40 = icmp eq i32 %blen, 0
  br i1 %tobool.not40, label %gfs2_ail1_wipe.exit.while.end_crit_edge, label %while.body.lr.ph

gfs2_ail1_wipe.exit.while.end_crit_edge:          ; preds = %gfs2_ail1_wipe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %gfs2_ail1_wipe.exit
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  br label %while.body

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %while.body.lr.ph
  %blen.addr.044 = phi i32 [ %blen, %while.body.lr.ph ], [ %dec, %if.end9.while.body_crit_edge ]
  %bstart.addr.041 = phi i64 [ %bstart, %while.body.lr.ph ], [ %inc, %if.end9.while.body_crit_edge ]
  %14 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_gl, align 4
  %call1 = tail call ptr @gfs2_getbuf(ptr noundef %15, i64 noundef %bstart.addr.041, i32 noundef 0)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %land.lhs.true, label %while.body.if.then7_crit_edge

while.body.if.then7_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

land.lhs.true:                                    ; preds = %while.body
  %16 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i_diskflags.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %if.end

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end:                                           ; preds = %land.lhs.true
  %call5 = tail call fastcc ptr @gfs2_getjdatabuf(ptr noundef %ip, i64 noundef %bstart.addr.041)
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %while.body.if.then7_crit_edge
  %ty.039 = phi i32 [ 0, %if.end.if.then7_crit_edge ], [ 1, %while.body.if.then7_crit_edge ]
  %bh.038 = phi ptr [ %call5, %if.end.if.then7_crit_edge ], [ %call1, %while.body.if.then7_crit_edge ]
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 366) #7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bh.038, i32 noundef 4) #7
  %18 = ptrtoint ptr %bh.038 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %bh.038, align 4
  %and.i.i.i.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.then7.if.then.i_crit_edge

if.then7.if.then.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

trylock_buffer.exit.i:                            ; preds = %if.then7
  tail call void @llvm.prefetch.p0(ptr nonnull %bh.038, i32 1, i32 3, i32 1) #7
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %bh.038, ptr nonnull %bh.038, i32 4, ptr nonnull elementtype(i32) %bh.038) #7, !srcloc !46
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !47
  %21 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.brelse.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i_crit_edge

trylock_buffer.exit.i.if.then.i_crit_edge:        ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

trylock_buffer.exit.i.brelse.exit_crit_edge:      ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %trylock_buffer.exit.i.if.then.i_crit_edge, %if.then7.if.then.i_crit_edge
  tail call void @__lock_buffer(ptr noundef nonnull %bh.038) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %trylock_buffer.exit.i.brelse.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i.i) #7
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock.i) #7
  tail call void @gfs2_remove_from_journal(ptr noundef nonnull %bh.038, i32 noundef %ty.039)
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock.i) #7
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i.i) #7
  tail call void @unlock_buffer(ptr noundef nonnull %bh.038) #7
  tail call void @__brelse(ptr noundef nonnull %bh.038) #7
  br label %if.end9

if.end9:                                          ; preds = %brelse.exit, %if.end.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge
  %inc = add i64 %bstart.addr.041, 1
  %dec = add i32 %blen.addr.044, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end9.while.end_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end9.while.end_crit_edge, %gfs2_ail1_wipe.exit.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @gfs2_getjdatabuf(ptr nocapture noundef readonly %ip, i64 noundef %blkno) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %5, i32 0, i32 5, i32 5
  %6 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_bsize_shift, align 4
  %sub = sub i32 12, %7
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %blkno, %sh_prom
  %conv = trunc i64 %shr to i32
  %shl = shl i32 %conv, %sub
  %8 = trunc i64 %blkno to i32
  %conv4 = sub i32 %8, %shl
  %call.i = tail call ptr @pagecache_get_page(ptr noundef %1, i32 noundef %conv, i32 noundef 3, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i.not.i = icmp eq i32 %10, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !40

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.2) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

PagePrivate.exit:                                 ; preds = %if.end
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %call.i, align 4
  %13 = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.then8, label %do.body

if.then8:                                         ; preds = %PagePrivate.exit
  tail call void @unlock_page(ptr noundef nonnull %call.i) #7
  %14 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !39

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !40

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.3) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #7
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #7, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gfs2_getjdatabuf, %if.then.i.i.i.i.i)) #7
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !56

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #7
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body:                                          ; preds = %PagePrivate.exit
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp.i.not.i43 = icmp eq i32 %23, -1
  br i1 %cmp.i.not.i43, label %if.then.i44, label %PagePrivate.exit47, !prof !40

if.then.i44:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.2) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

PagePrivate.exit47:                               ; preds = %do.body
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %call.i, align 4
  %26 = and i32 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool11.not = icmp eq i32 %26, 0
  br i1 %tobool11.not, label %do.body16, label %do.end22, !prof !40

do.body16:                                        ; preds = %PagePrivate.exit47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #7, !srcloc !65
  unreachable

do.end22:                                         ; preds = %PagePrivate.exit47
  %private = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %27 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %private, align 4
  %29 = inttoptr i32 %28 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %tobool23.not68 = icmp eq i32 %conv4, 0
  br i1 %tobool23.not68, label %do.end22.for.end_crit_edge, label %do.end22.for.inc_crit_edge

do.end22.for.inc_crit_edge:                       ; preds = %do.end22
  br label %for.inc

do.end22.for.end_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %do.end22.for.inc_crit_edge
  %bufnum.070 = phi i32 [ %dec, %for.inc.for.inc_crit_edge ], [ %conv4, %do.end22.for.inc_crit_edge ]
  %bh.069 = phi ptr [ %31, %for.inc.for.inc_crit_edge ], [ %29, %do.end22.for.inc_crit_edge ]
  %dec = add i32 %bufnum.070, -1
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.069, i32 0, i32 1
  %30 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_this_page, align 4
  %tobool23.not = icmp eq i32 %dec, 0
  br i1 %tobool23.not, label %for.inc.for.end_crit_edge, label %for.inc.for.inc_crit_edge

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end22.for.end_crit_edge
  %bh.0.lcssa = phi ptr [ %29, %do.end22.for.end_crit_edge ], [ %31, %for.inc.for.end_crit_edge ]
  %b_count.i = getelementptr inbounds %struct.buffer_head, ptr %bh.0.lcssa, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %b_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %b_count.i, i32 1, i32 3, i32 1) #7
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %b_count.i, ptr %b_count.i, i32 1, ptr elementtype(i32) %b_count.i) #7, !srcloc !51
  tail call void @unlock_page(ptr noundef nonnull %call.i) #7
  %33 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %and.i.i48 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48)
  %tobool.not.i.i49 = icmp eq i32 %and.i.i48, 0
  br i1 %tobool.not.i.i49, label %if.end.i.i52, label %if.then.i.i51, !prof !39

if.then.i.i51:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i50 = add i32 %35, -1
  br label %_compound_head.exit.i57

if.end.i.i52:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %call.i to i32
  br label %_compound_head.exit.i57

_compound_head.exit.i57:                          ; preds = %if.end.i.i52, %if.then.i.i51
  %retval.0.i.i53 = phi i32 [ %sub.i.i50, %if.then.i.i51 ], [ %36, %if.end.i.i52 ]
  %37 = inttoptr i32 %retval.0.i.i53 to ptr
  %_refcount.i.i.i.i.i54 = getelementptr inbounds %struct.page, ptr %37, i32 0, i32 3
  %call.i.i.i.i.i.i.i55 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i54, i32 noundef 4) #7
  %38 = ptrtoint ptr %_refcount.i.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i.i.i.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i.i56 = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i.i56, label %if.then.i.i.i.i58, label %do.end5.i.i.i.i62, !prof !40

if.then.i.i.i.i58:                                ; preds = %_compound_head.exit.i57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %37, ptr noundef nonnull @.str.3) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #7, !srcloc !52
  unreachable

do.end5.i.i.i.i62:                                ; preds = %_compound_head.exit.i57
  %call.i.i.i10.i.i.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i54, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i54, i32 1, i32 3, i32 1) #7
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i54, ptr %_refcount.i.i.i.i.i54, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i54) #7, !srcloc !54
  %asmresult.i.i.i.i.i.i.i.i.i.i60 = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i60)
  %cmp.i.i.i.i.i.i.i61 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i60, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gfs2_getjdatabuf, %if.then.i.i.i.i.i64)) #7
          to label %folio_put_testzero.exit.i.i65 [label %if.then.i.i.i.i.i64], !srcloc !56

if.then.i.i.i.i.i64:                              ; preds = %do.end5.i.i.i.i62
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i.i63 = zext i1 %cmp.i.i.i.i.i.i.i61 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %37, i32 noundef -1, i32 noundef %conv.i.i.i.i.i63) #7
  br label %folio_put_testzero.exit.i.i65

folio_put_testzero.exit.i.i65:                    ; preds = %if.then.i.i.i.i.i64, %do.end5.i.i.i.i62
  br i1 %cmp.i.i.i.i.i.i.i61, label %folio_put_testzero.exit.i.i65.cleanup.sink.split_crit_edge, label %folio_put_testzero.exit.i.i65.cleanup_crit_edge

folio_put_testzero.exit.i.i65.cleanup_crit_edge:  ; preds = %folio_put_testzero.exit.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

folio_put_testzero.exit.i.i65.cleanup.sink.split_crit_edge: ; preds = %folio_put_testzero.exit.i.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %folio_put_testzero.exit.i.i65.cleanup.sink.split_crit_edge, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %18, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ %37, %folio_put_testzero.exit.i.i65.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ null, %folio_put_testzero.exit.i.i.cleanup.sink.split_crit_edge ], [ %bh.0.lcssa, %folio_put_testzero.exit.i.i65.cleanup.sink.split_crit_edge ]
  tail call void @__put_page(ptr noundef %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %folio_put_testzero.exit.i.i65.cleanup_crit_edge, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %bh.0.lcssa, %folio_put_testzero.exit.i.i65.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_meta_buffer(ptr nocapture noundef readonly %ip, i32 noundef %mtype, i64 noundef %num, ptr nocapture noundef writeonly %bhp) local_unnamed_addr #0 align 64 {
entry:
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 6
  %4 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_gl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #7
  %6 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !57
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %7 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_no_addr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %num)
  %cmp = icmp eq i64 %8, %num
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %i_rahead = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 21
  %9 = ptrtoint ptr %i_rahead to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %i_rahead, align 2
  %conv = zext i16 %10 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rahead.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call1 = call i32 @gfs2_meta_read(ptr noundef %5, i64 noundef %num, i32 noundef 16, i32 noundef %rahead.0, ptr noundef nonnull %bh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bh, align 4
  %conv4 = trunc i32 %mtype to i16
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %mh_type.i = getelementptr inbounds %struct.gfs2_meta_header, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %mh_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mh_type.i, align 4
  %conv.i = trunc i32 %18 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 18225520, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 18225520
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !39

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @gfs2_meta_check_ii(ptr noundef %3, ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.gfs2_meta_buffer, ptr noundef nonnull @.str, i32 noundef 493) #7
  br label %gfs2_metatype_check_i.exit

if.end.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i, i16 %conv4)
  %cmp5.not.i = icmp eq i16 %conv.i, %conv4
  br i1 %cmp5.not.i, label %if.end.i.if.else_crit_edge, label %if.then13.i, !prof !39

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = tail call i32 @gfs2_metatype_check_ii(ptr noundef %3, ptr noundef %12, i16 noundef zeroext %conv4, i16 noundef zeroext %conv.i, ptr noundef nonnull @__func__.gfs2_meta_buffer, ptr noundef nonnull @.str, i32 noundef 493) #7
  br label %gfs2_metatype_check_i.exit

gfs2_metatype_check_i.exit:                       ; preds = %if.then13.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call14.i, %if.then13.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %gfs2_metatype_check_i.exit.if.else_crit_edge, label %if.then6

gfs2_metatype_check_i.exit.if.else_crit_edge:     ; preds = %gfs2_metatype_check_i.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then6:                                         ; preds = %gfs2_metatype_check_i.exit
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then6.if.end7_crit_edge, label %if.then.i13

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then.i13:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__brelse(ptr noundef nonnull %12) #7
  br label %if.end7

if.else:                                          ; preds = %gfs2_metatype_check_i.exit.if.else_crit_edge, %if.end.i.if.else_crit_edge, %if.end.if.else_crit_edge
  %19 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bh, align 4
  %21 = ptrtoint ptr %bhp to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %bhp, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then.i13, %if.then6.if.end7_crit_edge
  %ret.0 = phi i32 [ %call1, %if.else ], [ -5, %if.then6.if.end7_crit_edge ], [ -5, %if.then.i13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_meta_ra(ptr noundef %gl, i64 noundef %dblock, i32 noundef %extlen) local_unnamed_addr #0 align 64 {
entry:
  %first_bh = alloca ptr, align 4
  %bh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first_bh) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bh) #7
  %2 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bh, align 4, !annotation !57
  %sd_tune = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 22
  %gt_max_readahead = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 22, i32 7
  tail call void @_raw_spin_lock(ptr noundef %sd_tune) #7
  %3 = ptrtoint ptr %gt_max_readahead to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gt_max_readahead, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sd_tune) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extlen)
  %tobool.not = icmp eq i32 %extlen, 0
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !40

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 518, 0\0A.popsection", ""() #7, !srcloc !66
  unreachable

do.end10:                                         ; preds = %entry
  %sb_bsize_shift = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 5, i32 5
  %5 = ptrtoint ptr %sb_bsize_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sb_bsize_shift, align 4
  %shr = lshr i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp = icmp eq i32 %shr, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %shr
  %7 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 %extlen)
  %call16 = tail call ptr @gfs2_getbuf(ptr noundef %gl, i64 noundef %dblock, i32 noundef 1)
  %8 = ptrtoint ptr %first_bh to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16, ptr %first_bh, align 4
  %9 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %call16, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool18.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool18.not, label %if.end20, label %do.end10.out_crit_edge

do.end10.out_crit_edge:                           ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end20:                                         ; preds = %do.end10
  %11 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %call16, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @ll_rw_block(i32 noundef 0, i32 noundef 12288, i32 noundef 1, ptr noundef nonnull %first_bh) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %extlen.addr.165 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extlen.addr.165)
  %tobool25.not66 = icmp eq i32 %extlen.addr.165, 0
  br i1 %tobool25.not66, label %if.end24.while.end_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  br label %while.body

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end41.while.body_crit_edge, %if.end24.while.body_crit_edge
  %extlen.addr.168 = phi i32 [ %extlen.addr.1, %if.end41.while.body_crit_edge ], [ %extlen.addr.165, %if.end24.while.body_crit_edge ]
  %dblock.addr.067.in = phi i64 [ %dblock.addr.067, %if.end41.while.body_crit_edge ], [ %dblock, %if.end24.while.body_crit_edge ]
  %dblock.addr.067 = add i64 %dblock.addr.067.in, 1
  %call26 = call ptr @gfs2_getbuf(ptr noundef %gl, i64 noundef %dblock.addr.067, i32 noundef 1)
  %14 = ptrtoint ptr %bh to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call26, ptr %bh, align 4
  %15 = ptrtoint ptr %call26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call26, align 4
  %and1.i.i56 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i56)
  %tobool28.not = icmp eq i32 %and1.i.i56, 0
  br i1 %tobool28.not, label %land.lhs.true, label %while.body.if.end32_crit_edge

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true:                                    ; preds = %while.body
  %17 = ptrtoint ptr %call26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call26, align 4
  %19 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool30.not = icmp eq i32 %19, 0
  br i1 %tobool30.not, label %if.then31, label %land.lhs.true.if.end32thread-pre-split_crit_edge

land.lhs.true.if.end32thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32thread-pre-split

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @ll_rw_block(i32 noundef 0, i32 noundef 536576, i32 noundef 1, ptr noundef nonnull %bh) #7
  br label %if.end32thread-pre-split

if.end32thread-pre-split:                         ; preds = %if.then31, %land.lhs.true.if.end32thread-pre-split_crit_edge
  %20 = ptrtoint ptr %bh to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load ptr, ptr %bh, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end32thread-pre-split, %while.body.if.end32_crit_edge
  %21 = phi ptr [ %.pr, %if.end32thread-pre-split ], [ %call26, %while.body.if.end32_crit_edge ]
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end32.brelse.exit_crit_edge, label %if.then.i

if.end32.brelse.exit_crit_edge:                   ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  call void @__brelse(ptr noundef nonnull %21) #7
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end32.brelse.exit_crit_edge
  %22 = ptrtoint ptr %first_bh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %first_bh, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  %26 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36.not = icmp eq i32 %26, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %brelse.exit.if.end41_crit_edge

brelse.exit.if.end41_crit_edge:                   ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true37:                                  ; preds = %brelse.exit
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %23, align 4
  %and1.i.i61 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i61)
  %tobool39.not = icmp eq i32 %and1.i.i61, 0
  br i1 %tobool39.not, label %land.lhs.true37.if.end41_crit_edge, label %land.lhs.true37.out_crit_edge

land.lhs.true37.out_crit_edge:                    ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true37.if.end41_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true37.if.end41_crit_edge, %brelse.exit.if.end41_crit_edge
  %extlen.addr.1 = add i32 %extlen.addr.168, -1
  %tobool25.not = icmp eq i32 %extlen.addr.1, 0
  br i1 %tobool25.not, label %if.end41.while.end_crit_edge, label %if.end41.while.body_crit_edge

if.end41.while.body_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end41.while.end_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end41.while.end_crit_edge, %if.end24.while.end_crit_edge
  %29 = ptrtoint ptr %first_bh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %first_bh, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 354) #7
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i62 = icmp eq i32 %33, 0
  br i1 %tobool.not.i62, label %while.end.out_crit_edge, label %if.then.i63

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then.i63:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__wait_on_buffer(ptr noundef %30) #7
  br label %out

out:                                              ; preds = %if.then.i63, %while.end.out_crit_edge, %land.lhs.true37.out_crit_edge, %do.end10.out_crit_edge
  %34 = ptrtoint ptr %first_bh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %first_bh, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bh) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first_bh) #7
  ret ptr %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_async_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bh(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_meta_read_endio(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %0 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i53.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i53.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  br label %if.end.i

for.cond.loopexit:                                ; preds = %do.body12
  %2 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %3 to i32
  %cmp.not.i = icmp ult i32 %spec.select46, %conv.i
  br i1 %cmp.not.i, label %for.cond.loopexit.if.end.i_crit_edge, label %for.cond.loopexit.for.end_crit_edge

for.cond.loopexit.for.end_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.loopexit.if.end.i_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %for.cond.loopexit.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.056 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %for.cond.loopexit.if.end.i_crit_edge ]
  %iter_all.sroa.13.055 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select46, %for.cond.loopexit.if.end.i_crit_edge ]
  %iter_all.sroa.17.054 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %for.cond.loopexit.if.end.i_crit_edge ]
  %4 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.17.054)
  %tobool.not.i.i = icmp eq i32 %iter_all.sroa.17.054, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.056, i32 1
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %5, i32 %iter_all.sroa.13.055
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %5, i32 %iter_all.sroa.13.055, i32 2
  %8 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i34 = lshr i32 %9, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %7, i32 %shr.i.i34
  %and.i.i = and i32 %9, 4095
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ %and.i.i, %if.else.i.i ], [ 0, %if.then.i.i ]
  %sub.i.i = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %5, i32 %iter_all.sroa.13.055, i32 1
  %10 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %11, %iter_all.sroa.17.054
  %12 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 %sub9.i.i) #7
  %add.i.i = add i32 %12, %iter_all.sroa.17.054
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %11)
  %cmp15.i.i = icmp eq i32 %add.i.i, %11
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select46 = add nuw nsw i32 %iter_all.sroa.13.055, %inc.i.i
  %13 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %iter_all.sroa.0.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, -1
  br i1 %cmp.i.not.i, label %if.then.i, label %PagePrivate.exit, !prof !40

if.then.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.2) #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 452, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

PagePrivate.exit:                                 ; preds = %if.end.i.i
  %15 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %iter_all.sroa.0.1, align 4
  %17 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %do.body6, label %do.end11, !prof !40

do.body6:                                         ; preds = %PagePrivate.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/meta_io.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 199, 0\0A.popsection", ""() #7, !srcloc !67
  unreachable

do.end11:                                         ; preds = %PagePrivate.exit
  %private = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1, i32 0, i32 3
  %18 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private, align 4
  %20 = inttoptr i32 %19 to ptr
  %b_data48 = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %b_data48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data48, align 4
  %23 = ptrtoint ptr %22 to i32
  %and49 = and i32 %23, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and49, i32 %.sink.i.i)
  %cmp50 = icmp ult i32 %and49, %.sink.i.i
  br i1 %cmp50, label %do.end11.while.body_crit_edge, label %do.end11.do.body12.preheader_crit_edge

do.end11.do.body12.preheader_crit_edge:           ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.preheader

do.end11.while.body_crit_edge:                    ; preds = %do.end11
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end11.while.body_crit_edge
  %bh.051 = phi ptr [ %25, %while.body.while.body_crit_edge ], [ %20, %do.end11.while.body_crit_edge ]
  %b_this_page = getelementptr inbounds %struct.buffer_head, ptr %bh.051, i32 0, i32 1
  %24 = ptrtoint ptr %b_this_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %b_this_page, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %b_data, align 4
  %28 = ptrtoint ptr %27 to i32
  %and = and i32 %28, 4095
  %cmp = icmp ult i32 %and, %.sink.i.i
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.do.body12.preheader_crit_edge

while.body.do.body12.preheader_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body12.preheader:                              ; preds = %while.body.do.body12.preheader_crit_edge, %do.end11.do.body12.preheader_crit_edge
  %bh.1.ph = phi ptr [ %20, %do.end11.do.body12.preheader_crit_edge ], [ %25, %while.body.do.body12.preheader_crit_edge ]
  br label %do.body12

do.body12:                                        ; preds = %do.body12.do.body12_crit_edge, %do.body12.preheader
  %bh.1 = phi ptr [ %30, %do.body12.do.body12_crit_edge ], [ %bh.1.ph, %do.body12.preheader ]
  %len.0 = phi i32 [ %sub, %do.body12.do.body12_crit_edge ], [ %12, %do.body12.preheader ]
  %b_this_page13 = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 1
  %29 = ptrtoint ptr %b_this_page13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %b_this_page13, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 4
  %31 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %b_size, align 8
  %b_end_io = getelementptr inbounds %struct.buffer_head, ptr %bh.1, i32 0, i32 7
  %33 = ptrtoint ptr %b_end_io to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %b_end_io, align 4
  %35 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool14.not = icmp eq i8 %36, 0
  %lnot.ext16 = zext i1 %tobool14.not to i32
  tail call void %34(ptr noundef %bh.1, i32 noundef %lnot.ext16) #7
  %tobool18.not = icmp eq ptr %30, null
  %sub = sub i32 %len.0, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool19.not = icmp eq i32 %sub, 0
  %or.cond = select i1 %tobool18.not, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %for.cond.loopexit, label %do.body12.do.body12_crit_edge

do.body12.do.body12_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

for.end:                                          ; preds = %for.cond.loopexit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wait_on_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_gfs2_pin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_check_ii(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_metatype_check_ii(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !26, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @gfs2_meta_aops, !1, !"gfs2_meta_aops", i1 false, i1 false}
!1 = !{!"../fs/gfs2/meta_io.c", i32 91, i32 39}
!2 = !{ptr @gfs2_rgrp_aops, !3, !"gfs2_rgrp_aops", i1 false, i1 false}
!3 = !{!"../fs/gfs2/meta_io.c", i32 97, i32 39}
!4 = !{ptr @__func__.gfs2_meta_read, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/gfs2/meta_io.c", i32 300, i32 4}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.gfs2_meta_wait, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/gfs2/meta_io.c", i32 327, i32 4}
!9 = !{ptr @__func__.gfs2_meta_buffer, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/gfs2/meta_io.c", i32 493, i32 18}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/page-flags.h", i32 414, i32 1}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/page-flags.h", i32 452, i32 1}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/mm.h", i32 717, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../fs/gfs2/trace_gfs2.h", i32 319, i32 1}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/gfs2/util.h", i32 126, i32 38}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2150690744, i64 2150691235, i64 2150690781, i64 2150690837, i64 2150690871, i64 2150690895, i64 2150690936, i64 2150690957, i64 2150690985, i64 2150691019}
!42 = !{i64 2155662333, i64 2155662814, i64 2155662370, i64 2155662426, i64 2155662460, i64 2155662484, i64 2155662525, i64 2155662546, i64 2155662574, i64 2155662608}
!43 = !{i64 2151142017, i64 2151142508, i64 2151142054, i64 2151142110, i64 2151142144, i64 2151142168, i64 2151142209, i64 2151142230, i64 2151142258, i64 2151142292}
!44 = !{i64 2155663945, i64 2155664426, i64 2155663982, i64 2155664038, i64 2155664072, i64 2155664096, i64 2155664137, i64 2155664158, i64 2155664186, i64 2155664220}
!45 = !{i64 2155665639, i64 2155666120, i64 2155665676, i64 2155665732, i64 2155665766, i64 2155665790, i64 2155665831, i64 2155665852, i64 2155665880, i64 2155665914}
!46 = !{i64 2148439191, i64 2148439223, i64 2148439252, i64 2148439286, i64 2148439317, i64 2148439340}
!47 = !{i64 2148528272}
!48 = !{i64 2151199165, i64 2151199656, i64 2151199202, i64 2151199258, i64 2151199292, i64 2151199316, i64 2151199357, i64 2151199378, i64 2151199406, i64 2151199440}
!49 = !{i64 2155671308, i64 2155671789, i64 2155671345, i64 2155671401, i64 2155671435, i64 2155671459, i64 2155671500, i64 2155671521, i64 2155671549, i64 2155671583}
!50 = !{i64 2155673111, i64 2155673593, i64 2155673148, i64 2155673204, i64 2155673238, i64 2155673262, i64 2155673303, i64 2155673324, i64 2155673352, i64 2155673386}
!51 = !{i64 2148430333, i64 2148430359, i64 2148430388, i64 2148430422, i64 2148430453, i64 2148430476}
!52 = !{i64 2153220553, i64 2153221036, i64 2153220590, i64 2153220646, i64 2153220680, i64 2153220704, i64 2153220745, i64 2153220766, i64 2153220794, i64 2153220828}
!53 = !{i64 2148518785}
!54 = !{i64 2148433518, i64 2148433550, i64 2148433579, i64 2148433613, i64 2148433644, i64 2148433667}
!55 = !{i64 2148519014}
!56 = !{i64 2148243726, i64 2148243731, i64 2148243744, i64 2148243788, i64 2148243822, i64 2148243843}
!57 = !{!"auto-init"}
!58 = !{!"branch_weights", i32 2146410443, i32 1073205}
!59 = !{i64 2155676863, i64 2155677345, i64 2155676900, i64 2155676956, i64 2155676990, i64 2155677014, i64 2155677055, i64 2155677076, i64 2155677104, i64 2155677138}
!60 = !{i64 2148432798, i64 2148432824, i64 2148432853, i64 2148432887, i64 2148432918, i64 2148432941}
!61 = !{i64 2155505896}
!62 = !{i64 2155506089}
!63 = !{i64 2149266406}
!64 = !{i64 2149267442}
!65 = !{i64 2155689640, i64 2155690122, i64 2155689677, i64 2155689733, i64 2155689767, i64 2155689791, i64 2155689832, i64 2155689853, i64 2155689881, i64 2155689915}
!66 = !{i64 2155691435, i64 2155691917, i64 2155691472, i64 2155691528, i64 2155691562, i64 2155691586, i64 2155691627, i64 2155691648, i64 2155691676, i64 2155691710}
!67 = !{i64 2155674995, i64 2155675477, i64 2155675032, i64 2155675088, i64 2155675122, i64 2155675146, i64 2155675187, i64 2155675208, i64 2155675236, i64 2155675270}
