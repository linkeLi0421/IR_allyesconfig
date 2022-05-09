; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_mount.c_pt.bc'
source_filename = "../fs/xfs/xfs_mount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.90, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.89, i16, i8, i32 }
%union.anon.89 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.llist_node = type { ptr }
%union.anon.90 = type { i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xfs_dsb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@xfs_uuid_table_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@xfs_uuid_table = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PAGE_SHIFT >= sbp->sb_blocklog\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_mount.c\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sbp->sb_blocklog >= BBSHIFT\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mp->m_sb_bp == NULL\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mp->m_ddev_targp != NULL\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SB validate failed with error %d.\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid superblock magic number\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"device supports %u byte sectors (not %u)\00", [55 x i8] zeroinitializer }, align 32
@xfs_sb_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@xfs_sb_quiet_buf_ops = external dso_local constant %struct.xfs_buf_ops, align 4
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"correcting sb_features alignment problem\00", [55 x i8] zeroinitializer }, align 32
@xfs_mp_ktype = external dso_local global %struct.kobj_type, align 4
@xfs_stats_ktype = external dso_local global %struct.kobj_type, align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Sparse inode block alignment (%u) must match cluster size (%llu).\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RT mount failed\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed dir/attr init: %d\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed per-ag init: %d\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"!sbp->sb_logblocks\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no log defined\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"log mount failed\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to read root inode 0x%llx, error %d\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rip != NULL\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!S_ISDIR(VFS_I(rip)->i_mode)\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"corrupted root inode %llu: not a directory\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read RT inodes\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to write sb changes\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"resetting quota flags\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"ENOSPC reserving per-AG metadata pool, log recovery may fail.\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"log mount finish failed\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mp->m_qflags == 0\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Unable to allocate reserve blocks. Continuing without reserve pool.\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Unable to free reserved block pool. Freespace may not be correct on next mount.\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"level > SB_UNFROZEN\00", [44 x i8] zeroinitializer }, align 32
@xfs_mod_fdblocks.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Reserve blocks depleted! Consider increasing reserve pool size.\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s required on read-only device.\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"write access unavailable, cannot proceed.\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hweight32(feature) == 1\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"!(feature & XFS_SB_FEAT_INCOMPAT_LOG_UNKNOWN)\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"alignment check failed: sunit/swidth vs. blocksize(%d)\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"alignment check failed: sunit/swidth vs. agsize(%d)\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"alignment check failed: sunit(%d) less than bsize(%d)\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"cannot change alignment: superblock does not support data alignment\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"igeo->attr_fork_offset < XFS_LITINO(mp)\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Cannot change stripe alignment; would require moving root inode.\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Skipping superblock stripe alignment update.\00", [51 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_check_new_dalign = external dso_local global %struct.tracepoint, align 4
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_check_new_dalign.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Filesystem has null UUID - can't mount\00", [57 x i8] zeroinitializer }, align 32
@xfs_uuid_table_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xfs_uuid_table_mutex, i64 52), ptr getelementptr (i8, ptr @xfs_uuid_table_mutex, i64 52) }, ptr @xfs_uuid_table_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Filesystem has duplicate UUID %pU - can't mount\00", [48 x i8] zeroinitializer }, align 32
@uuid_null = external dso_local constant %struct.uuid_t, align 1
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xfs_uuid_table_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xfs_uuid_table_mutex\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"filesystem size mismatch detected\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"last sector read failed\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"log size mismatch detected\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"log device read failed\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sb_inprogress set after log recovery??\00", [57 x i8] zeroinitializer }, align 32
@xfs_discard_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i < xfs_uuid_table_size\00", [40 x i8] zeroinitializer }, align 32
@percpu_counter_batch = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967268]
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c"xfs_uuid_table_size\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 38, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"xfs_uuid_table\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 39, i32 16 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 132, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 133, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 158, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 159, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 183, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 201, i32 17 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 211, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 623, i32 16 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 675, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 711, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 730, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 745, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 759, i32 16 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 763, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 764, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 782, i32 16 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 816, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 821, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 823, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 824, i32 16 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 842, i32 16 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 854, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 873, i32 19 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 891, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 895, i32 16 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 915, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 937, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1051, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1081, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1172, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1224, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1225, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1254, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 1255, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 299, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 309, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 316, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 324, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 565, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 267, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 274, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 3817, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 108, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_sysfs.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 39, i32 61 }
@___asan_gen_.202 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 87, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 69, i32 16 }
@___asan_gen_.211 = private unnamed_addr constant [21 x i8] c"xfs_uuid_table_mutex\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 96, i32 15 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 37, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 394, i32 16 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 401, i32 16 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 411, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 418, i32 16 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 475, i32 15 }
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [22 x i8] c"../fs/xfs/xfs_mount.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 119, i32 2 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @xfs_uuid_table_size, ptr @xfs_uuid_table, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @init_completion.__key, ptr @.str.47, ptr @.str.48, ptr @xfs_uuid_table_mutex, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_uuid_table_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_uuid_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_uuid_table_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_uuid_table_free() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @xfs_uuid_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load ptr, ptr @xfs_uuid_table, align 4
  tail call void @kvfree(ptr noundef %1) #11
  store ptr null, ptr @xfs_uuid_table, align 4
  store i32 0, ptr @xfs_uuid_table_size, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_sb_validate_fsb_count(ptr nocapture noundef readonly %sbp, i64 noundef %nblocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %sbp, i32 0, i32 20
  %0 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sb_blocklog, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %1)
  %cmp = icmp ult i8 %1, 13
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !133

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 132) #11
  %2 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %2)
  %.pr = load i8, ptr %sb_blocklog, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %3 = phi i8 [ %1, %entry.cond.end_crit_edge ], [ %.pr, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp5 = icmp ugt i8 %3, 8
  br i1 %cmp5, label %cond.end.cond.end15_crit_edge, label %cond.false14, !prof !133

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 133) #11
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %4 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sb_blocklog, align 8
  %conv17 = zext i8 %5 to i32
  %sub = sub nsw i32 12, %conv17
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 %nblocks, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %shr)
  %cmp18 = icmp ugt i64 %shr, 4294967295
  %. = select i1 %cmp18, i32 -27, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_readsb(ptr noundef %mp, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !134
  %and = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %m_sb_bp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 3
  %1 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_sb_bp, align 16
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !133

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 158) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %3 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_ddev_targp, align 8
  %cmp6.not = icmp eq ptr %4, null
  br i1 %cmp6.not, label %cond.false14, label %cond.end.cond.end15_crit_edge, !prof !135

cond.end.cond.end15_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 159) #11
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false14, %cond.end.cond.end15_crit_edge
  %5 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_ddev_targp, align 8
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bt_bdev, align 4
  %bd_inode.i = getelementptr inbounds %struct.block_device, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %bd_inode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bd_inode.i, align 4
  %i_blkbits.i = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %i_blkbits.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i_blkbits.i, align 2
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %narrow = add nuw i32 %shl.i, 511
  %13 = lshr i32 %narrow, 9
  %call1996 = call i32 @xfs_buf_read_uncached(ptr noundef %6, i64 noundef 0, i32 noundef %13, i32 noundef 8, ptr noundef nonnull %bp, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1996)
  %tobool20.not97 = icmp eq i32 %call1996, 0
  br i1 %tobool20.not97, label %if.end27.lr.ph, label %cond.end15.if.then_crit_edge

cond.end15.if.then_crit_edge:                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end27.lr.ph:                                   ; preds = %cond.end15
  %sb_sectsize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 16
  %cond = select i1 %tobool.not, ptr @xfs_sb_buf_ops, ptr @xfs_sb_quiet_buf_ops
  br label %if.end27

if.then:                                          ; preds = %if.then47.if.then_crit_edge, %cond.end15.if.then_crit_edge
  %call19.lcssa = phi i32 [ %call1996, %cond.end15.if.then_crit_edge ], [ %call19, %if.then47.if.then_crit_edge ]
  br i1 %tobool.not, label %if.then22, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then22:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.5, i32 noundef %call19.lcssa) #11
  br label %if.end

if.end:                                           ; preds = %if.then22, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -74, i32 %call19.lcssa)
  %cmp23 = icmp eq i32 %call19.lcssa, -74
  %spec.store.select = select i1 %cmp23, i32 -117, i32 %call19.lcssa
  br label %cleanup

if.end27:                                         ; preds = %if.then47.if.end27_crit_edge, %if.end27.lr.ph
  %buf_ops.099 = phi ptr [ null, %if.end27.lr.ph ], [ %cond, %if.then47.if.end27_crit_edge ]
  %sector_size.098 = phi i32 [ %shl.i, %if.end27.lr.ph ], [ %conv49, %if.then47.if.end27_crit_edge ]
  %14 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bp, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_addr, align 4
  call void @xfs_sb_from_disk(ptr noundef %mp, ptr noundef %17) #11
  %18 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1481003842, i32 %19)
  %cmp28.not = icmp eq i32 %19, 1481003842
  br i1 %cmp28.not, label %if.end34, label %if.then30

if.then30:                                        ; preds = %if.end27
  br i1 %tobool.not, label %if.then32, label %if.then30.release_buf_crit_edge

if.then30.release_buf_crit_edge:                  ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_buf

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.6) #11
  br label %release_buf

if.end34:                                         ; preds = %if.end27
  %20 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sb_sectsize, align 2
  %conv35 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sector_size.098, i32 %conv35)
  %cmp36 = icmp ugt i32 %sector_size.098, %conv35
  br i1 %cmp36, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end34
  br i1 %tobool.not, label %if.then40, label %if.then38.release_buf_crit_edge

if.then38.release_buf_crit_edge:                  ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_buf

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %conv35.le = zext i16 %21 to i32
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.7, i32 noundef %sector_size.098, i32 noundef %conv35.le) #11
  br label %release_buf

if.end44:                                         ; preds = %if.end34
  %cmp45 = icmp eq ptr %buf_ops.099, null
  br i1 %cmp45, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.end44
  %22 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %23) #11
  call void @xfs_buf_rele(ptr noundef %23) #11
  %24 = ptrtoint ptr %sb_sectsize to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sb_sectsize, align 2
  %conv49 = zext i16 %25 to i32
  %26 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m_ddev_targp, align 8
  %sub = add nuw nsw i32 %conv49, 511
  %shr = lshr i32 %sub, 9
  %call19 = call i32 @xfs_buf_read_uncached(ptr noundef %27, i64 noundef 0, i32 noundef %shr, i32 noundef 8, ptr noundef nonnull %bp, ptr noundef nonnull %cond) #11
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then47.if.end27_crit_edge, label %if.then47.if.then_crit_edge

if.then47.if.then_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then47.if.end27_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %call52 = call i64 @xfs_sb_version_to_features(ptr noundef %mp) #11
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %28 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_features, align 8
  %or = or i64 %29, %call52
  store i64 %or, ptr %m_features, align 8
  call void @xfs_reinit_percpu_counters(ptr noundef %mp) #11
  %30 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bp, align 4
  %b_ops = getelementptr inbounds %struct.xfs_buf, ptr %31, i32 0, i32 35
  %32 = ptrtoint ptr %b_ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @xfs_sb_buf_ops, ptr %b_ops, align 4
  %33 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %m_sb_bp, align 16
  call void @xfs_buf_unlock(ptr noundef %31) #11
  br label %cleanup

release_buf:                                      ; preds = %if.then40, %if.then38.release_buf_crit_edge, %if.then32, %if.then30.release_buf_crit_edge
  %error.0 = phi i32 [ -22, %if.then32 ], [ -22, %if.then30.release_buf_crit_edge ], [ -38, %if.then40 ], [ -38, %if.then38.release_buf_crit_edge ]
  %34 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %35) #11
  call void @xfs_buf_rele(ptr noundef %35) #11
  br label %cleanup

cleanup:                                          ; preds = %release_buf, %if.end51, %if.end
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ %error.0, %release_buf ], [ 0, %if.end51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_buf_read_uncached(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_sb_from_disk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_sb_version_to_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_reinit_percpu_counters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_set_low_space_thresholds(ptr nocapture noundef %mp) local_unnamed_addr #3 align 64 {
if.end400:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %0 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_dblocks, align 8
  %sb_rextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 4
  %2 = ptrtoint ptr %sb_rextents to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sb_rextents, align 8
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %1, i32 0) #14, !srcloc !136
  %asmresult.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %1, i64 %asmresult.i, i32 %asmresult4.i) #14, !srcloc !137
  %asmresult10.i = extractvalue { i64, i32 } %5, 0
  %dblocks.0 = lshr i64 %asmresult10.i, 6
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %3, i32 0) #14, !srcloc !136
  %asmresult.i579 = extractvalue { i64, i32 } %6, 0
  %asmresult4.i580 = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %3, i64 %asmresult.i579, i32 %asmresult4.i580) #14, !srcloc !137
  %asmresult10.i581 = extractvalue { i64, i32 } %7, 0
  %rtexts.0 = lshr i64 %asmresult10.i581, 6
  %arrayidx = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 62, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %dblocks.0, ptr %arrayidx, align 8
  %arrayidx410 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 63, i32 0
  %9 = ptrtoint ptr %arrayidx410 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %rtexts.0, ptr %arrayidx410, align 8
  %mul406.1 = shl nuw nsw i64 %dblocks.0, 1
  %arrayidx.1 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 62, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %mul406.1, ptr %arrayidx.1, align 8
  %mul409.1 = shl nuw nsw i64 %rtexts.0, 1
  %arrayidx410.1 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 63, i32 1
  %11 = ptrtoint ptr %arrayidx410.1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %mul409.1, ptr %arrayidx410.1, align 8
  %mul406.2 = mul nuw nsw i64 %dblocks.0, 3
  %arrayidx.2 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 62, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %mul406.2, ptr %arrayidx.2, align 8
  %mul409.2 = mul nuw nsw i64 %rtexts.0, 3
  %arrayidx410.2 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 63, i32 2
  %13 = ptrtoint ptr %arrayidx410.2 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %mul409.2, ptr %arrayidx410.2, align 8
  %mul406.3 = shl nuw nsw i64 %dblocks.0, 2
  %arrayidx.3 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 62, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %mul406.3, ptr %arrayidx.3, align 8
  %mul409.3 = shl nuw nsw i64 %rtexts.0, 2
  %arrayidx410.3 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 63, i32 3
  %15 = ptrtoint ptr %arrayidx410.3 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %mul409.3, ptr %arrayidx410.3, align 8
  %mul406.4 = mul nuw nsw i64 %dblocks.0, 5
  %arrayidx.4 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 62, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %mul406.4, ptr %arrayidx.4, align 8
  %mul409.4 = mul nuw nsw i64 %rtexts.0, 5
  %arrayidx410.4 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 63, i32 4
  %17 = ptrtoint ptr %arrayidx410.4 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %mul409.4, ptr %arrayidx410.4, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_mount_reset_sbqflags(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %0 = ptrtoint ptr %m_qflags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %m_qflags, align 4
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %1 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sb_qflags, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp = icmp eq i16 %2, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #11
  %3 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %sb_qflags, align 16
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #11
  %m_super.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %4 = ptrtoint ptr %m_super.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_super.i, align 8
  %s_writers.i = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 32
  %6 = ptrtoint ptr %s_writers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s_writers.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp2.not.i = icmp slt i32 %7, 1
  br i1 %cmp2.not.i, label %lor.lhs.false.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false.i:                                  ; preds = %if.end
  %m_opstate.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %8 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %m_opstate.i.i, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %xfs_fs_writable.exit, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

xfs_fs_writable.exit:                             ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %m_opstate.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %m_opstate.i.i, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i9.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i9.not.i, label %if.end6, label %xfs_fs_writable.exit.return_crit_edge

xfs_fs_writable.exit.return_crit_edge:            ; preds = %xfs_fs_writable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end6:                                          ; preds = %xfs_fs_writable.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = tail call i32 @xfs_sync_sb(ptr noundef %mp, i1 noundef zeroext false) #11
  br label %return

return:                                           ; preds = %if.end6, %xfs_fs_writable.exit.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %entry.return_crit_edge ], [ 0, %xfs_fs_writable.exit.return_crit_edge ], [ 0, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_fs_writable(ptr noundef %mp, i32 noundef %level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp = icmp sgt i32 %level, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false, !prof !133

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 1081) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_super, align 8
  %s_writers = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %s_writers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_writers, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %level)
  %cmp2.not = icmp slt i32 %3, %level
  br i1 %cmp2.not, label %lor.lhs.false, label %cond.end.return_crit_edge

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %cond.end
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %4 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %m_opstate.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %lor.lhs.false3, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %m_opstate.i, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i9.not = icmp eq i32 %9, 0
  br label %return

return:                                           ; preds = %lor.lhs.false3, %lor.lhs.false.return_crit_edge, %cond.end.return_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.return_crit_edge ], [ false, %cond.end.return_crit_edge ], [ %tobool.i9.not, %lor.lhs.false3 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_sync_sb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xfs_default_resblks(ptr nocapture noundef readonly %mp) local_unnamed_addr #4 align 64 {
if.end178:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %0 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_dblocks, align 8
  %div79268 = lshr i64 %1, 2
  %2 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79268, i64 3689348814741910323) #14, !srcloc !138
  %3 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79268, i64 %2) #14, !srcloc !139
  %4 = tail call i64 @llvm.umin.i64(i64 %3, i64 8192)
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_mountfs(ptr noundef %mp) #0 align 64 {
entry:
  %rip = alloca ptr, align 4
  %resblks = alloca i64, align 8
  %quotamount = alloca i32, align 4
  %quotaflags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rip) #11
  %0 = ptrtoint ptr %rip to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rip, align 4, !annotation !134
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resblks) #11
  %1 = ptrtoint ptr %resblks to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %resblks, align 8, !annotation !134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %quotamount) #11
  %2 = ptrtoint ptr %quotamount to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %quotamount, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %quotaflags) #11
  %3 = ptrtoint ptr %quotaflags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %quotaflags, align 4
  tail call void @xfs_sb_mount_common(ptr noundef %mp, ptr noundef %mp) #11
  %sb_bad_features2.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 45
  %4 = ptrtoint ptr %sb_bad_features2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_bad_features2.i, align 4
  %sb_features2.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 44
  %6 = ptrtoint ptr %sb_features2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_features2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i.not = icmp eq i32 %5, %7
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.8) #11
  %8 = ptrtoint ptr %sb_bad_features2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sb_bad_features2.i, align 4
  %10 = ptrtoint ptr %sb_features2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_features2.i, align 8
  %or = or i32 %11, %9
  store i32 %or, ptr %sb_features2.i, align 8
  %m_update_sb = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 70
  %12 = ptrtoint ptr %m_update_sb to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %m_update_sb, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sb_versionnum = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 15
  %13 = ptrtoint ptr %sb_versionnum to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sb_versionnum, align 4
  %15 = and i16 %14, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or6 = or i16 %14, 32
  %16 = ptrtoint ptr %sb_versionnum to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %or6, ptr %sb_versionnum, align 4
  %m_features = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %17 = ptrtoint ptr %m_features to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %m_features, align 8
  %or8 = or i64 %18, 2
  store i64 %or8, ptr %m_features, align 8
  %m_update_sb9 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 70
  %19 = ptrtoint ptr %m_update_sb9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %m_update_sb9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.end.if.end10_crit_edge
  %call11 = tail call fastcc i32 @xfs_validate_new_dalign(ptr noundef %mp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  tail call void @xfs_alloc_compute_maxlevels(ptr noundef %mp) #11
  tail call void @xfs_bmap_compute_maxlevels(ptr noundef %mp, i32 noundef 0) #11
  tail call void @xfs_bmap_compute_maxlevels(ptr noundef %mp, i32 noundef 1) #11
  %call.i = tail call i32 @xfs_bmap_compute_attr_offset(ptr noundef %mp) #11
  %attr_fork_offset.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 16
  %20 = ptrtoint ptr %attr_fork_offset.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %attr_fork_offset.i, align 4
  %sb_inodesize.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 17
  %21 = ptrtoint ptr %sb_inodesize.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sb_inodesize.i, align 8
  %conv.i = zext i16 %22 to i32
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %23 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %24, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %cond.neg.i = select i1 %tobool.i.not.i, i32 -100, i32 -176
  %sub.i = add nsw i32 %cond.neg.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %sub.i)
  %cmp.i463 = icmp ult i32 %call.i, %sub.i
  br i1 %cmp.i463, label %if.end14.xfs_mount_setup_inode_geom.exit_crit_edge, label %cond.false.i, !prof !133

if.end14.xfs_mount_setup_inode_geom.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %xfs_mount_setup_inode_geom.exit

cond.false.i:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, i32 noundef 565) #11
  br label %xfs_mount_setup_inode_geom.exit

xfs_mount_setup_inode_geom.exit:                  ; preds = %cond.false.i, %if.end14.xfs_mount_setup_inode_geom.exit_crit_edge
  tail call void @xfs_ialloc_setup_geometry(ptr noundef %mp) #11
  tail call void @xfs_rmapbt_compute_maxlevels(ptr noundef %mp) #11
  tail call void @xfs_refcountbt_compute_maxlevels(ptr noundef %mp) #11
  %m_alloc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 42
  %25 = ptrtoint ptr %m_alloc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_alloc_maxlevels.i, align 4
  %inobt_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 10
  %27 = ptrtoint ptr %inobt_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inobt_maxlevels.i, align 4
  %29 = tail call i32 @llvm.umax.i32(i32 %26, i32 %28) #11
  %m_rmap_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 44
  %30 = ptrtoint ptr %m_rmap_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %m_rmap_maxlevels.i, align 16
  %32 = tail call i32 @llvm.umax.i32(i32 %29, i32 %31) #11
  %m_refc_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 45
  %33 = ptrtoint ptr %m_refc_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %m_refc_maxlevels.i, align 4
  %35 = tail call i32 @llvm.umax.i32(i32 %32, i32 %34) #11
  %m_agbtree_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 46
  %36 = ptrtoint ptr %m_agbtree_maxlevels.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %m_agbtree_maxlevels.i, align 8
  tail call fastcc void @xfs_update_alignment(ptr noundef %mp)
  %m_fail_unmount = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 68
  %37 = ptrtoint ptr %m_fail_unmount to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %m_fail_unmount, align 1
  %m_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 88
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %38 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %m_super, align 8
  %s_id = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 39
  %complete.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 88, i32 1
  %40 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 88, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #11
  %call.i464 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %m_kobj, ptr noundef nonnull @xfs_mp_ktype, ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef %s_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i464)
  %tobool20.not = icmp eq i32 %call.i464, 0
  br i1 %tobool20.not, label %if.end22, label %xfs_mount_setup_inode_geom.exit.cleanup_crit_edge

xfs_mount_setup_inode_geom.exit.cleanup_crit_edge: ; preds = %xfs_mount_setup_inode_geom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %xfs_mount_setup_inode_geom.exit
  %xs_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92, i32 1
  %complete.i465 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92, i32 1, i32 1
  %41 = ptrtoint ptr %complete.i465 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %complete.i465, align 4
  %wait.i.i466 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92, i32 1, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i466, ptr noundef nonnull @.str.47, ptr noundef nonnull @init_completion.__key) #11
  %call.i467 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %xs_kobj, ptr noundef nonnull @xfs_stats_ktype, ptr noundef %m_kobj, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i467)
  %tobool25.not = icmp eq i32 %call.i467, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.out_remove_sysfs_crit_edge

if.end22.out_remove_sysfs_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_remove_sysfs

if.end27:                                         ; preds = %if.end22
  %call28 = tail call i32 @xfs_error_sysfs_init(ptr noundef %mp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.out_del_stats_crit_edge

if.end27.out_del_stats_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_del_stats

if.end31:                                         ; preds = %if.end27
  %call32 = tail call i32 @xfs_errortag_init(ptr noundef %mp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.out_remove_error_sysfs_crit_edge

if.end31.out_remove_error_sysfs_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_remove_error_sysfs

if.end35:                                         ; preds = %if.end31
  %call36 = tail call fastcc i32 @xfs_uuid_mount(ptr noundef %mp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.out_remove_errortag_crit_edge

if.end35.out_remove_errortag_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_remove_errortag

if.end39:                                         ; preds = %if.end35
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 20
  %42 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sb_blocklog, align 8
  %conv40 = zext i8 %43 to i32
  %m_allocsize_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 53
  %44 = ptrtoint ptr %m_allocsize_log to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %m_allocsize_log, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 %conv40)
  %47 = ptrtoint ptr %m_allocsize_log to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %m_allocsize_log, align 4
  %sub = sub i32 %46, %conv40
  %shl = shl nuw i32 1, %sub
  %m_allocsize_blocks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 54
  %48 = ptrtoint ptr %m_allocsize_blocks to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl, ptr %m_allocsize_blocks, align 8
  tail call void @xfs_set_low_space_thresholds(ptr noundef %mp)
  %49 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %m_features.i.i, align 8
  %and.i = and i64 %50, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end39.if.end66_crit_edge, label %land.lhs.true

if.end39.if.end66_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end39
  %sb_spino_align = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 51
  %51 = ptrtoint ptr %sb_spino_align to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sb_spino_align, align 4
  %conv49 = zext i32 %52 to i64
  %inode_cluster_size_raw = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 64, i32 2
  %53 = ptrtoint ptr %inode_cluster_size_raw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %inode_cluster_size_raw, align 4
  %conv50 = zext i32 %54 to i64
  %55 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %56 to i64
  %shr = lshr i64 %conv50, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv49)
  %cmp54.not = icmp eq i64 %shr, %conv49
  br i1 %cmp54.not, label %land.lhs.true.if.end66_crit_edge, label %if.then56

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.10, i32 noundef %52, i64 noundef %shr) #11
  br label %out_remove_uuid

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %if.end39.if.end66_crit_edge
  %call67 = tail call fastcc i32 @xfs_check_sizes(ptr noundef %mp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.out_remove_uuid_crit_edge

if.end66.out_remove_uuid_crit_edge:               ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_remove_uuid

if.end70:                                         ; preds = %if.end66
  %call71 = tail call i32 @xfs_rtmount_init(ptr noundef %mp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.11) #11
  br label %out_remove_uuid

if.end74:                                         ; preds = %if.end70
  %sb_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 5
  %arrayidx = getelementptr %struct.xfs_sb, ptr %mp, i32 0, i32 5, i32 0, i32 8
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %arrayidx, align 1
  %conv76 = zext i16 %58 to i32
  %shl77 = shl nuw i32 %conv76, 16
  %arrayidx80 = getelementptr %struct.xfs_sb, ptr %mp, i32 0, i32 5, i32 0, i32 4
  %59 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %arrayidx80, align 1
  %conv82 = zext i16 %60 to i32
  %or83 = or i32 %shl77, %conv82
  %m_fixedfsid = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 59
  %61 = ptrtoint ptr %m_fixedfsid to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or83, ptr %m_fixedfsid, align 4
  %62 = ptrtoint ptr %sb_uuid to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load i32, ptr %sb_uuid, align 1
  %arrayidx90 = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 59, i32 1
  %64 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx90, align 4
  %call91 = tail call i32 @xfs_da_mount(ptr noundef %mp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.then93

if.then93:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.12, i32 noundef %call91) #11
  br label %out_remove_uuid

if.end94:                                         ; preds = %if.end74
  tail call void @xfs_trans_init(ptr noundef %mp) #11
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %65 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sb_agcount, align 8
  %m_maxagi = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 52
  %call95 = tail call i32 @xfs_initialize_perag(ptr noundef %mp, i32 noundef %66, ptr noundef %m_maxagi) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.then97

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.13, i32 noundef %call95) #11
  br label %out_free_dir

if.end98:                                         ; preds = %if.end94
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %67 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sb_logblocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool99.not = icmp eq i32 %68, 0
  br i1 %tobool99.not, label %__here, label %if.end107, !prof !135

__here:                                           ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !140
  tail call void @xfs_corruption_error(ptr noundef nonnull @.str.14, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 763, ptr noundef blockaddress(@xfs_mountfs, %__here)) #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.15) #11
  br label %out_free_perag

if.end107:                                        ; preds = %if.end98
  %call108 = tail call i32 @xfs_inodegc_register_shrinker(ptr noundef %mp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end107.out_fail_wait_crit_edge

if.end107.out_fail_wait_crit_edge:                ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_fail_wait

if.end111:                                        ; preds = %if.end107
  %m_logdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %69 = ptrtoint ptr %m_logdev_targp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %m_logdev_targp, align 4
  %sb_logstart = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 6
  %71 = ptrtoint ptr %sb_logstart to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %sb_logstart, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 24
  %73 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %sb_agblklog, align 4
  %conv113 = zext i8 %74 to i32
  %sh_prom114 = zext i8 %74 to i64
  %shr115 = lshr i64 %72, %sh_prom114
  %conv117 = and i64 %shr115, 4294967295
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %75 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sb_agblocks, align 4
  %conv119 = zext i32 %76 to i64
  %mul = mul nuw i64 %conv117, %conv119
  %notmask.i = shl nsw i32 -1, %conv113
  %sub.i468 = xor i32 %notmask.i, -1
  %77 = trunc i64 %72 to i32
  %conv127 = and i32 %sub.i468, %77
  %conv128 = zext i32 %conv127 to i64
  %add = add nuw i64 %mul, %conv128
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %78 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %m_blkbb_log, align 1
  %conv129 = zext i8 %79 to i32
  %sh_prom130 = zext i8 %79 to i64
  %shl131 = shl i64 %add, %sh_prom130
  %80 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sb_logblocks, align 8
  %shl135 = shl i32 %81, %conv129
  %call136 = tail call i32 @xfs_log_mount(ptr noundef %mp, ptr noundef %70, i64 noundef %shl131, i32 noundef %shl135) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.then138

if.then138:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.16) #11
  br label %out_inodegc_shrinker

if.end139:                                        ; preds = %if.end111
  %call140 = tail call fastcc i32 @xfs_check_summary_counts(ptr noundef %mp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end143, label %if.end139.out_log_dealloc_crit_edge

if.end139.out_log_dealloc_crit_edge:              ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_log_dealloc

if.end143:                                        ; preds = %if.end139
  tail call void @xfs_inodegc_start(ptr noundef %mp) #11
  tail call void @xfs_blockgc_start(ptr noundef %mp) #11
  %82 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %m_features.i.i, align 8
  %and.i470 = and i64 %83, 281474976710656
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i470)
  %tobool.i471.not = icmp eq i64 %and.i470, 0
  br i1 %tobool.i471.not, label %if.else, label %if.then145

if.then145:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  %and147 = and i64 %83, -1025
  br label %if.end158.sink.split

if.else:                                          ; preds = %if.end143
  %and.i473 = and i64 %83, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i473)
  %tobool.i474.not = icmp eq i64 %and.i473, 0
  br i1 %tobool.i474.not, label %land.lhs.true149, label %if.else.if.end158_crit_edge

if.else.if.end158_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

land.lhs.true149:                                 ; preds = %if.else
  %84 = ptrtoint ptr %sb_features2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sb_features2.i, align 8
  %and152 = and i32 %85, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %land.lhs.true149.if.end158_crit_edge, label %if.then154

land.lhs.true149.if.end158_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end158

if.then154:                                       ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #13
  %or156 = or i64 %83, 1024
  br label %if.end158.sink.split

if.end158.sink.split:                             ; preds = %if.then154, %if.then145
  %or156.sink = phi i64 [ %or156, %if.then154 ], [ %and147, %if.then145 ]
  %86 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %or156.sink, ptr %m_features.i.i, align 8
  br label %if.end158

if.end158:                                        ; preds = %if.end158.sink.split, %land.lhs.true149.if.end158_crit_edge, %if.else.if.end158_crit_edge
  %sb_rootino = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 7
  %87 = ptrtoint ptr %sb_rootino to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %sb_rootino, align 8
  %call159 = call i32 @xfs_iget(ptr noundef %mp, ptr noundef null, i64 noundef %88, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %rip) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end164, label %if.then161

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %sb_rootino to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %sb_rootino, align 8
  %sub163 = sub i32 0, %call159
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.17, i64 noundef %90, i32 noundef %sub163) #11
  br label %out_log_dealloc

if.end164:                                        ; preds = %if.end158
  %91 = ptrtoint ptr %rip to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rip, align 4
  %cmp165.not = icmp eq ptr %92, null
  br i1 %cmp165.not, label %cond.false174, label %if.end164.cond.end175_crit_edge, !prof !135

if.end164.cond.end175_crit_edge:                  ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end175

cond.false174:                                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 821) #11
  br label %cond.end175

cond.end175:                                      ; preds = %cond.false174, %if.end164.cond.end175_crit_edge
  %93 = ptrtoint ptr %rip to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rip, align 4
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %94, i32 0, i32 27
  %95 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %i_vnode.i, align 8
  %97 = and i16 %96, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %97)
  %cmp179.not = icmp eq i16 %97, 16384
  br i1 %cmp179.not, label %if.end194, label %__here190, !prof !133

__here190:                                        ; preds = %cond.end175
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !141
  call void @xfs_corruption_error(ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef %mp, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef 823, ptr noundef blockaddress(@xfs_mountfs, %__here190)) #11
  %98 = ptrtoint ptr %rip to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rip, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %99, i32 0, i32 4
  %100 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.20, i64 noundef %101) #11
  %102 = ptrtoint ptr %rip to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rip, align 4
  call void @xfs_iunlock(ptr noundef %103, i32 noundef 4) #11
  br label %out_rele_rip

if.end194:                                        ; preds = %cond.end175
  %m_rootip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 11
  %104 = ptrtoint ptr %m_rootip to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %94, ptr %m_rootip, align 16
  call void @xfs_iunlock(ptr noundef %94, i32 noundef 4) #11
  %call195 = call i32 @xfs_rtmount_inodes(ptr noundef %mp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end198, label %if.then197

if.then197:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.21) #11
  br label %out_rele_rip

if.end198:                                        ; preds = %if.end194
  %m_update_sb199 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 70
  %105 = ptrtoint ptr %m_update_sb199 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %m_update_sb199, align 1, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool200.not = icmp eq i8 %106, 0
  br i1 %tobool200.not, label %if.end198.if.end209_crit_edge, label %land.lhs.true202

if.end198.if.end209_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

land.lhs.true202:                                 ; preds = %if.end198
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %107 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %m_opstate.i, align 4
  %109 = and i32 %108, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.i475.not = icmp eq i32 %109, 0
  br i1 %tobool.i475.not, label %if.then204, label %land.lhs.true202.if.end209_crit_edge

land.lhs.true202.if.end209_crit_edge:             ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

if.then204:                                       ; preds = %land.lhs.true202
  %call205 = call i32 @xfs_sync_sb(ptr noundef %mp, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.then204.if.end209_crit_edge, label %if.then207

if.then204.if.end209_crit_edge:                   ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end209

if.then207:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.22) #11
  br label %out_rtunmount

if.end209:                                        ; preds = %if.then204.if.end209_crit_edge, %land.lhs.true202.if.end209_crit_edge, %if.end198.if.end209_crit_edge
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 60
  %110 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %m_qflags, align 4
  %and210 = and i32 %111, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %if.else217, label %if.then212

if.then212:                                       ; preds = %if.end209
  %call213 = call i32 @xfs_qm_newmount(ptr noundef %mp, ptr noundef nonnull %quotamount, ptr noundef nonnull %quotaflags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.then212.if.end228_crit_edge, label %if.then212.out_rtunmount_crit_edge

if.then212.out_rtunmount_crit_edge:               ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_rtunmount

if.then212.if.end228_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228

if.else217:                                       ; preds = %if.end209
  %sb_qflags = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 34
  %112 = ptrtoint ptr %sb_qflags to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %sb_qflags, align 16
  %114 = and i16 %113, 73
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %114)
  %tobool221.not = icmp eq i16 %114, 0
  br i1 %tobool221.not, label %if.else217.if.end228_crit_edge, label %if.then222

if.else217.if.end228_crit_edge:                   ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228

if.then222:                                       ; preds = %if.else217
  call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.23) #11
  %call223 = call i32 @xfs_mount_reset_sbqflags(ptr noundef %mp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %if.then222.if.end228_crit_edge, label %if.then222.out_rtunmount_crit_edge

if.then222.out_rtunmount_crit_edge:               ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_rtunmount

if.then222.if.end228_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end228

if.end228:                                        ; preds = %if.then222.if.end228_crit_edge, %if.else217.if.end228_crit_edge, %if.then212.if.end228_crit_edge
  %call229 = call i32 @xfs_fs_reserve_ag_blocks(ptr noundef %mp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call229)
  %cond = icmp eq i32 %call229, -28
  br i1 %cond, label %if.then234, label %if.end228.if.end235_crit_edge

if.end228.if.end235_crit_edge:                    ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end235

if.then234:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.24) #11
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %if.end228.if.end235_crit_edge
  %call236 = call i32 @xfs_log_mount_finish(ptr noundef %mp) #11
  %call237 = call i32 @xfs_fs_unreserve_ag_blocks(ptr noundef %mp) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool238.not = icmp eq i32 %call236, 0
  br i1 %tobool238.not, label %if.end240, label %if.then239

if.then239:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.25) #11
  br label %out_rtunmount

if.end240:                                        ; preds = %if.end235
  %m_opstate.i476 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %115 = ptrtoint ptr %m_opstate.i476 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %m_opstate.i476, align 4
  %117 = and i32 %116, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.i477.not = icmp eq i32 %117, 0
  br i1 %tobool.i477.not, label %if.end240.if.end246_crit_edge, label %land.lhs.true243

if.end240.if.end246_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end246

land.lhs.true243:                                 ; preds = %if.end240
  %118 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %m_features.i.i, align 8
  %and.i479 = and i64 %119, 4611686018427387904
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i479)
  %tobool.i480.not = icmp eq i64 %and.i479, 0
  br i1 %tobool.i480.not, label %if.then245, label %land.lhs.true243.if.end246_crit_edge

land.lhs.true243.if.end246_crit_edge:             ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end246

if.then245:                                       ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_log_clean(ptr noundef %mp) #11
  br label %if.end246

if.end246:                                        ; preds = %if.then245, %land.lhs.true243.if.end246_crit_edge, %if.end240.if.end246_crit_edge
  %120 = ptrtoint ptr %quotamount to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %quotamount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool247.not = icmp eq i32 %121, 0
  br i1 %tobool247.not, label %if.end246.if.end262_crit_edge, label %if.then248

if.end246.if.end262_crit_edge:                    ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end262

if.then248:                                       ; preds = %if.end246
  %122 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %m_qflags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp250 = icmp eq i32 %123, 0
  br i1 %cmp250, label %if.then248.cond.end260_crit_edge, label %cond.false259, !prof !133

if.then248.cond.end260_crit_edge:                 ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end260

cond.false259:                                    ; preds = %if.then248
  call void @__sanitizer_cov_trace_pc() #13
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 915) #11
  br label %cond.end260

cond.end260:                                      ; preds = %cond.false259, %if.then248.cond.end260_crit_edge
  %124 = ptrtoint ptr %quotaflags to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %quotaflags, align 4
  %126 = ptrtoint ptr %m_qflags to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %m_qflags, align 4
  call void @xfs_qm_mount_quotas(ptr noundef %mp) #11
  br label %if.end262

if.end262:                                        ; preds = %cond.end260, %if.end246.if.end262_crit_edge
  %127 = ptrtoint ptr %m_opstate.i476 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %m_opstate.i476, align 4
  %129 = and i32 %128, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool.i482.not = icmp eq i32 %129, 0
  br i1 %tobool.i482.not, label %if.then264, label %if.end262.cleanup_crit_edge

if.end262.cleanup_crit_edge:                      ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then264:                                       ; preds = %if.end262
  %sb_dblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %130 = ptrtoint ptr %sb_dblocks.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %sb_dblocks.i, align 8
  %div79268.i = lshr i64 %131, 2
  %132 = call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79268.i, i64 3689348814741910323) #14, !srcloc !138
  %133 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79268.i, i64 %132) #14, !srcloc !139
  %134 = call i64 @llvm.umin.i64(i64 %133, i64 8192) #11
  %135 = ptrtoint ptr %resblks to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %resblks, align 8
  %call266 = call i32 @xfs_reserve_blocks(ptr noundef %mp, ptr noundef nonnull %resblks, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266)
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %if.then264.if.end269_crit_edge, label %if.then268

if.then264.if.end269_crit_edge:                   ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end269

if.then268:                                       ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.27) #11
  br label %if.end269

if.end269:                                        ; preds = %if.then268, %if.then264.if.end269_crit_edge
  %call270 = call i32 @xfs_fs_reserve_ag_blocks(ptr noundef %mp) #11
  %136 = zext i32 %call270 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call270, label %out_agresv [
    i32 0, label %if.end269.cleanup_crit_edge
    i32 -28, label %if.end269.cleanup_crit_edge485
  ]

if.end269.cleanup_crit_edge485:                   ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end269.cleanup_crit_edge:                      ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_agresv:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #13
  %call278 = call i32 @xfs_fs_unreserve_ag_blocks(ptr noundef %mp) #11
  call void @xfs_qm_unmount_quotas(ptr noundef %mp) #11
  br label %out_rtunmount

out_rtunmount:                                    ; preds = %out_agresv, %if.then239, %if.then222.out_rtunmount_crit_edge, %if.then212.out_rtunmount_crit_edge, %if.then207
  %error.0 = phi i32 [ %call213, %if.then212.out_rtunmount_crit_edge ], [ %call236, %if.then239 ], [ %call270, %out_agresv ], [ %call223, %if.then222.out_rtunmount_crit_edge ], [ %call205, %if.then207 ]
  call void @xfs_rtunmount_inodes(ptr noundef %mp) #11
  br label %out_rele_rip

out_rele_rip:                                     ; preds = %out_rtunmount, %if.then197, %__here190
  %error.1 = phi i32 [ -117, %__here190 ], [ %call195, %if.then197 ], [ %error.0, %out_rtunmount ]
  %137 = ptrtoint ptr %rip to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rip, align 4
  call void @xfs_irele(ptr noundef %138) #11
  call void @xfs_qm_unmount(ptr noundef %mp) #11
  call void @xfs_inodegc_flush(ptr noundef %mp) #11
  call fastcc void @xfs_unmount_flush_inodes(ptr noundef %mp)
  br label %out_log_dealloc

out_log_dealloc:                                  ; preds = %out_rele_rip, %if.then161, %if.end139.out_log_dealloc_crit_edge
  %error.2 = phi i32 [ %call140, %if.end139.out_log_dealloc_crit_edge ], [ %call159, %if.then161 ], [ %error.1, %out_rele_rip ]
  call void @xfs_log_mount_cancel(ptr noundef %mp) #11
  br label %out_inodegc_shrinker

out_inodegc_shrinker:                             ; preds = %out_log_dealloc, %if.then138
  %error.3 = phi i32 [ %call136, %if.then138 ], [ %error.2, %out_log_dealloc ]
  %m_inodegc_shrinker = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 96
  call void @unregister_shrinker(ptr noundef %m_inodegc_shrinker) #11
  br label %out_fail_wait

out_fail_wait:                                    ; preds = %out_inodegc_shrinker, %if.end107.out_fail_wait_crit_edge
  %error.4 = phi i32 [ %call108, %if.end107.out_fail_wait_crit_edge ], [ %error.3, %out_inodegc_shrinker ]
  %m_logdev_targp279 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %139 = ptrtoint ptr %m_logdev_targp279 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %m_logdev_targp279, align 4
  %tobool280.not = icmp eq ptr %140, null
  br i1 %tobool280.not, label %out_fail_wait.if.end287_crit_edge, label %land.lhs.true281

out_fail_wait.if.end287_crit_edge:                ; preds = %out_fail_wait
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end287

land.lhs.true281:                                 ; preds = %out_fail_wait
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %141 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %m_ddev_targp, align 8
  %cmp283.not = icmp eq ptr %140, %142
  br i1 %cmp283.not, label %land.lhs.true281.if.end287_crit_edge, label %if.then285

land.lhs.true281.if.end287_crit_edge:             ; preds = %land.lhs.true281
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end287

if.then285:                                       ; preds = %land.lhs.true281
  call void @__sanitizer_cov_trace_pc() #13
  call void @xfs_buftarg_drain(ptr noundef nonnull %140) #11
  br label %if.end287

if.end287:                                        ; preds = %if.then285, %land.lhs.true281.if.end287_crit_edge, %out_fail_wait.if.end287_crit_edge
  %m_ddev_targp288 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %143 = ptrtoint ptr %m_ddev_targp288 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %m_ddev_targp288, align 8
  call void @xfs_buftarg_drain(ptr noundef %144) #11
  br label %out_free_perag

out_free_perag:                                   ; preds = %if.end287, %__here
  %error.5 = phi i32 [ -117, %__here ], [ %error.4, %if.end287 ]
  call void @xfs_free_perag(ptr noundef %mp) #11
  br label %out_free_dir

out_free_dir:                                     ; preds = %out_free_perag, %if.then97
  %error.6 = phi i32 [ %call95, %if.then97 ], [ %error.5, %out_free_perag ]
  call void @xfs_da_unmount(ptr noundef %mp) #11
  br label %out_remove_uuid

out_remove_uuid:                                  ; preds = %out_free_dir, %if.then93, %if.then73, %if.end66.out_remove_uuid_crit_edge, %if.then56
  %error.7 = phi i32 [ -22, %if.then56 ], [ %call67, %if.end66.out_remove_uuid_crit_edge ], [ %call71, %if.then73 ], [ %call91, %if.then93 ], [ %error.6, %out_free_dir ]
  call fastcc void @xfs_uuid_unmount(ptr noundef %mp)
  br label %out_remove_errortag

out_remove_errortag:                              ; preds = %out_remove_uuid, %if.end35.out_remove_errortag_crit_edge
  %error.8 = phi i32 [ %call36, %if.end35.out_remove_errortag_crit_edge ], [ %error.7, %out_remove_uuid ]
  call void @xfs_errortag_del(ptr noundef %mp) #11
  br label %out_remove_error_sysfs

out_remove_error_sysfs:                           ; preds = %out_remove_errortag, %if.end31.out_remove_error_sysfs_crit_edge
  %error.9 = phi i32 [ %call32, %if.end31.out_remove_error_sysfs_crit_edge ], [ %error.8, %out_remove_errortag ]
  call void @xfs_error_sysfs_del(ptr noundef %mp) #11
  br label %out_del_stats

out_del_stats:                                    ; preds = %out_remove_error_sysfs, %if.end27.out_del_stats_crit_edge
  %error.10 = phi i32 [ %call28, %if.end27.out_del_stats_crit_edge ], [ %error.9, %out_remove_error_sysfs ]
  call void @kobject_del(ptr noundef %xs_kobj) #11
  call void @kobject_put(ptr noundef %xs_kobj) #11
  call void @wait_for_completion(ptr noundef %complete.i465) #11
  br label %out_remove_sysfs

out_remove_sysfs:                                 ; preds = %out_del_stats, %if.end22.out_remove_sysfs_crit_edge
  %error.11 = phi i32 [ %call.i467, %if.end22.out_remove_sysfs_crit_edge ], [ %error.10, %out_del_stats ]
  call void @kobject_del(ptr noundef %m_kobj) #11
  call void @kobject_put(ptr noundef %m_kobj) #11
  call void @wait_for_completion(ptr noundef %complete.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_remove_sysfs, %if.end269.cleanup_crit_edge, %if.end269.cleanup_crit_edge485, %if.end262.cleanup_crit_edge, %xfs_mount_setup_inode_geom.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end269.cleanup_crit_edge ], [ 0, %if.end269.cleanup_crit_edge485 ], [ 0, %if.end262.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call.i464, %xfs_mount_setup_inode_geom.exit.cleanup_crit_edge ], [ %error.11, %out_remove_sysfs ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %quotaflags) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %quotamount) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resblks) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rip) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_sb_mount_common(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_validate_new_dalign(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_dalign = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 50
  %0 = ptrtoint ptr %m_dalign to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_dalign, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %shl = shl i32 %1, 9
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 31
  %2 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_blockmask, align 8
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %m_swidth = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 51
  %4 = ptrtoint ptr %m_swidth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_swidth, align 4
  %shl2 = shl i32 %5, 9
  %and4 = and i32 %shl2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %6 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sb_blocksize, align 4
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.36, i32 noundef %7) #11
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %8 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %m_blkbb_log, align 1
  %conv = zext i8 %9 to i32
  %shr = ashr i32 %1, %conv
  %10 = ptrtoint ptr %m_dalign to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %m_dalign, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool10.not = icmp eq i32 %shr, 0
  br i1 %tobool10.not, label %if.else26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 11
  %11 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_agblocks, align 4
  %rem = urem i32 %12, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool13.not = icmp eq i32 %rem, 0
  br i1 %tobool13.not, label %if.then20, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.37, i32 noundef %12) #11
  br label %return

if.then20:                                        ; preds = %land.lhs.true
  %shr24 = ashr i32 %5, %conv
  %13 = ptrtoint ptr %m_swidth to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr24, ptr %m_swidth, align 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %14 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %15, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.then33, label %if.then20.return_crit_edge

if.then20.return_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sb_blocksize29 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 1
  %16 = ptrtoint ptr %sb_blocksize29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sb_blocksize29, align 4
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef %17) #11
  br label %return

if.then33:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.39) #11
  br label %return

return:                                           ; preds = %if.then33, %if.else26, %if.then20.return_crit_edge, %if.then14, %if.then6, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -22, %if.then14 ], [ -22, %if.then33 ], [ -22, %if.else26 ], [ 0, %entry.return_crit_edge ], [ 0, %if.then20.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_alloc_compute_maxlevels(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmap_compute_maxlevels(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_rmapbt_compute_maxlevels(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_refcountbt_compute_maxlevels(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_update_alignment(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_dalign = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 50
  %0 = ptrtoint ptr %m_dalign to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_dalign, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sb_unit = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 38
  %2 = ptrtoint ptr %sb_unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_unit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp eq i32 %3, %1
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %sb_width = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 39
  %4 = ptrtoint ptr %sb_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sb_width, align 4
  %m_swidth = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 51
  %6 = ptrtoint ptr %m_swidth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %m_swidth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2 = icmp eq i32 %5, %7
  br i1 %cmp2, label %land.lhs.true.cleanup24_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.cleanup24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup24

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %call.i = tail call i64 @xfs_ialloc_calc_rootino(ptr noundef %mp, i32 noundef %1) #11
  tail call fastcc void @trace_xfs_check_new_dalign(ptr noundef %mp, i32 noundef %1, i64 noundef %call.i) #11
  %sb_rootino.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 7
  %8 = ptrtoint ptr %sb_rootino.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sb_rootino.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %call.i)
  %cmp.i = icmp eq i64 %9, %call.i
  br i1 %cmp.i, label %if.end8, label %xfs_check_new_dalign.exit.thread

xfs_check_new_dalign.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.41) #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.42) #11
  br label %cleanup24

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %m_dalign to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_dalign, align 8
  %12 = ptrtoint ptr %sb_unit to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sb_unit, align 8
  %m_swidth11 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 51
  %13 = ptrtoint ptr %m_swidth11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m_swidth11, align 4
  %sb_width12 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 39
  %15 = ptrtoint ptr %sb_width12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %sb_width12, align 4
  %m_update_sb = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 70
  %16 = ptrtoint ptr %m_update_sb to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %m_update_sb, align 1
  br label %cleanup24

if.else:                                          ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %17 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %m_features.i, align 8
  %19 = and i64 %18, 562949953421328
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %19)
  %20 = icmp eq i64 %19, 16
  br i1 %20, label %if.then17, label %if.else.cleanup24_crit_edge

if.else.cleanup24_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup24

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %sb_unit18 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 38
  %21 = ptrtoint ptr %sb_unit18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sb_unit18, align 8
  %23 = ptrtoint ptr %m_dalign to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %m_dalign, align 8
  %sb_width20 = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 39
  %24 = ptrtoint ptr %sb_width20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_width20, align 4
  %m_swidth21 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 51
  %26 = ptrtoint ptr %m_swidth21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %m_swidth21, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %if.then17, %if.else.cleanup24_crit_edge, %if.end8, %xfs_check_new_dalign.exit.thread, %land.lhs.true.cleanup24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_error_sysfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_errortag_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_uuid_mount(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 5
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 1
  %0 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_super, align 8
  %s_uuid = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 40
  %2 = call ptr @memcpy(ptr %s_uuid, ptr %sb_uuid, i32 16)
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %3 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %m_features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.i = icmp slt i64 %4, 0
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sb_uuid, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.48) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @xfs_uuid_table_mutex, i32 noundef 0) #11
  %5 = load i32, ptr @xfs_uuid_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp36 = icmp sgt i32 %5, 0
  br i1 %cmp36, label %for.body.lr.ph, label %if.end3.if.then12_crit_edge

if.end3.if.then12_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

for.body.lr.ph:                                   ; preds = %if.end3
  %6 = load ptr, ptr @xfs_uuid_table, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %hole.037 = phi i32 [ -1, %for.body.lr.ph ], [ %hole.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uuid_t, ptr %6, i32 %i.038
  %bcmp.i.i32 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i32)
  %cmp.i.i33 = icmp eq i32 %bcmp.i.i32, 0
  br i1 %cmp.i.i33, label %for.body.for.inc_crit_edge, label %if.end6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sb_uuid, ptr noundef dereferenceable(16) %arrayidx, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %out_duplicate, label %if.end6.for.inc_crit_edge

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hole.1 = phi i32 [ %hole.037, %if.end6.for.inc_crit_edge ], [ %i.038, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.038, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hole.1)
  %cmp11 = icmp slt i32 %hole.1, 0
  br i1 %cmp11, label %for.end.if.then12_crit_edge, label %for.end.if.end15_crit_edge

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.end.if.then12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %for.end.if.then12_crit_edge, %if.end3.if.then12_crit_edge
  %7 = load ptr, ptr @xfs_uuid_table, align 4
  %add = shl i32 %5, 4
  %mul = add i32 %add, 16
  %call13 = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %mul, i32 noundef 36032) #16
  store ptr %call13, ptr @xfs_uuid_table, align 4
  %8 = load i32, ptr @xfs_uuid_table_size, align 4
  %inc14 = add i32 %8, 1
  store i32 %inc14, ptr @xfs_uuid_table_size, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %for.end.if.end15_crit_edge
  %hole.2 = phi i32 [ %8, %if.then12 ], [ %hole.1, %for.end.if.end15_crit_edge ]
  %9 = load ptr, ptr @xfs_uuid_table, align 4
  %arrayidx16 = getelementptr %struct.uuid_t, ptr %9, i32 %hole.2
  %10 = call ptr @memcpy(ptr %arrayidx16, ptr %sb_uuid, i32 16)
  tail call void @mutex_unlock(ptr noundef nonnull @xfs_uuid_table_mutex) #11
  br label %cleanup

out_duplicate:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @xfs_uuid_table_mutex) #11
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.49, ptr noundef %sb_uuid) #11
  br label %cleanup

cleanup:                                          ; preds = %out_duplicate, %if.end15, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %out_duplicate ], [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_check_sizes(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  %bp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bp) #11
  %0 = ptrtoint ptr %bp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %bp, align 4, !annotation !134
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %1 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %sb_dblocks, align 8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 28
  %3 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %m_blkbb_log, align 1
  %conv = zext i8 %4 to i32
  %sh_prom = zext i8 %4 to i64
  %shl = shl i64 %2, %sh_prom
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %conv4 = sext i32 %sub to i64
  %add = add i64 %shl, %conv4
  %shr = ashr i64 %add, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %2)
  %cmp.not = icmp eq i64 %shr, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.52) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %5 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_ddev_targp, align 8
  %m_sectbb_log = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 30
  %7 = ptrtoint ptr %m_sectbb_log to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %m_sectbb_log, align 1
  %conv11 = zext i8 %8 to i32
  %shl12 = shl nuw i32 1, %conv11
  %conv13 = sext i32 %shl12 to i64
  %sub14 = sub i64 %shl, %conv13
  %call = call i32 @xfs_buf_read_uncached(ptr noundef %6, i64 noundef %sub14, i32 noundef %shl12, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.53) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %9 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %10) #11
  call void @xfs_buf_rele(ptr noundef %10) #11
  %m_logdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %11 = ptrtoint ptr %m_logdev_targp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_logdev_targp, align 4
  %13 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m_ddev_targp, align 8
  %cmp21 = icmp eq ptr %12, %14
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %sb_logblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 14
  %15 = ptrtoint ptr %sb_logblocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_logblocks, align 32
  %17 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %m_blkbb_log, align 1
  %conv27 = zext i8 %18 to i32
  %shl28 = shl i32 %16, %conv27
  %conv29 = zext i32 %shl28 to i64
  %shl32 = shl nuw i32 1, %conv27
  %sub33 = add i32 %shl32, -1
  %conv34 = sext i32 %sub33 to i64
  %add35 = add nsw i64 %conv34, %conv29
  %sh_prom38 = zext i8 %18 to i64
  %shr39 = ashr i64 %add35, %sh_prom38
  %conv42 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr39, i64 %conv42)
  %cmp43.not = icmp eq i64 %shr39, %conv42
  br i1 %cmp43.not, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.54) #11
  br label %cleanup

if.end46:                                         ; preds = %if.end24
  %conv51 = sext i32 %shl32 to i64
  %sub52 = sub nsw i64 %conv29, %conv51
  %call56 = call i32 @xfs_buf_read_uncached(ptr noundef %12, i64 noundef %sub52, i32 noundef %shl32, i32 noundef 0, ptr noundef nonnull %bp, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.55) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bp, align 4
  call void @xfs_buf_unlock(ptr noundef %20) #11
  call void @xfs_buf_rele(ptr noundef %20) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then58, %if.then45, %if.end19.cleanup_crit_edge, %if.then18, %if.then
  %retval.0 = phi i32 [ -27, %if.then ], [ %call, %if.then18 ], [ -27, %if.then45 ], [ %call56, %if.then58 ], [ 0, %if.end59 ], [ 0, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtmount_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_da_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_initialize_perag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_corruption_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_inodegc_register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_mount(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_check_summary_counts(ptr noundef %mp) unnamed_addr #5 align 64 {
entry:
  %sick.i = alloca i32, align 4
  %checked.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_inprogress = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 26
  %0 = ptrtoint ptr %sb_inprogress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sb_inprogress, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @xfs_err(ptr noundef %mp, ptr noundef nonnull @.str.56) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 476, i32 noundef 9, ptr noundef null) #11
  br label %return

if.end17:                                         ; preds = %entry
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %2 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %m_opstate.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end17.if.end28_crit_edge, label %land.lhs.true

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end17
  %sb_fdblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 30
  %5 = ptrtoint ptr %sb_fdblocks to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sb_fdblocks, align 16
  %sb_dblocks = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 2
  %7 = ptrtoint ptr %sb_dblocks to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sb_dblocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %8)
  %cmp = icmp ugt i64 %6, %8
  br i1 %cmp, label %land.lhs.true.if.then27_crit_edge, label %lor.lhs.false

land.lhs.true.if.then27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false:                                    ; preds = %land.lhs.true
  %sb_icount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 28
  %9 = ptrtoint ptr %sb_icount to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sb_icount, align 128
  %call21 = tail call zeroext i1 @xfs_verify_icount(ptr noundef %mp, i64 noundef %10) #11
  br i1 %call21, label %lor.lhs.false22, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %sb_ifree = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 29
  %11 = ptrtoint ptr %sb_ifree to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sb_ifree, align 8
  %13 = ptrtoint ptr %sb_icount to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %sb_icount, align 128
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %14)
  %cmp26 = icmp ugt i64 %12, %14
  br i1 %cmp26, label %lor.lhs.false22.if.then27_crit_edge, label %lor.lhs.false22.if.end28_crit_edge

lor.lhs.false22.if.end28_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

lor.lhs.false22.if.then27_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false22.if.then27_crit_edge, %lor.lhs.false.if.then27_crit_edge, %land.lhs.true.if.then27_crit_edge
  tail call void @xfs_fs_mark_sick(ptr noundef %mp, i32 noundef 1) #11
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %lor.lhs.false22.if.end28_crit_edge, %if.end17.if.end28_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %15 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %16, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i53.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i53.not, label %if.end28.land.lhs.true32_crit_edge, label %lor.lhs.false30

if.end28.land.lhs.true32_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32

lor.lhs.false30:                                  ; preds = %if.end28
  %17 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %m_opstate.i, align 4
  %19 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i55.not = icmp eq i32 %19, 0
  br i1 %tobool.i55.not, label %lor.lhs.false30.if.end35_crit_edge, label %lor.lhs.false30.land.lhs.true32_crit_edge

lor.lhs.false30.land.lhs.true32_crit_edge:        ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true32

lor.lhs.false30.if.end35_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true32:                                  ; preds = %lor.lhs.false30.land.lhs.true32_crit_edge, %if.end28.land.lhs.true32_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sick.i) #11
  %20 = ptrtoint ptr %sick.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %sick.i, align 4, !annotation !134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %checked.i) #11
  %21 = ptrtoint ptr %checked.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %checked.i, align 4, !annotation !134
  call void @xfs_fs_measure_sickness(ptr noundef %mp, ptr noundef nonnull %sick.i, ptr noundef nonnull %checked.i) #11
  %22 = ptrtoint ptr %sick.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sick.i, align 4
  %and.i56 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.i57.not = icmp eq i32 %and.i56, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %checked.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sick.i) #11
  br i1 %tobool.i57.not, label %land.lhs.true32.return_crit_edge, label %land.lhs.true32.if.end35_crit_edge

land.lhs.true32.if.end35_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true32.return_crit_edge:                 ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end35:                                         ; preds = %land.lhs.true32.if.end35_crit_edge, %lor.lhs.false30.if.end35_crit_edge
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  %24 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_agcount, align 8
  %call37 = call i32 @xfs_initialize_perag_data(ptr noundef %mp, i32 noundef %25) #11
  br label %return

return:                                           ; preds = %if.end35, %land.lhs.true32.return_crit_edge, %if.then
  %retval.0 = phi i32 [ -117, %if.then ], [ %call37, %if.end35 ], [ 0, %land.lhs.true32.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inodegc_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_blockgc_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iget(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtmount_inodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_newmount(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_fs_reserve_ag_blocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_mount_finish(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_fs_unreserve_ag_blocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_clean(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_mount_quotas(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reserve_blocks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_unmount_quotas(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_rtunmount_inodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_irele(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_qm_unmount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inodegc_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_unmount_flush_inodes(ptr noundef %mp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xfs_log_force(ptr noundef %mp, i32 noundef 1) #11
  tail call void @xfs_extent_busy_wait_all(ptr noundef %mp) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_discard_wq to i32))
  %0 = load ptr, ptr @xfs_discard_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #11
  %m_opstate = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  tail call void @_set_bit(i32 noundef 0, ptr noundef %m_opstate) #11
  %m_ail = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 2
  %1 = ptrtoint ptr %m_ail to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %m_ail, align 4
  tail call void @xfs_ail_push_all_sync(ptr noundef %2) #11
  tail call void @xfs_inodegc_stop(ptr noundef %mp) #11
  %m_reclaim_work = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 87
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %m_reclaim_work) #11
  tail call void @xfs_reclaim_inodes(ptr noundef %mp) #11
  tail call void @xfs_health_unmount(ptr noundef %mp) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_mount_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buftarg_drain(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_free_perag(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_da_unmount(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_uuid_unmount(ptr nocapture noundef readonly %mp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sb_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 5
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.i = icmp slt i64 %1, 0
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @xfs_uuid_table_mutex, i32 noundef 0) #11
  %2 = load i32, ptr @xfs_uuid_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp18 = icmp sgt i32 %2, 0
  br i1 %cmp18, label %for.body.lr.ph, label %if.end.cond.false_crit_edge

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

for.body.lr.ph:                                   ; preds = %if.end
  %3 = load ptr, ptr @xfs_uuid_table, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.uuid_t, ptr %3, i32 %i.019
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx, ptr noundef nonnull dereferenceable(16) @uuid_null, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %for.body.for.inc_crit_edge, label %if.end3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %sb_uuid, ptr noundef dereferenceable(16) %arrayidx, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %for.end.thread, label %if.end3.for.inc_crit_edge

if.end3.for.inc_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.end.thread:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memset(ptr %arrayidx, i32 0, i32 16)
  br label %cond.end

for.inc:                                          ; preds = %if.end3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.cond.false_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cond.false_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

cond.false:                                       ; preds = %for.inc.cond.false_crit_edge, %if.end.cond.false_crit_edge
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.1, i32 noundef 119) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.thread
  tail call void @mutex_unlock(ptr noundef nonnull @xfs_uuid_table_mutex) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_errortag_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_error_sysfs_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_unmountfs(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  %resblks = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resblks) #11
  tail call void @xfs_inodegc_flush(ptr noundef %mp) #11
  tail call void @xfs_blockgc_stop(ptr noundef %mp) #11
  %call = tail call i32 @xfs_fs_unreserve_ag_blocks(ptr noundef %mp) #11
  tail call void @xfs_qm_unmount_quotas(ptr noundef %mp) #11
  tail call void @xfs_rtunmount_inodes(ptr noundef %mp) #11
  %m_rootip = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 11
  %0 = ptrtoint ptr %m_rootip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_rootip, align 16
  tail call void @xfs_irele(ptr noundef %1) #11
  %call.i = tail call i32 @xfs_log_force(ptr noundef %mp, i32 noundef 1) #11
  tail call void @xfs_extent_busy_wait_all(ptr noundef %mp) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @xfs_discard_wq to i32))
  %2 = load ptr, ptr @xfs_discard_wq, align 4
  tail call void @flush_workqueue(ptr noundef %2) #11
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  tail call void @_set_bit(i32 noundef 0, ptr noundef %m_opstate.i) #11
  %m_ail.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 2
  %3 = ptrtoint ptr %m_ail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_ail.i, align 4
  tail call void @xfs_ail_push_all_sync(ptr noundef %4) #11
  tail call void @xfs_inodegc_stop(ptr noundef %mp) #11
  %m_reclaim_work.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 87
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %m_reclaim_work.i) #11
  tail call void @xfs_reclaim_inodes(ptr noundef %mp) #11
  tail call void @xfs_health_unmount(ptr noundef %mp) #11
  tail call void @xfs_qm_unmount(ptr noundef %mp) #11
  %5 = ptrtoint ptr %resblks to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %resblks, align 8
  %call1 = call i32 @xfs_reserve_blocks(ptr noundef %mp, ptr noundef nonnull %resblks, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.28) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @xfs_log_unmount(ptr noundef %mp) #11
  call void @xfs_da_unmount(ptr noundef %mp) #11
  call fastcc void @xfs_uuid_unmount(ptr noundef %mp)
  %call2 = call i32 @xfs_errortag_clearall(ptr noundef %mp) #11
  %m_inodegc_shrinker = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 96
  call void @unregister_shrinker(ptr noundef %m_inodegc_shrinker) #11
  call void @xfs_free_perag(ptr noundef %mp) #11
  call void @xfs_errortag_del(ptr noundef %mp) #11
  call void @xfs_error_sysfs_del(ptr noundef %mp) #11
  %xs_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92, i32 1
  call void @kobject_del(ptr noundef %xs_kobj) #11
  call void @kobject_put(ptr noundef %xs_kobj) #11
  %complete.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 92, i32 1, i32 1
  call void @wait_for_completion(ptr noundef %complete.i) #11
  %m_kobj = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 88
  call void @kobject_del(ptr noundef %m_kobj) #11
  call void @kobject_put(ptr noundef %m_kobj) #11
  %complete.i22 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 88, i32 1
  call void @wait_for_completion(ptr noundef %complete.i22) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resblks) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_blockgc_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_log_unmount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_errortag_clearall(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_mod_fdblocks(ptr noundef %mp, i64 noundef %delta, i1 noundef zeroext %rsvd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp = icmp sgt i64 %delta, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %m_resblks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 84
  %0 = ptrtoint ptr %m_resblks to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_resblks, align 8
  %m_resblks_avail = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 85
  %2 = ptrtoint ptr %m_resblks_avail to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_resblks_avail, align 64
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp1 = icmp eq i64 %1, %3
  br i1 %cmp1, label %if.then3, label %if.end, !prof !133

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %m_fdblocks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %4 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %m_fdblocks, i64 noundef %delta, i32 noundef %4) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #11
  %5 = ptrtoint ptr %m_resblks to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %m_resblks, align 8
  %7 = ptrtoint ptr %m_resblks_avail to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %m_resblks_avail, align 64
  %sub = sub i64 %6, %8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %delta)
  %cmp6 = icmp sgt i64 %sub, %delta
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add = add i64 %8, %delta
  %9 = ptrtoint ptr %m_resblks_avail to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add, ptr %m_resblks_avail, align 64
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub9 = sub i64 %delta, %sub
  %10 = ptrtoint ptr %m_resblks_avail to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %6, ptr %m_resblks_avail, align 64
  %m_fdblocks12 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %11 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %m_fdblocks12, i64 noundef %sub9, i32 noundef %11) #11
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #11
  br label %cleanup

if.end15:                                         ; preds = %entry
  %m_fdblocks16 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 79
  %call = tail call i32 @__percpu_counter_compare(ptr noundef %m_fdblocks16, i64 noundef 2048, i32 noundef 1024) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp17 = icmp slt i32 %call, 0
  %. = select i1 %cmp17, i32 1, i32 1024
  %m_alloc_set_aside = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 48
  %12 = ptrtoint ptr %m_alloc_set_aside to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_alloc_set_aside, align 32
  %conv = zext i32 %13 to i64
  %m_allocbt_blks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 81
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %m_allocbt_blks, i32 noundef 8) #11
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %m_allocbt_blks) #11
  %add22 = add i64 %call.i, %conv
  tail call void @percpu_counter_add_batch(ptr noundef %m_fdblocks16, i64 noundef %delta, i32 noundef %.) #11
  %call25 = tail call i32 @__percpu_counter_compare(ptr noundef %m_fdblocks16, i64 noundef %add22, i32 noundef 1024) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %if.end15.cleanup_crit_edge, label %if.end29

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end29:                                         ; preds = %if.end15
  %m_sb_lock30 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock30) #11
  %sub32 = sub i64 0, %delta
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @percpu_counter_batch to i32))
  %14 = load i32, ptr @percpu_counter_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef %m_fdblocks16, i64 noundef %sub32, i32 noundef %14) #11
  br i1 %rsvd, label %if.end35, label %if.end29.fdblocks_enospc_crit_edge

if.end29.fdblocks_enospc_crit_edge:               ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %fdblocks_enospc

if.end35:                                         ; preds = %if.end29
  %m_resblks_avail36 = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 85
  %15 = ptrtoint ptr %m_resblks_avail36 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %m_resblks_avail36, align 64
  %add37 = add i64 %16, %delta
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %add37)
  %cmp38 = icmp sgt i64 %add37, -1
  br i1 %cmp38, label %if.then40, label %land.end

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %m_resblks_avail36 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add37, ptr %m_resblks_avail36, align 64
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock30) #11
  br label %cleanup

land.end:                                         ; preds = %if.end35
  %.b100 = load i1, ptr @xfs_mod_fdblocks.__already_done, align 1
  br i1 %.b100, label %land.end.fdblocks_enospc_crit_edge, label %if.then55, !prof !133

land.end.fdblocks_enospc_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fdblocks_enospc

if.then55:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @xfs_mod_fdblocks.__already_done, align 1
  tail call void (ptr, ptr, ...) @xfs_warn(ptr noundef %mp, ptr noundef nonnull @.str.30) #11
  br label %fdblocks_enospc

fdblocks_enospc:                                  ; preds = %if.then55, %land.end.fdblocks_enospc_crit_edge, %if.end29.fdblocks_enospc_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock30) #11
  br label %cleanup

cleanup:                                          ; preds = %fdblocks_enospc, %if.then40, %if.end15.cleanup_crit_edge, %if.end13, %if.then3
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 0, %if.end13 ], [ 0, %if.then40 ], [ -28, %fdblocks_enospc ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_compare(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_mod_frextents(ptr noundef %mp, i64 noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_sb_lock = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 76
  tail call void @_raw_spin_lock(ptr noundef %m_sb_lock) #11
  %sb_frextents = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 31
  %0 = ptrtoint ptr %sb_frextents to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sb_frextents, align 8
  %add = add i64 %1, %delta
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp = icmp slt i64 %add, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %sb_frextents to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %add, ptr %sb_frextents, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ -28, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %m_sb_lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_freesb(ptr nocapture noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_sb_bp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 3
  %0 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_sb_bp, align 16
  tail call void @xfs_buf_lock(ptr noundef %1) #11
  %2 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %m_sb_bp, align 16
  tail call void @xfs_buf_unlock(ptr noundef %1) #11
  tail call void @xfs_buf_rele(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_dev_is_read_only(ptr noundef %mp, ptr noundef %message) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 13
  %0 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_ddev_targp, align 8
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bt_bdev, align 4
  %bd_read_only.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %bd_read_only.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bd_read_only.i, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.rhs.i:                                        ; preds = %entry
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %part0.i.i, align 4
  %bd_read_only.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %bd_read_only.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bd_read_only.i.i, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %bdev_read_only.exit, label %lor.rhs.i.if.then_crit_edge

lor.rhs.i.if.then_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

bdev_read_only.exit:                              ; preds = %lor.rhs.i
  %state.i.i = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 12
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %lor.lhs.false, label %bdev_read_only.exit.if.then_crit_edge

bdev_read_only.exit.if.then_crit_edge:            ; preds = %bdev_read_only.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %bdev_read_only.exit
  %m_logdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 14
  %15 = ptrtoint ptr %m_logdev_targp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m_logdev_targp, align 4
  %bt_bdev1 = getelementptr inbounds %struct.xfs_buftarg, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %bt_bdev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bt_bdev1, align 4
  %bd_read_only.i15 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %bd_read_only.i15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bd_read_only.i15, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i16 = icmp eq i8 %20, 0
  br i1 %tobool.not.i16, label %lor.rhs.i21, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.rhs.i21:                                      ; preds = %lor.lhs.false
  %bd_disk.i17 = getelementptr inbounds %struct.block_device, ptr %18, i32 0, i32 17
  %21 = ptrtoint ptr %bd_disk.i17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bd_disk.i17, align 8
  %part0.i.i18 = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %part0.i.i18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %part0.i.i18, align 4
  %bd_read_only.i.i19 = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %bd_read_only.i.i19 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bd_read_only.i.i19, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i20 = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i20, label %bdev_read_only.exit25, label %lor.rhs.i21.if.then_crit_edge

lor.rhs.i21.if.then_crit_edge:                    ; preds = %lor.rhs.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

bdev_read_only.exit25:                            ; preds = %lor.rhs.i21
  %state.i.i22 = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 12
  %27 = ptrtoint ptr %state.i.i22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i.i22, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool3.not = icmp eq i32 %29, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %bdev_read_only.exit25.if.then_crit_edge

bdev_read_only.exit25.if.then_crit_edge:          ; preds = %bdev_read_only.exit25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false4:                                   ; preds = %bdev_read_only.exit25
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 15
  %30 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool5.not = icmp eq ptr %31, null
  br i1 %tobool5.not, label %lor.lhs.false4.return_crit_edge, label %land.lhs.true

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true:                                    ; preds = %lor.lhs.false4
  %bt_bdev7 = getelementptr inbounds %struct.xfs_buftarg, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %bt_bdev7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bt_bdev7, align 4
  %bd_read_only.i26 = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %bd_read_only.i26 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bd_read_only.i26, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i27 = icmp eq i8 %35, 0
  br i1 %tobool.not.i27, label %lor.rhs.i32, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.rhs.i32:                                      ; preds = %land.lhs.true
  %bd_disk.i28 = getelementptr inbounds %struct.block_device, ptr %33, i32 0, i32 17
  %36 = ptrtoint ptr %bd_disk.i28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bd_disk.i28, align 8
  %part0.i.i29 = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %part0.i.i29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %part0.i.i29, align 4
  %bd_read_only.i.i30 = getelementptr inbounds %struct.block_device, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %bd_read_only.i.i30 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bd_read_only.i.i30, align 8, !range !142
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i31 = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i31, label %bdev_read_only.exit36, label %lor.rhs.i32.if.then_crit_edge

lor.rhs.i32.if.then_crit_edge:                    ; preds = %lor.rhs.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

bdev_read_only.exit36:                            ; preds = %lor.rhs.i32
  %state.i.i33 = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 12
  %42 = ptrtoint ptr %state.i.i33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i.i33, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool9.not = icmp eq i32 %44, 0
  br i1 %tobool9.not, label %bdev_read_only.exit36.return_crit_edge, label %bdev_read_only.exit36.if.then_crit_edge

bdev_read_only.exit36.if.then_crit_edge:          ; preds = %bdev_read_only.exit36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

bdev_read_only.exit36.return_crit_edge:           ; preds = %bdev_read_only.exit36
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then:                                          ; preds = %bdev_read_only.exit36.if.then_crit_edge, %lor.rhs.i32.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %bdev_read_only.exit25.if.then_crit_edge, %lor.rhs.i21.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %bdev_read_only.exit.if.then_crit_edge, %lor.rhs.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.31, ptr noundef %message) #11
  tail call void (ptr, ptr, ...) @xfs_notice(ptr noundef %mp, ptr noundef nonnull @.str.32) #11
  br label %return

return:                                           ; preds = %if.then, %bdev_read_only.exit36.return_crit_edge, %lor.lhs.false4.return_crit_edge
  %retval.0 = phi i32 [ -30, %if.then ], [ 0, %bdev_read_only.exit36.return_crit_edge ], [ 0, %lor.lhs.false4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_force_summary_recalc(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_fs_mark_sick(ptr noundef %mp, i32 noundef 1) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_fs_mark_sick(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_add_incompat_log_feature(ptr noundef %mp, i32 noundef %feature) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %feature) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 1
  br i1 %cmp, label %entry.cond.end288_crit_edge, label %cond.false287, !prof !133

entry.cond.end288_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end288

cond.false287:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 1254) #11
  br label %cond.end288

cond.end288:                                      ; preds = %cond.false287, %entry.cond.end288_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %feature)
  %tobool290.not = icmp eq i32 %feature, 0
  br i1 %tobool290.not, label %cond.end288.cond.end301_crit_edge, label %cond.false300, !prof !133

cond.end288.cond.end301_crit_edge:                ; preds = %cond.end288
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end301

cond.false300:                                    ; preds = %cond.end288
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.1, i32 noundef 1255) #11
  br label %cond.end301

cond.end301:                                      ; preds = %cond.false300, %cond.end288.cond.end301_crit_edge
  %call302 = tail call i32 @xfs_log_force(ptr noundef %mp, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302)
  %tobool303.not = icmp eq i32 %call302, 0
  br i1 %tobool303.not, label %if.end, label %cond.end301.cleanup_crit_edge

cond.end301.cleanup_crit_edge:                    ; preds = %cond.end301
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end301
  %m_ail = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 2
  %0 = ptrtoint ptr %m_ail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m_ail, align 4
  tail call void @xfs_ail_push_all(ptr noundef %1) #11
  %m_sb_bp = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 3
  %2 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_sb_bp, align 16
  tail call void @xfs_buf_lock(ptr noundef %3) #11
  %4 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_sb_bp, align 16
  tail call void @xfs_buf_hold(ptr noundef %5) #11
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 66
  %6 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %m_opstate.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %if.end307, label %if.end.rele_crit_edge

if.end.rele_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rele

if.end307:                                        ; preds = %if.end
  %sb_features_log_incompat.i = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 49
  %9 = ptrtoint ptr %sb_features_log_incompat.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sb_features_log_incompat.i, align 4
  %and.i = and i32 %10, %feature
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %if.end310, label %if.end307.rele_crit_edge

if.end307.rele_crit_edge:                         ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #13
  br label %rele

if.end310:                                        ; preds = %if.end307
  %11 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m_sb_bp, align 16
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %b_addr, align 4
  tail call void @xfs_sb_to_disk(ptr noundef %14, ptr noundef %mp) #11
  %sb_features_log_incompat = getelementptr inbounds %struct.xfs_dsb, ptr %14, i32 0, i32 49
  %15 = ptrtoint ptr %sb_features_log_incompat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sb_features_log_incompat, align 4
  %or = or i32 %16, %feature
  store i32 %or, ptr %sb_features_log_incompat, align 4
  %17 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_sb_bp, align 16
  %call314 = tail call i32 @xfs_bwrite(ptr noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %tobool315.not = icmp eq i32 %call314, 0
  br i1 %tobool315.not, label %if.end317, label %shutdown

if.end317:                                        ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %sb_features_log_incompat.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sb_features_log_incompat.i, align 4
  %or.i = or i32 %20, %feature
  store i32 %or.i, ptr %sb_features_log_incompat.i, align 4
  %21 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %m_sb_bp, align 16
  tail call void @xfs_buf_unlock(ptr noundef %22) #11
  tail call void @xfs_buf_rele(ptr noundef %22) #11
  %call320 = tail call i32 @xfs_sync_sb(ptr noundef %mp, i1 noundef zeroext false) #11
  br label %cleanup

shutdown:                                         ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xfs_do_force_shutdown(ptr noundef %mp, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 1305) #11
  br label %rele

rele:                                             ; preds = %shutdown, %if.end307.rele_crit_edge, %if.end.rele_crit_edge
  %error.0 = phi i32 [ 0, %if.end307.rele_crit_edge ], [ %call314, %shutdown ], [ -5, %if.end.rele_crit_edge ]
  %23 = ptrtoint ptr %m_sb_bp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m_sb_bp, align 16
  tail call void @xfs_buf_unlock(ptr noundef %24) #11
  tail call void @xfs_buf_rele(ptr noundef %24) #11
  br label %cleanup

cleanup:                                          ; preds = %rele, %if.end317, %cond.end301.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %rele ], [ %call320, %if.end317 ], [ %call302, %cond.end301.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ail_push_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_hold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_sb_to_disk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bwrite(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_do_force_shutdown(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_clear_incompat_log_features(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_mod_delalloc(ptr noundef %mp, i64 noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_delalloc_blks = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 80
  tail call void @percpu_counter_add_batch(ptr noundef %m_delalloc_blks, i64 noundef %delta, i32 noundef 4096) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_buf_rele(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_compute_attr_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ialloc_setup_geometry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_ialloc_calc_rootino(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_check_new_dalign(ptr noundef %mp, i32 noundef %new_dalign, i64 noundef %calc_rootino) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_check_new_dalign, i32 0, i32 1), ptr blockaddress(@trace_xfs_check_new_dalign, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !143

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !133

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !144
  %call42 = tail call i32 @__traceiter_xfs_check_new_dalign(ptr noundef null, ptr noundef %mp, i32 noundef %new_dalign, i64 noundef %calc_rootino) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !145
  %13 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !133

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !123) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_check_new_dalign, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_check_new_dalign, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_check_new_dalign.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_xfs_check_new_dalign.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.43, i32 noundef 3836, ptr noundef nonnull @.str.44) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !147
  %31 = tail call i32 @llvm.read_register.i32(metadata !123) #11
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_check_new_dalign(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_icount(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_initialize_perag_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_fs_measure_sickness(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_extent_busy_wait_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ail_push_all_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inodegc_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_reclaim_inodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_health_unmount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !97, !98, !100, !102, !103, !105, !107, !109, !110, !111, !113, !115, !117, !119, !121}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_mount.c", i32 132, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_mount.c", i32 133, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_mount.c", i32 158, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_mount.c", i32 159, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_mount.c", i32 183, i32 17}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_mount.c", i32 201, i32 17}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_mount.c", i32 211, i32 17}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_mount.c", i32 623, i32 16}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_mount.c", i32 675, i32 24}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_mount.c", i32 711, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_mount.c", i32 730, i32 16}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_mount.c", i32 745, i32 16}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_mount.c", i32 759, i32 16}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/xfs/xfs_mount.c", i32 763, i32 6}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/xfs_mount.c", i32 764, i32 16}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/xfs_mount.c", i32 782, i32 16}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_mount.c", i32 816, i32 4}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/xfs_mount.c", i32 821, i32 2}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/xfs_mount.c", i32 823, i32 6}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_mount.c", i32 824, i32 16}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_mount.c", i32 842, i32 16}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/xfs/xfs_mount.c", i32 854, i32 17}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_mount.c", i32 873, i32 19}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_mount.c", i32 891, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_mount.c", i32 895, i32 16}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_mount.c", i32 915, i32 3}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_mount.c", i32 937, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/xfs_mount.c", i32 1051, i32 16}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/xfs/xfs_mount.c", i32 1081, i32 2}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_mount.c", i32 1172, i32 2}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_mount.c", i32 1224, i32 18}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_mount.c", i32 1225, i32 18}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/xfs/xfs_mount.c", i32 1254, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/xfs/xfs_mount.c", i32 1255, i32 2}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/xfs/xfs_mount.c", i32 1343, i32 16}
!72 = !{ptr @xfs_uuid_table_size, !73, !"xfs_uuid_table_size", i1 false, i1 false}
!73 = !{!"../fs/xfs/xfs_mount.c", i32 38, i32 12}
!74 = !{ptr @xfs_uuid_table, !75, !"xfs_uuid_table", i1 false, i1 false}
!75 = !{!"../fs/xfs/xfs_mount.c", i32 39, i32 16}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/xfs/xfs_mount.c", i32 299, i32 2}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../fs/xfs/xfs_mount.c", i32 309, i32 3}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../fs/xfs/xfs_mount.c", i32 316, i32 3}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/xfs/xfs_mount.c", i32 324, i32 1}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../fs/xfs/xfs_mount.c", i32 565, i32 2}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/xfs/xfs_mount.c", i32 267, i32 1}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../fs/xfs/xfs_mount.c", i32 274, i32 15}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../fs/xfs/xfs_trace.h", i32 3817, i32 1}
!92 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!94 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!96 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!97 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/xfs/xfs_sysfs.h", i32 39, i32 61}
!100 = !{ptr @init_completion.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../include/linux/completion.h", i32 87, i32 2}
!102 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/xfs/xfs_mount.c", i32 69, i32 16}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/xfs/xfs_mount.c", i32 96, i32 15}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../fs/xfs/xfs_mount.c", i32 37, i32 8}
!109 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @xfs_uuid_table_mutex, !108, !"xfs_uuid_table_mutex", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../fs/xfs/xfs_mount.c", i32 394, i32 16}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../fs/xfs/xfs_mount.c", i32 401, i32 16}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../fs/xfs/xfs_mount.c", i32 411, i32 16}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../fs/xfs/xfs_mount.c", i32 418, i32 16}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../fs/xfs/xfs_mount.c", i32 475, i32 15}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../fs/xfs/xfs_mount.c", i32 119, i32 2}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{!"auto-init"}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 1016681, i64 1016708, i64 1016730, i64 1016758}
!137 = !{i64 1017089, i64 1017116, i64 1017149, i64 1017170, i64 1017197, i64 1017223}
!138 = !{i64 1016564, i64 1016591}
!139 = !{i64 1016904, i64 1016931, i64 1016965, i64 1016986}
!140 = !{i64 2166441812}
!141 = !{i64 2166443429}
!142 = !{i8 0, i8 2}
!143 = !{i64 2148280428, i64 2148280433, i64 2148280446, i64 2148280490, i64 2148280524, i64 2148280545}
!144 = !{i64 2165828569}
!145 = !{i64 2165828828}
!146 = !{i64 2149982521}
!147 = !{i64 2149983557}
