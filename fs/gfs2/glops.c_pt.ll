; ModuleID = '/llk/IR_all_yes/fs/gfs2/glops.c_pt.bc'
source_filename = "../fs/gfs2/glops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gfs2_glock_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gfs2_glock = type { i32, %struct.lm_lockname, %struct.lockref, i16, i32, i32, %struct.list_head, ptr, i64, %struct.gfs2_lkstats, %struct.dlm_lksb, i32, ptr, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work, %struct.anon.83, %struct.callback_head, %struct.rhash_head }
%struct.lm_lockname = type { i64, ptr, i32 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gfs2_lkstats = type { [8 x i64] }
%struct.dlm_lksb = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.83 = type { %struct.delayed_work, i64 }
%struct.callback_head = type { ptr, ptr }
%struct.rhash_head = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.gfs2_holder = type { %struct.list_head, ptr, ptr, i16, i16, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.page = type { i32, %union.anon.18, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.gfs2_inode = type { %struct.inode, i64, i64, i64, i64, i32, ptr, %struct.gfs2_holder, ptr, %struct.gfs2_holder, %struct.gfs2_blkreserv, i64, %struct.atomic_t, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr, i32, i32, i8, i8, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.74 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.75 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%struct.gfs2_blkreserv = type { %struct.rb_node, ptr, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gfs2_dinode = type { %struct.gfs2_meta_header, %struct.gfs2_inum, i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32, i16, i16, i32, i16, i16, i32, %struct.gfs2_inum, i64, i32, i32, i32, [44 x i8] }
%struct.gfs2_meta_header = type { i32, i32, i64, i32, %union.anon.84 }
%union.anon.84 = type { i32 }
%struct.gfs2_inum = type { i64, i64 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gfs2_rgrpd = type { %struct.rb_node, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.rb_root }
%struct.gfs2_log_header_host = type { i64, i32, i32, i32, i64, i64, i64 }
%struct.gfs2_jdesc = type { %struct.list_head, %struct.list_head, i32, %struct.work_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i64 }
%struct.gfs2_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head }

@__func__.gfs2_inode_metasync = private unnamed_addr constant [20 x i8] c"gfs2_inode_metasync\00", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/gfs2/glops.c\00", [16 x i8] zeroinitializer }, align 32
@gfs2_meta_glops = dso_local constant { %struct.gfs2_glock_operations, [52 x i8] } { %struct.gfs2_glock_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 4, i32 8 }, [52 x i8] zeroinitializer }, align 32
@gfs2_inode_glops = dso_local constant { %struct.gfs2_glock_operations, [52 x i8] } { %struct.gfs2_glock_operations { ptr @inode_go_sync, ptr null, ptr @inode_go_inval, ptr @inode_go_demote_ok, ptr @inode_go_instantiate, ptr @inode_go_dump, ptr null, ptr @inode_go_free, i32 0, i32 2, i32 7 }, [52 x i8] zeroinitializer }, align 32
@gfs2_rgrp_glops = dso_local constant { %struct.gfs2_glock_operations, [52 x i8] } { %struct.gfs2_glock_operations { ptr @rgrp_go_sync, ptr null, ptr @rgrp_go_inval, ptr null, ptr @gfs2_rgrp_go_instantiate, ptr @gfs2_rgrp_go_dump, ptr null, ptr null, i32 0, i32 3, i32 2 }, [52 x i8] zeroinitializer }, align 32
@gfs2_freeze_glops = dso_local constant { %struct.gfs2_glock_operations, [52 x i8] } { %struct.gfs2_glock_operations { ptr @freeze_go_sync, ptr @freeze_go_xmote_bh, ptr null, ptr @freeze_go_demote_ok, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, i32 8 }, [52 x i8] zeroinitializer }, align 32
@gfs2_iopen_glops = dso_local constant { %struct.gfs2_glock_operations, [52 x i8] } { %struct.gfs2_glock_operations { ptr null, ptr null, ptr null, ptr @iopen_go_demote_ok, ptr null, ptr @inode_go_dump, ptr @iopen_go_callback, ptr null, i32 1, i32 5, i32 12 }, [52 x i8] zeroinitializer }, align 32
@gfs2_flock_glops = dso_local constant { %struct.gfs2_glock_operations, [52 x i8] } { %struct.gfs2_glock_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 6, i32 12 }, [52 x i8] zeroinitializer }, align 32
@gfs2_nondisk_glops = dso_local constant { %struct.gfs2_glock_operations, [52 x i8] } { %struct.gfs2_glock_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nondisk_go_callback, ptr null, i32 0, i32 1, i32 8 }, [52 x i8] zeroinitializer }, align 32
@gfs2_quota_glops = dso_local constant { %struct.gfs2_glock_operations, [52 x i8] } { %struct.gfs2_glock_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 8, i32 14 }, [52 x i8] zeroinitializer }, align 32
@gfs2_journal_glops = dso_local constant { %struct.gfs2_glock_operations, [52 x i8] } { %struct.gfs2_glock_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 9, i32 8 }, [52 x i8] zeroinitializer }, align 32
@gfs2_glops_list = dso_local global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr null, ptr @gfs2_nondisk_glops, ptr @gfs2_inode_glops, ptr @gfs2_rgrp_glops, ptr @gfs2_meta_glops, ptr @gfs2_iopen_glops, ptr @gfs2_flock_glops, ptr null, ptr @gfs2_quota_glops, ptr @gfs2_journal_glops], [56 x i8] zeroinitializer }, align 32
@gfs2_freeze_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@gfs2_ail_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013gfs2: fsid=%s: AIL buffer %p: blocknr %llu state 0x%08lx mapping %p page state 0x%lx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gfs2_ail_error\00", [17 x i8] zeroinitializer }, align 32
@gfs2_ail_error._entry_ptr = internal global ptr @gfs2_ail_error._entry, section ".printk_index", align 4
@gfs2_ail_error._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gfs2: fsid=%s: AIL glock %u:%llu mapping %p\0A\00", [49 x i8] zeroinitializer }, align 32
@gfs2_ail_error._entry_ptr.5 = internal global ptr @gfs2_ail_error._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIL error\0A\00", [21 x i8] zeroinitializer }, align 32
@__func__.gfs2_dinode_in = private unnamed_addr constant [15 x i8] c"gfs2_dinode_in\00", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s I: n:%llu/%llu t:%u f:0x%02lx d:0x%08x s:%llu p:%lu\0A\00", [40 x i8] zeroinitializer }, align 32
@gfs2_rgrp_metasync.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.gfs2_rgrp_metasync = private unnamed_addr constant [19 x i8] c"gfs2_rgrp_metasync\00", align 1
@rgrp_go_inval.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@freeze_go_sync._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016gfs2: fsid=%s: GFS2: couldn't freeze filesystem: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"freeze_go_sync\00", [17 x i8] zeroinitializer }, align 32
@freeze_go_sync._entry_ptr = internal global ptr @freeze_go_sync._entry, section ".printk_index", align 4
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"!error\00", [25 x i8] zeroinitializer }, align 32
@__func__.freeze_go_xmote_bh = private unnamed_addr constant [19 x i8] c"freeze_go_xmote_bh\00", align 1
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"head.lh_flags & GFS2_LOG_HEAD_UNMOUNT\00", [58 x i8] zeroinitializer }, align 32
@gfs2_delete_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@nondisk_go_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014gfs2: fsid=%s: Spectator node cannot recover journals.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nondisk_go_callback\00", [44 x i8] zeroinitializer }, align 32
@nondisk_go_callback._entry_ptr = internal global ptr @nondisk_go_callback._entry, section ".printk_index", align 4
@nondisk_go_callback._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014gfs2: fsid=%s: Some node has withdrawn; checking for recovery.\0A\00", [62 x i8] zeroinitializer }, align 32
@nondisk_go_callback._entry_ptr.18 = internal global ptr @nondisk_go_callback._entry.16, section ".printk_index", align 4
@gfs2_control_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 24576]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 287, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"gfs2_meta_glops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 730, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"gfs2_inode_glops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 735, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"gfs2_rgrp_glops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 746, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"gfs2_freeze_glops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 755, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"gfs2_iopen_glops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 763, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"gfs2_flock_glops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 772, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"gfs2_nondisk_glops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 777, i32 36 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"gfs2_quota_glops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 783, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"gfs2_journal_glops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 788, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"gfs2_glops_list\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 793, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"gfs2_freeze_wq\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 30, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 38, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 43, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 46, i32 15 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 271, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 542, i32 22 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 577, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 583, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 611, i32 7 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 613, i32 7 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 714, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [19 x i8] c"../fs/gfs2/glops.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 718, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @freeze_go_sync._entry, ptr @freeze_go_sync._entry_ptr, ptr @gfs2_ail_error._entry, ptr @gfs2_ail_error._entry.3, ptr @gfs2_ail_error._entry_ptr, ptr @gfs2_ail_error._entry_ptr.5, ptr @nondisk_go_callback._entry, ptr @nondisk_go_callback._entry.16, ptr @nondisk_go_callback._entry_ptr, ptr @nondisk_go_callback._entry_ptr.18, ptr @.str, ptr @gfs2_meta_glops, ptr @gfs2_inode_glops, ptr @gfs2_rgrp_glops, ptr @gfs2_freeze_glops, ptr @gfs2_iopen_glops, ptr @gfs2_flock_glops, ptr @gfs2_nondisk_glops, ptr @gfs2_quota_glops, ptr @gfs2_journal_glops, ptr @gfs2_glops_list, ptr @gfs2_freeze_wq, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_meta_glops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_inode_glops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_rgrp_glops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_freeze_glops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_iopen_glops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_flock_glops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_nondisk_glops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_quota_glops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_journal_glops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_glops_list to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_freeze_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_ail_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfs2_ail_error._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @freeze_go_sync._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nondisk_go_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nondisk_go_callback._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gfs2_ail_flush(ptr noundef %gl, i1 noundef zeroext %fsync) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  %gl_ail_count = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gl_ail_count, i32 noundef 4) #10
  %2 = ptrtoint ptr %gl_ail_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %gl_ail_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @gfs2_trans_begin(ptr noundef %1, i32 noundef 0, i32 noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @__gfs2_ail_flush(ptr noundef %gl, i1 noundef zeroext %fsync, i32 noundef %3)
  tail call void @gfs2_trans_end(ptr noundef %1) #10
  tail call void @gfs2_log_flush(ptr noundef %1, ptr noundef null, i32 noundef 4098) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_trans_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__gfs2_ail_flush(ptr noundef %gl, i1 noundef zeroext %fsync, i32 noundef %nr_revokes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  %gl_ail_list = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 14
  %sd_log_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #10
  %sd_ail_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 104
  tail call void @_raw_spin_lock(ptr noundef %sd_ail_lock) #10
  %prev = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 14, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %cmp.not55 = icmp eq ptr %3, %gl_ail_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_revokes)
  %cmp756 = icmp eq i32 %nr_revokes, 0
  %or.cond57 = or i1 %cmp.not55, %cmp756
  br i1 %or.cond57, label %entry.do.body_crit_edge, label %if.end.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.lr.ph:                                     ; preds = %entry
  %gl_name.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1
  %ln_type.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 2
  %gl_ops.i.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 7
  %add.ptr.i.i = getelementptr %struct.gfs2_glock, ptr %gl, i32 1
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %if.end.lr.ph
  %.pn = phi ptr [ %3, %if.end.lr.ph ], [ %.pn61, %for.inc.if.end_crit_edge ]
  %nr_revokes.addr.058 = phi i32 [ %nr_revokes, %if.end.lr.ph ], [ %nr_revokes.addr.1, %for.inc.if.end_crit_edge ]
  %bd.060 = getelementptr i8, ptr %.pn, i32 -36
  %.pn61.in = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %4 = ptrtoint ptr %.pn61.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn61 = load ptr, ptr %.pn61.in, align 4
  %5 = ptrtoint ptr %bd.060 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bd.060, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %and = and i32 %8, 65542
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.end
  br i1 %fsync, label %if.then9.for.inc_crit_edge, label %if.end12

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end12:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ln_sbd, align 8
  %sd_fsname.i = getelementptr inbounds %struct.gfs2_sbd, ptr %10, i32 0, i32 110
  %b_blocknr.i = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %b_blocknr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %b_blocknr.i, align 8
  %b_page.i = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 2
  %13 = ptrtoint ptr %b_page.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_page.i, align 8
  %mapping.i = getelementptr inbounds %struct.page, ptr %14, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mapping.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %sd_fsname.i, ptr noundef %6, i64 noundef %12, i32 noundef %8, ptr noundef %16, i32 noundef %18) #13
  %19 = ptrtoint ptr %ln_type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ln_type.i, align 4
  %21 = ptrtoint ptr %gl_name.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %gl_name.i, align 8
  %23 = ptrtoint ptr %gl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gl_ops.i.i, align 4
  %go_flags.i.i = getelementptr inbounds %struct.gfs2_glock_operations, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %go_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %go_flags.i.i, align 4
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %retval.0.i.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i.i
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %sd_fsname.i, i32 noundef %20, i64 noundef %22, ptr noundef %retval.0.i.i) #13
  tail call void (ptr, ptr, ...) @gfs2_lm(ptr noundef %10, ptr noundef nonnull @.str.6) #10
  %sd_flags.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %10, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %sd_flags.i.i) #10
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end.if.end13_crit_edge
  tail call void @gfs2_trans_add_revoke(ptr noundef %1, ptr noundef %bd.060) #10
  %dec = add i32 %nr_revokes.addr.058, -1
  br label %for.inc

for.inc:                                          ; preds = %if.end13, %if.then9.for.inc_crit_edge
  %nr_revokes.addr.1 = phi i32 [ %nr_revokes.addr.058, %if.then9.for.inc_crit_edge ], [ %dec, %if.end13 ]
  %cmp.not = icmp eq ptr %.pn61, %gl_ail_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_revokes.addr.1)
  %cmp7 = icmp eq i32 %nr_revokes.addr.1, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp7
  br i1 %or.cond, label %for.inc.do.body_crit_edge, label %for.inc.if.end_crit_edge

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  br i1 %fsync, label %do.body.do.end31_crit_edge, label %land.rhs

do.body.do.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

land.rhs:                                         ; preds = %do.body
  %gl_ail_count = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gl_ail_count, i32 noundef 4) #10
  %27 = ptrtoint ptr %gl_ail_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %gl_ail_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not = icmp eq i32 %28, 0
  br i1 %tobool20.not, label %land.rhs.do.end31_crit_edge, label %if.then24, !prof !80

land.rhs.do.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

if.then24:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gfs2_dump_glock(ptr noundef null, ptr noundef %gl, i1 noundef zeroext true) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/glops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 82, 0\0A.popsection", ""() #10, !srcloc !81
  unreachable

do.end31:                                         ; preds = %land.rhs.do.end31_crit_edge, %do.body.do.end31_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_ail_lock) #10
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_log_flush(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gfs2_glock2rgrp(ptr noundef %gl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_lockref = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref) #10
  %gl_object = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %0 = ptrtoint ptr %gl_object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl_object, align 4
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref) #10
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_inode_metasync(ptr noundef %gl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %call1 = tail call i32 @filemap_fdatawrite(ptr noundef %retval.0.i) #10
  %call.i = tail call i32 @filemap_fdatawait_range(ptr noundef %retval.0.i, i64 noundef 0, i64 noundef 9223372036854775807) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ln_sbd, align 8
  %call3 = tail call i32 @gfs2_io_error_i(ptr noundef %5, ptr noundef nonnull @__func__.gfs2_inode_metasync, ptr noundef nonnull @.str, i32 noundef 287) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_io_error_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gfs2_inode_refresh(ptr noundef %ip) local_unnamed_addr #0 align 64 {
entry:
  %dibh = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dibh) #10
  %0 = ptrtoint ptr %dibh to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dibh, align 4, !annotation !82
  %i_no_addr.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 1
  %1 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %i_no_addr.i, align 8
  %call.i = call i32 @gfs2_meta_buffer(ptr noundef %ip, i32 noundef 4, i64 noundef %2, ptr noundef nonnull %dibh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dibh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %b_data, align 4
  %di_mode.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %di_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %di_mode.i, align 8
  %conv.i = trunc i32 %8 to i16
  %9 = ptrtoint ptr %i_no_addr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_no_addr.i, align 8
  %di_num.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 1
  %no_addr.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %no_addr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %no_addr.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp.not.i = icmp eq i64 %10, %12
  br i1 %cmp.not.i, label %if.end.i, label %if.end.corrupt.i_crit_edge, !prof !80

if.end.corrupt.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %corrupt.i

if.end.i:                                         ; preds = %if.end
  %i_state.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 24
  %13 = ptrtoint ptr %i_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_state.i, align 8
  %and.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.then18.critedge.i

land.rhs.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ip, align 8
  %xor2.i.i = xor i16 %16, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %xor2.i.i)
  %tobool.i.i = icmp ugt i16 %xor2.i.i, 4095
  br i1 %tobool.i.i, label %land.rhs.i.corrupt.i_crit_edge, label %if.end24.critedge.i, !prof !83

land.rhs.i.corrupt.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %corrupt.i

if.then18.critedge.i:                             ; preds = %if.end.i
  %17 = ptrtoint ptr %di_num.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %di_num.i, align 8
  %i_no_formal_ino.c.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 2
  %19 = ptrtoint ptr %i_no_formal_ino.c.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %i_no_formal_ino.c.i, align 8
  %20 = ptrtoint ptr %ip to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %ip, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 13
  %21 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %i_rdev.i, align 8
  %trunc.i = and i16 %conv.i, -4096
  %22 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc.i, label %if.then18.critedge.i.if.end24.i_crit_edge [
    i16 24576, label %if.then18.critedge.i.sw.bb.i_crit_edge
    i16 8192, label %if.then18.critedge.i.sw.bb.i_crit_edge9
  ]

if.then18.critedge.i.sw.bb.i_crit_edge9:          ; preds = %if.then18.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then18.critedge.i.sw.bb.i_crit_edge:           ; preds = %if.then18.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then18.critedge.i.if.end24.i_crit_edge:        ; preds = %if.then18.critedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

sw.bb.i:                                          ; preds = %if.then18.critedge.i.sw.bb.i_crit_edge, %if.then18.critedge.i.sw.bb.i_crit_edge9
  %di_major.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 11
  %23 = ptrtoint ptr %di_major.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %di_major.i, align 8
  %shl.i = shl i32 %24, 20
  %di_minor.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 12
  %25 = ptrtoint ptr %di_minor.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %di_minor.i, align 4
  %or.i = or i32 %shl.i, %26
  %27 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %i_rdev.i, align 8
  br label %if.end24.i

if.end24.critedge.i:                              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %di_num.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %di_num.i, align 8
  %i_no_formal_ino.c142.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 2
  %30 = ptrtoint ptr %i_no_formal_ino.c142.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %i_no_formal_ino.c142.i, align 8
  %31 = ptrtoint ptr %ip to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %ip, align 8
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.critedge.i, %sw.bb.i, %if.then18.critedge.i.if.end24.i_crit_edge
  %di_uid.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 3
  %32 = ptrtoint ptr %di_uid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %di_uid.i, align 4
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 2
  %i_sb.i.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 8
  %34 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i.i = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 53
  %36 = ptrtoint ptr %s_user_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %s_user_ns.i.i.i, align 8
  %call1.i.i = call i32 @make_kuid(ptr noundef %37, i32 noundef %33) #10
  %38 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call1.i.i, ptr %i_uid.i.i, align 4
  %di_gid.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 4
  %39 = ptrtoint ptr %di_gid.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %di_gid.i, align 8
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 3
  %41 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_user_ns.i.i144.i = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 53
  %43 = ptrtoint ptr %s_user_ns.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_user_ns.i.i144.i, align 8
  %call1.i145.i = call i32 @make_kgid(ptr noundef %44, i32 noundef %40) #10
  %45 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call1.i145.i, ptr %i_gid.i.i, align 8
  %di_nlink.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 5
  %46 = ptrtoint ptr %di_nlink.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %di_nlink.i, align 4
  call void @set_nlink(ptr noundef %ip, i32 noundef %47) #10
  %di_size.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 6
  %48 = ptrtoint ptr %di_size.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %di_size.i, align 8
  %50 = call i32 @llvm.read_register.i32(metadata !70) #10
  %and.i.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %53, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %54 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i.i, label %if.end24.i.i_size_write.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.end24.i.i_size_write.exit.i_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.end24.i
  %55 = call i32 @llvm.read_register.i32(metadata !70) #10
  %and.i.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  %59 = call i32 @llvm.read_register.i32(metadata !70) #10
  %and.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i28.i.i = add i32 %64, ptrtoint (ptr @lockdep_recursion to i32)
  %65 = inttoptr i32 %add.i28.i.i to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %65, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %68 = call i32 @llvm.read_register.i32(metadata !70) #10
  %and.i.i.i7.i.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool20.not.i.i.i = icmp eq i32 %67, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge

land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %72 = call i32 @llvm.read_register.i32(metadata !70) #10
  %and.i.i.i29.i.i = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i29.i.i to ptr
  %preempt_count.i.i30.i.i = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i30.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i30.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i.i = icmp eq i32 %75, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.i_size_write.exit.i_crit_edge

land.rhs.i.i.i.i_size_write.exit.i_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit.i

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %76 = call i32 @llvm.read_register.i32(metadata !70) #10
  %and.i.i.i9.i.i.i = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %79, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  %80 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %83, ptrtoint (ptr @hardirqs_enabled to i32)
  %84 = inttoptr i32 %add47.i.i.i to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %87 = call i32 @llvm.read_register.i32(metadata !70) #10
  %and.i.i.i12.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %90, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool54.not.i.i.i = icmp eq i32 %86, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.i_size_write.exit.i_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.i_size_write.exit.i_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit.i

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.i_size_write.exit.i_crit_edge, label %if.then.i.i.i, !prof !80

land.rhs58.i.i.i.i_size_write.exit.i_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %i_size_write.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %i_size_write.exit.i

i_size_write.exit.i:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.i_size_write.exit.i_crit_edge, %land.rhs22.i.i.i.i_size_write.exit.i_crit_edge, %land.rhs.i.i.i.i_size_write.exit.i_crit_edge, %land.lhs.true.i.i.i.i_size_write.exit.i_crit_edge, %if.end24.i.i_size_write.exit.i_crit_edge
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 23
  %91 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i.i = add i32 %92, 1
  store i32 %inc.i.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  %dep_map.i.i.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 23, i32 1
  %93 = call ptr @llvm.returnaddress(i32 0) #10
  %94 = ptrtoint ptr %93 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %94) #10
  %i_size8.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 14
  %95 = ptrtoint ptr %i_size8.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %49, ptr %i_size8.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %94) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %96 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %i_size_seqcount.i.i, align 4
  %inc.i.i.i.i = add i32 %97, 1
  store i32 %inc.i.i.i.i, ptr %i_size_seqcount.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %98 = call i32 @llvm.read_register.i32(metadata !70) #10
  %and.i.i.i26.i.i = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i26.i.i to ptr
  %preempt_count.i.i27.i.i = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %preempt_count.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %preempt_count.i.i27.i.i, align 4
  %sub.i.i.i = add i32 %101, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i27.i.i, align 4
  %di_blocks.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 7
  %102 = ptrtoint ptr %di_blocks.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %di_blocks.i, align 8
  %104 = ptrtoint ptr %i_sb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i_sb.i.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %105, i32 0, i32 33
  %106 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %sb_bsize_shift.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %107, i32 0, i32 5, i32 5
  %108 = ptrtoint ptr %sb_bsize_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %sb_bsize_shift.i.i, align 4
  %sub.i.i = add i32 %109, -9
  %sh_prom.i.i = zext i32 %sub.i.i to i64
  %shl.i.i = shl i64 %103, %sh_prom.i.i
  %i_blocks.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 22
  %110 = ptrtoint ptr %i_blocks.i.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %shl.i.i, ptr %i_blocks.i.i, align 8
  %di_atime.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 8
  %111 = ptrtoint ptr %di_atime.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %di_atime.i, align 8
  %di_atime_nsec.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 26
  %113 = ptrtoint ptr %di_atime_nsec.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %di_atime_nsec.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 15
  %115 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %i_atime.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %116, i64 %112)
  %cmp.i.i = icmp slt i64 %116, %112
  br i1 %cmp.i.i, label %i_size_write.exit.i.if.then34.i_crit_edge, label %if.end.i.i

i_size_write.exit.i.if.then34.i_crit_edge:        ; preds = %i_size_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34.i

if.end.i.i:                                       ; preds = %i_size_write.exit.i
  call void @__sanitizer_cov_trace_cmp8(i64 %116, i64 %112)
  %cmp4.i.i = icmp sgt i64 %116, %112
  br i1 %cmp4.i.i, label %if.end.i.i.if.end37.i_crit_edge, label %timespec64_compare.exit.i

if.end.i.i.if.end37.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

timespec64_compare.exit.i:                        ; preds = %if.end.i.i
  %tv_nsec.i.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 15, i32 1
  %117 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tv_nsec.i.i, align 8
  %sub.i147.i = sub i32 %118, %114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i147.i)
  %cmp32.i = icmp slt i32 %sub.i147.i, 0
  br i1 %cmp32.i, label %timespec64_compare.exit.i.if.then34.i_crit_edge, label %timespec64_compare.exit.i.if.end37.i_crit_edge

timespec64_compare.exit.i.if.end37.i_crit_edge:   ; preds = %timespec64_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i

timespec64_compare.exit.i.if.then34.i_crit_edge:  ; preds = %timespec64_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then34.i

if.then34.i:                                      ; preds = %timespec64_compare.exit.i.if.then34.i_crit_edge, %i_size_write.exit.i.if.then34.i_crit_edge
  %119 = ptrtoint ptr %i_atime.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %112, ptr %i_atime.i, align 8
  %atime.sroa.6.0.i_atime.sroa_idx.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 15, i32 1
  %120 = ptrtoint ptr %atime.sroa.6.0.i_atime.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %114, ptr %atime.sroa.6.0.i_atime.sroa_idx.i, align 8
  %atime.sroa.8.0.i_atime.sroa_idx.i = getelementptr inbounds i8, ptr %i_atime.i, i32 12
  %121 = ptrtoint ptr %atime.sroa.8.0.i_atime.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %atime.sroa.8.0.i_atime.sroa_idx.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then34.i, %timespec64_compare.exit.i.if.end37.i_crit_edge, %if.end.i.i.if.end37.i_crit_edge
  %di_mtime.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 9
  %122 = ptrtoint ptr %di_mtime.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %di_mtime.i, align 8
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16
  %124 = ptrtoint ptr %i_mtime.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %i_mtime.i, align 8
  %di_mtime_nsec.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 27
  %125 = ptrtoint ptr %di_mtime_nsec.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %di_mtime_nsec.i, align 4
  %tv_nsec42.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 16, i32 1
  %127 = ptrtoint ptr %tv_nsec42.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %tv_nsec42.i, align 8
  %di_ctime.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 10
  %128 = ptrtoint ptr %di_ctime.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %di_ctime.i, align 8
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17
  %130 = ptrtoint ptr %i_ctime.i to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %i_ctime.i, align 8
  %di_ctime_nsec.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 28
  %131 = ptrtoint ptr %di_ctime_nsec.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %di_ctime_nsec.i, align 8
  %tv_nsec47.i = getelementptr inbounds %struct.inode, ptr %ip, i32 0, i32 17, i32 1
  %133 = ptrtoint ptr %tv_nsec47.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %tv_nsec47.i, align 8
  %di_goal_meta.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 13
  %134 = ptrtoint ptr %di_goal_meta.i to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %di_goal_meta.i, align 8
  %i_goal.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 11
  %136 = ptrtoint ptr %i_goal.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %i_goal.i, align 8
  %di_generation.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 15
  %137 = ptrtoint ptr %di_generation.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %di_generation.i, align 8
  %i_generation.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 3
  %139 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %i_generation.i, align 8
  %di_flags.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 16
  %140 = ptrtoint ptr %di_flags.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %di_flags.i, align 8
  %i_diskflags.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 18
  %142 = ptrtoint ptr %i_diskflags.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %i_diskflags.i, align 4
  %di_eattr.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 25
  %143 = ptrtoint ptr %di_eattr.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %di_eattr.i, align 8
  %i_eattr.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 4
  %145 = ptrtoint ptr %i_eattr.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %i_eattr.i, align 8
  call void @gfs2_set_inode_flags(ptr noundef %ip) #10
  %di_height.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 19
  %146 = ptrtoint ptr %di_height.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %di_height.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %147)
  %cmp50.i = icmp ugt i16 %147, 10
  br i1 %cmp50.i, label %if.end37.i.corrupt.i_crit_edge, label %if.end59.i, !prof !83

if.end37.i.corrupt.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %corrupt.i

if.end59.i:                                       ; preds = %if.end37.i
  %conv60.i = trunc i16 %147 to i8
  %i_height.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 19
  %148 = ptrtoint ptr %i_height.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv60.i, ptr %i_height.i, align 8
  %di_depth.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 22
  %149 = ptrtoint ptr %di_depth.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %di_depth.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %150)
  %cmp62.i = icmp ugt i16 %150, 17
  br i1 %cmp62.i, label %if.end59.i.corrupt.i_crit_edge, label %if.end71.i, !prof !83

if.end59.i.corrupt.i_crit_edge:                   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %corrupt.i

if.end71.i:                                       ; preds = %if.end59.i
  %conv72.i = trunc i16 %150 to i8
  %i_depth.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 20
  %151 = ptrtoint ptr %i_depth.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv72.i, ptr %i_depth.i, align 1
  %di_entries.i = getelementptr inbounds %struct.gfs2_dinode, ptr %6, i32 0, i32 23
  %152 = ptrtoint ptr %di_entries.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %di_entries.i, align 4
  %i_entries.i = getelementptr inbounds %struct.gfs2_inode, ptr %ip, i32 0, i32 17
  %154 = ptrtoint ptr %i_entries.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %i_entries.i, align 8
  %155 = ptrtoint ptr %ip to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %ip, align 8
  %157 = and i16 %156, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %157)
  %cmp77.i = icmp eq i16 %157, -32768
  br i1 %cmp77.i, label %if.then79.i, label %if.end71.i.gfs2_dinode_in.exit_crit_edge

if.end71.i.gfs2_dinode_in.exit_crit_edge:         ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_dinode_in.exit

if.then79.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_set_aops(ptr noundef %ip) #10
  br label %gfs2_dinode_in.exit

corrupt.i:                                        ; preds = %if.end59.i.corrupt.i_crit_edge, %if.end37.i.corrupt.i_crit_edge, %land.rhs.i.corrupt.i_crit_edge, %if.end.corrupt.i_crit_edge
  call void @gfs2_consist_inode_i(ptr noundef %ip, ptr noundef nonnull @__func__.gfs2_dinode_in, ptr noundef nonnull @.str, i32 noundef 456) #10
  br label %gfs2_dinode_in.exit

gfs2_dinode_in.exit:                              ; preds = %corrupt.i, %if.then79.i, %if.end71.i.gfs2_dinode_in.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %corrupt.i ], [ 0, %if.then79.i ], [ 0, %if.end71.i.gfs2_dinode_in.exit_crit_edge ]
  %158 = ptrtoint ptr %dibh to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dibh, align 4
  %tobool.not.i7 = icmp eq ptr %159, null
  br i1 %tobool.not.i7, label %gfs2_dinode_in.exit.cleanup_crit_edge, label %if.then.i

gfs2_dinode_in.exit.cleanup_crit_edge:            ; preds = %gfs2_dinode_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %gfs2_dinode_in.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__brelse(ptr noundef nonnull %159) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %gfs2_dinode_in.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.i, %gfs2_dinode_in.exit.cleanup_crit_edge ], [ %retval.0.i, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dibh) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inode_go_sync(ptr noundef %gl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #10
  %gl_object.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %0 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl_object.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %land.end.thread, label %land.end

land.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #10
  %gl_ops.i75 = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 7
  %2 = ptrtoint ptr %gl_ops.i75 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gl_ops.i75, align 4
  %go_flags.i76 = getelementptr inbounds %struct.gfs2_glock_operations, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %go_flags.i76 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %go_flags.i76, align 4
  %and.i77 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i6678 = icmp eq i32 %and.i77, 0
  %add.ptr.i79 = getelementptr %struct.gfs2_glock, ptr %gl, i32 1
  %retval.0.i80 = select i1 %tobool.not.i6678, ptr null, ptr %add.ptr.i79
  br label %if.end9

land.end:                                         ; preds = %entry
  %i_flags.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %i_flags.i) #10
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp = icmp eq i16 %8, -32768
  %gl_ops.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 7
  %9 = ptrtoint ptr %gl_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gl_ops.i, align 4
  %go_flags.i = getelementptr inbounds %struct.gfs2_glock_operations, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %go_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %go_flags.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i66 = icmp eq i32 %and.i, 0
  %add.ptr.i = getelementptr %struct.gfs2_glock, ptr %gl, i32 1
  %retval.0.i = select i1 %tobool.not.i66, ptr null, ptr %add.ptr.i
  br i1 %cmp, label %if.then, label %land.end.if.end9_crit_edge

land.end.if.end9_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %land.end
  %call4 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %i_flags.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping, align 8
  tail call void @unmap_mapping_range(ptr noundef %14, i64 noundef 0, i64 noundef 0, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  tail call void @inode_dio_wait(ptr noundef nonnull %1) #10
  br label %if.end9

if.end9:                                          ; preds = %if.end, %land.end.if.end9_crit_edge, %land.end.thread
  %retval.0.i83 = phi ptr [ %retval.0.i80, %land.end.thread ], [ %retval.0.i, %if.end ], [ %retval.0.i, %land.end.if.end9_crit_edge ]
  %add.ptr.i82 = phi ptr [ %add.ptr.i79, %land.end.thread ], [ %add.ptr.i, %if.end ], [ %add.ptr.i, %land.end.if.end9_crit_edge ]
  %gl_ops.i81 = phi ptr [ %gl_ops.i75, %land.end.thread ], [ %gl_ops.i, %if.end ], [ %gl_ops.i, %land.end.if.end9_crit_edge ]
  %15 = phi i1 [ false, %land.end.thread ], [ true, %if.end ], [ false, %land.end.if.end9_crit_edge ]
  %call10 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %gl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %do.body

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body:                                          ; preds = %if.end9
  %gl_state = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 3
  %16 = ptrtoint ptr %gl_state to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %gl_state, align 8
  %bf.lshr.mask = and i16 %bf.load, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask)
  %cmp14.not = icmp eq i16 %bf.lshr.mask, 16384
  br i1 %cmp14.not, label %do.end25, label %if.then18, !prof !80

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gfs2_dump_glock(ptr noundef null, ptr noundef %gl, i1 noundef zeroext true) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/glops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 312, 0\0A.popsection", ""() #10, !srcloc !92
  unreachable

do.end25:                                         ; preds = %do.body
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ln_sbd, align 8
  tail call void @gfs2_log_flush(ptr noundef %18, ptr noundef %gl, i32 noundef 16386) #10
  %call26 = tail call i32 @filemap_fdatawrite(ptr noundef %retval.0.i83) #10
  br i1 %15, label %if.then28, label %do.end25.if.end33_crit_edge

do.end25.if.end33_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then28:                                        ; preds = %do.end25
  %i_mapping30 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %i_mapping30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i_mapping30, align 8
  %call31 = tail call i32 @filemap_fdatawrite(ptr noundef %20) #10
  %call.i = tail call i32 @filemap_fdatawait_range(ptr noundef %20, i64 noundef 0, i64 noundef 9223372036854775807) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i67 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i67, label %if.then28.if.end33_crit_edge, label %if.end.i, !prof !80

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end.i:                                         ; preds = %if.then28
  tail call void @__filemap_set_wb_err(ptr noundef %20, i32 noundef %call.i) #10
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i, align 4
  %s_wb_err.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 50
  %call.i68 = tail call i32 @errseq_set(ptr noundef %s_wb_err.i, i32 noundef %call.i) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -28
  %flags.i = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 10
  %..i = zext i1 %cmp.i to i32
  tail call void @_set_bit(i32 noundef %..i, ptr noundef %flags.i) #10
  br label %if.end33

if.end33:                                         ; preds = %if.end7.i, %if.then28.if.end33_crit_edge, %do.end25.if.end33_crit_edge
  %error.0 = phi i32 [ 0, %do.end25.if.end33_crit_edge ], [ 0, %if.then28.if.end33_crit_edge ], [ %call.i, %if.end7.i ]
  %25 = ptrtoint ptr %gl_ops.i81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gl_ops.i81, align 4
  %go_flags.i.i = getelementptr inbounds %struct.gfs2_glock_operations, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %go_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %go_flags.i.i, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %retval.0.i.i = select i1 %tobool.not.i.i, ptr null, ptr %add.ptr.i82
  %call1.i = tail call i32 @filemap_fdatawrite(ptr noundef %retval.0.i.i) #10
  %call.i.i = tail call i32 @filemap_fdatawait_range(ptr noundef %retval.0.i.i, i64 noundef 0, i64 noundef 9223372036854775807) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i69 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i69, label %if.end33.gfs2_inode_metasync.exit_crit_edge, label %if.then.i70

if.end33.gfs2_inode_metasync.exit_crit_edge:      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_inode_metasync.exit

if.then.i70:                                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ln_sbd, align 8
  %call3.i = tail call i32 @gfs2_io_error_i(ptr noundef %30, ptr noundef nonnull @__func__.gfs2_inode_metasync, ptr noundef nonnull @.str, i32 noundef 287) #10
  br label %gfs2_inode_metasync.exit

gfs2_inode_metasync.exit:                         ; preds = %if.then.i70, %if.end33.gfs2_inode_metasync.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool35.not = icmp eq i32 %error.0, 0
  %spec.select = select i1 %tobool35.not, i32 %call.i.i, i32 %error.0
  tail call fastcc void @gfs2_ail_empty_gl(ptr noundef %gl)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %gl) #10
  br label %out

out:                                              ; preds = %gfs2_inode_metasync.exit, %if.end9.out_crit_edge
  %error.2 = phi i32 [ %spec.select, %gfs2_inode_metasync.exit ], [ 0, %if.end9.out_crit_edge ]
  br i1 %tobool.not.i, label %out.gfs2_clear_glop_pending.exit_crit_edge, label %if.end.i74

out.gfs2_clear_glop_pending.exit_crit_edge:       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_clear_glop_pending.exit

if.end.i74:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %i_flags.i73 = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_flags.i73, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %i_flags.i73, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_flags.i73, ptr %i_flags.i73, i32 64, ptr elementtype(i32) %i_flags.i73) #10, !srcloc !95
  tail call void @wake_up_bit(ptr noundef %i_flags.i73, i32 noundef 6) #10
  br label %gfs2_clear_glop_pending.exit

gfs2_clear_glop_pending.exit:                     ; preds = %if.end.i74, %out.gfs2_clear_glop_pending.exit_crit_edge
  ret i32 %error.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inode_go_inval(ptr noundef %gl, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #10
  %gl_object.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %0 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl_object.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.gfs2_glock2inode.exit_crit_edge, label %if.then.i

entry.gfs2_glock2inode.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_glock2inode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_flags.i = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 6, ptr noundef %i_flags.i) #10
  br label %gfs2_glock2inode.exit

gfs2_glock2inode.exit:                            ; preds = %if.then.i, %entry.gfs2_glock2inode.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #10
  %and = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %gfs2_glock2inode.exit.if.end5_crit_edge, label %if.then

gfs2_glock2inode.exit.if.end5_crit_edge:          ; preds = %gfs2_glock2inode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %gfs2_glock2inode.exit
  %gl_ops.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 7
  %2 = ptrtoint ptr %gl_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gl_ops.i, align 4
  %go_flags.i = getelementptr inbounds %struct.gfs2_glock_operations, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %go_flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %go_flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i34 = icmp eq i32 %and.i, 0
  %add.ptr.i = getelementptr %struct.gfs2_glock, ptr %gl, i32 1
  %retval.0.i = select i1 %tobool.not.i34, ptr null, ptr %add.ptr.i
  tail call void @truncate_inode_pages(ptr noundef %retval.0.i, i64 noundef 0) #10
  br i1 %tobool.not.i, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %gl) #10
  tail call void @forget_all_cached_acls(ptr noundef nonnull %1) #10
  tail call void @security_inode_invalidate_secctx(ptr noundef nonnull %1) #10
  tail call void @gfs2_dir_hash_inval(ptr noundef nonnull %1) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %gfs2_glock2inode.exit.if.end5_crit_edge
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ln_sbd, align 8
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %7, i32 0, i32 41
  %8 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_rindex, align 4
  %cmp = icmp eq ptr %1, %9
  br i1 %cmp, label %if.then7, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gfs2_log_flush(ptr noundef %7, ptr noundef null, i32 noundef 32770) #10
  %10 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ln_sbd, align 8
  %sd_rindex_uptodate = getelementptr inbounds %struct.gfs2_sbd, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %sd_rindex_uptodate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sd_rindex_uptodate, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end5.if.end12_crit_edge
  br i1 %tobool.not.i, label %if.end12.gfs2_clear_glop_pending.exit_crit_edge, label %land.lhs.true

if.end12.gfs2_clear_glop_pending.exit_crit_edge:  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %gfs2_clear_glop_pending.exit

land.lhs.true:                                    ; preds = %if.end12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 8
  %15 = and i16 %14, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %15)
  %cmp16 = icmp eq i16 %15, -32768
  br i1 %cmp16, label %if.then18, label %land.lhs.true.if.end.i_crit_edge

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %i_mapping = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_mapping, align 8
  tail call void @truncate_inode_pages(ptr noundef %17, i64 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then18, %land.lhs.true.if.end.i_crit_edge
  %i_flags.i36 = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_flags.i36, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %i_flags.i36, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_flags.i36, ptr %i_flags.i36, i32 64, ptr elementtype(i32) %i_flags.i36) #10, !srcloc !95
  tail call void @wake_up_bit(ptr noundef %i_flags.i36, i32 noundef 6) #10
  br label %gfs2_clear_glop_pending.exit

gfs2_clear_glop_pending.exit:                     ; preds = %if.end.i, %if.end12.gfs2_clear_glop_pending.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inode_go_demote_ok(ptr nocapture noundef readonly %gl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  %sd_jindex = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %sd_jindex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_jindex, align 4
  %gl_object = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %4 = ptrtoint ptr %gl_object to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gl_object, align 4
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sd_rindex = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 41
  %6 = ptrtoint ptr %sd_rindex to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_rindex, align 4
  %cmp2 = icmp ne ptr %7, %5
  %spec.select = zext i1 %cmp2 to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inode_go_instantiate(ptr nocapture noundef readonly %gh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gh_gl = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 1
  %0 = ptrtoint ptr %gh_gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gh_gl, align 4
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ln_sbd, align 8
  %gl_object = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %gl_object to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gl_object, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call = tail call i32 @gfs2_inode_refresh(ptr noundef nonnull %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %if.end
  %gh_state = getelementptr inbounds %struct.gfs2_holder, ptr %gh, i32 0, i32 4
  %6 = ptrtoint ptr %gh_state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gh_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp.not = icmp eq i16 %7, 2
  br i1 %cmp.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @inode_dio_wait(ptr noundef nonnull %5) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_diskflags, align 4
  %and = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.out_crit_edge, label %land.lhs.true

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true:                                    ; preds = %if.end6
  %gl_state = getelementptr inbounds %struct.gfs2_glock, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %gl_state to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %gl_state, align 8
  %bf.lshr.mask = and i16 %bf.load, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask)
  %cmp8 = icmp eq i16 %bf.lshr.mask, 16384
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true10:                                  ; preds = %land.lhs.true
  %11 = ptrtoint ptr %gh_state to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %gh_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %12)
  %cmp13 = icmp eq i16 %12, 1
  br i1 %cmp13, label %if.then15, label %land.lhs.true10.out_crit_edge

land.lhs.true10.out_crit_edge:                    ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then15:                                        ; preds = %land.lhs.true10
  %sd_trunc_lock = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 72
  tail call void @_raw_spin_lock(ptr noundef %sd_trunc_lock) #10
  %i_trunc_list = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 15
  %13 = ptrtoint ptr %i_trunc_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %i_trunc_list, align 4
  %cmp.i.not = icmp eq ptr %14, %i_trunc_list
  br i1 %cmp.i.not, label %if.then18, label %if.then15.if.end20_crit_edge

if.then15.if.end20_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.then15
  %sd_trunc_list = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 71
  %15 = ptrtoint ptr %sd_trunc_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_trunc_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_trunc_list, ptr noundef %sd_trunc_list, ptr noundef %16) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then18.if.end20_crit_edge

if.then18.if.end20_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %i_trunc_list, ptr %prev1.i.i, align 4
  %18 = ptrtoint ptr %i_trunc_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %i_trunc_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sd_trunc_list, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %sd_trunc_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %i_trunc_list, ptr %sd_trunc_list, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i.i, %if.then18.if.end20_crit_edge, %if.then15.if.end20_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %sd_trunc_lock) #10
  %sd_quota_wait = getelementptr inbounds %struct.gfs2_sbd, ptr %3, i32 0, i32 70
  tail call void @__wake_up(ptr noundef %sd_quota_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %out

out:                                              ; preds = %if.end20, %land.lhs.true10.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %error.0 = phi i32 [ %call, %if.end.out_crit_edge ], [ 1, %if.end20 ], [ 0, %land.lhs.true10.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %if.end6.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inode_go_dump(ptr noundef %seq, ptr nocapture noundef readonly %gl, ptr noundef %fs_id_buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_object = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %0 = ptrtoint ptr %gl_object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl_object, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_pages = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %i_pages) #10
  %nrpages2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 46, i32 7
  %2 = ptrtoint ptr %nrpages2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nrpages2, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #10
  %i_no_formal_ino = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %i_no_formal_ino to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %i_no_formal_ino, align 8
  %i_no_addr = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %i_no_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_no_addr, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 8
  %10 = lshr i16 %9, 12
  %i_flags = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i_flags, align 8
  %i_diskflags = getelementptr inbounds %struct.gfs2_inode, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %i_diskflags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_diskflags, align 4
  %i_size_seqcount.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %dep_map.c48.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23, i32 1
  %i_size18.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %if.end
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !96
  %and.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %16 = tail call ptr @llvm.returnaddress(i32 0) #10
  %17 = ptrtoint ptr %16 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %17) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %17) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = tail call ptr @llvm.returnaddress(i32 0) #10
  %19 = ptrtoint ptr %18 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %19) #10
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %19) #10
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !97
  %and.i.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !83

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #10, !srcloc !98
  %21 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and29.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not30.i = icmp eq i32 %and29.i, 0
  br i1 %tobool.not30.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !100
  %23 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %and.i = and i32 %24, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %22, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %24, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !101
  %25 = ptrtoint ptr %i_size18.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_size18.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  %27 = ptrtoint ptr %i_size_seqcount.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %i_size_seqcount.i, align 4
  %cmp.i.i.not.i = icmp eq i32 %28, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %i_size_read.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

i_size_read.exit:                                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @gfs2_print_dbg(ptr noundef %seq, ptr noundef nonnull @.str.8, ptr noundef %fs_id_buf, i64 noundef %5, i64 noundef %7, i32 noundef %29, i32 noundef %12, i32 noundef %14, i64 noundef %26, i32 noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %i_size_read.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inode_go_free(ptr noundef %gl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %gl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %gl, align 4
  %2 = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %gl, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %gl, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %gl, ptr %gl, i32 262144, ptr elementtype(i32) %gl) #10, !srcloc !95
  tail call void @wake_up_bit(ptr noundef %gl, i32 noundef 18) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rgrp_go_sync(ptr noundef %gl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #10
  %gl_object.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %2 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gl_object.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #10
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef 6, ptr noundef %gl) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %gl_state = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 3
  %4 = ptrtoint ptr %gl_state to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %gl_state, align 8
  %bf.lshr.mask = and i16 %bf.load, -16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask)
  %cmp.not = icmp eq i16 %bf.lshr.mask, 16384
  br i1 %cmp.not, label %do.end11, label %if.then4, !prof !80

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gfs2_dump_glock(ptr noundef null, ptr noundef %gl, i1 noundef zeroext true) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/gfs2/glops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 198, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

do.end11:                                         ; preds = %do.body
  tail call void @gfs2_log_flush(ptr noundef %1, ptr noundef %gl, i32 noundef 8194) #10
  %5 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ln_sbd, align 8
  %sd_aspace.i = getelementptr inbounds %struct.gfs2_sbd, ptr %6, i32 0, i32 77
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #10
  %7 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gl_object.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #10
  %sb_bsize.i = getelementptr inbounds %struct.gfs2_sbd, ptr %6, i32 0, i32 5, i32 4
  %9 = ptrtoint ptr %sb_bsize.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_bsize.i, align 8
  %rd_addr.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %rd_addr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rd_addr.i, align 8
  %conv.i = zext i32 %10 to i64
  %mul.i = mul i64 %12, %conv.i
  %and.i = and i64 %mul.i, -4096
  %rd_length.i = getelementptr inbounds %struct.gfs2_rgrpd, ptr %8, i32 0, i32 4
  %13 = ptrtoint ptr %rd_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rd_length.i, align 8
  %conv2.i = zext i32 %14 to i64
  %add.i = add i64 %12, %conv2.i
  %mul4.i = mul i64 %add.i, %conv.i
  %add5.i = add i64 %mul4.i, 4095
  %and6.i = and i64 %add5.i, -4096
  %sub.i = add i64 %and6.i, -1
  %call7.i = tail call i32 @filemap_fdatawrite_range(ptr noundef %sd_aspace.i, i64 noundef %and.i, i64 noundef %sub.i) #10
  %call8.i = tail call i32 @filemap_fdatawait_range(ptr noundef %sd_aspace.i, i64 noundef %and.i, i64 noundef %sub.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.then14, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end11
  %sd_flags.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %6, i32 0, i32 4
  %15 = ptrtoint ptr %sd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sd_flags.i.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %gfs2_withdrawn.exit.i, label %land.rhs.i.if.end.i.i_crit_edge

land.rhs.i.if.end.i.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

gfs2_withdrawn.exit.i:                            ; preds = %land.rhs.i
  %18 = ptrtoint ptr %sd_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sd_flags.i.i, align 4
  %20 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.i.not.i = icmp eq i32 %20, 0
  br i1 %tobool3.i.not.i, label %land.rhs14.i, label %gfs2_withdrawn.exit.i.if.end.i.i_crit_edge

gfs2_withdrawn.exit.i.if.end.i.i_crit_edge:       ; preds = %gfs2_withdrawn.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.rhs14.i:                                     ; preds = %gfs2_withdrawn.exit.i
  %.b69.i = load i1, ptr @gfs2_rgrp_metasync.__already_done, align 1
  br i1 %.b69.i, label %if.end.i76.i, label %if.then.i, !prof !80

if.then.i:                                        ; preds = %land.rhs14.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gfs2_rgrp_metasync.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef null) #10
  tail call fastcc void @mapping_set_error(ptr noundef %sd_aspace.i, i32 noundef %call8.i) #10
  br label %gfs2_rgrp_metasync.exit

if.end.i.i:                                       ; preds = %gfs2_withdrawn.exit.i.if.end.i.i_crit_edge, %land.rhs.i.if.end.i.i_crit_edge
  tail call void @__filemap_set_wb_err(ptr noundef %sd_aspace.i, i32 noundef %call8.i) #10
  %21 = ptrtoint ptr %sd_aspace.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sd_aspace.i, align 4
  %tobool4.not.i.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.mapping_set_error.exit.i_crit_edge, label %if.then5.i.i

if.end.i.i.mapping_set_error.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapping_set_error.exit.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb.i.i, align 4
  %s_wb_err.i.i = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 50
  %call.i.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i.i, i32 noundef %call8.i) #10
  br label %mapping_set_error.exit.i

mapping_set_error.exit.i:                         ; preds = %if.then5.i.i, %if.end.i.i.mapping_set_error.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call8.i)
  %cmp.i.i = icmp eq i32 %call8.i, -28
  %flags.i.i = getelementptr inbounds %struct.gfs2_sbd, ptr %6, i32 0, i32 77, i32 10
  %..i.i = zext i1 %cmp.i.i to i32
  tail call void @_set_bit(i32 noundef %..i.i, ptr noundef %flags.i.i) #10
  br label %gfs2_rgrp_metasync.exit

if.end.i76.i:                                     ; preds = %land.rhs14.i
  tail call void @__filemap_set_wb_err(ptr noundef %sd_aspace.i, i32 noundef %call8.i) #10
  %25 = ptrtoint ptr %sd_aspace.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_aspace.i, align 4
  %tobool4.not.i75.i = icmp eq ptr %26, null
  br i1 %tobool4.not.i75.i, label %if.end.i76.i.mapping_set_error.exit85.i_crit_edge, label %if.then5.i80.i

if.end.i76.i.mapping_set_error.exit85.i_crit_edge: ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mapping_set_error.exit85.i

if.then5.i80.i:                                   ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb.i77.i = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %i_sb.i77.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i_sb.i77.i, align 4
  %s_wb_err.i78.i = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 50
  %call.i79.i = tail call i32 @errseq_set(ptr noundef %s_wb_err.i78.i, i32 noundef %call8.i) #10
  br label %mapping_set_error.exit85.i

mapping_set_error.exit85.i:                       ; preds = %if.then5.i80.i, %if.end.i76.i.mapping_set_error.exit85.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call8.i)
  %cmp.i81.i = icmp eq i32 %call8.i, -28
  %flags.i82.i = getelementptr inbounds %struct.gfs2_sbd, ptr %6, i32 0, i32 77, i32 10
  %..i83.i = zext i1 %cmp.i81.i to i32
  tail call void @_set_bit(i32 noundef %..i83.i, ptr noundef %flags.i82.i) #10
  br label %gfs2_rgrp_metasync.exit

gfs2_rgrp_metasync.exit:                          ; preds = %mapping_set_error.exit85.i, %mapping_set_error.exit.i, %if.then.i
  %call51.i = tail call i32 @gfs2_io_error_i(ptr noundef %6, ptr noundef nonnull @__func__.gfs2_rgrp_metasync, ptr noundef nonnull @.str, i32 noundef 177) #10
  br label %if.end16

if.then14:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gfs2_ail_empty_gl(ptr noundef %gl)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %gfs2_rgrp_metasync.exit
  tail call void @gfs2_free_clones(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8.i, %if.end16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rgrp_go_inval(ptr noundef %gl, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  %gl_lockref.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %gl_lockref.i) #10
  %gl_object.i = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %2 = ptrtoint ptr %gl_object.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gl_object.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %gl_lockref.i) #10
  %sb_bsize = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %sb_bsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_bsize, align 8
  %rd_addr = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %rd_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rd_addr, align 8
  %rd_length = getelementptr inbounds %struct.gfs2_rgrpd, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %rd_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_length, align 8
  tail call void @gfs2_rgrp_brelse(ptr noundef %3) #10
  %and7 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end37_crit_edge

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.rhs:                                         ; preds = %entry
  %.b53 = load i1, ptr @rgrp_go_inval.__already_done, align 1
  br i1 %.b53, label %land.rhs.if.end37_crit_edge, label %if.then, !prof !80

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rgrp_go_inval.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then, %land.rhs.if.end37_crit_edge, %entry.if.end37_crit_edge
  %conv2 = zext i32 %9 to i64
  %add = add i64 %7, %conv2
  %conv = zext i32 %5 to i64
  %mul4 = mul i64 %add, %conv
  %add5 = add i64 %mul4, 4095
  %and6 = and i64 %add5, -4096
  %sub = add i64 %and6, -1
  %mul = mul i64 %7, %conv
  %and = and i64 %mul, -4096
  %sd_aspace = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 77
  tail call void @truncate_inode_pages_range(ptr noundef %sd_aspace, i64 noundef %and, i64 noundef %sub) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_rgrp_go_instantiate(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gfs2_rgrp_go_dump(ptr noundef %seq, ptr nocapture noundef readonly %gl, ptr noundef %fs_id_buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_object = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %0 = ptrtoint ptr %gl_object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl_object, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gfs2_rgrp_dump(ptr noundef %seq, ptr noundef nonnull %1, ptr noundef %fs_id_buf) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @freeze_go_sync(ptr nocapture noundef readonly %gl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  %gl_state = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 3
  %2 = ptrtoint ptr %gl_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %gl_state, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16385, i16 %bf.load)
  %cmp = icmp ugt i16 %bf.load, -16385
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %sd_flags.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %sd_flags.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %gfs2_withdrawn.exit, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

gfs2_withdrawn.exit:                              ; preds = %land.lhs.true
  %6 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %sd_flags.i, align 4
  %8 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.i.not = icmp eq i32 %8, 0
  br i1 %tobool3.i.not, label %land.lhs.true1, label %gfs2_withdrawn.exit.cleanup_crit_edge

gfs2_withdrawn.exit.cleanup_crit_edge:            ; preds = %gfs2_withdrawn.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true1:                                   ; preds = %gfs2_withdrawn.exit
  %9 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sd_flags.i, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true1.cleanup_crit_edge

land.lhs.true1.cleanup_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true1
  %sd_freeze_state = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 108
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_freeze_state, i32 noundef 4) #10
  %12 = ptrtoint ptr %sd_freeze_state to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 1, ptr %sd_freeze_state, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %call3 = tail call i32 @freeze_super(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end20_crit_edge, label %do.end

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end:                                           ; preds = %if.then
  %sd_fsname = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 110
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %sd_fsname, i32 noundef %call3) #13
  %15 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %sd_flags.i, align 4
  %17 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i49 = icmp eq i32 %17, 0
  br i1 %tobool.not.i49, label %gfs2_withdrawn.exit52, label %do.end.if.then8_crit_edge

do.end.if.then8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

gfs2_withdrawn.exit52:                            ; preds = %do.end
  %18 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %sd_flags.i, align 4
  %20 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool3.i50.not = icmp eq i32 %20, 0
  br i1 %tobool3.i50.not, label %if.then14, label %gfs2_withdrawn.exit52.if.then8_crit_edge

gfs2_withdrawn.exit52.if.then8_crit_edge:         ; preds = %gfs2_withdrawn.exit52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %gfs2_withdrawn.exit52.if.then8_crit_edge, %do.end.if.then8_crit_edge
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_freeze_state, i32 noundef 4) #10
  %21 = ptrtoint ptr %sd_freeze_state to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 0, ptr %sd_freeze_state, align 4
  br label %cleanup

if.then14:                                        ; preds = %gfs2_withdrawn.exit52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gfs2_assert_withdraw_i(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str, i32 noundef 583, i1 noundef zeroext false) #10
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.then.if.end20_crit_edge
  %22 = load ptr, ptr @gfs2_freeze_wq, align 4
  %sd_freeze_work = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 27
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %sd_freeze_work) #10
  %23 = ptrtoint ptr %sd_flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %sd_flags.i, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool24.not = icmp eq i32 %25, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @gfs2_log_flush(ptr noundef %1, ptr noundef null, i32 noundef 65552) #10
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sd_freeze_state, i32 noundef 4) #10
  %26 = ptrtoint ptr %sd_freeze_state to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 2, ptr %sd_freeze_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then25, %if.then8, %land.lhs.true1.cleanup_crit_edge, %gfs2_withdrawn.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @freeze_go_xmote_bh(ptr nocapture noundef readonly %gl) #0 align 64 {
entry:
  %head = alloca %struct.gfs2_log_header_host, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  %sd_jdesc = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_jdesc, align 4
  %jd_inode = getelementptr inbounds %struct.gfs2_jdesc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %jd_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jd_inode, align 8
  %i_gl = getelementptr inbounds %struct.gfs2_inode, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %i_gl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_gl, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %head) #10
  %8 = call ptr @memset(ptr %head, i32 255, i32 48)
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %sd_flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %gl_ops = getelementptr inbounds %struct.gfs2_glock, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %gl_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gl_ops, align 4
  %go_inval = getelementptr inbounds %struct.gfs2_glock_operations, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %go_inval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %go_inval, align 4
  tail call void %15(ptr noundef %7, i32 noundef 32) #10
  %16 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sd_jdesc, align 4
  %call3 = call i32 @gfs2_find_jhead(ptr noundef %17, ptr noundef nonnull %head, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end16, label %if.then10, !prof !80

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_assert_withdraw_i(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.freeze_go_xmote_bh, ptr noundef nonnull @.str, i32 noundef 611, i1 noundef zeroext true) #10
  br label %cleanup

if.end16:                                         ; preds = %if.then
  %lh_flags = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 1
  %18 = ptrtoint ptr %lh_flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lh_flags, align 8
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then29, label %if.end37, !prof !83

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  call void @gfs2_assert_withdraw_i(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.freeze_go_xmote_bh, ptr noundef nonnull @.str, i32 noundef 614, i1 noundef zeroext true) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %head to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %head, align 8
  %add = add i64 %21, 1
  %sd_log_sequence = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 93
  %22 = ptrtoint ptr %sd_log_sequence to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add, ptr %sd_log_sequence, align 8
  %lh_blkno = getelementptr inbounds %struct.gfs2_log_header_host, ptr %head, i32 0, i32 3
  %23 = ptrtoint ptr %lh_blkno to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lh_blkno, align 8
  %inc.i = add i32 %24, 1
  %25 = ptrtoint ptr %sd_jdesc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sd_jdesc, align 4
  %jd_blocks.i = getelementptr inbounds %struct.gfs2_jdesc, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %jd_blocks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %jd_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %28)
  %cmp.i = icmp eq i32 %inc.i, %28
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %inc.i
  %sd_log_tail.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 100
  %29 = ptrtoint ptr %sd_log_tail.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.store.select.i, ptr %sd_log_tail.i, align 4
  %sd_log_flush_tail.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 101
  %30 = ptrtoint ptr %sd_log_flush_tail.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.store.select.i, ptr %sd_log_flush_tail.i, align 8
  %sd_log_head.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 102
  %31 = ptrtoint ptr %sd_log_head.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.store.select.i, ptr %sd_log_head.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then29, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then10 ], [ -5, %if.then29 ], [ 0, %if.end37 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %head) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @freeze_go_demote_ok(ptr nocapture noundef readnone %gl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iopen_go_demote_ok(ptr noundef %gl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @gfs2_delete_work_queued(ptr noundef %gl) #10
  %lnot = xor i1 %call, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iopen_go_callback(ptr noundef %gl, i1 noundef zeroext %remote) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gl_object = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 12
  %0 = ptrtoint ptr %gl_object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gl_object, align 4
  br i1 %remote, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ln_sbd, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_flags.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %gl_demote_state = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 3
  %8 = ptrtoint ptr %gl_demote_state to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %gl_demote_state, align 8
  %9 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp = icmp ne i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %bf.load)
  %cmp4 = icmp ult i16 %bf.load, -16384
  %or.cond.not = or i1 %cmp4, %cmp
  %tobool6.not = icmp eq ptr %1, null
  %or.cond21 = select i1 %or.cond.not, i1 true, i1 %tobool6.not
  br i1 %or.cond21, label %if.end.cleanup_crit_edge, label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %count = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %count, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_delete_workqueue to i32))
  %12 = load ptr, ptr @gfs2_delete_workqueue, align 4
  %13 = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 18
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %13, i32 noundef 0) #10
  br i1 %call.i, label %if.then7.cleanup_crit_edge, label %if.then9

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nondisk_go_callback(ptr noundef %gl, i1 noundef zeroext %remote) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  br i1 %remote, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %gl_name = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1
  %2 = ptrtoint ptr %gl_name to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gl_name, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %3)
  %cmp.not = icmp eq i64 %3, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %gl) #10
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %gl) #10
  %sd_flags = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %sd_flags, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %7 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sd_flags, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %10 = ptrtoint ptr %sd_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sd_flags, align 4
  %12 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool11.not = icmp eq i32 %12, 0
  br i1 %tobool11.not, label %if.end13, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false8
  %gl_demote_state = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 3
  %13 = ptrtoint ptr %gl_demote_state to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %gl_demote_state, align 8
  %14 = and i16 %bf.load, 3072
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp14.not = icmp eq i16 %14, 0
  br i1 %cmp14.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %ar_spectator = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 21, i32 3
  %15 = ptrtoint ptr %ar_spectator to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load17 = load i32, ptr %ar_spectator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load17)
  %tobool19.not = icmp sgt i32 %bf.load17, -1
  %sd_fsname27 = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 110
  br i1 %tobool19.not, label %do.end25, label %do.end

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %sd_fsname27) #13
  br label %cleanup

do.end25:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %sd_fsname27) #13
  tail call void @_set_bit(i32 noundef 13, ptr noundef %sd_flags) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gfs2_control_wq to i32))
  %16 = load ptr, ptr @gfs2_control_wq, align 4
  %sd_control_work = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 33
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %sd_control_work, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %do.end, %if.end13.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_trans_add_revoke(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dump_glock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_lm(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_meta_buffer(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_set_inode_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_set_aops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_consist_inode_i(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mapping_set_error(ptr noundef %mapping, i32 noundef %error) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.end, !prof !80

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end:                                           ; preds = %entry
  tail call void @__filemap_set_wb_err(ptr noundef %mapping, i32 noundef %error) #10
  %0 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %s_wb_err = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 50
  %call = tail call i32 @errseq_set(ptr noundef %s_wb_err, i32 noundef %error) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %error)
  %cmp = icmp eq i32 %error, -28
  %flags = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 10
  %. = zext i1 %cmp to i32
  tail call void @_set_bit(i32 noundef %., ptr noundef %flags) #10
  br label %if.end10

if.end10:                                         ; preds = %if.end7, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gfs2_ail_empty_gl(ptr noundef %gl) unnamed_addr #0 align 64 {
entry:
  %tr = alloca %struct.gfs2_trans, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ln_sbd = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ln_sbd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ln_sbd, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %tr) #10
  %2 = call ptr @memset(ptr %tr, i32 255, i32 84)
  %gl_ail_count = getelementptr inbounds %struct.gfs2_glock, ptr %gl, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %gl_ail_count, i32 noundef 4) #10
  %3 = ptrtoint ptr %gl_ail_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %gl_ail_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %sd_log_lock.i = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 78
  tail call void @_raw_spin_lock(ptr noundef %sd_log_lock.i) #10
  %sd_log_revokes = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 83
  %5 = ptrtoint ptr %sd_log_revokes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %sd_log_revokes, align 4
  %cmp.i.not = icmp eq ptr %6, %sd_log_revokes
  %sd_log_in_flight = getelementptr inbounds %struct.gfs2_sbd, ptr %1, i32 0, i32 96
  %call.i.i2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sd_log_in_flight, i32 noundef 4) #10
  %7 = ptrtoint ptr %sd_log_in_flight to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sd_log_in_flight, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sd_log_lock.i) #10
  br i1 %cmp.i.not, label %if.end, label %if.then.flush_crit_edge

if.then.flush_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %flush

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %if.end.cleanup17_crit_edge, label %if.then9

if.end.cleanup17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup17

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @log_flush_wait(ptr noundef %1) #10
  br label %cleanup17

if.end12:                                         ; preds = %entry
  %9 = call ptr @memset(ptr %tr, i32 0, i32 84)
  %tr_flags = getelementptr inbounds %struct.gfs2_trans, ptr %tr, i32 0, i32 4
  call void @_set_bit(i32 noundef 3, ptr noundef %tr_flags) #10
  %10 = call ptr @llvm.returnaddress(i32 0)
  %11 = ptrtoint ptr %10 to i32
  %call13 = call i32 @__gfs2_trans_begin(ptr noundef nonnull %tr, ptr noundef %1, i32 noundef 0, i32 noundef %4, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.flush_crit_edge

if.end12.flush_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %flush

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @__gfs2_ail_flush(ptr noundef %gl, i1 noundef zeroext false, i32 noundef %4)
  call void @gfs2_trans_end(ptr noundef %1) #10
  br label %flush

flush:                                            ; preds = %if.end16, %if.end12.flush_crit_edge, %if.then.flush_crit_edge
  call void @gfs2_log_flush(ptr noundef %1, ptr noundef null, i32 noundef 2050) #10
  br label %cleanup17

cleanup17:                                        ; preds = %flush, %if.then9, %if.end.cleanup17_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %tr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @log_flush_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gfs2_trans_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @forget_all_cached_acls(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_inode_invalidate_secctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_dir_hash_inval(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_print_dbg(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_free_clones(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rgrp_brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_rgrp_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gfs2_assert_withdraw_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gfs2_find_jhead(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gfs2_delete_work_queued(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69}
!llvm.named.register.sp = !{!70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__func__.gfs2_inode_metasync, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/gfs2/glops.c", i32 287, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @gfs2_meta_glops, !4, !"gfs2_meta_glops", i1 false, i1 false}
!4 = !{!"../fs/gfs2/glops.c", i32 730, i32 36}
!5 = !{ptr @gfs2_inode_glops, !6, !"gfs2_inode_glops", i1 false, i1 false}
!6 = !{!"../fs/gfs2/glops.c", i32 735, i32 36}
!7 = !{ptr @gfs2_rgrp_glops, !8, !"gfs2_rgrp_glops", i1 false, i1 false}
!8 = !{!"../fs/gfs2/glops.c", i32 746, i32 36}
!9 = !{ptr @gfs2_freeze_glops, !10, !"gfs2_freeze_glops", i1 false, i1 false}
!10 = !{!"../fs/gfs2/glops.c", i32 755, i32 36}
!11 = !{ptr @gfs2_iopen_glops, !12, !"gfs2_iopen_glops", i1 false, i1 false}
!12 = !{!"../fs/gfs2/glops.c", i32 763, i32 36}
!13 = !{ptr @gfs2_flock_glops, !14, !"gfs2_flock_glops", i1 false, i1 false}
!14 = !{!"../fs/gfs2/glops.c", i32 772, i32 36}
!15 = !{ptr @gfs2_nondisk_glops, !16, !"gfs2_nondisk_glops", i1 false, i1 false}
!16 = !{!"../fs/gfs2/glops.c", i32 777, i32 36}
!17 = !{ptr @gfs2_quota_glops, !18, !"gfs2_quota_glops", i1 false, i1 false}
!18 = !{!"../fs/gfs2/glops.c", i32 783, i32 36}
!19 = !{ptr @gfs2_journal_glops, !20, !"gfs2_journal_glops", i1 false, i1 false}
!20 = !{!"../fs/gfs2/glops.c", i32 788, i32 36}
!21 = !{ptr @gfs2_glops_list, !22, !"gfs2_glops_list", i1 false, i1 false}
!22 = !{!"../fs/gfs2/glops.c", i32 793, i32 37}
!23 = !{ptr @gfs2_freeze_wq, !24, !"gfs2_freeze_wq", i1 false, i1 false}
!24 = !{!"../fs/gfs2/glops.c", i32 30, i32 26}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/gfs2/glops.c", i32 38, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @gfs2_ail_error._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @gfs2_ail_error._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../fs/gfs2/glops.c", i32 43, i32 2}
!32 = !{ptr @gfs2_ail_error._entry.3, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gfs2_ail_error._entry_ptr.5, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/gfs2/glops.c", i32 46, i32 15}
!36 = !{ptr @__func__.gfs2_dinode_in, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/gfs2/glops.c", i32 456, i32 2}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/gfs2/glops.c", i32 542, i32 22}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../fs/gfs2/glops.c", i32 174, i32 2}
!45 = !{ptr @__func__.gfs2_rgrp_metasync, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/gfs2/glops.c", i32 177, i32 3}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../fs/gfs2/glops.c", i32 229, i32 2}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/gfs2/glops.c", i32 577, i32 4}
!51 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @freeze_go_sync._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @freeze_go_sync._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/gfs2/glops.c", i32 583, i32 4}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/gfs2/glops.c", i32 611, i32 7}
!58 = !{ptr @__func__.freeze_go_xmote_bh, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../fs/gfs2/glops.c", i32 613, i32 7}
!61 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../fs/gfs2/glops.c", i32 714, i32 3}
!63 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @nondisk_go_callback._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @nondisk_go_callback._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/gfs2/glops.c", i32 718, i32 2}
!68 = !{ptr @nondisk_go_callback._entry.16, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @nondisk_go_callback._entry_ptr.18, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{!"sp"}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2155223556, i64 2155224035, i64 2155223593, i64 2155223649, i64 2155223683, i64 2155223707, i64 2155223748, i64 2155223769, i64 2155223797, i64 2155223831}
!82 = !{!"auto-init"}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 2152530727}
!85 = !{i64 2150022112}
!86 = !{i64 2150027046}
!87 = !{i64 2150048764}
!88 = !{i64 2150053658}
!89 = !{i64 2150130185}
!90 = !{i64 2150130510}
!91 = !{i64 2152542589}
!92 = !{i64 2155231143, i64 2155231623, i64 2155231180, i64 2155231236, i64 2155231270, i64 2155231294, i64 2155231335, i64 2155231356, i64 2155231384, i64 2155231418}
!93 = !{i64 2155232583}
!94 = !{i64 2148594045}
!95 = !{i64 2148504440, i64 2148504472, i64 2148504501, i64 2148504535, i64 2148504566, i64 2148504589}
!96 = !{i64 901875, i64 901936}
!97 = !{i64 904607}
!98 = !{i64 904892}
!99 = !{i64 2152528796}
!100 = !{i64 2152528638}
!101 = !{i64 2152528966}
!102 = !{i64 2150129860}
!103 = !{i64 2155227278, i64 2155227758, i64 2155227315, i64 2155227371, i64 2155227405, i64 2155227429, i64 2155227470, i64 2155227491, i64 2155227519, i64 2155227553}
