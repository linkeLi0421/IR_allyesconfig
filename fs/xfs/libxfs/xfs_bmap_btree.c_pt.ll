; ModuleID = '/llk/IR_all_yes/fs/xfs/libxfs/xfs_bmap_btree.c_pt.bc'
source_filename = "../fs/xfs/libxfs/xfs_bmap_btree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xfs_buf_ops = type { ptr, %union.anon.87, ptr, ptr, ptr }
%union.anon.87 = type { [2 x i32] }
%struct.xfs_btree_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.xfs_btree_block = type { i32, i16, i16, %union.anon.89 }
%union.anon.89 = type { %struct.xfs_btree_block_lhdr }
%struct.xfs_btree_block_lhdr = type { i64, i64, i64, i64, %struct.uuid_t, i64, i32, i32 }
%struct.uuid_t = type { [16 x i8] }
%struct.xfs_bmdr_block = type { i16, i16 }
%struct.xfs_mount = type { %struct.xfs_sb, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, [5 x i64], [5 x i64], %struct.xfs_ino_geometry, %struct.xfs_trans_resv, i32, i8, i8, i8, i8, i8, i8, i8, i8, [116 x i8], %struct.spinlock, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.percpu_counter, %struct.atomic64_t, %struct.xarray, %struct.spinlock, i64, i64, i64, %struct.delayed_work, %struct.xfs_kobj, %struct.xfs_kobj, %struct.xfs_kobj, [1 x [4 x %struct.xfs_error_cfg]], %struct.xstats, i32, i32, %struct.spinlock, %struct.shrinker, %struct.work_struct, i32, %struct.mutex, ptr, %struct.xfs_kobj }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
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
%struct.xfs_bmbt_rec = type { i64, i64 }
%struct.xfs_bmbt_irec = type { i64, i64, i64, i32 }
%struct.xfs_btree_cur = type { ptr, ptr, ptr, ptr, i32, i32, %union.xfs_btree_irec, i8, i8, i32, %union.anon.95, [0 x %struct.xfs_btree_level] }
%union.xfs_btree_irec = type { %struct.xfs_bmbt_irec }
%union.anon.95 = type { %struct.xfs_btree_cur_ag }
%struct.xfs_btree_cur_ag = type { ptr, %union.anon.96, %union.anon.97 }
%union.anon.96 = type { ptr }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.xfs_btree_level = type { ptr, i16, i16 }
%struct.xfs_btree_cur_ino = type { ptr, ptr, i32, i16, i8, i8 }
%struct.xfs_buf = type { %struct.rhash_head, i64, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.semaphore, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.completion, ptr, %struct.list_head, ptr, ptr, [2 x ptr], ptr, %struct.xfs_buf_map, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.xfs_buf_map = type { i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.xfs_alloc_arg = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.xfs_owner_info, i32, i8 }
%struct.xfs_owner_info = type { i64, i64, i32 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"be16_to_cpu(rblock->bb_level) > 0\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fs/xfs/libxfs/xfs_bmap_btree.c\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"s->br_state == XFS_EXT_NORM || s->br_state == XFS_EXT_UNWRITTEN\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"!(s->br_startoff & xfs_mask64hi(64-BMBT_STARTOFF_BITLEN))\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"!(s->br_blockcount & xfs_mask64hi(64-BMBT_BLOCKCOUNT_BITLEN))\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"!(s->br_startblock & xfs_mask64hi(64-BMBT_STARTBLOCK_BITLEN))\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"rblock->bb_magic == cpu_to_be32(XFS_BMAP_CRC_MAGIC)\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"uuid_equal(&rblock->bb_u.l.bb_uuid, &mp->m_sb.sb_meta_uuid)\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"rblock->bb_u.l.bb_blkno == cpu_to_be64(XFS_BUF_DADDR_NULL)\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rblock->bb_magic == cpu_to_be32(XFS_BMAP_MAGIC)\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"rblock->bb_u.l.bb_leftsib == cpu_to_be64(NULLFSBLOCK)\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"rblock->bb_u.l.bb_rightsib == cpu_to_be64(NULLFSBLOCK)\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rblock->bb_level != 0\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xfs_bmbt\00", [23 x i8] zeroinitializer }, align 32
@xfs_bmbt_buf_ops = dso_local constant { %struct.xfs_buf_ops, [40 x i8] } { %struct.xfs_buf_ops { ptr @.str.13, %union.anon.87 { [2 x i32] [i32 1112359248, i32 1112359219] }, ptr @xfs_bmbt_read_verify, ptr @xfs_bmbt_write_verify, ptr @xfs_bmbt_verify }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"whichfork != XFS_COW_FORK\00", [38 x i8] zeroinitializer }, align 32
@xfs_bmbt_cur_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@xfs_bmbt_ops = internal constant { %struct.xfs_btree_ops, [48 x i8] } { %struct.xfs_btree_ops { i32 8, i32 16, ptr @xfs_bmbt_dup_cursor, ptr @xfs_bmbt_update_cursor, ptr null, ptr @xfs_bmbt_alloc_block, ptr @xfs_bmbt_free_block, ptr null, ptr @xfs_bmbt_get_minrecs, ptr @xfs_bmbt_get_maxrecs, ptr @xfs_bmbt_get_dmaxrecs, ptr @xfs_bmbt_init_key_from_rec, ptr @xfs_bmbt_init_rec_from_cur, ptr @xfs_bmbt_init_ptr_from_cur, ptr @xfs_bmbt_init_high_key_from_rec, ptr @xfs_bmbt_key_diff, ptr @xfs_bmbt_diff_two_keys, ptr @xfs_bmbt_buf_ops, ptr @xfs_bmbt_keys_inorder, ptr @xfs_bmbt_recs_inorder }, [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tp || buffer_list\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"!(tp && buffer_list)\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"XFS_IFORK_PTR(ip, whichfork)->if_format == XFS_DINODE_FMT_BTREE\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xfs_bmbt_cur\00", [19 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_btree_corrupt = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_btree_corrupt.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"(dst->bc_tp->t_firstblock != NULLFSBLOCK) || (dst->bc_ino.ip->i_diflags & XFS_DIFLAG_REALTIME)\00", [33 x i8] zeroinitializer }, align 32
@xfs_bmbt_alloc_block.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"args.len == 1\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 49, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 109, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 110, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 111, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 112, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 142, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 143, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 145, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 148, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 149, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 150, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 151, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 491, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"xfs_bmbt_buf_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 490, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 555, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"xfs_bmbt_cur_cache\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 25, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"xfs_bmbt_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 521, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 660, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 661, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 662, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 684, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 473, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 108, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 187, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [34 x i8] c"../fs/xfs/libxfs/xfs_bmap_btree.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 262, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @xfs_bmbt_buf_ops, ptr @.str.14, ptr @xfs_bmbt_cur_cache, ptr @xfs_bmbt_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bmbt_buf_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bmbt_cur_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xfs_bmbt_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_bmdr_to_bmbt(ptr nocapture noundef readonly %ip, ptr nocapture noundef readonly %dblock, i32 noundef %dblocklen, ptr noundef %rblock, i32 noundef %rblocklen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ip, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 4
  %2 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_ino, align 8
  tail call void @xfs_btree_init_block_int(ptr noundef %1, ptr noundef %rblock, i64 noundef -1, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 0, i64 noundef %3, i32 noundef 1) #18
  %4 = ptrtoint ptr %dblock to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dblock, align 2
  %bb_level1 = getelementptr inbounds %struct.xfs_btree_block, ptr %rblock, i32 0, i32 1
  %6 = ptrtoint ptr %bb_level1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %bb_level1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !67

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 49) #18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %bb_numrecs = getelementptr inbounds %struct.xfs_bmdr_block, ptr %dblock, i32 0, i32 1
  %7 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bb_numrecs, align 2
  %bb_numrecs5 = getelementptr inbounds %struct.xfs_btree_block, ptr %rblock, i32 0, i32 2
  %9 = ptrtoint ptr %bb_numrecs5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %bb_numrecs5, align 2
  %sub.i = add i32 %dblocklen, -4
  %add.ptr = getelementptr i8, ptr %dblock, i32 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %10 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond = select i1 %tobool.i.not, i32 24, i32 72
  %add.ptr9 = getelementptr i8, ptr %rblock, i32 %cond
  %12 = lshr i32 %sub.i, 1
  %mul = and i32 %12, 2147483640
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 %mul
  %cond.neg.i = select i1 %tobool.i.not, i32 -24, i32 -72
  %sub.i44 = add i32 %cond.neg.i, %rblocklen
  %13 = lshr i32 %sub.i44, 1
  %mul19 = and i32 %13, 2147483640
  %add.ptr20 = getelementptr i8, ptr %add.ptr9, i32 %mul19
  %14 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bb_numrecs, align 2
  %conv23 = zext i16 %15 to i32
  %mul24 = shl nuw nsw i32 %conv23, 3
  %16 = call ptr @memcpy(ptr %add.ptr9, ptr %add.ptr, i32 %mul24)
  %17 = call ptr @memcpy(ptr %add.ptr20, ptr %add.ptr12, i32 %mul24)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_init_block_int(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_bmdr_maxrecs(i32 noundef %blocklen, i32 noundef %leaf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %blocklen, -4
  %retval.0 = lshr i32 %sub, 4
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_bmbt_maxrecs(ptr nocapture noundef readonly %mp, i32 noundef %blocklen, i32 noundef %leaf) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %cond.neg = select i1 %tobool.i.not, i32 -24, i32 -72
  %sub = add i32 %cond.neg, %blocklen
  %retval.0.i = lshr i32 %sub, 4
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @xfs_bmbt_disk_get_all(ptr nocapture noundef readonly %rec, ptr nocapture noundef writeonly %irec) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %rec, align 1
  %l12 = getelementptr inbounds %struct.xfs_bmbt_rec, ptr %rec, i32 0, i32 1
  %2 = ptrtoint ptr %l12 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %l12, align 1
  %and = lshr i64 %1, 9
  %shr = and i64 %and, 18014398509481983
  %4 = ptrtoint ptr %irec to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %shr, ptr %irec, align 8
  %and6 = and i64 %1, 511
  %or = tail call i64 @llvm.fshl.i64(i64 %and6, i64 %3, i64 43)
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 1
  %5 = ptrtoint ptr %br_startblock to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %or, ptr %br_startblock, align 8
  %and9 = and i64 %3, 2097151
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 2
  %6 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %and9, ptr %br_blockcount, align 8
  %.lobit = lshr i64 %1, 63
  %7 = trunc i64 %.lobit to i32
  %8 = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %irec, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @xfs_bmbt_disk_get_blockcount(ptr nocapture noundef readonly %r) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %l1 = getelementptr inbounds %struct.xfs_bmbt_rec, ptr %r, i32 0, i32 1
  %0 = ptrtoint ptr %l1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %l1, align 8
  %and = and i64 %1, 2097151
  ret i64 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @xfs_bmbt_disk_get_startoff(ptr nocapture noundef readonly %r) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %r, align 8
  %and = lshr i64 %1, 9
  %shr = and i64 %and, 18014398509481983
  ret i64 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_bmbt_disk_set_all(ptr nocapture noundef writeonly %r, ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %br_state = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %s, i32 0, i32 3
  %0 = ptrtoint ptr %br_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %br_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 109) #18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %s, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 18014398509481984, i64 %3)
  %tobool8.not = icmp ult i64 %3, 18014398509481984
  br i1 %tobool8.not, label %cond.end.cond.end19_crit_edge, label %cond.false18, !prof !68

cond.end.cond.end19_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 110) #18
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %cond.end.cond.end19_crit_edge
  %br_blockcount = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %s, i32 0, i32 2
  %4 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %br_blockcount, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2097152, i64 %5)
  %tobool22.not = icmp ult i64 %5, 2097152
  br i1 %tobool22.not, label %cond.end19.cond.end33_crit_edge, label %cond.false32, !prof !68

cond.end19.cond.end33_crit_edge:                  ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end33

cond.false32:                                     ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 111) #18
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false32, %cond.end19.cond.end33_crit_edge
  %br_startblock = getelementptr inbounds %struct.xfs_bmbt_irec, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %br_startblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503599627370496, i64 %7)
  %tobool36.not = icmp ult i64 %7, 4503599627370496
  br i1 %tobool36.not, label %cond.end33.cond.end47_crit_edge, label %cond.false46, !prof !68

cond.end33.cond.end47_crit_edge:                  ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 112) #18
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.end33.cond.end47_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %shl = select i1 %cmp.not, i64 0, i64 -9223372036854775808
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %s, align 8
  %shl50 = shl i64 %9, 9
  %or = or i64 %shl50, %shl
  %10 = ptrtoint ptr %br_startblock to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %br_startblock, align 8
  %shr = lshr i64 %11, 43
  %or52 = or i64 %or, %shr
  %12 = ptrtoint ptr %r to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %or52, ptr %r, align 1
  %13 = load i64, ptr %br_startblock, align 8
  %shl54 = shl i64 %13, 21
  %14 = ptrtoint ptr %br_blockcount to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %br_blockcount, align 8
  %and57 = and i64 %15, 2097151
  %or58 = or i64 %and57, %shl54
  %l1 = getelementptr inbounds %struct.xfs_bmbt_rec, ptr %r, i32 0, i32 1
  %16 = ptrtoint ptr %l1 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %or58, ptr %l1, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_bmbt_to_bmdr(ptr nocapture noundef readonly %mp, ptr nocapture noundef readonly %rblock, i32 noundef %rblocklen, ptr nocapture noundef %dblock, i32 noundef %dblocklen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %0 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %2 = ptrtoint ptr %rblock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rblock, align 8
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1112359219, i32 %3)
  %cmp = icmp eq i32 %3, 1112359219
  br i1 %cmp, label %if.then.cond.end_crit_edge, label %cond.false, !prof !68

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 142) #18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then.cond.end_crit_edge
  %bb_uuid = getelementptr inbounds %struct.xfs_btree_block, ptr %rblock, i32 0, i32 3, i32 0, i32 4
  %sb_meta_uuid = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 54
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %bb_uuid, ptr noundef dereferenceable(16) %sb_meta_uuid, i32 16) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %cond.end.cond.end11_crit_edge, label %cond.false10, !prof !68

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 144) #18
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.end.cond.end11_crit_edge
  %bb_blkno = getelementptr inbounds %struct.xfs_btree_block, ptr %rblock, i32 0, i32 3, i32 0, i32 2
  %4 = ptrtoint ptr %bb_blkno to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bb_blkno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %5)
  %cmp13 = icmp eq i64 %5, -1
  br i1 %cmp13, label %cond.end11.if.end_crit_edge, label %cond.false21, !prof !68

cond.end11.if.end_crit_edge:                      ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

cond.false21:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 146) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1112359248, i32 %3)
  %cmp24 = icmp eq i32 %3, 1112359248
  br i1 %cmp24, label %if.else.if.end_crit_edge, label %cond.false32, !prof !68

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

cond.false32:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 148) #18
  br label %if.end

if.end:                                           ; preds = %cond.false32, %if.else.if.end_crit_edge, %cond.false21, %cond.end11.if.end_crit_edge
  %bb_u34 = getelementptr inbounds %struct.xfs_btree_block, ptr %rblock, i32 0, i32 3
  %6 = ptrtoint ptr %bb_u34 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bb_u34, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %7)
  %cmp35 = icmp eq i64 %7, -1
  br i1 %cmp35, label %if.end.cond.end44_crit_edge, label %cond.false43, !prof !68

if.end.cond.end44_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end44

cond.false43:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 149) #18
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %if.end.cond.end44_crit_edge
  %bb_rightsib = getelementptr inbounds %struct.xfs_btree_block, ptr %rblock, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %bb_rightsib to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bb_rightsib, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp46 = icmp eq i64 %9, -1
  br i1 %cmp46, label %cond.end44.cond.end55_crit_edge, label %cond.false54, !prof !68

cond.end44.cond.end55_crit_edge:                  ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end55

cond.false54:                                     ; preds = %cond.end44
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 150) #18
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %cond.end44.cond.end55_crit_edge
  %bb_level = getelementptr inbounds %struct.xfs_btree_block, ptr %rblock, i32 0, i32 1
  %10 = ptrtoint ptr %bb_level to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bb_level, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp56.not = icmp eq i16 %11, 0
  br i1 %cmp56.not, label %cond.false65, label %cond.end55.cond.end66_crit_edge, !prof !67

cond.end55.cond.end66_crit_edge:                  ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end66

cond.false65:                                     ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 151) #18
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %cond.end55.cond.end66_crit_edge
  %12 = ptrtoint ptr %bb_level to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bb_level, align 4
  %14 = ptrtoint ptr %dblock to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %dblock, align 2
  %bb_numrecs = getelementptr inbounds %struct.xfs_btree_block, ptr %rblock, i32 0, i32 2
  %15 = ptrtoint ptr %bb_numrecs to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bb_numrecs, align 2
  %bb_numrecs69 = getelementptr inbounds %struct.xfs_bmdr_block, ptr %dblock, i32 0, i32 1
  %17 = ptrtoint ptr %bb_numrecs69 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %bb_numrecs69, align 2
  %sub.i = add i32 %dblocklen, -4
  %18 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %m_features.i, align 8
  %and.i112 = and i64 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i112)
  %tobool.i113.not = icmp eq i64 %and.i112, 0
  %cond = select i1 %tobool.i113.not, i32 24, i32 72
  %add.ptr = getelementptr i8, ptr %rblock, i32 %cond
  %add.ptr74 = getelementptr i8, ptr %dblock, i32 4
  %cond.neg.i = select i1 %tobool.i113.not, i32 -24, i32 -72
  %sub.i117 = add i32 %cond.neg.i, %rblocklen
  %20 = lshr i32 %sub.i117, 1
  %mul = and i32 %20, 2147483640
  %add.ptr81 = getelementptr i8, ptr %add.ptr, i32 %mul
  %21 = lshr i32 %sub.i, 1
  %mul84 = and i32 %21, 2147483640
  %add.ptr85 = getelementptr i8, ptr %add.ptr74, i32 %mul84
  %conv88 = zext i16 %16 to i32
  %mul89 = shl nuw nsw i32 %conv88, 3
  %22 = call ptr @memcpy(ptr %add.ptr74, ptr %add.ptr, i32 %mul89)
  %23 = call ptr @memcpy(ptr %add.ptr85, ptr %add.ptr81, i32 %mul89)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_bmbt_get_maxrecs(ptr nocapture noundef readonly %cur, i32 noundef %level) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %0 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %level)
  %cmp = icmp eq i32 %sub, %level
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %whichfork = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %whichfork to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %whichfork, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %cond.false11 [
    i8 0, label %cond.true
    i8 1, label %cond.true9
  ]

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %7, i32 0, i32 8
  br label %cond.end13

cond.true9:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_afp, align 8
  br label %cond.end13

cond.false11:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 8
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false11, %cond.true9, %cond.true
  %cond14 = phi ptr [ %i_df, %cond.true ], [ %11, %cond.true9 ], [ %15, %cond.false11 ]
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %16 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bc_mp, align 4
  %if_broot_bytes = getelementptr inbounds %struct.xfs_ifork, ptr %cond14, i32 0, i32 5
  %18 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %if_broot_bytes, align 8
  %conv15 = sext i16 %19 to i32
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %17, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %cond.neg.i = select i1 %tobool.i.not.i, i32 -24, i32 -72
  %sub.i = add nsw i32 %cond.neg.i, %conv15
  %retval.0.i.i = lshr i32 %sub.i, 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %bc_mp18 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %22 = ptrtoint ptr %bc_mp18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bc_mp18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp19 = icmp ne i32 %level, 0
  %conv20 = zext i1 %cmp19 to i32
  %arrayidx = getelementptr %struct.xfs_mount, ptr %23, i32 0, i32 36, i32 %conv20
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %cond.end13
  %retval.0 = phi i32 [ %retval.0.i.i, %cond.end13 ], [ %25, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_bmbt_read_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @xfs_btree_lblock_verify_crc(ptr noundef %bp) #18
  br i1 %call, label %if.else, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !69
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -74, ptr noundef blockaddress(@xfs_bmbt_read_verify, %__here)) #18
  br label %if.end3

if.else:                                          ; preds = %entry
  %call1 = tail call ptr @xfs_bmbt_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.else.if.end3_crit_edge, label %if.then2

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call1) #18
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.else.if.end3_crit_edge, %__here
  %b_error = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 31
  %0 = ptrtoint ptr %b_error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool4.not = icmp eq i32 %1, 0
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = ptrtoint ptr %2 to i32
  tail call fastcc void @trace_xfs_btree_corrupt(ptr noundef %bp, i32 noundef %3)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_bmbt_write_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xfs_bmbt_verify(ptr noundef %bp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call ptr @llvm.returnaddress(i32 0)
  %1 = ptrtoint ptr %0 to i32
  tail call fastcc void @trace_xfs_btree_corrupt(ptr noundef %bp, i32 noundef %1)
  tail call void @xfs_verifier_error(ptr noundef %bp, i32 noundef -117, ptr noundef nonnull %call) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @xfs_btree_lblock_calc_crc(ptr noundef %bp) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @xfs_bmbt_verify(ptr noundef %bp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %b_mount = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 14
  %0 = ptrtoint ptr %b_mount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %b_mount, align 4
  %b_addr = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 16
  %2 = ptrtoint ptr %b_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b_addr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %call = tail call zeroext i1 @xfs_verify_magic(ptr noundef %bp, i32 noundef %5) #18
  br i1 %call, label %if.end, label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !70
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 61
  %6 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @xfs_btree_lblock_v5hdr_verify(ptr noundef %bp, i64 noundef -2) #18
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.then2.if.end6_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %bb_level = getelementptr inbounds %struct.xfs_btree_block, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %bb_level to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bb_level, align 4
  %conv = zext i16 %9 to i32
  %m_bm_maxlevels = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 43
  %10 = ptrtoint ptr %m_bm_maxlevels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %m_bm_maxlevels, align 8
  %arrayidx8 = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 43, i32 1
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx8, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %13)
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv)
  %cmp11 = icmp ult i32 %14, %conv
  br i1 %cmp11, label %__here14, label %if.end16

__here14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !71
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp17 = icmp ne i16 %9, 0
  %conv18 = zext i1 %cmp17 to i32
  %arrayidx19 = getelementptr %struct.xfs_mount, ptr %1, i32 0, i32 36, i32 %conv18
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx19, align 4
  %call20 = tail call ptr @xfs_btree_lblock_verify(ptr noundef %bp, i32 noundef %16) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %__here14, %if.then2.cleanup_crit_edge, %__here
  %retval.0 = phi ptr [ blockaddress(@xfs_bmbt_verify, %__here14), %__here14 ], [ %call20, %if.end16 ], [ blockaddress(@xfs_bmbt_verify, %__here), %__here ], [ %call3, %if.then2.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @xfs_bmbt_init_cursor(ptr noundef %mp, ptr noundef %tp, ptr noundef %ip, i32 noundef %whichfork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %whichfork)
  %cmp = icmp eq i32 %whichfork, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end10

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp1 = icmp eq i32 %whichfork, 1
  br i1 %cmp1, label %cond.true2, label %cond.end4

cond.true2:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #20
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %0 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_afp, align 8
  br label %cond.end10

cond.end4:                                        ; preds = %cond.false
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %2 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_cowfp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %whichfork)
  %cmp6.not = icmp eq i32 %whichfork, 2
  br i1 %cmp6.not, label %cond.false9, label %cond.end4.cond.end10_crit_edge, !prof !67

cond.end4.cond.end10_crit_edge:                   ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end4
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 555) #18
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %cond.end4.cond.end10_crit_edge, %cond.true2, %cond.true
  %cond5103 = phi ptr [ %3, %cond.end4.cond.end10_crit_edge ], [ %3, %cond.false9 ], [ %1, %cond.true2 ], [ %i_df, %cond.true ]
  %arrayidx = getelementptr %struct.xfs_mount, ptr %mp, i32 0, i32 43, i32 %whichfork
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %5 to i8
  %6 = load ptr, ptr @xfs_bmbt_cur_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 36160) #18
  %7 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tp, ptr %call.i.i, align 8
  %bc_mp.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %bc_mp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mp, ptr %bc_mp.i, align 4
  %bc_btnum.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %bc_btnum.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %bc_btnum.i, align 4
  %bc_maxlevels.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %bc_maxlevels.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %bc_maxlevels.i, align 1
  %bc_cache.i = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %bc_cache.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %6, ptr %bc_cache.i, align 4
  %if_broot = getelementptr inbounds %struct.xfs_ifork, ptr %cond5103, i32 0, i32 1
  %12 = ptrtoint ptr %if_broot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %if_broot, align 8
  %bb_level = getelementptr inbounds %struct.xfs_btree_block, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %bb_level to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bb_level, align 4
  %conv11 = trunc i16 %15 to i8
  %add = add i8 %conv11, 1
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %add, ptr %bc_nlevels, align 8
  %bc_statoff = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %bc_statoff to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 106, ptr %bc_statoff, align 4
  %bc_ops = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %bc_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xfs_bmbt_ops, ptr %bc_ops, align 8
  %bc_flags = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 4
  %m_features.i = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 61
  %19 = ptrtoint ptr %m_features.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %m_features.i, align 8
  %and.i = and i64 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %spec.store.select = select i1 %tobool.i.not, i32 3, i32 11
  %21 = ptrtoint ptr %bc_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.store.select, ptr %bc_flags, align 8
  br i1 %cmp, label %cond.true17, label %cond.false32

cond.true17:                                      ; preds = %cond.end10
  %i_forkoff = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %22 = ptrtoint ptr %i_forkoff to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i_forkoff, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp19.not = icmp eq i8 %23, 0
  br i1 %cmp19.not, label %cond.false24, label %cond.true21

cond.true21:                                      ; preds = %cond.true17
  call void @__sanitizer_cov_trace_pc() #20
  %conv18 = zext i8 %23 to i16
  %shl = shl nuw nsw i16 %conv18, 3
  br label %cond.end60

cond.false24:                                     ; preds = %cond.true17
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ip, align 8
  %sb_inodesize = getelementptr inbounds %struct.xfs_sb, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %sb_inodesize to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sb_inodesize, align 8
  %m_features.i95 = getelementptr inbounds %struct.xfs_mount, ptr %25, i32 0, i32 61
  %28 = ptrtoint ptr %m_features.i95 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %m_features.i95, align 8
  %and.i96 = and i64 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i96)
  %tobool.i97.not = icmp eq i64 %and.i96, 0
  %cond29.neg = select i1 %tobool.i97.not, i16 -100, i16 -176
  %sub = add i16 %cond29.neg, %27
  br label %cond.end60

cond.false32:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %whichfork)
  %cmp33 = icmp eq i32 %whichfork, 1
  br i1 %cmp33, label %cond.true35, label %cond.false32.cond.end60_crit_edge

cond.false32.cond.end60_crit_edge:                ; preds = %cond.false32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end60

cond.true35:                                      ; preds = %cond.false32
  %i_forkoff36 = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 23
  %30 = ptrtoint ptr %i_forkoff36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i_forkoff36, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp38.not = icmp eq i8 %31, 0
  br i1 %cmp38.not, label %cond.true35.cond.end60_crit_edge, label %cond.true40

cond.true35.cond.end60_crit_edge:                 ; preds = %cond.true35
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end60

cond.true40:                                      ; preds = %cond.true35
  call void @__sanitizer_cov_trace_pc() #20
  %32 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ip, align 8
  %sb_inodesize43 = getelementptr inbounds %struct.xfs_sb, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %sb_inodesize43 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sb_inodesize43, align 8
  %m_features.i98 = getelementptr inbounds %struct.xfs_mount, ptr %33, i32 0, i32 61
  %36 = ptrtoint ptr %m_features.i98 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %m_features.i98, align 8
  %and.i99 = and i64 %37, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i99)
  %tobool.i100.not = icmp eq i64 %and.i99, 0
  %cond48.neg = select i1 %tobool.i100.not, i16 -100, i16 -176
  %conv51 = zext i8 %31 to i16
  %shl52.neg = mul nsw i16 %conv51, -8
  %sub49 = add i16 %35, %shl52.neg
  %sub53 = add i16 %sub49, %cond48.neg
  br label %cond.end60

cond.end60:                                       ; preds = %cond.true40, %cond.true35.cond.end60_crit_edge, %cond.false32.cond.end60_crit_edge, %cond.false24, %cond.true21
  %cond61 = phi i16 [ %shl, %cond.true21 ], [ %sub, %cond.false24 ], [ %sub53, %cond.true40 ], [ 0, %cond.true35.cond.end60_crit_edge ], [ 0, %cond.false32.cond.end60_crit_edge ]
  %38 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 10
  %forksize = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 10, i32 0, i32 2, i32 0, i32 1
  %39 = ptrtoint ptr %forksize to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %cond61, ptr %forksize, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ip, ptr %38, align 8
  %allocated = getelementptr inbounds %struct.xfs_btree_cur, ptr %call.i.i, i32 0, i32 10, i32 0, i32 2
  %41 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %allocated, align 8
  %flags = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %38, i32 0, i32 5
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %flags, align 1
  %conv64 = trunc i32 %whichfork to i8
  %whichfork65 = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %38, i32 0, i32 4
  %43 = ptrtoint ptr %whichfork65 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv64, ptr %whichfork65, align 2
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bmbt_maxlevels_ondisk() local_unnamed_addr #0 align 64 {
entry:
  %minrecs = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minrecs) #18
  %0 = getelementptr inbounds [2 x i32], ptr %minrecs, i32 0, i32 1
  %1 = ptrtoint ptr %minrecs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %minrecs, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 15, ptr %0, align 4
  %call4 = call i32 @xfs_btree_compute_maxlevels(ptr noundef nonnull %minrecs, i64 noundef 2147483647) #18
  %add = add i32 %call4, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minrecs) #18
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_compute_maxlevels(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bmbt_change_owner(ptr noundef %tp, ptr noundef %ip, i32 noundef %whichfork, i64 noundef %new_owner, ptr noundef %buffer_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tp, null
  %tobool1 = icmp eq ptr %buffer_list, null
  %0 = and i1 %tobool.not, %tobool1
  br i1 %0, label %cond.false, label %entry.cond.end_crit_edge, !prof !67

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 660) #18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %spec.select52 = or i1 %tobool.not, %tobool1
  br i1 %spec.select52, label %cond.end.cond.end16_crit_edge, label %cond.false15, !prof !68

cond.end.cond.end16_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 661) #18
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.end.cond.end16_crit_edge
  %1 = zext i32 %whichfork to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %whichfork, label %cond.false21 [
    i32 0, label %cond.true17
    i32 1, label %cond.true20
  ]

cond.true17:                                      ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #20
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 8
  br label %cond.end23

cond.true20:                                      ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #20
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 6
  %2 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_afp, align 8
  br label %cond.end23

cond.false21:                                     ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #20
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %ip, i32 0, i32 7
  %4 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false21, %cond.true20, %cond.true17
  %cond24 = phi ptr [ %i_df, %cond.true17 ], [ %3, %cond.true20 ], [ %5, %cond.false21 ]
  %if_format = getelementptr inbounds %struct.xfs_ifork, ptr %cond24, i32 0, i32 6
  %6 = ptrtoint ptr %if_format to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %if_format, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp25 = icmp eq i8 %7, 3
  br i1 %cmp25, label %cond.end23.cond.end35_crit_edge, label %cond.false34, !prof !68

cond.end23.cond.end35_crit_edge:                  ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 662) #18
  br label %cond.end35

cond.end35:                                       ; preds = %cond.false34, %cond.end23.cond.end35_crit_edge
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ip, align 8
  %call = tail call ptr @xfs_bmbt_init_cursor(ptr noundef %9, ptr noundef %tp, ptr noundef %ip, i32 noundef %whichfork)
  %10 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 10
  %flags = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 1
  %13 = or i8 %12, 2
  store i8 %13, ptr %flags, align 1
  %call38 = tail call i32 @xfs_btree_change_owner(ptr noundef %call, i64 noundef %new_owner, ptr noundef %buffer_list) #18
  tail call void @xfs_btree_del_cursor(ptr noundef %call, i32 noundef %call38) #18
  ret i32 %call38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_btree_change_owner(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_del_cursor(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @xfs_bmbt_calc_size(ptr noundef %mp, i64 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %m_bmap_dmnr = getelementptr inbounds %struct.xfs_mount, ptr %mp, i32 0, i32 37
  %call = tail call i64 @xfs_btree_calc_size(ptr noundef %m_bmap_dmnr, i64 noundef %len) #18
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xfs_btree_calc_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_bmbt_init_cur_cache() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  %minrecs.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %minrecs.i) #18
  %0 = getelementptr inbounds [2 x i32], ptr %minrecs.i, i32 0, i32 1
  %1 = ptrtoint ptr %minrecs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 15, ptr %minrecs.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 15, ptr %0, align 4
  %call4.i = call i32 @xfs_btree_compute_maxlevels(ptr noundef nonnull %minrecs.i, i64 noundef 2147483647) #18
  %add.i = add i32 %call4.i, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %minrecs.i) #18
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 8) #18
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %5, i32 80) #18
  %retval.0.i.i = select i1 %4, i32 -1, i32 %spec.select.i.i
  %call2 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.18, i32 noundef %retval.0.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  store ptr %call2, ptr @xfs_bmbt_cur_cache, align 4
  %tobool.not = icmp eq ptr %call2, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_bmbt_destroy_cur_cache() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @xfs_bmbt_cur_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #18
  store ptr null, ptr @xfs_bmbt_cur_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_btree_lblock_verify_crc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_verifier_error(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_btree_corrupt(ptr noundef %bp, i32 noundef %caller_ip) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_corrupt, i32 0, i32 1), ptr blockaddress(@trace_xfs_btree_corrupt, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !72

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !57) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !68

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !57) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !73
  %call42 = tail call i32 @__traceiter_xfs_btree_corrupt(ptr noundef null, ptr noundef %bp, i32 noundef %caller_ip) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !74
  %13 = tail call i32 @llvm.read_register.i32(metadata !57) #18
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !57) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !68

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !57) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_corrupt, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_btree_corrupt, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_btree_corrupt.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_xfs_btree_corrupt.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 473, ptr noundef nonnull @.str.20) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !76
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #18
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
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_btree_corrupt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_btree_lblock_calc_crc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xfs_verify_magic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_lblock_v5hdr_verify(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_btree_lblock_verify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @xfs_bmbt_dup_cursor(ptr nocapture noundef readonly %cur) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 8
  %4 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %whichfork = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %whichfork to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %whichfork, align 2
  %conv = zext i8 %8 to i32
  %call = tail call ptr @xfs_bmbt_init_cursor(ptr noundef %1, ptr noundef %3, ptr noundef %6, i32 noundef %conv)
  %flags = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %11 = getelementptr inbounds %struct.xfs_btree_cur, ptr %call, i32 0, i32 10
  %flags1 = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %flags1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %flags1, align 1
  ret ptr %call
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_bmbt_update_cursor(ptr nocapture noundef %src, ptr nocapture noundef %dst) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 8
  %t_firstblock = getelementptr inbounds %struct.xfs_trans, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %t_firstblock to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %t_firstblock, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %3)
  %cmp.not = icmp eq i64 %3, -1
  br i1 %cmp.not, label %lor.rhs, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

lor.rhs:                                          ; preds = %entry
  %4 = getelementptr inbounds %struct.xfs_btree_cur, ptr %dst, i32 0, i32 10
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %i_diflags = getelementptr inbounds %struct.xfs_inode, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %i_diflags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %i_diflags, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %cond.false, label %lor.rhs.cond.end_crit_edge, !prof !67

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 188) #18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %lor.rhs.cond.end_crit_edge, %entry.cond.end_crit_edge
  %allocated = getelementptr inbounds %struct.xfs_btree_cur, ptr %src, i32 0, i32 10, i32 0, i32 2
  %10 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %allocated, align 8
  %allocated3 = getelementptr inbounds %struct.xfs_btree_cur, ptr %dst, i32 0, i32 10, i32 0, i32 2
  %12 = ptrtoint ptr %allocated3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %allocated3, align 8
  %add = add i32 %13, %11
  store i32 %add, ptr %allocated3, align 8
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src, align 8
  %t_firstblock5 = getelementptr inbounds %struct.xfs_trans, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %t_firstblock5 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %t_firstblock5, align 8
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 8
  %t_firstblock7 = getelementptr inbounds %struct.xfs_trans, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %t_firstblock7 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %17, ptr %t_firstblock7, align 8
  store i32 0, ptr %allocated, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_bmbt_alloc_block(ptr nocapture noundef %cur, ptr nocapture noundef readonly %start, ptr nocapture noundef writeonly %new, ptr nocapture noundef writeonly %stat) #11 align 64 {
entry:
  %args = alloca %struct.xfs_alloc_arg, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %args) #18
  %0 = getelementptr inbounds i8, ptr %args, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 120)
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur, align 8
  %4 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %args, align 8
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %5 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bc_mp, align 4
  %mp = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 1
  %7 = ptrtoint ptr %mp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %mp, align 4
  %t_firstblock = getelementptr inbounds %struct.xfs_trans, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %t_firstblock to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %t_firstblock, align 8
  %fsbno = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 4
  %10 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %fsbno, align 8
  %oinfo = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 23
  %11 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %i_ino, align 8
  %whichfork = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %whichfork to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %whichfork, align 2
  %18 = ptrtoint ptr %oinfo to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %15, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 23, i32 1
  %19 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %oi_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp.i = icmp eq i8 %17, 1
  %spec.select.i = select i1 %cmp.i, i32 3, i32 2
  %oi_flags.i = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 23, i32 2
  %20 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select.i, ptr %oi_flags.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp = icmp eq i64 %9, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start, align 8
  %23 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %fsbno, align 8
  %type = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 18
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 16, ptr %type, align 4
  %t_blk_res = getelementptr inbounds %struct.xfs_trans, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %t_blk_res to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %t_blk_res, align 4
  %minleft = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 11
  %27 = ptrtoint ptr %minleft to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %minleft, align 8
  br label %if.end11

if.else:                                          ; preds = %entry
  %t_flags = getelementptr inbounds %struct.xfs_trans, ptr %3, i32 0, i32 7
  %28 = ptrtoint ptr %t_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %t_flags, align 4
  %and = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %type10 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 18
  br i1 %tobool.not, label %if.else9, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16, ptr %type10, align 4
  br label %if.end11

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %31 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 32, ptr %type10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7, %if.then
  %prod = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 10
  %32 = ptrtoint ptr %prod to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %prod, align 4
  %maxlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 8
  %33 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %maxlen, align 4
  %minlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 7
  %34 = ptrtoint ptr %minlen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %minlen, align 8
  %flags = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %11, i32 0, i32 5
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags, align 1
  %37 = and i8 %36, 1
  %wasdel = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 21
  %38 = ptrtoint ptr %wasdel to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %wasdel, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool16.not = icmp eq i8 %37, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end11
  %t_blk_res18 = getelementptr inbounds %struct.xfs_trans, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %t_blk_res18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %t_blk_res18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp19 = icmp eq i32 %40, 0
  br i1 %cmp19, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end22

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %call = call i32 @xfs_alloc_vextent(ptr noundef nonnull %args) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.end25, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %41 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %fsbno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %42)
  %cmp27 = icmp eq i64 %42, -1
  br i1 %cmp27, label %land.lhs.true29, label %if.end25.if.end85_crit_edge

if.end25.if.end85_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end85

land.lhs.true29:                                  ; preds = %if.end25
  %minleft30 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 11
  %43 = ptrtoint ptr %minleft30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %minleft30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool31.not = icmp eq i32 %44, 0
  br i1 %tobool31.not, label %land.lhs.true29.if.end41_crit_edge, label %if.then32

land.lhs.true29.if.end41_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.then32:                                        ; preds = %land.lhs.true29
  %45 = ptrtoint ptr %fsbno to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %fsbno, align 8
  %type34 = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 18
  %46 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %type34, align 4
  %call35 = call i32 @xfs_alloc_vextent(ptr noundef nonnull %args) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #20
  %47 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur, align 8
  %t_flags40 = getelementptr inbounds %struct.xfs_trans, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %t_flags40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %t_flags40, align 4
  %or = or i32 %50, 256
  store i32 %or, ptr %t_flags40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %land.lhs.true29.if.end41_crit_edge
  %51 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %51)
  %.pr = load i64, ptr %fsbno, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %.pr)
  %cmp43 = icmp eq i64 %.pr, -1
  br i1 %cmp43, label %land.rhs, label %if.end41.if.end85_crit_edge

if.end41.if.end85_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end85

land.rhs:                                         ; preds = %if.end41
  %.b122 = load i1, ptr @xfs_bmbt_alloc_block.__already_done, align 1
  br i1 %.b122, label %land.rhs.cleanup.sink.split_crit_edge, label %if.then53, !prof !68

land.rhs.cleanup.sink.split_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split

if.then53:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @xfs_bmbt_alloc_block.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #18
  br label %cleanup.sink.split

if.end85:                                         ; preds = %if.end41.if.end85_crit_edge, %if.end25.if.end85_crit_edge
  %len = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 17
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp86 = icmp eq i32 %53, 1
  br i1 %cmp86, label %if.end85.cond.end_crit_edge, label %cond.false, !prof !68

if.end85.cond.end_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end

cond.false:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #20
  call void @assfail(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 262) #18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end85.cond.end_crit_edge
  %54 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %fsbno, align 8
  %56 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cur, align 8
  %t_firstblock96 = getelementptr inbounds %struct.xfs_trans, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %t_firstblock96 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %55, ptr %t_firstblock96, align 8
  %allocated = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 2
  %59 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %allocated, align 8
  %inc = add i32 %60, 1
  store i32 %inc, ptr %allocated, align 8
  %61 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %11, align 8
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %62, i32 0, i32 19
  %63 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %i_nblocks, align 8
  %inc98 = add i64 %64, 1
  store i64 %inc98, ptr %i_nblocks, align 8
  %65 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %args, align 8
  %67 = load ptr, ptr %11, align 8
  call void @xfs_trans_log_inode(ptr noundef %66, ptr noundef %67, i32 noundef 1) #18
  %68 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %args, align 8
  %70 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %11, align 8
  call void @xfs_trans_mod_dquot_byino(ptr noundef %69, ptr noundef %71, i32 noundef 262144, i64 noundef 1) #18
  %72 = ptrtoint ptr %fsbno to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %fsbno, align 8
  %74 = ptrtoint ptr %new to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %new, align 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.end, %if.then53, %land.rhs.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 1, %cond.end ], [ 0, %land.rhs.cleanup.sink.split_crit_edge ], [ 0, %if.then53 ]
  %75 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink, ptr %stat, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then32.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end22.cleanup_crit_edge ], [ %call35, %if.then32.cleanup_crit_edge ], [ -28, %land.lhs.true.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %args) #18
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xfs_bmbt_free_block(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %bp) #11 align 64 {
entry:
  %oinfo = alloca %struct.xfs_owner_info, align 8
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %0 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc_mp, align 4
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur, align 8
  %b_maps.i = getelementptr inbounds %struct.xfs_buf, ptr %bp, i32 0, i32 24
  %7 = ptrtoint ptr %b_maps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %b_maps.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  %m_blkbb_log.i = getelementptr inbounds %struct.xfs_mount, ptr %1, i32 0, i32 28
  %11 = ptrtoint ptr %m_blkbb_log.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %m_blkbb_log.i, align 1
  %sh_prom.i = zext i8 %12 to i64
  %shr.i = ashr i64 %10, %sh_prom.i
  %sb_agblocks.i = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %sb_agblocks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sb_agblocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shr.i)
  %cmp168.i = icmp ult i64 %shr.i, 4294967296
  br i1 %cmp168.i, label %if.then172.i122, label %if.else178.i123, !prof !68

if.then172.i122:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv173.i = trunc i64 %shr.i to i32
  %conv173.i.frozen = freeze i32 %conv173.i
  %.frozen = freeze i32 %14
  %div176.i = udiv i32 %conv173.i.frozen, %.frozen
  %conv126133 = zext i32 %div176.i to i64
  %sb_agblklog127134 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %sb_agblklog127134 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sb_agblklog127134, align 4
  %sh_prom128135 = zext i8 %16 to i64
  %shl129136 = shl i64 %conv126133, %sh_prom128135
  %17 = mul i32 %div176.i, %.frozen
  %rem174.i.decomposed = sub i32 %conv173.i.frozen, %17
  br label %xfs_daddr_to_agbno.exit

if.else178.i123:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %14, i64 %shr.i) #22
  %asmresult1.i.i = extractvalue { i64, i64 } %18, 1
  %conv126 = and i64 %asmresult1.i.i, 4294967295
  %sb_agblklog127 = getelementptr inbounds %struct.xfs_sb, ptr %1, i32 0, i32 24
  %19 = ptrtoint ptr %sb_agblklog127 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sb_agblklog127, align 4
  %sh_prom128 = zext i8 %20 to i64
  %shl129 = shl i64 %conv126, %sh_prom128
  %asmresult.i266.i = extractvalue { i64, i64 } %18, 0
  %shr.i.i = lshr i64 %asmresult.i266.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %xfs_daddr_to_agbno.exit

xfs_daddr_to_agbno.exit:                          ; preds = %if.else178.i123, %if.then172.i122
  %shl130 = phi i64 [ %shl129136, %if.then172.i122 ], [ %shl129, %if.else178.i123 ]
  %__rem.0.i = phi i32 [ %rem174.i.decomposed, %if.then172.i122 ], [ %conv.i.i, %if.else178.i123 ]
  %conv6 = zext i32 %__rem.0.i to i64
  %or = or i64 %shl130, %conv6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %oinfo) #18
  %21 = getelementptr inbounds i8, ptr %oinfo, i32 16
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 -1, ptr %21, align 8
  %i_ino = getelementptr inbounds %struct.xfs_inode, ptr %4, i32 0, i32 4
  %23 = ptrtoint ptr %i_ino to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_ino, align 8
  %whichfork = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %2, i32 0, i32 4
  %25 = ptrtoint ptr %whichfork to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %whichfork, align 2
  %27 = ptrtoint ptr %oinfo to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %24, ptr %oinfo, align 8
  %oi_offset.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 1
  %28 = ptrtoint ptr %oi_offset.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %oi_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i124 = icmp eq i8 %26, 1
  %spec.select.i = select i1 %cmp.i124, i32 3, i32 2
  %oi_flags.i = getelementptr inbounds %struct.xfs_owner_info, ptr %oinfo, i32 0, i32 2
  %29 = ptrtoint ptr %oi_flags.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select.i, ptr %oi_flags.i, align 8
  call void @__xfs_free_extent_later(ptr noundef %6, i64 noundef %or, i64 noundef 1, ptr noundef nonnull %oinfo, i1 noundef zeroext false) #18
  %i_nblocks = getelementptr inbounds %struct.xfs_inode, ptr %4, i32 0, i32 19
  %30 = ptrtoint ptr %i_nblocks to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %i_nblocks, align 8
  %dec = add i64 %31, -1
  store i64 %dec, ptr %i_nblocks, align 8
  call void @xfs_trans_log_inode(ptr noundef %6, ptr noundef %4, i32 noundef 1) #18
  call void @xfs_trans_mod_dquot_byino(ptr noundef %6, ptr noundef %4, i32 noundef 262144, i64 noundef -1) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %oinfo) #18
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_bmbt_get_minrecs(ptr nocapture noundef readonly %cur, i32 noundef %level) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %0 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %level)
  %cmp = icmp eq i32 %sub, %level
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10
  %whichfork = getelementptr inbounds %struct.xfs_btree_cur_ino, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %whichfork to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %whichfork, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %4, label %cond.false11 [
    i8 0, label %cond.true
    i8 1, label %cond.true9
  ]

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %2, align 8
  %i_df = getelementptr inbounds %struct.xfs_inode, ptr %7, i32 0, i32 8
  br label %cond.end13

cond.true9:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 8
  %i_afp = getelementptr inbounds %struct.xfs_inode, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %i_afp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_afp, align 8
  br label %cond.end13

cond.false11:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 8
  %i_cowfp = getelementptr inbounds %struct.xfs_inode, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %i_cowfp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i_cowfp, align 4
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false11, %cond.true9, %cond.true
  %cond14 = phi ptr [ %i_df, %cond.true ], [ %11, %cond.true9 ], [ %15, %cond.false11 ]
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %16 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bc_mp, align 4
  %if_broot_bytes = getelementptr inbounds %struct.xfs_ifork, ptr %cond14, i32 0, i32 5
  %18 = ptrtoint ptr %if_broot_bytes to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %if_broot_bytes, align 8
  %conv15 = sext i16 %19 to i32
  %m_features.i.i = getelementptr inbounds %struct.xfs_mount, ptr %17, i32 0, i32 61
  %20 = ptrtoint ptr %m_features.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %m_features.i.i, align 8
  %and.i.i = and i64 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %cond.neg.i = select i1 %tobool.i.not.i, i32 -24, i32 -72
  %sub.i = add nsw i32 %cond.neg.i, %conv15
  %div3031 = lshr i32 %sub.i, 5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %bc_mp18 = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %22 = ptrtoint ptr %bc_mp18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bc_mp18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp19 = icmp ne i32 %level, 0
  %conv20 = zext i1 %cmp19 to i32
  %arrayidx = getelementptr %struct.xfs_mount, ptr %23, i32 0, i32 37, i32 %conv20
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end, %cond.end13
  %retval.0 = phi i32 [ %div3031, %cond.end13 ], [ %25, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_bmbt_get_dmaxrecs(ptr nocapture noundef readonly %cur, i32 noundef %level) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_nlevels = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 7
  %0 = ptrtoint ptr %bc_nlevels to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bc_nlevels, align 8
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %level)
  %cmp.not = icmp eq i32 %sub, %level
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %bc_mp = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 1
  %2 = ptrtoint ptr %bc_mp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc_mp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp2 = icmp ne i32 %level, 0
  %conv3 = zext i1 %cmp2 to i32
  %arrayidx = getelementptr %struct.xfs_mount, ptr %3, i32 0, i32 36, i32 %conv3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %forksize = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 10, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %forksize to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %forksize, align 4
  %conv4 = sext i16 %7 to i32
  %sub.i = add nsw i32 %conv4, -4
  %retval.0.i = lshr i32 %sub.i, 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %retval.0.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_bmbt_init_key_from_rec(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %rec) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rec, align 8
  %and.i = lshr i64 %1, 9
  %shr.i = and i64 %and.i, 18014398509481983
  %2 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %shr.i, ptr %key, align 8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xfs_bmbt_init_rec_from_cur(ptr nocapture noundef readonly %cur, ptr nocapture noundef writeonly %rec) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  tail call void @xfs_bmbt_disk_set_all(ptr noundef %rec, ptr noundef %bc_rec)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @xfs_bmbt_init_ptr_from_cur(ptr nocapture noundef readnone %cur, ptr nocapture noundef writeonly %ptr) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ptr, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xfs_bmbt_init_high_key_from_rec(ptr nocapture noundef writeonly %key, ptr nocapture noundef readonly %rec) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rec to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rec, align 8
  %and.i = lshr i64 %1, 9
  %shr.i = and i64 %and.i, 18014398509481983
  %l1.i = getelementptr inbounds %struct.xfs_bmbt_rec, ptr %rec, i32 0, i32 1
  %2 = ptrtoint ptr %l1.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %l1.i, align 8
  %and.i3 = and i64 %3, 2097151
  %add = add nsw i64 %and.i3, -1
  %sub = add nsw i64 %add, %shr.i
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub, ptr %key, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @xfs_bmbt_key_diff(ptr nocapture noundef readonly %cur, ptr nocapture noundef readonly %key) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %key, align 8
  %bc_rec = getelementptr inbounds %struct.xfs_btree_cur, ptr %cur, i32 0, i32 6
  %2 = ptrtoint ptr %bc_rec to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %bc_rec, align 8
  %sub = sub i64 %1, %3
  ret i64 %sub
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @xfs_bmbt_diff_two_keys(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k1, align 8
  %2 = ptrtoint ptr %k2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %k2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ugt i64 %1, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %1)
  %cmp2 = icmp ugt i64 %3, %1
  %. = sext i1 %cmp2 to i64
  %retval.0 = select i1 %cmp, i64 1, i64 %.
  ret i64 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_bmbt_keys_inorder(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k1, align 8
  %2 = ptrtoint ptr %k2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %k2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp ult i64 %1, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xfs_bmbt_recs_inorder(ptr nocapture noundef readnone %cur, ptr nocapture noundef readonly %r1, ptr nocapture noundef readonly %r2) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %r1, align 8
  %and.i = lshr i64 %1, 9
  %shr.i = and i64 %and.i, 18014398509481983
  %l1.i = getelementptr inbounds %struct.xfs_bmbt_rec, ptr %r1, i32 0, i32 1
  %2 = ptrtoint ptr %l1.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %l1.i, align 8
  %and.i4 = and i64 %3, 2097151
  %add = add nuw nsw i64 %shr.i, %and.i4
  %4 = ptrtoint ptr %r2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %r2, align 8
  %and.i5 = lshr i64 %5, 9
  %shr.i6 = and i64 %and.i5, 18014398509481983
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %shr.i6)
  %cmp = icmp ule i64 %add, %shr.i6
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_alloc_vextent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_log_inode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_trans_mod_dquot_byino(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__xfs_free_extent_later(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nobuiltin nounwind }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !51, !53, !55}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 49, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 109, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 110, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 111, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 112, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 142, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 143, i32 3}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 145, i32 3}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 148, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 149, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 150, i32 2}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 151, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 491, i32 10}
!27 = !{ptr @xfs_bmbt_buf_ops, !28, !"xfs_bmbt_buf_ops", i1 false, i1 false}
!28 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 490, i32 26}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 555, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 660, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 661, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 662, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 684, i32 41}
!39 = !{ptr @xfs_bmbt_cur_cache, !40, !"xfs_bmbt_cur_cache", i1 false, i1 false}
!40 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 25, i32 27}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../fs/xfs/xfs_trace.h", i32 473, i32 1}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!45 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @xfs_bmbt_ops, !50, !"xfs_bmbt_ops", i1 false, i1 false}
!50 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 521, i32 35}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 187, i32 2}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 257, i32 6}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../fs/xfs/libxfs/xfs_bmap_btree.c", i32 262, i32 2}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2166332626}
!70 = !{i64 2166330628}
!71 = !{i64 2166332524}
!72 = !{i64 2148261311, i64 2148261316, i64 2148261329, i64 2148261373, i64 2148261407, i64 2148261428}
!73 = !{i64 2157069321}
!74 = !{i64 2157069544}
!75 = !{i64 2149963404}
!76 = !{i64 2149964440}
