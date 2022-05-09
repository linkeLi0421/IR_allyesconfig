; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_bmap_util.c_pt.bc'
source_filename = "../fs/xfs/xfs_bmap_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_inode = type { ptr, ptr, ptr, ptr, i64, %struct.xfs_imap, ptr, ptr, %struct.xfs_ifork, ptr, %struct.mrlock_t, %struct.atomic_t, %struct.llist_node, i16, i16, %struct.spinlock, i32, i64, i64, i64, i32, i32, %union.anon.91, i8, i16, i64, %struct.timespec64, %struct.inode, %struct.spinlock, %struct.work_struct, %struct.list_head }
%struct.xfs_imap = type { i64, i16, i16 }
%struct.xfs_ifork = type { i64, ptr, i32, i32, %union.anon.90, i16, i8, i32 }
%union.anon.90 = type { ptr }
%struct.mrlock_t = type { %struct.rw_semaphore, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.llist_node = type { ptr }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.75, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.76, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.77, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.75 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.77 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.78 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_ino_geometry = type { i64, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.xfs_trans_resv = type { %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res, %struct.xfs_trans_res }
%struct.xfs_trans_res = type { i32, i32, i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfs_error_cfg = type { %struct.xfs_kobj, i32, i32 }
%struct.xstats = type { ptr, %struct.xfs_kobj }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfs_kobj = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xfs_buftarg = type { i32, ptr, ptr, i64, ptr, i32, i32, i32, i32, %struct.shrinker, %struct.list_lru, %struct.percpu_counter, %struct.ratelimit_state }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.hlist_head = type { ptr }
%struct.xfs_bmalloca = type { ptr, ptr, %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec, i64, i32, i64, ptr, %struct.xfs_iext_cursor, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_iext_cursor = type { ptr, i32 }
%struct.getbmapx = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.kgetbmap = type { i64, i64, i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_swapext = type { i64, i64, i64, i64, i64, [16 x i8], %struct.xfs_bstat }
%struct.xfs_bstat = type { i64, i16, i16, i32, i32, i32, i32, i64, %struct.xfs_bstime, %struct.xfs_bstime, %struct.xfs_bstime, i64, i32, i32, i32, i32, i16, i16, i16, i16, i16, [2 x i8], i32, i32, i16, i16 }
%struct.xfs_bstime = type { i32, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_btree_block = type { i32, i16, i16, %union.anon.89 }
%union.anon.89 = type { %struct.xfs_btree_block_lhdr }
%struct.xfs_btree_block_lhdr = type { i64, i64, i64, i64, %struct.uuid_t, i64, i32, i32 }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ap->length\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/xfs/xfs_bmap_util.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ap->length % mp->m_sb.sb_rextsize == 0\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"!xfs_need_iread_extents(ifp)\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"xfs_isilocked(ip, XFS_IOLOCK_EXCL) || (VFS_I(ip)->i_state & I_FREEING)\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xfs_is_shutdown(mp)\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xfs_isilocked(ip, XFS_IOLOCK_EXCL)\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xfs_isilocked(ip, XFS_MMAPLOCK_EXCL)\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: inode 0x%llx format is incompatible for exchanging.\00", [40 x i8] zeroinitializer }, align 32
@__func__.xfs_swap_extents = private unnamed_addr constant [17 x i8] c"xfs_swap_extents\00", align 1
@.str.9 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"!ip->i_cowfp || ip->i_cowfp->if_format == XFS_DINODE_FMT_EXTENTS\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"!tip->i_cowfp || tip->i_cowfp->if_format == XFS_DINODE_FMT_EXTENTS\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(bmv->bmv_iflags & BMV_IF_DELALLOC) != 0\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_alloc_file_space = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_alloc_file_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_free_file_space = external dso_local global %struct.tracepoint, align 4
@trace_xfs_free_file_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_collapse_file_space = external dso_local global %struct.tracepoint, align 4
@trace_xfs_collapse_file_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_insert_file_space = external dso_local global %struct.tracepoint, align 4
@trace_xfs_insert_file_space.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_swap_extent_before = external dso_local global %struct.tracepoint, align 4
@trace_xfs_swap_extent_before.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nimaps == 1\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tirec.br_startblock != DELAYSTARTBLOCK\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tp->t_firstblock == NULLFSBLOCK\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"tirec.br_startoff == irec.br_startoff\00", [58 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_swap_extent_rmap_remap = external dso_local global %struct.tracepoint, align 4
@trace_xfs_swap_extent_rmap_remap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_swap_extent_rmap_remap_piece = external dso_local global %struct.tracepoint, align 4
@trace_xfs_swap_extent_rmap_remap_piece.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_swap_extent_rmap_error = external dso_local global %struct.tracepoint, align 4
@trace_xfs_swap_extent_rmap_error.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tip->i_delayed_blks == 0\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"!xfs_has_v3inodes(ip->i_mount) || (*src_log_flags & XFS_ILOG_DOWNER)\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"!xfs_has_v3inodes(ip->i_mount) || (*target_log_flags & XFS_ILOG_DOWNER)\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_swap_extent_after = external dso_local global %struct.tracepoint, align 4
@trace_xfs_swap_extent_after.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 98, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 99, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 601, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 655, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 734, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1103, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1104, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1727, i32 7 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1777, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1779, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 325, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 756, i32 1 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 108, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1391, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1392, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1399, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1410, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1542, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1551, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [26 x i8] c"../fs/xfs/xfs_bmap_util.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1563, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @xfs_fsb_to_db(ptr nocapture noundef readonly %ip, i64 noundef %fsb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %0 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %i_diflags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ip, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ip, align 8
  %sb_agblklog = getelementptr inbounds %struct.xfs_sb, ptr %8, i32 0, i32 24
  %9 = ptrtoint ptr %sb_agblklog to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sb_agblklog, align 4
  %conv5 = zext i8 %10 to i32
  %sh_prom6 = zext i8 %10 to i64
  %shr = lshr i64 %fsb, %sh_prom6
  %conv8 = and i64 %shr, 4294967295
  %sb_agblocks = getelementptr inbounds %struct.xfs_sb, ptr %8, i32 0, i32 11
  %11 = ptrtoint ptr %sb_agblocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_agblocks, align 4
  %conv11 = zext i32 %12 to i64
  %mul = mul nuw i64 %conv8, %conv11
  %notmask.i = shl nsw i32 -1, %conv5
  %sub.i = xor i32 %notmask.i, -1
  %13 = trunc i64 %fsb to i32
  %conv18 = and i32 %sub.i, %13
  %conv19 = zext i32 %conv18 to i64
  %add = add nuw i64 %mul, %conv19
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %.sink = phi ptr [ %8, %if.end ], [ %4, %land.lhs.true.return_crit_edge ]
  %add.sink = phi i64 [ %add, %if.end ], [ %fsb, %land.lhs.true.return_crit_edge ]
  %m_blkbb_log21 = getelementptr inbounds %struct.xfs_mount, ptr %.sink, i32 0, i32 28
  %14 = ptrtoint ptr %m_blkbb_log21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_blkbb_log21, align 1
  %sh_prom23 = zext i8 %15 to i64
  %shl24 = shl i64 %add.sink, %sh_prom23
  ret i64 %shl24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_zero_extent(ptr nocapture noundef readonly %ip, i64 noundef %start_fsb, i64 noundef %count_fsb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %2 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i_diflags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.if.end.i_crit_edge, label %land.lhs.true

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true:                                    ; preds = %entry
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %land.lhs.true.if.end.i_crit_edge, label %land.lhs.true.xfs_fsb_to_db.exit_crit_edge

land.lhs.true.xfs_fsb_to_db.exit_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_fsb_to_db.exit

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %m_ddev_targp = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %m_ddev_targp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m_ddev_targp, align 8
  %sb_agblklog.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %sb_agblklog.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sb_agblklog.i, align 4
  %conv5.i = zext i8 %10 to i32
  %sh_prom6.i = zext i8 %10 to i64
  %shr.i = lshr i64 %start_fsb, %sh_prom6.i
  %conv8.i = and i64 %shr.i, 4294967295
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_agblocks.i, align 4
  %conv11.i = zext i32 %12 to i64
  %mul.i = mul nuw i64 %conv8.i, %conv11.i
  %notmask.i.i = shl nsw i32 -1, %conv5.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %13 = trunc i64 %start_fsb to i32
  %conv18.i = and i32 %sub.i.i, %13
  %conv19.i = zext i32 %conv18.i to i64
  %add.i = add nuw i64 %mul.i, %conv19.i
  br label %xfs_fsb_to_db.exit

xfs_fsb_to_db.exit:                               ; preds = %if.end.i, %land.lhs.true.xfs_fsb_to_db.exit_crit_edge
  %cond24 = phi ptr [ %8, %if.end.i ], [ %6, %land.lhs.true.xfs_fsb_to_db.exit_crit_edge ]
  %add.sink.i = phi i64 [ %add.i, %if.end.i ], [ %start_fsb, %land.lhs.true.xfs_fsb_to_db.exit_crit_edge ]
  %m_blkbb_log21.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %14 = ptrtoint ptr %m_blkbb_log21.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %m_blkbb_log21.i, align 1
  %sh_prom23.i = zext i8 %15 to i64
  %shl24.i = shl i64 %add.sink.i, %sh_prom23.i
  %shr = ashr i64 %shl24.i, %sh_prom23.i
  %bt_bdev = getelementptr inbounds %struct.xfs_buftarg, ptr %cond24, i32 0, i32 1
  %16 = ptrtoint ptr %bt_bdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bt_bdev, align 4
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m_super, align 8
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %s_blocksize_bits, align 4
  %conv7 = zext i8 %21 to i32
  %sub = add nsw i32 %conv7, -9
  %sh_prom8 = zext i32 %sub to i64
  %shl = shl i64 %shr, %sh_prom8
  %shl14 = shl i64 %count_fsb, %sh_prom8
  %call15 = tail call i32 @blkdev_issue_zeroout(ptr noundef %17, i64 noundef %shl, i64 noundef %shl14, i32 noundef 3136, i32 noundef 0) #10
  ret i32 %call15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bmap_rtalloc(ptr noundef %ap) local_unnamed_addr #1 align 64 {
entry:
  %rtb = alloca i64, align 8
  %ralen = alloca i32, align 4
  %rtx = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ip = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 1
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %offset = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 4
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rtb) #10
  %6 = ptrtoint ptr %rtb to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %rtb, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ralen) #10
  %7 = ptrtoint ptr %ralen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ralen, align 4
  %length = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 5
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 8
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sb_rextsize, align 16
  %call = tail call i32 @xfs_get_extsz_hint(ptr noundef %1) #10
  %got = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 3
  %prev = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 2
  %eof = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 14
  %conv4 = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 17
  %m_rbmip = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 9
  %m_rsumip = getelementptr inbounds %struct.xfs_mount, ptr %3, i32 0, i32 10
  %blkno = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 6
  %wasdel = getelementptr inbounds %struct.xfs_bmalloca, ptr %ap, i32 0, i32 15
  br label %retry.outer

retry.outer:                                      ; preds = %if.then359, %entry
  %align.0.ph = phi i32 [ %117, %if.then359 ], [ %call, %entry ]
  %minlen.0.ph = phi i32 [ %117, %if.then359 ], [ %11, %entry ]
  %rtlocked.0.off0.ph = phi i1 [ true, %if.then359 ], [ false, %entry ]
  %ignore_locality.0.off0.ph = phi i1 [ %ignore_locality.0.off0, %if.then359 ], [ false, %entry ]
  br label %retry

retry:                                            ; preds = %land.lhs.true366.retry_crit_edge, %retry.outer
  %minlen.0 = phi i32 [ %minlen.1, %land.lhs.true366.retry_crit_edge ], [ %minlen.0.ph, %retry.outer ]
  %rtlocked.0.off0 = phi i1 [ true, %land.lhs.true366.retry_crit_edge ], [ %rtlocked.0.off0.ph, %retry.outer ]
  %ignore_locality.0.off0 = phi i1 [ true, %land.lhs.true366.retry_crit_edge ], [ %ignore_locality.0.off0.ph, %retry.outer ]
  %12 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sb_rextsize, align 16
  %div = udiv i32 %align.0.ph, %13
  %14 = ptrtoint ptr %eof to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %eof, align 8, !range !82
  %16 = zext i8 %15 to i32
  %17 = ptrtoint ptr %conv4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %conv4, align 1, !range !82
  %19 = zext i8 %18 to i32
  %call9 = call i32 @xfs_bmap_extsize_align(ptr noundef %3, ptr noundef %got, ptr noundef %prev, i32 noundef %align.0.ph, i32 noundef 1, i32 noundef %16, i32 noundef 0, i32 noundef %19, ptr noundef %offset, ptr noundef %length) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %retry.cleanup374_crit_edge

retry.cleanup374_crit_edge:                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup374

if.end:                                           ; preds = %retry
  %20 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  br i1 %tobool12.not, label %cond.false, label %if.end.cond.end_crit_edge, !prof !83

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 98) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 8
  %24 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sb_rextsize, align 16
  %rem = urem i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %cond.end.cond.end27_crit_edge, label %cond.false26, !prof !84

cond.end.cond.end27_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 99) #10
  br label %cond.end27

cond.end27:                                       ; preds = %cond.false26, %cond.end.cond.end27_crit_edge
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %27)
  %cmp29.not = icmp eq i64 %5, %27
  %sub = sub i64 %5, %27
  %28 = trunc i64 %sub to i32
  %conv34 = select i1 %cmp29.not, i32 0, i32 %28
  %minlen.1 = add i32 %conv34, %minlen.0
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %27)
  %cmp164.i = icmp ult i64 %27, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !84

if.then168.i:                                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i = trunc i64 %27 to i32
  %rem170.i = urem i32 %conv169.i, %align.0.ph
  br label %div_u64_rem.exit

if.else174.i:                                     ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #12
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %align.0.ph, i64 %27) #13, !srcloc !85
  %asmresult.i3.i = extractvalue { i64, i64 } %29, 0
  %shr.i.i = lshr i64 %asmresult.i3.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %div_u64_rem.exit

div_u64_rem.exit:                                 ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool38.not = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool38.not, label %lor.lhs.false, label %div_u64_rem.exit.if.then42_crit_edge

div_u64_rem.exit.if.then42_crit_edge:             ; preds = %div_u64_rem.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

lor.lhs.false:                                    ; preds = %div_u64_rem.exit
  %30 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length, align 8
  %rem40 = urem i32 %31, %align.0.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem40)
  %tobool41.not = icmp eq i32 %rem40, 0
  br i1 %tobool41.not, label %lor.lhs.false.if.end43_crit_edge, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then42

lor.lhs.false.if.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %div_u64_rem.exit.if.then42_crit_edge
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %lor.lhs.false.if.end43_crit_edge
  %prod.0 = phi i32 [ 1, %if.then42 ], [ %div, %lor.lhs.false.if.end43_crit_edge ]
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length, align 8
  %34 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sb_rextsize, align 16
  %div47 = udiv i32 %33, %35
  %mul = mul i32 %div47, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097150, i32 %mul)
  %cmp50 = icmp ugt i32 %mul, 2097150
  br i1 %cmp50, label %if.then52, label %if.end43.if.end56_crit_edge

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %div55 = udiv i32 2097151, %35
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end43.if.end56_crit_edge
  %storemerge = phi i32 [ %div55, %if.then52 ], [ %div47, %if.end43.if.end56_crit_edge ]
  %36 = ptrtoint ptr %ralen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge, ptr %ralen, align 4
  br i1 %rtlocked.0.off0, label %if.end56.if.end62_crit_edge, label %if.then58

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %m_rbmip, align 8
  call void @xfs_ilock(ptr noundef %38, i32 noundef 100663300) #10
  %39 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ap, align 8
  %41 = ptrtoint ptr %m_rbmip to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %m_rbmip, align 8
  call void @xfs_trans_ijoin(ptr noundef %40, ptr noundef %42, i32 noundef 4) #10
  %43 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %m_rsumip, align 4
  call void @xfs_ilock(ptr noundef %44, i32 noundef 117440516) #10
  %45 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ap, align 8
  %47 = ptrtoint ptr %m_rsumip to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m_rsumip, align 4
  call void @xfs_trans_ijoin(ptr noundef %46, ptr noundef %48, i32 noundef 4) #10
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end56.if.end62_crit_edge
  %49 = ptrtoint ptr %eof to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %eof, align 8, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool64.not = icmp eq i8 %50, 0
  br i1 %tobool64.not, label %if.end62.if.else_crit_edge, label %land.lhs.true

if.end62.if.else_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end62
  %51 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %cmp67 = icmp eq i64 %52, 0
  br i1 %cmp67, label %if.then69, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then69:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rtx) #10
  %53 = ptrtoint ptr %rtx to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 -1, ptr %rtx, align 8, !annotation !81
  %54 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ap, align 8
  %56 = ptrtoint ptr %ralen to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ralen, align 4
  %call71 = call i32 @xfs_rtpick_extent(ptr noundef %3, ptr noundef %55, i32 noundef %57, ptr noundef nonnull %rtx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %rtx to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %rtx, align 8
  %60 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sb_rextsize, align 16
  %conv77 = zext i32 %61 to i64
  %mul78 = mul i64 %59, %conv77
  %62 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %mul78, ptr %blkno, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtx) #10
  br label %if.end80

cleanup:                                          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtx) #10
  br label %cleanup374

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end62.if.else_crit_edge
  %63 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 0, ptr %blkno, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.else, %cleanup.thread
  call void @xfs_bmap_adjacent(ptr noundef %ap) #10
  br i1 %ignore_locality.0.off0, label %if.end80.if.end298_crit_edge, label %if.else84

if.end80.if.end298_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end298

if.else84:                                        ; preds = %if.end80
  %64 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sb_rextsize, align 16
  %66 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %67)
  %cmp274 = icmp ult i64 %67, 4294967296
  br i1 %cmp274, label %if.then282, label %if.else291, !prof !84

if.then282:                                       ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  %conv284 = trunc i64 %67 to i32
  %div288 = udiv i32 %conv284, %65
  %conv289 = zext i32 %div288 to i64
  br label %if.end298

if.else291:                                       ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #12
  %68 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %67) #13, !srcloc !85
  %asmresult1.i = extractvalue { i64, i64 } %68, 1
  br label %if.end298

if.end298:                                        ; preds = %if.else291, %if.then282, %if.end80.if.end298_crit_edge
  %shr.sink = phi i64 [ %conv289, %if.then282 ], [ %asmresult1.i, %if.else291 ], [ 0, %if.end80.if.end298_crit_edge ]
  %69 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %shr.sink, ptr %blkno, align 8
  %70 = ptrtoint ptr %rtb to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %shr.sink, ptr %rtb, align 8
  %71 = ptrtoint ptr %ralen to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ralen, align 4
  %73 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %length, align 8
  %74 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sb_rextsize, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %minlen.1)
  %cmp305 = icmp ugt i32 %75, %minlen.1
  br i1 %cmp305, label %if.end298.cond.end309_crit_edge, label %cond.false308

if.end298.cond.end309_crit_edge:                  ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end309

cond.false308:                                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #12
  %div303 = udiv i32 %minlen.1, %75
  br label %cond.end309

cond.end309:                                      ; preds = %cond.false308, %if.end298.cond.end309_crit_edge
  %cond310 = phi i32 [ %div303, %cond.false308 ], [ 1, %if.end298.cond.end309_crit_edge ]
  %76 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ap, align 8
  %78 = ptrtoint ptr %wasdel to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %wasdel, align 1, !range !82
  %80 = zext i8 %79 to i32
  %call316 = call i32 @xfs_rtallocate_extent(ptr noundef %77, i64 noundef %shr.sink, i32 noundef %cond310, i32 noundef %72, ptr noundef nonnull %ralen, i32 noundef %80, i32 noundef %prod.0, ptr noundef nonnull %rtb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %if.end319, label %cond.end309.cleanup374_crit_edge

cond.end309.cleanup374_crit_edge:                 ; preds = %cond.end309
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup374

if.end319:                                        ; preds = %cond.end309
  %81 = ptrtoint ptr %rtb to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %rtb, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %82)
  %cmp320.not = icmp eq i64 %82, -1
  %83 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sb_rextsize, align 16
  br i1 %cmp320.not, label %if.end354, label %if.then322

if.then322:                                       ; preds = %if.end319
  %conv325 = zext i32 %84 to i64
  %mul326 = mul i64 %82, %conv325
  %85 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %mul326, ptr %blkno, align 8
  %86 = ptrtoint ptr %ralen to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ralen, align 4
  %88 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sb_rextsize, align 16
  %mul330 = mul i32 %89, %87
  %90 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %mul330, ptr %length, align 8
  %conv333 = zext i32 %mul330 to i64
  %91 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ip, align 4
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %92, i32 0, i32 19
  %93 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %i_nblocks, align 8
  %add335 = add i64 %94, %conv333
  store i64 %add335, ptr %i_nblocks, align 8
  %95 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ap, align 8
  %97 = load ptr, ptr %ip, align 4
  call void @xfs_trans_log_inode(ptr noundef %96, ptr noundef %97, i32 noundef 1) #10
  %98 = ptrtoint ptr %wasdel to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %wasdel, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool339.not = icmp eq i8 %99, 0
  br i1 %tobool339.not, label %if.then322.if.end345_crit_edge, label %if.then340

if.then322.if.end345_crit_edge:                   ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end345

if.then340:                                       ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %length, align 8
  %conv342 = zext i32 %101 to i64
  %102 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ip, align 4
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %103, i32 0, i32 17
  %104 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %i_delayed_blks, align 8
  %sub344 = sub i64 %105, %conv342
  store i64 %sub344, ptr %i_delayed_blks, align 8
  br label %if.end345

if.end345:                                        ; preds = %if.then340, %if.then322.if.end345_crit_edge
  %106 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ap, align 8
  %108 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ip, align 4
  %110 = ptrtoint ptr %wasdel to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %wasdel, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool349.not = icmp eq i8 %111, 0
  %cond351 = select i1 %tobool349.not, i32 1048576, i32 4194304
  %112 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %length, align 8
  %conv353 = zext i32 %113 to i64
  call void @xfs_trans_mod_dquot_byino(ptr noundef %107, ptr noundef %109, i32 noundef %cond351, i64 noundef %conv353) #10
  br label %cleanup374

if.end354:                                        ; preds = %if.end319
  %cmp357 = icmp ugt i32 %align.0.ph, %84
  br i1 %cmp357, label %if.then359, label %if.end364

if.then359:                                       ; preds = %if.end354
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %5, ptr %offset, align 8
  %115 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %9, ptr %length, align 8
  %116 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sb_rextsize, align 16
  br label %retry.outer

if.end364:                                        ; preds = %if.end354
  br i1 %ignore_locality.0.off0, label %if.end364.if.end371_crit_edge, label %land.lhs.true366

if.end364.if.end371_crit_edge:                    ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end371

land.lhs.true366:                                 ; preds = %if.end364
  %118 = ptrtoint ptr %blkno to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %blkno, align 8
  %cmp368.not = icmp eq i64 %119, 0
  br i1 %cmp368.not, label %land.lhs.true366.if.end371_crit_edge, label %land.lhs.true366.retry_crit_edge

land.lhs.true366.retry_crit_edge:                 ; preds = %land.lhs.true366
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

land.lhs.true366.if.end371_crit_edge:             ; preds = %land.lhs.true366
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end371

if.end371:                                        ; preds = %land.lhs.true366.if.end371_crit_edge, %if.end364.if.end371_crit_edge
  %120 = ptrtoint ptr %blkno to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 -1, ptr %blkno, align 8
  %121 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %length, align 8
  br label %cleanup374

cleanup374:                                       ; preds = %if.end371, %if.end345, %cond.end309.cleanup374_crit_edge, %cleanup, %retry.cleanup374_crit_edge
  %retval.3 = phi i32 [ 0, %if.end345 ], [ 0, %if.end371 ], [ %call71, %cleanup ], [ %call316, %cond.end309.cleanup374_crit_edge ], [ %call9, %retry.cleanup374_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ralen) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rtb) #10
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_get_extsz_hint(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_extsize_align(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_ilock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_ijoin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtpick_extent(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmap_adjacent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_rtallocate_extent(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_mod_dquot_byino(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bmap_count_leaves(ptr noundef %ifp, ptr nocapture noundef %count) local_unnamed_addr #1 align 64 {
entry:
  %icur = alloca %struct.xfs_iext_cursor, align 4
  %got = alloca %struct.xfs_bmbt_irec, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #10
  %0 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !81
  %1 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got) #10
  %3 = call ptr @memset(ptr %got, i32 255, i32 32)
  call void @xfs_iext_first(ptr noundef %ifp, ptr noundef nonnull %icur) #10
  %call5 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %ifp, ptr noundef nonnull %icur, ptr noundef nonnull %got) #10
  br i1 %call5, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 1
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %numrecs.06 = phi i32 [ 0, %for.body.lr.ph ], [ %numrecs.1, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %5, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %br_blockcount, align 8
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %count, align 8
  %add = add i64 %9, %7
  store i64 %add, ptr %count, align 8
  %inc = add i32 %numrecs.06, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %numrecs.1 = phi i32 [ %numrecs.06, %for.body.for.inc_crit_edge ], [ %inc, %if.then ]
  call void @xfs_iext_next(ptr noundef %ifp, ptr noundef nonnull %icur) #10
  %call = call zeroext i1 @xfs_iext_get_extent(ptr noundef %ifp, ptr noundef nonnull %icur, ptr noundef nonnull %got) #10
  br i1 %call, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %numrecs.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %numrecs.1, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #10
  ret i32 %numrecs.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_first(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_get_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_next(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bmap_count_blocks(ptr noundef %tp, ptr noundef %ip, i32 noundef %whichfork, ptr nocapture noundef writeonly %nextents, ptr nocapture noundef %count) local_unnamed_addr #1 align 64 {
entry:
  %icur.i = alloca %struct.xfs_iext_cursor, align 4
  %got.i = alloca %struct.xfs_bmbt_irec, align 8
  %btblocks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %2 = zext i32 %whichfork to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %whichfork, label %cond.false3 [
    i32 0, label %cond.true
    i32 1, label %cond.true2
  ]

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end4

cond.true2:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %3 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_afp, align 8
  br label %cond.end4

cond.false3:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %5 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.false3, %cond.true2, %cond.true
  %cond5 = phi ptr [ %i_df, %cond.true ], [ %4, %cond.true2 ], [ %6, %cond.false3 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %btblocks) #10
  %7 = ptrtoint ptr %btblocks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %btblocks, align 4
  %8 = ptrtoint ptr %nextents to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nextents, align 4
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %count, align 8
  %tobool.not = icmp eq ptr %cond5, null
  br i1 %tobool.not, label %cond.end4.cleanup_crit_edge, label %if.end

cond.end4.cleanup_crit_edge:                      ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end4
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %cond5, i32 0, i32 6
  %10 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %if_format, align 2
  %conv = sext i8 %11 to i32
  %12 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %conv, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %if.end.sw.bb15_crit_edge
  ]

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call = tail call i32 @xfs_iread_extents(ptr noundef %tp, ptr noundef %ip, i32 noundef %whichfork) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %call9 = tail call ptr @xfs_bmbt_init_cursor(ptr noundef %1, ptr noundef %tp, ptr noundef %ip, i32 noundef %whichfork) #10
  %call10 = call i32 @xfs_btree_count_blocks(ptr noundef %call9, ptr noundef nonnull %btblocks) #10
  call void @xfs_btree_del_cursor(ptr noundef %call9, i32 noundef %call10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %btblocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %btblocks, align 4
  %sub = add i32 %14, -1
  %conv14 = zext i32 %sub to i64
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %count, align 8
  %add = add i64 %16, %conv14
  store i64 %add, ptr %count, align 8
  br label %sw.bb15

sw.bb15:                                          ; preds = %if.end13, %if.end.sw.bb15_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur.i) #10
  %17 = ptrtoint ptr %icur.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur.i, align 4, !annotation !81
  %18 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got.i) #10
  %20 = call ptr @memset(ptr %got.i, i32 255, i32 32)
  call void @xfs_iext_first(ptr noundef nonnull %cond5, ptr noundef nonnull %icur.i) #10
  %call5.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef nonnull %cond5, ptr noundef nonnull %icur.i, ptr noundef nonnull %got.i) #10
  br i1 %call5.i, label %for.body.lr.ph.i, label %sw.bb15.xfs_bmap_count_leaves.exit_crit_edge

sw.bb15.xfs_bmap_count_leaves.exit_crit_edge:     ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_bmap_count_leaves.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb15
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got.i, i32 0, i32 1
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %numrecs.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %numrecs.1.i, %for.inc.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %br_startblock.i, align 8
  %and.i.i = and i64 %22, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i)
  %cmp.i.not.i = icmp eq i64 %and.i.i, 4503599627239424
  br i1 %cmp.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %br_blockcount.i, align 8
  %25 = ptrtoint ptr %count to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %count, align 8
  %add.i = add i64 %26, %24
  store i64 %add.i, ptr %count, align 8
  %inc.i = add i32 %numrecs.06.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %numrecs.1.i = phi i32 [ %numrecs.06.i, %for.body.i.for.inc.i_crit_edge ], [ %inc.i, %if.then.i ]
  call void @xfs_iext_next(ptr noundef nonnull %cond5, ptr noundef nonnull %icur.i) #10
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef nonnull %cond5, ptr noundef nonnull %icur.i, ptr noundef nonnull %got.i) #10
  br i1 %call.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.xfs_bmap_count_leaves.exit_crit_edge

for.inc.i.xfs_bmap_count_leaves.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_bmap_count_leaves.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

xfs_bmap_count_leaves.exit:                       ; preds = %for.inc.i.xfs_bmap_count_leaves.exit_crit_edge, %sw.bb15.xfs_bmap_count_leaves.exit_crit_edge
  %numrecs.0.lcssa.i = phi i32 [ 0, %sw.bb15.xfs_bmap_count_leaves.exit_crit_edge ], [ %numrecs.1.i, %for.inc.i.xfs_bmap_count_leaves.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur.i) #10
  %27 = ptrtoint ptr %nextents to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %numrecs.0.lcssa.i, ptr %nextents, align 4
  br label %cleanup

cleanup:                                          ; preds = %xfs_bmap_count_leaves.exit, %if.end8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end4.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %xfs_bmap_count_leaves.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %btblocks) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iread_extents(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_bmbt_init_cursor(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_count_blocks(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_getbmap(ptr noundef %ip, ptr noundef %bmv, ptr nocapture noundef %out) local_unnamed_addr #1 align 64 {
entry:
  %shared.i = alloca i8, align 1
  %got = alloca %struct.xfs_bmbt_irec, align 8
  %rec = alloca %struct.xfs_bmbt_irec, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %bmv_iflags = getelementptr inbounds %struct.getbmapx, ptr %bmv, i32 0, i32 5
  %2 = ptrtoint ptr %bmv_iflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bmv_iflags, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got) #10
  %4 = call ptr @memset(ptr %got, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rec) #10
  %5 = call ptr @memset(ptr %rec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #10
  %6 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !81
  %7 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %tobool.not = icmp ult i32 %3, 64
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and4 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %9 = and i32 %3, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %9)
  %.not = icmp eq i32 %9, 33
  br i1 %.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %bmv_length = getelementptr inbounds %struct.getbmapx, ptr %bmv, i32 0, i32 2
  %10 = ptrtoint ptr %bmv_length to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bmv_length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %11)
  %cmp = icmp slt i64 %11, -1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %bmv_entries = getelementptr inbounds %struct.getbmapx, ptr %bmv, i32 0, i32 4
  %12 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bmv_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp11 = icmp eq i64 %11, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  br i1 %tobool3.not, label %if.end22, label %cond.end27.thread

if.end22:                                         ; preds = %if.end13
  br i1 %tobool5.not, label %sw.bb43, label %sw.bb33

cond.end27.thread:                                ; preds = %if.end13
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %13 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_afp, align 8
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 2) #10
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %15 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp29.not = icmp eq i8 %16, 0
  br i1 %cmp29.not, label %cond.end27.thread.out_unlock_iolock_crit_edge, label %if.end32

cond.end27.thread.out_unlock_iolock_crit_edge:    ; preds = %cond.end27.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_iolock

if.end32:                                         ; preds = %cond.end27.thread
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @xfs_ilock_attr_map_shared(ptr noundef %ip) #10
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end22
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %17 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_cowfp, align 4
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 2) #10
  %tobool34.not = icmp eq ptr %18, null
  br i1 %tobool34.not, label %sw.bb33.out_unlock_iolock_crit_edge, label %if.end36

sw.bb33.out_unlock_iolock_crit_edge:              ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_iolock

if.end36:                                         ; preds = %sw.bb33
  %call37 = tail call i32 @xfs_get_cowextsz_hint(ptr noundef %ip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m_super, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %s_maxbytes, align 8
  br label %if.end42

if.else40:                                        ; preds = %if.end36
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %23 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %i_vnode.i.i, align 8
  %25 = and i16 %24, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %25)
  %cmp.i = icmp eq i16 %25, -32768
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i) #10
  br label %if.end42

if.end.i:                                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %26 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %i_disk_size.i, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.end.i, %if.then.i, %if.then39
  %max_len.0 = phi i64 [ %22, %if.then39 ], [ %call3.i, %if.then.i ], [ %27, %if.end.i ]
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 8) #10
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end22
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 2) #10
  %and44 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %land.lhs.true46, label %sw.bb43.if.end57_crit_edge

sw.bb43.if.end57_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

land.lhs.true46:                                  ; preds = %sw.bb43
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %28 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %i_delayed_blks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool47.not = icmp eq i64 %29, 0
  br i1 %tobool47.not, label %lor.lhs.false, label %land.lhs.true46.if.then51_crit_edge

land.lhs.true46.if.then51_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

lor.lhs.false:                                    ; preds = %land.lhs.true46
  %i_vnode.i.i286 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %30 = ptrtoint ptr %i_vnode.i.i286 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %i_vnode.i.i286, align 8
  %32 = and i16 %31, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %32)
  %cmp.i287 = icmp eq i16 %32, -32768
  br i1 %cmp.i287, label %if.then.i289, label %if.end.i291

if.then.i289:                                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i288 = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i286) #10
  br label %XFS_ISIZE.exit293

if.end.i291:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i290 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %33 = ptrtoint ptr %i_disk_size.i290 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_disk_size.i290, align 8
  br label %XFS_ISIZE.exit293

XFS_ISIZE.exit293:                                ; preds = %if.end.i291, %if.then.i289
  %retval.0.i292 = phi i64 [ %call3.i288, %if.then.i289 ], [ %34, %if.end.i291 ]
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %35 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i292, i64 %36)
  %cmp49 = icmp sgt i64 %retval.0.i292, %36
  br i1 %cmp49, label %XFS_ISIZE.exit293.if.then51_crit_edge, label %XFS_ISIZE.exit293.if.end57_crit_edge

XFS_ISIZE.exit293.if.end57_crit_edge:             ; preds = %XFS_ISIZE.exit293
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

XFS_ISIZE.exit293.if.then51_crit_edge:            ; preds = %XFS_ISIZE.exit293
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then51

if.then51:                                        ; preds = %XFS_ISIZE.exit293.if.then51_crit_edge, %land.lhs.true46.if.then51_crit_edge
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %37 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %38, i64 noundef 0, i64 noundef 9223372036854775807) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool54.not = icmp eq i32 %call.i, 0
  br i1 %tobool54.not, label %if.then51.if.end57_crit_edge, label %if.then51.out_unlock_iolock_crit_edge

if.then51.out_unlock_iolock_crit_edge:            ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_iolock

if.then51.if.end57_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.end57:                                         ; preds = %if.then51.if.end57_crit_edge, %XFS_ISIZE.exit293.if.end57_crit_edge, %sw.bb43.if.end57_crit_edge
  %call58 = tail call i32 @xfs_get_extsz_hint(ptr noundef %ip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %if.end57.if.then64_crit_edge

if.end57.if.then64_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

lor.lhs.false60:                                  ; preds = %if.end57
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %39 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %i_diflags, align 2
  %41 = and i16 %40, 18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool63.not = icmp eq i16 %41, 0
  br i1 %tobool63.not, label %if.else67, label %lor.lhs.false60.if.then64_crit_edge

lor.lhs.false60.if.then64_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

if.then64:                                        ; preds = %lor.lhs.false60.if.then64_crit_edge, %if.end57.if.then64_crit_edge
  %m_super65 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %m_super65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %m_super65, align 8
  %s_maxbytes66 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %s_maxbytes66 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %s_maxbytes66, align 8
  br label %if.end69

if.else67:                                        ; preds = %lor.lhs.false60
  %i_vnode.i.i294 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %46 = ptrtoint ptr %i_vnode.i.i294 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %i_vnode.i.i294, align 8
  %48 = and i16 %47, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %48)
  %cmp.i295 = icmp eq i16 %48, -32768
  br i1 %cmp.i295, label %if.then.i297, label %if.end.i299

if.then.i297:                                     ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i296 = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i294) #10
  br label %if.end69

if.end.i299:                                      ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i298 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %49 = ptrtoint ptr %i_disk_size.i298 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_disk_size.i298, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.end.i299, %if.then.i297, %if.then64
  %max_len.1 = phi i64 [ %45, %if.then64 ], [ %call3.i296, %if.then.i297 ], [ %50, %if.end.i299 ]
  %call70 = tail call i32 @xfs_ilock_data_map_shared(ptr noundef %ip) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end69, %if.end42, %if.end32
  %cond28368 = phi ptr [ %i_df, %if.end69 ], [ %18, %if.end42 ], [ %14, %if.end32 ]
  %whichfork.0359366 = phi i32 [ 0, %if.end69 ], [ 2, %if.end42 ], [ 1, %if.end32 ]
  %lock.0 = phi i32 [ %call70, %if.end69 ], [ 8, %if.end42 ], [ %call, %if.end32 ]
  %max_len.2 = phi i64 [ %max_len.1, %if.end69 ], [ %max_len.0, %if.end42 ], [ 4294967296, %if.end32 ]
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %cond28368, i32 0, i32 6
  %51 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %if_format, align 2
  %conv71 = sext i8 %52 to i32
  %53 = zext i32 %conv71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %conv71, label %sw.default [
    i32 2, label %sw.epilog.sw.epilog74_crit_edge
    i32 3, label %sw.epilog.sw.epilog74_crit_edge426
    i32 1, label %sw.epilog.out_unlock_ilock_crit_edge
  ]

sw.epilog.out_unlock_ilock_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

sw.epilog.sw.epilog74_crit_edge426:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog74

sw.epilog.sw.epilog74_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog74

sw.default:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

sw.epilog74:                                      ; preds = %sw.epilog.sw.epilog74_crit_edge, %sw.epilog.sw.epilog74_crit_edge426
  %54 = ptrtoint ptr %bmv_length to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %bmv_length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %55)
  %cmp76 = icmp eq i64 %55, -1
  br i1 %cmp76, label %if.then78, label %sw.epilog74.if.end90_crit_edge

sw.epilog74.if.end90_crit_edge:                   ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then78:                                        ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #12
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %56 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %m_blockmask, align 8
  %conv79 = zext i32 %57 to i64
  %add = add i64 %max_len.2, %conv79
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %58 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %59 to i64
  %shr = lshr i64 %add, %sh_prom
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %60 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom82 = zext i8 %61 to i64
  %shl = shl i64 %shr, %sh_prom82
  %62 = ptrtoint ptr %bmv to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %bmv, align 8
  %sub = sub i64 %shl, %63
  %64 = tail call i64 @llvm.smax.i64(i64 %sub, i64 0)
  %65 = ptrtoint ptr %bmv_length to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %bmv_length, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then78, %sw.epilog74.if.end90_crit_edge
  %66 = ptrtoint ptr %bmv to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %bmv, align 8
  %68 = ptrtoint ptr %bmv_length to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %bmv_length, align 8
  %add93 = add i64 %69, %67
  %m_blkbb_log95 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %70 = ptrtoint ptr %m_blkbb_log95 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %m_blkbb_log95, align 1
  %conv96 = zext i8 %71 to i32
  %sh_prom97 = zext i8 %71 to i64
  %shr98 = ashr i64 %67, %sh_prom97
  %notmask = shl nsw i32 -1, %conv96
  %sub103 = xor i32 %notmask, -1
  %conv104 = sext i32 %sub103 to i64
  %add105 = add i64 %69, %conv104
  %shr109 = ashr i64 %add105, %sh_prom97
  %call110 = tail call i32 @xfs_iread_extents(ptr noundef null, ptr noundef %ip, i32 noundef %whichfork.0359366) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end90.out_unlock_ilock_crit_edge

if.end90.out_unlock_ilock_crit_edge:              ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

if.end113:                                        ; preds = %if.end90
  %call114 = call zeroext i1 @xfs_iext_lookup_extent(ptr noundef %ip, ptr noundef %cond28368, i64 noundef %shr98, ptr noundef nonnull %icur, ptr noundef nonnull %got) #10
  br i1 %call114, label %while.cond.preheader, label %if.then115

while.cond.preheader:                             ; preds = %if.end113
  %bmv_count.i = getelementptr inbounds %struct.getbmapx, ptr %bmv, i32 0, i32 3
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %rec, i32 0, i32 1
  %i_diflags.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %i_vnode.i.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %i_disk_size.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %br_state.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %rec, i32 0, i32 3
  %br_blockcount.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %rec, i32 0, i32 2
  %add172 = add i64 %shr109, %shr98
  br label %while.cond

if.then115:                                       ; preds = %if.end113
  %and116 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.then115.out_unlock_ilock_crit_edge, label %if.then118

if.then115.out_unlock_ilock_crit_edge:            ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

if.then118:                                       ; preds = %if.then115
  %i_vnode.i.i302 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %72 = ptrtoint ptr %i_vnode.i.i302 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %i_vnode.i.i302, align 8
  %74 = and i16 %73, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %74)
  %cmp.i303 = icmp eq i16 %74, -32768
  br i1 %cmp.i303, label %if.then.i305, label %if.end.i307

if.then.i305:                                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i304 = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i302) #10
  br label %XFS_ISIZE.exit309

if.end.i307:                                      ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i306 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %75 = ptrtoint ptr %i_disk_size.i306 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %i_disk_size.i306, align 8
  br label %XFS_ISIZE.exit309

XFS_ISIZE.exit309:                                ; preds = %if.end.i307, %if.then.i305
  %retval.0.i308 = phi i64 [ %call3.i304, %if.then.i305 ], [ %76, %if.end.i307 ]
  %m_blockmask120 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %77 = ptrtoint ptr %m_blockmask120 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %m_blockmask120, align 8
  %conv121 = zext i32 %78 to i64
  %add122 = add i64 %retval.0.i308, %conv121
  %sb_blocklog124 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %79 = ptrtoint ptr %sb_blocklog124 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %sb_blocklog124, align 8
  %sh_prom126 = zext i8 %80 to i64
  %shr127 = lshr i64 %add122, %sh_prom126
  call fastcc void @xfs_getbmap_report_hole(ptr noundef %ip, ptr noundef %bmv, ptr noundef %out, i64 noundef %add93, i64 noundef %shr98, i64 noundef %shr127)
  br label %out_unlock_ilock

while.cond:                                       ; preds = %if.end171.while.cond_crit_edge, %while.cond.preheader
  %bno.0 = phi i64 [ %add140, %if.end171.while.cond_crit_edge ], [ %shr98, %while.cond.preheader ]
  %81 = ptrtoint ptr %bmv_length to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %bmv_length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %cmp.i310 = icmp eq i64 %82, 0
  br i1 %cmp.i310, label %while.cond.out_unlock_ilock_crit_edge, label %xfs_getbmap_full.exit

while.cond.out_unlock_ilock_crit_edge:            ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

xfs_getbmap_full.exit:                            ; preds = %while.cond
  %83 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bmv_entries, align 4
  %85 = ptrtoint ptr %bmv_count.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %bmv_count.i, align 8
  %sub.i = add i32 %86, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %sub.i)
  %cmp1.i.not = icmp slt i32 %84, %sub.i
  br i1 %cmp1.i.not, label %while.body, label %xfs_getbmap_full.exit.out_unlock_ilock_crit_edge

xfs_getbmap_full.exit.out_unlock_ilock_crit_edge: ; preds = %xfs_getbmap_full.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

while.body:                                       ; preds = %xfs_getbmap_full.exit
  call void @xfs_trim_extent(ptr noundef nonnull %got, i64 noundef %shr98, i64 noundef %shr109) #10
  %87 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %got, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %88, i64 %bno.0)
  %cmp131 = icmp ugt i64 %88, %bno.0
  br i1 %cmp131, label %if.then133, label %while.body.if.end138_crit_edge

while.body.if.end138_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.then133:                                       ; preds = %while.body
  call fastcc void @xfs_getbmap_report_hole(ptr noundef %ip, ptr noundef %bmv, ptr noundef %out, i64 noundef %add93, i64 noundef %bno.0, i64 noundef %88)
  %89 = ptrtoint ptr %bmv_length to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %bmv_length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %90)
  %cmp.i312 = icmp eq i64 %90, 0
  br i1 %cmp.i312, label %if.then133.out_unlock_ilock_crit_edge, label %xfs_getbmap_full.exit318

if.then133.out_unlock_ilock_crit_edge:            ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

xfs_getbmap_full.exit318:                         ; preds = %if.then133
  %91 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bmv_entries, align 4
  %93 = ptrtoint ptr %bmv_count.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bmv_count.i, align 8
  %sub.i315 = add i32 %94, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %sub.i315)
  %cmp1.i316.not = icmp slt i32 %92, %sub.i315
  br i1 %cmp1.i316.not, label %xfs_getbmap_full.exit318.if.end138_crit_edge, label %xfs_getbmap_full.exit318.out_unlock_ilock_crit_edge

xfs_getbmap_full.exit318.out_unlock_ilock_crit_edge: ; preds = %xfs_getbmap_full.exit318
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

xfs_getbmap_full.exit318.if.end138_crit_edge:     ; preds = %xfs_getbmap_full.exit318
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

if.end138:                                        ; preds = %xfs_getbmap_full.exit318.if.end138_crit_edge, %while.body.if.end138_crit_edge
  %95 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %got, align 8
  %97 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %br_blockcount, align 8
  %add140 = add i64 %98, %96
  %99 = call ptr @memcpy(ptr %rec, ptr %got, i32 32)
  %100 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bmv_entries, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shared.i) #10
  %102 = ptrtoint ptr %shared.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %shared.i, align 1
  %call.i320376 = call i32 @xfs_reflink_trim_around_shared(ptr noundef %ip, ptr noundef nonnull %rec, ptr noundef nonnull %shared.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320376)
  %tobool.not.i377 = icmp eq i32 %call.i320376, 0
  br i1 %tobool.not.i377, label %if.end138.if.end.i321_crit_edge, label %if.end138.xfs_getbmap_report_one.exit_crit_edge

if.end138.xfs_getbmap_report_one.exit_crit_edge:  ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_getbmap_report_one.exit

if.end138.if.end.i321_crit_edge:                  ; preds = %if.end138
  br label %if.end.i321

if.end.i321:                                      ; preds = %xfs_getbmap_next_rec.exit.if.end.i321_crit_edge, %if.end138.if.end.i321_crit_edge
  %103 = phi i32 [ %182, %xfs_getbmap_next_rec.exit.if.end.i321_crit_edge ], [ %101, %if.end138.if.end.i321_crit_edge ]
  %add.ptr.i378 = getelementptr %struct.kgetbmap, ptr %out, i32 %103
  %104 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %br_startblock.i, align 8
  %and.i.i = and i64 %105, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i)
  %cmp.i.i = icmp eq i64 %and.i.i, 4503599627239424
  br i1 %cmp.i.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i321
  %106 = ptrtoint ptr %rec to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %rec, align 8
  %108 = ptrtoint ptr %i_vnode.i.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %i_vnode.i.i.i, align 8
  %110 = and i16 %109, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %110)
  %cmp.i87.i = icmp eq i16 %110, -32768
  br i1 %cmp.i87.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i.i) #10
  br label %XFS_ISIZE.exit.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %i_disk_size.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %i_disk_size.i.i, align 8
  br label %XFS_ISIZE.exit.i

XFS_ISIZE.exit.i:                                 ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i64 [ %call3.i.i, %if.then.i.i ], [ %112, %if.end.i.i ]
  %113 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ip, align 8
  %m_blockmask.i = getelementptr inbounds %struct.xfs_mount, ptr %114, i32 0, i32 31
  %115 = ptrtoint ptr %m_blockmask.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %m_blockmask.i, align 8
  %conv.i = zext i32 %116 to i64
  %add.i = add i64 %retval.0.i.i, %conv.i
  %sb_blocklog.i = getelementptr inbounds %struct.xfs_sb, ptr %114, i32 0, i32 20
  %117 = ptrtoint ptr %sb_blocklog.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %sb_blocklog.i, align 8
  %sh_prom.i = zext i8 %118 to i64
  %shr.i = lshr i64 %add.i, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %shr.i)
  %cmp8.i = icmp ult i64 %107, %shr.i
  br i1 %cmp8.i, label %if.then10.i, label %XFS_ISIZE.exit.i.if.end15.i_crit_edge

XFS_ISIZE.exit.i.if.end15.i_crit_edge:            ; preds = %XFS_ISIZE.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then10.i:                                      ; preds = %XFS_ISIZE.exit.i
  %119 = ptrtoint ptr %bmv_iflags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bmv_iflags, align 8
  %and.i = and i32 %120, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp11.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp11.not.i, label %cond.false.i, label %if.then10.i.if.end15.i_crit_edge, !prof !83

if.then10.i.if.end15.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

cond.false.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 325) #10
  br label %if.end15.i

if.end15.i:                                       ; preds = %cond.false.i, %if.then10.i.if.end15.i_crit_edge, %XFS_ISIZE.exit.i.if.end15.i_crit_edge
  %bmv_oflags.i = getelementptr %struct.kgetbmap, ptr %out, i32 %103, i32 3
  %121 = ptrtoint ptr %bmv_oflags.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bmv_oflags.i, align 8
  %or.i = or i32 %122, 2
  store i32 %or.i, ptr %bmv_oflags.i, align 8
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i321
  %123 = ptrtoint ptr %i_diflags.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %i_diflags.i.i, align 2
  %125 = and i16 %124, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool.not.i.i = icmp eq i16 %125, 0
  br i1 %tobool.not.i.i, label %if.else.i.if.end.i88.i_crit_edge, label %land.lhs.true.i.i

if.else.i.if.end.i88.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i88.i

land.lhs.true.i.i:                                ; preds = %if.else.i
  %126 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ip, align 8
  %m_rtdev_targp.i.i = getelementptr inbounds %struct.xfs_mount, ptr %127, i32 0, i32 15
  %128 = ptrtoint ptr %m_rtdev_targp.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %m_rtdev_targp.i.i, align 64
  %tobool1.not.i.i = icmp eq ptr %129, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i88.i_crit_edge, label %land.lhs.true.i.i.xfs_fsb_to_db.exit.i_crit_edge

land.lhs.true.i.i.xfs_fsb_to_db.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_fsb_to_db.exit.i

land.lhs.true.i.i.if.end.i88.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i88.i

if.end.i88.i:                                     ; preds = %land.lhs.true.i.i.if.end.i88.i_crit_edge, %if.else.i.if.end.i88.i_crit_edge
  %130 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ip, align 8
  %sb_agblklog.i.i = getelementptr inbounds %struct.xfs_sb, ptr %131, i32 0, i32 24
  %132 = ptrtoint ptr %sb_agblklog.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %sb_agblklog.i.i, align 4
  %conv5.i.i = zext i8 %133 to i32
  %sh_prom6.i.i = zext i8 %133 to i64
  %shr.i.i = lshr i64 %105, %sh_prom6.i.i
  %conv8.i.i = and i64 %shr.i.i, 4294967295
  %sb_agblocks.i.i = getelementptr inbounds %struct.xfs_sb, ptr %131, i32 0, i32 11
  %134 = ptrtoint ptr %sb_agblocks.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sb_agblocks.i.i, align 4
  %conv11.i.i = zext i32 %135 to i64
  %mul.i.i = mul nuw i64 %conv8.i.i, %conv11.i.i
  %notmask.i.i.i = shl nsw i32 -1, %conv5.i.i
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %136 = trunc i64 %105 to i32
  %conv18.i.i = and i32 %sub.i.i.i, %136
  %conv19.i.i = zext i32 %conv18.i.i to i64
  %add.i.i = add nuw i64 %mul.i.i, %conv19.i.i
  br label %xfs_fsb_to_db.exit.i

xfs_fsb_to_db.exit.i:                             ; preds = %if.end.i88.i, %land.lhs.true.i.i.xfs_fsb_to_db.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %131, %if.end.i88.i ], [ %127, %land.lhs.true.i.i.xfs_fsb_to_db.exit.i_crit_edge ]
  %add.sink.i.i = phi i64 [ %add.i.i, %if.end.i88.i ], [ %105, %land.lhs.true.i.i.xfs_fsb_to_db.exit.i_crit_edge ]
  %m_blkbb_log21.i.i = getelementptr inbounds %struct.xfs_mount, ptr %.sink.i.i, i32 0, i32 28
  %137 = ptrtoint ptr %m_blkbb_log21.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %m_blkbb_log21.i.i, align 1
  %sh_prom23.i.i = zext i8 %138 to i64
  %shl24.i.i = shl i64 %add.sink.i.i, %sh_prom23.i.i
  br label %if.end19.i

if.end19.i:                                       ; preds = %xfs_fsb_to_db.exit.i, %if.end15.i
  %shl24.i.sink.i = phi i64 [ %shl24.i.i, %xfs_fsb_to_db.exit.i ], [ -2, %if.end15.i ]
  %bmv_block18.i = getelementptr %struct.kgetbmap, ptr %out, i32 %103, i32 1
  %139 = ptrtoint ptr %bmv_block18.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %shl24.i.sink.i, ptr %bmv_block18.i, align 8
  %140 = ptrtoint ptr %br_state.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %br_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %141)
  %cmp20.i = icmp eq i32 %141, 1
  br i1 %cmp20.i, label %land.lhs.true.i, label %if.end19.i.if.end28.i_crit_edge

if.end19.i.if.end28.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %142 = ptrtoint ptr %bmv_iflags to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %bmv_iflags, align 8
  %and23.i = and i32 %143, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i.if.end28.i_crit_edge, label %if.then25.i

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %bmv_oflags26.i = getelementptr %struct.kgetbmap, ptr %out, i32 %103, i32 3
  %144 = ptrtoint ptr %bmv_oflags26.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %bmv_oflags26.i, align 8
  %or27.i = or i32 %145, 1
  store i32 %or27.i, ptr %bmv_oflags26.i, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %land.lhs.true.i.if.end28.i_crit_edge, %if.end19.i.if.end28.i_crit_edge
  %146 = ptrtoint ptr %shared.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %shared.i, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool29.not.i = icmp eq i8 %147, 0
  br i1 %tobool29.not.i, label %if.end28.i.lor.lhs.false143_crit_edge, label %if.then30.i

if.end28.i.lor.lhs.false143_crit_edge:            ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false143

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  %bmv_oflags31.i = getelementptr %struct.kgetbmap, ptr %out, i32 %103, i32 3
  %148 = ptrtoint ptr %bmv_oflags31.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %bmv_oflags31.i, align 8
  %or32.i = or i32 %149, 8
  store i32 %or32.i, ptr %bmv_oflags31.i, align 8
  br label %lor.lhs.false143

xfs_getbmap_report_one.exit:                      ; preds = %xfs_getbmap_next_rec.exit.xfs_getbmap_report_one.exit_crit_edge, %if.end138.xfs_getbmap_report_one.exit_crit_edge
  %call.i320.lcssa = phi i32 [ %call.i320, %xfs_getbmap_next_rec.exit.xfs_getbmap_report_one.exit_crit_edge ], [ %call.i320376, %if.end138.xfs_getbmap_report_one.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shared.i) #10
  br label %out_unlock_ilock

lor.lhs.false143:                                 ; preds = %if.then30.i, %if.end28.i.lor.lhs.false143_crit_edge
  %150 = ptrtoint ptr %rec to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %rec, align 8
  %152 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ip, align 8
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %153, i32 0, i32 28
  %154 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom37.i = zext i8 %155 to i64
  %shl.i = shl i64 %151, %sh_prom37.i
  %156 = ptrtoint ptr %add.ptr.i378 to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %shl.i, ptr %add.ptr.i378, align 8
  %157 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %br_blockcount.i, align 8
  %159 = load ptr, ptr %ip, align 8
  %m_blkbb_log39.i = getelementptr inbounds %struct.xfs_mount, ptr %159, i32 0, i32 28
  %160 = ptrtoint ptr %m_blkbb_log39.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %m_blkbb_log39.i, align 1
  %sh_prom41.i = zext i8 %161 to i64
  %shl42.i = shl i64 %158, %sh_prom41.i
  %bmv_length.i322 = getelementptr %struct.kgetbmap, ptr %out, i32 %103, i32 2
  %162 = ptrtoint ptr %bmv_length.i322 to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %shl42.i, ptr %bmv_length.i322, align 8
  %add45.i = add i64 %shl42.i, %shl.i
  %163 = ptrtoint ptr %bmv to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %add45.i, ptr %bmv, align 8
  %sub.i323 = sub i64 %add93, %add45.i
  %164 = call i64 @llvm.smax.i64(i64 %sub.i323, i64 0) #10
  %165 = ptrtoint ptr %bmv_length to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %164, ptr %bmv_length, align 8
  %166 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %bmv_entries, align 4
  %inc.i = add i32 %167, 1
  store i32 %inc.i, ptr %bmv_entries, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %shared.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i323)
  %cmp.i325 = icmp slt i64 %sub.i323, 1
  br i1 %cmp.i325, label %lor.lhs.false143.out_unlock_ilock_crit_edge, label %xfs_getbmap_full.exit331

lor.lhs.false143.out_unlock_ilock_crit_edge:      ; preds = %lor.lhs.false143
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

xfs_getbmap_full.exit331:                         ; preds = %lor.lhs.false143
  %168 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %bmv_entries, align 4
  %170 = ptrtoint ptr %bmv_count.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %bmv_count.i, align 8
  %sub.i328 = add i32 %171, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %sub.i328)
  %cmp1.i329.not = icmp slt i32 %169, %sub.i328
  br i1 %cmp1.i329.not, label %do.cond, label %xfs_getbmap_full.exit331.out_unlock_ilock_crit_edge

xfs_getbmap_full.exit331.out_unlock_ilock_crit_edge: ; preds = %xfs_getbmap_full.exit331
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

do.cond:                                          ; preds = %xfs_getbmap_full.exit331
  %172 = ptrtoint ptr %rec to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %rec, align 8
  %174 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %br_blockcount.i, align 8
  %add.i333 = add i64 %175, %173
  call void @__sanitizer_cov_trace_cmp8(i64 %add140, i64 %add.i333)
  %cmp.i334 = icmp eq i64 %add140, %add.i333
  br i1 %cmp.i334, label %do.end, label %if.end.i338

if.end.i338:                                      ; preds = %do.cond
  %176 = ptrtoint ptr %rec to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %add.i333, ptr %rec, align 8
  %177 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %br_startblock.i, align 8
  %and.i.i336 = and i64 %178, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i336)
  %cmp.i.i337 = icmp eq i64 %and.i.i336, 4503599627239424
  br i1 %cmp.i.i337, label %if.end.i338.xfs_getbmap_next_rec.exit_crit_edge, label %if.then6.i

if.end.i338.xfs_getbmap_next_rec.exit_crit_edge:  ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_getbmap_next_rec.exit

if.then6.i:                                       ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #12
  %add9.i = add i64 %178, %175
  %179 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %add9.i, ptr %br_startblock.i, align 8
  br label %xfs_getbmap_next_rec.exit

xfs_getbmap_next_rec.exit:                        ; preds = %if.then6.i, %if.end.i338.xfs_getbmap_next_rec.exit_crit_edge
  %sub.i339 = sub i64 %add140, %add.i333
  %180 = ptrtoint ptr %br_blockcount.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %sub.i339, ptr %br_blockcount.i, align 8
  %181 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %bmv_entries, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %shared.i) #10
  %183 = ptrtoint ptr %shared.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %shared.i, align 1
  %call.i320 = call i32 @xfs_reflink_trim_around_shared(ptr noundef %ip, ptr noundef nonnull %rec, ptr noundef nonnull %shared.i) #10
  %tobool.not.i = icmp eq i32 %call.i320, 0
  br i1 %tobool.not.i, label %xfs_getbmap_next_rec.exit.if.end.i321_crit_edge, label %xfs_getbmap_next_rec.exit.xfs_getbmap_report_one.exit_crit_edge

xfs_getbmap_next_rec.exit.xfs_getbmap_report_one.exit_crit_edge: ; preds = %xfs_getbmap_next_rec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_getbmap_report_one.exit

xfs_getbmap_next_rec.exit.if.end.i321_crit_edge:  ; preds = %xfs_getbmap_next_rec.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i321

do.end:                                           ; preds = %do.cond
  call void @xfs_iext_next(ptr noundef %cond28368, ptr noundef nonnull %icur) #10
  %call.i340 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %cond28368, ptr noundef nonnull %icur, ptr noundef nonnull %got) #10
  br i1 %call.i340, label %if.end171, label %if.then150

if.then150:                                       ; preds = %do.end
  %184 = ptrtoint ptr %i_vnode.i.i.i to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %i_vnode.i.i.i, align 8
  %186 = and i16 %185, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %186)
  %cmp.i342 = icmp eq i16 %186, -32768
  br i1 %cmp.i342, label %if.then.i344, label %if.end.i346

if.then.i344:                                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i343 = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i.i) #10
  br label %XFS_ISIZE.exit348

if.end.i346:                                      ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #12
  %187 = ptrtoint ptr %i_disk_size.i.i to i32
  call void @__asan_load8_noabort(i32 %187)
  %188 = load i64, ptr %i_disk_size.i.i, align 8
  br label %XFS_ISIZE.exit348

XFS_ISIZE.exit348:                                ; preds = %if.end.i346, %if.then.i344
  %retval.0.i347 = phi i64 [ %call3.i343, %if.then.i344 ], [ %188, %if.end.i346 ]
  %m_blockmask152 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %189 = ptrtoint ptr %m_blockmask152 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %m_blockmask152, align 8
  %conv153 = zext i32 %190 to i64
  %add154 = add i64 %retval.0.i347, %conv153
  %sb_blocklog156 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %191 = ptrtoint ptr %sb_blocklog156 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %sb_blocklog156, align 8
  %sh_prom158 = zext i8 %192 to i64
  %shr159 = lshr i64 %add154, %sh_prom158
  %193 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %bmv_entries, align 4
  %sub161 = add i32 %194, -1
  %bmv_oflags = getelementptr %struct.kgetbmap, ptr %out, i32 %sub161, i32 3
  %195 = ptrtoint ptr %bmv_oflags to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %bmv_oflags, align 8
  %or = or i32 %196, 4
  store i32 %or, ptr %bmv_oflags, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add140, i64 %shr159)
  %cmp165 = icmp ult i64 %add140, %shr159
  %or.cond285 = select i1 %tobool3.not, i1 %cmp165, i1 false
  br i1 %or.cond285, label %land.lhs.true167, label %XFS_ISIZE.exit348.out_unlock_ilock_crit_edge

XFS_ISIZE.exit348.out_unlock_ilock_crit_edge:     ; preds = %XFS_ISIZE.exit348
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

land.lhs.true167:                                 ; preds = %XFS_ISIZE.exit348
  %197 = ptrtoint ptr %bmv_length to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %bmv_length, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %198)
  %cmp.i350 = icmp eq i64 %198, 0
  br i1 %cmp.i350, label %land.lhs.true167.out_unlock_ilock_crit_edge, label %xfs_getbmap_full.exit356

land.lhs.true167.out_unlock_ilock_crit_edge:      ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

xfs_getbmap_full.exit356:                         ; preds = %land.lhs.true167
  %199 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %bmv_entries, align 4
  %201 = ptrtoint ptr %bmv_count.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %bmv_count.i, align 8
  %sub.i353 = add i32 %202, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %sub.i353)
  %cmp1.i354.not = icmp slt i32 %200, %sub.i353
  br i1 %cmp1.i354.not, label %if.then169, label %xfs_getbmap_full.exit356.out_unlock_ilock_crit_edge

xfs_getbmap_full.exit356.out_unlock_ilock_crit_edge: ; preds = %xfs_getbmap_full.exit356
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

if.then169:                                       ; preds = %xfs_getbmap_full.exit356
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @xfs_getbmap_report_hole(ptr noundef %ip, ptr noundef %bmv, ptr noundef %out, i64 noundef %add93, i64 noundef %add140, i64 noundef %shr159)
  br label %out_unlock_ilock

if.end171:                                        ; preds = %do.end
  %cmp173.not = icmp ult i64 %add140, %add172
  br i1 %cmp173.not, label %if.end171.while.cond_crit_edge, label %if.end171.out_unlock_ilock_crit_edge

if.end171.out_unlock_ilock_crit_edge:             ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock_ilock

if.end171.while.cond_crit_edge:                   ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

out_unlock_ilock:                                 ; preds = %if.end171.out_unlock_ilock_crit_edge, %if.then169, %xfs_getbmap_full.exit356.out_unlock_ilock_crit_edge, %land.lhs.true167.out_unlock_ilock_crit_edge, %XFS_ISIZE.exit348.out_unlock_ilock_crit_edge, %xfs_getbmap_full.exit331.out_unlock_ilock_crit_edge, %lor.lhs.false143.out_unlock_ilock_crit_edge, %xfs_getbmap_report_one.exit, %xfs_getbmap_full.exit318.out_unlock_ilock_crit_edge, %if.then133.out_unlock_ilock_crit_edge, %xfs_getbmap_full.exit.out_unlock_ilock_crit_edge, %while.cond.out_unlock_ilock_crit_edge, %XFS_ISIZE.exit309, %if.then115.out_unlock_ilock_crit_edge, %if.end90.out_unlock_ilock_crit_edge, %sw.default, %sw.epilog.out_unlock_ilock_crit_edge
  %error.3 = phi i32 [ -22, %sw.default ], [ 0, %sw.epilog.out_unlock_ilock_crit_edge ], [ %call110, %if.end90.out_unlock_ilock_crit_edge ], [ %call.i320.lcssa, %xfs_getbmap_report_one.exit ], [ 0, %XFS_ISIZE.exit309 ], [ 0, %if.then115.out_unlock_ilock_crit_edge ], [ 0, %if.then169 ], [ 0, %xfs_getbmap_full.exit356.out_unlock_ilock_crit_edge ], [ 0, %XFS_ISIZE.exit348.out_unlock_ilock_crit_edge ], [ 0, %land.lhs.true167.out_unlock_ilock_crit_edge ], [ 0, %xfs_getbmap_full.exit331.out_unlock_ilock_crit_edge ], [ 0, %lor.lhs.false143.out_unlock_ilock_crit_edge ], [ 0, %if.end171.out_unlock_ilock_crit_edge ], [ 0, %xfs_getbmap_full.exit318.out_unlock_ilock_crit_edge ], [ 0, %xfs_getbmap_full.exit.out_unlock_ilock_crit_edge ], [ 0, %while.cond.out_unlock_ilock_crit_edge ], [ 0, %if.then133.out_unlock_ilock_crit_edge ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef %lock.0) #10
  br label %out_unlock_iolock

out_unlock_iolock:                                ; preds = %out_unlock_ilock, %if.then51.out_unlock_iolock_crit_edge, %sw.bb33.out_unlock_iolock_crit_edge, %cond.end27.thread.out_unlock_iolock_crit_edge
  %error.4 = phi i32 [ %error.3, %out_unlock_ilock ], [ %call.i, %if.then51.out_unlock_iolock_crit_edge ], [ 0, %sw.bb33.out_unlock_iolock_crit_edge ], [ 0, %cond.end27.thread.out_unlock_iolock_crit_edge ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock_iolock, %if.end9.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.4, %out_unlock_iolock ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rec) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_attr_map_shared(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_get_cowextsz_hint(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_ilock_data_map_shared(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_lookup_extent(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @xfs_getbmap_report_hole(ptr nocapture noundef readonly %ip, ptr nocapture noundef %bmv, ptr nocapture noundef %out, i64 noundef %bmv_end, i64 noundef %bno, i64 noundef %end) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bmv_iflags = getelementptr inbounds %struct.getbmapx, ptr %bmv, i32 0, i32 5
  %0 = ptrtoint ptr %bmv_iflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bmv_iflags, align 8
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bmv_entries = getelementptr inbounds %struct.getbmapx, ptr %bmv, i32 0, i32 4
  %2 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bmv_entries, align 4
  %add.ptr = getelementptr %struct.kgetbmap, ptr %out, i32 %3
  %bmv_block = getelementptr %struct.kgetbmap, ptr %out, i32 %3, i32 1
  %4 = ptrtoint ptr %bmv_block to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %bmv_block, align 8
  %5 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ip, align 8
  %m_blkbb_log = getelementptr inbounds %struct.xfs_mount, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %m_blkbb_log to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %m_blkbb_log, align 1
  %sh_prom = zext i8 %8 to i64
  %shl = shl i64 %bno, %sh_prom
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %shl, ptr %add.ptr, align 8
  %sub = sub i64 %end, %bno
  %10 = load ptr, ptr %ip, align 8
  %m_blkbb_log2 = getelementptr inbounds %struct.xfs_mount, ptr %10, i32 0, i32 28
  %11 = ptrtoint ptr %m_blkbb_log2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_blkbb_log2, align 1
  %sh_prom4 = zext i8 %12 to i64
  %shl5 = shl i64 %sub, %sh_prom4
  %bmv_length = getelementptr %struct.kgetbmap, ptr %out, i32 %3, i32 2
  %13 = ptrtoint ptr %bmv_length to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl5, ptr %bmv_length, align 8
  %add = add i64 %shl5, %shl
  %14 = ptrtoint ptr %bmv to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %add, ptr %bmv, align 8
  %sub10 = sub i64 %bmv_end, %add
  %15 = tail call i64 @llvm.smax.i64(i64 %sub10, i64 0)
  %bmv_length12 = getelementptr inbounds %struct.getbmapx, ptr %bmv, i32 0, i32 2
  %16 = ptrtoint ptr %bmv_length12 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %bmv_length12, align 8
  %17 = ptrtoint ptr %bmv_entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bmv_entries, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %bmv_entries, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trim_extent(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iunlock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bmap_punch_delalloc_range(ptr noundef %ip, i64 noundef %start_fsb, i64 noundef %length) local_unnamed_addr #1 align 64 {
entry:
  %end_fsb = alloca i64, align 8
  %got = alloca %struct.xfs_bmbt_irec, align 8
  %del = alloca %struct.xfs_bmbt_irec, align 8
  %icur = alloca %struct.xfs_iext_cursor, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end_fsb) #10
  %add = add i64 %length, %start_fsb
  %0 = ptrtoint ptr %end_fsb to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %add, ptr %end_fsb, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %got) #10
  %1 = call ptr @memset(ptr %got, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %del) #10
  %2 = call ptr @memset(ptr %del, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %icur) #10
  %3 = ptrtoint ptr %icur to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %icur, align 4, !annotation !81
  %4 = getelementptr inbounds %struct.xfs_iext_cursor, ptr %icur, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !81
  %if_format.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %6 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp.i = icmp eq i8 %7, 3
  br i1 %cmp.i, label %xfs_need_iread_extents.exit, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

xfs_need_iread_extents.exit:                      ; preds = %entry
  %if_height.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.i = icmp eq i32 %9, 0
  br i1 %cmp2.i, label %cond.false, label %xfs_need_iread_extents.exit.cond.end_crit_edge, !prof !83

xfs_need_iread_extents.exit.cond.end_crit_edge:   ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 601) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %xfs_need_iread_extents.exit.cond.end_crit_edge, %entry.cond.end_crit_edge
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #10
  %call3 = call zeroext i1 @xfs_iext_lookup_extent_before(ptr noundef %ip, ptr noundef %i_df, ptr noundef nonnull %end_fsb, ptr noundef nonnull %icur, ptr noundef nonnull %got) #10
  br i1 %call3, label %while.cond.preheader, label %cond.end.out_unlock_crit_edge

cond.end.out_unlock_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

while.cond.preheader:                             ; preds = %cond.end
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %got, i32 0, i32 2
  %10 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %got, align 8
  %12 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %br_blockcount, align 8
  %add432 = add i64 %13, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %add432, i64 %start_fsb)
  %cmp33 = icmp ugt i64 %add432, %start_fsb
  br i1 %cmp33, label %while.body.lr.ph, label %while.cond.preheader.out_unlock_crit_edge

while.cond.preheader.out_unlock_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %br_blockcount5 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %del, i32 0, i32 2
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %del, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %14 = call ptr @memcpy(ptr %del, ptr %got, i32 32)
  call void @xfs_trim_extent(ptr noundef nonnull %del, i64 noundef %start_fsb, i64 noundef %length) #10
  %15 = ptrtoint ptr %br_blockcount5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %br_blockcount5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool6.not = icmp eq i64 %16, 0
  br i1 %tobool6.not, label %while.body.if.then9_crit_edge, label %lor.lhs.false

while.body.if.then9_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

lor.lhs.false:                                    ; preds = %while.body
  %17 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %br_startblock, align 8
  %and.i = and i64 %18, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i)
  %cmp.i31.not = icmp eq i64 %and.i, 4503599627239424
  br i1 %cmp.i31.not, label %if.end13, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %while.body.if.then9_crit_edge
  call void @xfs_iext_prev(ptr noundef %i_df, ptr noundef nonnull %icur) #10
  %call.i = call zeroext i1 @xfs_iext_get_extent(ptr noundef %i_df, ptr noundef nonnull %icur, ptr noundef nonnull %got) #10
  br i1 %call.i, label %if.then9.while.cond.backedge_crit_edge, label %if.then9.out_unlock_crit_edge

if.then9.out_unlock_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then9.while.cond.backedge_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %lor.lhs.false16.while.cond.backedge_crit_edge, %if.then9.while.cond.backedge_crit_edge
  %19 = ptrtoint ptr %got to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %got, align 8
  %21 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %br_blockcount, align 8
  %add4 = add i64 %22, %20
  %cmp = icmp ugt i64 %add4, %start_fsb
  br i1 %cmp, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.out_unlock_crit_edge

while.cond.backedge.out_unlock_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end13:                                         ; preds = %lor.lhs.false
  %call14 = call i32 @xfs_bmap_del_extent_delay(ptr noundef %ip, i32 noundef 0, ptr noundef nonnull %icur, ptr noundef nonnull %got, ptr noundef nonnull %del) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %if.end13.out_unlock_crit_edge

if.end13.out_unlock_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

lor.lhs.false16:                                  ; preds = %if.end13
  %call17 = call zeroext i1 @xfs_iext_get_extent(ptr noundef %i_df, ptr noundef nonnull %icur, ptr noundef nonnull %got) #10
  br i1 %call17, label %lor.lhs.false16.while.cond.backedge_crit_edge, label %lor.lhs.false16.out_unlock_crit_edge

lor.lhs.false16.out_unlock_crit_edge:             ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

lor.lhs.false16.while.cond.backedge_crit_edge:    ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

out_unlock:                                       ; preds = %lor.lhs.false16.out_unlock_crit_edge, %if.end13.out_unlock_crit_edge, %while.cond.backedge.out_unlock_crit_edge, %if.then9.out_unlock_crit_edge, %while.cond.preheader.out_unlock_crit_edge, %cond.end.out_unlock_crit_edge
  %error.1 = phi i32 [ 0, %cond.end.out_unlock_crit_edge ], [ 0, %while.cond.preheader.out_unlock_crit_edge ], [ %call14, %if.end13.out_unlock_crit_edge ], [ 0, %lor.lhs.false16.out_unlock_crit_edge ], [ 0, %if.then9.out_unlock_crit_edge ], [ 0, %while.cond.backedge.out_unlock_crit_edge ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %icur) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %del) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %got) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end_fsb) #10
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_iext_lookup_extent_before(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_del_extent_delay(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_can_free_eofblocks(ptr noundef %ip, i1 noundef zeroext %force) local_unnamed_addr #1 align 64 {
entry:
  %imap = alloca %struct.xfs_bmbt_irec, align 8
  %nimaps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imap) #10
  %0 = call ptr @memset(ptr %imap, i32 255, i32 32)
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #10
  %3 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %nimaps, align 4
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 1) #10
  br i1 %call, label %entry.cond.end_crit_edge, label %lor.rhs

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.rhs:                                          ; preds = %entry
  %i_state = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 24
  %4 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_state, align 8
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %lor.rhs.cond.end_crit_edge, !prof !83

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 656) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %entry.cond.end_crit_edge
  %i_vnode.i86 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %6 = ptrtoint ptr %i_vnode.i86 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i_vnode.i86, align 8
  %8 = and i16 %7, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %8)
  %cmp = icmp eq i16 %8, -32768
  br i1 %cmp, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %i_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 14
  %9 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp8 = icmp eq i64 %10, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %11 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11 = icmp eq i32 %14, 0
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true13:                                  ; preds = %land.lhs.true
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %15 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_delayed_blks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp14 = icmp eq i64 %16, 0
  br i1 %cmp14, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.if.end17_crit_edge

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true13.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %if_format.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %17 = ptrtoint ptr %if_format.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %if_format.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp.i = icmp eq i8 %18, 3
  br i1 %cmp.i, label %xfs_need_iread_extents.exit, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

xfs_need_iread_extents.exit:                      ; preds = %if.end17
  %if_height.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 3
  %19 = ptrtoint ptr %if_height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %if_height.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp2.i = icmp eq i32 %20, 0
  br i1 %cmp2.i, label %xfs_need_iread_extents.exit.cleanup_crit_edge, label %xfs_need_iread_extents.exit.if.end20_crit_edge

xfs_need_iread_extents.exit.if.end20_crit_edge:   ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

xfs_need_iread_extents.exit.cleanup_crit_edge:    ; preds = %xfs_need_iread_extents.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %xfs_need_iread_extents.exit.if.end20_crit_edge, %if.end17.if.end20_crit_edge
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %21 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %i_diflags, align 2
  %23 = and i16 %22, 18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool23.not = icmp eq i16 %23, 0
  br i1 %tobool23.not, label %if.end20.XFS_ISIZE.exit_crit_edge, label %if.then24

if.end20.XFS_ISIZE.exit_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %XFS_ISIZE.exit

if.then24:                                        ; preds = %if.end20
  br i1 %force, label %lor.lhs.false, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then24
  %i_delayed_blks26 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %24 = ptrtoint ptr %i_delayed_blks26 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %i_delayed_blks26, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %cmp27 = icmp eq i64 %25, 0
  br i1 %cmp27, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.XFS_ISIZE.exit_crit_edge

lor.lhs.false.XFS_ISIZE.exit_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %XFS_ISIZE.exit

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

XFS_ISIZE.exit:                                   ; preds = %lor.lhs.false.XFS_ISIZE.exit_crit_edge, %if.end20.XFS_ISIZE.exit_crit_edge
  %call3.i = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i86) #10
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 31
  %26 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %m_blockmask, align 8
  %conv33 = zext i32 %27 to i64
  %add = add i64 %call3.i, %conv33
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %2, i32 0, i32 20
  %28 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %29 to i64
  %shr = lshr i64 %add, %sh_prom
  %m_super = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 1
  %30 = ptrtoint ptr %m_super to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %m_super, align 8
  %s_maxbytes = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %s_maxbytes to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %s_maxbytes, align 8
  %add37 = add i64 %33, %conv33
  %shr42 = lshr i64 %add37, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %shr42, i64 %shr)
  %cmp43.not = icmp ugt i64 %shr42, %shr
  br i1 %cmp43.not, label %if.end46, label %XFS_ISIZE.exit.cleanup_crit_edge

XFS_ISIZE.exit.cleanup_crit_edge:                 ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %XFS_ISIZE.exit
  tail call void @xfs_ilock(ptr noundef %ip, i32 noundef 8) #10
  %sub = sub i64 %shr42, %shr
  %call47 = call i32 @xfs_bmapi_read(ptr noundef %ip, i64 noundef %shr, i64 noundef %sub, ptr noundef nonnull %imap, ptr noundef nonnull %nimaps, i32 noundef 0) #10
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false49:                                  ; preds = %if.end46
  %34 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp50 = icmp eq i32 %35, 0
  br i1 %cmp50, label %lor.lhs.false49.cleanup_crit_edge, label %if.end53

lor.lhs.false49.cleanup_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %lor.lhs.false49
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imap, i32 0, i32 1
  %36 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %37)
  %cmp54.not = icmp eq i64 %37, -2
  br i1 %cmp54.not, label %lor.rhs56, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #12
  %i_delayed_blks57 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %38 = ptrtoint ptr %i_delayed_blks57 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %i_delayed_blks57, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %tobool58 = icmp ne i64 %39, 0
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs56, %if.end53.cleanup_crit_edge, %lor.lhs.false49.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %XFS_ISIZE.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %xfs_need_iread_extents.exit.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %cond.end.cleanup_crit_edge ], [ false, %land.lhs.true13.cleanup_crit_edge ], [ false, %xfs_need_iread_extents.exit.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.then24.cleanup_crit_edge ], [ false, %XFS_ISIZE.exit.cleanup_crit_edge ], [ false, %lor.lhs.false49.cleanup_crit_edge ], [ false, %if.end46.cleanup_crit_edge ], [ true, %if.end53.cleanup_crit_edge ], [ %tobool58, %lor.rhs56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imap) #10
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_isilocked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_read(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_free_eofblocks(ptr noundef %ip) local_unnamed_addr #1 align 64 {
entry:
  %tp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #10
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !81
  %1 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ip, align 8
  %call = tail call i32 @xfs_qm_dqattach(ptr noundef %ip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  tail call void @inode_dio_wait(ptr noundef %i_vnode.i) #10
  %tr_itruncate = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 65, i32 1
  %call2 = call i32 @xfs_trans_alloc(ptr noundef %2, ptr noundef %tr_itruncate, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end8, label %if.then4

if.then4:                                         ; preds = %if.end
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %2, i32 0, i32 66
  %3 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %m_opstate.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %cond.false, label %if.then4.cleanup_crit_edge, !prof !83

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 734) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #10
  %6 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %7, ptr noundef %ip, i32 noundef 0) #10
  %8 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %i_vnode.i, align 8
  %10 = and i16 %9, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %10)
  %cmp.i = icmp eq i16 %10, -32768
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i) #10
  br label %XFS_ISIZE.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %11 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %call3.i, %if.then.i ], [ %12, %if.end.i ]
  %call10 = call i32 @xfs_itruncate_extents_flags(ptr noundef nonnull %tp, ptr noundef %ip, i32 noundef 0, i64 noundef %retval.0.i, i32 noundef 4096) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  br i1 %tobool11.not, label %if.end13, label %err_cancel

if.end13:                                         ; preds = %XFS_ISIZE.exit
  %call14 = call i32 @xfs_trans_commit(ptr noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_unlock_crit_edge

if.end13.out_unlock_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @xfs_inode_clear_eofblocks_tag(ptr noundef %ip) #10
  br label %out_unlock

err_cancel:                                       ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @xfs_trans_cancel(ptr noundef %14) #10
  br label %out_unlock

out_unlock:                                       ; preds = %err_cancel, %if.end17, %if.end13.out_unlock_crit_edge
  %error.0 = phi i32 [ %call10, %err_cancel ], [ %call14, %if.end13.out_unlock_crit_edge ], [ 0, %if.end17 ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %cond.false, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out_unlock ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then4.cleanup_crit_edge ], [ %call2, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_qm_dqattach(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_dio_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_itruncate_extents_flags(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_clear_eofblocks_tag(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_alloc_file_space(ptr noundef %ip, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %nimaps = alloca i32, align 4
  %tp = alloca ptr, align 4
  %imaps = alloca [1 x %struct.xfs_bmbt_irec], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #10
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %imaps) #10
  %3 = call ptr @memset(ptr %imaps, i32 255, i32 32)
  tail call fastcc void @trace_xfs_alloc_file_space(ptr noundef %ip)
  %m_opstate.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 66
  %4 = ptrtoint ptr %m_opstate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %m_opstate.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup300_crit_edge

entry.cleanup300_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup300

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xfs_qm_dqattach(ptr noundef %ip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup300_crit_edge

if.end.cleanup300_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup300

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %len)
  %cmp = icmp slt i64 %len, 1
  br i1 %cmp, label %if.end3.cleanup300_crit_edge, label %if.end5

if.end3.cleanup300_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup300

if.end5:                                          ; preds = %if.end3
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %7 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_diflags, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool6.not = icmp eq i16 %9, 0
  br i1 %tobool6.not, label %if.end5.land.end_crit_edge, label %land.rhs

if.end5.land.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool8 = icmp ne ptr %13, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end5.land.end_crit_edge
  %14 = phi i1 [ false, %if.end5.land.end_crit_edge ], [ %tobool8, %land.rhs ]
  %call9 = tail call i32 @xfs_get_extsz_hint(ptr noundef %ip) #10
  %15 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nimaps, align 4
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %17 to i64
  %shr = lshr i64 %offset, %sh_prom
  %add = add i64 %len, %offset
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %18 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m_blockmask, align 8
  %conv11 = zext i32 %19 to i64
  %add12 = add i64 %add, %conv11
  %shr17 = lshr i64 %add12, %sh_prom
  %sub = sub i64 %shr17, %shr
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %tobool18.not.not596 = icmp eq i64 %sub, 0
  br i1 %tobool18.not.not596, label %land.end.cleanup300_crit_edge, label %while.body.lr.ph

land.end.cleanup300_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup300

while.body.lr.ph:                                 ; preds = %land.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool23.not = icmp eq i32 %call9, 0
  %conv65 = zext i32 %call9 to i64
  %m_bm_maxlevels264 = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %imaps, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %startoffset_fsb.0599 = phi i64 [ %shr, %while.body.lr.ph ], [ %add293, %cleanup.while.body_crit_edge ]
  %allocatesize_fsb.0597 = phi i64 [ %sub, %while.body.lr.ph ], [ %sub294, %cleanup.while.body_crit_edge ]
  br i1 %tobool23.not, label %while.body.if.end240_crit_edge, label %if.else201, !prof !84

while.body.if.end240_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

if.else201:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %startoffset_fsb.0599)
  %cmp203 = icmp ult i64 %startoffset_fsb.0599, 4294967296
  br i1 %cmp203, label %if.then168.i, label %if.else174.i, !prof !84

if.then168.i:                                     ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #12
  %conv212 = trunc i64 %startoffset_fsb.0599 to i32
  %div215 = udiv i32 %conv212, %call9
  %conv216 = zext i32 %div215 to i64
  %conv169.i = trunc i64 %startoffset_fsb.0599 to i32
  %rem170.i = urem i32 %conv169.i, %call9
  br label %if.else162.i557

if.else174.i:                                     ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #12
  %20 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call9, i64 %startoffset_fsb.0599) #13, !srcloc !85
  %asmresult1.i = extractvalue { i64, i64 } %20, 1
  %21 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call9, i64 %startoffset_fsb.0599) #13, !srcloc !85
  %asmresult.i3.i = extractvalue { i64, i64 } %21, 0
  %shr.i.i = lshr i64 %asmresult.i3.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %if.else162.i557

if.else162.i557:                                  ; preds = %if.else174.i, %if.then168.i
  %conv216.pn = phi i64 [ %conv216, %if.then168.i ], [ %asmresult1.i, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %add225632 = add i64 %startoffset_fsb.0599, %allocatesize_fsb.0597
  %conv229 = zext i32 %__rem.0.i to i64
  %e.0 = add i64 %add225632, %conv229
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %e.0)
  %cmp164.i556 = icmp ult i64 %e.0, 4294967296
  br i1 %cmp164.i556, label %if.then168.i560, label %if.else174.i564, !prof !84

if.then168.i560:                                  ; preds = %if.else162.i557
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i558 = trunc i64 %e.0 to i32
  %rem170.i559 = urem i32 %conv169.i558, %call9
  br label %div_u64_rem.exit566

if.else174.i564:                                  ; preds = %if.else162.i557
  call void @__sanitizer_cov_trace_pc() #12
  %22 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call9, i64 %e.0) #13, !srcloc !85
  %asmresult.i3.i561 = extractvalue { i64, i64 } %22, 0
  %shr.i.i562 = lshr i64 %asmresult.i3.i561, 32
  %conv.i.i563 = trunc i64 %shr.i.i562 to i32
  br label %div_u64_rem.exit566

div_u64_rem.exit566:                              ; preds = %if.else174.i564, %if.then168.i560
  %__rem.0.i565 = phi i32 [ %rem170.i559, %if.then168.i560 ], [ %conv.i.i563, %if.else174.i564 ]
  %mul224616 = mul i64 %conv216.pn, %conv65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i565)
  %tobool233.not = icmp eq i32 %__rem.0.i565, 0
  br i1 %tobool233.not, label %div_u64_rem.exit566.if.end240_crit_edge, label %if.then234

div_u64_rem.exit566.if.end240_crit_edge:          ; preds = %div_u64_rem.exit566
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

if.then234:                                       ; preds = %div_u64_rem.exit566
  call void @__sanitizer_cov_trace_pc() #12
  %sub235 = sub i32 %call9, %__rem.0.i565
  %conv236 = zext i32 %sub235 to i64
  %add237 = add i64 %e.0, %conv236
  br label %if.end240

if.end240:                                        ; preds = %if.then234, %div_u64_rem.exit566.if.end240_crit_edge, %while.body.if.end240_crit_edge
  %s.1 = phi i64 [ %mul224616, %div_u64_rem.exit566.if.end240_crit_edge ], [ %mul224616, %if.then234 ], [ 0, %while.body.if.end240_crit_edge ]
  %e.1 = phi i64 [ %e.0, %div_u64_rem.exit566.if.end240_crit_edge ], [ %add237, %if.then234 ], [ %allocatesize_fsb.0597, %while.body.if.end240_crit_edge ]
  %sub241 = sub i64 %e.1, %s.1
  %23 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nimaps, align 4
  %mul242 = mul i32 %24, 2097151
  %conv243 = zext i32 %mul242 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub241, i64 %conv243)
  %cmp245 = icmp ult i64 %sub241, %conv243
  %extract.t = trunc i64 %sub241 to i32
  %cond250.off0 = select i1 %cmp245, i32 %extract.t, i32 %mul242
  %25 = ptrtoint ptr %m_bm_maxlevels264 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_bm_maxlevels264, align 8
  br i1 %14, label %if.then259, label %if.else263, !prof !83

if.then259:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  %sub261 = add i32 %26, -1
  br label %if.end268

if.else263:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  %sub266 = add i32 %cond250.off0, -1
  %add267 = add i32 %sub266, %26
  br label %if.end268

if.end268:                                        ; preds = %if.else263, %if.then259
  %dblocks.0 = phi i32 [ %sub261, %if.then259 ], [ %add267, %if.else263 ]
  %rblocks.0 = phi i32 [ %cond250.off0, %if.then259 ], [ 0, %if.else263 ]
  %call269 = call i32 @xfs_trans_alloc_inode(ptr noundef %ip, ptr noundef %m_resv, i32 noundef %dblocks.0, i32 noundef %rblocks.0, i1 noundef zeroext false, ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end272, label %if.end268.cleanup300_crit_edge

if.end268.cleanup300_crit_edge:                   ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup300

if.end272:                                        ; preds = %if.end268
  %call273 = call i32 @xfs_iext_count_may_overflow(ptr noundef %ip, i32 noundef 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.end276, label %if.end272.error299_crit_edge

if.end272.error299_crit_edge:                     ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #12
  br label %error299

if.end276:                                        ; preds = %if.end272
  %27 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tp, align 4
  %call277 = call i32 @xfs_bmapi_write(ptr noundef %28, ptr noundef %ip, i64 noundef %startoffset_fsb.0599, i64 noundef %allocatesize_fsb.0597, i32 noundef 8, i32 noundef 0, ptr noundef nonnull %imaps, ptr noundef nonnull %nimaps) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call277)
  %tobool278.not = icmp eq i32 %call277, 0
  br i1 %tobool278.not, label %if.end280, label %if.end276.error299_crit_edge

if.end276.error299_crit_edge:                     ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #12
  br label %error299

if.end280:                                        ; preds = %if.end276
  %29 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %i_diflags, align 2
  %31 = or i16 %30, 2
  store i16 %31, ptr %i_diflags, align 2
  %32 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tp, align 4
  call void @xfs_trans_log_inode(ptr noundef %33, ptr noundef %ip, i32 noundef 1) #10
  %34 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tp, align 4
  %call285 = call i32 @xfs_trans_commit(ptr noundef %35) #10
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %if.end288, label %if.end280.cleanup300_crit_edge

if.end280.cleanup300_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup300

if.end288:                                        ; preds = %if.end280
  %36 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp289 = icmp eq i32 %37, 0
  br i1 %cmp289, label %if.end288.cleanup300_crit_edge, label %cleanup

if.end288.cleanup300_crit_edge:                   ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup300

cleanup:                                          ; preds = %if.end288
  %38 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %br_blockcount, align 8
  %add293 = add i64 %39, %startoffset_fsb.0599
  %sub294 = sub i64 %allocatesize_fsb.0597, %39
  %tobool18.not.not = icmp eq i64 %sub294, 0
  br i1 %tobool18.not.not, label %cleanup.cleanup300_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup300_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup300

error299:                                         ; preds = %if.end276.error299_crit_edge, %if.end272.error299_crit_edge
  %error.1.ph589 = phi i32 [ %call277, %if.end276.error299_crit_edge ], [ %call273, %if.end272.error299_crit_edge ]
  %40 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %41) #10
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #10
  br label %cleanup300

cleanup300:                                       ; preds = %error299, %cleanup.cleanup300_crit_edge, %if.end288.cleanup300_crit_edge, %if.end280.cleanup300_crit_edge, %if.end268.cleanup300_crit_edge, %land.end.cleanup300_crit_edge, %if.end3.cleanup300_crit_edge, %if.end.cleanup300_crit_edge, %entry.cleanup300_crit_edge
  %retval.0 = phi i32 [ %error.1.ph589, %error299 ], [ -5, %entry.cleanup300_crit_edge ], [ %call1, %if.end.cleanup300_crit_edge ], [ -22, %if.end3.cleanup300_crit_edge ], [ 0, %land.end.cleanup300_crit_edge ], [ 0, %cleanup.cleanup300_crit_edge ], [ %call269, %if.end268.cleanup300_crit_edge ], [ %call285, %if.end280.cleanup300_crit_edge ], [ -28, %if.end288.cleanup300_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %imaps) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_alloc_file_space(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_alloc_file_space, i32 0, i32 1), ptr blockaddress(@trace_xfs_alloc_file_space, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !87
  %call42 = tail call i32 @__traceiter_xfs_alloc_file_space(ptr noundef null, ptr noundef %ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_alloc_file_space, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_alloc_file_space, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_alloc_file_space.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_alloc_file_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 756, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
declare dso_local i32 @xfs_trans_alloc_inode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_iext_count_may_overflow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmapi_write(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_flush_unmap_range(ptr noundef %ip, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %3)
  %cmp = icmp ugt i32 %3, 4096
  %conv = zext i32 %3 to i64
  %phi.bo = add nsw i64 %conv, -1
  %cond = select i1 %cmp, i64 %phi.bo, i64 4095
  %neg = xor i64 %cond, -1
  %and = and i64 %neg, %offset
  %add = add i64 %offset, -1
  %sub2 = add i64 %add, %len
  %or = or i64 %cond, %sub2
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %4 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_mapping, align 8
  %call6 = tail call i32 @filemap_write_and_wait_range(ptr noundef %5, i64 noundef %and, i64 noundef %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  tail call void @truncate_pagecache_range(ptr noundef %i_vnode.i, i64 noundef %and, i64 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_pagecache_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_free_file_space(ptr noundef %ip, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %tp.i = alloca ptr, align 4
  %done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done) #10
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  tail call fastcc void @trace_xfs_free_file_space(ptr noundef %ip)
  %call = tail call i32 @xfs_qm_dqattach(ptr noundef %ip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %len)
  %cmp = icmp slt i64 %len, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_blockmask, align 8
  %conv = zext i32 %4 to i64
  %add = add i64 %conv, %offset
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %6 to i64
  %shr = lshr i64 %add, %sh_prom
  %add4 = add i64 %len, %offset
  %shr9 = lshr i64 %add4, %sh_prom
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %7 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_diflags, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool11.not = icmp eq i16 %9, 0
  br i1 %tobool11.not, label %if.end2.if.end25_crit_edge, label %land.lhs.true

if.end2.if.end25_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end2
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %land.lhs.true.if.end25_crit_edge, label %land.lhs.true14

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

land.lhs.true14:                                  ; preds = %land.lhs.true
  %sb_rextsize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %sb_rextsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sb_rextsize, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp16 = icmp ugt i32 %15, 1
  br i1 %cmp16, label %if.then18, label %land.lhs.true14.if.end25_crit_edge

land.lhs.true14.if.end25_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then18:                                        ; preds = %land.lhs.true14
  %sub.i = add i32 %15, -1
  %conv.i = zext i32 %sub.i to i64
  %add.i = add i64 %shr, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp168.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i, label %if.else178.i, !prof !84

if.then172.i:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %conv173.i = trunc i64 %add.i to i32
  %div176.i = udiv i32 %conv173.i, %15
  %conv177.i = zext i32 %div176.i to i64
  br label %if.else162.i

if.else178.i:                                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %add.i) #13, !srcloc !85
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  br label %if.else162.i

if.else162.i:                                     ; preds = %if.else178.i, %if.then172.i
  %x.addr.0.i.ph = phi i64 [ %asmresult1.i.i, %if.else178.i ], [ %conv177.i, %if.then172.i ]
  %conv184.i188 = zext i32 %15 to i64
  %mul185.i189 = mul i64 %x.addr.0.i.ph, %conv184.i188
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr9)
  %cmp164.i = icmp ult i64 %shr9, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !84

if.then168.i:                                     ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv169.i = trunc i64 %shr9 to i32
  %div172.i = udiv i32 %conv169.i, %15
  %conv173.i155 = zext i32 %div172.i to i64
  br label %rounddown_64.exit

if.else174.i:                                     ; preds = %if.else162.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %shr9) #13, !srcloc !85
  %asmresult1.i.i156 = extractvalue { i64, i64 } %17, 1
  br label %rounddown_64.exit

rounddown_64.exit:                                ; preds = %if.else174.i, %if.then168.i
  %x.addr.0.i157 = phi i64 [ %conv173.i155, %if.then168.i ], [ %asmresult1.i.i156, %if.else174.i ]
  %mul181.i = mul i64 %x.addr.0.i157, %conv184.i188
  br label %if.end25

if.end25:                                         ; preds = %rounddown_64.exit, %land.lhs.true14.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end2.if.end25_crit_edge
  %startoffset_fsb.0 = phi i64 [ %mul185.i189, %rounddown_64.exit ], [ %shr, %land.lhs.true14.if.end25_crit_edge ], [ %shr, %land.lhs.true.if.end25_crit_edge ], [ %shr, %if.end2.if.end25_crit_edge ]
  %endoffset_fsb.0 = phi i64 [ %mul181.i, %rounddown_64.exit ], [ %shr9, %land.lhs.true14.if.end25_crit_edge ], [ %shr9, %land.lhs.true.if.end25_crit_edge ], [ %shr9, %if.end2.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %endoffset_fsb.0, i64 %startoffset_fsb.0)
  %cmp26 = icmp ugt i64 %endoffset_fsb.0, %startoffset_fsb.0
  br i1 %cmp26, label %while.cond.preheader, label %if.end25.if.end34_crit_edge

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

while.cond.preheader:                             ; preds = %if.end25
  %sub = sub i64 %endoffset_fsb.0, %startoffset_fsb.0
  br label %while.cond

while.cond:                                       ; preds = %xfs_unmap_extent.exit.while.cond_crit_edge, %while.cond.preheader
  %18 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool29.not = icmp eq i32 %19, 0
  br i1 %tobool29.not, label %while.body, label %while.cond.if.end34_crit_edge

while.cond.if.end34_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

while.body:                                       ; preds = %while.cond
  %20 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp.i) #10
  %22 = ptrtoint ptr %tp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp.i, align 4, !annotation !81
  %m_bm_maxlevels.i = getelementptr inbounds %struct.xfs_mount, ptr %21, i32 0, i32 43
  %23 = ptrtoint ptr %m_bm_maxlevels.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %m_bm_maxlevels.i, align 8
  %sub.i158 = add i32 %24, -1
  %m_resv.i = getelementptr inbounds %struct.xfs_mount, ptr %21, i32 0, i32 65
  %call.i = call i32 @xfs_trans_alloc_inode(ptr noundef %ip, ptr noundef %m_resv.i, i32 noundef %sub.i158, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %tp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i159 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i159, label %if.end.i, label %xfs_unmap_extent.exit.thread

xfs_unmap_extent.exit.thread:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i) #10
  br label %cleanup

if.end.i:                                         ; preds = %while.body
  %call1.i = call i32 @xfs_iext_count_may_overflow(ptr noundef %ip, i32 noundef 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.xfs_unmap_extent.exit.thread201_crit_edge

if.end.i.xfs_unmap_extent.exit.thread201_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_unmap_extent.exit.thread201

if.end4.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tp.i, align 4
  %call5.i = call i32 @xfs_bunmapi(ptr noundef %26, ptr noundef %ip, i64 noundef %startoffset_fsb.0, i64 noundef %sub, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %xfs_unmap_extent.exit, label %if.end4.i.xfs_unmap_extent.exit.thread201_crit_edge

if.end4.i.xfs_unmap_extent.exit.thread201_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xfs_unmap_extent.exit.thread201

xfs_unmap_extent.exit.thread201:                  ; preds = %if.end4.i.xfs_unmap_extent.exit.thread201_crit_edge, %if.end.i.xfs_unmap_extent.exit.thread201_crit_edge
  %error.1.i = phi i32 [ %call1.i, %if.end.i.xfs_unmap_extent.exit.thread201_crit_edge ], [ %call5.i, %if.end4.i.xfs_unmap_extent.exit.thread201_crit_edge ]
  %27 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tp.i, align 4
  call void @xfs_trans_cancel(ptr noundef %28) #10
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i) #10
  br label %cleanup

xfs_unmap_extent.exit:                            ; preds = %if.end4.i
  %29 = ptrtoint ptr %tp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tp.i, align 4
  %call9.i = call i32 @xfs_trans_commit(ptr noundef %30) #10
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp.i) #10
  %tobool31.not = icmp eq i32 %call9.i, 0
  br i1 %tobool31.not, label %xfs_unmap_extent.exit.while.cond_crit_edge, label %xfs_unmap_extent.exit.cleanup_crit_edge

xfs_unmap_extent.exit.cleanup_crit_edge:          ; preds = %xfs_unmap_extent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

xfs_unmap_extent.exit.while.cond_crit_edge:       ; preds = %xfs_unmap_extent.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end34:                                         ; preds = %while.cond.if.end34_crit_edge, %if.end25.if.end34_crit_edge
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %31 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %i_vnode.i.i, align 8
  %33 = and i16 %32, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %33)
  %cmp.i160 = icmp eq i16 %33, -32768
  br i1 %cmp.i160, label %if.then.i, label %if.end.i161

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i) #10
  br label %XFS_ISIZE.exit

if.end.i161:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %34 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i161, %if.then.i
  %retval.0.i162 = phi i64 [ %call3.i, %if.then.i ], [ %35, %if.end.i161 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i162, i64 %offset)
  %cmp36.not = icmp sgt i64 %retval.0.i162, %offset
  br i1 %cmp36.not, label %if.end39, label %XFS_ISIZE.exit.cleanup_crit_edge

XFS_ISIZE.exit.cleanup_crit_edge:                 ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %XFS_ISIZE.exit
  %36 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %i_vnode.i.i, align 8
  %38 = and i16 %37, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %38)
  %cmp.i164 = icmp eq i16 %38, -32768
  br i1 %cmp.i164, label %if.then.i166, label %if.end.i168

if.then.i166:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i165 = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i) #10
  br label %XFS_ISIZE.exit170

if.end.i168:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i167 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %39 = ptrtoint ptr %i_disk_size.i167 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %i_disk_size.i167, align 8
  br label %XFS_ISIZE.exit170

XFS_ISIZE.exit170:                                ; preds = %if.end.i168, %if.then.i166
  %retval.0.i169 = phi i64 [ %call3.i165, %if.then.i166 ], [ %40, %if.end.i168 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add4, i64 %retval.0.i169)
  %cmp42 = icmp sgt i64 %add4, %retval.0.i169
  br i1 %cmp42, label %if.then44, label %XFS_ISIZE.exit170.if.end47_crit_edge

XFS_ISIZE.exit170.if.end47_crit_edge:             ; preds = %XFS_ISIZE.exit170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then44:                                        ; preds = %XFS_ISIZE.exit170
  %41 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %i_vnode.i.i, align 8
  %43 = and i16 %42, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %43)
  %cmp.i172 = icmp eq i16 %43, -32768
  br i1 %cmp.i172, label %if.then.i174, label %if.end.i176

if.then.i174:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i173 = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i) #10
  br label %XFS_ISIZE.exit178

if.end.i176:                                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i175 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %44 = ptrtoint ptr %i_disk_size.i175 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %i_disk_size.i175, align 8
  br label %XFS_ISIZE.exit178

XFS_ISIZE.exit178:                                ; preds = %if.end.i176, %if.then.i174
  %retval.0.i177 = phi i64 [ %call3.i173, %if.then.i174 ], [ %45, %if.end.i176 ]
  %sub46 = sub i64 %retval.0.i177, %offset
  br label %if.end47

if.end47:                                         ; preds = %XFS_ISIZE.exit178, %XFS_ISIZE.exit170.if.end47_crit_edge
  %len.addr.0 = phi i64 [ %sub46, %XFS_ISIZE.exit178 ], [ %len, %XFS_ISIZE.exit170.if.end47_crit_edge ]
  %call48 = call i32 @xfs_zero_range(ptr noundef %ip, i64 noundef %offset, i64 noundef %len.addr.0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51:                                         ; preds = %if.end47
  %add52 = add i64 %len.addr.0, %offset
  %46 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %i_vnode.i.i, align 8
  %48 = and i16 %47, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %48)
  %cmp.i180 = icmp eq i16 %48, -32768
  br i1 %cmp.i180, label %if.then.i182, label %if.end.i184

if.then.i182:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i181 = call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i) #10
  br label %XFS_ISIZE.exit186

if.end.i184:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i183 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %49 = ptrtoint ptr %i_disk_size.i183 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %i_disk_size.i183, align 8
  br label %XFS_ISIZE.exit186

XFS_ISIZE.exit186:                                ; preds = %if.end.i184, %if.then.i182
  %retval.0.i185 = phi i64 [ %call3.i181, %if.then.i182 ], [ %50, %if.end.i184 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %add52, i64 %retval.0.i185)
  %cmp54.not = icmp slt i64 %add52, %retval.0.i185
  %and59113 = and i64 %add52, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and59113)
  %cmp60.not = icmp eq i64 %and59113, 0
  %or.cond = or i1 %cmp60.not, %cmp54.not
  br i1 %or.cond, label %XFS_ISIZE.exit186.cleanup_crit_edge, label %if.then62

XFS_ISIZE.exit186.cleanup_crit_edge:              ; preds = %XFS_ISIZE.exit186
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then62:                                        ; preds = %XFS_ISIZE.exit186
  call void @__sanitizer_cov_trace_pc() #12
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %51 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i_mapping, align 8
  %and65 = and i64 %add52, -4096
  %call66 = call i32 @filemap_write_and_wait_range(ptr noundef %52, i64 noundef %and65, i64 noundef 9223372036854775807) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %XFS_ISIZE.exit186.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %XFS_ISIZE.exit.cleanup_crit_edge, %xfs_unmap_extent.exit.cleanup_crit_edge, %xfs_unmap_extent.exit.thread201, %xfs_unmap_extent.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %XFS_ISIZE.exit.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ %call66, %if.then62 ], [ 0, %XFS_ISIZE.exit186.cleanup_crit_edge ], [ %call.i, %xfs_unmap_extent.exit.thread ], [ %error.1.i, %xfs_unmap_extent.exit.thread201 ], [ %call9.i, %xfs_unmap_extent.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_free_file_space(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_free_file_space, i32 0, i32 1), ptr blockaddress(@trace_xfs_free_file_space, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !91
  %call42 = tail call i32 @__traceiter_xfs_free_file_space(ptr noundef null, ptr noundef %ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !92
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_free_file_space, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_free_file_space, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_free_file_space.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_free_file_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 757, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
declare dso_local i32 @xfs_zero_range(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_collapse_file_space(ptr noundef %ip, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %tp = alloca ptr, align 4
  %next_fsb = alloca i64, align 8
  %done = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #10
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_fsb) #10
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_blockmask, align 8
  %conv = zext i32 %4 to i64
  %add = add i64 %conv, %len
  %add1 = add i64 %add, %offset
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %6 to i64
  %shr = lshr i64 %add1, %sh_prom
  %7 = ptrtoint ptr %next_fsb to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shr, ptr %next_fsb, align 8
  %shr10 = lshr i64 %add, %sh_prom
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %done) #10
  %8 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %done, align 1
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 1) #10
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !84

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1103) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call12 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 16) #10
  br i1 %call12, label %cond.end.cond.end21_crit_edge, label %cond.false20, !prof !84

cond.end.cond.end21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end21

cond.false20:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1104) #10
  br label %cond.end21

cond.end21:                                       ; preds = %cond.false20, %cond.end.cond.end21_crit_edge
  tail call fastcc void @trace_xfs_collapse_file_space(ptr noundef %ip)
  %call22 = tail call i32 @xfs_free_file_space(ptr noundef %ip, i64 noundef %offset, i64 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end, label %cond.end21.cleanup_crit_edge

cond.end21.cleanup_crit_edge:                     ; preds = %cond.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end21
  %call24 = tail call fastcc i32 @xfs_prepare_shift(ptr noundef %ip, i64 noundef %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65
  %call28 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %m_resv, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #10
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %10, ptr noundef %ip, i32 noundef 0) #10
  br label %while.cond

while.cond:                                       ; preds = %if.end41.while.cond_crit_edge, %if.end31
  %11 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %done, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool32.not = icmp eq i8 %12, 0
  br i1 %tobool32.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  %call35 = call i32 @xfs_bmap_collapse_extents(ptr noundef %14, ptr noundef %ip, ptr noundef nonnull %next_fsb, i64 noundef %shr10, ptr noundef nonnull %done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %while.body.out_trans_cancel_crit_edge

while.body.out_trans_cancel_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

if.end38:                                         ; preds = %while.body
  %15 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %done, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool39.not = icmp eq i8 %16, 0
  br i1 %tobool39.not, label %if.end41, label %if.end38.while.end_crit_edge

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end41:                                         ; preds = %if.end38
  %call42 = call i32 @xfs_defer_finish(ptr noundef nonnull %tp) #10
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end41.while.cond_crit_edge, label %if.end41.out_trans_cancel_crit_edge

if.end41.out_trans_cancel_crit_edge:              ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

if.end41.while.cond_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %while.cond.while.end_crit_edge
  %17 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tp, align 4
  %call46 = call i32 @xfs_trans_commit(ptr noundef %18) #10
  br label %cleanup.sink.split

out_trans_cancel:                                 ; preds = %if.end41.out_trans_cancel_crit_edge, %while.body.out_trans_cancel_crit_edge
  %error.0 = phi i32 [ %call35, %while.body.out_trans_cancel_crit_edge ], [ %call42, %if.end41.out_trans_cancel_crit_edge ]
  %19 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %20) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_trans_cancel, %while.end
  %retval.0.ph = phi i32 [ %call46, %while.end ], [ %error.0, %out_trans_cancel ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %cond.end21.cleanup_crit_edge ], [ %call24, %if.end.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %done) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_fsb) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_collapse_file_space(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_collapse_file_space, i32 0, i32 1), ptr blockaddress(@trace_xfs_collapse_file_space, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !93
  %call42 = tail call i32 @__traceiter_xfs_collapse_file_space(ptr noundef null, ptr noundef %ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_collapse_file_space, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_collapse_file_space, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_collapse_file_space.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_collapse_file_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 759, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
define internal fastcc i32 @xfs_prepare_shift(ptr noundef %ip, i64 noundef %offset) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %call = tail call zeroext i1 @xfs_can_free_eofblocks(ptr noundef %ip, i1 noundef zeroext true)
  br i1 %call, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @xfs_free_eofblocks(ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %sb_blocksize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sb_blocksize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sb_blocksize, align 4
  %sub = add i32 %3, -1
  %conv = zext i32 %sub to i64
  %neg = xor i64 %conv, -1
  %and = and i64 %neg, %offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool4.not = icmp eq i64 %and, 0
  %conv8 = zext i32 %3 to i64
  %sub9 = sub i64 %and, %conv8
  %offset.addr.0 = select i1 %tobool4.not, i64 0, i64 %sub9
  %i_vnode.i.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %4 = ptrtoint ptr %i_vnode.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i_vnode.i.i, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp.i = icmp eq i16 %6, -32768
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i.i) #10
  br label %XFS_ISIZE.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %i_disk_size.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %7 = ptrtoint ptr %i_disk_size.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_disk_size.i, align 8
  br label %XFS_ISIZE.exit

XFS_ISIZE.exit:                                   ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i64 [ %call3.i, %if.then.i ], [ %8, %if.end.i ]
  %9 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ip, align 8
  %sb_blocksize.i = getelementptr inbounds %struct.xfs_sb, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %sb_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sb_blocksize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %12)
  %cmp.i40 = icmp ugt i32 %12, 4096
  %conv.i = zext i32 %12 to i64
  %phi.bo.i = add nsw i64 %conv.i, -1
  %cond.i = select i1 %cmp.i40, i64 %phi.bo.i, i64 4095
  %neg.i = xor i64 %cond.i, -1
  %and.i = and i64 %offset.addr.0, %neg.i
  %add.i = add i64 %offset.addr.0, -1
  %sub2.i = add i64 %add.i, %retval.0.i
  %or.i = or i64 %cond.i, %sub2.i
  %i_mapping.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %13 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_mapping.i, align 8
  %call6.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %14, i64 noundef %and.i, i64 noundef %or.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end15, label %XFS_ISIZE.exit.cleanup_crit_edge

XFS_ISIZE.exit.cleanup_crit_edge:                 ; preds = %XFS_ISIZE.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %XFS_ISIZE.exit
  tail call void @truncate_pagecache_range(ptr noundef %i_vnode.i.i, i64 noundef %and.i, i64 noundef %or.i) #10
  %i_cowfp.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %15 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i_cowfp.i, align 4
  %tobool.not.i43 = icmp eq ptr %16, null
  br i1 %tobool.not.i43, label %if.end15.if.end22_crit_edge, label %xfs_inode_has_cow_data.exit

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

xfs_inode_has_cow_data.exit:                      ; preds = %if.end15
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %16, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool2.i.not = icmp eq i64 %18, 0
  br i1 %tobool2.i.not, label %xfs_inode_has_cow_data.exit.if.end22_crit_edge, label %if.then17

xfs_inode_has_cow_data.exit.if.end22_crit_edge:   ; preds = %xfs_inode_has_cow_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then17:                                        ; preds = %xfs_inode_has_cow_data.exit
  %call18 = tail call i32 @xfs_reflink_cancel_cow_range(ptr noundef %ip, i64 noundef %offset.addr.0, i64 noundef -1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %xfs_inode_has_cow_data.exit.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then17.cleanup_crit_edge, %XFS_ISIZE.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call1, %if.then.cleanup_crit_edge ], [ %call18, %if.then17.cleanup_crit_edge ], [ %call6.i, %XFS_ISIZE.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_collapse_extents(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_defer_finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_insert_file_space(ptr noundef %ip, i64 noundef %offset, i64 noundef %len) local_unnamed_addr #1 align 64 {
entry:
  %tp = alloca ptr, align 4
  %next_fsb = alloca i64, align 8
  %done = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #10
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !81
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %m_blockmask, align 8
  %conv = zext i32 %4 to i64
  %add = add i64 %conv, %offset
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %6 to i64
  %shr = lshr i64 %add, %sh_prom
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %next_fsb) #10
  %7 = ptrtoint ptr %next_fsb to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %next_fsb, align 8
  %add4 = add i64 %conv, %len
  %shr9 = lshr i64 %add4, %sh_prom
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %done) #10
  %8 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %done, align 1
  %call = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 1) #10
  br i1 %call, label %entry.cond.end_crit_edge, label %cond.false, !prof !84

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1173) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %call11 = tail call zeroext i1 @xfs_isilocked(ptr noundef %ip, i32 noundef 16) #10
  br i1 %call11, label %cond.end.cond.end20_crit_edge, label %cond.false19, !prof !84

cond.end.cond.end20_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1174) #10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.end.cond.end20_crit_edge
  tail call fastcc void @trace_xfs_insert_file_space(ptr noundef %ip)
  %call21 = tail call i32 @xfs_bmap_can_insert_extents(ptr noundef %ip, i64 noundef %shr, i64 noundef %shr9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end, label %cond.end20.cleanup_crit_edge

cond.end20.cleanup_crit_edge:                     ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cond.end20
  %call23 = tail call fastcc i32 @xfs_prepare_shift(ptr noundef %ip, i64 noundef %offset)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %9 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m_bm_maxlevels, align 8
  %sub = add i32 %10, -1
  %call28 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %m_resv, i32 noundef %sub, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @xfs_ilock(ptr noundef %ip, i32 noundef 4) #10
  %11 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %12, ptr noundef %ip, i32 noundef 0) #10
  %call32 = call i32 @xfs_iext_count_may_overflow(ptr noundef %ip, i32 noundef 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.out_trans_cancel_crit_edge

if.end31.out_trans_cancel_crit_edge:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

if.end35:                                         ; preds = %if.end31
  %13 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tp, align 4
  %call36 = call i32 @xfs_bmap_split_extent(ptr noundef %14, ptr noundef %ip, i64 noundef %shr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end35.do.body_crit_edge, label %if.end35.out_trans_cancel_crit_edge

if.end35.out_trans_cancel_crit_edge:              ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

if.end35.do.body_crit_edge:                       ; preds = %if.end35
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end35.do.body_crit_edge
  %call40 = call i32 @xfs_defer_finish(ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %do.body.out_trans_cancel_crit_edge

do.body.out_trans_cancel_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

if.end43:                                         ; preds = %do.body
  %15 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tp, align 4
  %call44 = call i32 @xfs_bmap_insert_extents(ptr noundef %16, ptr noundef %ip, ptr noundef nonnull %next_fsb, i64 noundef %shr9, ptr noundef nonnull %done, i64 noundef %shr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.cond, label %if.end43.out_trans_cancel_crit_edge

if.end43.out_trans_cancel_crit_edge:              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

do.cond:                                          ; preds = %if.end43
  %17 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %done, align 1, !range !82
  %tobool48.not = icmp eq i8 %18, 0
  br i1 %tobool48.not, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tp, align 4
  %call51 = call i32 @xfs_trans_commit(ptr noundef %20) #10
  br label %cleanup.sink.split

out_trans_cancel:                                 ; preds = %if.end43.out_trans_cancel_crit_edge, %do.body.out_trans_cancel_crit_edge, %if.end35.out_trans_cancel_crit_edge, %if.end31.out_trans_cancel_crit_edge
  %error.0 = phi i32 [ %call32, %if.end31.out_trans_cancel_crit_edge ], [ %call36, %if.end35.out_trans_cancel_crit_edge ], [ %call44, %if.end43.out_trans_cancel_crit_edge ], [ %call40, %do.body.out_trans_cancel_crit_edge ]
  %21 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %22) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_trans_cancel, %do.end
  %retval.0.ph = phi i32 [ %call51, %do.end ], [ %error.0, %out_trans_cancel ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %cond.end20.cleanup_crit_edge ], [ %call23, %if.end.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %done) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %next_fsb) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #10
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_insert_file_space(ptr noundef %ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_insert_file_space, i32 0, i32 1), ptr blockaddress(@trace_xfs_insert_file_space, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %call42 = tail call i32 @__traceiter_xfs_insert_file_space(ptr noundef null, ptr noundef %ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !96
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_insert_file_space, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_insert_file_space, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_insert_file_space.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_insert_file_space.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 760, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
declare dso_local i32 @xfs_bmap_can_insert_extents(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_split_extent(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmap_insert_extents(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_swap_extents(ptr noundef %ip, ptr noundef %tip, ptr nocapture noundef readonly %sxp) local_unnamed_addr #1 align 64 {
entry:
  %tp = alloca ptr, align 4
  %src_log_flags = alloca i32, align 4
  %target_log_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tp) #10
  %2 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %tp, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_log_flags) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %target_log_flags) #10
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %i_vnode.i388 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 27
  tail call void @lock_two_nondirectories(ptr noundef %i_vnode.i, ptr noundef %i_vnode.i388) #10
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %3 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_mapping, align 8
  %i_mapping4 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 27, i32 9
  %5 = ptrtoint ptr %i_mapping4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping4, align 8
  tail call void @filemap_invalidate_lock_two(ptr noundef %4, ptr noundef %6) #10
  %7 = ptrtoint ptr %i_vnode.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_vnode.i, align 8
  %9 = ptrtoint ptr %i_vnode.i388 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %i_vnode.i388, align 8
  %11 = xor i16 %10, %8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %11)
  %cmp.not = icmp ult i16 %11, 4096
  br i1 %cmp.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end:                                           ; preds = %entry
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 24
  %12 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %i_diflags, align 2
  %14 = and i16 %13, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not = icmp eq i16 %14, 0
  br i1 %tobool.not, label %land.end.thread, label %land.end

land.end:                                         ; preds = %if.end
  %15 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ip, align 8
  %m_rtdev_targp = getelementptr inbounds %struct.xfs_mount, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %m_rtdev_targp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m_rtdev_targp, align 64
  %tobool14 = icmp ne ptr %18, null
  %i_diflags15 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 24
  %19 = ptrtoint ptr %i_diflags15 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %i_diflags15, align 2
  %21 = and i16 %20, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool18.not = icmp eq i16 %21, 0
  br i1 %tobool18.not, label %land.end.land.end23_crit_edge, label %land.end23

land.end.thread:                                  ; preds = %if.end
  %i_diflags15413 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 24
  %22 = ptrtoint ptr %i_diflags15413 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %i_diflags15413, align 2
  %24 = and i16 %23, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool18.not414 = icmp eq i16 %24, 0
  br i1 %tobool18.not414, label %land.end.thread.if.end28_crit_edge, label %land.end.thread.land.end23_crit_edge

land.end.thread.if.end28_crit_edge:               ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.end.thread.land.end23_crit_edge:             ; preds = %land.end.thread
  %25 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tip, align 8
  %m_rtdev_targp21415 = getelementptr inbounds %struct.xfs_mount, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %m_rtdev_targp21415 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m_rtdev_targp21415, align 64
  %tobool22416.not = icmp eq ptr %28, null
  br i1 %tobool22416.not, label %land.end.thread.land.end23_crit_edge.if.end28_crit_edge, label %land.end.thread.land.end23_crit_edge.out_unlock_crit_edge

land.end.thread.land.end23_crit_edge.out_unlock_crit_edge: ; preds = %land.end.thread.land.end23_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

land.end.thread.land.end23_crit_edge.if.end28_crit_edge: ; preds = %land.end.thread.land.end23_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.end.land.end23_crit_edge:                    ; preds = %land.end
  br i1 %tobool14, label %land.end.land.end23_crit_edge.out_unlock_crit_edge, label %land.end.land.end23_crit_edge.if.end28_crit_edge

land.end.land.end23_crit_edge.if.end28_crit_edge: ; preds = %land.end.land.end23_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.end.land.end23_crit_edge.out_unlock_crit_edge: ; preds = %land.end.land.end23_crit_edge
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

land.end23:                                       ; preds = %land.end
  %29 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tip, align 8
  %m_rtdev_targp21 = getelementptr inbounds %struct.xfs_mount, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %m_rtdev_targp21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m_rtdev_targp21, align 64
  %tobool22 = icmp ne ptr %32, null
  %33 = xor i1 %tobool14, %tobool22
  br i1 %33, label %land.end23.out_unlock_crit_edge, label %land.end23.if.end28_crit_edge

land.end23.if.end28_crit_edge:                    ; preds = %land.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.end23.out_unlock_crit_edge:                  ; preds = %land.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end28:                                         ; preds = %land.end23.if.end28_crit_edge, %land.end.land.end23_crit_edge.if.end28_crit_edge, %land.end.thread.land.end23_crit_edge.if.end28_crit_edge, %land.end.thread.if.end28_crit_edge
  %call29 = tail call i32 @xfs_qm_dqattach(ptr noundef %ip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.out_unlock_crit_edge

if.end28.out_unlock_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end32:                                         ; preds = %if.end28
  %call33 = tail call i32 @xfs_qm_dqattach(ptr noundef %tip) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.out_unlock_crit_edge

if.end32.out_unlock_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end36:                                         ; preds = %if.end32
  %34 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i_mapping, align 8
  %call.i.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %35, i64 noundef 0, i64 noundef 9223372036854775807) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end36.out_unlock_crit_edge

if.end36.out_unlock_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end.i:                                         ; preds = %if.end36
  tail call void @truncate_pagecache_range(ptr noundef %i_vnode.i, i64 noundef 0, i64 noundef -1) #10
  %36 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i_mapping, align 8
  %nrpages.i = getelementptr inbounds %struct.address_space, ptr %37, i32 0, i32 7
  %38 = ptrtoint ptr %nrpages.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nrpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool5.not.i = icmp eq i32 %39, 0
  br i1 %tobool5.not.i, label %if.end40, label %if.end.i.out_unlock_crit_edge

if.end.i.out_unlock_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end40:                                         ; preds = %if.end.i
  %call41 = tail call fastcc i32 @xfs_swap_extent_flush(ptr noundef %tip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.out_unlock_crit_edge

if.end40.out_unlock_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end44:                                         ; preds = %if.end40
  %i_cowfp.i = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 7
  %40 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_cowfp.i, align 4
  %tobool.not.i393 = icmp eq ptr %41, null
  br i1 %tobool.not.i393, label %if.end44.if.end51_crit_edge, label %xfs_inode_has_cow_data.exit

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

xfs_inode_has_cow_data.exit:                      ; preds = %if.end44
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %41, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %tobool2.i.not = icmp eq i64 %43, 0
  br i1 %tobool2.i.not, label %xfs_inode_has_cow_data.exit.if.end51_crit_edge, label %if.then46

xfs_inode_has_cow_data.exit.if.end51_crit_edge:   ; preds = %xfs_inode_has_cow_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then46:                                        ; preds = %xfs_inode_has_cow_data.exit
  %call47 = tail call i32 @xfs_reflink_cancel_cow_range(ptr noundef %tip, i64 noundef 0, i64 noundef -1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.if.end51_crit_edge, label %if.then46.out_unlock_crit_edge

if.then46.out_unlock_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then46.if.end51_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.end51:                                         ; preds = %if.then46.if.end51_crit_edge, %xfs_inode_has_cow_data.exit.if.end51_crit_edge, %if.end44.if.end51_crit_edge
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %44 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %45, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end51.if.end112_crit_edge, label %if.then53

if.end51.if.end112_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 7
  %46 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %if_nextents, align 4
  %if_nextents55 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 8, i32 7
  %48 = ptrtoint ptr %if_nextents55 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %if_nextents55, align 4
  %m_alloc_mxr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 34
  %50 = ptrtoint ptr %m_alloc_mxr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %m_alloc_mxr, align 4
  %m_alloc_mnr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 35
  %52 = ptrtoint ptr %m_alloc_mnr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %m_alloc_mnr, align 4
  %sub = sub i32 %51, %53
  %add = add i32 %47, -1
  %sub57 = add i32 %add, %sub
  %div = udiv i32 %sub57, %sub
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %54 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %m_bm_maxlevels, align 4
  %sub64 = add i32 %55, -1
  %m_rmap_mxr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 38
  %56 = ptrtoint ptr %m_rmap_mxr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %m_rmap_mxr, align 4
  %m_rmap_mnr = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 39
  %58 = ptrtoint ptr %m_rmap_mnr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %m_rmap_mnr, align 4
  %sub67 = sub i32 %57, %59
  %sub69 = add i32 %add, %sub67
  %div75 = udiv i32 %sub69, %sub67
  %m_rmap_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 44
  %60 = ptrtoint ptr %m_rmap_maxlevels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %m_rmap_maxlevels, align 16
  %add83 = add i32 %49, -1
  %sub84 = add i32 %add83, %sub
  %div90 = udiv i32 %sub84, %sub
  %sub101 = add i32 %add83, %sub67
  %div107 = udiv i32 %sub101, %sub67
  %reass.add = add i32 %div107, %div75
  %reass.mul = mul i32 %reass.add, %61
  %reass.add417 = add i32 %div90, %div
  %reass.mul418 = mul i32 %reass.add417, %sub64
  %add111 = add i32 %reass.mul, %reass.mul418
  br label %if.end112

if.end112:                                        ; preds = %if.then53, %if.end51.if.end112_crit_edge
  %resblks.0 = phi i32 [ %add111, %if.then53 ], [ 0, %if.end51.if.end112_crit_edge ]
  %flags.0 = phi i32 [ 128, %if.then53 ], [ 0, %if.end51.if.end112_crit_edge ]
  %m_resv = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 65
  %call113 = call i32 @xfs_trans_alloc(ptr noundef %1, ptr noundef %m_resv, i32 noundef %resblks.0, i32 noundef 0, i32 noundef %flags.0, ptr noundef nonnull %tp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end112.out_unlock_crit_edge

if.end112.out_unlock_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end116:                                        ; preds = %if.end112
  call void @xfs_lock_two_inodes(ptr noundef %ip, i32 noundef 4, ptr noundef %tip, i32 noundef 4) #10
  %62 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %63, ptr noundef %ip, i32 noundef 0) #10
  %64 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tp, align 4
  call void @xfs_trans_ijoin(ptr noundef %65, ptr noundef %tip, i32 noundef 0) #10
  %sx_offset = getelementptr inbounds %struct.xfs_swapext, ptr %sxp, i32 0, i32 3
  %66 = ptrtoint ptr %sx_offset to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %sx_offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %cmp117.not = icmp eq i64 %67, 0
  br i1 %cmp117.not, label %lor.lhs.false, label %if.end116.out_trans_cancel_crit_edge

if.end116.out_trans_cancel_crit_edge:             ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

lor.lhs.false:                                    ; preds = %if.end116
  %sx_length = getelementptr inbounds %struct.xfs_swapext, ptr %sxp, i32 0, i32 4
  %68 = ptrtoint ptr %sx_length to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %sx_length, align 8
  %i_disk_size = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 18
  %70 = ptrtoint ptr %i_disk_size to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %i_disk_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %71)
  %cmp119.not = icmp eq i64 %69, %71
  br i1 %cmp119.not, label %lor.lhs.false121, label %lor.lhs.false.out_trans_cancel_crit_edge

lor.lhs.false.out_trans_cancel_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

lor.lhs.false121:                                 ; preds = %lor.lhs.false
  %i_disk_size123 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 18
  %72 = ptrtoint ptr %i_disk_size123 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %i_disk_size123, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %73)
  %cmp124.not = icmp eq i64 %69, %73
  br i1 %cmp124.not, label %if.end127, label %lor.lhs.false121.out_trans_cancel_crit_edge

lor.lhs.false121.out_trans_cancel_crit_edge:      ; preds = %lor.lhs.false121
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

if.end127:                                        ; preds = %lor.lhs.false121
  call fastcc void @trace_xfs_swap_extent_before(ptr noundef %ip, i32 noundef 0)
  call fastcc void @trace_xfs_swap_extent_before(ptr noundef %tip, i32 noundef 1)
  %call128 = call fastcc i32 @xfs_swap_extents_check_format(ptr noundef %ip, ptr noundef %tip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.then130

if.then130:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %74 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %i_ino, align 8
  call void (ptr, ptr, ...) @xfs_notice(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.xfs_swap_extents, i64 noundef %75) #10
  br label %out_trans_cancel

if.end131:                                        ; preds = %if.end127
  %bs_ctime = getelementptr inbounds %struct.xfs_swapext, ptr %sxp, i32 0, i32 6, i32 10
  %76 = ptrtoint ptr %bs_ctime to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bs_ctime, align 8
  %conv132 = sext i32 %77 to i64
  %i_ctime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 17
  %78 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %i_ctime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %79, i64 %conv132)
  %cmp135.not = icmp eq i64 %79, %conv132
  br i1 %cmp135.not, label %lor.lhs.false137, label %if.end131.out_trans_cancel_crit_edge

if.end131.out_trans_cancel_crit_edge:             ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

lor.lhs.false137:                                 ; preds = %if.end131
  %tv_nsec = getelementptr inbounds %struct.xfs_swapext, ptr %sxp, i32 0, i32 6, i32 10, i32 1
  %80 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tv_nsec, align 4
  %tv_nsec141 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 17, i32 1
  %82 = ptrtoint ptr %tv_nsec141 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tv_nsec141, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp142.not = icmp eq i32 %81, %83
  br i1 %cmp142.not, label %lor.lhs.false144, label %lor.lhs.false137.out_trans_cancel_crit_edge

lor.lhs.false137.out_trans_cancel_crit_edge:      ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

lor.lhs.false144:                                 ; preds = %lor.lhs.false137
  %bs_mtime = getelementptr inbounds %struct.xfs_swapext, ptr %sxp, i32 0, i32 6, i32 9
  %84 = ptrtoint ptr %bs_mtime to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bs_mtime, align 8
  %conv146 = sext i32 %85 to i64
  %i_mtime = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 16
  %86 = ptrtoint ptr %i_mtime to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %i_mtime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %conv146)
  %cmp149.not = icmp eq i64 %87, %conv146
  br i1 %cmp149.not, label %lor.lhs.false151, label %lor.lhs.false144.out_trans_cancel_crit_edge

lor.lhs.false144.out_trans_cancel_crit_edge:      ; preds = %lor.lhs.false144
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

lor.lhs.false151:                                 ; preds = %lor.lhs.false144
  %tv_nsec153 = getelementptr inbounds %struct.xfs_swapext, ptr %sxp, i32 0, i32 6, i32 9, i32 1
  %88 = ptrtoint ptr %tv_nsec153 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tv_nsec153, align 4
  %tv_nsec156 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 16, i32 1
  %90 = ptrtoint ptr %tv_nsec156 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tv_nsec156, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp157.not = icmp eq i32 %89, %91
  br i1 %cmp157.not, label %if.end160, label %lor.lhs.false151.out_trans_cancel_crit_edge

lor.lhs.false151.out_trans_cancel_crit_edge:      ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

if.end160:                                        ; preds = %lor.lhs.false151
  %92 = ptrtoint ptr %src_log_flags to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %src_log_flags, align 4
  %93 = ptrtoint ptr %target_log_flags to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %target_log_flags, align 4
  %94 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %m_features.i, align 8
  %and.i399 = and i64 %95, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i399)
  %tobool.i400.not = icmp eq i64 %and.i399, 0
  br i1 %tobool.i400.not, label %if.else, label %if.then162

if.then162:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  %call163 = call fastcc i32 @xfs_swap_extent_rmap(ptr noundef nonnull %tp, ptr noundef %ip, ptr noundef %tip)
  br label %if.end165

if.else:                                          ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tp, align 4
  %call164 = call fastcc i32 @xfs_swap_extent_forks(ptr noundef %97, ptr noundef %ip, ptr noundef %tip, ptr noundef nonnull %src_log_flags, ptr noundef nonnull %target_log_flags)
  br label %if.end165

if.end165:                                        ; preds = %if.else, %if.then162
  %error.0 = phi i32 [ %call163, %if.then162 ], [ %call164, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool166.not = icmp eq i32 %error.0, 0
  br i1 %tobool166.not, label %if.end168, label %if.end165.out_trans_cancel_crit_edge

if.end165.out_trans_cancel_crit_edge:             ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

if.end168:                                        ; preds = %if.end165
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %98 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %i_diflags2, align 8
  %and169 = and i64 %99, 2
  %i_diflags2170 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 25
  %100 = ptrtoint ptr %i_diflags2170 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %i_diflags2170, align 8
  %and171 = and i64 %101, 2
  call void @__sanitizer_cov_trace_cmp8(i64 %and169, i64 %and171)
  %tobool172.not = icmp eq i64 %and169, %and171
  br i1 %tobool172.not, label %if.end168.if.end187_crit_edge, label %if.then173

if.end168.if.end187_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187

if.then173:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  %and177 = and i64 %99, -3
  %102 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %and177, ptr %i_diflags2, align 8
  %103 = ptrtoint ptr %i_diflags2170 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %i_diflags2170, align 8
  %and179 = and i64 %104, 2
  %or181 = or i64 %and179, %and177
  store i64 %or181, ptr %i_diflags2, align 8
  %105 = load i64, ptr %i_diflags2170, align 8
  %and183 = and i64 %105, -3
  %or186 = or i64 %and183, %and169
  store i64 %or186, ptr %i_diflags2170, align 8
  br label %if.end187

if.end187:                                        ; preds = %if.then173, %if.end168.if.end187_crit_edge
  %106 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %m_features.i, align 8
  %and.i402 = and i64 %107, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i402)
  %tobool.i403.not = icmp eq i64 %and.i402, 0
  br i1 %tobool.i403.not, label %if.end187.if.end235_crit_edge, label %if.then189

if.end187.if.end235_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end235

if.then189:                                       ; preds = %if.end187
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %108 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i_cowfp, align 4
  %tobool190.not = icmp eq ptr %109, null
  br i1 %tobool190.not, label %if.then189.cond.end_crit_edge, label %lor.rhs

if.then189.cond.end_crit_edge:                    ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

lor.rhs:                                          ; preds = %if.then189
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp193 = icmp eq i8 %111, 2
  br i1 %cmp193, label %lor.rhs.cond.end_crit_edge, label %cond.false, !prof !84

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1778) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %if.then189.cond.end_crit_edge
  %112 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i_cowfp.i, align 4
  %tobool198.not = icmp eq ptr %113, null
  br i1 %tobool198.not, label %cond.end.do.body_crit_edge, label %lor.rhs199

cond.end.do.body_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.rhs199:                                       ; preds = %cond.end
  %if_format201 = getelementptr inbounds %struct.xfs_ifork, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %if_format201 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %if_format201, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %115)
  %cmp203 = icmp eq i8 %115, 2
  br i1 %cmp203, label %lor.rhs199.do.body_crit_edge, label %cond.false213, !prof !84

lor.rhs199.do.body_crit_edge:                     ; preds = %lor.rhs199
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

cond.false213:                                    ; preds = %lor.rhs199
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1780) #10
  br label %do.body

do.body:                                          ; preds = %cond.false213, %lor.rhs199.do.body_crit_edge, %cond.end.do.body_crit_edge
  %116 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i_cowfp, align 4
  %118 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %i_cowfp.i, align 4
  store ptr %119, ptr %i_cowfp, align 4
  store ptr %117, ptr %i_cowfp.i, align 4
  %120 = load ptr, ptr %i_cowfp, align 4
  %tobool220.not = icmp eq ptr %120, null
  br i1 %tobool220.not, label %do.body.if.else224_crit_edge, label %land.lhs.true

do.body.if.else224_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else224

land.lhs.true:                                    ; preds = %do.body
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %120, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %122)
  %tobool222.not = icmp eq i64 %122, 0
  br i1 %tobool222.not, label %land.lhs.true.if.else224_crit_edge, label %if.then223

land.lhs.true.if.else224_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else224

if.then223:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @xfs_inode_set_cowblocks_tag(ptr noundef %ip) #10
  br label %if.end225

if.else224:                                       ; preds = %land.lhs.true.if.else224_crit_edge, %do.body.if.else224_crit_edge
  call void @xfs_inode_clear_cowblocks_tag(ptr noundef %ip) #10
  br label %if.end225

if.end225:                                        ; preds = %if.else224, %if.then223
  %123 = ptrtoint ptr %i_cowfp.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i_cowfp.i, align 4
  %tobool227.not = icmp eq ptr %124, null
  br i1 %tobool227.not, label %if.end225.if.else233_crit_edge, label %land.lhs.true228

if.end225.if.else233_crit_edge:                   ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else233

land.lhs.true228:                                 ; preds = %if.end225
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %124, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %126)
  %tobool231.not = icmp eq i64 %126, 0
  br i1 %tobool231.not, label %land.lhs.true228.if.else233_crit_edge, label %if.then232

land.lhs.true228.if.else233_crit_edge:            ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else233

if.then232:                                       ; preds = %land.lhs.true228
  call void @__sanitizer_cov_trace_pc() #12
  call void @xfs_inode_set_cowblocks_tag(ptr noundef %tip) #10
  br label %if.end235

if.else233:                                       ; preds = %land.lhs.true228.if.else233_crit_edge, %if.end225.if.else233_crit_edge
  call void @xfs_inode_clear_cowblocks_tag(ptr noundef %tip) #10
  br label %if.end235

if.end235:                                        ; preds = %if.else233, %if.then232, %if.end187.if.end235_crit_edge
  %127 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tp, align 4
  %129 = ptrtoint ptr %src_log_flags to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %src_log_flags, align 4
  call void @xfs_trans_log_inode(ptr noundef %128, ptr noundef %ip, i32 noundef %130) #10
  %131 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tp, align 4
  %133 = ptrtoint ptr %target_log_flags to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %target_log_flags, align 4
  call void @xfs_trans_log_inode(ptr noundef %132, ptr noundef %tip, i32 noundef %134) #10
  %and236 = and i32 %130, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.end235.if.end243_crit_edge, label %if.then238

if.end235.if.end243_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243

if.then238:                                       ; preds = %if.end235
  %call239 = call fastcc i32 @xfs_swap_change_owner(ptr noundef nonnull %tp, ptr noundef %ip, ptr noundef %tip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %tobool240.not = icmp eq i32 %call239, 0
  br i1 %tobool240.not, label %if.then238.if.end243_crit_edge, label %if.then238.out_trans_cancel_crit_edge

if.then238.out_trans_cancel_crit_edge:            ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

if.then238.if.end243_crit_edge:                   ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243

if.end243:                                        ; preds = %if.then238.if.end243_crit_edge, %if.end235.if.end243_crit_edge
  %and244 = and i32 %134, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %if.end243.if.end251_crit_edge, label %if.then246

if.end243.if.end251_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251

if.then246:                                       ; preds = %if.end243
  %call247 = call fastcc i32 @xfs_swap_change_owner(ptr noundef nonnull %tp, ptr noundef %tip, ptr noundef %ip)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call247)
  %tobool248.not = icmp eq i32 %call247, 0
  br i1 %tobool248.not, label %if.then246.if.end251_crit_edge, label %if.then246.out_trans_cancel_crit_edge

if.then246.out_trans_cancel_crit_edge:            ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_trans_cancel

if.then246.if.end251_crit_edge:                   ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251

if.end251:                                        ; preds = %if.then246.if.end251_crit_edge, %if.end243.if.end251_crit_edge
  %135 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %m_features.i, align 8
  %and.i405 = and i64 %136, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i405)
  %tobool.i406.not = icmp eq i64 %and.i405, 0
  br i1 %tobool.i406.not, label %if.end251.if.end255_crit_edge, label %if.then253

if.end251.if.end255_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end255

if.then253:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tp, align 4
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %138, i32 0, i32 7
  %139 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %t_flags, align 4
  %or254 = or i32 %140, 8
  store i32 %or254, ptr %t_flags, align 4
  br label %if.end255

if.end255:                                        ; preds = %if.then253, %if.end251.if.end255_crit_edge
  %141 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %tp, align 4
  %call256 = call i32 @xfs_trans_commit(ptr noundef %142) #10
  call fastcc void @trace_xfs_swap_extent_after(ptr noundef %ip, i32 noundef 0)
  call fastcc void @trace_xfs_swap_extent_after(ptr noundef %tip, i32 noundef 1)
  br label %out_unlock_ilock

out_unlock_ilock:                                 ; preds = %out_trans_cancel, %if.end255
  %error.1 = phi i32 [ %error.3, %out_trans_cancel ], [ %call256, %if.end255 ]
  call void @xfs_iunlock(ptr noundef %ip, i32 noundef 4) #10
  call void @xfs_iunlock(ptr noundef %tip, i32 noundef 4) #10
  br label %out_unlock

out_unlock:                                       ; preds = %out_unlock_ilock, %if.end112.out_unlock_crit_edge, %if.then46.out_unlock_crit_edge, %if.end40.out_unlock_crit_edge, %if.end.i.out_unlock_crit_edge, %if.end36.out_unlock_crit_edge, %if.end32.out_unlock_crit_edge, %if.end28.out_unlock_crit_edge, %land.end23.out_unlock_crit_edge, %land.end.land.end23_crit_edge.out_unlock_crit_edge, %land.end.thread.land.end23_crit_edge.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %error.2 = phi i32 [ %call29, %if.end28.out_unlock_crit_edge ], [ %call33, %if.end32.out_unlock_crit_edge ], [ %call41, %if.end40.out_unlock_crit_edge ], [ %call47, %if.then46.out_unlock_crit_edge ], [ %call113, %if.end112.out_unlock_crit_edge ], [ %error.1, %out_unlock_ilock ], [ -22, %entry.out_unlock_crit_edge ], [ -22, %land.end23.out_unlock_crit_edge ], [ -22, %land.end.land.end23_crit_edge.out_unlock_crit_edge ], [ -22, %land.end.thread.land.end23_crit_edge.out_unlock_crit_edge ], [ -22, %if.end.i.out_unlock_crit_edge ], [ %call.i.i, %if.end36.out_unlock_crit_edge ]
  %143 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i_mapping, align 8
  %145 = ptrtoint ptr %i_mapping4 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %i_mapping4, align 8
  call void @filemap_invalidate_unlock_two(ptr noundef %144, ptr noundef %146) #10
  call void @unlock_two_nondirectories(ptr noundef %i_vnode.i, ptr noundef %i_vnode.i388) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %target_log_flags) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_log_flags) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tp) #10
  ret i32 %error.2

out_trans_cancel:                                 ; preds = %if.then246.out_trans_cancel_crit_edge, %if.then238.out_trans_cancel_crit_edge, %if.end165.out_trans_cancel_crit_edge, %lor.lhs.false151.out_trans_cancel_crit_edge, %lor.lhs.false144.out_trans_cancel_crit_edge, %lor.lhs.false137.out_trans_cancel_crit_edge, %if.end131.out_trans_cancel_crit_edge, %if.then130, %lor.lhs.false121.out_trans_cancel_crit_edge, %lor.lhs.false.out_trans_cancel_crit_edge, %if.end116.out_trans_cancel_crit_edge
  %error.3 = phi i32 [ %call128, %if.then130 ], [ %error.0, %if.end165.out_trans_cancel_crit_edge ], [ %call239, %if.then238.out_trans_cancel_crit_edge ], [ %call247, %if.then246.out_trans_cancel_crit_edge ], [ -14, %lor.lhs.false121.out_trans_cancel_crit_edge ], [ -14, %lor.lhs.false.out_trans_cancel_crit_edge ], [ -14, %if.end116.out_trans_cancel_crit_edge ], [ -16, %lor.lhs.false151.out_trans_cancel_crit_edge ], [ -16, %lor.lhs.false144.out_trans_cancel_crit_edge ], [ -16, %lor.lhs.false137.out_trans_cancel_crit_edge ], [ -16, %if.end131.out_trans_cancel_crit_edge ]
  %147 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %tp, align 4
  call void @xfs_trans_cancel(ptr noundef %148) #10
  br label %out_unlock_ilock
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @filemap_invalidate_lock_two(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_swap_extent_flush(ptr noundef %ip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_mapping = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 9
  %0 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_mapping, align 8
  %call.i = tail call i32 @filemap_write_and_wait_range(ptr noundef %1, i64 noundef 0, i64 noundef 9223372036854775807) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  tail call void @truncate_pagecache_range(ptr noundef %i_vnode.i, i64 noundef 0, i64 noundef -1) #10
  %2 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_mapping, align 8
  %nrpages = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %nrpages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nrpages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  %. = select i1 %tobool5.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_cancel_cow_range(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_lock_two_inodes(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_swap_extent_before(ptr noundef %ip, i32 noundef %which) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_before, i32 0, i32 1), ptr blockaddress(@trace_xfs_swap_extent_before, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !97
  %call42 = tail call i32 @__traceiter_xfs_swap_extent_before(ptr noundef null, ptr noundef %ip, i32 noundef %which) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !98
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_before, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_before, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_swap_extent_before.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_swap_extent_before.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2201, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @xfs_swap_extents_check_format(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %tip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %m_qflags = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %m_qflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_qflags, align 4
  %and = and i32 %3, 73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_uid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 2
  %i_uid3 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 27, i32 2
  %4 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %i_uid, align 4
  %5 = ptrtoint ptr %i_uid3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack237 = load i32, ptr %i_uid3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack237)
  %cmp.i = icmp eq i32 %.unpack, %.unpack237
  br i1 %cmp.i, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %i_gid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27, i32 3
  %i_gid8 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 27, i32 3
  %6 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack238 = load i32, ptr %i_gid, align 8
  %7 = ptrtoint ptr %i_gid8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack239 = load i32, ptr %i_gid8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack238, i32 %.unpack239)
  %cmp.i243 = icmp eq i32 %.unpack238, %.unpack239
  br i1 %cmp.i243, label %lor.lhs.false12, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %i_projid = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 20
  %8 = ptrtoint ptr %i_projid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_projid, align 8
  %i_projid13 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 20
  %10 = ptrtoint ptr %i_projid13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i_projid13, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp eq i32 %9, %11
  br i1 %cmp.not, label %lor.lhs.false12.if.end_crit_edge, label %lor.lhs.false12.cleanup_crit_edge

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false12.if.end_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false12.if.end_crit_edge, %entry.if.end_crit_edge
  %if_format = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %12 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp14 = icmp eq i8 %13, 1
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %lor.lhs.false16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false16:                                  ; preds = %if.end
  %if_format17 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 8, i32 6
  %14 = ptrtoint ptr %if_format17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %if_format17, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp19 = icmp eq i8 %15, 1
  br i1 %cmp19, label %lor.lhs.false16.cleanup_crit_edge, label %if.end22

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false16
  %if_nextents = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 7
  %16 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %if_nextents, align 4
  %if_nextents23 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 8, i32 7
  %18 = ptrtoint ptr %if_nextents23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %if_nextents23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp24 = icmp slt i32 %17, %19
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp34 = icmp eq i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp39 = icmp eq i8 %15, 3
  %or.cond = select i1 %cmp34, i1 %cmp39, i1 false
  br i1 %or.cond, label %if.end31.cleanup_crit_edge, label %if.end42

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp45 = icmp eq i8 %15, 2
  br i1 %cmp45, label %land.lhs.true47, label %if.end42.if.end63_crit_edge

if.end42.if.end63_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

land.lhs.true47:                                  ; preds = %if.end42
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %22 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp50.not = icmp eq i8 %23, 0
  br i1 %cmp50.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  %conv49 = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv49, 3
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sb_inodesize, align 8
  %conv55 = zext i16 %25 to i32
  %and.i245 = and i64 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i245)
  %tobool.i246.not = icmp eq i64 %and.i245, 0
  %cond.neg = select i1 %tobool.i246.not, i32 -100, i32 -176
  %sub = add nsw i32 %cond.neg, %conv55
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond59 = phi i32 [ %shl, %cond.true ], [ %sub, %cond.false ]
  %div236 = lshr i32 %cond59, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %div236)
  %cmp60 = icmp ugt i32 %19, %div236
  br i1 %cmp60, label %cond.end.cleanup_crit_edge, label %cond.end.if.end63_crit_edge

cond.end.if.end63_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end63:                                         ; preds = %cond.end.if.end63_crit_edge, %if.end42.if.end63_crit_edge
  br i1 %cmp34, label %land.lhs.true68, label %if.end63.if.end94_crit_edge

if.end63.if.end94_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

land.lhs.true68:                                  ; preds = %if.end63
  %i_forkoff70 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 23
  %26 = ptrtoint ptr %i_forkoff70 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i_forkoff70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp72.not = icmp eq i8 %27, 0
  br i1 %cmp72.not, label %cond.false78, label %cond.true74

cond.true74:                                      ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  %conv71 = zext i8 %27 to i32
  %shl77 = shl nuw nsw i32 %conv71, 3
  br label %cond.end88

cond.false78:                                     ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tip, align 8
  %sb_inodesize81 = getelementptr inbounds %struct.xfs_sb, ptr %29, i32 0, i32 17
  %30 = ptrtoint ptr %sb_inodesize81 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sb_inodesize81, align 8
  %conv82 = zext i16 %31 to i32
  %m_features.i247 = getelementptr inbounds %struct.xfs_mount, ptr %29, i32 0, i32 61
  %32 = ptrtoint ptr %m_features.i247 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %m_features.i247, align 8
  %and.i248 = and i64 %33, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i248)
  %tobool.i249.not = icmp eq i64 %and.i248, 0
  %cond86.neg = select i1 %tobool.i249.not, i32 -100, i32 -176
  %sub87 = add nsw i32 %cond86.neg, %conv82
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false78, %cond.true74
  %cond89 = phi i32 [ %shl77, %cond.true74 ], [ %sub87, %cond.false78 ]
  %div90235 = lshr i32 %cond89, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div90235)
  %cmp91 = icmp ugt i32 %17, %div90235
  br i1 %cmp91, label %cond.end88.cleanup_crit_edge, label %cond.end88.if.end94_crit_edge

cond.end88.if.end94_crit_edge:                    ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

cond.end88.cleanup_crit_edge:                     ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end94:                                         ; preds = %cond.end88.if.end94_crit_edge, %if.end63.if.end94_crit_edge
  br i1 %cmp39, label %if.then99, label %if.end94.if.end139_crit_edge

if.end94.if.end139_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then99:                                        ; preds = %if.end94
  %i_forkoff100 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %34 = ptrtoint ptr %i_forkoff100 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i_forkoff100, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp102.not = icmp eq i8 %35, 0
  br i1 %cmp102.not, label %cond.false122, label %land.lhs.true104

land.lhs.true104:                                 ; preds = %if.then99
  %conv101 = zext i8 %35 to i32
  %if_broot = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %if_broot, align 8
  %bb_numrecs = getelementptr inbounds %struct.xfs_btree_block, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bb_numrecs, align 2
  %conv105 = zext i16 %39 to i32
  %mul = shl nuw nsw i32 %conv105, 4
  %add = or i32 %mul, 4
  %shl108 = shl nuw nsw i32 %conv101, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl108)
  %cmp109 = icmp ugt i32 %add, %shl108
  br i1 %cmp109, label %land.lhs.true104.cleanup_crit_edge, label %land.lhs.true104.cond.end132_crit_edge

land.lhs.true104.cond.end132_crit_edge:           ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end132

land.lhs.true104.cleanup_crit_edge:               ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false122:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  %sb_inodesize125 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 17
  %40 = ptrtoint ptr %sb_inodesize125 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sb_inodesize125, align 8
  %conv126 = zext i16 %41 to i32
  %and.i251 = and i64 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i251)
  %tobool.i252.not = icmp eq i64 %and.i251, 0
  %cond130.neg = select i1 %tobool.i252.not, i32 -100, i32 -176
  %sub131 = add nsw i32 %cond130.neg, %conv126
  br label %cond.end132

cond.end132:                                      ; preds = %cond.false122, %land.lhs.true104.cond.end132_crit_edge
  %cond133 = phi i32 [ %sub131, %cond.false122 ], [ %shl108, %land.lhs.true104.cond.end132_crit_edge ]
  %div134234 = lshr i32 %cond133, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %div134234)
  %cmp135.not = icmp ugt i32 %19, %div134234
  br i1 %cmp135.not, label %cond.end132.if.end139_crit_edge, label %cond.end132.cleanup_crit_edge

cond.end132.cleanup_crit_edge:                    ; preds = %cond.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end132.if.end139_crit_edge:                  ; preds = %cond.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.end139:                                        ; preds = %cond.end132.if.end139_crit_edge, %if.end94.if.end139_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp142 = icmp eq i8 %13, 3
  br i1 %cmp142, label %if.then144, label %if.end139.if.end189_crit_edge

if.end139.if.end189_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189

if.then144:                                       ; preds = %if.end139
  %i_forkoff145 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 23
  %42 = ptrtoint ptr %i_forkoff145 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %i_forkoff145, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp147.not = icmp eq i8 %43, 0
  br i1 %cmp147.not, label %cond.false172, label %land.lhs.true149

land.lhs.true149:                                 ; preds = %if.then144
  %conv146 = zext i8 %43 to i32
  %if_broot151 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %if_broot151 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %if_broot151, align 8
  %bb_numrecs152 = getelementptr inbounds %struct.xfs_btree_block, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %bb_numrecs152 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %bb_numrecs152, align 2
  %conv153 = zext i16 %47 to i32
  %mul154 = shl nuw nsw i32 %conv153, 4
  %add155 = or i32 %mul154, 4
  %shl158 = shl nuw nsw i32 %conv146, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add155, i32 %shl158)
  %cmp159 = icmp ugt i32 %add155, %shl158
  br i1 %cmp159, label %land.lhs.true149.cleanup_crit_edge, label %land.lhs.true149.cond.end182_crit_edge

land.lhs.true149.cond.end182_crit_edge:           ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end182

land.lhs.true149.cleanup_crit_edge:               ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false172:                                    ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %tip to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tip, align 8
  %sb_inodesize175 = getelementptr inbounds %struct.xfs_sb, ptr %49, i32 0, i32 17
  %50 = ptrtoint ptr %sb_inodesize175 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sb_inodesize175, align 8
  %conv176 = zext i16 %51 to i32
  %m_features.i253 = getelementptr inbounds %struct.xfs_mount, ptr %49, i32 0, i32 61
  %52 = ptrtoint ptr %m_features.i253 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %m_features.i253, align 8
  %and.i254 = and i64 %53, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i254)
  %tobool.i255.not = icmp eq i64 %and.i254, 0
  %cond180.neg = select i1 %tobool.i255.not, i32 -100, i32 -176
  %sub181 = add nsw i32 %cond180.neg, %conv176
  br label %cond.end182

cond.end182:                                      ; preds = %cond.false172, %land.lhs.true149.cond.end182_crit_edge
  %cond183 = phi i32 [ %sub181, %cond.false172 ], [ %shl158, %land.lhs.true149.cond.end182_crit_edge ]
  %div184233 = lshr i32 %cond183, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div184233)
  %cmp185.not = icmp ugt i32 %17, %div184233
  br i1 %cmp185.not, label %cond.end182.if.end189_crit_edge, label %cond.end182.cleanup_crit_edge

cond.end182.cleanup_crit_edge:                    ; preds = %cond.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end182.if.end189_crit_edge:                  ; preds = %cond.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end189

if.end189:                                        ; preds = %cond.end182.if.end189_crit_edge, %if.end139.if.end189_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end189, %cond.end182.cleanup_crit_edge, %land.lhs.true149.cleanup_crit_edge, %cond.end132.cleanup_crit_edge, %land.lhs.true104.cleanup_crit_edge, %cond.end88.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end189 ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false16.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %cond.end88.cleanup_crit_edge ], [ -22, %land.lhs.true104.cleanup_crit_edge ], [ -22, %cond.end132.cleanup_crit_edge ], [ -22, %land.lhs.true149.cleanup_crit_edge ], [ -22, %cond.end182.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_swap_extent_rmap(ptr noundef %tpp, ptr noundef %ip, ptr noundef %tip) unnamed_addr #6 align 64 {
entry:
  %irec = alloca %struct.xfs_bmbt_irec, align 8
  %uirec = alloca %struct.xfs_bmbt_irec, align 8
  %tirec = alloca %struct.xfs_bmbt_irec, align 8
  %nimaps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpp, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irec) #10
  %2 = call ptr @memset(ptr %irec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %uirec) #10
  %3 = call ptr @memset(ptr %uirec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tirec) #10
  %4 = call ptr @memset(ptr %tirec, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nimaps) #10
  %i_diflags2 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 25
  %5 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %i_diflags2, align 8
  %i_diflags21 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 25
  %7 = ptrtoint ptr %i_diflags21 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_diflags21, align 8
  %and = and i64 %8, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i64 %6, 2
  %9 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %or, ptr %i_diflags2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i_vnode.i = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 27
  %call3 = tail call fastcc i64 @i_size_read(ptr noundef %i_vnode.i)
  %10 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip, align 8
  %m_blockmask = getelementptr inbounds %struct.xfs_mount, ptr %11, i32 0, i32 31
  %12 = ptrtoint ptr %m_blockmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_blockmask, align 8
  %conv = zext i32 %13 to i64
  %add = add i64 %call3, %conv
  %sb_blocklog = getelementptr inbounds %struct.xfs_sb, ptr %11, i32 0, i32 20
  %14 = ptrtoint ptr %sb_blocklog to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sb_blocklog, align 8
  %sh_prom = zext i8 %15 to i64
  %shr = lshr i64 %add, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shr)
  %tobool6.not177 = icmp eq i64 %shr, 0
  br i1 %tobool6.not177, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %tirec, i32 0, i32 1
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %tirec, i32 0, i32 2
  %br_blockcount70 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %br_blockcount76 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %uirec, i32 0, i32 2
  %br_startblock.i = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %uirec, i32 0, i32 1
  %br_startblock.i168 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.body.lr.ph
  %count_fsb.0180 = phi i64 [ %shr, %while.body.lr.ph ], [ %sub109, %while.end.while.body_crit_edge ]
  %offset_fsb.0179 = phi i64 [ 0, %while.body.lr.ph ], [ %add110, %while.end.while.body_crit_edge ]
  %tp.0178 = phi ptr [ %1, %while.body.lr.ph ], [ %tp.1.lcssa, %while.end.while.body_crit_edge ]
  %16 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nimaps, align 4
  %call7 = call i32 @xfs_bmapi_read(ptr noundef %tip, i64 noundef %offset_fsb.0179, i64 noundef %count_fsb.0180, ptr noundef nonnull %tirec, ptr noundef nonnull %nimaps, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %while.body
  %17 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.end10.cond.end_crit_edge, label %cond.false, !prof !84

if.end10.cond.end_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1391) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end10.cond.end_crit_edge
  %19 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %20)
  %cmp14.not = icmp eq i64 %20, -1
  br i1 %cmp14.not, label %cond.false23, label %cond.end.cond.end24_crit_edge, !prof !83

cond.end.cond.end24_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1392) #10
  br label %cond.end24

cond.end24:                                       ; preds = %cond.false23, %cond.end.cond.end24_crit_edge
  call fastcc void @trace_xfs_swap_extent_rmap_remap(ptr noundef %tip, ptr noundef nonnull %tirec)
  %21 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %tobool27.not175 = icmp eq i64 %22, 0
  br i1 %tobool27.not175, label %cond.end24.while.end_crit_edge, label %cond.end24.while.body28_crit_edge

cond.end24.while.body28_crit_edge:                ; preds = %cond.end24
  br label %while.body28

cond.end24.while.end_crit_edge:                   ; preds = %cond.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body28:                                     ; preds = %if.end106.while.body28_crit_edge, %cond.end24.while.body28_crit_edge
  %tp.1176 = phi ptr [ %50, %if.end106.while.body28_crit_edge ], [ %tp.0178, %cond.end24.while.body28_crit_edge ]
  %t_firstblock = getelementptr inbounds %struct.xfs_trans, ptr %tp.1176, i32 0, i32 8
  %23 = ptrtoint ptr %t_firstblock to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %t_firstblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %24)
  %cmp29 = icmp eq i64 %24, -1
  br i1 %cmp29, label %while.body28.cond.end39_crit_edge, label %cond.false38, !prof !84

while.body28.cond.end39_crit_edge:                ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end39

cond.false38:                                     ; preds = %while.body28
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1399) #10
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %while.body28.cond.end39_crit_edge
  call fastcc void @trace_xfs_swap_extent_rmap_remap_piece(ptr noundef %tip, ptr noundef nonnull %tirec)
  %25 = ptrtoint ptr %nimaps to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %nimaps, align 4
  %26 = ptrtoint ptr %tirec to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tirec, align 8
  %28 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %br_blockcount, align 8
  %call41 = call i32 @xfs_bmapi_read(ptr noundef %ip, i64 noundef %27, i64 noundef %29, ptr noundef nonnull %irec, ptr noundef nonnull %nimaps, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %cond.end39.out_crit_edge

cond.end39.out_crit_edge:                         ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end44:                                         ; preds = %cond.end39
  %30 = ptrtoint ptr %nimaps to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nimaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp45 = icmp eq i32 %31, 1
  br i1 %cmp45, label %if.end44.cond.end55_crit_edge, label %cond.false54, !prof !84

if.end44.cond.end55_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end55

cond.false54:                                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1409) #10
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %if.end44.cond.end55_crit_edge
  %32 = ptrtoint ptr %tirec to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tirec, align 8
  %34 = ptrtoint ptr %irec to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %irec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %35)
  %cmp58 = icmp eq i64 %33, %35
  br i1 %cmp58, label %cond.end55.cond.end68_crit_edge, label %cond.false67, !prof !84

cond.end55.cond.end68_crit_edge:                  ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end68

cond.false67:                                     ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #12
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1410) #10
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %cond.end55.cond.end68_crit_edge
  call fastcc void @trace_xfs_swap_extent_rmap_remap_piece(ptr noundef %ip, ptr noundef nonnull %irec)
  %36 = call ptr @memcpy(ptr %uirec, ptr %tirec, i32 32)
  %37 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %br_blockcount, align 8
  %39 = ptrtoint ptr %br_blockcount70 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %br_blockcount70, align 8
  %41 = call i64 @llvm.umin.i64(i64 %38, i64 %40)
  %42 = ptrtoint ptr %br_blockcount76 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %br_blockcount76, align 8
  call fastcc void @trace_xfs_swap_extent_rmap_remap_piece(ptr noundef %tip, ptr noundef nonnull %uirec)
  %43 = ptrtoint ptr %br_startblock.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %br_startblock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %44)
  %switch.i = icmp ult i64 %44, -2
  %and.i.i = and i64 %44, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i)
  %cmp.i.i = icmp ne i64 %and.i.i, 4503599627239424
  %45 = and i1 %switch.i, %cmp.i.i
  br i1 %45, label %if.then78, label %cond.end68.if.end83_crit_edge

cond.end68.if.end83_crit_edge:                    ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then78:                                        ; preds = %cond.end68
  %call79 = call i32 @xfs_iext_count_may_overflow(ptr noundef %ip, i32 noundef 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then78.if.end83_crit_edge, label %if.then78.out_crit_edge

if.then78.out_crit_edge:                          ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.end83:                                         ; preds = %if.then78.if.end83_crit_edge, %cond.end68.if.end83_crit_edge
  %46 = ptrtoint ptr %br_startblock.i168 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %br_startblock.i168, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2, i64 %47)
  %switch.i169 = icmp ult i64 %47, -2
  %and.i.i170 = and i64 %47, 4503599627239424
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627239424, i64 %and.i.i170)
  %cmp.i.i171 = icmp ne i64 %and.i.i170, 4503599627239424
  %48 = and i1 %switch.i169, %cmp.i.i171
  br i1 %48, label %if.then85, label %if.end83.if.end90_crit_edge

if.end83.if.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then85:                                        ; preds = %if.end83
  %call86 = call i32 @xfs_iext_count_may_overflow(ptr noundef %tip, i32 noundef 0, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.then85.if.end90_crit_edge, label %if.then85.out_crit_edge

if.then85.out_crit_edge:                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then85.if.end90_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.end90:                                         ; preds = %if.then85.if.end90_crit_edge, %if.end83.if.end90_crit_edge
  call void @xfs_bmap_unmap_extent(ptr noundef %tp.1176, ptr noundef %tip, ptr noundef nonnull %uirec) #10
  call void @xfs_bmap_unmap_extent(ptr noundef %tp.1176, ptr noundef %ip, ptr noundef nonnull %irec) #10
  call void @xfs_bmap_map_extent(ptr noundef %tp.1176, ptr noundef %ip, ptr noundef nonnull %uirec) #10
  call void @xfs_bmap_map_extent(ptr noundef %tp.1176, ptr noundef %tip, ptr noundef nonnull %irec) #10
  %call91 = call i32 @xfs_defer_finish(ptr noundef %tpp) #10
  %49 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tpp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.out_crit_edge

if.end90.out_crit_edge:                           ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end94:                                         ; preds = %if.end90
  %51 = ptrtoint ptr %tirec to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %tirec, align 8
  %add96 = add i64 %52, %41
  store i64 %add96, ptr %tirec, align 8
  %53 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3, i64 %54)
  %switch = icmp ugt i64 %54, -3
  br i1 %switch, label %if.end94.if.end106_crit_edge, label %if.then103

if.end94.if.end106_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then103:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %add105 = add i64 %54, %41
  %55 = ptrtoint ptr %br_startblock to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %add105, ptr %br_startblock, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end94.if.end106_crit_edge
  %56 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %br_blockcount, align 8
  %sub108 = sub i64 %57, %41
  store i64 %sub108, ptr %br_blockcount, align 8
  %tobool27.not = icmp eq i64 %57, %41
  br i1 %tobool27.not, label %if.end106.while.end_crit_edge, label %if.end106.while.body28_crit_edge

if.end106.while.body28_crit_edge:                 ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body28

if.end106.while.end_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end106.while.end_crit_edge, %cond.end24.while.end_crit_edge
  %tp.1.lcssa = phi ptr [ %tp.0178, %cond.end24.while.end_crit_edge ], [ %50, %if.end106.while.end_crit_edge ]
  %sub109 = sub i64 %count_fsb.0180, %22
  %add110 = add i64 %22, %offset_fsb.0179
  %tobool6.not = icmp eq i64 %sub109, 0
  br i1 %tobool6.not, label %while.end.cleanup_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end90.out_crit_edge, %if.then85.out_crit_edge, %if.then78.out_crit_edge, %cond.end39.out_crit_edge, %while.body.out_crit_edge
  %error.0 = phi i32 [ %call91, %if.end90.out_crit_edge ], [ %call86, %if.then85.out_crit_edge ], [ %call79, %if.then78.out_crit_edge ], [ %call41, %cond.end39.out_crit_edge ], [ %call7, %while.body.out_crit_edge ]
  %58 = call ptr @llvm.returnaddress(i32 0)
  %59 = ptrtoint ptr %58 to i32
  call fastcc void @trace_xfs_swap_extent_rmap_error(ptr noundef %ip, i32 noundef %error.0, i32 noundef %59)
  br label %cleanup

cleanup:                                          ; preds = %out, %while.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ]
  %60 = ptrtoint ptr %i_diflags2 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %6, ptr %i_diflags2, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nimaps) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tirec) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %uirec) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irec) #10
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_swap_extent_forks(ptr noundef %tp, ptr noundef %ip, ptr noundef %tip, ptr nocapture noundef %src_log_flags, ptr nocapture noundef %target_log_flags) unnamed_addr #6 align 64 {
entry:
  %aforkblks = alloca i64, align 8
  %taforkblks = alloca i64, align 8
  %junk = alloca i32, align 4
  %__tmp = alloca %struct.xfs_ifork, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %aforkblks) #10
  %0 = ptrtoint ptr %aforkblks to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %aforkblks, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %taforkblks) #10
  %1 = ptrtoint ptr %taforkblks to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %taforkblks, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %junk) #10
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %2 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %4 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_afp, align 8
  %if_nextents = getelementptr inbounds %struct.xfs_ifork, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %if_nextents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %if_nextents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true4:                                   ; preds = %land.lhs.true
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp7.not = icmp eq i8 %9, 1
  br i1 %cmp7.not, label %land.lhs.true4.if.end10_crit_edge, label %if.then

land.lhs.true4.if.end10_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true4
  %call = call i32 @xfs_bmap_count_blocks(ptr noundef %tp, ptr noundef %ip, i32 noundef 1, ptr noundef nonnull %junk, ptr noundef nonnull %aforkblks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end10_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %land.lhs.true4.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %i_forkoff11 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 23
  %10 = ptrtoint ptr %i_forkoff11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i_forkoff11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp13.not = icmp eq i8 %11, 0
  br i1 %cmp13.not, label %if.end10.if.end31_crit_edge, label %land.lhs.true15

if.end10.if.end31_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true15:                                  ; preds = %if.end10
  %i_afp16 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 6
  %12 = ptrtoint ptr %i_afp16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_afp16, align 8
  %if_nextents17 = getelementptr inbounds %struct.xfs_ifork, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %if_nextents17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %if_nextents17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp18 = icmp sgt i32 %15, 0
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true15.if.end31_crit_edge

land.lhs.true15.if.end31_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %if_format22 = getelementptr inbounds %struct.xfs_ifork, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %if_format22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %if_format22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp24.not = icmp eq i8 %17, 1
  br i1 %cmp24.not, label %land.lhs.true20.if.end31_crit_edge, label %if.then26

land.lhs.true20.if.end31_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then26:                                        ; preds = %land.lhs.true20
  %call27 = call i32 @xfs_bmap_count_blocks(ptr noundef %tp, ptr noundef %tip, i32 noundef 1, ptr noundef nonnull %junk, ptr noundef nonnull %taforkblks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %land.lhs.true20.if.end31_crit_edge, %land.lhs.true15.if.end31_crit_edge, %if.end10.if.end31_crit_edge
  %18 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip, align 8
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %19, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %21, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end31.do.body_crit_edge, label %if.then33

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then33:                                        ; preds = %if.end31
  %if_format34 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %22 = ptrtoint ptr %if_format34 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %if_format34, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %23)
  %cmp36 = icmp eq i8 %23, 3
  br i1 %cmp36, label %if.then38, label %if.then33.if.end39_crit_edge

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %target_log_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %target_log_flags, align 4
  %or = or i32 %25, 512
  store i32 %or, ptr %target_log_flags, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then33.if.end39_crit_edge
  %if_format41 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 8, i32 6
  %26 = ptrtoint ptr %if_format41 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %if_format41, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp43 = icmp eq i8 %27, 3
  br i1 %cmp43, label %if.then45, label %if.end39.do.body_crit_edge

if.end39.do.body_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then45:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %src_log_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_log_flags, align 4
  %or46 = or i32 %29, 512
  store i32 %or46, ptr %src_log_flags, align 4
  br label %do.body

do.body:                                          ; preds = %if.then45, %if.end39.do.body_crit_edge, %if.end31.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__tmp)
  %i_df49 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  %30 = call ptr @memcpy(ptr %__tmp, ptr %i_df49, i32 32)
  %i_df51 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 8
  %31 = call ptr @memcpy(ptr %i_df49, ptr %i_df51, i32 32)
  %32 = call ptr @memcpy(ptr %i_df51, ptr %__tmp, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__tmp)
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 19
  %33 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %i_nblocks, align 8
  %i_nblocks53 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 19
  %35 = ptrtoint ptr %i_nblocks53 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_nblocks53, align 8
  %37 = ptrtoint ptr %taforkblks to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %taforkblks, align 8
  %sub = sub i64 %36, %38
  %39 = ptrtoint ptr %aforkblks to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %aforkblks, align 8
  %add = add i64 %sub, %40
  store i64 %add, ptr %i_nblocks, align 8
  %add55 = add i64 %38, %34
  %sub56 = sub i64 %add55, %40
  store i64 %sub56, ptr %i_nblocks53, align 8
  %i_delayed_blks = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 17
  %41 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %i_delayed_blks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp58 = icmp eq i64 %42, 0
  br i1 %cmp58, label %do.body.cond.end_crit_edge, label %cond.false, !prof !84

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 1542) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body.cond.end_crit_edge
  %i_delayed_blks62 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 17
  %43 = ptrtoint ptr %i_delayed_blks62 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %i_delayed_blks62, align 8
  %45 = ptrtoint ptr %i_delayed_blks to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %i_delayed_blks, align 8
  store i64 0, ptr %i_delayed_blks62, align 8
  %if_format66 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8, i32 6
  %46 = ptrtoint ptr %if_format66 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %if_format66, align 2
  %conv67 = sext i8 %47 to i32
  %48 = zext i32 %conv67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %conv67, label %cond.end.sw.epilog_crit_edge [
    i32 2, label %cond.end.sw.epilog.sink.split_crit_edge
    i32 3, label %sw.bb69
  ]

cond.end.sw.epilog.sink.split_crit_edge:          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb69:                                          ; preds = %cond.end
  %49 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ip, align 8
  %m_features.i145 = getelementptr inbounds %struct.xfs_mount, ptr %50, i32 0, i32 61
  %51 = ptrtoint ptr %m_features.i145 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %m_features.i145, align 8
  %and.i146 = and i64 %52, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i146)
  %tobool.i147.not = icmp eq i64 %and.i146, 0
  br i1 %tobool.i147.not, label %sw.bb69.sw.epilog.sink.split_crit_edge, label %lor.rhs

sw.bb69.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

lor.rhs:                                          ; preds = %sw.bb69
  %53 = ptrtoint ptr %src_log_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src_log_flags, align 4
  %and = and i32 %54, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %cond.false80, label %lor.rhs.sw.epilog.sink.split_crit_edge, !prof !83

lor.rhs.sw.epilog.sink.split_crit_edge:           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

cond.false80:                                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1552) #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %cond.false80, %lor.rhs.sw.epilog.sink.split_crit_edge, %sw.bb69.sw.epilog.sink.split_crit_edge, %cond.end.sw.epilog.sink.split_crit_edge
  %.sink152 = phi i32 [ 4, %cond.end.sw.epilog.sink.split_crit_edge ], [ 8, %sw.bb69.sw.epilog.sink.split_crit_edge ], [ 8, %lor.rhs.sw.epilog.sink.split_crit_edge ], [ 8, %cond.false80 ]
  %55 = ptrtoint ptr %src_log_flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %src_log_flags, align 4
  %or82 = or i32 %56, %.sink152
  store i32 %or82, ptr %src_log_flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %cond.end.sw.epilog_crit_edge
  %if_format84 = getelementptr inbounds %struct.xfs_inode, ptr %tip, i32 0, i32 8, i32 6
  %57 = ptrtoint ptr %if_format84 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %if_format84, align 2
  %conv85 = sext i8 %58 to i32
  %59 = zext i32 %conv85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %conv85, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %sw.bb86
    i32 3, label %sw.bb88
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb86:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %target_log_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %target_log_flags, align 4
  %or87 = or i32 %61, 4
  store i32 %or87, ptr %target_log_flags, align 4
  br label %cleanup

sw.bb88:                                          ; preds = %sw.epilog
  %62 = ptrtoint ptr %target_log_flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %target_log_flags, align 4
  %or89 = or i32 %63, 8
  store i32 %or89, ptr %target_log_flags, align 4
  %64 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ip, align 8
  %m_features.i148 = getelementptr inbounds %struct.xfs_mount, ptr %65, i32 0, i32 61
  %66 = ptrtoint ptr %m_features.i148 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %m_features.i148, align 8
  %and.i149 = and i64 %67, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i149)
  %tobool.i150 = icmp eq i64 %and.i149, 0
  %and93 = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94 = icmp ne i32 %and93, 0
  %or.cond = select i1 %tobool.i150, i1 true, i1 %tobool94
  br i1 %or.cond, label %sw.bb88.cleanup_crit_edge, label %cond.false103, !prof !99

sw.bb88.cleanup_crit_edge:                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false103:                                    ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1564) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.false103, %sw.bb88.cleanup_crit_edge, %sw.bb86, %sw.epilog.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call27, %if.then26.cleanup_crit_edge ], [ 0, %sw.bb88.cleanup_crit_edge ], [ 0, %cond.false103 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %junk) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %taforkblks) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %aforkblks) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_set_cowblocks_tag(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_inode_clear_cowblocks_tag(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xfs_swap_change_owner(ptr noundef %tpp, ptr noundef %ip, ptr noundef %tmpip) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpp, align 4
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_ino, align 8
  %call16 = tail call i32 @xfs_bmbt_change_owner(ptr noundef %1, ptr noundef %ip, i32 noundef 0, i64 noundef %3, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call16)
  %cmp.not17 = icmp eq i32 %call16, -11
  br i1 %cmp.not17, label %entry.if.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.end3.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @xfs_trans_roll(ptr noundef %tpp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %tpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tpp, align 4
  tail call void @xfs_trans_ijoin(ptr noundef %5, ptr noundef %ip, i32 noundef 0) #10
  tail call void @xfs_trans_ijoin(ptr noundef %5, ptr noundef %tmpip, i32 noundef 0) #10
  tail call void @xfs_trans_log_inode(ptr noundef %5, ptr noundef %ip, i32 noundef 1) #10
  tail call void @xfs_trans_log_inode(ptr noundef %5, ptr noundef %tmpip, i32 noundef 1) #10
  %6 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %i_ino, align 8
  %call = tail call i32 @xfs_bmbt_change_owner(ptr noundef %5, ptr noundef %ip, i32 noundef 0, i64 noundef %7, ptr noundef null) #10
  %cmp.not = icmp eq i32 %call, -11
  br i1 %cmp.not, label %if.end3.if.end_crit_edge, label %if.end3.do.end_crit_edge

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end3.if.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.end3.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %error.0 = phi i32 [ %call16, %entry.do.end_crit_edge ], [ %call1, %if.end.do.end_crit_edge ], [ %call, %if.end3.do.end_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_swap_extent_after(ptr noundef %ip, i32 noundef %which) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_after, i32 0, i32 1), ptr blockaddress(@trace_xfs_swap_extent_after, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !100
  %call42 = tail call i32 @__traceiter_xfs_swap_extent_after(ptr noundef null, ptr noundef %ip, i32 noundef %which) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !101
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_after, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_after, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_swap_extent_after.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_swap_extent_after.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 2202, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
declare dso_local void @filemap_invalidate_unlock_two(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !102
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
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !103
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !83

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !104
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !106
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !107
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !108
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
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_reflink_trim_around_shared(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_iext_prev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_alloc_file_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_free_file_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bunmapi(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_collapse_file_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_insert_file_space(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_swap_extent_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_swap_extent_rmap_remap(ptr noundef %ip, ptr noundef %irec) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_rmap_remap, i32 0, i32 1), ptr blockaddress(@trace_xfs_swap_extent_rmap_remap, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %call42 = tail call i32 @__traceiter_xfs_swap_extent_rmap_remap(ptr noundef null, ptr noundef %ip, ptr noundef %irec) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_rmap_remap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_rmap_remap, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_swap_extent_rmap_remap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_swap_extent_rmap_remap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 3430, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
define internal fastcc void @trace_xfs_swap_extent_rmap_remap_piece(ptr noundef %ip, ptr noundef %irec) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_rmap_remap_piece, i32 0, i32 1), ptr blockaddress(@trace_xfs_swap_extent_rmap_remap_piece, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %call42 = tail call i32 @__traceiter_xfs_swap_extent_rmap_remap_piece(ptr noundef null, ptr noundef %ip, ptr noundef %irec) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_rmap_remap_piece, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_rmap_remap_piece, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_swap_extent_rmap_remap_piece.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_swap_extent_rmap_remap_piece.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 3431, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
declare dso_local void @xfs_bmap_unmap_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_bmap_map_extent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_swap_extent_rmap_error(ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_rmap_error, i32 0, i32 1), ptr blockaddress(@trace_xfs_swap_extent_rmap_error, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !86

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !84

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
  %9 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !113
  %call42 = tail call i32 @__traceiter_xfs_swap_extent_rmap_error(ptr noundef null, ptr noundef %ip, i32 noundef %error, i32 noundef %caller_ip) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !114
  %13 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !84

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
  %26 = tail call i32 @llvm.read_register.i32(metadata !71) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !89
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_rmap_error, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_swap_extent_rmap_error, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_xfs_swap_extent_rmap_error.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_xfs_swap_extent_rmap_error.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 3432, ptr noundef nonnull @.str.13) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !90
  %31 = tail call i32 @llvm.read_register.i32(metadata !71) #10
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
declare dso_local i32 @__traceiter_xfs_swap_extent_rmap_remap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_swap_extent_rmap_remap_piece(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_swap_extent_rmap_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_bmbt_change_owner(ptr noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_trans_roll(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_swap_extent_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !49, !51, !53, !55, !56, !58, !59, !61, !62, !64, !66, !68, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_bmap_util.c", i32 98, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_bmap_util.c", i32 99, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_bmap_util.c", i32 601, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_bmap_util.c", i32 655, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_bmap_util.c", i32 734, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1103, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1104, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1727, i32 7}
!17 = !{ptr @__func__.xfs_swap_extents, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1728, i32 5}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1777, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1779, i32 3}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/xfs_bmap_util.c", i32 325, i32 4}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_trace.h", i32 756, i32 1}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../fs/xfs/xfs_trace.h", i32 757, i32 1}
!35 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../fs/xfs/xfs_trace.h", i32 759, i32 1}
!38 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../fs/xfs/xfs_trace.h", i32 760, i32 1}
!41 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../fs/xfs/xfs_trace.h", i32 2201, i32 1}
!44 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1391, i32 3}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1392, i32 3}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1399, i32 4}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1410, i32 4}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/xfs/xfs_trace.h", i32 3430, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../fs/xfs/xfs_trace.h", i32 3431, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../fs/xfs/xfs_trace.h", i32 3432, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1542, i32 2}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1551, i32 3}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/xfs/xfs_bmap_util.c", i32 1563, i32 3}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../fs/xfs/xfs_trace.h", i32 2202, i32 1}
!70 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i8 0, i8 2}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2148513719, i64 2148513999, i64 2148514333, i64 2148514667}
!86 = !{i64 2148291922, i64 2148291927, i64 2148291940, i64 2148291984, i64 2148292018, i64 2148292039}
!87 = !{i64 2157946928}
!88 = !{i64 2157947135}
!89 = !{i64 2149994015}
!90 = !{i64 2149995051}
!91 = !{i64 2157963415}
!92 = !{i64 2157963620}
!93 = !{i64 2157996437}
!94 = !{i64 2157996650}
!95 = !{i64 2158017225}
!96 = !{i64 2158017434}
!97 = !{i64 2162207042}
!98 = !{i64 2162207267}
!99 = !{!"branch_weights", i32 4001, i32 1}
!100 = !{i64 2162224049}
!101 = !{i64 2162224272}
!102 = !{i64 1068614, i64 1068675}
!103 = !{i64 1071346}
!104 = !{i64 1071631}
!105 = !{i64 2153164134}
!106 = !{i64 2153163976}
!107 = !{i64 2153164304}
!108 = !{i64 2149827984}
!109 = !{i64 2165067522}
!110 = !{i64 2165067753}
!111 = !{i64 2165085444}
!112 = !{i64 2165085687}
!113 = !{i64 2165103772}
!114 = !{i64 2165104027}
